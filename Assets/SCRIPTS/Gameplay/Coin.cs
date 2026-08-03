using UnityEngine;

public class Coin : MonoBehaviour
{
    public float turnSpeed = 90f;
    public GameObject coinParticlesPrefab;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<Obstacle>() != null)
        {
            Destroy(gameObject);
            return;
        }

        if (other.gameObject.tag != "Player") return;

        GameManager.inst.IncrementCoins();

        // Partículas en la posición de la moneda
        if (coinParticlesPrefab != null)
        {
            GameObject particles = Instantiate(coinParticlesPrefab, transform.position, Quaternion.identity);
            ParticleSystem ps = particles.GetComponent<ParticleSystem>();
            if (ps != null) ps.Play();
            Destroy(particles, 2f);
        }

        // Ocultar moneda inmediatamente pero destruirla después
        GetComponent<Renderer>().enabled = false;
        GetComponent<Collider>().enabled = false;
        Destroy(gameObject, 0.5f);
    }

    private void Update()
    {
        transform.Rotate(0, 0, turnSpeed * Time.deltaTime);
    }
}