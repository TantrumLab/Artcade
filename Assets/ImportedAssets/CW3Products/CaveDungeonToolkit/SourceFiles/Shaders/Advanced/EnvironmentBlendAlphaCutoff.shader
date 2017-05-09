// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:Standard,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:1,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33946,y:32948,varname:node_2865,prsc:2|diff-9913-OUT,spec-7433-OUT,gloss-2186-OUT,normal-8912-OUT,clip-7736-A;n:type:ShaderForge.SFN_Multiply,id:6343,x:30895,y:31842,cmnt:Mult color,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:30686,y:31617,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:30499,y:31845,ptovrint:True,ptlb:MainAlbedo,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32196,y:33993,ptovrint:True,ptlb:Main Normal,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:32796,y:32988,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:31903,y:32619,ptovrint:False,ptlb:Glossiness,ptin:_Glossiness,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Tex2d,id:8415,x:30126,y:32600,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_8415,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6060,x:32327,y:32646,varname:node_6060,prsc:2|A-1813-OUT,B-545-OUT;n:type:ShaderForge.SFN_NormalVector,id:4240,x:28873,y:32469,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:873,x:29050,y:32469,varname:node_873,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4240-OUT;n:type:ShaderForge.SFN_Blend,id:6899,x:31517,y:31837,cmnt:Tint color,varname:node_6899,prsc:2,blmd:12,clmp:True|SRC-6931-OUT,DST-6343-OUT;n:type:ShaderForge.SFN_Color,id:1664,x:31182,y:31422,ptovrint:False,ptlb:TintColor,ptin:_TintColor,varname:node_1664,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:9913,x:32609,y:31780,cmnt:Diffuse red vtx blend,varname:node_9913,prsc:2|A-6899-OUT,B-8447-OUT,T-6531-OUT;n:type:ShaderForge.SFN_VertexColor,id:9332,x:30669,y:33631,varname:node_9332,prsc:2;n:type:ShaderForge.SFN_Lerp,id:8912,x:32695,y:33985,cmnt:Normal red vtx blend,varname:node_8912,prsc:2|A-5964-RGB,B-8753-OUT,T-1663-OUT;n:type:ShaderForge.SFN_Lerp,id:8234,x:32580,y:32712,cmnt:Gloss red vtx blend,varname:node_8234,prsc:2|A-6060-OUT,B-1647-OUT,T-7712-OUT;n:type:ShaderForge.SFN_Lerp,id:2186,x:32796,y:32737,cmnt:Gloss green vtx blend,varname:node_2186,prsc:2|A-8234-OUT,B-3652-OUT,T-8472-OUT;n:type:ShaderForge.SFN_Vector1,id:3652,x:32591,y:32842,varname:node_3652,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4852,x:30931,y:33494,cmnt:Vertex colors mixed with up normal,varname:node_4852,prsc:2|A-4326-OUT,B-9332-R;n:type:ShaderForge.SFN_Add,id:5158,x:29917,y:33457,varname:node_5158,prsc:2|A-6950-OUT,B-2605-OUT;n:type:ShaderForge.SFN_Slider,id:2605,x:29576,y:33482,ptovrint:False,ptlb:BlendUpFactor,ptin:_BlendUpFactor,varname:node_2605,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Clamp01,id:4326,x:30090,y:33457,varname:node_4326,prsc:2|IN-5158-OUT;n:type:ShaderForge.SFN_RemapRange,id:4260,x:31367,y:33410,cmnt:VTX colors  env blend  up normal out,varname:node_4260,prsc:2,frmn:0.4,frmx:0.5,tomn:0,tomx:1|IN-6281-OUT;n:type:ShaderForge.SFN_Blend,id:6281,x:31186,y:33410,varname:node_6281,prsc:2,blmd:10,clmp:True|SRC-253-OUT,DST-4852-OUT;n:type:ShaderForge.SFN_Lerp,id:253,x:30948,y:33074,varname:node_253,prsc:2|A-5382-OUT,B-733-OUT,T-7407-OUT;n:type:ShaderForge.SFN_Slider,id:7407,x:30618,y:33143,ptovrint:False,ptlb:BlendMaskIntensity,ptin:_BlendMaskIntensity,varname:node_7407,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:5382,x:30692,y:32990,varname:node_5382,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:5955,x:31537,y:33410,varname:node_5955,prsc:2|IN-4260-OUT;n:type:ShaderForge.SFN_RemapRange,id:6950,x:29262,y:32538,cmnt:Up Normal output for vertex colors,varname:node_6950,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-873-OUT;n:type:ShaderForge.SFN_Relay,id:545,x:30589,y:32551,varname:node_545,prsc:2|IN-8415-R;n:type:ShaderForge.SFN_Relay,id:733,x:30474,y:33084,varname:node_733,prsc:2|IN-8415-A;n:type:ShaderForge.SFN_Relay,id:8472,x:32689,y:33658,varname:node_8472,prsc:2|IN-9332-G;n:type:ShaderForge.SFN_Relay,id:1663,x:31903,y:34457,varname:node_1663,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Relay,id:7712,x:31805,y:33114,varname:node_7712,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Relay,id:6531,x:31764,y:32237,varname:node_6531,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Multiply,id:4497,x:33112,y:33097,varname:node_4497,prsc:2|A-358-OUT,B-4463-OUT;n:type:ShaderForge.SFN_Relay,id:4463,x:30585,y:32689,varname:node_4463,prsc:2|IN-8415-G;n:type:ShaderForge.SFN_Lerp,id:7433,x:33336,y:33085,cmnt:Metal red vtx blend,varname:node_7433,prsc:2|A-4497-OUT,B-6633-OUT,T-1071-OUT;n:type:ShaderForge.SFN_Vector1,id:6633,x:33112,y:32965,varname:node_6633,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:1071,x:33105,y:33407,varname:node_1071,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_TexCoord,id:5829,x:29580,y:30288,varname:node_5829,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:9802,x:29809,y:30520,varname:node_9802,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:6052,x:30154,y:30355,varname:node_6052,prsc:2|A-5829-UVOUT,B-9802-OUT;n:type:ShaderForge.SFN_Frac,id:8401,x:30154,y:30498,varname:node_8401,prsc:2|IN-5014-OUT;n:type:ShaderForge.SFN_Add,id:5862,x:30489,y:30341,varname:node_5862,prsc:2|A-6052-OUT,B-7032-OUT;n:type:ShaderForge.SFN_Divide,id:4085,x:30323,y:30498,varname:node_4085,prsc:2|A-8401-OUT,B-9802-OUT;n:type:ShaderForge.SFN_Add,id:3201,x:30489,y:30498,varname:node_3201,prsc:2|A-4085-OUT,B-7032-OUT;n:type:ShaderForge.SFN_Vector1,id:1580,x:30489,y:30632,varname:node_1580,prsc:2,v1:0.9375;n:type:ShaderForge.SFN_Multiply,id:5233,x:30659,y:30515,varname:node_5233,prsc:2|A-3201-OUT,B-1580-OUT;n:type:ShaderForge.SFN_Add,id:7978,x:30849,y:30532,varname:node_7978,prsc:2|A-5233-OUT,B-6924-OUT;n:type:ShaderForge.SFN_Vector2,id:6888,x:30379,y:30840,varname:node_6888,prsc:2,v1:0.015625,v2:0.015625;n:type:ShaderForge.SFN_Code,id:5038,x:31174,y:30507,varname:node_5038,prsc:2,code:cgBlAHQAdQByAG4AIAB0AGUAeAAyAEQAZwByAGEAZAAgACgAUwBhAG0AcABsAGUAcgAsACAARgByAGEAYwBDAG8AbwByAGQAcwAsACAAZABkAHgAKABDAG8AbwByAGQAcwApACwAIABkAGQAeQAoAEMAbwBvAHIAZABzACkAKQA7AA==,output:3,fname:AtlasSampler,width:247,height:112,input:1,input:1,input:12,input_1_label:Coords,input_2_label:FracCoords,input_3_label:Sampler|A-5862-OUT,B-7978-OUT,C-3701-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3701,x:30860,y:30709,ptovrint:False,ptlb:BlendDiffuse2,ptin:_BlendDiffuse2,varname:node_4189,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5014,x:29809,y:30356,varname:node_5014,prsc:2|A-5829-UVOUT,B-8720-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8447,x:31511,y:30420,varname:node_8447,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-5038-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8720,x:29580,y:30469,ptovrint:False,ptlb:BlendDiffuseScale,ptin:_BlendDiffuseScale,varname:node_7130,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_ComponentMask,id:1647,x:31511,y:30607,varname:node_1647,prsc:2,cc1:3,cc2:-1,cc3:-1,cc4:-1|IN-5038-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3985,x:28392,y:30607,ptovrint:False,ptlb:AtlasIndex,ptin:_AtlasIndex,varname:node_6268,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:7.5;n:type:ShaderForge.SFN_Fmod,id:2439,x:29471,y:30706,varname:node_2439,prsc:2|A-4364-OUT,B-6205-OUT;n:type:ShaderForge.SFN_Vector1,id:6205,x:29300,y:30866,varname:node_6205,prsc:2,v1:2;n:type:ShaderForge.SFN_Clamp01,id:9739,x:29668,y:30866,varname:node_9739,prsc:2|IN-8801-OUT;n:type:ShaderForge.SFN_Subtract,id:8801,x:29493,y:30866,varname:node_8801,prsc:2|A-4364-OUT,B-697-OUT;n:type:ShaderForge.SFN_Vector1,id:697,x:29300,y:30947,varname:node_697,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:4680,x:29883,y:30776,varname:node_4680,prsc:2|A-2439-OUT,B-9739-OUT;n:type:ShaderForge.SFN_Multiply,id:2254,x:30060,y:30741,varname:node_2254,prsc:2|A-1966-OUT,B-4680-OUT;n:type:ShaderForge.SFN_Vector1,id:1966,x:29883,y:30690,varname:node_1966,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:3838,x:30097,y:30927,varname:node_3838,prsc:2|A-4680-OUT,B-3159-OUT;n:type:ShaderForge.SFN_Vector1,id:3159,x:29896,y:30961,varname:node_3159,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:6924,x:30648,y:30910,varname:node_6924,prsc:2|A-6888-OUT,B-16-OUT;n:type:ShaderForge.SFN_Relay,id:7032,x:30304,y:30738,varname:node_7032,prsc:2|IN-2254-OUT;n:type:ShaderForge.SFN_Code,id:9542,x:31134,y:30867,varname:node_9542,prsc:2,code:cgBlAHQAdQByAG4AIAB0AGUAeAAyAEQAZwByAGEAZAAgACgAUwBhAG0AcABsAGUAcgAsACAARgByAGEAYwBDAG8AbwByAGQAcwAsACAAZABkAHgAKABDAG8AbwByAGQAcwApACwAIABkAGQAeQAoAEMAbwBvAHIAZABzACkAKQA7AA==,output:2,fname:AtlasSamplerNormal,width:247,height:112,input:1,input:1,input:12,input_1_label:Coords,input_2_label:FracCoords,input_3_label:Sampler|A-5862-OUT,B-7978-OUT,C-7564-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:7564,x:30888,y:30949,ptovrint:False,ptlb:BlendNormal2,ptin:_BlendNormal2,varname:_BlendDiffuse3,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Set,id:2810,x:31651,y:30876,varname:node_2810,prsc:2|IN-5523-OUT;n:type:ShaderForge.SFN_RemapRange,id:5523,x:31478,y:30982,varname:node_5523,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9542-OUT;n:type:ShaderForge.SFN_TexCoord,id:25,x:29082,y:30378,varname:node_25,prsc:2,uv:2;n:type:ShaderForge.SFN_Add,id:16,x:30312,y:30992,varname:node_16,prsc:2|A-3838-OUT,B-1410-OUT;n:type:ShaderForge.SFN_Vector1,id:1410,x:30065,y:31079,varname:node_1410,prsc:2,v1:1;n:type:ShaderForge.SFN_VertexColor,id:1840,x:27848,y:30593,varname:node_1840,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8976,x:28648,y:30640,varname:node_8976,prsc:2|A-1840-A,B-1164-OUT,C-1008-OUT;n:type:ShaderForge.SFN_Vector1,id:1164,x:28448,y:30702,varname:node_1164,prsc:2,v1:4;n:type:ShaderForge.SFN_Round,id:4364,x:28916,y:30549,varname:node_4364,prsc:2|IN-8976-OUT;n:type:ShaderForge.SFN_Frac,id:7036,x:28741,y:30885,varname:node_7036,prsc:2|IN-8976-OUT;n:type:ShaderForge.SFN_RemapRange,id:5938,x:28919,y:30960,varname:node_5938,prsc:2,frmn:0.24,frmx:0.26,tomn:0,tomx:1|IN-7036-OUT;n:type:ShaderForge.SFN_Clamp01,id:1357,x:29100,y:31023,varname:node_1357,prsc:2|IN-5938-OUT;n:type:ShaderForge.SFN_Get,id:8753,x:32283,y:33840,varname:node_8753,prsc:2|IN-2810-OUT;n:type:ShaderForge.SFN_Color,id:9888,x:31169,y:31609,ptovrint:False,ptlb:TintColor2,ptin:_TintColor2,varname:_TintColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:6931,x:31400,y:31531,varname:node_6931,prsc:2|A-1664-RGB,B-9888-RGB,T-1357-OUT;n:type:ShaderForge.SFN_Floor,id:7460,x:28232,y:30441,varname:node_7460,prsc:2|IN-7155-OUT;n:type:ShaderForge.SFN_OneMinus,id:1008,x:28385,y:30441,varname:node_1008,prsc:2|IN-7460-OUT;n:type:ShaderForge.SFN_Add,id:7155,x:28074,y:30437,varname:node_7155,prsc:2|A-3083-OUT,B-1840-A;n:type:ShaderForge.SFN_Vector1,id:3083,x:27895,y:30471,varname:node_3083,prsc:2,v1:0.1;proporder:7736-5964-8415-6665-1664-9888-358-1813-2605-7407-3701-8720-7564;pass:END;sub:END;*/

