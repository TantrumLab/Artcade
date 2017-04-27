using UnityEngine;
using System.Collections;
using System.Collections.Generic;


[RequireComponent(typeof(AudioSource))]
public class AudioVisualization : MonoBehaviour
{
    /// <summary>
    /// The AudioSource attached to this GameObject
    /// </summary>
    private AudioSource m_AudioSource;

    /// <summary>
    /// Number of frequency bands the audio source will be split into
    /// WIll have a floor of 8, and celing of 16
    /// </summary>
    [SerializeField]
    private int m_NumberOfFrequencyBands;

    /// <summary>
    /// The total number of audio sambles from the connect AudioSource (Left)
    /// Will be equal to 2^m_NumberOfFrequenceBands
    /// </summary>
    public float[] m_SamplesLeft;
    /// <summary>
    /// The total number of audio sambles from the connect AudioSource (right)
    /// Will be equal to 2^m_NumberOfFrequenceBands
    /// </summary>
    public float[] m_SamplesRight;

    // NOTE:
    // The 2 samples above are for stereo audio

    /// <summary>
    /// The Frequence bands of the AudioSource evenly distrubited amongst m_NumberOfFrequenceBands
    /// </summary>
    public static float[] m_FrequencyBands;
    

	private void Awake ()
    {
        // Gets the AudioSource on this GameObject
        m_AudioSource = GetComponent<AudioSource>();
        // Makes sure the number of bands is atleast 8, and no larger that 16
        m_NumberOfFrequencyBands = Mathf.Clamp(m_NumberOfFrequencyBands, 8, 16);
	}

    private void Start()
    {
        // Ensures there is 1 and only 1 AudioVisualiser in the scene
        RemoveDuplicateVisualizers();

        // Creates the empty array for the frequency bands
        m_FrequencyBands = new float[m_NumberOfFrequencyBands];

        // Creates the empty array for the total audio samlpes
        m_SamplesLeft = m_SamplesRight = new float[(int)Mathf.Pow(2, m_NumberOfFrequencyBands)];
    }

    private void Update ()
    {
        GetAudioSpectrumData();
	}

    /// <summary>
    /// Gets the spectrum data (in stereo) of the AudioSource attached to this GameObject
    /// </summary>
    private void GetAudioSpectrumData()
    {
        // Gets the left audio spectrum
        m_AudioSource.GetSpectrumData(m_SamplesLeft, 0, FFTWindow.Blackman);
        // Gets the right audio spectrum
        m_AudioSource.GetSpectrumData(m_SamplesRight, 1, FFTWindow.Blackman);
    }

    private void GetAudioFrequenceBands()
    {

    }

    /// <summary>
    /// Finds all AudioVisualizers in the scene and remves all but this one
    /// </summary>
    private void RemoveDuplicateVisualizers()
    {
        // Gets all the AudioVisualizers int the scene
        AudioVisualization[] visualizers = FindObjectsOfType<AudioVisualization>();

        // For each visualizer in the scene
        foreach (AudioVisualization av in visualizers)  
        {   
            // If it is NOT this one                                            
            if(av != this)                                  
            {   
                // Destroy it
                Destroy(av);                                    
            }
        }
    }
}
