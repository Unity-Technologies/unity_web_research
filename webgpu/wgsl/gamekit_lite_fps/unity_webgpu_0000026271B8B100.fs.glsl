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
	vec4 _MainTex_TexelSize;
	float _ChromaticAberration_Amount;
	vec3 _Lut2D_Params;
	vec2 _Grain_Params1;
	vec4 _Grain_Params2;
	float _LumaInAlpha;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 3) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 4) uniform mediump texture2D _Lut2D;
layout(set = 0, binding = 5) uniform mediump texture2D _GrainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
bool u_xlatb6;
vec3 u_xlat7;
vec2 u_xlat8;
vec2 u_xlat14;
vec2 u_xlat16;
float u_xlat21;
int u_xlati21;
int u_xlati22;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_Lut2D;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_GrainTex;
void main()
{
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat7.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat21 = dot(u_xlat7.xy, u_xlat7.xy);
    u_xlat7.xy = vec2(u_xlat21) * u_xlat7.xy;
    u_xlat7.xy = u_xlat7.xy * vec2(vec2(_ChromaticAberration_Amount, _ChromaticAberration_Amount));
    u_xlat1.xy = (-u_xlat7.xy) * _MainTex_TexelSize.zw;
    u_xlat1.xy = u_xlat1.xy * vec2(0.5, 0.5);
    u_xlat21 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat21 = sqrt(u_xlat21);
    u_xlati21 = int(u_xlat21);
    u_xlati21 = max(u_xlati21, 3);
    u_xlati21 = min(u_xlati21, 16);
    u_xlat1.x = float(u_xlati21);
    u_xlat7.xy = (-u_xlat7.xy) / u_xlat1.xx;
    u_xlat2.y = float(0.0);
    u_xlat16.y = float(0.0);
    u_xlat3.w = 1.0;
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    u_xlat4.w = float(0.0);
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    u_xlat5.w = float(0.0);
    u_xlat8.xy = vs_TEXCOORD0.xy;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<u_xlati21 ; u_xlati_loop_1++)
    {
        u_xlat6.x = float(u_xlati_loop_1);
        u_xlat6.x = u_xlat6.x + 0.5;
        u_xlat2.x = u_xlat6.x / u_xlat1.x;
        u_xlat6.xy = u_xlat8.xy;
        u_xlat6.xy = clamp(u_xlat6.xy, 0.0, 1.0);
        u_xlat6.xy = u_xlat6.xy * vec2(_RenderViewportScaleFactor);
        u_xlat6 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat6.xy, 0.0);
        u_xlat3.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), u_xlat2.xy, 0.0).xyz;
        u_xlat4 = u_xlat6 * u_xlat3 + u_xlat4;
        u_xlat5 = u_xlat3 + u_xlat5;
        u_xlat8.xy = u_xlat7.xy + u_xlat8.xy;
    }
    u_xlat1 = u_xlat4 / u_xlat5;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat2.xy = vs_TEXCOORD1.xy * _Grain_Params2.xy + _Grain_Params2.zw;
    u_xlat3.xyz = texture(sampler2D(_GrainTex, sampler_GrainTex), u_xlat2.xy).xyz;
    u_xlat4.xyz = u_xlat0.xyz;
    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
    u_xlat21 = dot(u_xlat4.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat21 = sqrt(u_xlat21);
    u_xlat21 = _Grain_Params1.xxxy.z * (-u_xlat21) + 1.0;
    u_xlat3.xyz = u_xlat0.xyz * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz * vec3(_Grain_Params1.y, _Grain_Params1.y, _Grain_Params1.y);
    u_xlat0.xyz = u_xlat3.xyz * vec3(u_xlat21) + u_xlat0.xyz;
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat1.w = u_xlat1.w;
    u_xlat1.w = clamp(u_xlat1.w, 0.0, 1.0);
    u_xlat3.xyz = u_xlat0.zxy * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat4.xyz = max(u_xlat0.zxy, vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat4.xyz = log2(u_xlat4.xyz);
    u_xlat4.xyz = u_xlat4.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat4.xyz = exp2(u_xlat4.xyz);
    u_xlat4.xyz = u_xlat4.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.zxyz).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat3.x : u_xlat4.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat3.y : u_xlat4.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat3.z : u_xlat4.z;
    u_xlat7.xyz = u_xlat0.xyz * _Lut2D_Params.zzz;
    u_xlat7.x = floor(u_xlat7.x);
    u_xlat2.xy = _Lut2D_Params.xy * vec2(0.5, 0.5);
    u_xlat3.yz = u_xlat7.yz * _Lut2D_Params.xy + u_xlat2.xy;
    u_xlat3.x = u_xlat7.x * _Lut2D_Params.y + u_xlat3.y;
    u_xlat4.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat3.xz).xyz;
    u_xlat16.x = _Lut2D_Params.y;
    u_xlat14.xy = u_xlat16.xy + u_xlat3.xz;
    u_xlat2.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat14.xy).xyz;
    u_xlat0.x = u_xlat0.x * _Lut2D_Params.z + (-u_xlat7.x);
    u_xlat7.xyz = (-u_xlat4.xyz) + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat7.xyz + u_xlat4.xyz;
    u_xlat2.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlat3.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat3.xyz = max(abs(u_xlat3.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat3.xyz = log2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat3.xyz = exp2(u_xlat3.xyz);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    u_xlat1.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat3.x;
    u_xlat1.y = (u_xlatb0.y) ? u_xlat2.y : u_xlat3.y;
    u_xlat1.z = (u_xlatb0.z) ? u_xlat2.z : u_xlat3.z;
    u_xlatb0.x = 0.5<_LumaInAlpha;
    if(u_xlatb0.x){
        u_xlat0.xyz = u_xlat1.xyz;
        u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
        u_xlat1.w = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    }
    SV_Target0 = u_xlat1;
    return;
}
