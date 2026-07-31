using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ShopManager : MonoBehaviour
{
    public static ShopManager inst;

    [Header("Coins")]
    public TextMeshProUGUI coinsText;

    [Header("Skins")]
    public SkinData[] skins; // Arrayde 3 skins configuradas en el Inspector

    [Header("Audio")]
    public AudioSource audioSource;
    public AudioClip purchaseSound;
    public AudioClip errorSound;

    private int selectedSkin = 0;

    private void Awake()
    {
        inst = this;
    }

    private void Start()
    {
        selectedSkin = PlayerPrefs.GetInt("SelectedSkin", 0);
        UpdateCoinsUI();
        UpdateAllSkinButtons();
    }

    //UI
    private void UpdateCoinsUI()
    {
        int coins = PlayerPrefs.GetInt("TotalCoins", 0);
        coinsText.text = coins.ToString();
    }

    // Botones de skin
    public void OnSkinButtonPressed(int skinIndex)
    {
        SkinData skin = skins[skinIndex];

        if (!IsSkinUnlocked(skinIndex))
        {
            // Intentar comprar
            int coins = PlayerPrefs.GetInt("TotalCoins", 0);
            if (coins >= skin.price)
            {
                // Comprar y equipar
                PlayerPrefs.SetInt("TotalCoins", coins - skin.price);
                PlayerPrefs.SetInt("SkinUnlocked_" + skinIndex, 1);
                if (audioSource != null && purchaseSound != null)
                    audioSource.PlayOneShot(purchaseSound);
                SelectSkin(skinIndex);
                UpdateCoinsUI();
                UpdateAllSkinButtons();
            }
            else
            {
                Debug.Log("Monedas insuficientes.");
                if (audioSource != null && purchaseSound != null)
                    audioSource.PlayOneShot(errorSound);
            }
        }
        else
        {
            // Ya comprada, solo equipar
            SelectSkin(skinIndex);
            UpdateAllSkinButtons();
        }
    }

    private void SelectSkin(int skinIndex)
    {
        selectedSkin = skinIndex;
        PlayerPrefs.SetInt("SelectedSkin", skinIndex);
        PlayerPrefs.Save();
    }

    private bool IsSkinUnlocked(int skinIndex)
    {
        if (skinIndex == 0) return true; // Skin default siempre desbloqueada
        return PlayerPrefs.GetInt("SkinUnlocked_" + skinIndex, 0) == 1;
    }

    //Actualizar texto/estado de todos los botones
    private void UpdateAllSkinButtons()
    {
        for (int i = 0; i < skins.Length; i++)
            skins[i].UpdateButton(i, IsSkinUnlocked(i), selectedSkin);
    }

    //Navegación
    public void GoToMainMenu()
    {
        SceneManager.LoadScene("MainMenu");
    }

    public void GoToGame()
    {
        SceneManager.LoadScene("Game");
    }

// clase de datos por skin
    [System.Serializable]
    public class SkinData
    {
        public string skinName;
        public int price;

        [Header("Referencias UI")]
        public TextMeshProUGUI buttonText;  // Texto del botón ("100 coins" o "Equipar")
        public GameObject selectedIndicator; // Imagen/objeto que indica skin activa (opcional)

        public void UpdateButton(int index, bool unlocked, int selectedIndex)
        {
            if (!unlocked)
                buttonText.text = price + " Monedas";
            else if (selectedIndex == index)
                buttonText.text = "Equipado";
            else
                buttonText.text = "Equipar";

            if (selectedIndicator != null)
                selectedIndicator.SetActive(selectedIndex == index);
        }
    }
}