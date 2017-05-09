#if UNITY_EDITOR
using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;

[ExecuteInEditMode]

public class CaveDungeonFunctions : EditorWindow
{

    private bool createVTXSphere;
    private int materialTintType;
    private int materialBlendType;

    private bool showEditorStored;

    private bool showRealStored;

    private bool autoRefresh;
    private bool autoRefreshStored;
    private bool autoSwap;
    private bool autoSwapStored;
    private int framecount;


    [MenuItem("Window/CW3/CaveDungeonToolkit")]
    public static void ShowWindow()
    {
        //Show existing window instance. If one doesn't exist, make one.
        EditorWindow.GetWindow(typeof(CaveDungeonFunctions));
    }

    void OnGUI()
    {
        //All the buttons and the functions they correspond to...
        string tooltip = ("Vertex Influence Spheres allow for environment blending.");
        GUILayout.Label(new GUIContent("Vertex Influence Spheres", tooltip), EditorStyles.boldLabel);
        GUILayout.BeginHorizontal();
        tooltip =
            "This creates a vertex influence sphere. If you parent this to another object, it will only work on that object's children. This can be used to help performance. Otherwise it will apply to every paintable object in the scene";
        if (GUILayout.Button(new GUIContent("Create Sphere", tooltip)))
        {
            VertexInfluenceSphere.CreateVTXSphere();
            VertexInfluenceManager.SetAutoRefresh(autoRefresh);
        }
        tooltip = "This will paint the vertex colors on all the spheres in the scene. This will force a refresh no matter what, including if there are no spheres";
        if (GUILayout.Button(new GUIContent("Paint Spheres", tooltip)))
        {
            VertexInfluenceManager.RefreshAll();
            VertexInfluenceManager.SetAutoRefresh(autoRefresh);
        }
        GUILayout.EndHorizontal();
        tooltip =
            "Automatically paints whenever one of the spheres is modified. Note that this doesn't update in all cases, unlike the 'Paint Spheres' button. Also note this can get slow. To optimize, consider parenting influence spheres under groups so they don't have to check every mesh in the scene.";
        autoRefresh = EditorGUILayout.Toggle(new GUIContent("Auto-Paint", tooltip), autoRefresh);
        if (autoRefresh != autoRefreshStored)
        {
            VertexInfluenceManager.SetAutoRefresh(autoRefresh);
        }
        autoRefreshStored = autoRefresh;
        GUILayout.Label("Material Swap", EditorStyles.boldLabel);
        string[] matTintTypeStrings = new string[] { "Standard", "Sandstone" };
        materialTintType = GUILayout.SelectionGrid(materialTintType, matTintTypeStrings, 2);
        string[] matBlendTypeStrings = new string[] { "Snow", "Overgrowth", "Sand" };
        materialBlendType = GUILayout.SelectionGrid(materialBlendType, matBlendTypeStrings, 3);
        tooltip = "Changes all relevant materials in the scene to use the materials specified above.";
        if (GUILayout.Button(new GUIContent("Swap Materials", tooltip)))
        {
            MaterialSwapManager.UpdateMaterials(materialTintType, materialBlendType);
        }
        tooltip = "Reverts all the materials to the default (standard + snow)";
        if (GUILayout.Button(new GUIContent("Revert Materials", tooltip)))
        {
            MaterialSwapManager.RevertMaterials();
        }
        tooltip = "Checking this will automatically update new objects to be the material type you specified. Note this could get slow on larger scenes, and if so it is reccoemended you leave this off and manually swap materials from time to time";
        autoSwap = EditorGUILayout.Toggle(new GUIContent("Auto-Swap", tooltip), autoSwap);
        if (autoSwap != autoSwapStored)
        {
            MaterialSwapManager.SetAutoRefresh(autoSwap);
        }
        autoSwapStored = autoSwap;
        EditorGUILayout.HelpBox("Note: Every button and attribute has a rollover tooltip", MessageType.Info);
    }
}

#endif