Shader "CW3/EnvironmentBlendAlphaCutoff" {
    Properties {
        _MainTex ("MainAlbedo", 2D) = "white" {}
        _BumpMap ("Main Normal", 2D) = "bump" {}
        _Mask ("Mask", 2D) = "white" {}
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _TintColor ("TintColor", Color) = (0.5,0.5,0.5,1)
        _TintColor2 ("TintColor2", Color) = (0.5,0.5,0.5,1)
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Glossiness ("Glossiness", Range(0, 1)) = 0.8
        _BlendUpFactor ("BlendUpFactor", Range(0, 1)) = 0
        _BlendMaskIntensity ("BlendMaskIntensity", Range(0, 1)) = 0
        _BlendDiffuse2 ("BlendDiffuse2", 2D) = "white" {}
        _BlendDiffuseScale ("BlendDiffuseScale", Float ) = 8
        _BlendNormal2 ("BlendNormal2", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            float4 AtlasSampler( float2 Coords , float2 FracCoords , sampler2D Sampler ){
            return tex2Dgrad (Sampler, FracCoords, ddx(Coords), ddy(Coords));
            }
            
            uniform sampler2D _BlendDiffuse2; uniform float4 _BlendDiffuse2_ST;
            uniform float _BlendDiffuseScale;
            float3 AtlasSamplerNormal( float2 Coords , float2 FracCoords , sampler2D Sampler ){
            return tex2Dgrad (Sampler, FracCoords, ddx(Coords), ddy(Coords));
            }
            
            uniform sampler2D _BlendNormal2; uniform float4 _BlendNormal2_ST;
            uniform float4 _TintColor2;
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
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float node_9802 = 2.0;
                float node_8976 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float node_4364 = round(node_8976);
                float2 node_4680 = float2(fmod(node_4364,2.0),saturate((node_4364-1.0)));
                float2 node_7032 = (0.5*node_4680);
                float2 node_5862 = ((i.uv0/node_9802)+node_7032);
                float2 node_7978 = ((((frac((i.uv0*_BlendDiffuseScale))/node_9802)+node_7032)*0.9375)+(float2(0.015625,0.015625)*((node_4680*2.0)+1.0)));
                float3 node_2810 = (AtlasSamplerNormal( node_5862 , node_7978 , _BlendNormal2 )*2.0+-1.0);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_5955 = saturate((saturate(( (saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 normalLocal = lerp(_BumpMap_var.rgb,node_2810,node_5955);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(_MainTex_var.a - 0.5);
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 node_5038 = AtlasSampler( node_5862 , node_7978 , _BlendDiffuse2 );
                float gloss = lerp(lerp((_Glossiness*_Mask_var.r),node_5038.a,node_5955),1.0,i.vertexColor.g);
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
                float3 specularColor = lerp((_Metallic*_Mask_var.g),0.0,node_5955);
                float specularMonochrome;
                float3 diffuseColor = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0)))-0.5))*(1.0-(_MainTex_var.rgb*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0)))*(_MainTex_var.rgb*_Color.rgb))) ),node_5038.rgb,node_5955); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
