// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "CW3/StandardBasic"
{
	Properties
	{
		[HideInInspector] __dirty( "", Int ) = 1
		_MaskClipValue( "Mask Clip Value", Float ) = 0.5
		_Metalic("Metalic", Range( 0 , 1)) = 0
		_Mask("Mask", 2D) = "white" {}
		_Color("Color", Color) = (0,0,0,0)
		_BumpMap("BumpMap", 2D) = "bump" {}
		_UseAlpha("UseAlpha", Range( 0 , 1)) = 1
		_MainTex("MainTex", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "Geometry+0" }
		Cull Back
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float4 _Color;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform sampler2D _Mask;
		uniform float4 _Mask_ST;
		uniform float _Metalic;
		uniform float _UseAlpha;
		uniform float _MaskClipValue = 0.5;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			o.Normal = UnpackNormal( tex2D( _BumpMap,uv_BumpMap) );
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float4 tex2DNode8 = tex2D( _MainTex,uv_MainTex);
			o.Albedo = ( _Color * tex2DNode8 ).xyz;
			float2 uv_Mask = i.uv_texcoord * _Mask_ST.xy + _Mask_ST.zw;
			float4 tex2DNode10 = tex2D( _Mask,uv_Mask);
			o.Metallic = ( tex2DNode10.g * _Metalic );
			o.Alpha = 1;
			clip( ( tex2DNode8.a + _UseAlpha ) - _MaskClipValue );
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=4001
1927;114;1426;773;662.4999;216.5002;1;True;True
Node;AmplifyShaderEditor.RangedFloatNode;4;-521,453.5;Float;Property;_Glossiness;Glossiness;3;0;0;1
Node;AmplifyShaderEditor.RangedFloatNode;5;-525,558.5;Float;Property;_Metalic;Metalic;3;0;0;1
Node;AmplifyShaderEditor.ColorNode;6;-443.6,-362.6;Float;Property;_Color;Color;5;0,0,0,0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7;-98.60004,-171.6;Float;COLOR;0.0;FLOAT4;0,0,0,0
Node;AmplifyShaderEditor.SamplerNode;8;-529.6,-141.6;Float;Property;_MainTex;MainTex;6;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;SAMPLER2D;;FLOAT2;0,0;FLOAT;1.0;FLOAT2;0,0;FLOAT2;0,0;FLOAT;1.0
Node;AmplifyShaderEditor.SamplerNode;10;-525.5994,238.4;Float;Property;_Mask;Mask;5;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;SAMPLER2D;;FLOAT2;0,0;FLOAT;1.0;FLOAT2;0,0;FLOAT2;0,0;FLOAT;1.0
Node;AmplifyShaderEditor.SamplerNode;9;-536.6,44.39999;Float;Property;_BumpMap;BumpMap;5;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;SAMPLER2D;;FLOAT2;0,0;FLOAT;1.0;FLOAT2;0,0;FLOAT2;0,0;FLOAT;1.0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;11;-111.2001,309.0002;Float;FLOAT;0.0;FLOAT;0.0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;12;-95.2001,438.0002;Float;FLOAT;0.0;FLOAT;0.0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;290.8999,-9.5;Float;True;2;Float;ASEMaterialInspector;Standard;CW3/StandardBasic;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;0;False;0;0;Custom;0.5;True;True;0;False;TransparentCutout;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;False;0;255;255;0;0;0;0;False;0;4;10;25;False;0.5;True;0;Zero;Zero;0;Zero;Zero;Add;Add;0;FLOAT3;0,0,0;FLOAT3;0,0,0;FLOAT3;0,0,0;FLOAT;0.0;FLOAT;0.0;FLOAT;0.0;FLOAT3;0,0,0;FLOAT3;0,0,0;FLOAT;0.0;FLOAT;0.0;OBJECT;0.0;FLOAT3;0,0,0;FLOAT3;0,0,0;OBJECT;0.0;FLOAT4;0,0,0,0;FLOAT3;0,0,0
Node;AmplifyShaderEditor.SimpleAddOpNode;14;105.5001,99.49979;Float;FLOAT;0.0;FLOAT;0.0
Node;AmplifyShaderEditor.RangedFloatNode;13;-173.4999,150.4998;Float;Property;_UseAlpha;UseAlpha;6;1;0;1
WireConnection;7;0;6;0
WireConnection;7;1;8;0
WireConnection;11;0;10;1
WireConnection;11;1;4;0
WireConnection;12;0;10;2
WireConnection;12;1;5;0
WireConnection;0;0;7;0
WireConnection;0;1;9;0
WireConnection;0;3;12;0
WireConnection;0;10;14;0
WireConnection;14;0;8;4
WireConnection;14;1;13;0
ASEEND*/
//CHKSM=4437BCCD7BD92E1BE4A7563CDC1565AFA94B08D9