using UnityEngine;

public class GroundTile : MonoBehaviour
{
    GroundSpawner groundSpawner;

    public GameObject obstaclePrefab;

    public GameObject coinPrefab;

    private void Start()
    {
        groundSpawner = GameObject.FindFirstObjectByType<GroundSpawner>();
        SpawnObstacle();
        SpawnCoins();
    }


    private void OnTriggerExit(Collider other)
    {
        groundSpawner.SpawnTile();
        Destroy(gameObject, 2);
    }
    private void Update()
    {

    }

    void SpawnObstacle()
    {
        // Elige una posicion random para spawnear
        int obstacleSpawnIndex = Random.Range(2, 5);
        Transform spawnPoint = transform.GetChild(obstacleSpawnIndex).transform;

        // Spawnear el obstaculo en la posicion
        Instantiate(obstaclePrefab, spawnPoint.position, Quaternion.identity, transform);
    }

    void SpawnCoins()
    {
        float[] lanePositions = { -2.5f, 0f, 2.5f };
        int coinsToSpawn = 1;

        for (int i = 0; i < coinsToSpawn; i++)
        {
            int randomLane = Random.Range(0, lanePositions.Length);
            float randomZ = Random.Range(GetComponent<Collider>().bounds.min.z,
                                         GetComponent<Collider>().bounds.max.z);

            Vector3 spawnPos = new Vector3(lanePositions[randomLane], 1f, randomZ);
            Instantiate(coinPrefab, spawnPos, Quaternion.identity, transform);
        }
    }

    Vector3 GetRandomPointInCollider (Collider collider)
    {
        Vector3 point = new Vector3(
            Random.Range(collider.bounds.min.x, collider.bounds.max.x),
            Random.Range(collider.bounds.min.x, collider.bounds.max.y),
            Random.Range(collider.bounds.min.x, collider.bounds.max.z)
            );
        if (point != collider.ClosestPoint(point))
        {
            point = GetRandomPointInCollider(collider);
        }

        point.y = 1;
        return point;
    }
}