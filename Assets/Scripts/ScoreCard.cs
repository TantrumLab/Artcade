using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreCard : MonoBehaviour
{
    int m_currentScore = 0;
    int m_targetScore = 0;

    public static ScoreCard instance
    {
        get
        {
            return FindObjectOfType<ScoreCard>();
        }
    }

    [SerializeField] Text m_scoreText;

    public int TargetScore
    {
        set
        {
            m_targetScore = value;

            if (m_currentScore != m_targetScore)
                StartCoroutine(ScoreCick());
        }
        get { return m_targetScore; }
    }

    int Score
    {
        set
        {
            m_currentScore = value;
            m_scoreText.text = m_currentScore.ToString();
        }
    }

    //[ContextMenu("Tick Up")]
    //public void TestTickUp()
    //{
    //    TargetScore += 15;
    //}

    //[ContextMenu("Tick Down")]
    //public void TestDownUp()
    //{
    //    TargetScore -= 15;
    //}

    public void ScoreDelta(int a_deltaScore)
    {
        TargetScore += a_deltaScore;
    }

    IEnumerator ScoreCick()
    {
        while(m_currentScore != m_targetScore)
        {
            if (m_currentScore < m_targetScore)
                Score = m_currentScore + 1;

            else
                Score = m_currentScore - 1;

            yield return null;
        }

    }
}
