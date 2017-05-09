// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:35360,y:32499,varname:node_4013,prsc:2|emission-7917-OUT,clip-7649-OUT;n:type:ShaderForge.SFN_Tex2d,id:4035,x:32160,y:32621,cmnt:Circle ,varname:node_4035,prsc:2,tex:c081bb7c682bdf44d9ffc196808f8468,ntxv:0,isnm:False|UVIN-8322-UVOUT,TEX-2928-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2928,x:31493,y:32846,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_2928,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c081bb7c682bdf44d9ffc196808f8468,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6778,x:32025,y:32760,cmnt:Distortion,varname:_node_4035_copy,prsc:2,tex:c081bb7c682bdf44d9ffc196808f8468,ntxv:0,isnm:False|UVIN-9950-OUT,TEX-2928-TEX;n:type:ShaderForge.SFN_Tex2d,id:9762,x:32655,y:32994,cmnt:Final Out,varname:_node_4035_copy_copy,prsc:2,tex:c081bb7c682bdf44d9ffc196808f8468,ntxv:0,isnm:False|UVIN-4079-OUT,TEX-2928-TEX;n:type:ShaderForge.SFN_TexCoord,id:8322,x:31229,y:32425,varname:node_8322,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:9950,x:31740,y:32323,varname:node_9950,prsc:2|A-2685-OUT,B-8322-UVOUT;n:type:ShaderForge.SFN_Add,id:5501,x:31740,y:32140,varname:node_5501,prsc:2|A-9766-OUT,B-8322-UVOUT;n:type:ShaderForge.SFN_Vector4Property,id:148,x:31107,y:32022,ptovrint:False,ptlb:Speeds,ptin:_Speeds,varname:node_148,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Time,id:7149,x:31107,y:32218,varname:node_7149,prsc:2;n:type:ShaderForge.SFN_Append,id:8631,x:31334,y:31965,varname:node_8631,prsc:2|A-148-X,B-148-Y;n:type:ShaderForge.SFN_Append,id:8791,x:31334,y:32120,varname:node_8791,prsc:2|A-148-Z,B-148-W;n:type:ShaderForge.SFN_Multiply,id:9766,x:31544,y:31975,varname:node_9766,prsc:2|A-8631-OUT,B-7149-T;n:type:ShaderForge.SFN_Multiply,id:2685,x:31544,y:32130,varname:node_2685,prsc:2|A-8791-OUT,B-7149-T;n:type:ShaderForge.SFN_Add,id:4079,x:32443,y:32187,varname:node_4079,prsc:2|A-5501-OUT,B-406-OUT;n:type:ShaderForge.SFN_RemapRange,id:406,x:32258,y:32236,varname:node_406,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1929-OUT;n:type:ShaderForge.SFN_Color,id:7010,x:33005,y:32564,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7010,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1929,x:32383,y:32814,varname:node_1929,prsc:2|A-5578-OUT,B-9595-OUT;n:type:ShaderForge.SFN_Slider,id:9595,x:31969,y:33085,ptovrint:False,ptlb:DistortionIntensity,ptin:_DistortionIntensity,varname:node_9595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.01;n:type:ShaderForge.SFN_Multiply,id:5549,x:33434,y:32908,varname:node_5549,prsc:2|A-1249-OUT,B-7010-RGB;n:type:ShaderForge.SFN_RemapRange,id:253,x:33778,y:32153,varname:node_253,prsc:2,frmn:0,frmx:0.15,tomn:0,tomx:1|IN-9212-OUT;n:type:ShaderForge.SFN_RemapRange,id:2554,x:33778,y:32357,varname:node_2554,prsc:2,frmn:0.35,frmx:1,tomn:0,tomx:1|IN-9212-OUT;n:type:ShaderForge.SFN_RemapRange,id:4798,x:33778,y:32542,varname:node_4798,prsc:2,frmn:0.15,frmx:0.35,tomn:0,tomx:1|IN-9212-OUT;n:type:ShaderForge.SFN_Color,id:6285,x:33879,y:31503,ptovrint:False,ptlb:GrdColor1,ptin:_GrdColor1,varname:node_2189,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9960785,c2:0.9215687,c3:0.3882353,c4:1;n:type:ShaderForge.SFN_Color,id:456,x:33879,y:31667,ptovrint:False,ptlb:GrdColor2,ptin:_GrdColor2,varname:_GrdColor2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9568628,c2:0.3490196,c3:0.1490196,c4:1;n:type:ShaderForge.SFN_Color,id:1336,x:33877,y:31826,ptovrint:False,ptlb:GrdColor3,ptin:_GrdColor3,varname:_GrdColor3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6862745,c2:0.1333333,c3:0.05882353,c4:1;n:type:ShaderForge.SFN_Color,id:6180,x:33877,y:31986,ptovrint:False,ptlb:GrdColor4,ptin:_GrdColor4,varname:_GrdColor4,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2,c2:0.03137255,c3:0.01960784,c4:1;n:type:ShaderForge.SFN_Lerp,id:6779,x:34215,y:32214,varname:node_6779,prsc:2|A-6285-RGB,B-456-RGB,T-3969-OUT;n:type:ShaderForge.SFN_Lerp,id:5827,x:34226,y:32391,varname:node_5827,prsc:2|A-1336-RGB,B-6180-RGB,T-6480-OUT;n:type:ShaderForge.SFN_Lerp,id:1084,x:34477,y:32526,varname:node_1084,prsc:2|A-6779-OUT,B-5827-OUT,T-2887-OUT;n:type:ShaderForge.SFN_Clamp01,id:3969,x:33947,y:32153,varname:node_3969,prsc:2|IN-253-OUT;n:type:ShaderForge.SFN_Clamp01,id:6480,x:33947,y:32347,varname:node_6480,prsc:2|IN-2554-OUT;n:type:ShaderForge.SFN_Clamp01,id:2887,x:33959,y:32542,varname:node_2887,prsc:2|IN-4798-OUT;n:type:ShaderForge.SFN_Add,id:8767,x:32973,y:32935,varname:node_8767,prsc:2|A-9125-OUT,B-9762-R;n:type:ShaderForge.SFN_RemapRange,id:5578,x:32197,y:32796,varname:node_5578,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6778-B;n:type:ShaderForge.SFN_OneMinus,id:9212,x:33146,y:32750,varname:node_9212,prsc:2|IN-1249-OUT;n:type:ShaderForge.SFN_Multiply,id:7917,x:34753,y:32523,varname:node_7917,prsc:2|A-3583-OUT,B-1084-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3583,x:34529,y:32437,ptovrint:False,ptlb:Boost,ptin:_Boost,varname:node_3583,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:2994,x:32574,y:32463,ptovrint:False,ptlb:CookieRemap,ptin:_CookieRemap,varname:node_2994,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:1,v3:-0.75,v4:0.75;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9125,x:32812,y:32696,varname:node_9125,prsc:2|IN-4035-G,IMIN-2994-X,IMAX-2994-Y,OMIN-2994-Z,OMAX-2994-W;n:type:ShaderForge.SFN_ComponentMask,id:786,x:34961,y:32752,varname:node_786,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7917-OUT;n:type:ShaderForge.SFN_Add,id:7649,x:35145,y:32834,varname:node_7649,prsc:2|A-786-OUT,B-3715-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3715,x:34891,y:32981,ptovrint:False,ptlb:Clip,ptin:_Clip,varname:node_3715,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:3785,x:32955,y:33074,varname:node_3785,prsc:2|A-9125-OUT,B-9762-R;n:type:ShaderForge.SFN_Blend,id:2093,x:32939,y:33201,varname:node_2093,prsc:2,blmd:10,clmp:True|SRC-9762-R,DST-9125-OUT;n:type:ShaderForge.SFN_Blend,id:1249,x:32976,y:33363,varname:node_1249,prsc:2,blmd:10,clmp:True|SRC-9125-OUT,DST-9762-R;proporder:2928-148-7010-9595-6285-456-1336-6180-3583-2994-3715;pass:END;sub:END;*/

