#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#ifdef GL_ARB_derivative_control
#extension GL_ARB_derivative_control : enable
#endif

layout(origin_upper_left) in vec4 gl_FragCoord;
#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(set = 0, binding = 0, std140) uniform PGlobals {
	vec4 _GradientSettingsTex_TexelSize;
	vec4 _ShaderInfoTex_TexelSize;
	vec4 _TextureInfo[16];
};
layout(set = 0, binding = 1) uniform mediump texture2D _Texture0;
layout(set = 0, binding = 2) uniform mediump texture2D _Texture1;
layout(set = 0, binding = 3) uniform mediump texture2D _Texture2;
layout(set = 0, binding = 4) uniform mediump texture2D _Texture3;
layout(set = 0, binding = 5) uniform mediump texture2D _Texture4;
layout(set = 0, binding = 6) uniform mediump texture2D _Texture5;
layout(set = 0, binding = 7) uniform mediump texture2D _Texture6;
layout(set = 0, binding = 8) uniform mediump texture2D _Texture7;
layout(set = 0, binding = 9) uniform mediump texture2D _ShaderInfoTex;
layout(set = 0, binding = 10) uniform mediump texture2D _GradientSettingsTex;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec4 vs_TEXCOORD0;
layout(location = 2) flat in highp vec4 vs_TEXCOORD1;
layout(location = 3) flat in highp vec2 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
uint u_xlatu0;
bvec2 u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
int u_xlati3;
bvec3 u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
bvec3 u_xlatb6;
float u_xlat7;
float u_xlat8;
float u_xlat9;
bool u_xlatb9;
vec2 u_xlat10;
bool u_xlatb10;
bool u_xlatb11;
float u_xlat12;
bvec2 u_xlatb12;
vec2 u_xlat14;
uint u_xlatu14;
vec2 u_xlat15;
vec2 u_xlat16;
bool u_xlatb16;
float u_xlat18;
uint u_xlatu18;
bool u_xlatb18;
float u_xlat20;
float u_xlat21;
bool u_xlatb21;
float u_xlat22;
bool u_xlatb22;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_GradientSettingsTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_ShaderInfoTex;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_Texture0;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_Texture1;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_Texture2;
layout(set = 0, binding = 16) uniform mediump  sampler sampler_Texture3;
layout(set = 0, binding = 17) uniform mediump  sampler sampler_Texture4;
layout(set = 0, binding = 18) uniform mediump  sampler sampler_Texture5;
layout(set = 0, binding = 19) uniform mediump  sampler sampler_Texture6;
layout(set = 0, binding = 20) uniform mediump  sampler sampler_Texture7;
void main()
{
    u_xlatb0.x = vs_TEXCOORD1.w>=2.0;
    u_xlat6.x = vs_TEXCOORD1.w + -2.0;
    u_xlat6.x = (u_xlatb0.x) ? u_xlat6.x : vs_TEXCOORD1.w;
    u_xlatb12.x = vs_TEXCOORD1.x==1.0;
    if(u_xlatb12.x){
        u_xlatb12.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(u_xlat6.x);
        if(u_xlatb12.x){
            u_xlatb12.xy = lessThan(vec4(-9999.0, -9999.0, -9999.0, -9999.0), vs_TEXCOORD4.xzxz).xy;
            if(u_xlatb12.x){
                u_xlat12 = dot(vs_TEXCOORD4.xy, vs_TEXCOORD4.xy);
                u_xlat12 = sqrt(u_xlat12);
                u_xlat12 = u_xlat12 + -1.0;
                u_xlat1.x = dFdxCoarse(u_xlat12);
                u_xlat7 = dFdyCoarse(u_xlat12);
                u_xlat1.x = abs(u_xlat7) + abs(u_xlat1.x);
                u_xlat12 = u_xlat12 / u_xlat1.x;
                u_xlat12 = (-u_xlat12) + 0.5;
                u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
            } else {
                u_xlat12 = 1.0;
            }
            if(u_xlatb12.y){
                u_xlat18 = dot(vs_TEXCOORD4.zw, vs_TEXCOORD4.zw);
                u_xlat18 = sqrt(u_xlat18);
                u_xlat18 = u_xlat18 + -1.0;
                u_xlat1.x = dFdxCoarse(u_xlat18);
                u_xlat7 = dFdyCoarse(u_xlat18);
                u_xlat1.x = abs(u_xlat7) + abs(u_xlat1.x);
                u_xlat18 = u_xlat18 / u_xlat1.x;
                u_xlat18 = (-u_xlat18) + 0.5;
                u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
                u_xlat18 = (-u_xlat18) + 1.0;
                u_xlat12 = u_xlat18 * u_xlat12;
            }
        } else {
            u_xlat12 = 1.0;
        }
        SV_Target0.xyz = vs_COLOR0.xyz;
        u_xlat1.x = vs_COLOR0.w;
    } else {
        u_xlatb18 = vs_TEXCOORD1.x==3.0;
        if(u_xlatb18){
            u_xlatb18 = vs_TEXCOORD1.y<4.0;
            if(u_xlatb18){
                u_xlatb18 = vs_TEXCOORD1.y<2.0;
                if(u_xlatb18){
                    u_xlatb18 = vs_TEXCOORD1.y<1.0;
                    if(u_xlatb18){
                        u_xlat2 = texture(sampler2D(_Texture0, sampler_Texture0), vs_TEXCOORD0.xy);
                    } else {
                        u_xlat2 = texture(sampler2D(_Texture1, sampler_Texture1), vs_TEXCOORD0.xy);
                    }
                } else {
                    u_xlatb18 = vs_TEXCOORD1.y<3.0;
                    if(u_xlatb18){
                        u_xlat2 = texture(sampler2D(_Texture2, sampler_Texture2), vs_TEXCOORD0.xy);
                    } else {
                        u_xlat2 = texture(sampler2D(_Texture3, sampler_Texture3), vs_TEXCOORD0.xy);
                    }
                }
            } else {
                u_xlatb18 = vs_TEXCOORD1.y<6.0;
                if(u_xlatb18){
                    u_xlatb18 = vs_TEXCOORD1.y<5.0;
                    if(u_xlatb18){
                        u_xlat2 = texture(sampler2D(_Texture4, sampler_Texture4), vs_TEXCOORD0.xy);
                    } else {
                        u_xlat2 = texture(sampler2D(_Texture5, sampler_Texture5), vs_TEXCOORD0.xy);
                    }
                } else {
                    u_xlatb18 = vs_TEXCOORD1.y<7.0;
                    if(u_xlatb18){
                        u_xlat2 = texture(sampler2D(_Texture6, sampler_Texture6), vs_TEXCOORD0.xy);
                    } else {
                        u_xlat2 = texture(sampler2D(_Texture7, sampler_Texture7), vs_TEXCOORD0.xy);
                    }
                }
            }
            u_xlat1 = u_xlat2.wxyz * vs_COLOR0.wxyz;
            u_xlatb6.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(u_xlat6.x);
            if(u_xlatb6.x){
                u_xlatb6.xz = lessThan(vec4(-9999.0, 0.0, -9999.0, -9999.0), vs_TEXCOORD4.xxzz).xz;
                if(u_xlatb6.x){
                    u_xlat6.x = dot(vs_TEXCOORD4.xy, vs_TEXCOORD4.xy);
                    u_xlat6.x = sqrt(u_xlat6.x);
                    u_xlat6.x = u_xlat6.x + -1.0;
                    u_xlat2.x = dFdxCoarse(u_xlat6.x);
                    u_xlat8 = dFdyCoarse(u_xlat6.x);
                    u_xlat2.x = abs(u_xlat8) + abs(u_xlat2.x);
                    u_xlat6.x = u_xlat6.x / u_xlat2.x;
                    u_xlat12 = (-u_xlat6.x) + 0.5;
                    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
                } else {
                    u_xlat12 = 1.0;
                }
                if(u_xlatb6.z){
                    u_xlat6.x = dot(vs_TEXCOORD4.zw, vs_TEXCOORD4.zw);
                    u_xlat6.x = sqrt(u_xlat6.x);
                    u_xlat6.x = u_xlat6.x + -1.0;
                    u_xlat18 = dFdxCoarse(u_xlat6.x);
                    u_xlat2.x = dFdyCoarse(u_xlat6.x);
                    u_xlat18 = abs(u_xlat18) + abs(u_xlat2.x);
                    u_xlat6.x = u_xlat6.x / u_xlat18;
                    u_xlat6.x = (-u_xlat6.x) + 0.5;
                    u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
                    u_xlat6.x = (-u_xlat6.x) + 1.0;
                    u_xlat12 = u_xlat6.x * u_xlat12;
                }
            } else {
                u_xlat12 = 1.0;
            }
            SV_Target0.xyz = u_xlat1.yzw;
        } else {
            u_xlatb6.x = vs_TEXCOORD1.x==2.0;
            if(u_xlatb6.x){
                u_xlatb6.x = vs_TEXCOORD1.y<4.0;
                if(u_xlatb6.x){
                    u_xlatb18 = vs_TEXCOORD1.y<2.0;
                    if(u_xlatb18){
                        u_xlatb18 = vs_TEXCOORD1.y<1.0;
                        if(u_xlatb18){
                            u_xlat2.x = texture(sampler2D(_Texture0, sampler_Texture0), vs_TEXCOORD0.xy).w;
                        } else {
                            u_xlat2.x = texture(sampler2D(_Texture1, sampler_Texture1), vs_TEXCOORD0.xy).w;
                        }
                    } else {
                        u_xlatb18 = vs_TEXCOORD1.y<3.0;
                        if(u_xlatb18){
                            u_xlat2.x = texture(sampler2D(_Texture2, sampler_Texture2), vs_TEXCOORD0.xy).w;
                        } else {
                            u_xlat2.x = texture(sampler2D(_Texture3, sampler_Texture3), vs_TEXCOORD0.xy).w;
                        }
                    }
                } else {
                    u_xlatb18 = vs_TEXCOORD1.y<6.0;
                    if(u_xlatb18){
                        u_xlatb18 = vs_TEXCOORD1.y<5.0;
                        if(u_xlatb18){
                            u_xlat2.x = texture(sampler2D(_Texture4, sampler_Texture4), vs_TEXCOORD0.xy).w;
                        } else {
                            u_xlat2.x = texture(sampler2D(_Texture5, sampler_Texture5), vs_TEXCOORD0.xy).w;
                        }
                    } else {
                        u_xlatb18 = vs_TEXCOORD1.y<7.0;
                        if(u_xlatb18){
                            u_xlat2.x = texture(sampler2D(_Texture6, sampler_Texture6), vs_TEXCOORD0.xy).w;
                        } else {
                            u_xlat2.x = texture(sampler2D(_Texture7, sampler_Texture7), vs_TEXCOORD0.xy).w;
                        }
                    }
                }
                u_xlat18 = vs_TEXCOORD1.y + vs_TEXCOORD1.y;
                u_xlatu18 = uint(u_xlat18);
                u_xlat3 = vs_TEXCOORD3.xyxy + vec4(0.5, 3.5, 0.5, 1.5);
                u_xlat3 = u_xlat3 * _ShaderInfoTex_TexelSize.xyxy;
                u_xlat4 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat3.xy, 0.0);
                u_xlat4 = u_xlat4 * _TextureInfo[int(u_xlatu18)].wwww;
                u_xlat5.y = u_xlat4.w * 0.25;
                u_xlat14.x = vs_TEXCOORD1.y * 2.0 + 1.0;
                u_xlatu14 = uint(u_xlat14.x);
                u_xlat3.xy = u_xlat4.xy * _TextureInfo[int(u_xlatu18)].yy + vs_TEXCOORD0.xy;
                if(u_xlatb6.x){
                    u_xlatb6.x = vs_TEXCOORD1.y<2.0;
                    if(u_xlatb6.x){
                        u_xlatb6.x = vs_TEXCOORD1.y<1.0;
                        if(u_xlatb6.x){
                            u_xlat2.y = texture(sampler2D(_Texture0, sampler_Texture0), u_xlat3.xy).w;
                        } else {
                            u_xlat2.y = texture(sampler2D(_Texture1, sampler_Texture1), u_xlat3.xy).w;
                        }
                    } else {
                        u_xlatb6.x = vs_TEXCOORD1.y<3.0;
                        if(u_xlatb6.x){
                            u_xlat2.y = texture(sampler2D(_Texture2, sampler_Texture2), u_xlat3.xy).w;
                        } else {
                            u_xlat2.y = texture(sampler2D(_Texture3, sampler_Texture3), u_xlat3.xy).w;
                        }
                    }
                } else {
                    u_xlatb6.x = vs_TEXCOORD1.y<6.0;
                    if(u_xlatb6.x){
                        u_xlatb6.x = vs_TEXCOORD1.y<5.0;
                        if(u_xlatb6.x){
                            u_xlat2.y = texture(sampler2D(_Texture4, sampler_Texture4), u_xlat3.xy).w;
                        } else {
                            u_xlat2.y = texture(sampler2D(_Texture5, sampler_Texture5), u_xlat3.xy).w;
                        }
                    } else {
                        u_xlatb6.x = vs_TEXCOORD1.y<7.0;
                        if(u_xlatb6.x){
                            u_xlat2.y = texture(sampler2D(_Texture6, sampler_Texture6), u_xlat3.xy).w;
                        } else {
                            u_xlat2.y = texture(sampler2D(_Texture7, sampler_Texture7), u_xlat3.xy).w;
                        }
                    }
                }
                u_xlat5.x = (-u_xlat5.y);
                u_xlat5.z = 0.0;
                u_xlat5.xyz = u_xlat5.xyz + vs_TEXCOORD4.xxx;
                u_xlat6.x = dFdxCoarse(vs_TEXCOORD0.y);
                u_xlat20 = dFdyCoarse(vs_TEXCOORD0.y);
                u_xlat6.x = abs(u_xlat6.x) + abs(u_xlat20);
                u_xlat2.xyw = u_xlat2.xxy + vec3(-0.5, -0.5, -0.5);
                u_xlat2.xyw = u_xlat2.xyw * _TextureInfo[int(u_xlatu18)].www + u_xlat5.xyz;
                u_xlat2.xyw = u_xlat2.xyw + u_xlat2.xyw;
                u_xlat4.x = float(0.0);
                u_xlat4.y = float(0.0);
                u_xlat4.xyz = _TextureInfo[int(u_xlatu14)].yyy * u_xlat6.xxx + u_xlat4.xyz;
                u_xlat2.xyz = u_xlat2.xyw / u_xlat4.xyz;
                u_xlat2.xyz = u_xlat2.xyz + vec3(0.5, 0.5, 0.5);
                u_xlat2.xyz = clamp(u_xlat2.xyz, 0.0, 1.0);
                if(u_xlatb0.x){
                    u_xlat0.xy = vs_TEXCOORD3.xy + vec2(0.5, 0.5);
                    u_xlat0.xy = u_xlat0.xy * _ShaderInfoTex_TexelSize.xy;
                    u_xlat4 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat0.xy, 0.0);
                    u_xlat5.w = u_xlat4.w * vs_TEXCOORD1.z;
                } else {
                    u_xlat4.xyz = vs_COLOR0.xyz;
                    u_xlat5.w = vs_COLOR0.w;
                }
                u_xlat5.xyz = u_xlat4.xyz * u_xlat5.www;
                u_xlat3 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat3.zw, 0.0);
                u_xlat4.w = u_xlat3.w * vs_TEXCOORD1.z;
                u_xlat4.xyz = u_xlat3.xyz * u_xlat4.www;
                u_xlat0.xy = (-u_xlat2.xy) + vec2(1.0, 1.0);
                u_xlat3 = u_xlat0.xxxx * u_xlat4;
                u_xlat3 = u_xlat2.yyyy * u_xlat3;
                u_xlat3 = u_xlat5 * u_xlat2.xxxx + u_xlat3;
                u_xlat2.xy = vs_TEXCOORD3.xy + vec2(0.5, 2.5);
                u_xlat2.xy = u_xlat2.xy * _ShaderInfoTex_TexelSize.xy;
                u_xlat4 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat2.xy, 0.0);
                u_xlat18 = u_xlat4.w * vs_TEXCOORD1.z;
                u_xlat2.w = u_xlat2.z * u_xlat18;
                u_xlat2.xyz = u_xlat2.www * u_xlat4.xyz;
                u_xlat2 = u_xlat0.xxxx * u_xlat2;
                u_xlat1 = u_xlat2.wxyz * u_xlat0.yyyy + u_xlat3.wxyz;
                u_xlatb0.x = 0.0<u_xlat1.x;
                u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : 1.0;
                SV_Target0.xyz = u_xlat1.yzw / u_xlat0.xxx;
            } else {
                u_xlat0.x = vs_TEXCOORD1.y + vs_TEXCOORD1.y;
                u_xlatu0 = uint(u_xlat0.x);
                u_xlat2.x = float(0.5);
                u_xlat14.y = float(0.0);
                u_xlat2.y = vs_TEXCOORD1.z + 0.5;
                u_xlat6.xz = u_xlat2.xy * _GradientSettingsTex_TexelSize.xy;
                u_xlat3 = textureLod(sampler2D(_GradientSettingsTex, sampler_GradientSettingsTex), u_xlat6.xz, 0.0);
                u_xlatb3.x = 0.0<u_xlat3.x;
                u_xlat15.xy = u_xlat3.zw + vec2(-0.5, -0.5);
                u_xlat15.xy = u_xlat15.xy + u_xlat15.xy;
                u_xlat4.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
                u_xlat4.xy = u_xlat4.xy * vec2(2.0, 2.0) + (-u_xlat15.xy);
                u_xlat16.x = dot(u_xlat4.xy, u_xlat4.xy);
                u_xlat16.x = inversesqrt(u_xlat16.x);
                u_xlat16.xy = u_xlat16.xx * u_xlat4.xy;
                u_xlat5.x = dot((-u_xlat15.xy), u_xlat16.xy);
                u_xlat15.x = dot(u_xlat15.xy, u_xlat15.xy);
                u_xlat15.x = (-u_xlat5.x) * u_xlat5.x + u_xlat15.x;
                u_xlat15.x = (-u_xlat15.x) + 1.0;
                u_xlat15.x = sqrt(u_xlat15.x);
                u_xlat21 = (-u_xlat15.x) + u_xlat5.x;
                u_xlat15.x = u_xlat15.x + u_xlat5.x;
                u_xlat5.x = min(u_xlat15.x, u_xlat21);
                u_xlatb11 = u_xlat5.x<0.0;
                u_xlat15.x = max(u_xlat15.x, u_xlat21);
                u_xlat15.x = (u_xlatb11) ? u_xlat15.x : u_xlat5.x;
                u_xlat15.xy = u_xlat15.xx * u_xlat16.xy;
                u_xlatb16 = 9.99999975e-05>=abs(u_xlat15.x);
                u_xlatb22 = 9.99999975e-05<abs(u_xlat15.y);
                u_xlat15.xy = u_xlat4.xy / u_xlat15.xy;
                u_xlat21 = u_xlatb22 ? u_xlat15.y : float(0.0);
                u_xlat10.x = (u_xlatb16) ? u_xlat21 : u_xlat15.x;
                u_xlat10.y = 0.0;
                u_xlat4.yz = (u_xlatb3.x) ? u_xlat10.xy : vs_TEXCOORD0.xy;
                u_xlat3.x = u_xlat3.y * 255.0;
                u_xlat3.x = roundEven(u_xlat3.x);
                u_xlati3 = int(u_xlat3.x);
                u_xlatb9 = u_xlat4.y>=(-u_xlat4.y);
                u_xlat15.x = fract(abs(u_xlat4.y));
                u_xlat9 = (u_xlatb9) ? u_xlat15.x : (-u_xlat15.x);
                u_xlat9 = (u_xlati3 != 0) ? u_xlat4.y : u_xlat9;
                u_xlatb3.xz = equal(ivec4(u_xlati3), ivec4(1, 0, 2, 0)).xz;
                u_xlat21 = u_xlat9;
                u_xlat21 = clamp(u_xlat21, 0.0, 1.0);
                u_xlat3.x = (u_xlatb3.x) ? u_xlat21 : u_xlat9;
                u_xlat9 = u_xlat3.x * 0.5;
                u_xlatb21 = u_xlat9>=(-u_xlat9);
                u_xlat9 = fract(abs(u_xlat9));
                u_xlat9 = (u_xlatb21) ? u_xlat9 : (-u_xlat9);
                u_xlat21 = u_xlat9 + u_xlat9;
                u_xlatb9 = 0.5<u_xlat9;
                u_xlatb10 = u_xlat21>=(-u_xlat21);
                u_xlat22 = fract(abs(u_xlat21));
                u_xlat10.x = (u_xlatb10) ? u_xlat22 : (-u_xlat22);
                u_xlat10.x = (-u_xlat10.x) + 1.0;
                u_xlat9 = (u_xlatb9) ? u_xlat10.x : u_xlat21;
                u_xlat4.x = (u_xlatb3.z) ? u_xlat9 : u_xlat3.x;
                u_xlat14.x = _GradientSettingsTex_TexelSize.x;
                u_xlat2.xy = u_xlat2.xy * _GradientSettingsTex_TexelSize.xy + u_xlat14.xy;
                u_xlat3 = textureLod(sampler2D(_GradientSettingsTex, sampler_GradientSettingsTex), u_xlat2.xy, 0.0);
                u_xlat3 = u_xlat3.ywxz * vec4(255.0, 255.0, 65025.0, 65025.0);
                u_xlat2.xy = u_xlat3.xy + u_xlat3.zw;
                u_xlat3.xy = u_xlat2.xy + vec2(0.5, 0.5);
                u_xlat6.xz = u_xlat14.xy * vec2(2.0, 2.0) + u_xlat6.xz;
                u_xlat2 = textureLod(sampler2D(_GradientSettingsTex, sampler_GradientSettingsTex), u_xlat6.xz, 0.0);
                u_xlat2 = u_xlat2.ywxz * vec4(255.0, 255.0, 65025.0, 65025.0);
                u_xlat3.zw = u_xlat2.xy + u_xlat2.zw;
                u_xlat2 = u_xlat3 * _TextureInfo[int(u_xlatu0)].yzyz;
                u_xlat0.xy = u_xlat4.xz * u_xlat2.zw + u_xlat2.xy;
                u_xlatb18 = vs_TEXCOORD1.y<4.0;
                if(u_xlatb18){
                    u_xlatb18 = vs_TEXCOORD1.y<2.0;
                    if(u_xlatb18){
                        u_xlatb18 = vs_TEXCOORD1.y<1.0;
                        if(u_xlatb18){
                            u_xlat2 = texture(sampler2D(_Texture0, sampler_Texture0), u_xlat0.xy);
                        } else {
                            u_xlat2 = texture(sampler2D(_Texture1, sampler_Texture1), u_xlat0.xy);
                        }
                    } else {
                        u_xlatb18 = vs_TEXCOORD1.y<3.0;
                        if(u_xlatb18){
                            u_xlat2 = texture(sampler2D(_Texture2, sampler_Texture2), u_xlat0.xy);
                        } else {
                            u_xlat2 = texture(sampler2D(_Texture3, sampler_Texture3), u_xlat0.xy);
                        }
                    }
                } else {
                    u_xlatb18 = vs_TEXCOORD1.y<6.0;
                    if(u_xlatb18){
                        u_xlatb18 = vs_TEXCOORD1.y<5.0;
                        if(u_xlatb18){
                            u_xlat2 = texture(sampler2D(_Texture4, sampler_Texture4), u_xlat0.xy);
                        } else {
                            u_xlat2 = texture(sampler2D(_Texture5, sampler_Texture5), u_xlat0.xy);
                        }
                    } else {
                        u_xlatb18 = vs_TEXCOORD1.y<7.0;
                        if(u_xlatb18){
                            u_xlat2 = texture(sampler2D(_Texture6, sampler_Texture6), u_xlat0.xy);
                        } else {
                            u_xlat2 = texture(sampler2D(_Texture7, sampler_Texture7), u_xlat0.xy);
                        }
                    }
                }
                u_xlat1 = u_xlat2.wxyz * vs_COLOR0.wxyz;
                SV_Target0.xyz = u_xlat1.yzw;
            }
            u_xlat12 = 1.0;
        }
    }
    u_xlatb0.xy = lessThan(abs(vs_TEXCOORD0.zwzz), vec4(1.00010002, 1.00010002, 0.0, 0.0)).xy;
    u_xlatb0.x = u_xlatb0.x && u_xlatb0.y;
    u_xlat0.x = u_xlatb0.x ? 1.0 : float(0.0);
    u_xlat6.x = u_xlat0.x * u_xlat12;
    u_xlat0.x = u_xlat12 * u_xlat0.x + -0.00300000003;
    u_xlatb0.x = u_xlat0.x<0.0;
    if(((int(u_xlatb0.x) * int(0xffffffffu)))!=0){discard;}
    SV_Target0.w = u_xlat6.x * u_xlat1.x;
    return;
}

