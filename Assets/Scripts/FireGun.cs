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
    private AudioSource m_audioSource;
    private bool m_canShoot;// = true;

    private void Awake()
    {
        m_canShoot = true;
        m_anim = GetComponent<Animator>();
        m_audioSource = GetComponent<AudioSource>();
    }

    void Update ()
    {
        m_anim.SetBool("Fire", m_hand.controller.GetHairTrigger() && m_canShoot);
    }

    void Shoot()
    {
        m_hand.controller.TriggerHapticPulse(1500);
        GameObject g = Instantiate(m_bulletType, m_barrel.transform.position, m_barrel.transform.rotation);
        g.GetComponent<Bullet>().SetDirection(m_barrel.transform.forward);
    }

    void FireAudio()
    {
        StartCoroutine(_FireAudio());
    }

    public void Ceasefire()
    {
        m_canShoot = false;
        StartCoroutine(_Ceasefire());
    }

    private IEnumerator _FireAudio()
    {
        yield return null;

        AudioSource source = gameObject.AddComponent<AudioSource>() as AudioSource;

        source.clip = m_audioSource.clip;
        source.volume = m_audioSource.volume;
        source.playOnAwake = source.loop = false;
        source.priority = m_audioSource.priority;
        source.pitch = m_audioSource.pitch;
        source.spatialBlend = m_audioSource.spatialBlend;
        source.reverbZoneMix = m_audioSource.reverbZoneMix;

        source.Play();
        yield return new WaitForSeconds(0.25f);
        Destroy(source);
    }

    IEnumerator _Ceasefire()
    {
        yield return new WaitForSeconds(10);
        m_canShoot = true;
    }
}
