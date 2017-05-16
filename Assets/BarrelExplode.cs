using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BarrelExplode : MonoBehaviour
{
    [SerializeField] int m_explosionDamage;

    List<Enemy> m_triggerList = new List<Enemy>();

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Enemy>() != null && other.GetComponent<BarrelExplode>() == null)
            m_triggerList.Add(other.GetComponent<Enemy>());
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<Enemy>() != null && other.GetComponent<BarrelExplode>() == null)
            m_triggerList.Remove(other.GetComponent<Enemy>());
    }

    [ContextMenu("Boom")]
    public void BigExplode()
    {
        foreach (Enemy e in m_triggerList)
        {
            if (e != null)
            {
                e.m_explodeOnDeath = false;
                e.Health -= m_explosionDamage;
            }
        }

        Destroy(this);
    }
}
