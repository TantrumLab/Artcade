using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreCard : MonoBehaviour
{
    #region Variable
    private int m_SongIndex = 0; // Used to identify player pref for comparison

    private int[] m_song1HighScores;
    private int[] m_song2HighScores;
    private int[] m_song3HighScores;

    int m_targetHighscore = 0;      // Highest score for the selected song
    int m_displayedScore = 0;       // Score displayed to the player through the m_scoreText
    int m_actualScore = 0;          // The real score

    [SerializeField] Text m_scoreText;

    public static ScoreCard instance
    {
        get
        {
            return FindObjectOfType<ScoreCard>();
        }
    }

    public int ActualScore      // public field
    {
        set
        {
            m_actualScore = value;

            if (m_displayedScore != m_actualScore)
                StartCoroutine(ScoreTick());
        }
        get { return m_actualScore; }
    }

    int DisplayScore
    {
        set
        {
            m_displayedScore = value;
            m_scoreText.text = m_displayedScore.ToString();
        }
    }
    #endregion

    public void ScoreDelta(int a_deltaScore)
    {
        ActualScore += a_deltaScore;
    }

    IEnumerator ScoreTick()
    {
        while(m_displayedScore != m_actualScore)
        {
            if (m_displayedScore < m_actualScore)
                DisplayScore = m_displayedScore + 1;

            else
                DisplayScore = m_displayedScore - 1;

            yield return null;
        }

    }
}
