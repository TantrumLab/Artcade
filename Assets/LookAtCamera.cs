using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookAtCamera : MonoBehaviour
{
    GameObject m_mainCamera;

    private void Start()
    {
        m_mainCamera = Camera.main.gameObject;
    }

    void Update ()
    {
        transform.LookAt(m_mainCamera.transform);	
	}
}
