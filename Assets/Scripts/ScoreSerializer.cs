using UnityEngine;
using System.Xml;
using System.Xml.Serialization;
using System.IO;

public class ScoreSerializer : MonoBehaviour
{
    [SerializeField] string m_filePath;
    Score[] m_scores;

    public void Save(Score a_score)
    {
        var serializer = new XmlSerializer(typeof(Score));
        using (var stream = new FileStream(m_filePath, FileMode.Create))
        {
            serializer.Serialize(stream, this);
        }
    }
}

//public struct Score
//{
//    string name;
//    int score;
//}
