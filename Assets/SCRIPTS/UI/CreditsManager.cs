using UnityEngine;
using UnityEngine.SceneManagement;

public class CreditsManager : MonoBehaviour
{
    public void OpenMainMenuInCredits()
    {
        SceneManager.LoadScene("MainMenu");
    }
}
