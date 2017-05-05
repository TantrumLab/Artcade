using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    [SerializeField] float m_initVelocity = 5;
    [SerializeField] float m_lifespan = 5;      // Life in seconds

    public void SetDirection (Vector3 dir)
    {
        GetComponent<Rigidbody>().velocity = m_initVelocity * dir;
        StartCoroutine(LifeDecay());
    }

    //private void Awake()
    //{
    //    GetComponent<Rigidbody>().velocity = m_initVelocity * new Vector3(0,0,1);
    //}

    private void OnTriggerEnter(Collider other)
    {
        Target t = other.gameObject.GetComponent<Target>();
        if (t != null)
        {
            t.GetComponent<Rigidbody>().AddForce(gameObject.GetComponent<Rigidbody>().velocity);

            t.OnHit();
        }

        Destroy(gameObject);
    }

    IEnumerator LifeDecay()
    {
        float t = 0;

        while(t < m_lifespan)
        {
            t += Time.deltaTime;
            yield return null;
        }

        Destroy(gameObject);
    }
}
