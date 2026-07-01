using UnityEngine;

public class GroundSpawner : MonoBehaviour
{
    public GameObject groundTile;
    Vector3 nextSpawnPoint;
    private int tilesSpawned = 0;

    public void SpawnTile()
    {
        GameObject temp = Instantiate(groundTile, nextSpawnPoint, Quaternion.identity);
        nextSpawnPoint = temp.transform.GetChild(1).transform.position;

        GroundTile gt = temp.GetComponent<GroundTile>();
        gt.isFirstTile = (tilesSpawned == 0); // Solo el primero es "first tile"

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