using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GemFollow : MonoBehaviour
{
    public Transform m_Target;
    public Vector3 m_Offset;
	
	// Update is called once per frame
	void Update ()
    {
        if (m_Target == null)
            Destroy(gameObject);
        else
        {
            transform.position = Vector3.Lerp(
                transform.position, m_Target.transform.position + m_Offset, Time.deltaTime);
        }
	}
}
