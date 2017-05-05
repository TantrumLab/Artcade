using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class FireGun : MonoBehaviour
{
    [SerializeField] private GameObject m_bulletType;
    [SerializeField] private GameObject m_barrel;
    [SerializeField] private Hand m_hand;

    private Animator m_anim;

    private void Start()
    {
        m_anim = GetComponent<Animator>();

        Input.GetJoystickNames();
    }

    void Update ()
    {
        m_anim.SetBool("Fire", m_hand.controller.GetHairTrigger());
	}

    void Shoot()
    {
        m_hand.controller.TriggerHapticPulse(1500);
        GameObject g = Instantiate(m_bulletType, m_barrel.transform.position, m_barrel.transform.rotation);
        g.GetComponent<Bullet>().SetDirection(m_barrel.transform.forward);
    }
}
