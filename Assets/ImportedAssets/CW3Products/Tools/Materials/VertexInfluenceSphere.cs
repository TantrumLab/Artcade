

using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif
using System.Collections;
using System.Collections.Generic;

[ExecuteInEditMode]

public class VertexInfluenceSphere : MonoBehaviour {
    #if UNITY_EDITOR
    public enum ParentedTo { World, Parent, Object };

	public int color;
	public float maxValue = 0.5f;
	public AnimationCurve curve = AnimationCurve.Linear (0f, 0f, 1f, 1f);
	public float radius = 4f;
    public ParentedTo parentedToSet = ParentedTo.Parent;
	public ParentedTo parentedTo;
	public bool autoRefresh = false;
	public VertexInfluenceManager vertexInfluenceManager;

	private Vector3 storedPosition;
	private float storedRadius;
	public bool externalRefresh = false;
	private float storedMaxValue;
	private ParentedTo storedParentedTo;
    private Transform storedPartent;

    private string gizmoTexture = "CaveDungeon/VertexInfluenceSphereEnvironment.png";

	void Awake () {
	    if( !Application.isPlaying )
	    {
	        AddLinkManager();
	    }
	}
	
	void Update () {

	    if( !Application.isPlaying )
	    {
	        //Autorefresh stuff
	        if( autoRefresh )
            {
	            if( radius != storedRadius || storedPosition != transform.position || externalRefresh || storedMaxValue != maxValue )
	            {
                    if (vertexInfluenceManager == null)
                    {
                        AddLinkManager();
                    }
                    vertexInfluenceManager.StartPaintingRaw();
	                externalRefresh = false;
	            }

	            storedRadius = radius;
	            storedPosition = transform.position;
	            storedMaxValue = maxValue;
	        }

	        //Stuff that is checked every frame no matter what
	        if( transform.parent == null )
	        {
	            parentedTo = ParentedTo.World;
	        }
	        else
	        {
	            if( parentedToSet == ParentedTo.Parent )
	            {
	                parentedTo = ParentedTo.Parent;
	            }
	            else
	            {
	                parentedTo = ParentedTo.World;
	            }
	        }

	        if( parentedTo != storedParentedTo )
	        {
	            SwitchParents();
	        }
	        else if( storedPartent != transform.parent )
	        {
	            SwitchParents();
	        }

	        if( transform.parent != null ) storedPartent = transform.parent;
	        storedParentedTo = parentedTo;
	    }
	}

    private void SwitchParents()
    {
        VertexInfluenceManager oldManager = vertexInfluenceManager;
        AddLinkManager();
        oldManager.DetectVertexInfluenceSpheres();
    }

    public static void CreateVTXSphere()
    {
        //Create the object
        GameObject vtxSphere = new GameObject();
        //Name the object
        vtxSphere.name = "VertexInfluenceSphere";
        //Add the relevant script
        vtxSphere.AddComponent<VertexInfluenceSphere>();
        VertexInfluenceSphere vInfluenceSphere = vtxSphere.GetComponent<VertexInfluenceSphere>();
        vInfluenceSphere.enabled = true;
        //Place the object properly
        if( Selection.activeTransform != null )
        {
            vtxSphere.transform.position = Selection.activeTransform.position;
        }
        else
        {
            Camera sceneCamera = SceneView.lastActiveSceneView.camera;
            Vector3 objectSpawnPoint = sceneCamera.transform.position + ( sceneCamera.transform.forward * 6 );
            vtxSphere.transform.position = objectSpawnPoint;
        }
        //Select the object
        GameObject[] newSelection = new GameObject[1];
        newSelection[0] = vtxSphere;
        Selection.objects = newSelection;
        //Make this creation undoable
        Undo.RegisterCreatedObjectUndo( vtxSphere, "Created Vertex Influence Sphere" );
    }

	//Determines what changes when a new color is selected
	public void SetNewColor(int colorIndex)
	{
		if (colorIndex == 0) {
			color = 0;
		    gizmoTexture = "CaveDungeon/VertexInfluenceSphereEnvironment.png";
		}
		if (colorIndex == 1) {
			color = 1;
            gizmoTexture = "CaveDungeon/VertexInfluenceSphereWetness.png";
		}
		if (colorIndex == 2) {
			color = 2;
		}
	}

	void AddLinkManager (){
		GameObject manager;
		Transform managerTransform;
		bool actuallyWorldSpace = false;

		//First, we need to get a manager.

		//If manager is parented to our paraent.
		if (parentedTo == ParentedTo.Parent && transform.parent != null) {
			managerTransform = transform.parent.Find("CDT_VertexManager_Local");
			if (managerTransform == null) {
				manager = new GameObject ();
				manager.name = "CDT_VertexManager_Local";
				manager.transform.parent = transform.parent;
				manager.AddComponent<VertexInfluenceManager> ();
			} else {
				manager = managerTransform.gameObject;
			}
			vertexInfluenceManager = manager.GetComponent<VertexInfluenceManager> ();
			vertexInfluenceManager.SetParent("Parent");
		} else {
			actuallyWorldSpace = true;
		}

		//If manager is parented to world.
		if (parentedTo == ParentedTo.World || actuallyWorldSpace) {
			manager = GameObject.Find("CDT_VertexManager_World");
			if (manager == null){
				manager = new GameObject();
				manager.name = "CDT_VertexManager_World";
				manager.AddComponent<VertexInfluenceManager>();
			}
			vertexInfluenceManager = manager.GetComponent<VertexInfluenceManager>();
			vertexInfluenceManager.SetParent("World");
		}

        //If we're auto-refreshing, lets set this new one to auto refresh as well.
	    autoRefresh = vertexInfluenceManager.areSpheresAutoRefreshing;

		//Next, let's update the manager so that it adds us.
		vertexInfluenceManager.DetectVertexInfluenceSpheres ();
	}

	//Drawing gizmos for influence spheres
	void OnDrawGizmos() {
		Gizmos.DrawIcon(transform.position, gizmoTexture, true);
	}
	void OnDrawGizmosSelected() {
		Gizmos.color = new Color (0.9f, 0.6f, 0.6f, 0.35f);
		Gizmos.DrawWireSphere(transform.position, radius);
    }

    #endif
}