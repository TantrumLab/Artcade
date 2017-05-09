// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33812,y:32613,varname:node_4013,prsc:2|emission-5549-OUT;n:type:ShaderForge.SFN_Tex2d,id:4035,x:32160,y:32621,cmnt:Circle ,varname:node_4035,prsc:2,ntxv:0,isnm:False|UVIN-8322-UVOUT,TEX-2928-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2928,x:31493,y:32846,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_2928,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6778,x:32187,y:32783,cmnt:Distortion,varname:_node_4035_copy,prsc:2,ntxv:0,isnm:False|UVIN-9950-OUT,TEX-2928-TEX;n:type:ShaderForge.SFN_Tex2d,id:9762,x:32677,y:32999,cmnt:Final Out,varname:_node_4035_copy_copy,prsc:2,ntxv:0,isnm:False|UVIN-4079-OUT,TEX-2928-TEX;n:type:ShaderForge.SFN_TexCoord,id:8322,x:31229,y:32425,varname:node_8322,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:9950,x:31740,y:32323,varname:node_9950,prsc:2|A-2685-OUT,B-8818-OUT;n:type:ShaderForge.SFN_Add,id:5501,x:31740,y:32140,varname:node_5501,prsc:2|A-9766-OUT,B-8818-OUT;n:type:ShaderForge.SFN_Vector4Property,id:148,x:31107,y:32022,ptovrint:False,ptlb:Speeds,ptin:_Speeds,varname:node_148,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Time,id:7149,x:31113,y:32329,varname:node_7149,prsc:2;n:type:ShaderForge.SFN_Append,id:8631,x:31334,y:31965,varname:node_8631,prsc:2|A-148-X,B-148-Y;n:type:ShaderForge.SFN_Append,id:8791,x:31334,y:32120,varname:node_8791,prsc:2|A-148-Z,B-148-W;n:type:ShaderForge.SFN_Multiply,id:9766,x:31544,y:31975,varname:node_9766,prsc:2|A-8631-OUT,B-7149-T;n:type:ShaderForge.SFN_Multiply,id:2685,x:31544,y:32130,varname:node_2685,prsc:2|A-8791-OUT,B-7149-T;n:type:ShaderForge.SFN_Add,id:4079,x:32443,y:32187,varname:node_4079,prsc:2|A-5501-OUT,B-406-OUT;n:type:ShaderForge.SFN_RemapRange,id:406,x:32258,y:32236,varname:node_406,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1929-OUT;n:type:ShaderForge.SFN_Multiply,id:7423,x:32912,y:32799,varname:node_7423,prsc:2|A-9762-R,B-4035-G;n:type:ShaderForge.SFN_Color,id:7010,x:33005,y:32564,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7010,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1929,x:32383,y:32814,varname:node_1929,prsc:2|A-6778-B,B-9595-OUT;n:type:ShaderForge.SFN_Slider,id:9595,x:32063,y:33037,ptovrint:False,ptlb:DistortionIntensity,ptin:_DistortionIntensity,varname:node_9595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_DepthBlend,id:5248,x:33243,y:32980,varname:node_5248,prsc:2|DIST-2265-OUT;n:type:ShaderForge.SFN_Slider,id:2265,x:32863,y:33081,ptovrint:False,ptlb:GroundBlend,ptin:_GroundBlend,varname:node_2265,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:5549,x:33451,y:32760,varname:node_5549,prsc:2|A-7423-OUT,B-5248-OUT,C-7010-A,D-7010-RGB,E-569-OUT;n:type:ShaderForge.SFN_Multiply,id:8818,x:31458,y:32551,varname:node_8818,prsc:2|A-8322-UVOUT,B-5215-OUT,C-5815-OUT;n:type:ShaderForge.SFN_ObjectScale,id:8214,x:31089,y:32684,varname:node_8214,prsc:2,rcp:False;n:type:ShaderForge.SFN_ValueProperty,id:5815,x:31230,y:32596,ptovrint:False,ptlb:UVScale,ptin:_UVScale,varname:node_5815,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:5215,x:31291,y:32665,varname:node_5215,prsc:2|A-8214-X,B-8214-Z;n:type:ShaderForge.SFN_Fresnel,id:3700,x:33166,y:33188,varname:node_3700,prsc:2|EXP-4665-OUT;n:type:ShaderForge.SFN_Slider,id:4665,x:32838,y:33215,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_4665,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_OneMinus,id:569,x:33349,y:33188,varname:node_569,prsc:2|IN-3700-OUT;proporder:2928-148-7010-9595-2265-5815-4665;pass:END;sub:END;*/

Shader "CW3/VFXDistortParticle" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Speeds ("Speeds", Vector) = (0,0,0,0)
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _DistortionIntensity ("DistortionIntensity", Range(0, 1)) = 0
        _GroundBlend ("GroundBlend", Range(0, 5)) = 0
        _UVScale ("UVScale", Float ) = 0
        _Fresnel ("Fresnel", Range(0, 5)) = 0
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
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Speeds;
            uniform float4 _Color;
            uniform float _DistortionIntensity;
            uniform float _GroundBlend;
            uniform float _UVScale;
            uniform float _Fresnel;
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
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 node_7149 = _Time + _TimeEditor;
                float2 node_8818 = (i.uv0*float2(objScale.r,objScale.b)*_UVScale);
                float2 node_9950 = ((float2(_Speeds.b,_Speeds.a)*node_7149.g)+node_8818);
                float4 _node_4035_copy = tex2D(_MainTex,TRANSFORM_TEX(node_9950, _MainTex)); // Distortion
                float2 node_4079 = (((float2(_Speeds.r,_Speeds.g)*node_7149.g)+node_8818)+((_node_4035_copy.b*_DistortionIntensity)*2.0+-1.0));
                float4 _node_4035_copy_copy = tex2D(_MainTex,TRANSFORM_TEX(node_4079, _MainTex)); // Final Out
                float4 node_4035 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex)); // Circle 
                float3 emissive = ((_node_4035_copy_copy.r*node_4035.g)*saturate((sceneZ-partZ)/_GroundBlend)*_Color.a*_Color.rgb*(1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel)));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
