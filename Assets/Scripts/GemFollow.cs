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
                transform.position,
                m_Target.transform.position + 
                    (m_Target.right * m_Offset.x
                    + m_Target.up * m_Offset.y
                    + m_Target.forward * m_Offset.z),
                Time.deltaTime * 10f);

            transform.rotation = Quaternion.Lerp(
                transform.rotation, m_Target.rotation, Time.deltaTime * 10f); 
        }
	}
}