#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

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
	float _RenderViewportScaleFactor;
	vec4 _Distortion_Amount;
	vec4 _Distortion_CenterScale;
	vec4 _MainTex_TexelSize;
	float _ChromaticAberration_Amount;
	vec2 _Lut3D_Params;
	float _PostExposure;
	float _LumaInAlpha;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 3) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 4) uniform mediump texture3D _Lut3D;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec2 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec2 u_xlat7;
float u_xlat8;
vec2 u_xlat9;
bool u_xlatb10;
float u_xlat16;
float u_xlat17;
vec2 u_xlat19;
int u_xlati20;
vec2 u_xlat24;
float u_xlat25;
bool u_xlatb26;
float u_xlat27;
int u_xlati27;
float u_xlat28;
float u_xlat29;
bool u_xlatb29;
float u_xlat34;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_Lut3D;
void main()
{
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat9.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat27 = dot(u_xlat9.xy, u_xlat9.xy);
    u_xlat9.xy = vec2(u_xlat27) * u_xlat9.xy;
    u_xlat9.xy = u_xlat9.xy * vec2(vec2(_ChromaticAberration_Amount, _ChromaticAberration_Amount));
    u_xlat1.xy = (-u_xlat9.xy) * _MainTex_TexelSize.zw;
    u_xlat1.xy = u_xlat1.xy * vec2(0.5, 0.5);
    u_xlat27 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat27 = sqrt(u_xlat27);
    u_xlati27 = int(u_xlat27);
    u_xlati27 = max(u_xlati27, 3);
    u_xlati27 = min(u_xlati27, 16);
    u_xlat1.x = float(u_xlati27);
    u_xlat9.xy = (-u_xlat9.xy) / u_xlat1.xx;
    u_xlatb10 = 0.0<_Distortion_Amount.w;
    u_xlat2.y = 0.0;
    u_xlat3.w = 1.0;
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    u_xlat4.w = float(0.0);
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    u_xlat5.w = float(0.0);
    u_xlat19.xy = vs_TEXCOORD0.xy;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<u_xlati27 ; u_xlati_loop_1++)
    {
        u_xlat29 = float(u_xlati_loop_1);
        u_xlat29 = u_xlat29 + 0.5;
        u_xlat2.x = u_xlat29 / u_xlat1.x;
        u_xlat6.xy = u_xlat19.xy + vec2(-0.5, -0.5);
        u_xlat24.xy = u_xlat6.xy * _Distortion_Amount.zz + vec2(0.5, 0.5);
        u_xlat6.xy = u_xlat6.xy * _Distortion_Amount.zz + (-_Distortion_CenterScale.xy);
        u_xlat6.xy = u_xlat6.xy * _Distortion_CenterScale.zw;
        u_xlat29 = dot(u_xlat6.xy, u_xlat6.xy);
        u_xlat29 = sqrt(u_xlat29);
        if(u_xlatb10){
            u_xlat7.xy = vec2(u_xlat29) * _Distortion_Amount.xy;
            u_xlat8 = cos(u_xlat7.x);
            u_xlat7.x = sin(u_xlat7.x);
            u_xlat7.x = u_xlat7.x / u_xlat8;
            u_xlat16 = float(1.0) / u_xlat7.y;
            u_xlat7.x = u_xlat7.x * u_xlat16 + -1.0;
            u_xlat7.xy = u_xlat6.xy * u_xlat7.xx + u_xlat24.xy;
        } else {
            u_xlat25 = float(1.0) / u_xlat29;
            u_xlat25 = u_xlat25 * _Distortion_Amount.x;
            u_xlat29 = u_xlat29 * _Distortion_Amount.y;
            u_xlat34 = min(abs(u_xlat29), 1.0);
            u_xlat8 = max(abs(u_xlat29), 1.0);
            u_xlat8 = float(1.0) / u_xlat8;
            u_xlat34 = u_xlat34 * u_xlat8;
            u_xlat8 = u_xlat34 * u_xlat34;
            u_xlat17 = u_xlat8 * 0.0208350997 + -0.0851330012;
            u_xlat17 = u_xlat8 * u_xlat17 + 0.180141002;
            u_xlat17 = u_xlat8 * u_xlat17 + -0.330299497;
            u_xlat8 = u_xlat8 * u_xlat17 + 0.999866009;
            u_xlat17 = u_xlat34 * u_xlat8;
            u_xlatb26 = 1.0<abs(u_xlat29);
            u_xlat17 = u_xlat17 * -2.0 + 1.57079637;
            u_xlat17 = u_xlatb26 ? u_xlat17 : float(0.0);
            u_xlat34 = u_xlat34 * u_xlat8 + u_xlat17;
            u_xlat29 = min(u_xlat29, 1.0);
            u_xlatb29 = u_xlat29<(-u_xlat29);
            u_xlat29 = (u_xlatb29) ? (-u_xlat34) : u_xlat34;
            u_xlat29 = u_xlat25 * u_xlat29 + -1.0;
            u_xlat7.xy = u_xlat6.xy * vec2(u_xlat29) + u_xlat24.xy;
        }
        u_xlat7.xy = u_xlat7.xy;
        u_xlat7.xy = clamp(u_xlat7.xy, 0.0, 1.0);
        u_xlat6.xy = u_xlat7.xy * vec2(_RenderViewportScaleFactor);
        u_xlat6 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat6.xy, 0.0);
        u_xlat3.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), u_xlat2.xy, 0.0).xyz;
        u_xlat4 = u_xlat6 * u_xlat3 + u_xlat4;
        u_xlat5 = u_xlat3 + u_xlat5;
        u_xlat19.xy = u_xlat9.xy + u_xlat19.xy;
    }
    u_xlat1 = u_xlat4 / u_xlat5;
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat0 = u_xlat1.wxyz * vec4(vec4(_PostExposure, _PostExposure, _PostExposure, _PostExposure));
    u_xlat1.xyz = u_xlat0.yzw * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    u_xlat1.xyz = log2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(0.386036009, 0.386036009, 0.386036009);
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat1.xyz = u_xlat1.xyz * _Lut3D_Params.yyy;
    u_xlat28 = _Lut3D_Params.x * 0.5;
    u_xlat1.xyz = u_xlat1.xyz * _Lut3D_Params.xxx + vec3(u_xlat28);
    u_xlat0.yzw = texture(sampler3D(_Lut3D, sampler_Lut3D), u_xlat1.xyz).xyz;
    u_xlatb1 = 0.5<_LumaInAlpha;
    if(u_xlatb1){
        u_xlat1.xyz = u_xlat0.yzw;
        u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
        u_xlat0.x = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    }
    SV_Target0 = u_xlat0.yzwx;
    return;
}

