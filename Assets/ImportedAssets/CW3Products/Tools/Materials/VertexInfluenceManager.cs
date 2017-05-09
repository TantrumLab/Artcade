

using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif
using System.Collections;
using System.Collections.Generic;

[ExecuteInEditMode]
[ImageEffectAllowedInSceneView]

public class VertexInfluenceManager : MonoBehaviour {

    #if UNITY_EDITOR

    public enum ParentedTo { World, Parent, Object };
	public bool startPainting = false;

	public List<VertexInfluenceSphere> vertexInfluenceSpheres = new List<VertexInfluenceSphere>();
	public List<MeshFilter> staticMeshFilters = new List<MeshFilter>();
    public List<MeshStorage> meshStorages = new List<MeshStorage>();
	private List<Vector3> staticMeshPositions = new List<Vector3>();
	private List<float> staticMeshBounds = new List<float>();
	private List<MeshFilter> paintableMeshFilters = new List<MeshFilter>();
	public ParentedTo parentedTo;

    public bool areSpheresAutoRefreshing = false;

    private bool fullExecute = false;

	void Awake () {
        gameObject.hideFlags = HideFlags.HideInHierarchy;
    }

	public void DeleteMeClean (){
		RevertOldMeshes ();
		DestroyImmediate (this.gameObject);
	}

	public void DetectVertexInfluenceSpheres(){
		//Clears the old list
		vertexInfluenceSpheres.Clear ();

		//Gets every sphere and checks if this is the manager. TODO: Should be for world and object only.
		VertexInfluenceSphere[] allSpheres = FindObjectsOfType(typeof(VertexInfluenceSphere)) as VertexInfluenceSphere[];
		foreach (VertexInfluenceSphere sphere in allSpheres) {
			if (sphere.vertexInfluenceManager == this){
				vertexInfluenceSpheres.Add (sphere);
			}
		}

		//If this isn't actually managing anything, get rid of it
		if (vertexInfluenceSpheres.Count == 0 && !fullExecute) {
			DeleteMeClean();
		}
	}

	public void RevertOldMeshes(){
        //Reverts all the meshed to what is stored
        for (int i = 0; i < staticMeshFilters.Count; i++){
			if (staticMeshFilters[i] != null){
			    if( staticMeshFilters[i].sharedMesh != null ){
			        if( staticMeshFilters[i].sharedMesh.name == "VPaintedMesh" )
			        {
			            staticMeshFilters[i].sharedMesh = meshStorages[i].originalMesh;
			        }
			    }
			}
		}
	}

	public void GetStaticMeshes(){
		//Clears the old lists
		staticMeshFilters.Clear ();
		meshStorages.Clear ();
		staticMeshPositions.Clear ();
		staticMeshBounds.Clear ();

        //Gets all mesh storages and gets their data
        MeshStorage[] allStorages = FindObjectsOfType(typeof(MeshStorage)) as MeshStorage[];
        foreach (MeshStorage meshStorage in allStorages)
        {
            if( !meshStorage.ignoreVertexInfluenceSpheres )
            {
                MeshFilter meshFilter = meshStorage.GetComponent<MeshFilter>();
                MeshRenderer meshRender = meshStorage.GetComponent<MeshRenderer>();
                staticMeshFilters.Add( meshFilter );
                meshStorages.Add( meshStorage );
                staticMeshPositions.Add( meshRender.bounds.center );
                Vector3 boundExtents = meshRender.bounds.extents;
                float maxOfBounds = Mathf.Max( boundExtents.x, boundExtents.y, boundExtents.z );
                staticMeshBounds.Add( maxOfBounds );
            }
        }
    }

	public void GetPaintableMeshes(){
		//Clears the old lists
		paintableMeshFilters.Clear ();

		//Get all the meshes that aren't too far away from any relevant vertex influence spheres.
		for (int i = 0; i < vertexInfluenceSpheres.Count; i++){
			for (int z = 0; z < staticMeshFilters.Count; z++){
				float distance = Vector3.Distance(vertexInfluenceSpheres[i].transform.position, staticMeshPositions[z]);
				if (vertexInfluenceSpheres[i].radius >= distance - staticMeshBounds[z]){
					if (paintableMeshFilters.Contains (staticMeshFilters[z]) == false){
						paintableMeshFilters.Add (staticMeshFilters[z]);
                        staticMeshFilters[z].sharedMesh = meshStorages[z].originalMesh;
                    }
				}
			}
		}
	}

