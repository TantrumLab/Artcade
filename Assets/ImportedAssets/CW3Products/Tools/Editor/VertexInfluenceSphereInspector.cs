using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;

[CanEditMultipleObjects]
[CustomEditor(typeof(VertexInfluenceSphere))]
public class VertexInfluenceSphereInspector : Editor {

	public enum ColorType { Environmental, Wetness};

    private ColorType colorType = ColorType.Environmental;
    private ColorType storedColorType = ColorType.Wetness;

    public enum ParentedTo { Parent, World };

    private ParentedTo parentedTo = ParentedTo.Parent;
    private ParentedTo parentedToStored = ParentedTo.World;

	// Add menu item for creating a VertexInfluenceSphere
	[MenuItem("GameObject/VertexInfluenceSphere")]
	public static void CreateVTXSphere()
	{
		VertexInfluenceSphere.CreateVTXSphere();
	}

	public override void OnInspectorGUI()
	{
		//Overwrite the vanilla inspector
		VertexInfluenceSphere inspector = (VertexInfluenceSphere)target;

        //Fixes color enum from reseting
	    if( inspector.color == 0 )
	    {
	        colorType = ColorType.Environmental;
	    }
	    else
	    {
	        colorType = ColorType.Wetness;
	    }

        //Fixes ParentedTp enum from reseting
        if( inspector.parentedToSet == VertexInfluenceSphere.ParentedTo.World )
        {
            parentedTo = ParentedTo.World;
        }
        else
        {
            parentedTo = ParentedTo.Parent;
        }

		//Starts a listener for if anything is changed in the GUI
		EditorGUI.BeginChangeCheck ();

		//Any changes that happen to any of these fields is undoable
		Undo.RecordObject (inspector, "Vertex Influence Sphere modified");

		//The new fields that overwrote the old ones
		colorType = (ColorType)EditorGUILayout.EnumPopup ("Type", colorType);
		inspector.radius = EditorGUILayout.FloatField ("Radius", inspector.radius);
		inspector.maxValue = EditorGUILayout.Slider ("Max Value", inspector.maxValue, 0, 1);
		inspector.curve = EditorGUILayout.CurveField ("Falloff Curve", inspector.curve);
        parentedTo = (ParentedTo)EditorGUILayout.EnumPopup( "Parented To", parentedTo );

        //Help box stuff
	    string sphereCount = inspector.vertexInfluenceManager.vertexInfluenceSpheres.Count.ToString();
	    string parentString;
	    if( inspector.parentedTo == VertexInfluenceSphere.ParentedTo.World )
	    {
	        parentString = "the world";
	    }
	    else
	    {
	        parentString = inspector.transform.parent.name;
	    }
	    string meshCount = inspector.vertexInfluenceManager.staticMeshFilters.Count.ToString();
		EditorGUILayout.HelpBox ("There are currently " + sphereCount + " influence spheres parented to " + parentString +", which contains " + meshCount +" meshes", MessageType.Info);

		//If the GUI was changed, do this
		if (EditorGUI.EndChangeCheck ()) {
			inspector.externalRefresh = true;
			EditorUtility.SetDirty (inspector);
		}

		//Changes elements of the inspector and VIS based on the color type.
		if (colorType != storedColorType) {
			int colorIndex = (int)(colorType);
			inspector.SetNewColor (colorIndex);
			storedColorType = colorType;
		}

        //Changes VTX spheres based on a change in parented to
        if( parentedTo != parentedToStored )
        {
            if( parentedTo == ParentedTo.World )
            {
                inspector.parentedToSet = VertexInfluenceSphere.ParentedTo.World;
            }
            else
            {
                inspector.parentedToSet = VertexInfluenceSphere.ParentedTo.Parent;
            }
            parentedToStored = parentedTo;
            VertexInfluenceManager.ForceUpdate();
        }
	}

}
