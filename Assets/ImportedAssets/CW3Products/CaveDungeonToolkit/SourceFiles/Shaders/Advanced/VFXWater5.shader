// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:1,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33134,y:32710,varname:node_2865,prsc:2|diff-1784-OUT,spec-9893-OUT,gloss-1813-OUT,normal-8178-OUT,emission-3447-OUT,alpha-8165-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:30882,y:33123,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5964,x:29808,y:33737,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-1727-OUT;n:type:ShaderForge.SFN_Slider,id:1813,x:31600,y:33398,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_SceneColor,id:159,x:31230,y:32589,varname:node_159,prsc:2|UVIN-5137-OUT;n:type:ShaderForge.SFN_Blend,id:735,x:31515,y:32647,varname:node_735,prsc:2,blmd:12,clmp:False|SRC-159-RGB,DST-5995-OUT;n:type:ShaderForge.SFN_ScreenPos,id:8886,x:30510,y:32483,varname:node_8886,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:5137,x:31018,y:32694,varname:node_5137,prsc:2|A-8886-UVOUT,B-8721-OUT;n:type:ShaderForge.SFN_Append,id:4537,x:30098,y:33052,varname:node_4537,prsc:2|A-5964-R,B-5964-G;n:type:ShaderForge.SFN_Multiply,id:8721,x:30343,y:32990,varname:node_8721,prsc:2|A-6276-OUT,B-4537-OUT;n:type:ShaderForge.SFN_Slider,id:6276,x:29960,y:32934,ptovrint:False,ptlb:DistortionIntensity,ptin:_DistortionIntensity,varname:node_6276,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector3,id:8474,x:29774,y:33991,varname:node_8474,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:8178,x:30121,y:33809,varname:node_8178,prsc:2|A-5964-RGB,B-8474-OUT,T-2447-OUT;n:type:ShaderForge.SFN_Slider,id:2447,x:29706,y:34128,ptovrint:False,ptlb:NormalIntensity,ptin:_NormalIntensity,varname:node_2447,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:6134,x:28684,y:33565,varname:node_6134,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:7271,x:28974,y:33679,varname:node_7271,prsc:2|A-6134-UVOUT,B-6422-OUT,C-9764-OUT;n:type:ShaderForge.SFN_Append,id:6422,x:28721,y:33729,varname:node_6422,prsc:2|A-1682-X,B-1682-Z;n:type:ShaderForge.SFN_ObjectScale,id:1682,x:28471,y:33765,varname:node_1682,prsc:2,rcp:False;n:type:ShaderForge.SFN_ValueProperty,id:9764,x:28699,y:33920,ptovrint:False,ptlb:UVScale,ptin:_UVScale,varname:node_7972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Color,id:6105,x:30864,y:32874,ptovrint:False,ptlb:DepthColor,ptin:_DepthColor,varname:_FresnelColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:5995,x:31149,y:32983,varname:node_5995,prsc:2|A-6665-RGB,B-6105-RGB,T-3024-OUT;n:type:ShaderForge.SFN_DepthBlend,id:3024,x:30803,y:33460,varname:node_3024,prsc:2|DIST-7652-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7652,x:30622,y:33494,ptovrint:False,ptlb:DepthBlend,ptin:_DepthBlend,varname:node_7652,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector3,id:729,x:31769,y:32372,varname:node_729,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Lerp,id:3447,x:31863,y:32750,varname:node_3447,prsc:2|A-735-OUT,B-8427-OUT,T-8677-OUT;n:type:ShaderForge.SFN_Lerp,id:8677,x:31301,y:33143,varname:node_8677,prsc:2|A-6105-A,B-6665-A,T-3024-OUT;n:type:ShaderForge.SFN_Vector1,id:8427,x:31515,y:32849,varname:node_8427,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:513,x:31997,y:32453,varname:node_513,prsc:2|A-729-OUT,B-5995-OUT,T-8677-OUT;n:type:ShaderForge.SFN_Multiply,id:1784,x:32190,y:32464,varname:node_1784,prsc:2|A-7490-OUT,B-513-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7490,x:32044,y:32353,ptovrint:False,ptlb:DiffuseIntensity,ptin:_DiffuseIntensity,varname:node_7490,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_DepthBlend,id:8165,x:31793,y:33594,varname:node_8165,prsc:2|DIST-3921-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3921,x:31552,y:33647,ptovrint:False,ptlb:DepthBlendGloss,ptin:_DepthBlendGloss,varname:_DepthBlend_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Slider,id:9615,x:31587,y:33491,ptovrint:False,ptlb:GlossEdge,ptin:_GlossEdge,varname:_Gloss_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Lerp,id:3304,x:31986,y:33450,varname:node_3304,prsc:2|A-9615-OUT,B-1813-OUT,T-8165-OUT;n:type:ShaderForge.SFN_Vector1,id:9893,x:32314,y:32709,varname:node_9893,prsc:2,v1:0.06;n:type:ShaderForge.SFN_Vector1,id:2279,x:32267,y:32845,varname:node_2279,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:9190,x:32485,y:32737,varname:node_9190,prsc:2|A-2279-OUT,B-9893-OUT,T-8165-OUT;n:type:ShaderForge.SFN_Add,id:1727,x:29289,y:33709,varname:node_1727,prsc:2|A-7271-OUT,B-5555-OUT;n:type:ShaderForge.SFN_Vector4Property,id:8791,x:28696,y:34308,ptovrint:False,ptlb:ScrollSpeed,ptin:_ScrollSpeed,varname:node_8791,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Multiply,id:5555,x:29077,y:34018,varname:node_5555,prsc:2|A-4941-T,B-4658-OUT;n:type:ShaderForge.SFN_Time,id:4941,x:28804,y:34062,varname:node_4941,prsc:2;n:type:ShaderForge.SFN_Append,id:4658,x:28928,y:34202,varname:node_4658,prsc:2|A-8791-X,B-8791-Y;proporder:5964-6665-1813-6276-2447-9764-6105-7652-7490-3921-9615-8791;pass:END;sub:END;*/

