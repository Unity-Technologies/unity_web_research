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
layout(set = 1, binding = 0, std140) uniform PGlobals {
	vec4 _GradientSettingsTex_TexelSize;
	vec4 _ShaderInfoTex_TexelSize;
	vec4 _TextureInfo[16];
};
layout(set = 0, binding = 0) uniform mediump texture2D _Texture0;
layout(set = 0, binding = 1) uniform mediump texture2D _Texture1;
layout(set = 0, binding = 2) uniform mediump texture2D _Texture2;
layout(set = 0, binding = 3) uniform mediump texture2D _Texture3;
layout(set = 0, binding = 4) uniform mediump texture2D _Texture4;
layout(set = 0, binding = 5) uniform mediump texture2D _Texture5;
layout(set = 0, binding = 6) uniform mediump texture2D _Texture6;
layout(set = 0, binding = 7) uniform mediump texture2D _Texture7;
layout(set = 0, binding = 8) uniform highp texture2D _ShaderInfoTex;
layout(set = 0, binding = 9) uniform mediump texture2D _GradientSettingsTex;
layout(location = 0) in highp  vec4 vs_COLOR0;
layout(location = 1) in highp  vec4 vs_TEXCOORD0;
layout(location = 2) flat in highp  vec4 vs_TEXCOORD1;
layout(location = 3) flat in highp  vec2 vs_TEXCOORD3;
layout(location = 4) in highp  vec4 vs_TEXCOORD4;
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
vec3 u_xlat7;
bvec3 u_xlatb7;
vec3 u_xlat9;
float u_xlat10;
bool u_xlatb10;
vec2 u_xlat11;
bool u_xlatb11;
bool u_xlatb12;
float u_xlat14;
bvec2 u_xlatb14;
vec2 u_xlat16;
uint u_xlatu16;
vec2 u_xlat17;
vec2 u_xlat18;
bool u_xlatb18;
float u_xlat21;
uint u_xlatu21;
bool u_xlatb21;
float u_xlat23;
bool u_xlatb23;
float u_xlat24;
bool u_xlatb24;
float u_xlat25;
bool u_xlatb25;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_GradientSettingsTex;
layout(set = 0, binding = 11) uniform highp  sampler sampler_ShaderInfoTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_Texture0;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_Texture1;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_Texture2;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_Texture3;
layout(set = 0, binding = 16) uniform mediump  sampler sampler_Texture4;
layout(set = 0, binding = 17) uniform mediump  sampler sampler_Texture5;
layout(set = 0, binding = 18) uniform mediump  sampler sampler_Texture6;
layout(set = 0, binding = 19) uniform mediump  sampler sampler_Texture7;
void main()
{
    u_xlatb0.x = vs_TEXCOORD1.w>=2.0;
    u_xlat7.x = vs_TEXCOORD1.w + -2.0;
    u_xlat7.x = (u_xlatb0.x) ? u_xlat7.x : vs_TEXCOORD1.w;
    u_xlatb14.x = vs_TEXCOORD1.x==1.0;
    if(u_xlatb14.x){
        u_xlatb14.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(u_xlat7.x);
        if(u_xlatb14.x){
            u_xlatb14.xy = lessThan(vec4(-9999.0, -9999.0, -9999.0, -9999.0), vs_TEXCOORD4.xzxz).xy;
            if(u_xlatb14.x){
                u_xlat14 = dot(vs_TEXCOORD4.xy, vs_TEXCOORD4.xy);
                u_xlat14 = sqrt(u_xlat14);
                u_xlat14 = u_xlat14 + -1.0;
                u_xlat1.x = dFdxCoarse(u_xlat14);
                u_xlat1.y = dFdyCoarse(u_xlat14);
                u_xlat1.x = dot(u_xlat1.xy, u_xlat1.xy);
                u_xlat1.x = sqrt(u_xlat1.x);
                u_xlat14 = u_xlat14 / u_xlat1.x;
                u_xlat14 = (-u_xlat14) + 0.5;
                u_xlat14 = clamp(u_xlat14, 0.0, 1.0);
            } else {
                u_xlat14 = 1.0;
            }
            if(u_xlatb14.y){
                u_xlat21 = dot(vs_TEXCOORD4.zw, vs_TEXCOORD4.zw);
                u_xlat21 = sqrt(u_xlat21);
                u_xlat21 = u_xlat21 + -1.0;
                u_xlat1.x = dFdxCoarse(u_xlat21);
                u_xlat1.y = dFdyCoarse(u_xlat21);
                u_xlat1.x = dot(u_xlat1.xy, u_xlat1.xy);
                u_xlat1.x = sqrt(u_xlat1.x);
                u_xlat21 = u_xlat21 / u_xlat1.x;
                u_xlat21 = (-u_xlat21) + 0.5;
                u_xlat21 = clamp(u_xlat21, 0.0, 1.0);
                u_xlat21 = (-u_xlat21) + 1.0;
                u_xlat14 = u_xlat21 * u_xlat14;
            }
        } else {
            u_xlat14 = 1.0;
        }
        SV_Target0.xyz = vs_COLOR0.xyz;
        u_xlat1.x = vs_COLOR0.w;
    } else {
        u_xlatb21 = vs_TEXCOORD1.x==3.0;
        if(u_xlatb21){
            u_xlatb21 = vs_TEXCOORD1.y<4.0;
            if(u_xlatb21){
                u_xlatb21 = vs_TEXCOORD1.y<2.0;
                if(u_xlatb21){
                    u_xlatb21 = vs_TEXCOORD1.y<1.0;
                    if(u_xlatb21){
                        u_xlat2 = texture(sampler2D(_Texture0, sampler_Texture0), vs_TEXCOORD0.xy);
                    } else {
                        u_xlat2 = texture(sampler2D(_Texture1, sampler_Texture1), vs_TEXCOORD0.xy);
                    }
                } else {
                    u_xlatb21 = vs_TEXCOORD1.y<3.0;
                    if(u_xlatb21){
                        u_xlat2 = texture(sampler2D(_Texture2, sampler_Texture2), vs_TEXCOORD0.xy);
                    } else {
                        u_xlat2 = texture(sampler2D(_Texture3, sampler_Texture3), vs_TEXCOORD0.xy);
                    }
                }
            } else {
                u_xlatb21 = vs_TEXCOORD1.y<6.0;
                if(u_xlatb21){
                    u_xlatb21 = vs_TEXCOORD1.y<5.0;
                    if(u_xlatb21){
                        u_xlat2 = texture(sampler2D(_Texture4, sampler_Texture4), vs_TEXCOORD0.xy);
                    } else {
                        u_xlat2 = texture(sampler2D(_Texture5, sampler_Texture5), vs_TEXCOORD0.xy);
                    }
                } else {
                    u_xlatb21 = vs_TEXCOORD1.y<7.0;
                    if(u_xlatb21){
                        u_xlat2 = texture(sampler2D(_Texture6, sampler_Texture6), vs_TEXCOORD0.xy);
                    } else {
                        u_xlat2 = texture(sampler2D(_Texture7, sampler_Texture7), vs_TEXCOORD0.xy);
                    }
                }
            }
            u_xlat1 = u_xlat2.wxyz * vs_COLOR0.wxyz;
            u_xlatb7.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(u_xlat7.x);
            if(u_xlatb7.x){
                u_xlatb7.xz = lessThan(vec4(-9999.0, 0.0, -9999.0, -9999.0), vs_TEXCOORD4.xxzz).xz;
                if(u_xlatb7.x){
                    u_xlat7.x = dot(vs_TEXCOORD4.xy, vs_TEXCOORD4.xy);
                    u_xlat7.x = sqrt(u_xlat7.x);
                    u_xlat7.x = u_xlat7.x + -1.0;
                    u_xlat2.x = dFdxCoarse(u_xlat7.x);
                    u_xlat2.y = dFdyCoarse(u_xlat7.x);
                    u_xlat2.x = dot(u_xlat2.xy, u_xlat2.xy);
                    u_xlat2.x = sqrt(u_xlat2.x);
                    u_xlat7.x = u_xlat7.x / u_xlat2.x;
                    u_xlat14 = (-u_xlat7.x) + 0.5;
                    u_xlat14 = clamp(u_xlat14, 0.0, 1.0);
                } else {
                    u_xlat14 = 1.0;
                }
                if(u_xlatb7.z){
                    u_xlat7.x = dot(vs_TEXCOORD4.zw, vs_TEXCOORD4.zw);
                    u_xlat7.x = sqrt(u_xlat7.x);
                    u_xlat7.x = u_xlat7.x + -1.0;
                    u_xlat2.x = dFdxCoarse(u_xlat7.x);
                    u_xlat2.y = dFdyCoarse(u_xlat7.x);
                    u_xlat21 = dot(u_xlat2.xy, u_xlat2.xy);
                    u_xlat21 = sqrt(u_xlat21);
                    u_xlat7.x = u_xlat7.x / u_xlat21;
                    u_xlat7.x = (-u_xlat7.x) + 0.5;
                    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
                    u_xlat7.x = (-u_xlat7.x) + 1.0;
                    u_xlat14 = u_xlat7.x * u_xlat14;
                }
            } else {
                u_xlat14 = 1.0;
            }
            SV_Target0.xyz = u_xlat1.yzw;
        } else {
            u_xlatb7.x = vs_TEXCOORD1.x==2.0;
            if(u_xlatb7.x){
                u_xlatb7.x = vs_TEXCOORD1.y<4.0;
                if(u_xlatb7.x){
                    u_xlatb21 = vs_TEXCOORD1.y<2.0;
                    if(u_xlatb21){
                        u_xlatb21 = vs_TEXCOORD1.y<1.0;
                        if(u_xlatb21){
                            u_xlat2.x = texture(sampler2D(_Texture0, sampler_Texture0), vs_TEXCOORD0.xy).w;
                        } else {
                            u_xlat2.x = texture(sampler2D(_Texture1, sampler_Texture1), vs_TEXCOORD0.xy).w;
                        }
                    } else {
                        u_xlatb21 = vs_TEXCOORD1.y<3.0;
                        if(u_xlatb21){
                            u_xlat2.x = texture(sampler2D(_Texture2, sampler_Texture2), vs_TEXCOORD0.xy).w;
                        } else {
                            u_xlat2.x = texture(sampler2D(_Texture3, sampler_Texture3), vs_TEXCOORD0.xy).w;
                        }
                    }
                } else {
                    u_xlatb21 = vs_TEXCOORD1.y<6.0;
                    if(u_xlatb21){
                        u_xlatb21 = vs_TEXCOORD1.y<5.0;
                        if(u_xlatb21){
                            u_xlat2.x = texture(sampler2D(_Texture4, sampler_Texture4), vs_TEXCOORD0.xy).w;
                        } else {
                            u_xlat2.x = texture(sampler2D(_Texture5, sampler_Texture5), vs_TEXCOORD0.xy).w;
                        }
                    } else {
                        u_xlatb21 = vs_TEXCOORD1.y<7.0;
                        if(u_xlatb21){
                            u_xlat2.x = texture(sampler2D(_Texture6, sampler_Texture6), vs_TEXCOORD0.xy).w;
                        } else {
                            u_xlat2.x = texture(sampler2D(_Texture7, sampler_Texture7), vs_TEXCOORD0.xy).w;
                        }
                    }
                }
                u_xlat21 = vs_TEXCOORD1.y + vs_TEXCOORD1.y;
                u_xlatu21 = uint(u_xlat21);
                u_xlat16.x = vs_TEXCOORD1.y * 2.0 + 1.0;
                u_xlatu16 = uint(u_xlat16.x);
                u_xlatb23 = 0.0<_TextureInfo[int(u_xlatu21)].w;
                if(u_xlatb23){
                    u_xlat3 = vs_TEXCOORD3.xyxy + vec4(0.5, 3.5, 0.5, 1.5);
                    u_xlat3 = u_xlat3 * _ShaderInfoTex_TexelSize.xyxy;
                    u_xlat4 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat3.xy, 0.0);
                    u_xlat23 = -1.5 + _TextureInfo[int(u_xlatu21)].w;
                    u_xlat4 = vec4(u_xlat23) * u_xlat4;
                    u_xlat5.y = u_xlat4.w * 0.25;
                    u_xlat3.xy = u_xlat4.xy * _TextureInfo[int(u_xlatu21)].yy + vs_TEXCOORD0.xy;
                    if(u_xlatb7.x){
                        u_xlatb7.x = vs_TEXCOORD1.y<2.0;
                        if(u_xlatb7.x){
                            u_xlatb7.x = vs_TEXCOORD1.y<1.0;
                            if(u_xlatb7.x){
                                u_xlat2.y = texture(sampler2D(_Texture0, sampler_Texture0), u_xlat3.xy).w;
                            } else {
                                u_xlat2.y = texture(sampler2D(_Texture1, sampler_Texture1), u_xlat3.xy).w;
                            }
                        } else {
                            u_xlatb7.x = vs_TEXCOORD1.y<3.0;
                            if(u_xlatb7.x){
                                u_xlat2.y = texture(sampler2D(_Texture2, sampler_Texture2), u_xlat3.xy).w;
                            } else {
                                u_xlat2.y = texture(sampler2D(_Texture3, sampler_Texture3), u_xlat3.xy).w;
                            }
                        }
                    } else {
                        u_xlatb7.x = vs_TEXCOORD1.y<6.0;
                        if(u_xlatb7.x){
                            u_xlatb7.x = vs_TEXCOORD1.y<5.0;
                            if(u_xlatb7.x){
                                u_xlat2.y = texture(sampler2D(_Texture4, sampler_Texture4), u_xlat3.xy).w;
                            } else {
                                u_xlat2.y = texture(sampler2D(_Texture5, sampler_Texture5), u_xlat3.xy).w;
                            }
                        } else {
                            u_xlatb7.x = vs_TEXCOORD1.y<7.0;
                            if(u_xlatb7.x){
                                u_xlat2.y = texture(sampler2D(_Texture6, sampler_Texture6), u_xlat3.xy).w;
                            } else {
                                u_xlat2.y = texture(sampler2D(_Texture7, sampler_Texture7), u_xlat3.xy).w;
                            }
                        }
                    }
                    u_xlat5.x = (-u_xlat5.y);
                    u_xlat5.z = 0.0;
                    u_xlat5.xyz = u_xlat5.xyz + vs_TEXCOORD4.xxx;
                    u_xlat7.x = dFdxCoarse(vs_TEXCOORD0.y);
                    u_xlat23 = dFdyCoarse(vs_TEXCOORD0.y);
                    u_xlat7.x = abs(u_xlat7.x) + abs(u_xlat23);
                    u_xlat7.x = u_xlat7.x * _TextureInfo[int(u_xlatu16)].y;
                    u_xlat6.xyz = u_xlat2.xxy + vec3(-0.5, -0.5, -0.5);
                    u_xlat5.xyz = u_xlat6.xyz * _TextureInfo[int(u_xlatu21)].www + u_xlat5.xyz;
                    u_xlat5.xyz = u_xlat5.xyz + u_xlat5.xyz;
                    u_xlat21 = 1.0 + _TextureInfo[int(u_xlatu16)].z;
                    u_xlat7.x = u_xlat7.x / u_xlat21;
                    u_xlat4.x = float(0.0);
                    u_xlat4.y = float(0.0);
                    u_xlat9.xyz = u_xlat7.xxx + u_xlat4.xyz;
                    u_xlat9.xyz = u_xlat5.xyz / u_xlat9.xyz;
                    u_xlat9.xyz = u_xlat9.xyz + vec3(0.5, 0.5, 0.5);
                    u_xlat9.xyz = clamp(u_xlat9.xyz, 0.0, 1.0);
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
                    u_xlat0.xy = (-u_xlat9.xy) + vec2(1.0, 1.0);
                    u_xlat3 = u_xlat0.xxxx * u_xlat4;
                    u_xlat3 = u_xlat9.yyyy * u_xlat3;
                    u_xlat3 = u_xlat5 * u_xlat9.xxxx + u_xlat3;
                    u_xlat9.xy = vs_TEXCOORD3.xy + vec2(0.5, 2.5);
                    u_xlat9.xy = u_xlat9.xy * _ShaderInfoTex_TexelSize.xy;
                    u_xlat4 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat9.xy, 0.0);
                    u_xlat21 = u_xlat4.w * vs_TEXCOORD1.z;
                    u_xlat5.w = u_xlat9.z * u_xlat21;
                    u_xlat5.xyz = u_xlat4.xyz * u_xlat5.www;
                    u_xlat4 = u_xlat0.xxxx * u_xlat5;
                    u_xlat1 = u_xlat4.wxyz * u_xlat0.yyyy + u_xlat3.wxyz;
                    u_xlatb0.x = 0.0<u_xlat1.x;
                    u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : 1.0;
                    SV_Target0.xyz = u_xlat1.yzw / u_xlat0.xxx;
                } else {
                    u_xlat1.x = u_xlat2.x * vs_COLOR0.w;
                    SV_Target0.xyz = vs_COLOR0.xyz;
                }
            } else {
                u_xlat0.x = vs_TEXCOORD1.y + vs_TEXCOORD1.y;
                u_xlatu0 = uint(u_xlat0.x);
                u_xlat2.x = float(0.5);
                u_xlat16.y = float(0.0);
                u_xlat2.y = vs_TEXCOORD1.z + 0.5;
                u_xlat7.xz = u_xlat2.xy * _GradientSettingsTex_TexelSize.xy;
                u_xlat3 = textureLod(sampler2D(_GradientSettingsTex, sampler_GradientSettingsTex), u_xlat7.xz, 0.0);
                u_xlatb3.x = 0.0<u_xlat3.x;
                u_xlat17.xy = u_xlat3.zw + vec2(-0.5, -0.5);
                u_xlat17.xy = u_xlat17.xy + u_xlat17.xy;
                u_xlat4.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
                u_xlat4.xy = u_xlat4.xy * vec2(2.0, 2.0) + (-u_xlat17.xy);
                u_xlat18.x = dot(u_xlat4.xy, u_xlat4.xy);
                u_xlat18.x = inversesqrt(u_xlat18.x);
                u_xlat18.xy = u_xlat18.xx * u_xlat4.xy;
                u_xlat5.x = dot((-u_xlat17.xy), u_xlat18.xy);
                u_xlat17.x = dot(u_xlat17.xy, u_xlat17.xy);
                u_xlat17.x = (-u_xlat5.x) * u_xlat5.x + u_xlat17.x;
                u_xlat17.x = (-u_xlat17.x) + 1.0;
                u_xlat17.x = sqrt(u_xlat17.x);
                u_xlat24 = (-u_xlat17.x) + u_xlat5.x;
                u_xlat17.x = u_xlat17.x + u_xlat5.x;
                u_xlat5.x = min(u_xlat17.x, u_xlat24);
                u_xlatb12 = u_xlat5.x<0.0;
                u_xlat17.x = max(u_xlat17.x, u_xlat24);
                u_xlat17.x = (u_xlatb12) ? u_xlat17.x : u_xlat5.x;
                u_xlat17.xy = u_xlat17.xx * u_xlat18.xy;
                u_xlatb18 = 9.99999975e-05>=abs(u_xlat17.x);
                u_xlatb25 = 9.99999975e-05<abs(u_xlat17.y);
                u_xlat17.xy = u_xlat4.xy / u_xlat17.xy;
                u_xlat24 = u_xlatb25 ? u_xlat17.y : float(0.0);
                u_xlat11.x = (u_xlatb18) ? u_xlat24 : u_xlat17.x;
                u_xlat11.y = 0.0;
                u_xlat4.yz = (u_xlatb3.x) ? u_xlat11.xy : vs_TEXCOORD0.xy;
                u_xlat3.x = u_xlat3.y * 255.0;
                u_xlat3.x = roundEven(u_xlat3.x);
                u_xlati3 = int(u_xlat3.x);
                u_xlatb10 = u_xlat4.y>=(-u_xlat4.y);
                u_xlat17.x = fract(abs(u_xlat4.y));
                u_xlat10 = (u_xlatb10) ? u_xlat17.x : (-u_xlat17.x);
                u_xlat10 = (u_xlati3 != 0) ? u_xlat4.y : u_xlat10;
                u_xlatb3.xz = equal(ivec4(u_xlati3), ivec4(1, 0, 2, 0)).xz;
                u_xlat24 = u_xlat10;
                u_xlat24 = clamp(u_xlat24, 0.0, 1.0);
                u_xlat3.x = (u_xlatb3.x) ? u_xlat24 : u_xlat10;
                u_xlat10 = u_xlat3.x * 0.5;
                u_xlatb24 = u_xlat10>=(-u_xlat10);
                u_xlat10 = fract(abs(u_xlat10));
                u_xlat10 = (u_xlatb24) ? u_xlat10 : (-u_xlat10);
                u_xlat24 = u_xlat10 + u_xlat10;
                u_xlatb10 = 0.5<u_xlat10;
                u_xlatb11 = u_xlat24>=(-u_xlat24);
                u_xlat25 = fract(abs(u_xlat24));
                u_xlat11.x = (u_xlatb11) ? u_xlat25 : (-u_xlat25);
                u_xlat11.x = (-u_xlat11.x) + 1.0;
                u_xlat10 = (u_xlatb10) ? u_xlat11.x : u_xlat24;
                u_xlat4.x = (u_xlatb3.z) ? u_xlat10 : u_xlat3.x;
                u_xlat16.x = _GradientSettingsTex_TexelSize.x;
                u_xlat2.xy = u_xlat2.xy * _GradientSettingsTex_TexelSize.xy + u_xlat16.xy;
                u_xlat3 = textureLod(sampler2D(_GradientSettingsTex, sampler_GradientSettingsTex), u_xlat2.xy, 0.0);
                u_xlat3 = u_xlat3.ywxz * vec4(255.0, 255.0, 65025.0, 65025.0);
                u_xlat2.xy = u_xlat3.xy + u_xlat3.zw;
                u_xlat3.xy = u_xlat2.xy + vec2(0.5, 0.5);
                u_xlat7.xz = u_xlat16.xy * vec2(2.0, 2.0) + u_xlat7.xz;
                u_xlat2 = textureLod(sampler2D(_GradientSettingsTex, sampler_GradientSettingsTex), u_xlat7.xz, 0.0);
                u_xlat2 = u_xlat2.ywxz * vec4(255.0, 255.0, 65025.0, 65025.0);
                u_xlat3.zw = u_xlat2.xy + u_xlat2.zw;
                u_xlat2 = u_xlat3 * _TextureInfo[int(u_xlatu0)].yzyz;
                u_xlat0.xy = u_xlat4.xz * u_xlat2.zw + u_xlat2.xy;
                u_xlatb21 = vs_TEXCOORD1.y<4.0;
                if(u_xlatb21){
                    u_xlatb21 = vs_TEXCOORD1.y<2.0;
                    if(u_xlatb21){
                        u_xlatb21 = vs_TEXCOORD1.y<1.0;
                        if(u_xlatb21){
                            u_xlat2 = texture(sampler2D(_Texture0, sampler_Texture0), u_xlat0.xy);
                        } else {
                            u_xlat2 = texture(sampler2D(_Texture1, sampler_Texture1), u_xlat0.xy);
                        }
                    } else {
                        u_xlatb21 = vs_TEXCOORD1.y<3.0;
                        if(u_xlatb21){
                            u_xlat2 = texture(sampler2D(_Texture2, sampler_Texture2), u_xlat0.xy);
                        } else {
                            u_xlat2 = texture(sampler2D(_Texture3, sampler_Texture3), u_xlat0.xy);
                        }
                    }
                } else {
                    u_xlatb21 = vs_TEXCOORD1.y<6.0;
                    if(u_xlatb21){
                        u_xlatb21 = vs_TEXCOORD1.y<5.0;
                        if(u_xlatb21){
                            u_xlat2 = texture(sampler2D(_Texture4, sampler_Texture4), u_xlat0.xy);
                        } else {
                            u_xlat2 = texture(sampler2D(_Texture5, sampler_Texture5), u_xlat0.xy);
                        }
                    } else {
                        u_xlatb21 = vs_TEXCOORD1.y<7.0;
                        if(u_xlatb21){
                            u_xlat2 = texture(sampler2D(_Texture6, sampler_Texture6), u_xlat0.xy);
                        } else {
                            u_xlat2 = texture(sampler2D(_Texture7, sampler_Texture7), u_xlat0.xy);
                        }
                    }
                }
                u_xlat1 = u_xlat2.wxyz * vs_COLOR0.wxyz;
                SV_Target0.xyz = u_xlat1.yzw;
            }
            u_xlat14 = 1.0;
        }
    }
    u_xlatb0.xy = lessThan(abs(vs_TEXCOORD0.zwzz), vec4(1.00010002, 1.00010002, 0.0, 0.0)).xy;
    u_xlatb0.x = u_xlatb0.x && u_xlatb0.y;
    u_xlat0.x = u_xlatb0.x ? 1.0 : float(0.0);
    u_xlat7.x = u_xlat0.x * u_xlat14;
    u_xlat0.x = u_xlat14 * u_xlat0.x + -0.00300000003;
    u_xlatb0.x = u_xlat0.x<0.0;
    if(((int(u_xlatb0.x) * int(0xffffffffu)))!=0){discard;}
    SV_Target0.w = u_xlat7.x * u_xlat1.x;
    return;
}

