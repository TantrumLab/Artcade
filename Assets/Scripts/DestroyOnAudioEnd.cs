using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(AudioSource))]
public class DestroyOnAudioEnd : MonoBehaviour
{
    private AudioSource m_AudioSource;
	// Use this for initialization
	void Start ()
    {
        m_AudioSource = GetComponent<AudioSource>();
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
