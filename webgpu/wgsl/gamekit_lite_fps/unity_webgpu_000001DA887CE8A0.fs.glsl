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
	vec4 _Distortion_Amount;
	vec4 _Distortion_CenterScale;
	vec3 _Lut2D_Params;
	float _PostExposure;
	vec2 _Grain_Params1;
	vec4 _Grain_Params2;
	float _LumaInAlpha;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 3) uniform mediump texture2D _Lut2D;
layout(set = 0, binding = 4) uniform mediump texture2D _GrainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
vec3 u_xlat3;
vec2 u_xlat4;
vec3 u_xlat6;
bool u_xlatb6;
float u_xlat7;
vec2 u_xlat10;
vec2 u_xlat11;
float u_xlat12;
float u_xlat15;
float u_xlat16;
bool u_xlatb17;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_Lut2D;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_GrainTex;
void main()
{
    u_xlat0.xy = vs_TEXCOORD1.xy + vec2(-0.5, -0.5);
    u_xlat10.xy = u_xlat0.xy * _Distortion_Amount.zz + vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * _Distortion_Amount.zz + (-_Distortion_CenterScale.xy);
    u_xlat0.xy = u_xlat0.xy * _Distortion_CenterScale.zw;
    u_xlat1.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlatb6 = 0.0<_Distortion_Amount.w;
    if(u_xlatb6){
        u_xlat6.xy = u_xlat1.xx * _Distortion_Amount.xy;
        u_xlat2.x = sin(u_xlat6.x);
        u_xlat3.x = cos(u_xlat6.x);
        u_xlat6.x = u_xlat2.x / u_xlat3.x;
        u_xlat11.x = float(1.0) / u_xlat6.y;
        u_xlat6.x = u_xlat6.x * u_xlat11.x + -1.0;
        u_xlat6.xy = u_xlat0.xy * u_xlat6.xx + u_xlat10.xy;
    } else {
        u_xlat16 = float(1.0) / u_xlat1.x;
        u_xlat16 = u_xlat16 * _Distortion_Amount.x;
        u_xlat1.x = u_xlat1.x * _Distortion_Amount.y;
        u_xlat2.x = min(abs(u_xlat1.x), 1.0);
        u_xlat7 = max(abs(u_xlat1.x), 1.0);
        u_xlat7 = float(1.0) / u_xlat7;
        u_xlat2.x = u_xlat7 * u_xlat2.x;
        u_xlat7 = u_xlat2.x * u_xlat2.x;
        u_xlat12 = u_xlat7 * 0.0208350997 + -0.0851330012;
        u_xlat12 = u_xlat7 * u_xlat12 + 0.180141002;
        u_xlat12 = u_xlat7 * u_xlat12 + -0.330299497;
        u_xlat7 = u_xlat7 * u_xlat12 + 0.999866009;
        u_xlat12 = u_xlat7 * u_xlat2.x;
        u_xlatb17 = 1.0<abs(u_xlat1.x);
        u_xlat12 = u_xlat12 * -2.0 + 1.57079637;
        u_xlat12 = u_xlatb17 ? u_xlat12 : float(0.0);
        u_xlat2.x = u_xlat2.x * u_xlat7 + u_xlat12;
        u_xlat1.x = min(u_xlat1.x, 1.0);
        u_xlatb1 = u_xlat1.x<(-u_xlat1.x);
        u_xlat1.x = (u_xlatb1) ? (-u_xlat2.x) : u_xlat2.x;
        u_xlat1.x = u_xlat16 * u_xlat1.x + -1.0;
        u_xlat6.xy = u_xlat0.xy * u_xlat1.xx + u_xlat10.xy;
    }
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat6.xy);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat2.xy = vs_TEXCOORD1.xy * _Grain_Params2.xy + _Grain_Params2.zw;
    u_xlat2.xyz = texture(sampler2D(_GrainTex, sampler_GrainTex), u_xlat2.xy).xyz;
    u_xlat3.xyz = u_xlat0.xyz;
    u_xlat3.xyz = clamp(u_xlat3.xyz, 0.0, 1.0);
    u_xlat15 = dot(u_xlat3.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat15 = sqrt(u_xlat15);
    u_xlat15 = _Grain_Params1.xxxy.z * (-u_xlat15) + 1.0;
    u_xlat2.xyz = u_xlat0.xyz * u_xlat2.xyz;
    u_xlat2.xyz = u_xlat2.xyz * vec3(_Grain_Params1.y, _Grain_Params1.y, _Grain_Params1.y);
    u_xlat1.xyz = u_xlat2.xyz * vec3(u_xlat15) + u_xlat0.xyz;
    u_xlat0 = u_xlat1 * vec4(vec4(_PostExposure, _PostExposure, _PostExposure, _PostExposure));
    u_xlat1.xyz = u_xlat0.zxy * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    u_xlat1.xyz = log2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(0.386036009, 0.386036009, 0.386036009);
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat6.xyz = u_xlat1.xyz * _Lut2D_Params.zzz;
    u_xlat6.x = floor(u_xlat6.x);
    u_xlat2.xy = _Lut2D_Params.xy * vec2(0.5, 0.5);
    u_xlat2.yz = u_xlat6.yz * _Lut2D_Params.xy + u_xlat2.xy;
    u_xlat2.x = u_xlat6.x * _Lut2D_Params.y + u_xlat2.y;
    u_xlat3.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat2.xz).xyz;
    u_xlat4.x = _Lut2D_Params.y;
    u_xlat4.y = 0.0;
    u_xlat11.xy = u_xlat2.xz + u_xlat4.xy;
    u_xlat2.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat11.xy).xyz;
    u_xlat1.x = u_xlat1.x * _Lut2D_Params.z + (-u_xlat6.x);
    u_xlat6.xyz = (-u_xlat3.xyz) + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat1.xxx * u_xlat6.xyz + u_xlat3.xyz;
    u_xlatb1 = 0.5<_LumaInAlpha;
    if(u_xlatb1){
        u_xlat1.xyz = u_xlat0.xyz;
        u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
        u_xlat0.w = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    }
    SV_Target0 = u_xlat0;
    return;
}

