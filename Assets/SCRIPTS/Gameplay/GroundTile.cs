using UnityEngine;
using System.Collections.Generic;

public class GroundTile : MonoBehaviour
{
    GroundSpawner groundSpawner;
    public GameObject obstaclePrefab;
    public GameObject tallObstaclePrefab;
    public GameObject coinPrefab;
    public int coinsToSpawn = 1;

    [HideInInspector] public bool isFirstTile = false;

    private float[] lanePositions = { -2.5f, 0f, 2.5f };

    // Guarda dónde se spawnearon obstáculos para evitarlos con las monedas
    private List<Vector3> obstaclePositions = new List<Vector3>();

    private void Start()
    {
        groundSpawner = GameObject.FindFirstObjectByType<GroundSpawner>();
        
        if (!isFirstTile)
        {
            SpawnObstacle();
        }

        SpawnCoins();
    }

    private void OnTriggerExit(Collider other)
    {
        groundSpawner.SpawnTile();
        Destroy(gameObject, 2);
    }

    void SpawnObstacle()
    {
        int obstacleCount = Random.Range(1, 3);
        Collider tileCollider = GetComponent<Collider>();

        int[] availableLanes = { 0, 1, 2 };
        ShuffleArray(availableLanes);

        for (int i = 0; i < obstacleCount; i++)
        {
            float laneX = lanePositions[availableLanes[i]];
            float randomZ = Random.Range(tileCollider.bounds.min.z, tileCollider.bounds.max.z);

            Vector3 spawnPos = new Vector3(laneX, 0.5f, randomZ);
            obstaclePositions.Add(spawnPos); // Guardamos la posición

            GameObject prefabToSpawn = Random.value < 0.5f ? obstaclePrefab : tallObstaclePrefab;
            Instantiate(prefabToSpawn, spawnPos, Quaternion.identity, transform);
        }
    }

    void SpawnCoins()
    {
        Collider tileCollider = GetComponent<Collider>();
        float minSafeDistance = 3f; // Distancia mínima en Z respecto a un obstáculo en el mismo carril

        int attempts = 0;
        int coinsSpawned = 0;

        while (coinsSpawned < coinsToSpawn && attempts < coinsToSpawn * 1)
        {
            attempts++;

            int randomLane = Random.Range(0, lanePositions.Length);
            float laneX = lanePositions[randomLane];
            float randomZ = Random.Range(tileCollider.bounds.min.z, tileCollider.bounds.max.z);

            Vector3 spawnPos = new Vector3(laneX, 1f, randomZ);

            if (IsFarFromObstacles(spawnPos, minSafeDistance))
            {
                Instantiate(coinPrefab, spawnPos, Quaternion.identity, transform);
                coinsSpawned++;
            }
        }
    }

    bool IsFarFromObstacles(Vector3 pos, float minDistance)
    {
        foreach (Vector3 obstaclePos in obstaclePositions)
        {
            // Solo importa si están en el mismo carril (mismo X)
            if (Mathf.Approximately(pos.x, obstaclePos.x))
            {
                if (Mathf.Abs(pos.z - obstaclePos.z) < minDistance)
                    return false;
            }
        }
        return true;
    }

    void ShuffleArray(int[] array)
    {
        for (int i = array.Length - 1; i > 0; i--)
        {
            int randomIndex = Random.Range(0, i + 1);
            int temp = array[i];
            array[i] = array[randomIndex];
            array[randomIndex] = temp;
        }
    }
}