using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Class for enemy drones
/// </summary>
public class Enemy : MonoBehaviour
{
    /// <summary>
    /// Refrence to the enemy's renderer
    /// </summary>
    Renderer m_Renderer;

    /// <summary>
    /// Refrence to the enemy's animator
    /// </summary>
    Animator m_Animator;

    Vector3 m_OriginalPos;

    /// <summary>
    /// The current health of the enemy
    /// </summary>
    private float m_Health;
    /// <summary>
    /// The forward speed of the enemy
    /// </summary>
    [SerializeField]
    private float m_Speed;
    /// <summary>
    /// The speed the enemy orbits its original position
    /// </summary>
    [SerializeField, Range(-5, 5)]
    private float m_Spin;

    private float m_TimeAlive;

    public List<Transform> m_FlightPath = new List<Transform>();
    private Transform m_NextWaypoint;

	void Start ()
    {
        m_TimeAlive = 0;
        m_OriginalPos = transform.position;
	}
	
	void Update ()
    {
        m_TimeAlive += Time.deltaTime;

        MoveForward();
        Orbit();
	}

    private void MoveForward()
    {
        m_OriginalPos += transform.forward * Time.deltaTime * m_Speed;
        transform.position = m_OriginalPos;
    }
    private void Orbit()
    {
        Vector3 newPos = Vector3.zero;

        newPos += transform.up * Mathf.Sin(m_TimeAlive * m_Spin);
        newPos += transform.right * Mathf.Cos(m_TimeAlive * m_Spin);

        transform.localPosition += newPos;
    }
}
