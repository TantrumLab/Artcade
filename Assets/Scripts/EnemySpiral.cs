using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemySpiral : MonoBehaviour
{
    Vector3 originalPos;
    float timer = 0;
    int direction;

	// Use this for initialization
	void Start ()
    {
        originalPos = transform.position;

        direction = Random.Range(-1, 2);
	}
	
	// Update is called once per frame
	void Update ()
    {
        timer += Time.deltaTime * direction;
        Vector3 newPos = Vector3.zero;

        newPos.x = Mathf.Sin(timer);
        newPos.y = Mathf.Cos(timer);
        newPos.z = transform.position.z;

        transform.position = originalPos + newPos;
    }
}