	public void PaintMeshes(){
        //This makes the undo state right before we actually paint stuff.
        MeshFilter[] undoObjects = paintableMeshFilters.ToArray();
        Undo.RecordObjects(undoObjects, "Meshes Vertexes Painted");

        foreach (MeshFilter meshFilter in paintableMeshFilters) {
			if (meshFilter.sharedMesh != null){
				Mesh modifiedMesh;
				modifiedMesh = (Mesh)Instantiate (meshFilter.sharedMesh);
				modifiedMesh.name = "VPaintedMesh";

				Vector3[] vertices = modifiedMesh.vertices;
                Color[] colors = modifiedMesh.colors;
				Transform objectTransform = meshFilter.transform;

				//This sets the colors of this mesh to be the proper painted values
				for (int z = 0; z < vertexInfluenceSpheres.Count; z++){
					int i = 0;
					Vector3 vtxSpherePos = vertexInfluenceSpheres[z].transform.position;
					float vtxSphereRadius = vertexInfluenceSpheres[z].radius;
                    //Debug for broken meshes
				    if( vertices.Length == colors.Length )
				    {
				        while( i < vertices.Length )
				        {

				            //The maths for linking the Vertex Influence Sphere's fields to the actual painting process
				            Vector3 worldVertex = objectTransform.TransformPoint( vertices[i] );
				            float value = Vector3.Distance( worldVertex, vtxSpherePos ) / vtxSphereRadius;
				            value = Mathf.Clamp01( value );
				            value = Mathf.Abs( 1 - value );
				            if( value > 0f && value < 1f )
				            {
				                value = vertexInfluenceSpheres[z].curve.Evaluate( value );
				            }
				            value = Mathf.Clamp( value, 0, vertexInfluenceSpheres[z].maxValue );

				            //Changes the vertices depending on if it's supposed to be the red, green or blue channel
				            if( vertexInfluenceSpheres[z].color == 0 )
				            {
				                colors[i] = new Color( Mathf.Max( value, colors[i].r ), colors[i].g, colors[i].b, colors[i].a );
				            }
				            if( vertexInfluenceSpheres[z].color == 1 )
				            {
				                colors[i] = new Color( colors[i].r, Mathf.Max( value, colors[i].g ), colors[i].b, colors[i].a );
				            }
				            if( vertexInfluenceSpheres[z].color == 2 )
				            {
				                colors[i] = new Color( colors[i].r, colors[i].g, Mathf.Max( value, colors[i].b ), colors[i].a );
				            }
				            i++;
				        }
				    }
				    else
				    {
				        Transform debugParent = meshFilter.transform.parent;
				        if( debugParent != null )
				        {
                            Debug.LogAssertion( debugParent.name + "'s child does not have the same vertex color count as it's vertex count", meshFilter.sharedMesh );
				        }
				        else
				        {
                            Debug.LogAssertion( meshFilter.transform.name + "does not have the same vertex color count as it's vertex count", meshFilter.sharedMesh );
				        }
				    }
				}

				//Once we're done with everything, lets put the color into our new mesh and replace the old mesh
				modifiedMesh.colors = colors;
				
				if (meshFilter.sharedMesh.name == "VPaintedMesh"){
					DestroyImmediate (meshFilter.sharedMesh);
				}
				
				meshFilter.sharedMesh = modifiedMesh;
			}
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
	        fullExecute = true;
	        DetectVertexInfluenceSpheres();
	        RevertOldMeshes();
	        GetStaticMeshes();
	        GetPaintableMeshes();
	        PaintMeshes();
            if( vertexInfluenceSpheres.Count == 0)
            {
                DeleteMeClean();
            }
	        FixScalarMeshes();
	        MaterialSwapManager.UpdateMaterials();
	        fullExecute = false;
	    }
	}

    public static void RefreshAll()
    {
        VertexInfluenceManager[] allManagers = FindObjectsOfType( typeof( VertexInfluenceManager ) ) as VertexInfluenceManager[];
        foreach( VertexInfluenceManager manager in allManagers )
        {
            manager.startPainting = true;
            ForceUpdate();
        }
    }

    public static void ForceUpdate()
    {
        //Ghetto way to get the frame to update
        GameObject updater = new GameObject();
        DestroyImmediate( updater );
    }

	public void SetParent(string input){
		if (input == "World") {
			parentedTo = ParentedTo.World;
		}

		if (input == "Parent") {
			parentedTo = ParentedTo.Parent;
		}
	}

    public static void SetAutoRefresh(bool val)
    {
        VertexInfluenceSphere[] allSpheres = FindObjectsOfType(typeof(VertexInfluenceSphere)) as VertexInfluenceSphere[];
        foreach (VertexInfluenceSphere sphere in allSpheres)
        {
            sphere.autoRefresh = val;
            sphere.vertexInfluenceManager.areSpheresAutoRefreshing = val;
        }
    }

    void Update () {
	    if( !Application.isPlaying )
	    {
	        if( startPainting )
	        {
	            StartPaintingRaw();
	            startPainting = false;
	        }
	    }
	}
    #endif
}

