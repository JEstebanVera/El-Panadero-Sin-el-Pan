using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class HighscoreTable : MonoBehaviour
{
    private Transform entryContainer;
    private Transform entryTemplate;

    private void Awake()
    {
        entryContainer = transform.Find("highscoreEntryContainer");
        entryTemplate = entryContainer.Find("highscoreEntryTemplate");
        entryTemplate.gameObject.SetActive(false);

        DisplayHighscores();
    }

    // Llamado desde GameManager al morir
    public static void AddEntry(float timeAlive)
    {
        // Cargar lista actual
        Highscores highscores = LoadHighscores();

        // Agregar nuevo tiempo
        highscores.entries.Add(new HighscoreEntry { time = timeAlive });

        // Ordenar de mayor a menor
        highscores.entries.Sort((a, b) => b.time.CompareTo(a.time));

        // Conservar solo el top 5
        if (highscores.entries.Count > 5)
            highscores.entries.RemoveRange(5, highscores.entries.Count - 5);

        // Guardar
        string json = JsonUtility.ToJson(highscores);
        PlayerPrefs.SetString("Highscores", json);
        PlayerPrefs.Save();
    }

    private void DisplayHighscores()
    {
        Highscores highscores = LoadHighscores();

        for (int i = 0; i < highscores.entries.Count; i++)
        {
            CreateEntry(highscores.entries[i], i + 1);
        }
    }

    private void CreateEntry(HighscoreEntry entry, int rank)
    {
        float templateHeight = 30f;
        Transform entryTransform = Instantiate(entryTemplate, entryContainer);
        RectTransform rect = entryTransform.GetComponent<RectTransform>();
        rect.anchoredPosition = new Vector2(0, -templateHeight * (rank - 1));
        entryTransform.gameObject.SetActive(true);

        // Rango
        string rankString;
        switch (rank)
        {
            case 1: rankString = "1ST"; break;
            case 2: rankString = "2ND"; break;
            case 3: rankString = "3RD"; break;
            default: rankString = rank + "TH"; break;
        }
        entryTransform.Find("posText").GetComponent<TextMeshProUGUI>().text = rankString;

        // Tiempo formateado MM:SS
        int minutes = Mathf.FloorToInt(entry.time / 60f);
        int seconds = Mathf.FloorToInt(entry.time % 60f);
        entryTransform.Find("scoreText").GetComponent<TextMeshProUGUI>().text =
            string.Format("{0:00}:{1:00}", minutes, seconds);
    }

    public static void ResetHighscores()
    {
        PlayerPrefs.DeleteKey("Highscores");
        PlayerPrefs.Save();
    }

    private static Highscores LoadHighscores()
    {
        string json = PlayerPrefs.GetString("Highscores", "");
        if (string.IsNullOrEmpty(json))
            return new Highscores { entries = new List<HighscoreEntry>() };

        return JsonUtility.FromJson<Highscores>(json);
    }


    [System.Serializable]
    private class HighscoreEntry
    {
        public float time;
    }

    [System.Serializable]
    private class Highscores
    {
        public List<HighscoreEntry> entries;
    }
}