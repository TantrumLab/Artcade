using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Target : MonoBehaviour
{
    [SerializeField] UnityEvent m_onHit;

    public void OnHit()
    {
        m_onHit.Invoke();
    }
}
