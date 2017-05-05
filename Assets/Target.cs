using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Target : MonoBehaviour
{
    [SerializeField] UnityEvent m_onHit;

    private void OnTriggerEnter(Collider other)
    {
        m_onHit.Invoke();
    }
}