/////// Diffuse:
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
/// Final Color:
                outDiffuse = half4( diffuseColor, 1 );
                outSpecSmoothness = half4( specularColor, gloss );
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4(0,0,0,1);
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
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            float4 AtlasSampler( float2 Coords , float2 FracCoords , sampler2D Sampler ){
            return tex2Dgrad (Sampler, FracCoords, ddx(Coords), ddy(Coords));
            }
            
            uniform sampler2D _BlendDiffuse2; uniform float4 _BlendDiffuse2_ST;
            uniform float _BlendDiffuseScale;
            float3 AtlasSamplerNormal( float2 Coords , float2 FracCoords , sampler2D Sampler ){
            return tex2Dgrad (Sampler, FracCoords, ddx(Coords), ddy(Coords));
            }
            
            uniform sampler2D _BlendNormal2; uniform float4 _BlendNormal2_ST;
            uniform float4 _TintColor2;
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
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float node_9802 = 2.0;
                float node_8976 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float node_4364 = round(node_8976);
                float2 node_4680 = float2(fmod(node_4364,2.0),saturate((node_4364-1.0)));
                float2 node_7032 = (0.5*node_4680);
                float2 node_5862 = ((i.uv0/node_9802)+node_7032);
                float2 node_7978 = ((((frac((i.uv0*_BlendDiffuseScale))/node_9802)+node_7032)*0.9375)+(float2(0.015625,0.015625)*((node_4680*2.0)+1.0)));
                float3 node_2810 = (AtlasSamplerNormal( node_5862 , node_7978 , _BlendNormal2 )*2.0+-1.0);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_5955 = saturate((saturate(( (saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 normalLocal = lerp(_BumpMap_var.rgb,node_2810,node_5955);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(_MainTex_var.a - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 node_5038 = AtlasSampler( node_5862 , node_7978 , _BlendDiffuse2 );
                float gloss = lerp(lerp((_Glossiness*_Mask_var.r),node_5038.a,node_5955),1.0,i.vertexColor.g);
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
                float3 specularColor = lerp((_Metallic*_Mask_var.g),0.0,node_5955);
                float specularMonochrome;
                float3 diffuseColor = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0)))-0.5))*(1.0-(_MainTex_var.rgb*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0)))*(_MainTex_var.rgb*_Color.rgb))) ),node_5038.rgb,node_5955); // Need this for specular when using metallic
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
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            float4 AtlasSampler( float2 Coords , float2 FracCoords , sampler2D Sampler ){
            return tex2Dgrad (Sampler, FracCoords, ddx(Coords), ddy(Coords));
            }
            
            uniform sampler2D _BlendDiffuse2; uniform float4 _BlendDiffuse2_ST;
            uniform float _BlendDiffuseScale;
            float3 AtlasSamplerNormal( float2 Coords , float2 FracCoords , sampler2D Sampler ){
            return tex2Dgrad (Sampler, FracCoords, ddx(Coords), ddy(Coords));
            }
            
            uniform sampler2D _BlendNormal2; uniform float4 _BlendNormal2_ST;
            uniform float4 _TintColor2;
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
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float node_9802 = 2.0;
                float node_8976 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float node_4364 = round(node_8976);
                float2 node_4680 = float2(fmod(node_4364,2.0),saturate((node_4364-1.0)));
                float2 node_7032 = (0.5*node_4680);
                float2 node_5862 = ((i.uv0/node_9802)+node_7032);
                float2 node_7978 = ((((frac((i.uv0*_BlendDiffuseScale))/node_9802)+node_7032)*0.9375)+(float2(0.015625,0.015625)*((node_4680*2.0)+1.0)));
                float3 node_2810 = (AtlasSamplerNormal( node_5862 , node_7978 , _BlendNormal2 )*2.0+-1.0);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_5955 = saturate((saturate(( (saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 normalLocal = lerp(_BumpMap_var.rgb,node_2810,node_5955);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(_MainTex_var.a - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 node_5038 = AtlasSampler( node_5862 , node_7978 , _BlendDiffuse2 );
                float gloss = lerp(lerp((_Glossiness*_Mask_var.r),node_5038.a,node_5955),1.0,i.vertexColor.g);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = lerp((_Metallic*_Mask_var.g),0.0,node_5955);
                float specularMonochrome;
                float3 diffuseColor = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0)))-0.5))*(1.0-(_MainTex_var.rgb*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0)))*(_MainTex_var.rgb*_Color.rgb))) ),node_5038.rgb,node_5955); // Need this for specular when using metallic
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
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(_MainTex_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
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
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            float4 AtlasSampler( float2 Coords , float2 FracCoords , sampler2D Sampler ){
            return tex2Dgrad (Sampler, FracCoords, ddx(Coords), ddy(Coords));
            }
            
            uniform sampler2D _BlendDiffuse2; uniform float4 _BlendDiffuse2_ST;
            uniform float _BlendDiffuseScale;
            uniform float4 _TintColor2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
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
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_8976 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_9802 = 2.0;
                float node_4364 = round(node_8976);
                float2 node_4680 = float2(fmod(node_4364,2.0),saturate((node_4364-1.0)));
                float2 node_7032 = (0.5*node_4680);
                float2 node_5862 = ((i.uv0/node_9802)+node_7032);
                float2 node_7978 = ((((frac((i.uv0*_BlendDiffuseScale))/node_9802)+node_7032)*0.9375)+(float2(0.015625,0.015625)*((node_4680*2.0)+1.0)));
                float4 node_5038 = AtlasSampler( node_5862 , node_7978 , _BlendDiffuse2 );
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_5955 = saturate((saturate(( (saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 diffColor = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0)))-0.5))*(1.0-(_MainTex_var.rgb*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_8976)*50.00001+-12.0)))*(_MainTex_var.rgb*_Color.rgb))) ),node_5038.rgb,node_5955);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, lerp((_Metallic*_Mask_var.g),0.0,node_5955), specColor, specularMonochrome );
                float roughness = 1.0 - lerp(lerp((_Glossiness*_Mask_var.r),node_5038.a,node_5955),1.0,i.vertexColor.g);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Standard"
    CustomEditor "ShaderForgeMaterialInspector"
}
