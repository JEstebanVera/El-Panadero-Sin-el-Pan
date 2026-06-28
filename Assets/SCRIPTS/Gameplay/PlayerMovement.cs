using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerMovement : MonoBehaviour
{
    [Header("Movement")]
    public float speed = 8f;
    public float laneSwitchSpeed = 10f;
    public Rigidbody rb;

    [Header("Lane Settings")]
    private float[] lanePositions = { -2.5f, 0f, 2.5f };
    private int currentLane = 1;

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

    [HideInInspector] public bool alive = true;

    private void Update()
    {
        if (!alive) return;
        CheckGrounded();
        HandleKeyboardInput();
        HandleSwipeInput();
    }

    private void FixedUpdate()
    {
        if (!alive) return;

        Vector3 forwardMove = transform.forward * speed * Time.fixedDeltaTime;
        Vector3 newPosition = rb.position + forwardMove;

        float targetX = lanePositions[currentLane];
        newPosition.x = Mathf.Lerp(rb.position.x, targetX, laneSwitchSpeed * Time.fixedDeltaTime);

        if (isJumping)
        {
            float newY = Mathf.Lerp(rb.position.y, jumpTargetY, jumpLerpSpeed * Time.fixedDeltaTime);
            newPosition.y = newY;

            if (Mathf.Abs(rb.position.y - jumpTargetY) < 0.05f)
            {
                isJumping = false;
                rb.useGravity = true;
            }
        }

        rb.MovePosition(newPosition);
    }

    private void CheckGrounded()
    {
        isGrounded = Physics.Raycast(transform.position, Vector3.down, groundRayLength, groundLayer);
    }

    private void HandleKeyboardInput()
    {
        if (Input.GetKeyDown(KeyCode.A) || Input.GetKeyDown(KeyCode.LeftArrow)) MoveLeft();
        if (Input.GetKeyDown(KeyCode.D) || Input.GetKeyDown(KeyCode.RightArrow)) MoveRight();
        if (Input.GetKeyDown(KeyCode.Space)) Jump();
    }

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

                if (Mathf.Abs(swipeDelta.x) > Mathf.Abs(swipeDelta.y))
                {
                    if (Mathf.Abs(swipeDelta.x) >= swipeThreshold)
                    {
                        if (swipeDelta.x < 0) MoveLeft();
                        else MoveRight();
                    }
                }
                else
                {
                    if (swipeDelta.y >= swipeThreshold) Jump();
                }

                isSwiping = false;
                break;

            case TouchPhase.Canceled:
                isSwiping = false;
                break;
        }
    }

    private void MoveLeft() { if (currentLane > 0) currentLane--; }
    private void MoveRight() { if (currentLane < lanePositions.Length - 1) currentLane++; }

    private void Jump()
    {
        if (!isGrounded) return;
        isJumping = true;
        rb.useGravity = false;
        rb.linearVelocity = Vector3.zero;
    }

    public void DisablePlayer() { alive = false; }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawLine(transform.position, transform.position + Vector3.down * groundRayLength);
    }
}