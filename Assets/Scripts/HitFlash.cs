using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitFlash : MonoBehaviour
{
    private Renderer m_Renderer;
    private Color m_NewColor;

    [SerializeField]
    private float m_FlashSpeed;
    [SerializeField]
    private float m_MaxOpacity;

	void Start ()
    {
        m_Renderer = GetComponent<Renderer>();
        m_NewColor = m_Renderer.material.color;
	}
	

	void Update ()
    {
        m_NewColor.a = m_Renderer.material.color.a > 0 ? m_NewColor.a - Time.deltaTime * m_FlashSpeed : 0;
        m_Renderer.material.color = m_NewColor;
	}

    public void Flash()
    {
        m_NewColor.a = m_MaxOpacity;
    }
}
