// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "CW3/StandardRocks"
{
	Properties
	{
		[HideInInspector] __dirty( "", Int ) = 1
		_OverlayIntensity("OverlayIntensity", Range( 0 , 1)) = 0
		_Glossiness("Glossiness", Range( 0 , 1)) = 0
		_DetailNormalStrength("DetailNormalStrength", Range( 0 , 1)) = 0
		_Metalic("Metalic", Range( 0 , 1)) = 0
		_Mask("Mask", 2D) = "white" {}
		_BumpMap("BumpMap", 2D) = "bump" {}
		_DetailNormal("DetailNormal", 2D) = "bump" {}
		_Color("Color", Color) = (0,0,0,0)
		_MainTex("MainTex", 2D) = "white" {}
		_DetailAlbedo("DetailAlbedo", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Back
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform sampler2D _DetailNormal;
		uniform float4 _DetailNormal_ST;
		uniform float _DetailNormalStrength;
		uniform float4 _Color;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float _OverlayIntensity;
		uniform sampler2D _DetailAlbedo;
		uniform float4 _DetailAlbedo_ST;
		uniform sampler2D _Mask;
		uniform float4 _Mask_ST;
		uniform float _Metalic;
		uniform float _Glossiness;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float2 uv_DetailNormal = i.uv_texcoord * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			o.Normal = BlendNormals( UnpackNormal( tex2D( _BumpMap,uv_BumpMap) ) , lerp( float4( UnpackNormal( tex2D( _DetailNormal,uv_DetailNormal) ) , 0.0 ) , float4(0.01114178,0,1,0) , _DetailNormalStrength ).rgb );
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 uv_DetailAlbedo = i.uv_texcoord * _DetailAlbedo_ST.xy + _DetailAlbedo_ST.zw;
			o.Albedo = ( _Color * ( saturate( ( tex2D( _DetailAlbedo,uv_DetailAlbedo) > 0.5 ? ( 1.0 - ( 1.0 - 2.0 * ( tex2D( _DetailAlbedo,uv_DetailAlbedo) - 0.5 ) ) * ( 1.0 - lerp( float4(0.5019608,0.5019608,0.5019608,0) , tex2D( _MainTex,uv_MainTex) , _OverlayIntensity ) ) ) : ( 2.0 * tex2D( _DetailAlbedo,uv_DetailAlbedo) * lerp( float4(0.5019608,0.5019608,0.5019608,0) , tex2D( _MainTex,uv_MainTex) , _OverlayIntensity ) ) ) )) ).rgb;
			float2 uv_Mask = i.uv_texcoord * _Mask_ST.xy + _Mask_ST.zw;
			float4 tex2DNode10 = tex2D( _Mask,uv_Mask);
			o.Metallic = ( tex2DNode10.g * _Metalic );
			o.Smoothness = ( tex2DNode10.r * _Glossiness );
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=4001
1927;114;1426;773;1961.481;507.2757;2.238787;True;True
Node;AmplifyShaderEditor.BlendNormalsNode;15;-335.9995,139.9001;Float;FLOAT3;0,0,0;FLOAT3;0,0,0
Node;AmplifyShaderEditor.SamplerNode;9;-858.0994,54.00002;Float;Property;_BumpMap;BumpMap;5;None;True;0;False;bump;Auto;True;Object;-1;Auto;Texture2D;SAMPLER2D;;FLOAT2;0,0;FLOAT;1.0;FLOAT2;0,0;FLOAT2;0,0;FLOAT;1.0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;11;-100.2653,720.7659;Float;FLOAT;0.0;FLOAT;0.0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;12;-84.26533,849.7658;Float;FLOAT;0.0;FLOAT;0.0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;7;-16.80012,-227.9;Float;COLOR;0.0;COLOR;0,0,0,0
Node;AmplifyShaderEditor.SamplerNode;14;-665.3986,-671.3994;Float;Property;_DetailAlbedo;DetailAlbedo;6;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;SAMPLER2D;;FLOAT2;0,0;FLOAT;1.0;FLOAT2;0,0;FLOAT2;0,0;FLOAT;1.0
Node;AmplifyShaderEditor.LerpOp;19;-651.8375,-245.3407;Float;COLOR;0.0;FLOAT4;0,0,0,0;FLOAT;0.0
Node;AmplifyShaderEditor.SamplerNode;8;-1082.1,-307;Float;Property;_MainTex;MainTex;6;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;SAMPLER2D;;FLOAT2;0,0;FLOAT;1.0;FLOAT2;0,0;FLOAT2;0,0;FLOAT;1.0
Node;AmplifyShaderEditor.RangedFloatNode;17;-1231.615,-102.8322;Float;Property;_OverlayIntensity;OverlayIntensity;3;0;0;1
Node;AmplifyShaderEditor.ColorNode;20;-1002.837,-518.3403;Float;Constant;_Color0;Color 0;10;0.5019608,0.5019608,0.5019608,0
Node;AmplifyShaderEditor.BlendOpsNode;13;-335.899,-265.1002;Float;Overlay;True;COLOR;0,0,0,0;COLOR;0,0,0,0
Node;AmplifyShaderEditor.ColorNode;6;-272.9001,-520.5992;Float;Property;_Color;Color;5;0,0,0,0
Node;AmplifyShaderEditor.RangedFloatNode;5;-533.5647,980.6653;Float;Property;_Metalic;Metalic;3;0;0;1
Node;AmplifyShaderEditor.SamplerNode;10;-534.1641,660.5657;Float;Property;_Mask;Mask;5;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;SAMPLER2D;;FLOAT2;0,0;FLOAT;1.0;FLOAT2;0,0;FLOAT2;0,0;FLOAT;1.0
Node;AmplifyShaderEditor.RangedFloatNode;4;-529.5647,873.5499;Float;Property;_Glossiness;Glossiness;3;0;0;1
Node;AmplifyShaderEditor.SamplerNode;16;-844.2996,224.2001;Float;Property;_DetailNormal;DetailNormal;5;None;True;0;False;bump;Auto;True;Object;-1;Auto;Texture2D;SAMPLER2D;;FLOAT2;0,0;FLOAT;1.0;FLOAT2;0,0;FLOAT2;0,0;FLOAT;1.0
Node;AmplifyShaderEditor.LerpOp;21;-352.0383,309.8596;Float;FLOAT3;0,0,0;COLOR;0.0;FLOAT;0.0
Node;AmplifyShaderEditor.ColorNode;22;-854.0383,509.8596;Float;Constant;_Color1;Color 1;10;0.01114178,0,1,0
Node;AmplifyShaderEditor.RangedFloatNode;18;-841.9135,390.5388;Float;Property;_DetailNormalStrength;DetailNormalStrength;3;0;0;1
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;274.7351,90.09632;Float;True;2;Float;ASEMaterialInspector;Standard;CW3/StandardRocks;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;0;False;0;0;Opaque;0.5;True;True;0;False;Opaque;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;False;0;255;255;0;0;0;0;False;0;4;10;25;False;0.5;True;0;Zero;Zero;0;Zero;Zero;Add;Add;0;FLOAT3;0,0,0;FLOAT3;0,0,0;FLOAT3;0,0,0;FLOAT;0.0;FLOAT;0.0;FLOAT;0.0;FLOAT3;0,0,0;FLOAT3;0,0,0;FLOAT;0.0;FLOAT;0.0;OBJECT;0.0;FLOAT3;0,0,0;FLOAT3;0,0,0;OBJECT;0.0;FLOAT4;0,0,0,0;FLOAT3;0,0,0
WireConnection;15;0;9;0
WireConnection;15;1;21;0
WireConnection;11;0;10;1
WireConnection;11;1;4;0
WireConnection;12;0;10;2
WireConnection;12;1;5;0
WireConnection;7;0;6;0
WireConnection;7;1;13;0
WireConnection;19;0;20;0
WireConnection;19;1;8;0
WireConnection;19;2;17;0
WireConnection;13;0;19;0
WireConnection;13;1;14;0
WireConnection;21;0;16;0
WireConnection;21;1;22;0
WireConnection;21;2;18;0
WireConnection;0;0;7;0
WireConnection;0;1;15;0
WireConnection;0;3;12;0
WireConnection;0;4;11;0
ASEEND*/
//CHKSM=A400CB6F09708D16023DDCC8FB5B75F2F3E1ABAE