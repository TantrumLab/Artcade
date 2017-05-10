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

    public AudioSource m_AudioSource;

    public GameObject m_ExplosionPrefab;

    public GameObject m_Projectile;

    private Vector3 m_OriginalPos;

    private AudioVisualization m_AV;

    /// <summary>
    /// The current health of the enemy
    /// </summary>
    private float m_Health;

    public float Health
    {
        get { return m_Health; }

        set
        {
            m_AudioSource.PlayOneShot(m_AudioSource.clip, 1f);
            m_Health = value;
            if (m_Health <= 0) Die();
        }
    }

    /// <summary>
    /// The forward speed of the enemy
    /// </summary>
    private float m_Speed;
    /// <summary>
    /// The speed the enemy orbits its original position
    /// </summary>
    private float m_Spin;

    private float m_TimeAlive;

    public List<Transform> m_FlightPath = new List<Transform>();

    public void SetInitValues(float health, float speed, float spin, List<Transform> path)
    {
        m_Health = health;
        m_Speed = speed;
        m_Spin = spin;

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

        m_AV = FindObjectOfType<AudioVisualization>();

        StartCoroutine(ShootPlayer());
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
        CheckGameOver();
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
        Vector3 toNext = (m_FlightPath[0].position) - m_OriginalPos;
        //toNext.y = 0;

        transform.forward = Vector3.Lerp(transform.forward, toNext.normalized, Time.deltaTime * m_Speed);
    }

    private void CheckWaypoint()
    {
        float currentDist = Vector3.Distance(m_OriginalPos, m_FlightPath[0].position);

        if (currentDist < 1)
        {
            m_FlightPath.RemoveAt(0);

            if (m_FlightPath.Count > 1)
                currentDist = Vector3.Distance(m_OriginalPos, m_FlightPath[0].position);
        }
    }

    private void Die()
    {
        ScoreCard.instance.ActualScore += m_Health <= 0 ? 15 : 0;
        Instantiate(m_ExplosionPrefab, transform.position, transform.rotation);
        Destroy(gameObject);
    }

    private void CheckGameOver()
    {
        if (m_AV.m_AudioSource.isPlaying) return;
        else StartCoroutine(_SelfDestruct());
    }

    private IEnumerator _SelfDestruct()
    {
        yield return new WaitForSeconds(1f);
        Destroy(gameObject);
    }

    private IEnumerator ShootPlayer()
    {
        yield return new WaitForSeconds(5 + Random.Range(0, 5));

        while(gameObject.activeSelf)
        {
            GameObject player = FindObjectOfType<PlayerBody>().gameObject;

            Vector3 toPlayer = player.transform.position - transform.position;

            RaycastHit rayHit;

            yield return new WaitForFixedUpdate();

            if (!Physics.Raycast(transform.position, toPlayer, out rayHit))
                continue;
            else if (rayHit.transform.gameObject != player)
                 continue;

            GameObject bullet = Instantiate(
                    m_Projectile,
                    transform.position + toPlayer.normalized,
                    transform.rotation) as GameObject;

            bullet.transform.LookAt(player.transform);

            float error = 0.1f;

            bullet.GetComponent<EnemyBullet>().SetInitValues(10f, 10f, bullet.transform.forward +
                new Vector3(Random.Range(-error, error), Random.Range(-error, error), Random.Range(-error, error)));

            yield return new WaitForSeconds(Random.Range(7, 21));
        }
    }
}
