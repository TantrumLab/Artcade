using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class EnemyBullet : MonoBehaviour
{
    [SerializeField]
    private GameObject m_ExplosionSFXPrefab;

    private float m_Speed;
    private float m_LifeTime;
    private Vector3 m_Direction;

    private Vector3 m_Velocity
    { get { return m_Direction.normalized * m_Speed; } }

    private Rigidbody RB;

    public void SetInitValues(float speed, float life, Vector3 direction)
    {
        RB = GetComponent<Rigidbody>();

        m_Speed = speed;
        m_LifeTime = life;
        m_Direction = direction;

        RB.velocity = m_Velocity;
    }
	
	void Update ()
    {
        m_LifeTime -= Time.deltaTime;
        if (m_LifeTime <= 0) Destroy(gameObject);
        else transform.Rotate(0, 0, Time.deltaTime * 360);
	}

    void OnCollisionEnter(Collision collision)
    {
        Shootable other = collision.gameObject.GetComponent<Shootable>();

        if (other != null)
        {
            other.OnShot();
        }

        Destroy(gameObject);
    }

    private void OnDestroy()
    {
        Instantiate(m_ExplosionSFXPrefab, transform.position, transform.rotation);
    }
}

public interface Shootable
{
    void OnShot();
}