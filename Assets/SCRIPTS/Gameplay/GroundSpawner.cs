using UnityEngine;

public class GroundSpawner : MonoBehaviour
{
    public GameObject[] groundTiles; // Array de tiles variadas en vez de una sola
    Vector3 nextSpawnPoint;
    private int tilesSpawned = 0;

    public void SpawnTile()
    {
        // Elige una tile aleatoria del array
        int randomIndex = Random.Range(0, groundTiles.Length);
        GameObject temp = Instantiate(groundTiles[randomIndex], nextSpawnPoint, Quaternion.identity);

        nextSpawnPoint = temp.transform.GetChild(1).transform.position;

        //GroundTile gt = temp.GetComponent<GroundTile>();
        //gt.isFirstTile = (tilesSpawned == 0); // Solo el primero es "first tile"

        tilesSpawned++;
    }

    private void Start()
    {
        for (int i = 0; i < 15; i++)
        {
            SpawnTile();
        }
    }
}