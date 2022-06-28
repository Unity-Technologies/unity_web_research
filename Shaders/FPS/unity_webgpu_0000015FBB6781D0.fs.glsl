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
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 _ZBufferParams;
	mat4x4 unity_CameraToWorld;
	vec4 unity_SpecCube0_BoxMax;
	vec4 unity_SpecCube0_BoxMin;
	vec4 unity_SpecCube0_ProbePosition;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_SpecCube1_ProbePosition;
};
layout(set = 0, binding = 1) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _CameraGBufferTexture0;
layout(set = 0, binding = 3) uniform mediump texture2D _CameraGBufferTexture1;
layout(set = 0, binding = 4) uniform mediump texture2D _CameraGBufferTexture2;
layout(set = 0, binding = 5) uniform mediump textureCube unity_SpecCube0;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
bvec3 u_xlatb8;
float u_xlat10;
float u_xlat27;
float u_xlat28;
float u_xlat29;
float u_xlat30;
float u_xlat31;
bool u_xlatb31;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 7) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_CameraGBufferTexture0;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_CameraGBufferTexture1;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_CameraGBufferTexture2;
void main()
{
    u_xlat0.x = _ProjectionParams.z / vs_TEXCOORD1.z;
    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD1.xyz;
    u_xlat1.xy = vs_TEXCOORD0.xy / vs_TEXCOORD0.ww;
    u_xlat27 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat1.xy).x;
    u_xlat27 = _ZBufferParams.x * u_xlat27 + _ZBufferParams.y;
    u_xlat27 = float(1.0) / u_xlat27;
    u_xlat0.xyz = vec3(u_xlat27) * u_xlat0.xyz;
    u_xlat2.xyz = u_xlat0.yyy * unity_CameraToWorld[1].xyz;
    u_xlat0.xyw = unity_CameraToWorld[0].xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat0.xyz = unity_CameraToWorld[2].xyz * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat0.xyz = u_xlat0.xyz + unity_CameraToWorld[3].xyz;
    u_xlat27 = texture(sampler2D(_CameraGBufferTexture0, sampler_CameraGBufferTexture0), u_xlat1.xy).w;
    u_xlat2 = texture(sampler2D(_CameraGBufferTexture1, sampler_CameraGBufferTexture1), u_xlat1.xy);
    u_xlat1.xyz = texture(sampler2D(_CameraGBufferTexture2, sampler_CameraGBufferTexture2), u_xlat1.xy).xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat28 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat28 = inversesqrt(u_xlat28);
    u_xlat1.xyz = vec3(u_xlat28) * u_xlat1.xyz;
    u_xlat3.xyz = u_xlat0.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat28 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat28 = inversesqrt(u_xlat28);
    u_xlat3.xyz = vec3(u_xlat28) * u_xlat3.xyz;
    u_xlat28 = max(u_xlat2.y, u_xlat2.x);
    u_xlat28 = max(u_xlat2.z, u_xlat28);
    u_xlat28 = (-u_xlat28) + 1.0;
    u_xlat30 = (-u_xlat2.w) + 1.0;
    u_xlat4.x = dot(u_xlat3.xyz, u_xlat1.xyz);
    u_xlat4.x = u_xlat4.x + u_xlat4.x;
    u_xlat4.xyz = u_xlat1.xyz * (-u_xlat4.xxx) + u_xlat3.xyz;
    u_xlatb31 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb31){
        u_xlat5.xyz = unity_SpecCube0_BoxMin.xyz + (-unity_SpecCube1_ProbePosition.www);
        u_xlat6.xyz = unity_SpecCube0_BoxMax.xyz + unity_SpecCube1_ProbePosition.www;
        u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
        u_xlat31 = inversesqrt(u_xlat31);
        u_xlat7.xyz = vec3(u_xlat31) * u_xlat4.xyz;
        u_xlat6.xyz = (-u_xlat0.xyz) + u_xlat6.xyz;
        u_xlat6.xyz = u_xlat6.xyz / u_xlat7.xyz;
        u_xlat5.xyz = (-u_xlat0.xyz) + u_xlat5.xyz;
        u_xlat5.xyz = u_xlat5.xyz / u_xlat7.xyz;
        u_xlatb8.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat7.xyzx).xyz;
        {
            vec3 hlslcc_movcTemp = u_xlat5;
            hlslcc_movcTemp.x = (u_xlatb8.x) ? u_xlat6.x : u_xlat5.x;
            hlslcc_movcTemp.y = (u_xlatb8.y) ? u_xlat6.y : u_xlat5.y;
            hlslcc_movcTemp.z = (u_xlatb8.z) ? u_xlat6.z : u_xlat5.z;
            u_xlat5 = hlslcc_movcTemp;
        }
        u_xlat31 = min(u_xlat5.y, u_xlat5.x);
        u_xlat31 = min(u_xlat5.z, u_xlat31);
        u_xlat5.xyz = u_xlat0.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat4.xyz = u_xlat7.xyz * vec3(u_xlat31) + u_xlat5.xyz;
    }
    u_xlat31 = (-u_xlat30) * 0.699999988 + 1.70000005;
    u_xlat31 = u_xlat30 * u_xlat31;
    u_xlat31 = u_xlat31 * 6.0;
    u_xlat4 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat4.xyz, u_xlat31);
    u_xlat31 = u_xlat4.w + -1.0;
    u_xlat31 = unity_SpecCube0_HDR.w * u_xlat31 + 1.0;
    u_xlat31 = log2(u_xlat31);
    u_xlat31 = u_xlat31 * unity_SpecCube0_HDR.y;
    u_xlat31 = exp2(u_xlat31);
    u_xlat31 = u_xlat31 * unity_SpecCube0_HDR.x;
    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat31);
    u_xlat4.xyz = vec3(u_xlat27) * u_xlat4.xyz;
    u_xlat27 = dot(u_xlat1.xyz, (-u_xlat3.xyz));
    u_xlat1.x = u_xlat30 * u_xlat30;
    u_xlat1.x = max(u_xlat1.x, 0.00200000009);
    u_xlat1.x = u_xlat1.x * u_xlat1.x + 1.0;
    u_xlat1.x = float(1.0) / u_xlat1.x;
    u_xlat10 = (-u_xlat28) + u_xlat2.w;
    u_xlat10 = u_xlat10 + 1.0;
    u_xlat10 = clamp(u_xlat10, 0.0, 1.0);
    u_xlat1.xzw = u_xlat4.xyz * u_xlat1.xxx;
    u_xlat27 = -abs(u_xlat27) + 1.0;
    u_xlat29 = u_xlat27 * u_xlat27;
    u_xlat29 = u_xlat29 * u_xlat29;
    u_xlat27 = u_xlat27 * u_xlat29;
    u_xlat3.xyz = (-u_xlat2.xyz) + vec3(u_xlat10);
    u_xlat2.xyz = vec3(u_xlat27) * u_xlat3.xyz + u_xlat2.xyz;
    SV_Target0.xyz = u_xlat1.xzw * u_xlat2.xyz;
    u_xlat1.xyz = u_xlat0.xyz + (-unity_SpecCube0_BoxMax.xyz);
    u_xlat0.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMin.xyz;
    u_xlat0.xyz = max(u_xlat0.xyz, u_xlat1.xyz);
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = u_xlat0.x / unity_SpecCube1_ProbePosition.w;
    SV_Target0.w = (-u_xlat0.x) + 1.0;
    SV_Target0.w = clamp(SV_Target0.w, 0.0, 1.0);
    return;
}

