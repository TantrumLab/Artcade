using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EmissionColorToAudioBand : MonoBehaviour
{
    [SerializeField]
    private AudioVisualization m_AV;

    [SerializeField]
    private int m_AudioBand;

    [SerializeField]
    private Color m_NewColor;
    private Color m_OriginalColor;

    private Material m_Material;

	// Use this for initialization
	void Start ()
    {
        m_Material = new Material(GetComponent<Renderer>().material);
        GetComponent<Renderer>().material = m_Material;
        m_OriginalColor = m_Material.GetColor("_EmissionColor");
	}
	
	// Update is called once per frame
	void Update ()
    {
        float frequency = m_AV.m_CurrentFrequencyStereo[m_AudioBand];
        m_Material.SetColor("_EmissionColor", Color.Lerp(m_OriginalColor, m_NewColor, frequency));
	}
}
