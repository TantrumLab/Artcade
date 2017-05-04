using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TestTarget : MonoBehaviour
{
    [SerializeField] Text m_numOfHits;
    int m_num = 0;

    private void OnTriggerEnter(Collider other)
    {
        m_num += 1;
        m_numOfHits.text = m_num.ToString();
    }
}
