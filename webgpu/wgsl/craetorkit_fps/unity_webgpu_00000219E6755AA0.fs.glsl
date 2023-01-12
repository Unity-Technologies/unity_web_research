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
layout(set = 1, binding = 0, std140) uniform PGlobals {
	float _RenderViewportScaleFactor;
	vec4 _Distortion_Amount;
	vec4 _Distortion_CenterScale;
	vec4 _MainTex_TexelSize;
	float _ChromaticAberration_Amount;
	vec3 _Lut2D_Params;
	float _PostExposure;
	float _LumaInAlpha;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 2) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 3) uniform mediump texture2D _Lut2D;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_Lut2D;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
int u_xlati6;
vec4 u_xlat7;
float u_xlat8;
float u_xlat9;
bool u_xlatb9;
vec2 u_xlat10;
vec3 u_xlat11;
bool u_xlatb11;
vec2 u_xlat16;
bool u_xlatb16;
float u_xlat18;
vec2 u_xlat21;
vec2 u_xlat22;
vec2 u_xlat27;
float u_xlat28;
float u_xlat30;
int u_xlati30;
float u_xlat36;
bool u_xlatb36;
float u_xlat37;
float u_xlat38;
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat10.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat30 = dot(u_xlat10.xy, u_xlat10.xy);
    u_xlat10.xy = vec2(u_xlat30) * u_xlat10.xy;
    u_xlat10.xy = u_xlat10.xy * vec2(vec2(_ChromaticAberration_Amount, _ChromaticAberration_Amount));
    u_xlat1.xy = (-u_xlat10.xy) * _MainTex_TexelSize.zw;
    u_xlat1.xy = u_xlat1.xy * vec2(0.5, 0.5);
    u_xlat30 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat30 = sqrt(u_xlat30);
    u_xlati30 = int(u_xlat30);
    u_xlati30 = max(u_xlati30, 3);
    u_xlati30 = min(u_xlati30, 16);
    u_xlat1.x = float(u_xlati30);
    u_xlat10.xy = (-u_xlat10.xy) / u_xlat1.xx;
    u_xlatb11 = 0.0<_Distortion_Amount.w;
    u_xlat2.y = float(0.0);
    u_xlat22.y = float(0.0);
    u_xlat3.w = 1.0;
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    u_xlat4.w = float(0.0);
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    u_xlat5.w = float(0.0);
    u_xlat21.xy = vs_TEXCOORD0.xy;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<u_xlati30 ; u_xlati_loop_1++)
    {
        u_xlat16.x = float(u_xlati_loop_1);
        u_xlat16.x = u_xlat16.x + 0.5;
        u_xlat2.x = u_xlat16.x / u_xlat1.x;
        u_xlat16.xy = u_xlat21.xy + vec2(-0.5, -0.5);
        u_xlat7.xy = u_xlat16.xy * _Distortion_Amount.zz + vec2(0.5, 0.5);
        u_xlat16.xy = u_xlat16.xy * _Distortion_Amount.zz + (-_Distortion_CenterScale.xy);
        u_xlat16.xy = u_xlat16.xy * _Distortion_CenterScale.zw;
        u_xlat36 = dot(u_xlat16.xy, u_xlat16.xy);
        u_xlat36 = sqrt(u_xlat36);
        if(u_xlatb11){
            u_xlat27.xy = vec2(u_xlat36) * _Distortion_Amount.xy;
            u_xlat8 = sin(u_xlat27.x);
            u_xlat9 = cos(u_xlat27.x);
            u_xlat27.x = u_xlat8 / u_xlat9;
            u_xlat37 = float(1.0) / u_xlat27.y;
            u_xlat27.x = u_xlat27.x * u_xlat37 + -1.0;
            u_xlat27.xy = u_xlat16.xy * u_xlat27.xx + u_xlat7.xy;
        } else {
            u_xlat8 = float(1.0) / u_xlat36;
            u_xlat8 = u_xlat8 * _Distortion_Amount.x;
            u_xlat36 = u_xlat36 * _Distortion_Amount.y;
            u_xlat18 = min(abs(u_xlat36), 1.0);
            u_xlat28 = max(abs(u_xlat36), 1.0);
            u_xlat28 = float(1.0) / u_xlat28;
            u_xlat18 = u_xlat28 * u_xlat18;
            u_xlat28 = u_xlat18 * u_xlat18;
            u_xlat38 = u_xlat28 * 0.0208350997 + -0.0851330012;
            u_xlat38 = u_xlat28 * u_xlat38 + 0.180141002;
            u_xlat38 = u_xlat28 * u_xlat38 + -0.330299497;
            u_xlat28 = u_xlat28 * u_xlat38 + 0.999866009;
            u_xlat38 = u_xlat28 * u_xlat18;
            u_xlatb9 = 1.0<abs(u_xlat36);
            u_xlat38 = u_xlat38 * -2.0 + 1.57079637;
            u_xlat38 = u_xlatb9 ? u_xlat38 : float(0.0);
            u_xlat18 = u_xlat18 * u_xlat28 + u_xlat38;
            u_xlat36 = min(u_xlat36, 1.0);
            u_xlatb36 = u_xlat36<(-u_xlat36);
            u_xlat36 = (u_xlatb36) ? (-u_xlat18) : u_xlat18;
            u_xlat36 = u_xlat8 * u_xlat36 + -1.0;
            u_xlat27.xy = u_xlat16.xy * vec2(u_xlat36) + u_xlat7.xy;
        }
        u_xlat27.xy = u_xlat27.xy;
        u_xlat27.xy = clamp(u_xlat27.xy, 0.0, 1.0);
        u_xlat16.xy = u_xlat27.xy * vec2(_RenderViewportScaleFactor);
        u_xlat7 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat16.xy, 0.0);
        u_xlat3.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), u_xlat2.xy, 0.0).xyz;
        u_xlat4 = u_xlat7 * u_xlat3 + u_xlat4;
        u_xlat5 = u_xlat3 + u_xlat5;
        u_xlat21.xy = u_xlat10.xy + u_xlat21.xy;
    }
    u_xlat1 = u_xlat4 / u_xlat5;
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat0 = u_xlat1 * vec4(vec4(_PostExposure, _PostExposure, _PostExposure, _PostExposure));
    u_xlat1.xyz = u_xlat0.zxy * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    u_xlat1.xyz = log2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(0.386036009, 0.386036009, 0.386036009);
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat11.xyz = u_xlat1.xyz * _Lut2D_Params.zzz;
    u_xlat11.x = floor(u_xlat11.x);
    u_xlat2.xy = _Lut2D_Params.xy * vec2(0.5, 0.5);
    u_xlat3.yz = u_xlat11.yz * _Lut2D_Params.xy + u_xlat2.xy;
    u_xlat3.x = u_xlat11.x * _Lut2D_Params.y + u_xlat3.y;
    u_xlat4.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat3.xz).xyz;
    u_xlat22.x = _Lut2D_Params.y;
    u_xlat21.xy = u_xlat22.xy + u_xlat3.xz;
    u_xlat2.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat21.xy).xyz;
    u_xlat1.x = u_xlat1.x * _Lut2D_Params.z + (-u_xlat11.x);
    u_xlat11.xyz = (-u_xlat4.xyz) + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat1.xxx * u_xlat11.xyz + u_xlat4.xyz;
    u_xlatb1 = 0.5<_LumaInAlpha;
    if(u_xlatb1){
        u_xlat1.xyz = u_xlat0.xyz;
        u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
        u_xlat0.w = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    }
    SV_Target0 = u_xlat0;
    return;
}

