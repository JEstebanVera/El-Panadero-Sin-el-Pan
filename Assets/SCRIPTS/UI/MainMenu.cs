using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    [Header("UI")]
    public TextMeshProUGUI totalCoinsText;
    public TextMeshProUGUI bestTimeText;

    void Start()
    {
        int totalCoins = PlayerPrefs.GetInt("TotalCoins", 0);
        float bestTime = PlayerPrefs.GetFloat("BestTime", 0f);

        Debug.Log("MainMenu lee TotalCoins: " + totalCoins);
        Debug.Log("MainMenu lee BestTime: " + bestTime);

        totalCoinsText.text = "Coins: " + totalCoins;

        int minutes = Mathf.FloorToInt(bestTime / 60f);
        int seconds = Mathf.FloorToInt(bestTime % 60f);
        bestTimeText.text = string.Format("Best: {0:00}:{1:00}", minutes, seconds);
    }

    public void PlayGame()
    {
        SceneManager.LoadScene("Game");
    }

    public void OpenShop()
    {
        SceneManager.LoadScene("Shop");
    }

    public void ResetData()
    {
        PlayerPrefs.SetInt("TotalCoins", 0);
        PlayerPrefs.SetFloat("BestTime", 0f);
        HighscoreTable.ResetHighscores();
        PlayerPrefs.Save();

        // Actualizar UI inmediatamente sin recargar escena
        totalCoinsText.text = "Coins: 0";
        bestTimeText.text = "Best: 00:00";

        Debug.Log("Datos reseteados.");
    }


    public void QuitGame()
    {
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#else
            Application.Quit();
#endif
    }
}