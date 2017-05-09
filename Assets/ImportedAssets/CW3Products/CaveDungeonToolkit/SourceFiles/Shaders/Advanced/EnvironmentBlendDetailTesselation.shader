// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:CW3/EnvironmentBlendDetail,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:1,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33873,y:33170,varname:node_2865,prsc:2|diff-9913-OUT,spec-7433-OUT,gloss-2186-OUT,normal-8912-OUT,disp-5307-OUT,tess-2484-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:31739,y:31796,cmnt:Mult color,varname:node_6343,prsc:2|A-4748-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31473,y:31583,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:30719,y:31563,ptovrint:True,ptlb:MainAlbedo,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32140,y:33757,ptovrint:True,ptlb:Main Normal,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:32796,y:32988,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:31903,y:32619,ptovrint:False,ptlb:Glossiness,ptin:_Glossiness,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Tex2d,id:8415,x:30126,y:32600,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_8415,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c891eb43d08833549991ef43d153e71c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6060,x:32327,y:32646,varname:node_6060,prsc:2|A-1813-OUT,B-545-OUT;n:type:ShaderForge.SFN_Tex2d,id:1035,x:31040,y:31571,ptovrint:False,ptlb:DetailAlbedo,ptin:_DetailAlbedo,varname:node_1035,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Blend,id:4748,x:31413,y:31790,cmnt:Detail and main overlay mix,varname:node_4748,prsc:2,blmd:10,clmp:False|SRC-3208-OUT,DST-1035-RGB;n:type:ShaderForge.SFN_NormalBlend,id:1848,x:32366,y:33993,cmnt:Detail plus Main Normal,varname:node_1848,prsc:2|BSE-5964-RGB,DTL-1538-OUT;n:type:ShaderForge.SFN_Tex2d,id:564,x:31822,y:33751,ptovrint:False,ptlb:Detail Normal,ptin:_DetailNormal,varname:node_564,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:1538,x:32044,y:33986,cmnt:Detail strength,varname:node_1538,prsc:2|A-564-RGB,B-7878-OUT,T-4665-OUT;n:type:ShaderForge.SFN_Vector3,id:7878,x:31822,y:33951,varname:node_7878,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:3208,x:31158,y:31790,cmnt:Intensity of main overlay,varname:node_3208,prsc:2|A-6037-OUT,B-7736-RGB,T-2800-OUT;n:type:ShaderForge.SFN_Vector3,id:6037,x:30875,y:31747,varname:node_6037,prsc:2,v1:0.5,v2:0.5,v3:0.5;n:type:ShaderForge.SFN_Slider,id:6161,x:30592,y:31955,ptovrint:False,ptlb:OverlayIntensity,ptin:_OverlayIntensity,varname:node_6161,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_NormalVector,id:4240,x:28873,y:32469,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:873,x:29050,y:32469,varname:node_873,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4240-OUT;n:type:ShaderForge.SFN_RemapRange,id:743,x:29262,y:32354,cmnt:Up Normal output for detail blend,varname:node_743,prsc:2,frmn:-1,frmx:1,tomn:5,tomx:0|IN-873-OUT;n:type:ShaderForge.SFN_Clamp01,id:5666,x:30406,y:31827,varname:node_5666,prsc:2|IN-1947-OUT;n:type:ShaderForge.SFN_Multiply,id:2800,x:30960,y:31847,varname:node_2800,prsc:2|A-5666-OUT,B-6161-OUT;n:type:ShaderForge.SFN_Slider,id:6442,x:29693,y:31897,ptovrint:False,ptlb:DirectionalIntensityOverlay,ptin:_DirectionalIntensityOverlay,varname:node_6442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:1947,x:30192,y:31877,varname:node_1947,prsc:2|A-6442-OUT,B-743-OUT;n:type:ShaderForge.SFN_Blend,id:6899,x:32228,y:31731,cmnt:Tint color,varname:node_6899,prsc:2,blmd:12,clmp:True|SRC-7679-OUT,DST-6343-OUT;n:type:ShaderForge.SFN_Color,id:1664,x:31722,y:31337,ptovrint:False,ptlb:TintColor,ptin:_TintColor,varname:node_1664,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:9913,x:32609,y:31780,cmnt:Diffuse red vtx blend,varname:node_9913,prsc:2|A-6899-OUT,B-2683-OUT,T-6531-OUT;n:type:ShaderForge.SFN_VertexColor,id:9332,x:30664,y:33634,varname:node_9332,prsc:2;n:type:ShaderForge.SFN_Lerp,id:8912,x:32695,y:33985,cmnt:Normal red vtx blend,varname:node_8912,prsc:2|A-1848-OUT,B-165-OUT,T-1663-OUT;n:type:ShaderForge.SFN_Lerp,id:8234,x:32580,y:32712,cmnt:Gloss red vtx blend,varname:node_8234,prsc:2|A-6060-OUT,B-7792-OUT,T-7712-OUT;n:type:ShaderForge.SFN_Lerp,id:2186,x:32796,y:32737,cmnt:Gloss green vtx blend,varname:node_2186,prsc:2|A-8234-OUT,B-3652-OUT,T-8472-OUT;n:type:ShaderForge.SFN_Vector1,id:3652,x:32591,y:32842,varname:node_3652,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4852,x:30931,y:33494,cmnt:Vertex colors mixed with up normal,varname:node_4852,prsc:2|A-4326-OUT,B-9332-R;n:type:ShaderForge.SFN_Add,id:5158,x:29917,y:33457,varname:node_5158,prsc:2|A-6950-OUT,B-2605-OUT;n:type:ShaderForge.SFN_Slider,id:2605,x:29576,y:33482,ptovrint:False,ptlb:BlendUpFactor,ptin:_BlendUpFactor,varname:node_2605,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Clamp01,id:4326,x:30090,y:33457,varname:node_4326,prsc:2|IN-5158-OUT;n:type:ShaderForge.SFN_RemapRange,id:4260,x:31367,y:33410,cmnt:VTX colors  env blend  up normal out,varname:node_4260,prsc:2,frmn:0.4,frmx:0.5,tomn:0,tomx:1|IN-6281-OUT;n:type:ShaderForge.SFN_Blend,id:6281,x:31186,y:33410,varname:node_6281,prsc:2,blmd:10,clmp:True|SRC-253-OUT,DST-4852-OUT;n:type:ShaderForge.SFN_Lerp,id:253,x:30948,y:33074,varname:node_253,prsc:2|A-5382-OUT,B-733-OUT,T-7407-OUT;n:type:ShaderForge.SFN_Slider,id:7407,x:30618,y:33143,ptovrint:False,ptlb:BlendMaskIntensity,ptin:_BlendMaskIntensity,varname:node_7407,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:5382,x:30692,y:32990,varname:node_5382,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:5955,x:31537,y:33410,varname:node_5955,prsc:2|IN-4260-OUT;n:type:ShaderForge.SFN_RemapRange,id:6950,x:29262,y:32538,cmnt:Up Normal output for vertex colors,varname:node_6950,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-873-OUT;n:type:ShaderForge.SFN_Relay,id:545,x:30589,y:32551,varname:node_545,prsc:2|IN-8415-R;n:type:ShaderForge.SFN_Relay,id:7806,x:30366,y:34034,varname:node_7806,prsc:2|IN-8415-B;n:type:ShaderForge.SFN_Relay,id:733,x:30474,y:33084,varname:node_733,prsc:2|IN-8415-A;n:type:ShaderForge.SFN_Relay,id:8472,x:32689,y:33658,varname:node_8472,prsc:2|IN-9332-G;n:type:ShaderForge.SFN_Relay,id:1663,x:31903,y:34457,varname:node_1663,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Relay,id:7712,x:31805,y:33114,varname:node_7712,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Relay,id:6531,x:31764,y:32237,varname:node_6531,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Multiply,id:4497,x:33112,y:33097,varname:node_4497,prsc:2|A-358-OUT,B-4463-OUT;n:type:ShaderForge.SFN_Relay,id:4463,x:30585,y:32689,varname:node_4463,prsc:2|IN-8415-G;n:type:ShaderForge.SFN_Lerp,id:7433,x:33336,y:33085,cmnt:Metal red vtx blend,varname:node_7433,prsc:2|A-4497-OUT,B-6633-OUT,T-1071-OUT;n:type:ShaderForge.SFN_Vector1,id:6633,x:33112,y:32965,varname:node_6633,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:1071,x:33105,y:33407,varname:node_1071,prsc:2|IN-5955-OUT;n:type:ShaderForge.SFN_Add,id:3920,x:30765,y:33981,varname:node_3920,prsc:2|A-8688-OUT,B-7806-OUT;n:type:ShaderForge.SFN_Slider,id:8688,x:30420,y:33909,ptovrint:False,ptlb:DetailNormalStrength,ptin:_DetailNormalStrength,varname:node_8688,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:6486,x:29276,y:32738,cmnt:r detail blendut for detail normal,varname:node_6486,prsc:2,frmn:-1,frmx:1,tomn:5,tomx:0|IN-873-OUT;n:type:ShaderForge.SFN_Clamp01,id:8790,x:30798,y:34216,varname:node_8790,prsc:2|IN-1525-OUT;n:type:ShaderForge.SFN_Slider,id:3805,x:30270,y:34298,ptovrint:False,ptlb:DirectionalIntensityNormal,ptin:_DirectionalIntensityNormal,varname:_DirectionalIntensityOverlay_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4089549,max:1;n:type:ShaderForge.SFN_Add,id:1525,x:30631,y:34216,varname:node_1525,prsc:2|A-3805-OUT,B-4490-OUT;n:type:ShaderForge.SFN_Relay,id:4490,x:29448,y:34144,varname:node_4490,prsc:2|IN-6486-OUT;n:type:ShaderForge.SFN_OneMinus,id:6904,x:30969,y:34231,varname:node_6904,prsc:2|IN-8790-OUT;n:type:ShaderForge.SFN_Clamp01,id:4665,x:31410,y:33943,varname:node_4665,prsc:2|IN-6746-OUT;n:type:ShaderForge.SFN_Add,id:6746,x:31182,y:33990,varname:node_6746,prsc:2|A-3920-OUT,B-6904-OUT;n:type:ShaderForge.SFN_Slider,id:2484,x:33248,y:34044,ptovrint:False,ptlb:EdgeLength,ptin:_EdgeLength,varname:node_5084,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:2,cur:2,max:50;n:type:ShaderForge.SFN_Lerp,id:7693,x:33044,y:34544,varname:node_7693,prsc:2|A-9392-OUT,B-4704-OUT,T-2185-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5496,x:32591,y:34600,ptovrint:False,ptlb:TessMidPoint,ptin:_TessMidPoint,varname:node_3673,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Subtract,id:4704,x:32851,y:34544,varname:node_4704,prsc:2|A-2634-OUT,B-5496-OUT;n:type:ShaderForge.SFN_Slider,id:2185,x:32675,y:34774,ptovrint:False,ptlb:Displacement,ptin:_Displacement,varname:node_9369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:1;n:type:ShaderForge.SFN_Vector1,id:9392,x:32809,y:34366,varname:node_9392,prsc:2,v1:0;n:type:ShaderForge.SFN_NormalVector,id:2505,x:33044,y:34355,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:5307,x:33342,y:34516,varname:node_5307,prsc:2|A-2505-OUT,B-7693-OUT;n:type:ShaderForge.SFN_TexCoord,id:2530,x:29452,y:30160,varname:node_2530,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:1807,x:29681,y:30392,varname:node_1807,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:5981,x:30026,y:30227,varname:node_5981,prsc:2|A-2530-UVOUT,B-1807-OUT;n:type:ShaderForge.SFN_Frac,id:4088,x:30026,y:30370,varname:node_4088,prsc:2|IN-6577-OUT;n:type:ShaderForge.SFN_Add,id:1622,x:30361,y:30213,varname:node_1622,prsc:2|A-5981-OUT,B-5442-OUT;n:type:ShaderForge.SFN_Divide,id:1838,x:30195,y:30370,varname:node_1838,prsc:2|A-4088-OUT,B-1807-OUT;n:type:ShaderForge.SFN_Add,id:6943,x:30361,y:30370,varname:node_6943,prsc:2|A-1838-OUT,B-5442-OUT;n:type:ShaderForge.SFN_Vector1,id:3591,x:30361,y:30504,varname:node_3591,prsc:2,v1:0.9375;n:type:ShaderForge.SFN_Multiply,id:4150,x:30531,y:30387,varname:node_4150,prsc:2|A-6943-OUT,B-3591-OUT;n:type:ShaderForge.SFN_Add,id:7533,x:30721,y:30404,varname:node_7533,prsc:2|A-4150-OUT,B-7955-OUT;n:type:ShaderForge.SFN_Vector2,id:6984,x:30251,y:30712,varname:node_6984,prsc:2,v1:0.015625,v2:0.015625;n:type:ShaderForge.SFN_Clamp01,id:1491,x:33873,y:33306,varname:node_1491,prsc:2;n:type:ShaderForge.SFN_Code,id:3502,x:31046,y:30379,varname:node_3502,prsc:2,code:cgBlAHQAdQByAG4AIAB0AGUAeAAyAEQAZwByAGEAZAAgACgAUwBhAG0AcABsAGUAcgAsACAARgByAGEAYwBDAG8AbwByAGQAcwAsACAAZABkAHgAKABDAG8AbwByAGQAcwApACwAIABkAGQAeQAoAEMAbwBvAHIAZABzACkAKQA7AA==,output:3,fname:AtlasSampler,width:247,height:112,input:1,input:1,input:12,input_1_label:Coords,input_2_label:FracCoords,input_3_label:Sampler|A-1622-OUT,B-7533-OUT,C-4189-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4189,x:30732,y:30581,ptovrint:False,ptlb:BlendDiffuse2,ptin:_BlendDiffuse2,varname:node_4189,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6577,x:29681,y:30228,varname:node_6577,prsc:2|A-2530-UVOUT,B-7130-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2683,x:31383,y:30292,varname:node_2683,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-3502-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7130,x:29452,y:30341,ptovrint:False,ptlb:BlendDiffuseScale,ptin:_BlendDiffuseScale,varname:node_7130,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_ComponentMask,id:7792,x:31383,y:30479,varname:node_7792,prsc:2,cc1:3,cc2:-1,cc3:-1,cc4:-1|IN-3502-OUT;n:type:ShaderForge.SFN_Fmod,id:4964,x:29343,y:30578,varname:node_4964,prsc:2|A-8590-OUT,B-9450-OUT;n:type:ShaderForge.SFN_Vector1,id:9450,x:29172,y:30738,varname:node_9450,prsc:2,v1:2;n:type:ShaderForge.SFN_Clamp01,id:190,x:29540,y:30738,varname:node_190,prsc:2|IN-341-OUT;n:type:ShaderForge.SFN_Subtract,id:341,x:29365,y:30738,varname:node_341,prsc:2|A-8590-OUT,B-4059-OUT;n:type:ShaderForge.SFN_Vector1,id:4059,x:29172,y:30819,varname:node_4059,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:8842,x:29755,y:30648,varname:node_8842,prsc:2|A-4964-OUT,B-190-OUT;n:type:ShaderForge.SFN_Multiply,id:8513,x:29932,y:30613,varname:node_8513,prsc:2|A-6865-OUT,B-8842-OUT;n:type:ShaderForge.SFN_Vector1,id:6865,x:29755,y:30562,varname:node_6865,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:8045,x:29969,y:30799,varname:node_8045,prsc:2|A-8842-OUT,B-3036-OUT;n:type:ShaderForge.SFN_Vector1,id:3036,x:29768,y:30833,varname:node_3036,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:7955,x:30520,y:30782,varname:node_7955,prsc:2|A-6984-OUT,B-871-OUT;n:type:ShaderForge.SFN_Relay,id:5442,x:30176,y:30610,varname:node_5442,prsc:2|IN-8513-OUT;n:type:ShaderForge.SFN_Code,id:2593,x:31006,y:30739,varname:node_2593,prsc:2,code:cgBlAHQAdQByAG4AIAB0AGUAeAAyAEQAZwByAGEAZAAgACgAUwBhAG0AcABsAGUAcgAsACAARgByAGEAYwBDAG8AbwByAGQAcwAsACAAZABkAHgAKABDAG8AbwByAGQAcwApACwAIABkAGQAeQAoAEMAbwBvAHIAZABzACkAKQA7AA==,output:2,fname:AtlasSamplerNormal,width:247,height:112,input:1,input:1,input:12,input_1_label:Coords,input_2_label:FracCoords,input_3_label:Sampler|A-1622-OUT,B-7533-OUT,C-9139-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9139,x:30760,y:30821,ptovrint:False,ptlb:BlendNormal2,ptin:_BlendNormal2,varname:_BlendDiffuse3,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Set,id:4450,x:31523,y:30748,varname:BlendNormal,prsc:2|IN-9550-OUT;n:type:ShaderForge.SFN_Get,id:165,x:32492,y:33701,varname:node_165,prsc:2|IN-4450-OUT;n:type:ShaderForge.SFN_RemapRange,id:9550,x:31350,y:30854,varname:node_9550,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2593-OUT;n:type:ShaderForge.SFN_TexCoord,id:9533,x:28954,y:30250,varname:node_9533,prsc:2,uv:2;n:type:ShaderForge.SFN_Add,id:871,x:30184,y:30864,varname:node_871,prsc:2|A-8045-OUT,B-6994-OUT;n:type:ShaderForge.SFN_Vector1,id:6994,x:29937,y:30951,varname:node_6994,prsc:2,v1:1;n:type:ShaderForge.SFN_Set,id:8360,x:31356,y:31329,varname:Heightmap,prsc:2|IN-1382-OUT;n:type:ShaderForge.SFN_Get,id:2634,x:32606,y:34318,varname:node_2634,prsc:2|IN-8360-OUT;n:type:ShaderForge.SFN_VertexColor,id:266,x:27752,y:30479,varname:node_266,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9994,x:28520,y:30512,varname:node_9994,prsc:2|A-266-A,B-2538-OUT,C-2902-OUT;n:type:ShaderForge.SFN_Vector1,id:2538,x:28320,y:30574,varname:node_2538,prsc:2,v1:4;n:type:ShaderForge.SFN_Round,id:8590,x:28788,y:30421,varname:node_8590,prsc:2|IN-9994-OUT;n:type:ShaderForge.SFN_Color,id:5695,x:31722,y:31515,ptovrint:False,ptlb:TintColor2,ptin:_TintColor2,varname:_TintColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:7679,x:31958,y:31470,varname:node_7679,prsc:2|A-1664-RGB,B-5695-RGB,T-6178-OUT;n:type:ShaderForge.SFN_Frac,id:2613,x:28613,y:30757,varname:node_2613,prsc:2|IN-9994-OUT;n:type:ShaderForge.SFN_RemapRange,id:8134,x:28791,y:30832,varname:node_8134,prsc:2,frmn:0.24,frmx:0.26,tomn:0,tomx:1|IN-2613-OUT;n:type:ShaderForge.SFN_Clamp01,id:6178,x:28972,y:30895,varname:node_6178,prsc:2|IN-8134-OUT;n:type:ShaderForge.SFN_Tangent,id:5801,x:33071,y:34186,varname:node_5801,prsc:2;n:type:ShaderForge.SFN_Floor,id:5511,x:28104,y:30313,varname:node_5511,prsc:2|IN-9370-OUT;n:type:ShaderForge.SFN_OneMinus,id:2902,x:28257,y:30313,varname:node_2902,prsc:2|IN-5511-OUT;n:type:ShaderForge.SFN_Add,id:9370,x:27946,y:30309,varname:node_9370,prsc:2|A-7326-OUT,B-266-A;n:type:ShaderForge.SFN_Vector1,id:7326,x:27767,y:30343,varname:node_7326,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Lerp,id:1382,x:31226,y:31401,varname:node_1382,prsc:2|A-7736-A,B-1035-A,T-6679-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:6679,x:30914,y:31315,ptovrint:False,ptlb:IsIce,ptin:_IsIce,varname:node_6679,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_FaceSign,id:2099,x:32573,y:32266,varname:node_2099,prsc:2,fstp:0;n:type:ShaderForge.SFN_Multiply,id:52,x:32786,y:31880,varname:node_52,prsc:2|A-9913-OUT,B-2099-VFACE;proporder:7736-5964-8415-6665-1664-5695-358-1813-1035-564-6161-6442-2605-7407-8688-3805-2484-5496-2185-4189-7130-9139-6679;pass:END;sub:END;*/

