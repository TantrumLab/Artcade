using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioCubes : MonoBehaviour
{
    public GameObject prefab;
    AudioVisualization AV;

    List<GameObject> cubes = new List<GameObject>();

    void Start ()
    {
        AV = FindObjectOfType<AudioVisualization>();

		for (int i = 0; i < AV.m_CurrentFrequencyStereo.Length; ++i)
        {
            GameObject g = Instantiate(prefab, transform) as GameObject;
            g.transform.Translate(g.transform.right * (2 * i));
            cubes.Add(g);
        }
	}
	
	
	void LateUpdate ()
    {
		for(int i = 0; i < AV.m_CurrentFrequencyStereo.Length; ++i)
        {
            cubes[i].transform.localScale =
                new Vector3(cubes[i].transform.localScale.x,
                AV.m_CurrentFrequencyStereo[i] * 10, 
                cubes[i].transform.localScale.z);

            cubes[i].transform.localPosition =
                new Vector3(cubes[i].transform.localPosition.x,
                cubes[i].transform.localScale.y / 2f,
                cubes[i].transform.localPosition.z);

            cubes[i].GetComponent<Renderer>().material.color =
                new Color
                (AV.m_CurrentFrequencyStereo[i],
                AV.m_DeltaFrequencyStereo[i],
                1);
        }
	}
}
