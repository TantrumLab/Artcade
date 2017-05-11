using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitFlash : MonoBehaviour
{
    private Renderer m_Renderer;
    private Color m_NewColor;

    [SerializeField, Range(1f, 2f)]
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
        m_NewColor.a -= m_Renderer.material.color.a > 0 ? Time.deltaTime * (m_FlashSpeed) : 0;
        m_Renderer.material.color = m_NewColor;
	}

    [ContextMenu("Flash")]
    public void Flash()
    {
        print(m_Renderer.material.color.a);
        print(m_NewColor.a);
        m_NewColor.a = m_MaxOpacity;
        print(m_NewColor.a);
    }
}
