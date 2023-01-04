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
	vec2 _Lut3D_Params;
	float _PostExposure;
	float _LumaInAlpha;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 3) uniform mediump texture3D _Lut3D;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
float u_xlat2;
float u_xlat3;
vec2 u_xlat5;
bool u_xlatb5;
float u_xlat6;
vec2 u_xlat8;
float u_xlat9;
float u_xlat10;
float u_xlat13;
bool u_xlatb14;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_Lut3D;
void main()
{
    u_xlat0.xy = vs_TEXCOORD1.xy + vec2(-0.5, -0.5);
    u_xlat8.xy = u_xlat0.xy * _Distortion_Amount.zz + vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * _Distortion_Amount.zz + (-_Distortion_CenterScale.xy);
    u_xlat0.xy = u_xlat0.xy * _Distortion_CenterScale.zw;
    u_xlat1.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlatb5 = 0.0<_Distortion_Amount.w;
    if(u_xlatb5){
        u_xlat5.xy = u_xlat1.xx * _Distortion_Amount.xy;
        u_xlat2 = sin(u_xlat5.x);
        u_xlat3 = cos(u_xlat5.x);
        u_xlat5.x = u_xlat2 / u_xlat3;
        u_xlat9 = float(1.0) / u_xlat5.y;
        u_xlat5.x = u_xlat5.x * u_xlat9 + -1.0;
        u_xlat5.xy = u_xlat0.xy * u_xlat5.xx + u_xlat8.xy;
    } else {
        u_xlat13 = float(1.0) / u_xlat1.x;
        u_xlat13 = u_xlat13 * _Distortion_Amount.x;
        u_xlat1.x = u_xlat1.x * _Distortion_Amount.y;
        u_xlat2 = min(abs(u_xlat1.x), 1.0);
        u_xlat6 = max(abs(u_xlat1.x), 1.0);
        u_xlat6 = float(1.0) / u_xlat6;
        u_xlat2 = u_xlat6 * u_xlat2;
        u_xlat6 = u_xlat2 * u_xlat2;
        u_xlat10 = u_xlat6 * 0.0208350997 + -0.0851330012;
        u_xlat10 = u_xlat6 * u_xlat10 + 0.180141002;
        u_xlat10 = u_xlat6 * u_xlat10 + -0.330299497;
        u_xlat6 = u_xlat6 * u_xlat10 + 0.999866009;
        u_xlat10 = u_xlat6 * u_xlat2;
        u_xlatb14 = 1.0<abs(u_xlat1.x);
        u_xlat10 = u_xlat10 * -2.0 + 1.57079637;
        u_xlat10 = u_xlatb14 ? u_xlat10 : float(0.0);
        u_xlat2 = u_xlat2 * u_xlat6 + u_xlat10;
        u_xlat1.x = min(u_xlat1.x, 1.0);
        u_xlatb1 = u_xlat1.x<(-u_xlat1.x);
        u_xlat1.x = (u_xlatb1) ? (-u_xlat2) : u_xlat2;
        u_xlat1.x = u_xlat13 * u_xlat1.x + -1.0;
        u_xlat5.xy = u_xlat0.xy * u_xlat1.xx + u_xlat8.xy;
    }
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat5.xy);
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat0 = u_xlat1.wxyz * vec4(vec4(_PostExposure, _PostExposure, _PostExposure, _PostExposure));
    u_xlat1.xyz = u_xlat0.yzw * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    u_xlat1.xyz = log2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(0.386036009, 0.386036009, 0.386036009);
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat1.xyz = u_xlat1.xyz * _Lut3D_Params.yyy;
    u_xlat13 = _Lut3D_Params.x * 0.5;
    u_xlat1.xyz = u_xlat1.xyz * _Lut3D_Params.xxx + vec3(u_xlat13);
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

