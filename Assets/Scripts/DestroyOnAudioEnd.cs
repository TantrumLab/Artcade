using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(AudioSource))]
public class DestroyOnAudioEnd : MonoBehaviour
{
    private AudioSource m_AudioSource;

    [SerializeField]
    private AudioClip m_SecreteClip;

    [SerializeField]
    private int m_ClipRarety;
	// Use this for initialization
	void Start ()
    {
        m_AudioSource = GetComponent<AudioSource>();

        if (Random.Range(0, m_ClipRarety) == 0)
        {
            m_AudioSource.clip = m_SecreteClip;
        }

        m_AudioSource.playOnAwake = true;
        m_AudioSource.loop = false;


	}
	
	// Update is called once per frame
	void Update ()
    {
	    if(!m_AudioSource.isPlaying)
        {
            Destroy(gameObject);
        }
	}
}
