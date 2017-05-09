using UnityEngine;
using System.Collections;

public class Slowdown : MonoBehaviour {

    public float timeScale;

	// Use this for initialization
	void Awake () {
        
	}
	
	// Update is called once per frame
	void Update () {
        Time.timeScale = timeScale;
	}
}
