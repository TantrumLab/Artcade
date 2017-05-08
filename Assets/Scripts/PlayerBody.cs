using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerBody : MonoBehaviour, Shootable
{
    public void OnShot()
    {
        ScoreCard.instance.TargetScore -= 10;
    }
}
