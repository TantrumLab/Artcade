

using UnityEngine;

[ExecuteInEditMode]
[RequireComponent(typeof(MeshFilter))]
[RequireComponent(typeof(MeshRenderer))]

public class MeshStorage : MonoBehaviour
{
    
    #if UNITY_EDITOR
    public Mesh originalMesh;
    public bool ignoreVertexInfluenceSpheres = false;

    void Awake()
    {
        if( !Application.isPlaying )
        {
            if (originalMesh == null)
            {
                MeshFilter meshFilter = GetComponent<MeshFilter>();
                if (meshFilter.sharedMesh.name != "VPaintedMesh")
                {
                    originalMesh = meshFilter.sharedMesh;
                }
            }
        }
    }

    #endif
}


