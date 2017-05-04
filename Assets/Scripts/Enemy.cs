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
    public Renderer m_Renderer;

    private Vector3 m_OriginalPos;

    /// <summary>
    /// The current health of the enemy
    /// </summary>
    private float m_Health;

    public float Health
    {
        get { return m_Health; }

        set
        {
            m_Health = value;
            if (m_Health == 0) Die();
        }
    }

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

    private Vector3 m_PathOffset = Vector3.zero;

    public List<Transform> m_FlightPath = new List<Transform>();

    public void SetInitValues(float health, float speed, float spin, Vector3 pathOff, List<Transform> path)
    {
        m_Health = health;
        m_Speed = speed;
        m_Spin = spin;
        m_PathOffset = pathOff;

        foreach(Transform t in path)
        {
            m_FlightPath.Add(t);
        }

        Vector3 color = new Vector3(health, speed, spin);
        color.Normalize();

        m_Renderer.material.color = new Color(color.x, color.y, color.z);
    }

	void Start ()
    {
        m_TimeAlive = 0;
        m_OriginalPos = transform.position;

        m_Speed = m_Speed < 0 ? -m_Speed : m_Speed;
    }
	
	void FixedUpdate ()
    {
        m_TimeAlive += Time.deltaTime;

        if (m_FlightPath.Count < 1 || Health <= 0)
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
        Vector3 toNext = (m_FlightPath[0].position + m_PathOffset) - m_OriginalPos;
        toNext.y = 0;

        transform.forward = Vector3.Lerp(transform.forward, toNext.normalized, Time.deltaTime * m_Speed);
    }

    private void CheckWaypoint()
    {
        float currentDist = Vector3.Distance(m_OriginalPos, m_FlightPath[0].position + m_PathOffset);

        if (currentDist < m_PathOffset.magnitude + 1)
        {
            m_FlightPath.RemoveAt(0);

            if (m_FlightPath.Count > 1)
                currentDist = Vector3.Distance(m_OriginalPos, m_FlightPath[0].position);
        }
    }

    private void Die()
    {
        StartCoroutine(_Die());
    }

    private IEnumerator _Die()
    {
        yield return null;
    }
}
