

using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif
using System.Collections.Generic;

[ExecuteInEditMode]

public class MaterialSwapManager : MonoBehaviour {

    #if UNITY_EDITOR

    public bool startPainting = false;

    public float materialBlendIndex = 0.0f;
    public float isSecondColor = 0.0f;

    private List<Shader> relevantShaders = new List<Shader>();

	public List<MeshFilter> meshFilters = new List<MeshFilter>();
    public List<MeshStorage> meshStorages = new List<MeshStorage>();

    public bool autoRefresh = false;
    private float updateTick = 0.0f;
    private MeshStorage[] allStoragesStored;


    // Use this for initialization
    void Awake () {
	    if( !Application.isPlaying)
	    {
	        gameObject.hideFlags = HideFlags.HideInHierarchy;
            //Get all the shaders we want this to be relevant for.
            relevantShaders.Add(Shader.Find("CW3/EnvironmentBlendDetailTesselation"));
            relevantShaders.Add(Shader.Find("CW3/EnvironmentBlendFreeformRocks"));
            relevantShaders.Add(Shader.Find("CW3/EnvironmentBlendFreeformRocksTesselation"));
            relevantShaders.Add(Shader.Find("CW3/EnvironmentBlendStandard"));
            relevantShaders.Add(Shader.Find("CW3/EnvironmentBlendTesselation"));
	    }
	}

    //Reverts all the meshed to what is stored
    public void RevertOldMeshes()
    {
        for (int i = 0; i < meshFilters.Count; i++)
        {
            if (meshFilters[i] != null)
            {
                if (meshFilters[i].sharedMesh != null)
                {
                    if (meshFilters[i].sharedMesh.name == "VPaintedMesh")
                    {
                        meshFilters[i].sharedMesh = meshStorages[i].originalMesh;
                    }
                }
            }
        }
    }

    public void GetMeshes() {
		//Clears the old lists
		meshFilters.Clear ();
		meshStorages.Clear ();

        //Gets all mesh storages and adds their data to our lists
        MeshStorage[] allStorages = FindObjectsOfType(typeof(MeshStorage)) as MeshStorage[];
        foreach (MeshStorage meshStorage in allStorages)
        {
            if( !meshStorage.ignoreVertexInfluenceSpheres )
            {
                MeshFilter meshFilter = meshStorage.GetComponent<MeshFilter>();
                if (meshFilter.sharedMesh == null) meshFilter.sharedMesh = meshStorage.originalMesh;
                meshFilters.Add(meshFilter);
                meshStorages.Add(meshStorage);
            }
        }

    }

	public void PaintMeshes(){
        foreach (MeshFilter meshFilter in meshFilters)
		{
		    PaintSingleMesh( meshFilter );
		}
	}

    public void PaintSingleMesh(MeshFilter meshFilter)
    {
        if (meshFilter.sharedMesh != null)
        {
            Mesh modifiedMesh;
            modifiedMesh = (Mesh)Instantiate(meshFilter.sharedMesh);
            modifiedMesh.name = "VPaintedMesh";

            Vector3[] vertices = modifiedMesh.vertices;
            Color[] colors = modifiedMesh.colors;

            //Defines what the value should be
            float value;
            value = materialBlendIndex / 4 + (isSecondColor * 0.1f) + 0.01f;

            //This sets the colors of this mesh to be the proper painted values
            int i = 0;
            while (i < vertices.Length)
            {
                colors[i] = new Color(colors[i].r, colors[i].g, colors[i].b, value);
                i++;
            }

            //Once we're done with everything, lets put the color into our new mesh and replace the old mesh
            modifiedMesh.colors = colors;

            if (meshFilter.sharedMesh.name == "VPaintedMesh")
            {
                DestroyImmediate(meshFilter.sharedMesh);
            }

            meshFilter.sharedMesh = modifiedMesh;
        }
    }

    private void FixScalarMeshes()
    {
        FreeformRockScalar[] scalars = FindObjectsOfType( typeof( FreeformRockScalar ) ) as FreeformRockScalar[];
        foreach( FreeformRockScalar scalar in scalars )
        {
            scalar.UpdateScalar();
        }
    }
	
	public void StartPaintingRaw()
	{
	    if( !Application.isPlaying )
	    {
	        //Runs all the functions to paint everything from scratch
            GetMeshes();
	        PaintMeshes();
	        FixScalarMeshes();
	    }
	}

    public void RevertMeshesRaw()
    {
        if (!Application.isPlaying)
        {
            //Reverts all the meshed to what is stored
            GetMeshes();
            RevertOldMeshes();
        }
    }

    public static void UpdateMaterials( int tintIndex, int materialIndex )
    {
        //First, we need to get a manager.
        GameObject manager = GameObject.Find( "CDT_MaterialSwapManager" );
        if( manager == null )
        {
            manager = new GameObject();
            manager.name = "CDT_MaterialSwapManager";
            manager.AddComponent<MaterialSwapManager>();
        }
        MaterialSwapManager materialSwapManager = manager.GetComponent<MaterialSwapManager>();
        materialSwapManager.isSecondColor = tintIndex;
        materialSwapManager.materialBlendIndex = materialIndex;
        //Then paint.
        materialSwapManager.StartPaintingRaw();
    }

    public static void RevertMaterials()
    {
        MaterialSwapManager materialSwapManager = MaterialSwapManager.GetManager();
        materialSwapManager.RevertMeshesRaw();
    }

    public static void UpdateMaterials()
    {
        MaterialSwapManager materialSwapManager = MaterialSwapManager.GetManager();
        materialSwapManager.StartPaintingRaw();
    }

    public static void SetAutoRefresh(bool val)
    {
        MaterialSwapManager materialSwapManager = MaterialSwapManager.GetManager();
        materialSwapManager.autoRefresh = val;
    }

    public static MaterialSwapManager GetManager()
    {
        GameObject manager = GameObject.Find("CDT_MaterialSwapManager");
        if (manager == null)
        {
            manager = new GameObject();
            manager.name = "CDT_MaterialSwapManager";
            manager.AddComponent<MaterialSwapManager>();
        }
        return (manager.GetComponent<MaterialSwapManager>());
    }


    private void Update()
    {
        if( !Application.isPlaying )
        {
            //Autorefresh stuff
            if( autoRefresh )
            {
                MeshStorage[] allStorages = FindObjectsOfType(typeof(MeshStorage)) as MeshStorage[];
                if( allStorages != allStoragesStored )
                {
                    StartPaintingRaw();
                    allStoragesStored = allStorages;
                }
            }
        }
    }

#endif
}

