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

    [Header("Lives")]
    public int lives = 3;
    public Sprite[] lifeSprites; // 0 = 3 vidas, 1 = 2 vidas, 2 = 1 vida
    public Image lifeImage;

    [Header("Speed")]
    public PlayerMovement playerMovement;
    private float speedTimer = 0f;
    public float speedIncreaseInterval = 30f; // cada 30 segundos
    public float speedIncreaseAmount = 1f;

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
    }

    private void UpdateCoinHUD()
    {
        coinText.text = "Coins: " + coinsThisRun;
    }



    public void TakeDamage(GameObject obstacleObj, GameObject playerObj)
    {
        Destroy(obstacleObj);
        lives--;

        if (lives <= 0)
        {
            gameActive = false;
            lifeImage.gameObject.SetActive(false);

            // Monedas: sumar las de esta run al total acumulado
            int savedCoins = PlayerPrefs.GetInt("TotalCoins", 0);
            int newTotal = savedCoins + coinsThisRun;
            PlayerPrefs.SetInt("TotalCoins", newTotal);

            // Tiempo: solo guardar si supera el récord
            float bestTime = PlayerPrefs.GetFloat("BestTime", 0f);
            if (timeAlive > bestTime)
                PlayerPrefs.SetFloat("BestTime", timeAlive);

            PlayerPrefs.Save();

            Debug.Log("Monedas esta run: " + coinsThisRun);
            Debug.Log("Total monedas acumuladas: " + newTotal);
            Debug.Log("Mejor tiempo: " + PlayerPrefs.GetFloat("BestTime", 0f));

            Destroy(playerObj);
            Invoke("GoToMainMenu", 1f);
        }
        else
        {
            UpdateLifeHUD();
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