using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GiveGem : MonoBehaviour
{
    [SerializeField]
    private GameObject m_GemPrefab;

    private void OnTriggerEnter(Collider other)
    {
        if(other.GetComponent<Enemy>())
        {
            GameObject gem = Instantiate(m_GemPrefab, transform.position, Quaternion.identity) as GameObject;
            gem.GetComponent<GemFollow>().m_Target = other.transform;
        }
    }
}
