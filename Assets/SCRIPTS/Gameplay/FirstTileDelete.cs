using UnityEngine;

public class FirstTileDelete : MonoBehaviour
{
    void Start()
    {
        Destroy(gameObject, 5f);
    }
}