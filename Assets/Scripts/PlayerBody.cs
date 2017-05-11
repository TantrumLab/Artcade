using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PlayerBody : MonoBehaviour, Shootable
{
    [SerializeField] UnityEvent m_onShot;
    public void OnShot()
    {
        m_onShot.Invoke();
        ScoreCard.instance.ActualScore -= 10;
    }
}
