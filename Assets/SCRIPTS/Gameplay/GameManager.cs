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

    [Header("UI")]
    public GameObject gameOverPanel;
    public TextMeshProUGUI gameOverTimeText;

    [Header("Speed")]
    public PlayerMovement playerMovement;
    private float speedTimer = 0f;
    public float speedIncreaseInterval = 15f; // cada 15 segundos
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

    private bool isDead = false;
    public void TakeDamage(GameObject obstacleObj, GameObject playerObj)
    {
        if (isDead) return;

        if (lives - 1 <= 0) // Si esta llamada va a ser la muerte
            isDead = true;  // Bloquear inmediatamente antes de cualquier otra cosa

        if (hitParticlesPrefab != null)
        {
            GameObject particles = Instantiate(hitParticlesPrefab, obstacleObj.transform.position, Quaternion.identity);
            Destroy(particles, 2f);
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

            int savedCoins = PlayerPrefs.GetInt("TotalCoins", 0);
            PlayerPrefs.SetInt("TotalCoins", savedCoins + coinsThisRun);

            float bestTime = PlayerPrefs.GetFloat("BestTime", 0f);
            if (timeAlive > bestTime)
                PlayerPrefs.SetFloat("BestTime", timeAlive);

            HighscoreTable.AddEntry(timeAlive);
            PlayerPrefs.SetInt("BestTimeMigrated", 1);
            PlayerPrefs.Save();

            PlayerDeath(playerObj);
            Invoke("ShowGameOverPanel", 1f);
            Invoke("GoToMainMenu", 3f);
        }
        else
        {
            UpdateLifeHUD();
        }
    }

    private void ShowGameOverPanel()
    {
        // Mostrar tiempo de esta partida en el panel
        int minutes = Mathf.FloorToInt(timeAlive / 60f);
        int seconds = Mathf.FloorToInt(timeAlive % 60f);
        gameOverTimeText.text = string.Format("{0:00}:{1:00}", minutes, seconds);

        gameOverPanel.SetActive(true);
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



}