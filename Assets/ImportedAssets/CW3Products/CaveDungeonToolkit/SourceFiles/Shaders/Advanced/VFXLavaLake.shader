// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:1,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33793,y:32946,varname:node_2865,prsc:2|diff-6280-OUT,spec-358-OUT,gloss-1813-OUT,normal-5964-RGB,emission-1855-OUT;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32243,y:33988,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-2478-OUT;n:type:ShaderForge.SFN_Slider,id:358,x:33107,y:32438,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:33083,y:32610,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Add,id:6472,x:31012,y:32626,varname:node_6472,prsc:2|A-7065-R,B-329-OUT;n:type:ShaderForge.SFN_RemapRange,id:8097,x:31622,y:32468,varname:node_8097,prsc:2,frmn:0,frmx:0.15,tomn:0,tomx:1|IN-4817-OUT;n:type:ShaderForge.SFN_RemapRange,id:316,x:31622,y:32672,varname:node_316,prsc:2,frmn:0.35,frmx:1,tomn:0,tomx:1|IN-4817-OUT;n:type:ShaderForge.SFN_RemapRange,id:1091,x:31622,y:32857,varname:node_1091,prsc:2,frmn:0.15,frmx:0.35,tomn:0,tomx:1|IN-4817-OUT;n:type:ShaderForge.SFN_Color,id:2189,x:31723,y:31818,ptovrint:False,ptlb:GrdColor1,ptin:_GrdColor1,varname:node_2189,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9960785,c2:0.9215687,c3:0.3882353,c4:1;n:type:ShaderForge.SFN_Color,id:9679,x:31723,y:31982,ptovrint:False,ptlb:GrdColor2,ptin:_GrdColor2,varname:_GrdColor2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9568628,c2:0.3490196,c3:0.1490196,c4:1;n:type:ShaderForge.SFN_Color,id:507,x:31721,y:32141,ptovrint:False,ptlb:GrdColor3,ptin:_GrdColor3,varname:_GrdColor3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6862745,c2:0.1333333,c3:0.05882353,c4:1;n:type:ShaderForge.SFN_Color,id:7752,x:31721,y:32301,ptovrint:False,ptlb:GrdColor4,ptin:_GrdColor4,varname:_GrdColor4,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2,c2:0.03137255,c3:0.01960784,c4:1;n:type:ShaderForge.SFN_Lerp,id:4425,x:32059,y:32529,varname:node_4425,prsc:2|A-2189-RGB,B-9679-RGB,T-155-OUT;n:type:ShaderForge.SFN_Lerp,id:7544,x:32070,y:32706,varname:node_7544,prsc:2|A-507-RGB,B-7752-RGB,T-6095-OUT;n:type:ShaderForge.SFN_Lerp,id:6280,x:32321,y:32841,varname:node_6280,prsc:2|A-4425-OUT,B-7544-OUT,T-4492-OUT;n:type:ShaderForge.SFN_Clamp01,id:155,x:31791,y:32468,varname:node_155,prsc:2|IN-8097-OUT;n:type:ShaderForge.SFN_Clamp01,id:6095,x:31791,y:32662,varname:node_6095,prsc:2|IN-316-OUT;n:type:ShaderForge.SFN_Clamp01,id:4492,x:31803,y:32857,varname:node_4492,prsc:2|IN-1091-OUT;n:type:ShaderForge.SFN_TexCoord,id:8436,x:27469,y:32926,varname:node_8436,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:1447,x:27820,y:32923,varname:node_1447,prsc:2|A-8436-UVOUT,B-3643-OUT;n:type:ShaderForge.SFN_Multiply,id:9350,x:28028,y:32998,varname:node_9350,prsc:2|A-1447-OUT,B-7000-OUT;n:type:ShaderForge.SFN_Multiply,id:5924,x:28014,y:32740,varname:node_5924,prsc:2|A-6828-OUT,B-1447-OUT;n:type:ShaderForge.SFN_Slider,id:6828,x:27663,y:32738,ptovrint:False,ptlb:UVScale1,ptin:_UVScale1,varname:node_6828,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:7000,x:27665,y:33324,ptovrint:False,ptlb:UVScale2,ptin:_UVScale2,varname:_UVScale2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:1855,x:33290,y:33060,varname:node_1855,prsc:2|A-9735-OUT,B-9984-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9984,x:33072,y:33264,ptovrint:False,ptlb:EmissionStrength,ptin:_EmissionStrength,varname:node_9984,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_RemapRange,id:783,x:32478,y:32943,varname:node_783,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:1|IN-6280-OUT;n:type:ShaderForge.SFN_Clamp01,id:9735,x:32723,y:32981,varname:node_9735,prsc:2|IN-783-OUT;n:type:ShaderForge.SFN_Tex2d,id:7065,x:30038,y:32051,varname:node_7065,prsc:2,ntxv:0,isnm:False|UVIN-8614-OUT,TEX-4521-TEX;n:type:ShaderForge.SFN_Tex2d,id:116,x:30038,y:32211,varname:_node_7065_copy,prsc:2,ntxv:0,isnm:False|UVIN-4804-OUT,TEX-4521-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4521,x:29490,y:32215,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_4521,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3255,x:29653,y:33566,varname:node_3255,prsc:2,ntxv:0,isnm:False|UVIN-6002-OUT,TEX-4521-TEX;n:type:ShaderForge.SFN_Vector4Property,id:3497,x:28028,y:33201,ptovrint:False,ptlb:ScrollingSpeed,ptin:_ScrollingSpeed,varname:node_3497,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:4804,x:28605,y:32966,varname:node_4804,prsc:2|A-9350-OUT,B-4091-OUT;n:type:ShaderForge.SFN_Add,id:6002,x:28605,y:33100,varname:node_6002,prsc:2|A-9350-OUT,B-2361-OUT;n:type:ShaderForge.SFN_Time,id:7358,x:28028,y:33368,varname:node_7358,prsc:2;n:type:ShaderForge.SFN_Append,id:2925,x:28213,y:33142,varname:node_2925,prsc:2|A-3497-X,B-3497-Y;n:type:ShaderForge.SFN_Append,id:8833,x:28213,y:33283,varname:node_8833,prsc:2|A-3497-Z,B-3497-W;n:type:ShaderForge.SFN_Multiply,id:4091,x:28382,y:33142,varname:node_4091,prsc:2|A-2925-OUT,B-7358-T;n:type:ShaderForge.SFN_Multiply,id:2361,x:28382,y:33283,varname:node_2361,prsc:2|A-8833-OUT,B-7358-T;n:type:ShaderForge.SFN_RemapRange,id:5322,x:29831,y:33647,varname:node_5322,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3255-B;n:type:ShaderForge.SFN_Multiply,id:4178,x:30003,y:33787,varname:node_4178,prsc:2|A-5322-OUT,B-4840-OUT;n:type:ShaderForge.SFN_Slider,id:4840,x:29639,y:33823,ptovrint:False,ptlb:DistortionIntensity,ptin:_DistortionIntensity,varname:node_4840,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5080493,max:1;n:type:ShaderForge.SFN_Add,id:8614,x:29973,y:32973,varname:node_8614,prsc:2|A-4178-OUT,B-5924-OUT;n:type:ShaderForge.SFN_Vector4Property,id:320,x:30267,y:32763,ptovrint:False,ptlb:Remap,ptin:_Remap,varname:node_320,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:1,v3:0,v4:0.5;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:329,x:30631,y:32747,varname:node_329,prsc:2|IN-116-G,IMIN-320-X,IMAX-320-Y,OMIN-320-Z,OMAX-320-W;n:type:ShaderForge.SFN_Lerp,id:2478,x:31968,y:34125,varname:node_2478,prsc:2|A-8614-OUT,B-4804-OUT,T-8411-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:8411,x:31750,y:34241,ptovrint:False,ptlb:ScrollNormal,ptin:_ScrollNormal,varname:node_8411,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Lerp,id:3400,x:30705,y:33085,varname:node_3400,prsc:2|A-5474-OUT,B-4484-OUT,T-9124-R;n:type:ShaderForge.SFN_Lerp,id:9110,x:30895,y:33096,varname:node_9110,prsc:2|A-3400-OUT,B-4063-OUT,T-9124-B;n:type:ShaderForge.SFN_VertexColor,id:9124,x:30387,y:33378,varname:node_9124,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:336,x:31083,y:33096,varname:node_336,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:2|IN-9110-OUT;n:type:ShaderForge.SFN_Blend,id:4817,x:31283,y:32771,varname:node_4817,prsc:2,blmd:13,clmp:True|SRC-336-OUT,DST-6472-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4484,x:30407,y:33240,ptovrint:False,ptlb:RedValue,ptin:_RedValue,varname:node_4484,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:4063,x:30680,y:33386,ptovrint:False,ptlb:GreenValue,ptin:_GreenValue,varname:node_4063,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector1,id:5474,x:30406,y:33152,varname:node_5474,prsc:2,v1:0.5;n:type:ShaderForge.SFN_VertexColor,id:713,x:27128,y:33379,varname:node_713,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3643,x:27318,y:33316,varname:node_3643,prsc:2|A-7213-OUT,B-713-G,C-1191-OUT;n:type:ShaderForge.SFN_Vector1,id:7213,x:27144,y:33241,varname:node_7213,prsc:2,v1:100;n:type:ShaderForge.SFN_Vector4Property,id:6730,x:26934,y:33571,ptovrint:False,ptlb:UVScale,ptin:_UVScale,varname:node_6730,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:0,v4:0;n:type:ShaderForge.SFN_Append,id:1191,x:27128,y:33548,varname:node_1191,prsc:2|A-6730-X,B-6730-Y;n:type:ShaderForge.SFN_Relay,id:5522,x:31151,y:34943,varname:node_5522,prsc:2|IN-9124-R;n:type:ShaderForge.SFN_Relay,id:3115,x:31135,y:35027,varname:node_3115,prsc:2|IN-9124-B;proporder:5964-358-1813-2189-9679-507-7752-6828-9984-4521-7000-3497-4840-320-8411-4484-4063-6730;pass:END;sub:END;*/