Shader "CW3/VFXWater5" {
    Properties {
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _Gloss ("Gloss", Range(0, 1)) = 0.8
        _DistortionIntensity ("DistortionIntensity", Range(0, 1)) = 0
        _NormalIntensity ("NormalIntensity", Range(0, 1)) = 0
        _UVScale ("UVScale", Float ) = 0.5
        _DepthColor ("DepthColor", Color) = (0.5,0.5,0.5,1)
        _DepthBlend ("DepthBlend", Float ) = 0
        _DiffuseIntensity ("DiffuseIntensity", Float ) = 0.5
        _DepthBlendGloss ("DepthBlendGloss", Float ) = 0
        _GlossEdge ("GlossEdge", Range(0, 1)) = 0.8
        _ScrollSpeed ("ScrollSpeed", Vector) = (0,0,0,0)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 ps3 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Gloss;
            uniform float _DistortionIntensity;
            uniform float _NormalIntensity;
            uniform float _UVScale;
            uniform float4 _DepthColor;
            uniform float _DepthBlend;
            uniform float _DiffuseIntensity;
            uniform float _DepthBlendGloss;
            uniform float4 _ScrollSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
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
                float4 screenPos : TEXCOORD7;
                float4 projPos : TEXCOORD8;
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
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_4941 = _Time + _TimeEditor;
                float2 node_1727 = ((i.uv0*float2(objScale.r,objScale.b)*_UVScale)+(node_4941.g*float2(_ScrollSpeed.r,_ScrollSpeed.g)));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_1727, _BumpMap)));
                float3 normalLocal = lerp(_BumpMap_var.rgb,float3(0,0,1),_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
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
                float node_9893 = 0.06;
                float3 specularColor = float3(node_9893,node_9893,node_9893);
                float specularMonochrome;
                float node_3024 = saturate((sceneZ-partZ)/_DepthBlend);
                float3 node_5995 = lerp(_Color.rgb,_DepthColor.rgb,node_3024);
                float node_8677 = lerp(_DepthColor.a,_Color.a,node_3024);
                float3 diffuseColor = (_DiffuseIntensity*lerp(float3(0,0,0),node_5995,node_8677)); // Need this for specular when using metallic
                diffuseColor = EnergyConservationBetweenDiffuseAndSpecular(diffuseColor, specularColor, specularMonochrome);
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
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_8427 = 0.0;
                float3 emissive = lerp((tex2D( _GrabTexture, (sceneUVs.rg+(_DistortionIntensity*float2(_BumpMap_var.r,_BumpMap_var.g)))).rgb > 0.5 ?  (1.0-(1.0-2.0*(tex2D( _GrabTexture, (sceneUVs.rg+(_DistortionIntensity*float2(_BumpMap_var.r,_BumpMap_var.g)))).rgb-0.5))*(1.0-node_5995)) : (2.0*tex2D( _GrabTexture, (sceneUVs.rg+(_DistortionIntensity*float2(_BumpMap_var.r,_BumpMap_var.g)))).rgb*node_5995)) ,float3(node_8427,node_8427,node_8427),node_8677);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                float node_8165 = saturate((sceneZ-partZ)/_DepthBlendGloss);
                fixed4 finalRGBA = fixed4(finalColor,node_8165);
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
            ZWrite Off
            
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
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 ps3 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Gloss;
            uniform float _DistortionIntensity;
            uniform float _NormalIntensity;
            uniform float _UVScale;
            uniform float4 _DepthColor;
            uniform float _DepthBlend;
            uniform float _DiffuseIntensity;
            uniform float _DepthBlendGloss;
            uniform float4 _ScrollSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
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
                float4 screenPos : TEXCOORD7;
                float4 projPos : TEXCOORD8;
                LIGHTING_COORDS(9,10)
                UNITY_FOG_COORDS(11)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_4941 = _Time + _TimeEditor;
                float2 node_1727 = ((i.uv0*float2(objScale.r,objScale.b)*_UVScale)+(node_4941.g*float2(_ScrollSpeed.r,_ScrollSpeed.g)));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_1727, _BumpMap)));
                float3 normalLocal = lerp(_BumpMap_var.rgb,float3(0,0,1),_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
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
                float node_9893 = 0.06;
                float3 specularColor = float3(node_9893,node_9893,node_9893);
                float specularMonochrome;
                float node_3024 = saturate((sceneZ-partZ)/_DepthBlend);
                float3 node_5995 = lerp(_Color.rgb,_DepthColor.rgb,node_3024);
                float node_8677 = lerp(_DepthColor.a,_Color.a,node_3024);
                float3 diffuseColor = (_DiffuseIntensity*lerp(float3(0,0,0),node_5995,node_8677)); // Need this for specular when using metallic
                diffuseColor = EnergyConservationBetweenDiffuseAndSpecular(diffuseColor, specularColor, specularMonochrome);
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
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float node_8165 = saturate((sceneZ-partZ)/_DepthBlendGloss);
                fixed4 finalRGBA = fixed4(finalColor * node_8165,0);
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 ps3 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Gloss;
            uniform float _DistortionIntensity;
            uniform float _UVScale;
            uniform float4 _DepthColor;
            uniform float _DepthBlend;
            uniform float _DiffuseIntensity;
            uniform float4 _ScrollSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_4941 = _Time + _TimeEditor;
                float2 node_1727 = ((i.uv0*float2(objScale.r,objScale.b)*_UVScale)+(node_4941.g*float2(_ScrollSpeed.r,_ScrollSpeed.g)));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_1727, _BumpMap)));
                float node_3024 = saturate((sceneZ-partZ)/_DepthBlend);
                float3 node_5995 = lerp(_Color.rgb,_DepthColor.rgb,node_3024);
                float node_8427 = 0.0;
                float node_8677 = lerp(_DepthColor.a,_Color.a,node_3024);
                o.Emission = lerp((tex2D( _GrabTexture, (sceneUVs.rg+(_DistortionIntensity*float2(_BumpMap_var.r,_BumpMap_var.g)))).rgb > 0.5 ?  (1.0-(1.0-2.0*(tex2D( _GrabTexture, (sceneUVs.rg+(_DistortionIntensity*float2(_BumpMap_var.r,_BumpMap_var.g)))).rgb-0.5))*(1.0-node_5995)) : (2.0*tex2D( _GrabTexture, (sceneUVs.rg+(_DistortionIntensity*float2(_BumpMap_var.r,_BumpMap_var.g)))).rgb*node_5995)) ,float3(node_8427,node_8427,node_8427),node_8677);
                
                float3 diffColor = (_DiffuseIntensity*lerp(float3(0,0,0),node_5995,node_8677));
                float node_9893 = 0.06;
                float3 specColor = float3(node_9893,node_9893,node_9893);
                float specularMonochrome = max(max(specColor.r, specColor.g),specColor.b);
                diffColor *= (1.0-specularMonochrome);
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
