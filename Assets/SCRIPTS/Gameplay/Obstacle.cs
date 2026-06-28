using UnityEngine;

public class Obstacle : MonoBehaviour
{
    PlayerMovement playerMovement;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        playerMovement = GameObject.FindFirstObjectByType<PlayerMovement>();
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            GameManager.inst.TakeDamage(gameObject, collision.gameObject);
        }
    }

}

