using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public Transform player;
    Vector3 offset;

    [Header("Camera Shake")]
    public float shakeDuration = 0.3f;
    public float shakeMagnitude = 0.2f;

    private float shakeTimer = 0f;
    private Vector3 basePos;

    void Start()
    {
        offset = transform.position - player.position;
    }

    void Update()
    {
        if (player == null) return;

        Vector3 targetPos = player.position + offset;
        targetPos.x = 0;
        basePos = targetPos;

        if (shakeTimer > 0)
        {
            // Aplica shake sobre la posición base
            transform.position = basePos + Random.insideUnitSphere * shakeMagnitude;
            shakeTimer -= Time.deltaTime;
        }
        else
        {
            transform.position = basePos;
        }
    }

    public void TriggerShake()
    {
        shakeTimer = shakeDuration;
    }
}