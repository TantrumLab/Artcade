using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColorToAudioBand : MonoBehaviour
{
    [SerializeField]
    private AudioVisualization m_AV;

    [SerializeField]
    private int m_AudioBand;

    [SerializeField]
    private Color m_Color;

    private Material m_Material;

	// Use this for initialization
	void Start ()
    {
        m_Material = new Material(GetComponent<Renderer>().material);
        GetComponent<Renderer>().material = m_Material;
	}
	
	// Update is called once per frame
	void Update ()
    {
		
	}
}
