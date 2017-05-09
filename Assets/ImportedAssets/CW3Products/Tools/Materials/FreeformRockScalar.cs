using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif
using System.Collections;
using System.Collections.Generic;

[ExecuteInEditMode]

[RequireComponent(typeof(MeshFilter))]
[RequireComponent(typeof(MeshRenderer))]
[RequireComponent(typeof(MeshStorage))]
public class FreeformRockScalar : MonoBehaviour
{

    #if UNITY_EDITOR

    [SerializeField]
    private float scalePercentage = 100f;
    private float scalePercentageStored = 100f;

    private Mesh storedMesh;
    private Vector3 storedScale;
    private MeshFilter meshFilter;
    private MeshStorage meshStorage;

    void Awake ()
	{
	    if( !Application.isPlaying)
	    {
            Initialize();
        }
	}

    void Initialize()
    {
        meshFilter = GetComponent<MeshFilter>();
        meshStorage = GetComponent<MeshStorage>();
    }
	
	void Update () {
	    if( !Application.isPlaying )
	    {
            //Check for nulls
	        if( meshFilter == null || meshStorage == null)
	        {
	            Initialize();
	        }
	        if( meshFilter.sharedMesh == null)
	        {
	            meshFilter.sharedMesh = meshStorage.originalMesh;
	        }
            //Check for changes that would require the rock to be rescaled
            if( meshFilter.sharedMesh != storedMesh )
            {
                UpdateScalar();
            }
            if( transform.localScale != storedScale )
            {
                UpdateScalar();
            }
	        if( scalePercentageStored != scalePercentage )
	        {
                UpdateScalar();
	        }
	    }
	}

    public void UpdateScalar()
    {

        if( !Application.isPlaying && meshFilter != null)
        {
            Mesh modifiedMesh = (Mesh)Instantiate( meshFilter.sharedMesh );
            modifiedMesh.name = "VPaintedMesh";

            Vector3[] vertices = modifiedMesh.vertices;
            Color[] colors = modifiedMesh.colors;

            //Math for the scale to alpha conversion
            float value = transform.localScale.y / (100 * (scalePercentage / 100));
            value = Mathf.Clamp01( value );

            //This sets the colors of this mesh to be the proper painted values
            int i = 0;
            while( i < vertices.Length )
            {
                colors[i] = new Color( colors[i].r, value, colors[i].b, colors[i].a );
                i++;
            }

            //Once we're done with everything, lets put the color into our new mesh and replace the old mesh
            modifiedMesh.colors = colors;

            if( meshFilter.sharedMesh.name == "VPaintedMesh" )
            {
                DestroyImmediate( meshFilter.sharedMesh );
            }

            meshFilter.sharedMesh = modifiedMesh;

            storedMesh = meshFilter.sharedMesh;
            storedScale = transform.localScale;
            scalePercentageStored = scalePercentage;
        }
    }

    #endif
}