Shader "CW3/VFXFlame" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Speeds ("Speeds", Vector) = (0,0,0,0)
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _DistortionIntensity ("DistortionIntensity", Range(0, 0.01)) = 0
        _GrdColor1 ("GrdColor1", Color) = (0.9960785,0.9215687,0.3882353,1)
        _GrdColor2 ("GrdColor2", Color) = (0.9568628,0.3490196,0.1490196,1)
        _GrdColor3 ("GrdColor3", Color) = (0.6862745,0.1333333,0.05882353,1)
        _GrdColor4 ("GrdColor4", Color) = (0.2,0.03137255,0.01960784,1)
        _Boost ("Boost", Float ) = 1
        _CookieRemap ("CookieRemap", Vector) = (0,1,-0.75,0.75)
        _Clip ("Clip", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Speeds;
            uniform float _DistortionIntensity;
            uniform float4 _GrdColor1;
            uniform float4 _GrdColor2;
            uniform float4 _GrdColor3;
            uniform float4 _GrdColor4;
            uniform float _Boost;
            uniform float4 _CookieRemap;
            uniform float _Clip;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_4035 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex)); // Circle 
                float node_9125 = (_CookieRemap.b + ( (node_4035.g - _CookieRemap.r) * (_CookieRemap.a - _CookieRemap.b) ) / (_CookieRemap.g - _CookieRemap.r));
                float4 node_7149 = _Time + _TimeEditor;
                float2 node_9950 = ((float2(_Speeds.b,_Speeds.a)*node_7149.g)+i.uv0);
                float4 _node_4035_copy = tex2D(_MainTex,TRANSFORM_TEX(node_9950, _MainTex)); // Distortion
                float2 node_4079 = (((float2(_Speeds.r,_Speeds.g)*node_7149.g)+i.uv0)+(((_node_4035_copy.b*2.0+-1.0)*_DistortionIntensity)*2.0+-1.0));
                float4 _node_4035_copy_copy = tex2D(_MainTex,TRANSFORM_TEX(node_4079, _MainTex)); // Final Out
                float node_1249 = saturate(( _node_4035_copy_copy.r > 0.5 ? (1.0-(1.0-2.0*(_node_4035_copy_copy.r-0.5))*(1.0-node_9125)) : (2.0*_node_4035_copy_copy.r*node_9125) ));
                float node_9212 = (1.0 - node_1249);
                float3 node_7917 = (_Boost*lerp(lerp(_GrdColor1.rgb,_GrdColor2.rgb,saturate((node_9212*6.666667+0.0))),lerp(_GrdColor3.rgb,_GrdColor4.rgb,saturate((node_9212*1.538462+-0.5384616))),saturate((node_9212*5.0+-0.7500001))));
                clip((node_7917.r+_Clip) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = node_7917;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Speeds;
            uniform float _DistortionIntensity;
            uniform float4 _GrdColor1;
            uniform float4 _GrdColor2;
            uniform float4 _GrdColor3;
            uniform float4 _GrdColor4;
            uniform float _Boost;
            uniform float4 _CookieRemap;
            uniform float _Clip;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_4035 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex)); // Circle 
                float node_9125 = (_CookieRemap.b + ( (node_4035.g - _CookieRemap.r) * (_CookieRemap.a - _CookieRemap.b) ) / (_CookieRemap.g - _CookieRemap.r));
                float4 node_7149 = _Time + _TimeEditor;
                float2 node_9950 = ((float2(_Speeds.b,_Speeds.a)*node_7149.g)+i.uv0);
                float4 _node_4035_copy = tex2D(_MainTex,TRANSFORM_TEX(node_9950, _MainTex)); // Distortion
                float2 node_4079 = (((float2(_Speeds.r,_Speeds.g)*node_7149.g)+i.uv0)+(((_node_4035_copy.b*2.0+-1.0)*_DistortionIntensity)*2.0+-1.0));
                float4 _node_4035_copy_copy = tex2D(_MainTex,TRANSFORM_TEX(node_4079, _MainTex)); // Final Out
                float node_1249 = saturate(( _node_4035_copy_copy.r > 0.5 ? (1.0-(1.0-2.0*(_node_4035_copy_copy.r-0.5))*(1.0-node_9125)) : (2.0*_node_4035_copy_copy.r*node_9125) ));
                float node_9212 = (1.0 - node_1249);
                float3 node_7917 = (_Boost*lerp(lerp(_GrdColor1.rgb,_GrdColor2.rgb,saturate((node_9212*6.666667+0.0))),lerp(_GrdColor3.rgb,_GrdColor4.rgb,saturate((node_9212*1.538462+-0.5384616))),saturate((node_9212*5.0+-0.7500001))));
                clip((node_7917.r+_Clip) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
