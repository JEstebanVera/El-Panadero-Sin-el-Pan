using TMPro;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public static GameManager inst;

    [Header("Coins")]
    public int coinsThisRun = 0;
    public TextMeshProUGUI coinText;

    [Header("Score (Tiempo)")]
    private float timeAlive = 0f;
    public TextMeshProUGUI scoreText;
    private bool gameActive = true;

    [Header("Audio")]
    public AudioSource audioSource;
    public AudioClip damageSound;
    public AudioClip coinSound;

    [Header("Lives")]
    public int lives = 3;
    public Sprite[] lifeSprites; // 0 = 3 vidas, 1 = 2 vidas, 2 = 1 vida
    public Image lifeImage;

    [Header("Speed")]
    public PlayerMovement playerMovement;
    private float speedTimer = 0f;
    public float speedIncreaseInterval = 5f; // cada 5 segundos
    public float speedIncreaseAmount = 1f;


    public GameObject hitParticlesPrefab; // cuando chocas

    void Start()
    {
        inst = this;
        UpdateLifeHUD();
        UpdateCoinHUD();
    }

    void Update()
    {
        if (!gameActive) return;


        timeAlive += Time.deltaTime;
        int minutes = Mathf.FloorToInt(timeAlive / 60f);
        int seconds = Mathf.FloorToInt(timeAlive % 60f);
        scoreText.text = string.Format("{0:00}:{1:00}", minutes, seconds);


        speedTimer += Time.deltaTime;
        if (speedTimer >= speedIncreaseInterval)
        {
            speedTimer = 0f;
            playerMovement.speed += speedIncreaseAmount;
        }
    }


    public void IncrementCoins()
    {
        coinsThisRun++;
        UpdateCoinHUD();

        if (audioSource != null && coinSound != null)
            audioSource.PlayOneShot(coinSound);
    }

    private void UpdateCoinHUD()
    {
        coinText.text =  coinsThisRun.ToString();
    }


    public void TakeDamage(GameObject obstacleObj, GameObject playerObj)
    {
        if (hitParticlesPrefab != null)
        {
            GameObject particles = Instantiate(hitParticlesPrefab, obstacleObj.transform.position, Quaternion.identity);
            Destroy(particles, 2f); // Destruir partículas 
        }

        Destroy(obstacleObj);

        lives--;
        if (audioSource != null && damageSound != null)
            audioSource.PlayOneShot(damageSound);

        FindFirstObjectByType<CameraFollow>().TriggerShake();

        if (lives <= 0)
        {
            gameActive = false;
            lifeImage.gameObject.SetActive(false);

            // Guardar datos
            int savedCoins = PlayerPrefs.GetInt("TotalCoins", 0);
            int newTotal = savedCoins + coinsThisRun;
            PlayerPrefs.SetInt("TotalCoins", newTotal);

            float bestTime = PlayerPrefs.GetFloat("BestTime", 0f);
            if (timeAlive > bestTime)
                PlayerPrefs.SetFloat("BestTime", timeAlive);

            HighscoreTable.AddEntry(timeAlive);
            PlayerPrefs.Save();

            // Muerte visual
            PlayerDeath(playerObj);

            Invoke("GoToMainMenu", 3f); // Más tiempo para que se vean las partículas
        }
        else
        {
            UpdateLifeHUD();
        }
    }

    private void PlayerDeath(GameObject playerObj)
    {
        // Desactivar movimiento
        PlayerMovement pm = playerObj.GetComponent<PlayerMovement>();
        if (pm != null) pm.alive = false;

        // Ocultar visualmente el player sin destruirlo
        Renderer playerRenderer = playerObj.GetComponent<Renderer>();
        if (playerRenderer != null) playerRenderer.enabled = false;

        // Desactivar el Rigidbody para que no siga moviéndose
        Rigidbody rb = playerObj.GetComponent<Rigidbody>();
        if (rb != null) rb.isKinematic = true;

        // Activar el sistema de partículas hijo
        ParticleSystem particles = playerObj.GetComponentInChildren<ParticleSystem>(true);
        if (particles != null)
        {
            particles.gameObject.SetActive(true);
            particles.Play();

            // Destruir el player cuando terminen las partículas
            Destroy(playerObj, particles.main.duration + particles.main.startLifetime.constantMax);
        }
        else
        {
            // Si no hay partículas, destruir normal
            Destroy(playerObj, 1f);
        }
    }

    private void UpdateLifeHUD()
    {
        lifeImage.sprite = lifeSprites[3 - lives];
    }

    private void GoToMainMenu()
    {
        SceneManager.LoadScene("MainMenu");
    }
}