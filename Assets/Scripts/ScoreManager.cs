using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScoreManager : MonoBehaviour
{
    public static float m_CurrentScore;
    public static float m_ScoreDenominator;
    public static float m_DisplayScore
    {
        get
        {
            return m_CurrentScore / m_ScoreDenominator;
        }
    }
    
    public static List<HighScore> m_HighScores = new List<HighScore>();

    public HighScore m_CurrenPlayer;


	void Start ()
    {
		
	}
	

	void Update ()
    {
		
	}

    void CreateNewPlayer(string name)
    {
        m_CurrenPlayer = new HighScore();
        m_CurrenPlayer.m_Name = name;
        m_CurrenPlayer.m_FinalScore = 0f;
    }

    void InsertNewHighScore()
    {
        for(int i = 0; i < m_HighScores.Count; ++i)
        {
            if(m_DisplayScore > m_HighScores[i].m_FinalScore)
            {
                m_HighScores.Insert(i, m_CurrenPlayer);
            }
        }
    }

    public class HighScore
    {
        public string m_Name;
        public float m_FinalScore;
    }
}
