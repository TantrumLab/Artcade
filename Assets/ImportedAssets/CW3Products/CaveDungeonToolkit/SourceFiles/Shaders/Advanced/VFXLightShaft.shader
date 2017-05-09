// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-7297-OUT,alpha-2467-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31428,y:32613,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Multiply,id:7297,x:31682,y:32500,varname:node_7297,prsc:2|A-9227-RGB,B-7241-RGB;n:type:ShaderForge.SFN_Multiply,id:2883,x:31660,y:32805,varname:node_2883,prsc:2|A-7241-A,B-9227-A;n:type:ShaderForge.SFN_Tex2d,id:9227,x:31364,y:32358,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_9227,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-814-OUT;n:type:ShaderForge.SFN_Fresnel,id:1252,x:31468,y:33067,varname:node_1252,prsc:2|EXP-9625-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9625,x:31297,y:33181,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_9625,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:2467,x:32010,y:32886,varname:node_2467,prsc:2|A-2883-OUT,B-9076-OUT,C-4854-OUT,D-9225-OUT,E-1457-OUT;n:type:ShaderForge.SFN_OneMinus,id:9076,x:31640,y:33045,varname:node_9076,prsc:2|IN-1252-OUT;n:type:ShaderForge.SFN_DepthBlend,id:4854,x:31987,y:33159,varname:node_4854,prsc:2|DIST-2312-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2312,x:31653,y:33253,ptovrint:False,ptlb:DepthBlend,ptin:_DepthBlend,varname:_Fresnel_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_TexCoord,id:43,x:30679,y:32259,varname:node_43,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:63,x:30916,y:32238,varname:node_63,prsc:2|A-43-U,B-4763-OUT;n:type:ShaderForge.SFN_Time,id:8979,x:30510,y:32087,varname:node_8979,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4763,x:30766,y:32113,varname:node_4763,prsc:2|A-6871-OUT,B-8979-T;n:type:ShaderForge.SFN_ValueProperty,id:6871,x:30495,y:31931,ptovrint:False,ptlb:ScrollSpeed,ptin:_ScrollSpeed,varname:node_6871,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:814,x:31164,y:32297,varname:node_814,prsc:2|A-63-OUT,B-43-V;n:type:ShaderForge.SFN_Depth,id:2383,x:31690,y:33368,varname:node_2383,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4347,x:31866,y:33384,varname:node_4347,prsc:2|A-2383-OUT,B-8404-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8404,x:31712,y:33535,ptovrint:False,ptlb:CameraDistance,ptin:_CameraDistance,varname:node_8404,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Clamp01,id:9225,x:32029,y:33384,varname:node_9225,prsc:2|IN-4347-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1457,x:31712,y:33689,ptovrint:False,ptlb:AlphaBoost,ptin:_AlphaBoost,varname:node_1457,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:7241-9227-9625-2312-6871-8404-1457;pass:END;sub:END;*/

Shader "CW3/VFXLightShaft" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _Fresnel ("Fresnel", Float ) = 0
        _DepthBlend ("DepthBlend", Float ) = 0
        _ScrollSpeed ("ScrollSpeed", Float ) = 0
        _CameraDistance ("CameraDistance", Float ) = 2
        _AlphaBoost ("AlphaBoost", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Fresnel;
            uniform float _DepthBlend;
            uniform float _ScrollSpeed;
            uniform float _CameraDistance;
            uniform float _AlphaBoost;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 node_8979 = _Time + _TimeEditor;
                float2 node_814 = float2((i.uv0.r+(_ScrollSpeed*node_8979.g)),i.uv0.g);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_814, _MainTex));
                float3 emissive = (_MainTex_var.rgb*_Color.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,((_Color.a*_MainTex_var.a)*(1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel))*saturate((sceneZ-partZ)/_DepthBlend)*saturate((partZ*_CameraDistance))*_AlphaBoost));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