Shader "CW3/EnvironmentBlendDetailTesselation" {
    Properties {
        _MainTex ("MainAlbedo", 2D) = "white" {}
        _BumpMap ("Main Normal", 2D) = "bump" {}
        _Mask ("Mask", 2D) = "white" {}
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _TintColor ("TintColor", Color) = (0.5,0.5,0.5,1)
        _TintColor2 ("TintColor2", Color) = (0.5,0.5,0.5,1)
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Glossiness ("Glossiness", Range(0, 1)) = 0.8
        _DetailAlbedo ("DetailAlbedo", 2D) = "white" {}
        _DetailNormal ("Detail Normal", 2D) = "bump" {}
        _OverlayIntensity ("OverlayIntensity", Range(0, 1)) = 1
        _DirectionalIntensityOverlay ("DirectionalIntensityOverlay", Range(0, 1)) = 0
        _BlendUpFactor ("BlendUpFactor", Range(0, 1)) = 0
        _BlendMaskIntensity ("BlendMaskIntensity", Range(0, 1)) = 0
        _DetailNormalStrength ("DetailNormalStrength", Range(0, 1)) = 0
        _DirectionalIntensityNormal ("DirectionalIntensityNormal", Range(0, 1)) = 0.4089549
        _EdgeLength ("EdgeLength", Range(2, 50)) = 2
        _TessMidPoint ("TessMidPoint", Float ) = 0
        _Displacement ("Displacement", Range(0, 1)) = 0.3
        _BlendDiffuse2 ("BlendDiffuse2", 2D) = "white" {}
        _BlendDiffuseScale ("BlendDiffuseScale", Float ) = 8
        _BlendNormal2 ("BlendNormal2", 2D) = "bump" {}
        [MaterialToggle] _IsIce ("IsIce", Float ) = 0
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 ps3 psp2 
            #pragma target 5.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _DetailAlbedo; uniform float4 _DetailAlbedo_ST;
            uniform sampler2D _DetailNormal; uniform float4 _DetailNormal_ST;
            uniform float _OverlayIntensity;
            uniform float _DirectionalIntensityOverlay;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            uniform float _DetailNormalStrength;
            uniform float _DirectionalIntensityNormal;
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
            uniform fixed _IsIce;
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
                    float4 _DetailAlbedo_var = tex2Dlod(_DetailAlbedo,float4(TRANSFORM_TEX(v.texcoord0, _DetailAlbedo),0.0,0));
                    float Heightmap = lerp(_MainTex_var.a,_DetailAlbedo_var.a,_IsIce);
                    v.vertex.xyz += (v.normal*lerp(0.0,(Heightmap-_TessMidPoint),_Displacement));
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
                float3 _DetailNormal_var = UnpackNormal(tex2D(_DetailNormal,TRANSFORM_TEX(i.uv0, _DetailNormal)));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_873 = i.normalDir.g;
                float3 node_1848_nrm_base = _BumpMap_var.rgb + float3(0,0,1);
                float3 node_1848_nrm_detail = lerp(_DetailNormal_var.rgb,float3(0,0,1),saturate(((_DetailNormalStrength+_Mask_var.b)+(1.0 - saturate((_DirectionalIntensityNormal+(node_873*-2.5+2.5))))))) * float3(-1,-1,1);
                float3 node_1848_nrm_combined = node_1848_nrm_base*dot(node_1848_nrm_base, node_1848_nrm_detail)/node_1848_nrm_base.z - node_1848_nrm_detail;
                float3 node_1848 = node_1848_nrm_combined; // Detail plus Main Normal
                float node_1807 = 2.0;
                float node_9994 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float node_8590 = round(node_9994);
                float2 node_8842 = float2(fmod(node_8590,2.0),saturate((node_8590-1.0)));
                float2 node_5442 = (0.5*node_8842);
                float2 node_1622 = ((i.uv0/node_1807)+node_5442);
                float2 node_7533 = ((((frac((i.uv0*_BlendDiffuseScale))/node_1807)+node_5442)*0.9375)+(float2(0.015625,0.015625)*((node_8842*2.0)+1.0)));
                float3 BlendNormal = (AtlasSamplerNormal( node_1622 , node_7533 , _BlendNormal2 )*2.0+-1.0);
                float node_5955 = saturate((saturate(( (saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 normalLocal = lerp(node_1848,BlendNormal,node_5955);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 node_3502 = AtlasSampler( node_1622 , node_7533 , _BlendDiffuse2 );
                float gloss = lerp(lerp((_Glossiness*_Mask_var.r),node_3502.a,node_5955),1.0,i.vertexColor.g);
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
                float4 _DetailAlbedo_var = tex2D(_DetailAlbedo,TRANSFORM_TEX(i.uv0, _DetailAlbedo));
                float3 node_9913 = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0)))-0.5))*(1.0-(( _DetailAlbedo_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_DetailAlbedo_var.rgb-0.5))*(1.0-lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity)))) : (2.0*_DetailAlbedo_var.rgb*lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity))) )*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0)))*(( _DetailAlbedo_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_DetailAlbedo_var.rgb-0.5))*(1.0-lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity)))) : (2.0*_DetailAlbedo_var.rgb*lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity))) )*_Color.rgb))) ),node_3502.rgb,node_5955); // Diffuse red vtx blend
                float3 diffuseColor = node_9913; // Need this for specular when using metallic
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 ps3 psp2 
            #pragma target 5.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _DetailAlbedo; uniform float4 _DetailAlbedo_ST;
            uniform sampler2D _DetailNormal; uniform float4 _DetailNormal_ST;
            uniform float _OverlayIntensity;
            uniform float _DirectionalIntensityOverlay;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            uniform float _DetailNormalStrength;
            uniform float _DirectionalIntensityNormal;
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
            uniform fixed _IsIce;
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
                    float4 _DetailAlbedo_var = tex2Dlod(_DetailAlbedo,float4(TRANSFORM_TEX(v.texcoord0, _DetailAlbedo),0.0,0));
                    float Heightmap = lerp(_MainTex_var.a,_DetailAlbedo_var.a,_IsIce);
                    v.vertex.xyz += (v.normal*lerp(0.0,(Heightmap-_TessMidPoint),_Displacement));
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
                float3 _DetailNormal_var = UnpackNormal(tex2D(_DetailNormal,TRANSFORM_TEX(i.uv0, _DetailNormal)));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_873 = i.normalDir.g;
                float3 node_1848_nrm_base = _BumpMap_var.rgb + float3(0,0,1);
                float3 node_1848_nrm_detail = lerp(_DetailNormal_var.rgb,float3(0,0,1),saturate(((_DetailNormalStrength+_Mask_var.b)+(1.0 - saturate((_DirectionalIntensityNormal+(node_873*-2.5+2.5))))))) * float3(-1,-1,1);
                float3 node_1848_nrm_combined = node_1848_nrm_base*dot(node_1848_nrm_base, node_1848_nrm_detail)/node_1848_nrm_base.z - node_1848_nrm_detail;
                float3 node_1848 = node_1848_nrm_combined; // Detail plus Main Normal
                float node_1807 = 2.0;
                float node_9994 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float node_8590 = round(node_9994);
                float2 node_8842 = float2(fmod(node_8590,2.0),saturate((node_8590-1.0)));
                float2 node_5442 = (0.5*node_8842);
                float2 node_1622 = ((i.uv0/node_1807)+node_5442);
                float2 node_7533 = ((((frac((i.uv0*_BlendDiffuseScale))/node_1807)+node_5442)*0.9375)+(float2(0.015625,0.015625)*((node_8842*2.0)+1.0)));
                float3 BlendNormal = (AtlasSamplerNormal( node_1622 , node_7533 , _BlendNormal2 )*2.0+-1.0);
                float node_5955 = saturate((saturate(( (saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 normalLocal = lerp(node_1848,BlendNormal,node_5955);
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
                float4 node_3502 = AtlasSampler( node_1622 , node_7533 , _BlendDiffuse2 );
                float gloss = lerp(lerp((_Glossiness*_Mask_var.r),node_3502.a,node_5955),1.0,i.vertexColor.g);
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
                float4 _DetailAlbedo_var = tex2D(_DetailAlbedo,TRANSFORM_TEX(i.uv0, _DetailAlbedo));
                float3 node_9913 = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0)))-0.5))*(1.0-(( _DetailAlbedo_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_DetailAlbedo_var.rgb-0.5))*(1.0-lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity)))) : (2.0*_DetailAlbedo_var.rgb*lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity))) )*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0)))*(( _DetailAlbedo_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_DetailAlbedo_var.rgb-0.5))*(1.0-lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity)))) : (2.0*_DetailAlbedo_var.rgb*lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity))) )*_Color.rgb))) ),node_3502.rgb,node_5955); // Diffuse red vtx blend
                float3 diffuseColor = node_9913; // Need this for specular when using metallic
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 ps3 psp2 
            #pragma target 5.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _DetailAlbedo; uniform float4 _DetailAlbedo_ST;
            uniform sampler2D _DetailNormal; uniform float4 _DetailNormal_ST;
            uniform float _OverlayIntensity;
            uniform float _DirectionalIntensityOverlay;
            uniform float4 _TintColor;
            uniform float _BlendUpFactor;
            uniform float _BlendMaskIntensity;
            uniform float _DetailNormalStrength;
            uniform float _DirectionalIntensityNormal;
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
            uniform fixed _IsIce;
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
                    float4 _DetailAlbedo_var = tex2Dlod(_DetailAlbedo,float4(TRANSFORM_TEX(v.texcoord0, _DetailAlbedo),0.0,0));
                    float Heightmap = lerp(_MainTex_var.a,_DetailAlbedo_var.a,_IsIce);
                    v.vertex.xyz += (v.normal*lerp(0.0,(Heightmap-_TessMidPoint),_Displacement));
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
                float3 _DetailNormal_var = UnpackNormal(tex2D(_DetailNormal,TRANSFORM_TEX(i.uv0, _DetailNormal)));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_873 = i.normalDir.g;
                float3 node_1848_nrm_base = _BumpMap_var.rgb + float3(0,0,1);
                float3 node_1848_nrm_detail = lerp(_DetailNormal_var.rgb,float3(0,0,1),saturate(((_DetailNormalStrength+_Mask_var.b)+(1.0 - saturate((_DirectionalIntensityNormal+(node_873*-2.5+2.5))))))) * float3(-1,-1,1);
                float3 node_1848_nrm_combined = node_1848_nrm_base*dot(node_1848_nrm_base, node_1848_nrm_detail)/node_1848_nrm_base.z - node_1848_nrm_detail;
                float3 node_1848 = node_1848_nrm_combined; // Detail plus Main Normal
                float node_1807 = 2.0;
                float node_9994 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float node_8590 = round(node_9994);
                float2 node_8842 = float2(fmod(node_8590,2.0),saturate((node_8590-1.0)));
                float2 node_5442 = (0.5*node_8842);
                float2 node_1622 = ((i.uv0/node_1807)+node_5442);
                float2 node_7533 = ((((frac((i.uv0*_BlendDiffuseScale))/node_1807)+node_5442)*0.9375)+(float2(0.015625,0.015625)*((node_8842*2.0)+1.0)));
                float3 BlendNormal = (AtlasSamplerNormal( node_1622 , node_7533 , _BlendNormal2 )*2.0+-1.0);
                float node_5955 = saturate((saturate(( (saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 normalLocal = lerp(node_1848,BlendNormal,node_5955);
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
                float4 node_3502 = AtlasSampler( node_1622 , node_7533 , _BlendDiffuse2 );
                float gloss = lerp(lerp((_Glossiness*_Mask_var.r),node_3502.a,node_5955),1.0,i.vertexColor.g);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = lerp((_Metallic*_Mask_var.g),0.0,node_5955);
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _DetailAlbedo_var = tex2D(_DetailAlbedo,TRANSFORM_TEX(i.uv0, _DetailAlbedo));
                float3 node_9913 = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0)))-0.5))*(1.0-(( _DetailAlbedo_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_DetailAlbedo_var.rgb-0.5))*(1.0-lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity)))) : (2.0*_DetailAlbedo_var.rgb*lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity))) )*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0)))*(( _DetailAlbedo_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_DetailAlbedo_var.rgb-0.5))*(1.0-lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity)))) : (2.0*_DetailAlbedo_var.rgb*lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity))) )*_Color.rgb))) ),node_3502.rgb,node_5955); // Diffuse red vtx blend
                float3 diffuseColor = node_9913; // Need this for specular when using metallic
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 ps3 psp2 
            #pragma target 5.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _DetailAlbedo; uniform float4 _DetailAlbedo_ST;
            uniform float _EdgeLength;
            uniform float _TessMidPoint;
            uniform float _Displacement;
            uniform fixed _IsIce;
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
                    float4 _DetailAlbedo_var = tex2Dlod(_DetailAlbedo,float4(TRANSFORM_TEX(v.texcoord0, _DetailAlbedo),0.0,0));
                    float Heightmap = lerp(_MainTex_var.a,_DetailAlbedo_var.a,_IsIce);
                    v.vertex.xyz += (v.normal*lerp(0.0,(Heightmap-_TessMidPoint),_Displacement));
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 ps3 psp2 
            #pragma target 5.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Glossiness;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _DetailAlbedo; uniform float4 _DetailAlbedo_ST;
            uniform float _OverlayIntensity;
            uniform float _DirectionalIntensityOverlay;
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
            uniform fixed _IsIce;
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
                    float4 _DetailAlbedo_var = tex2Dlod(_DetailAlbedo,float4(TRANSFORM_TEX(v.texcoord0, _DetailAlbedo),0.0,0));
                    float Heightmap = lerp(_MainTex_var.a,_DetailAlbedo_var.a,_IsIce);
                    v.vertex.xyz += (v.normal*lerp(0.0,(Heightmap-_TessMidPoint),_Displacement));
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
                
                float node_9994 = (i.vertexColor.a*4.0*(1.0 - floor((0.1+i.vertexColor.a))));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_873 = i.normalDir.g;
                float4 _DetailAlbedo_var = tex2D(_DetailAlbedo,TRANSFORM_TEX(i.uv0, _DetailAlbedo));
                float node_1807 = 2.0;
                float node_8590 = round(node_9994);
                float2 node_8842 = float2(fmod(node_8590,2.0),saturate((node_8590-1.0)));
                float2 node_5442 = (0.5*node_8842);
                float2 node_1622 = ((i.uv0/node_1807)+node_5442);
                float2 node_7533 = ((((frac((i.uv0*_BlendDiffuseScale))/node_1807)+node_5442)*0.9375)+(float2(0.015625,0.015625)*((node_8842*2.0)+1.0)));
                float4 node_3502 = AtlasSampler( node_1622 , node_7533 , _BlendDiffuse2 );
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_5955 = saturate((saturate(( (saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r) > 0.5 ? (1.0-(1.0-2.0*((saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)-0.5))*(1.0-lerp(0.5,_Mask_var.a,_BlendMaskIntensity))) : (2.0*(saturate(((node_873*0.5+0.5)+_BlendUpFactor))*i.vertexColor.r)*lerp(0.5,_Mask_var.a,_BlendMaskIntensity)) ))*10.0+-4.0));
                float3 node_9913 = lerp(saturate((lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0))) > 0.5 ?  (1.0-(1.0-2.0*(lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0)))-0.5))*(1.0-(( _DetailAlbedo_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_DetailAlbedo_var.rgb-0.5))*(1.0-lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity)))) : (2.0*_DetailAlbedo_var.rgb*lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity))) )*_Color.rgb))) : (2.0*lerp(_TintColor.rgb,_TintColor2.rgb,saturate((frac(node_9994)*50.00001+-12.0)))*(( _DetailAlbedo_var.rgb > 0.5 ? (1.0-(1.0-2.0*(_DetailAlbedo_var.rgb-0.5))*(1.0-lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity)))) : (2.0*_DetailAlbedo_var.rgb*lerp(float3(0.5,0.5,0.5),_MainTex_var.rgb,(saturate((_DirectionalIntensityOverlay+(node_873*-2.5+2.5)))*_OverlayIntensity))) )*_Color.rgb))) ),node_3502.rgb,node_5955); // Diffuse red vtx blend
                float3 diffColor = node_9913;
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, lerp((_Metallic*_Mask_var.g),0.0,node_5955), specColor, specularMonochrome );
                float roughness = 1.0 - lerp(lerp((_Glossiness*_Mask_var.r),node_3502.a,node_5955),1.0,i.vertexColor.g);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "CW3/EnvironmentBlendDetail"
    CustomEditor "ShaderForgeMaterialInspector"
}
