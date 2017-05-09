// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:CW3/EnvironmentBlendStandard,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:1,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33946,y:32948,varname:node_2865,prsc:2|diff-9913-OUT,spec-7433-OUT,gloss-2186-OUT,normal-8912-OUT,disp-1227-OUT,tess-5084-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:30379,y:31779,cmnt:Mult color,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:30170,y:31554,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:29914,y:31752,ptovrint:True,ptlb:MainAlbedo,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32140,y:33757,ptovrint:True,ptlb:Main Normal,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:32796,y:32988,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:31903,y:32619,ptovrint:False,ptlb:Glossiness,ptin:_Glossiness,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Tex2d,id:8415,x:30126,y:32600,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_8415,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6060,x:32327,y:32646,varname:node_6060,prsc:2|A-1813-OUT,B-545-OUT;n:type:ShaderForge.SFN_NormalVector,id:4240,x:28873,y:32469,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:873,x:29050,y:32469,varname:node_873,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4240-OUT;n:type:ShaderForge.SFN_Blend,id:6899,x:31075,y:31747,cmnt:Tint color,varname:node_6899,prsc:2,blmd:12,clmp:True|SRC-972-OUT,DST-6343-OUT;n:type:ShaderForge.SFN_Color,id:1664,x:30657,y:31387,ptovrint:False,ptlb:TintColor,ptin:_TintColor,varname:node_1664,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:9913,x:32609,y:31780,cmnt:Diffuse red vtx blend,varname:node_9913,prsc:2|A-6899-OUT,B-3792-OUT,T-6531-OUT;n:type:ShaderForge.SFN_VertexColor,id:9332,x:30664,y:33634,varname:node_9332,prsc:2;n:type:ShaderForge.SFN_Lerp,id:8912,x:32695,y:33985,cmnt:Normal red vtx blend,varname:node_8912,prsc:2|A-5964-RGB,B-3615-OUT,T-1663-OUT;n:type:ShaderForge.SFN_Lerp,id:8234,x:32580,y:32712,cmnt:Gloss red vtx blend,varname:node_8234,prsc:2|A-6060-OUT,B-4756-OUT,T-7712-OUT;n:type:ShaderForge.SFN_Lerp,id:2186,x:32796,y:32737,cmnt:Gloss green vtx blend,varname:node_2186,prsc:2|A-8234-OUT,B-3652-OUT,T-8472-OUT;n:type:ShaderForge.SFN_Vector1,id:3652,x:32591,y:32842,varname:node_3652,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4852,x:30931,y:33494,cmnt:Vertex colors mixed with up normal,varname:node_4852,prsc:2|A-4326-OUT,B-9332-R;n:type:ShaderForge.SFN_Add,id:5158,x:29917,y:33457,varname:node_5158,prsc:2|A-6950-OUT,B-2605-OUT;n:type:ShaderForge.SFN_Slider,id:2605,x:29576,y:33482,ptovrint:False,ptlb:BlendUpFactor,ptin:_BlendUpFactor,varname:node_2605,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Clamp01,id:4326,x:30090,y:33457,varname:node_4326,prsc:2|IN-5158-OUT;n:type:ShaderForge.SFN_RemapRange,id:4260,x:31367,y:33410,cmnt:VTX colors  env blend  up normal out,varname:node_4260,prsc:2,frmn:0.4,frmx:0.5,tomn:0,tomx:1|IN-6281-OUT;n:type:ShaderForge.SFN_Blend,id:6281,x:31186,y:33410,varname:node_6281,prsc:2,blmd:10,clmp:True|SRC-253-OUT,DST-4852-OUT;n:type:ShaderForge.SFN_Lerp,id:253,x:30948,y:33074,varname:node_253,prsc:2|A-5382-OUT,B-733-OUT,T-7407-OUT;n:type:ShaderForge.SFN_Slider,id:7407,x:30618,y:33143,ptovrint:False,ptlb:BlendMaskIntensity,ptin:_BlendMaskIntensity,varname:node_7407,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:5382,x:30692,y:32990,varname:node_5382,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:5955,x:31537,y:33410,varname:node_5955,prsc:2|IN-4260-OUT;n:type:ShaderForge.SFN_RemapRange,id:6950,x:29262,y:32538,cmnt:Up Normal output for vertex colors,varname:node_6950,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-873-OUT;n:type:ShaderForge.SFN_Relay,id:545,x:30589,y:32551,varname:node_545,prsc:2|IN-8415-R;n:type:ShaderForge.SFN_Relay,id:733,x:30474,y:33084,varname:node_733,prsc:2|IN-8415-A;n:type:ShaderForge.SFN_Relay,id:8472,x:32689,y:33658,varname:node_8472,prsc:2|IN-9332-G;n:type:ShaderForge.SFN_Relay,id:1663,x:31903,y:34457,varname:node_1663,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Relay,id:7712,x:31805,y:33114,varname:node_7712,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Relay,id:6531,x:31764,y:32237,varname:node_6531,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Multiply,id:4497,x:33112,y:33097,varname:node_4497,prsc:2|A-358-OUT,B-4463-OUT;n:type:ShaderForge.SFN_Relay,id:4463,x:30585,y:32689,varname:node_4463,prsc:2|IN-8415-G;n:type:ShaderForge.SFN_Lerp,id:7433,x:33336,y:33085,cmnt:Metal red vtx blend,varname:node_7433,prsc:2|A-4497-OUT,B-6633-OUT,T-1071-OUT;n:type:ShaderForge.SFN_Vector1,id:6633,x:33112,y:32965,varname:node_6633,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:1071,x:33105,y:33407,varname:node_1071,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Slider,id:5084,x:33392,y:34295,ptovrint:False,ptlb:EdgeLength,ptin:_EdgeLength,varname:node_5084,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:2,cur:2,max:50;n:type:ShaderForge.SFN_Lerp,id:5594,x:32919,y:34603,varname:node_5594,prsc:2|A-4732-OUT,B-3063-OUT,T-9369-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3673,x:32466,y:34659,ptovrint:False,ptlb:TessMidPoint,ptin:_TessMidPoint,varname:node_3673,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Subtract,id:3063,x:32726,y:34603,varname:node_3063,prsc:2|A-7736-A,B-3673-OUT;n:type:ShaderForge.SFN_Slider,id:9369,x:32550,y:34833,ptovrint:False,ptlb:Displacement,ptin:_Displacement,varname:node_9369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:1;n:type:ShaderForge.SFN_Vector1,id:4732,x:32684,y:34425,varname:node_4732,prsc:2,v1:0;n:type:ShaderForge.SFN_NormalVector,id:6240,x:32919,y:34414,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:1227,x:33115,y:34603,varname:node_1227,prsc:2|A-6240-OUT,B-5594-OUT;n:type:ShaderForge.SFN_TexCoord,id:1306,x:29644,y:30352,varname:node_1306,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:6206,x:29873,y:30584,varname:node_6206,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:8993,x:30218,y:30419,varname:node_8993,prsc:2|A-1306-UVOUT,B-6206-OUT;n:type:ShaderForge.SFN_Frac,id:3388,x:30218,y:30562,varname:node_3388,prsc:2|IN-3930-OUT;n:type:ShaderForge.SFN_Add,id:31,x:30553,y:30405,varname:node_31,prsc:2|A-8993-OUT,B-1112-OUT;n:type:ShaderForge.SFN_Divide,id:652,x:30387,y:30562,varname:node_652,prsc:2|A-3388-OUT,B-6206-OUT;n:type:ShaderForge.SFN_Add,id:7345,x:30553,y:30562,varname:node_7345,prsc:2|A-652-OUT,B-1112-OUT;n:type:ShaderForge.SFN_Vector1,id:3626,x:30553,y:30696,varname:node_3626,prsc:2,v1:0.9375;n:type:ShaderForge.SFN_Multiply,id:2602,x:30723,y:30579,varname:node_2602,prsc:2|A-7345-OUT,B-3626-OUT;n:type:ShaderForge.SFN_Add,id:593,x:30913,y:30596,varname:node_593,prsc:2|A-2602-OUT,B-4316-OUT;n:type:ShaderForge.SFN_Vector2,id:1977,x:30443,y:30904,varname:node_1977,prsc:2,v1:0.015625,v2:0.015625;n:type:ShaderForge.SFN_Code,id:1837,x:31238,y:30571,varname:node_1837,prsc:2,code:cgBlAHQAdQByAG4AIAB0AGUAeAAyAEQAZwByAGEAZAAgACgAUwBhAG0AcABsAGUAcgAsACAARgByAGEAYwBDAG8AbwByAGQAcwAsACAAZABkAHgAKABDAG8AbwByAGQAcwApACwAIABkAGQAeQAoAEMAbwBvAHIAZABzACkAKQA7AA==,output:3,fname:AtlasSampler,width:247,height:112,input:1,input:1,input:12,input_1_label:Coords,input_2_label:FracCoords,input_3_label:Sampler|A-31-OUT,B-593-OUT,C-6192-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6192,x:30924,y:30773,ptovrint:False,ptlb:BlendDiffuse2,ptin:_BlendDiffuse2,varname:node_4189,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3930,x:29873,y:30420,varname:node_3930,prsc:2|A-1306-UVOUT,B-5943-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3792,x:31575,y:30484,varname:node_3792,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-1837-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5943,x:29644,y:30533,ptovrint:False,ptlb:BlendDiffuseScale,ptin:_BlendDiffuseScale,varname:node_7130,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_ComponentMask,id:4756,x:31575,y:30671,varname:node_4756,prsc:2,cc1:3,cc2:-1,cc3:-1,cc4:-1|IN-1837-OUT;n:type:ShaderForge.SFN_Fmod,id:7055,x:29535,y:30770,varname:node_7055,prsc:2|A-4264-OUT,B-8622-OUT;n:type:ShaderForge.SFN_Vector1,id:8622,x:29364,y:30930,varname:node_8622,prsc:2,v1:2;n:type:ShaderForge.SFN_Clamp01,id:4633,x:29732,y:30930,varname:node_4633,prsc:2|IN-4755-OUT;n:type:ShaderForge.SFN_Subtract,id:4755,x:29557,y:30930,varname:node_4755,prsc:2|A-4264-OUT,B-490-OUT;n:type:ShaderForge.SFN_Vector1,id:490,x:29364,y:31011,varname:node_490,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:2364,x:29947,y:30840,varname:node_2364,prsc:2|A-7055-OUT,B-4633-OUT;n:type:ShaderForge.SFN_Multiply,id:510,x:30124,y:30805,varname:node_510,prsc:2|A-9956-OUT,B-2364-OUT;n:type:ShaderForge.SFN_Vector1,id:9956,x:29947,y:30754,varname:node_9956,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:7262,x:30161,y:30991,varname:node_7262,prsc:2|A-2364-OUT,B-5675-OUT;n:type:ShaderForge.SFN_Vector1,id:5675,x:29960,y:31025,varname:node_5675,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:4316,x:30712,y:30974,varname:node_4316,prsc:2|A-1977-OUT,B-8237-OUT;n:type:ShaderForge.SFN_Relay,id:1112,x:30368,y:30802,varname:node_1112,prsc:2|IN-510-OUT;n:type:ShaderForge.SFN_Code,id:3396,x:31198,y:30931,varname:node_3396,prsc:2,code:cgBlAHQAdQByAG4AIAB0AGUAeAAyAEQAZwByAGEAZAAgACgAUwBhAG0AcABsAGUAcgAsACAARgByAGEAYwBDAG8AbwByAGQAcwAsACAAZABkAHgAKABDAG8AbwByAGQAcwApACwAIABkAGQAeQAoAEMAbwBvAHIAZABzACkAKQA7AA==,output:2,fname:AtlasSamplerNormal,width:247,height:112,input:1,input:1,input:12,input_1_label:Coords,input_2_label:FracCoords,input_3_label:Sampler|A-31-OUT,B-593-OUT,C-5399-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:5399,x:30952,y:31013,ptovrint:False,ptlb:BlendNormal2,ptin:_BlendNormal2,varname:_BlendDiffuse3,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Set,id:123,x:31715,y:30940,varname:node_123,prsc:2|IN-7365-OUT;n:type:ShaderForge.SFN_RemapRange,id:7365,x:31542,y:31046,varname:node_7365,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3396-OUT;n:type:ShaderForge.SFN_TexCoord,id:2393,x:29146,y:30442,varname:node_2393,prsc:2,uv:2;n:type:ShaderForge.SFN_Add,id:8237,x:30376,y:31056,varname:node_8237,prsc:2|A-7262-OUT,B-1577-OUT;n:type:ShaderForge.SFN_Vector1,id:1577,x:30129,y:31143,varname:node_1577,prsc:2,v1:1;n:type:ShaderForge.SFN_VertexColor,id:7812,x:27815,y:30515,varname:node_7812,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1912,x:28564,y:30695,varname:node_1912,prsc:2|A-7812-A,B-5880-OUT,C-5021-OUT;n:type:ShaderForge.SFN_Vector1,id:5880,x:28045,y:30763,varname:node_5880,prsc:2,v1:4;n:type:ShaderForge.SFN_Round,id:4264,x:28980,y:30613,varname:node_4264,prsc:2|IN-1912-OUT;n:type:ShaderForge.SFN_Frac,id:8308,x:28805,y:30949,varname:node_8308,prsc:2|IN-1912-OUT;n:type:ShaderForge.SFN_RemapRange,id:2241,x:28983,y:31024,varname:node_2241,prsc:2,frmn:0.24,frmx:0.26,tomn:0,tomx:1|IN-8308-OUT;n:type:ShaderForge.SFN_Clamp01,id:6752,x:29164,y:31087,varname:node_6752,prsc:2|IN-2241-OUT;n:type:ShaderForge.SFN_Get,id:3615,x:32492,y:33728,varname:node_3615,prsc:2|IN-123-OUT;n:type:ShaderForge.SFN_Color,id:5847,x:30657,y:31554,ptovrint:False,ptlb:TintColor2,ptin:_TintColor2,varname:_TintColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:972,x:30873,y:31465,varname:node_972,prsc:2|A-1664-RGB,B-5847-RGB,T-6752-OUT;n:type:ShaderForge.SFN_Floor,id:6656,x:28168,y:30377,varname:node_6656,prsc:2|IN-8642-OUT;n:type:ShaderForge.SFN_OneMinus,id:5021,x:28321,y:30377,varname:node_5021,prsc:2|IN-6656-OUT;n:type:ShaderForge.SFN_Add,id:8642,x:28010,y:30373,varname:node_8642,prsc:2|A-9784-OUT,B-7812-A;n:type:ShaderForge.SFN_Vector1,id:9784,x:27831,y:30407,varname:node_9784,prsc:2,v1:0.1;proporder:7736-5964-8415-6665-1664-5847-358-1813-2605-7407-5084-3673-9369-6192-5943-5399;pass:END;sub:END;*/

