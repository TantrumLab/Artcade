using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnPadEnemy : MonoBehaviour
{
    /// <summary>
    /// The AudioVisualization object refrence for frequency data
    /// </summary>
    [SerializeField]
    private AudioVisualization m_AV;

    [SerializeField]
    private GameObject m_EnemyPrefab;

    [SerializeField]
    private int m_InstantSpawnBand;

    [SerializeField]
    private int m_SpawnRateBand;

    [SerializeField, Range(-1, 1)]
    private float m_SpawnThreshold;

    private Vector3[] m_SubSpawnPads;
    private int m_LastSubSpawn;

    private void Start ()
    {
        this.enabled =
            (m_AV != null) &&
            (m_EnemyPrefab != null) &&
            (m_InstantSpawnBand < m_AV.frequencyBands) &&
            (m_SpawnRateBand < m_AV.frequencyBands);

        m_SubSpawnPads = new Vector3[9];

        for(int i = 0; i < 9; ++i)
        {
            m_SubSpawnPads[i] = new Vector3((i % 3f), (i/3), (0));
        }

        StartCoroutine(_ConstantSpawn());
	}
    
    private IEnumerator _ConstantSpawn()
    {
        yield return null;
        yield return new WaitUntil(() => m_AV.m_CurrentFrequencyStereo[m_SpawnRateBand] >= 0.1);

        while(this.enabled)
        {
            SpawnEnemy();
            yield return new WaitForSeconds((1 - (m_AV.m_CurrentFrequencyStereo[m_SpawnRateBand])));
        }
    }

    private void Update ()
    {
        //CheckSpawnOnBeat();
	}

    private void SpawnEnemy()
    {
        int subSpawn = Random.Range(0, 9);

        subSpawn = subSpawn == m_LastSubSpawn ? ((subSpawn + 1) % m_SubSpawnPads.Length) : subSpawn;

        GameObject enemey = Instantiate(m_EnemyPrefab, m_SubSpawnPads[subSpawn], transform.rotation);
        enemey.GetComponent<Animator>().SetFloat("Speed", 1);
    }
    
}
