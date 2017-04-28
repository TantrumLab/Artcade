

using UnityEngine;

[ExecuteInEditMode]
[RequireComponent(typeof(MeshFilter))]
[RequireComponent(typeof(MeshRenderer))]

public class MeshStorage : MonoBehaviour
{
    //This is the version of this script for the simplified version that deletes itself
#if UNITY_EDITOR
    public Mesh originalMesh;
    public bool ignoreVertexInfluenceSpheres = false;

    void Awake()
    {
        if (!Application.isPlaying)
        {
            if (!transform.name.Contains("Fluids_"))
            {
                MeshFilter meshFilter = GetComponent<MeshFilter>();
                meshFilter.sharedMesh = originalMesh;
                FreeformRockScalar rockscalar = GetComponent<FreeformRockScalar>();
                if (rockscalar != null)
                {
                    DestroyImmediate(rockscalar);
                }
                DestroyImmediate(this);
            }
        }
    }

#endif
}


