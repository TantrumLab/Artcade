using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GemFollow : MonoBehaviour
{
    public Transform m_Target;
    public Vector3 m_Offset;
    public float m_FollowSpeed;
	
	// Update is called once per frame
	void Update ()
    {
        if (m_Target == null)
        {
            ShrinkOut();
        }
        else
        {
            FollowTransform(m_Target, m_Offset, m_FollowSpeed);
        }
	}

    private void FollowTransform(Transform target, Vector3 posOffset, float speed)
    {
        transform.position = Vector3.Lerp(
            transform.position,
            target.transform.position + 
                (target.right * posOffset.x
                + target.up * posOffset.y
                + target.forward * posOffset.z),
            Time.deltaTime * speed);

        transform.rotation = Quaternion.Lerp(
            transform.rotation, target.rotation, Time.deltaTime * speed); 
    }

    private void ShrinkOut()
    {
        transform.localScale -= (Vector3.one * Time.deltaTime);

        if (transform.localScale.magnitude < 0.1f)
        {
            Destroy(gameObject);
        }
    }
}