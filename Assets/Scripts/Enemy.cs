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

	void Start ()
    {
        m_TimeAlive = 0;
        m_OriginalPos = transform.position;

        m_Speed = m_Speed < 0 ? -m_Speed : m_Speed;

        for(int i = 0; i < m_FlightPath.Count - 1; ++i)
        {
            m_FlightPath[i].LookAt(m_FlightPath[i + 1]);
        }
    }
	
	void Update ()
    {
        m_TimeAlive += Time.deltaTime;

        if (m_FlightPath.Count < 1)
            return;

        MoveForward();
        Orbit();
        AdjustOrientation();
        CheckWaypoint();
	}

    private void MoveForward()
    {
        m_OriginalPos += transform.forward * Time.deltaTime * m_Speed;
        transform.position = m_OriginalPos;
    }

    private void Orbit()
    {
        if (m_Spin == 0)
            return;

        Vector3 newPos = Vector3.zero;

        newPos += transform.up * Mathf.Sin(m_TimeAlive * m_Spin);
        newPos += transform.right * Mathf.Cos(m_TimeAlive * m_Spin);

        transform.localPosition += newPos;
    }

    private void AdjustOrientation()
    {
        Vector3 toNext = m_FlightPath[0].position - m_OriginalPos;

        transform.forward = Vector3.Lerp(transform.forward, toNext.normalized, Time.deltaTime * m_Speed);
    }

    private void CheckWaypoint()
    {
        float currentDist = Vector3.Distance(m_OriginalPos, m_FlightPath[0].position);

        if (currentDist < 1f)
        {
            m_FlightPath.RemoveAt(0);

            if (m_FlightPath.Count > 1)
                currentDist = Vector3.Distance(m_OriginalPos, m_FlightPath[0].position);
        }
    }
}
