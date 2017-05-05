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

    [SerializeField]
    private int m_HealthBand;
    [SerializeField]
    private int m_SpeedBand;
    [SerializeField]
    private int m_SpinBand;

    private Vector3[] m_SubSpawnPads;
    private int m_LastSubSpawn;

    public List<Transform> m_EnemyPath = new List<Transform>();

    private void Start ()
    {
        enabled =
            (m_AV != null) &&
            (m_EnemyPrefab != null) &&
            (m_InstantSpawnBand < m_AV.frequencyBands) &&
            (m_SpawnRateBand < m_AV.frequencyBands);

        m_SubSpawnPads = new Vector3[9];

        for(int i = 0; i < 9; ++i)
        {
            m_SubSpawnPads[i] = new Vector3((i % 3f), (i / 3), (0));
            m_SubSpawnPads[i] += transform.position;
        }
        
        for (int i = 0; i < m_EnemyPath.Count - 1; ++i)
        {
            m_EnemyPath[i].LookAt(m_EnemyPath[i + 1]);
        }

        StartCoroutine(_ConstantSpawn());
	}
    
    private IEnumerator _ConstantSpawn()
    {
        yield return null;
        yield return new WaitUntil(() => m_AV.m_CurrentFrequencyStereo[m_SpawnRateBand] >= 0.1);

        float health, speed, spin;

        while(enabled)
        {
            health = 1 + (5 * m_AV.m_CurrentFrequencyStereo[m_HealthBand]);
            speed = 1 + (5 - health);
            spin = m_AV.m_DeltaFrequencyStereo[m_SpinBand] * 20;

            SpawnEnemy(health, speed, spin);
            yield return new WaitForSeconds((1 - (m_AV.m_CurrentFrequencyStereo[m_SpawnRateBand])));
        }
    }

    private void Update ()
    {
        if(m_AV.m_DeltaFrequencyStereo[m_InstantSpawnBand] >= m_SpawnThreshold)
        {
            SpawnEnemy(10, 3, Random.Range(-1, 1));
        }
	}

    private void SpawnEnemy(float health, float speed, float spin)
    {
        int r = Random.Range(0, 8);
        GameObject drone = Instantiate(m_EnemyPrefab, m_SubSpawnPads[r], transform.rotation) as GameObject;
        drone.GetComponent<Enemy>().SetInitValues(health, speed, spin, m_EnemyPath);
        drone.transform.localScale *= health / 5;
    }   
}