Shader "CW3/EnvironmentBlendTesselation" {
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
        _EdgeLength ("EdgeLength", Range(2, 50)) = 2
        _TessMidPoint ("TessMidPoint", Float ) = 0
        _Displacement ("Displacement", Range(0, 1)) = 0.3
        _BlendDiffuse2 ("BlendDiffuse2", 2D) = "white" {}
        _BlendDiffuseScale ("BlendDiffuseScale", Float ) = 8
        _BlendNormal2 ("BlendNormal2", 2D) = "bump" {}
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
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
            #pragma target 5.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            uniform float _EdgeLength;
            uniform float _TessMidPoint;
            uniform float _Displacement;
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
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                    float4 vertexColor : COLOR;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    o.vertexColor = v.vertexColor;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _MainTex_var = tex2Dlod(_MainTex,float4(TRANSFORM_TEX(v.texcoord0, _MainTex),0.0,0));
                    v.vertex.xyz += (v.normal*lerp(0.0,(_MainTex_var.a-_TessMidPoint),_Displacement));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    return UnityEdgeLengthBasedTess(v.vertex, v1.vertex, v2.vertex, _EdgeLength);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    v.vertexColor = vi[0].vertexColor*bary.x + vi[1].vertexColor*bary.y + vi[2].vertexColor*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
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
                float node_6206 = 2.0;
                float node_1912 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float node_4264 = round(node_1912);
                float2 node_2364 = float2(fmod(node_4264,2.0),saturate((node_4264-1.0)));
                float2 node_1112 = (0.5*node_2364);
                float2 node_31 = ((i.uv0/node_6206)+node_1112);
                float2 node_593 = ((((frac((i.uv0*_BlendDiffuseScale))/node_6206)+node_1112)*0.9375)+(float2(0.015625,0.015625)*((node_2364*2.0)+1.0)));
                float3 node_123 = (AtlasSamplerNormal( node_31 , node_593 , _BlendNormal2 )*2.0+-1.0);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_5955 = saturate((saturate(( (saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 normalLocal = lerp(_BumpMap_var.rgb,node_123,node_5955);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 node_1837 = AtlasSampler( node_31 , node_593 , _BlendDiffuse2 );
                float gloss = lerp(lerp((_Glossiness*_Mask_var.r),node_1837.a,node_5955),1.0,i.vertexColor.g);
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0)))-0.5))*(1.0-(_MainTex_var.rgb*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0)))*(_MainTex_var.rgb*_Color.rgb))) ),node_1837.rgb,node_5955); // Need this for specular when using metallic
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            uniform float _EdgeLength;
            uniform float _TessMidPoint;
            uniform float _Displacement;
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
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                    float4 vertexColor : COLOR;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    o.vertexColor = v.vertexColor;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _MainTex_var = tex2Dlod(_MainTex,float4(TRANSFORM_TEX(v.texcoord0, _MainTex),0.0,0));
                    v.vertex.xyz += (v.normal*lerp(0.0,(_MainTex_var.a-_TessMidPoint),_Displacement));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    return UnityEdgeLengthBasedTess(v.vertex, v1.vertex, v2.vertex, _EdgeLength);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    v.vertexColor = vi[0].vertexColor*bary.x + vi[1].vertexColor*bary.y + vi[2].vertexColor*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float node_6206 = 2.0;
                float node_1912 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float node_4264 = round(node_1912);
                float2 node_2364 = float2(fmod(node_4264,2.0),saturate((node_4264-1.0)));
                float2 node_1112 = (0.5*node_2364);
                float2 node_31 = ((i.uv0/node_6206)+node_1112);
                float2 node_593 = ((((frac((i.uv0*_BlendDiffuseScale))/node_6206)+node_1112)*0.9375)+(float2(0.015625,0.015625)*((node_2364*2.0)+1.0)));
                float3 node_123 = (AtlasSamplerNormal( node_31 , node_593 , _BlendNormal2 )*2.0+-1.0);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_5955 = saturate((saturate(( (saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 normalLocal = lerp(_BumpMap_var.rgb,node_123,node_5955);
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
                float4 node_1837 = AtlasSampler( node_31 , node_593 , _BlendDiffuse2 );
                float gloss = lerp(lerp((_Glossiness*_Mask_var.r),node_1837.a,node_5955),1.0,i.vertexColor.g);
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0)))-0.5))*(1.0-(_MainTex_var.rgb*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0)))*(_MainTex_var.rgb*_Color.rgb))) ),node_1837.rgb,node_5955); // Need this for specular when using metallic
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            uniform float _EdgeLength;
            uniform float _TessMidPoint;
            uniform float _Displacement;
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
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                    float4 vertexColor : COLOR;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    o.vertexColor = v.vertexColor;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _MainTex_var = tex2Dlod(_MainTex,float4(TRANSFORM_TEX(v.texcoord0, _MainTex),0.0,0));
                    v.vertex.xyz += (v.normal*lerp(0.0,(_MainTex_var.a-_TessMidPoint),_Displacement));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    return UnityEdgeLengthBasedTess(v.vertex, v1.vertex, v2.vertex, _EdgeLength);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    v.vertexColor = vi[0].vertexColor*bary.x + vi[1].vertexColor*bary.y + vi[2].vertexColor*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float node_6206 = 2.0;
                float node_1912 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float node_4264 = round(node_1912);
                float2 node_2364 = float2(fmod(node_4264,2.0),saturate((node_4264-1.0)));
                float2 node_1112 = (0.5*node_2364);
                float2 node_31 = ((i.uv0/node_6206)+node_1112);
                float2 node_593 = ((((frac((i.uv0*_BlendDiffuseScale))/node_6206)+node_1112)*0.9375)+(float2(0.015625,0.015625)*((node_2364*2.0)+1.0)));
                float3 node_123 = (AtlasSamplerNormal( node_31 , node_593 , _BlendNormal2 )*2.0+-1.0);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_5955 = saturate((saturate(( (saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 normalLocal = lerp(_BumpMap_var.rgb,node_123,node_5955);
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
                float4 node_1837 = AtlasSampler( node_31 , node_593 , _BlendDiffuse2 );
                float gloss = lerp(lerp((_Glossiness*_Mask_var.r),node_1837.a,node_5955),1.0,i.vertexColor.g);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = lerp((_Metallic*_Mask_var.g),0.0,node_5955);
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0)))-0.5))*(1.0-(_MainTex_var.rgb*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0)))*(_MainTex_var.rgb*_Color.rgb))) ),node_1837.rgb,node_5955); // Need this for specular when using metallic
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 5.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _EdgeLength;
            uniform float _TessMidPoint;
            uniform float _Displacement;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
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
                float3 normalDir : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _MainTex_var = tex2Dlod(_MainTex,float4(TRANSFORM_TEX(v.texcoord0, _MainTex),0.0,0));
                    v.vertex.xyz += (v.normal*lerp(0.0,(_MainTex_var.a-_TessMidPoint),_Displacement));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    return UnityEdgeLengthBasedTess(v.vertex, v1.vertex, v2.vertex, _EdgeLength);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
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
            #pragma target 5.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            uniform float _EdgeLength;
            uniform float _TessMidPoint;
            uniform float _Displacement;
            float4 AtlasSampler( float2 Coords , float2 FracCoords , sampler2D Sampler ){
            return tex2Dgrad (Sampler, FracCoords, ddx(Coords), ddy(Coords));
            }
            
            uniform sampler2D _BlendDiffuse2; uniform float4 _BlendDiffuse2_ST;
            uniform float _BlendDiffuseScale;
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
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                    float4 vertexColor : COLOR;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    o.vertexColor = v.vertexColor;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 _MainTex_var = tex2Dlod(_MainTex,float4(TRANSFORM_TEX(v.texcoord0, _MainTex),0.0,0));
                    v.vertex.xyz += (v.normal*lerp(0.0,(_MainTex_var.a-_TessMidPoint),_Displacement));
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    return UnityEdgeLengthBasedTess(v.vertex, v1.vertex, v2.vertex, _EdgeLength);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    v.vertexColor = vi[0].vertexColor*bary.x + vi[1].vertexColor*bary.y + vi[2].vertexColor*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_1912 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_6206 = 2.0;
                float node_4264 = round(node_1912);
                float2 node_2364 = float2(fmod(node_4264,2.0),saturate((node_4264-1.0)));
                float2 node_1112 = (0.5*node_2364);
                float2 node_31 = ((i.uv0/node_6206)+node_1112);
                float2 node_593 = ((((frac((i.uv0*_BlendDiffuseScale))/node_6206)+node_1112)*0.9375)+(float2(0.015625,0.015625)*((node_2364*2.0)+1.0)));
                float4 node_1837 = AtlasSampler( node_31 , node_593 , _BlendDiffuse2 );
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_5955 = saturate((saturate(( (saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((i.normalDir.g*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 diffColor = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0)))-0.5))*(1.0-(_MainTex_var.rgb*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_1912)*50.00001+-12.0)))*(_MainTex_var.rgb*_Color.rgb))) ),node_1837.rgb,node_5955);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, lerp((_Metallic*_Mask_var.g),0.0,node_5955), specColor, specularMonochrome );
                float roughness = 1.0 - lerp(lerp((_Glossiness*_Mask_var.r),node_1837.a,node_5955),1.0,i.vertexColor.g);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "CW3/EnvironmentBlendStandard"
    CustomEditor "ShaderForgeMaterialInspector"
}
