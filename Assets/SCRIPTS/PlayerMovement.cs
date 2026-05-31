using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    [Header("Movement")]
    public float speed = 5f;
    public float laneSwitchSpeed = 10f;
    public Rigidbody rb;

    [Header("Lane Settings")]
    private float[] lanePositions = { -2.5f, 0f, 2.5f };
    private int currentLane = 1; // 0 = izquierda, 1 = centro, 2 = derecha

    [Header("Jump Settings")]
    public float jumpTargetY = 3f;
    public float jumpLerpSpeed = 8f;
    public float groundRayLength = 1.1f;   
    public LayerMask groundLayer;           

    private bool isJumping = false;
    private bool isGrounded = false;

    [Header("Swipe Settings")]
    public float swipeThreshold = 50f;
    private Vector2 swipeStartPos;
    private bool isSwiping = false;

    private void Update()
    {
        CheckGrounded();
        HandleKeyboardInput();
        HandleSwipeInput();
    }

    private void FixedUpdate()
    {
        // Movimiento hacia adelante
        Vector3 forwardMove = transform.forward * speed * Time.fixedDeltaTime;
        Vector3 newPosition = rb.position + forwardMove;

        // Eje X: interpolación hacia carril destino
        float targetX = lanePositions[currentLane];
        newPosition.x = Mathf.Lerp(rb.position.x, targetX, laneSwitchSpeed * Time.fixedDeltaTime);

        // Eje Y: lerp hacia arriba si está saltando, gravedad hace el resto
        if (isJumping)
        {
            float newY = Mathf.Lerp(rb.position.y, jumpTargetY, jumpLerpSpeed * Time.fixedDeltaTime);
            newPosition.y = newY;

            // Cuando está suficientemente cerca del tope, soltamos al Rigidbody
            if (Mathf.Abs(rb.position.y - jumpTargetY) < 0.05f)
            {
                isJumping = false;
                rb.useGravity = true; // La gravedad toma el control para la caída
            }
        }

        rb.MovePosition(newPosition);
    }

    //  Ground Check 
    private void CheckGrounded()
    {
        isGrounded = Physics.Raycast(transform.position, Vector3.down, groundRayLength, groundLayer);
    }

    // Teclado (para pruebas en PC) 
    private void HandleKeyboardInput()
    {
        if (Input.GetKeyDown(KeyCode.A) || Input.GetKeyDown(KeyCode.LeftArrow))
            MoveLeft();

        if (Input.GetKeyDown(KeyCode.D) || Input.GetKeyDown(KeyCode.RightArrow))
            MoveRight();

        if (Input.GetKeyDown(KeyCode.Space))
            Jump();
    }

    // Swipe táctil (móvil) 
    private void HandleSwipeInput()
    {
        if (Input.touchCount == 0) return;

        Touch touch = Input.GetTouch(0);

        switch (touch.phase)
        {
            case TouchPhase.Began:
                swipeStartPos = touch.position;
                isSwiping = true;
                break;

            case TouchPhase.Ended:
                if (!isSwiping) break;

                Vector2 swipeDelta = touch.position - swipeStartPos;

                // Determina si el swipe fue más horizontal o vertical
                if (Mathf.Abs(swipeDelta.x) > Mathf.Abs(swipeDelta.y))
                {
                    // Swipe horizontal
                    if (Mathf.Abs(swipeDelta.x) >= swipeThreshold)
                    {
                        if (swipeDelta.x < 0) MoveLeft();
                        else MoveRight();
                    }
                }
                else
                {
                    // Swipe vertical
                    if (swipeDelta.y >= swipeThreshold)
                        Jump();
                }

                isSwiping = false;
                break;

            case TouchPhase.Canceled:
                isSwiping = false;
                break;
        }
    }

    //  Lógica de carriles 
    private void MoveLeft()
    {
        if (currentLane > 0) currentLane--;
    }

    private void MoveRight()
    {
        if (currentLane < lanePositions.Length - 1) currentLane++;
    }

    //  Lógica de salto 
    private void Jump()
    {
        if (!isGrounded) return; // Solo salta si está en el suelo

        isJumping = true;
        rb.useGravity = false; // Desactivamos gravedad del rb mientras sube con lerp
        rb.linearVelocity = Vector3.zero; 
    }

    // Debug visual del Raycast 
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawLine(transform.position, transform.position + Vector3.down * groundRayLength);
    }
}