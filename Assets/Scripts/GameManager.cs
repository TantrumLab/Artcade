using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class GameManager : MonoBehaviour
{
    [SerializeField] ScoreCard m_scoreCard;         //
    [Space(10)]
    [SerializeField] AudioSource m_audioVisualizer; //
    [SerializeField] AudioClip[] m_levelSongs;      //
    [Space(10)]
    [SerializeField] GameObject[] m_hideOnPlay;     //
    [Space(10)]
    [SerializeField] FireGun[] Guns;
    [Space(10)]
    [SerializeField] UnityEvent m_onPlay;           //
    [SerializeField] UnityEvent m_onEnd;            //

    private bool m_musicPlaying = false;


    private void Update()
    {
        if (m_musicPlaying && !m_audioVisualizer.isPlaying)
        {
            m_musicPlaying = false;
            EndGame();
        }

        else
            m_musicPlaying = m_audioVisualizer.isPlaying;
    }

    public void StartGame(int index)
    {
        if (index < 0)
            return;

        m_scoreCard.StartNewRound(index);

        m_audioVisualizer.clip = m_levelSongs[index];
        m_audioVisualizer.Play();

        foreach (GameObject g in m_hideOnPlay)
            g.SetActive(false);

        m_onPlay.Invoke();
    }

    void EndGame()
    {
        m_scoreCard.SelfAddScore();
        // Apply scores
        m_scoreCard.UpdateScores();

        // Pause players ability to shoot
        foreach (FireGun g in Guns)
            g.Ceasefire();

        // Clear enemies

        // Trigger text indicate round is complete

        foreach (GameObject g in m_hideOnPlay)
            g.SetActive(true);
    }

}