Shader "CW3/VFXLavaLake" {
    Properties {
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.8
        _GrdColor1 ("GrdColor1", Color) = (0.9960785,0.9215687,0.3882353,1)
        _GrdColor2 ("GrdColor2", Color) = (0.9568628,0.3490196,0.1490196,1)
        _GrdColor3 ("GrdColor3", Color) = (0.6862745,0.1333333,0.05882353,1)
        _GrdColor4 ("GrdColor4", Color) = (0.2,0.03137255,0.01960784,1)
        _UVScale1 ("UVScale1", Range(0, 1)) = 0
        _EmissionStrength ("EmissionStrength", Float ) = 3
        _MainTex ("MainTex", 2D) = "white" {}
        _UVScale2 ("UVScale2", Range(0, 1)) = 0
        _ScrollingSpeed ("ScrollingSpeed", Vector) = (0,0,0,0)
        _DistortionIntensity ("DistortionIntensity", Range(0, 1)) = 0.5080493
        _Remap ("Remap", Vector) = (0,1,0,0.5)
        [MaterialToggle] _ScrollNormal ("ScrollNormal", Float ) = 0
        _RedValue ("RedValue", Float ) = 0
        _GreenValue ("GreenValue", Float ) = 0
        _UVScale ("UVScale", Vector) = (1,1,0,0)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float4 _GrdColor1;
            uniform float4 _GrdColor2;
            uniform float4 _GrdColor3;
            uniform float4 _GrdColor4;
            uniform float _UVScale1;
            uniform float _UVScale2;
            uniform float _EmissionStrength;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _ScrollingSpeed;
            uniform float _DistortionIntensity;
            uniform float4 _Remap;
            uniform fixed _ScrollNormal;
            uniform float _RedValue;
            uniform float _GreenValue;
            uniform float4 _UVScale;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_1447 = (i.uv0*(100.0*i.vertexColor.g*float2(_UVScale.r,_UVScale.g)));
                float2 node_9350 = (node_1447*_UVScale2);
                float4 node_7358 = _Time + _TimeEditor;
                float2 node_6002 = (node_9350+(float2(_ScrollingSpeed.b,_ScrollingSpeed.a)*node_7358.g));
                float4 node_3255 = tex2D(_MainTex,TRANSFORM_TEX(node_6002, _MainTex));
                float2 node_8614 = (((node_3255.b*2.0+-1.0)*_DistortionIntensity)+(_UVScale1*node_1447));
                float2 node_4804 = (node_9350+(float2(_ScrollingSpeed.r,_ScrollingSpeed.g)*node_7358.g));
                float2 node_2478 = lerp(node_8614,node_4804,_ScrollNormal);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_2478, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
/////// GI Data:
                UnityLight light; // Dummy light
                light.color = 0;
                light.dir = half3(0,1,0);
                light.ndotl = max(0,dot(normalDirection,light.dir));
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = 1;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
////// Specular:
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 node_7065 = tex2D(_MainTex,TRANSFORM_TEX(node_8614, _MainTex));
                float4 _node_7065_copy = tex2D(_MainTex,TRANSFORM_TEX(node_4804, _MainTex));
                float node_6472 = (node_7065.r+(_Remap.b + ( (_node_7065_copy.g - _Remap.r) * (_Remap.a - _Remap.b) ) / (_Remap.g - _Remap.r)));
                float node_4817 = saturate(( (lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0) > 0.5 ? (node_6472/((1.0-(lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0))*2.0)) : (1.0-(((1.0-node_6472)*0.5)/(lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0)))));
                float3 node_6280 = lerp(lerp(_GrdColor1.rgb,_GrdColor2.rgb,saturate((node_4817*6.666667+0.0))),lerp(_GrdColor3.rgb,_GrdColor4.rgb,saturate((node_4817*1.538462+-0.5384616))),saturate((node_4817*5.0+-0.7500001)));
                float3 diffuseColor = node_6280; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
/////// Diffuse:
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
////// Emissive:
                float3 emissive = (saturate((node_6280*1.5+-0.5))*_EmissionStrength);
/// Final Color:
                outDiffuse = half4( diffuseColor, 1 );
                outSpecSmoothness = half4( specularColor, gloss );
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4( (saturate((node_6280*1.5+-0.5))*_EmissionStrength), 1 );
                outEmission.rgb += indirectSpecular * 1;
                outEmission.rgb += indirectDiffuse * diffuseColor;
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float4 _GrdColor1;
            uniform float4 _GrdColor2;
            uniform float4 _GrdColor3;
            uniform float4 _GrdColor4;
            uniform float _UVScale1;
            uniform float _UVScale2;
            uniform float _EmissionStrength;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _ScrollingSpeed;
            uniform float _DistortionIntensity;
            uniform float4 _Remap;
            uniform fixed _ScrollNormal;
            uniform float _RedValue;
            uniform float _GreenValue;
            uniform float4 _UVScale;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_1447 = (i.uv0*(100.0*i.vertexColor.g*float2(_UVScale.r,_UVScale.g)));
                float2 node_9350 = (node_1447*_UVScale2);
                float4 node_7358 = _Time + _TimeEditor;
                float2 node_6002 = (node_9350+(float2(_ScrollingSpeed.b,_ScrollingSpeed.a)*node_7358.g));
                float4 node_3255 = tex2D(_MainTex,TRANSFORM_TEX(node_6002, _MainTex));
                float2 node_8614 = (((node_3255.b*2.0+-1.0)*_DistortionIntensity)+(_UVScale1*node_1447));
                float2 node_4804 = (node_9350+(float2(_ScrollingSpeed.r,_ScrollingSpeed.g)*node_7358.g));
                float2 node_2478 = lerp(node_8614,node_4804,_ScrollNormal);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_2478, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 node_7065 = tex2D(_MainTex,TRANSFORM_TEX(node_8614, _MainTex));
                float4 _node_7065_copy = tex2D(_MainTex,TRANSFORM_TEX(node_4804, _MainTex));
                float node_6472 = (node_7065.r+(_Remap.b + ( (_node_7065_copy.g - _Remap.r) * (_Remap.a - _Remap.b) ) / (_Remap.g - _Remap.r)));
                float node_4817 = saturate(( (lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0) > 0.5 ? (node_6472/((1.0-(lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0))*2.0)) : (1.0-(((1.0-node_6472)*0.5)/(lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0)))));
                float3 node_6280 = lerp(lerp(_GrdColor1.rgb,_GrdColor2.rgb,saturate((node_4817*6.666667+0.0))),lerp(_GrdColor3.rgb,_GrdColor4.rgb,saturate((node_4817*1.538462+-0.5384616))),saturate((node_4817*5.0+-0.7500001)));
                float3 diffuseColor = node_6280; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz)*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (saturate((node_6280*1.5+-0.5))*_EmissionStrength);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float4 _GrdColor1;
            uniform float4 _GrdColor2;
            uniform float4 _GrdColor3;
            uniform float4 _GrdColor4;
            uniform float _UVScale1;
            uniform float _UVScale2;
            uniform float _EmissionStrength;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _ScrollingSpeed;
            uniform float _DistortionIntensity;
            uniform float4 _Remap;
            uniform fixed _ScrollNormal;
            uniform float _RedValue;
            uniform float _GreenValue;
            uniform float4 _UVScale;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_1447 = (i.uv0*(100.0*i.vertexColor.g*float2(_UVScale.r,_UVScale.g)));
                float2 node_9350 = (node_1447*_UVScale2);
                float4 node_7358 = _Time + _TimeEditor;
                float2 node_6002 = (node_9350+(float2(_ScrollingSpeed.b,_ScrollingSpeed.a)*node_7358.g));
                float4 node_3255 = tex2D(_MainTex,TRANSFORM_TEX(node_6002, _MainTex));
                float2 node_8614 = (((node_3255.b*2.0+-1.0)*_DistortionIntensity)+(_UVScale1*node_1447));
                float2 node_4804 = (node_9350+(float2(_ScrollingSpeed.r,_ScrollingSpeed.g)*node_7358.g));
                float2 node_2478 = lerp(node_8614,node_4804,_ScrollNormal);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_2478, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 node_7065 = tex2D(_MainTex,TRANSFORM_TEX(node_8614, _MainTex));
                float4 _node_7065_copy = tex2D(_MainTex,TRANSFORM_TEX(node_4804, _MainTex));
                float node_6472 = (node_7065.r+(_Remap.b + ( (_node_7065_copy.g - _Remap.r) * (_Remap.a - _Remap.b) ) / (_Remap.g - _Remap.r)));
                float node_4817 = saturate(( (lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0) > 0.5 ? (node_6472/((1.0-(lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0))*2.0)) : (1.0-(((1.0-node_6472)*0.5)/(lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0)))));
                float3 node_6280 = lerp(lerp(_GrdColor1.rgb,_GrdColor2.rgb,saturate((node_4817*6.666667+0.0))),lerp(_GrdColor3.rgb,_GrdColor4.rgb,saturate((node_4817*1.538462+-0.5384616))),saturate((node_4817*5.0+-0.7500001)));
                float3 diffuseColor = node_6280; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, GGXTerm(NdotH, 1.0-gloss));
                float specularPBL = (NdotL*visTerm*normTerm) * (UNITY_PI / 4);
                if (IsGammaSpace())
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                specularPBL = max(0, specularPBL * NdotL);
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float4 _GrdColor1;
            uniform float4 _GrdColor2;
            uniform float4 _GrdColor3;
            uniform float4 _GrdColor4;
            uniform float _UVScale1;
            uniform float _UVScale2;
            uniform float _EmissionStrength;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _ScrollingSpeed;
            uniform float _DistortionIntensity;
            uniform float4 _Remap;
            uniform float _RedValue;
            uniform float _GreenValue;
            uniform float4 _UVScale;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float2 node_1447 = (i.uv0*(100.0*i.vertexColor.g*float2(_UVScale.r,_UVScale.g)));
                float2 node_9350 = (node_1447*_UVScale2);
                float4 node_7358 = _Time + _TimeEditor;
                float2 node_6002 = (node_9350+(float2(_ScrollingSpeed.b,_ScrollingSpeed.a)*node_7358.g));
                float4 node_3255 = tex2D(_MainTex,TRANSFORM_TEX(node_6002, _MainTex));
                float2 node_8614 = (((node_3255.b*2.0+-1.0)*_DistortionIntensity)+(_UVScale1*node_1447));
                float4 node_7065 = tex2D(_MainTex,TRANSFORM_TEX(node_8614, _MainTex));
                float2 node_4804 = (node_9350+(float2(_ScrollingSpeed.r,_ScrollingSpeed.g)*node_7358.g));
                float4 _node_7065_copy = tex2D(_MainTex,TRANSFORM_TEX(node_4804, _MainTex));
                float node_6472 = (node_7065.r+(_Remap.b + ( (_node_7065_copy.g - _Remap.r) * (_Remap.a - _Remap.b) ) / (_Remap.g - _Remap.r)));
                float node_4817 = saturate(( (lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0) > 0.5 ? (node_6472/((1.0-(lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0))*2.0)) : (1.0-(((1.0-node_6472)*0.5)/(lerp(lerp(0.5,_RedValue,i.vertexColor.r),_GreenValue,i.vertexColor.b)*3.0+-1.0)))));
                float3 node_6280 = lerp(lerp(_GrdColor1.rgb,_GrdColor2.rgb,saturate((node_4817*6.666667+0.0))),lerp(_GrdColor3.rgb,_GrdColor4.rgb,saturate((node_4817*1.538462+-0.5384616))),saturate((node_4817*5.0+-0.7500001)));
                o.Emission = (saturate((node_6280*1.5+-0.5))*_EmissionStrength);
                
                float3 diffColor = node_6280;
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
