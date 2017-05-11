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
	IEnumerator Start ()
    {
        m_AudioSource = GetComponent<AudioSource>();

        if(m_AudioSource.enabled == false)
        {
            yield return new WaitForSeconds(m_AudioSource.clip.length);
            Destroy(gameObject);
        }

        if (Random.Range(0, m_ClipRarety) == 0)
        {
            m_AudioSource.clip = m_SecreteClip;
        }

        m_AudioSource.loop = false;

        m_AudioSource.Play();

        yield return new WaitUntil(() => m_AudioSource.isPlaying);
        yield return new WaitWhile(() => m_AudioSource.isPlaying);

        Destroy(gameObject);
	}
}
