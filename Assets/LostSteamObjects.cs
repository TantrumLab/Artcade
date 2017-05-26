using UnityEngine;
using UnityEngine.Events;

public class LostSteamObjects : MonoBehaviour
{
    [SerializeField] UnityEvent m_OnEnable;
    [SerializeField] UnityEvent m_OnDisable;

    private void OnEnable()
    {
        m_OnEnable.Invoke();
    }
    private void OnDisable()
    {
        m_OnDisable.Invoke();
    }
}
