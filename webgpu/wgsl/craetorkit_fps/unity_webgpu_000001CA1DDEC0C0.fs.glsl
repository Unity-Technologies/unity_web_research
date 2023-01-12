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
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 _ZBufferParams;
	mat4x4 unity_CameraInvProjection;
	vec4 _Test_TexelSize;
	mat4x4 _ViewMatrix;
	mat4x4 _ScreenSpaceProjectionMatrix;
	vec4 _Params;
	vec4 _Params2;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _CameraGBufferTexture2;
layout(set = 0, binding = 2) uniform mediump texture2D _Noise;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_CameraGBufferTexture2;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_Noise;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
int u_xlati8;
bool u_xlatb8;
float u_xlat9;
int u_xlati9;
bool u_xlatb10;
vec2 u_xlat18;
float u_xlat27;
int u_xlati27;
bool u_xlatb27;
float u_xlat28;
    u_xlat0 = texture(sampler2D(_CameraGBufferTexture2, sampler_CameraGBufferTexture2), vs_TEXCOORD1.xy);
    u_xlat27 = dot(u_xlat0, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlatb27 = u_xlat27==0.0;
    if(u_xlatb27){
        SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
        return;
    }
    u_xlat27 = textureLod(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD0.xy, 0.0).x;
    u_xlat1.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat2.x = u_xlat1.x * unity_CameraInvProjection[0].x;
    u_xlat2.y = u_xlat1.y * unity_CameraInvProjection[1].y;
    u_xlat2.z = u_xlat27 * unity_CameraInvProjection[2].z + unity_CameraInvProjection[3].z;
    u_xlat27 = _ZBufferParams.z * u_xlat27 + _ZBufferParams.w;
    u_xlat1.xyz = u_xlat2.xyz / vec3(u_xlat27);
    u_xlatb27 = u_xlat1.z<(-_Params.z);
    if(u_xlatb27){
        SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
        return;
    }
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat2.xyz = u_xlat0.yyy * _ViewMatrix[1].xyz;
    u_xlat0.xyw = _ViewMatrix[0].xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat0.xyz = _ViewMatrix[2].xyz * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat27 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat27 = inversesqrt(u_xlat27);
    u_xlat2.xyz = vec3(u_xlat27) * u_xlat1.xyz;
    u_xlat27 = dot(u_xlat2.xyz, u_xlat0.xyz);
    u_xlat27 = u_xlat27 + u_xlat27;
    u_xlat0.xyz = u_xlat0.xyz * (-vec3(u_xlat27)) + u_xlat2.xyz;
    u_xlat27 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat27 = inversesqrt(u_xlat27);
    u_xlat0.xyz = vec3(u_xlat27) * u_xlat0.xyz;
    u_xlatb27 = 0.0<u_xlat0.z;
    if(u_xlatb27){
        SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
        return;
    }
    u_xlat27 = u_xlat0.z * _Params.z + u_xlat1.z;
    u_xlatb27 = (-_ProjectionParams.y)<u_xlat27;
    u_xlat28 = (-u_xlat1.z) + (-_ProjectionParams.y);
    u_xlat28 = u_xlat28 / u_xlat0.z;
    u_xlat27 = (u_xlatb27) ? u_xlat28 : _Params.z;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat27) + u_xlat1.xyz;
    u_xlat2.xyz = u_xlat1.zzz * _ScreenSpaceProjectionMatrix[2].xyw;
    u_xlat3.z = _ScreenSpaceProjectionMatrix[0].x * u_xlat1.x + u_xlat2.x;
    u_xlat3.w = _ScreenSpaceProjectionMatrix[1].y * u_xlat1.y + u_xlat2.y;
    u_xlat1.xyw = u_xlat0.zzz * _ScreenSpaceProjectionMatrix[2].xyw;
    u_xlat3.x = _ScreenSpaceProjectionMatrix[0].x * u_xlat0.x + u_xlat1.x;
    u_xlat3.y = _ScreenSpaceProjectionMatrix[1].y * u_xlat0.y + u_xlat1.y;
    u_xlat2.zw = vec2(1.0) / vec2(u_xlat2.zz);
    u_xlat2.xy = vec2(1.0) / vec2(u_xlat1.ww);
    u_xlat4.w = u_xlat1.z * u_xlat2.w;
    u_xlat5 = u_xlat2.wzxy * u_xlat3.wzxy;
    u_xlat0.xy = u_xlat3.zw * u_xlat2.zw + (-u_xlat5.zw);
    u_xlat0.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlatb0 = 9.99999975e-05>=u_xlat0.x;
    u_xlat0.x = u_xlatb0 ? 1.0 : float(0.0);
    u_xlat9 = max(_Test_TexelSize.y, _Test_TexelSize.x);
    u_xlat0.xy = u_xlat0.xx * vec2(u_xlat9) + u_xlat5.wz;
    u_xlat5.zw = (-u_xlat3.wz) * u_xlat2.wz + u_xlat0.xy;
    u_xlatb0 = abs(u_xlat5.w)<abs(u_xlat5.z);
    u_xlat3 = (bool(u_xlatb0)) ? u_xlat5 : u_xlat5.yxwz;
    u_xlati9 = int((0.0<u_xlat3.z) ? 0xFFFFFFFFu : uint(0));
    u_xlati27 = int((u_xlat3.z<0.0) ? 0xFFFFFFFFu : uint(0));
    u_xlati9 = (-u_xlati9) + u_xlati27;
    u_xlat5.x = float(u_xlati9);
    u_xlat9 = u_xlat5.x / u_xlat3.z;
    u_xlat18.x = u_xlat0.z * u_xlat2.y + (-u_xlat4.w);
    u_xlat5.w = u_xlat9 * u_xlat18.x;
    u_xlat5.y = u_xlat9 * u_xlat3.w;
    u_xlat18.x = (-u_xlat2.w) + u_xlat2.y;
    u_xlat5.z = u_xlat9 * u_xlat18.x;
    u_xlat9 = u_xlat1.z * -0.00999999978;
    u_xlat9 = min(u_xlat9, 1.0);
    u_xlat9 = (-u_xlat9) + 1.0;
    u_xlat1.xy = vs_TEXCOORD0.xy * _Params2.yy;
    u_xlat1.z = u_xlat1.y * _Params2.x;
    u_xlat18.xy = u_xlat1.xz + _WorldSpaceCameraPos.xz;
    u_xlat18.x = textureLod(sampler2D(_Noise, sampler_Noise), u_xlat18.xy, 0.0).w;
    u_xlat9 = u_xlat9 * _Params2.z;
    u_xlat1 = vec4(u_xlat9) * u_xlat5;
    u_xlat4.xy = u_xlat3.xy;
    u_xlat4.z = u_xlat2.w;
    u_xlat2 = u_xlat1 * u_xlat18.xxxx + u_xlat4;
    u_xlat3.x = intBitsToFloat(int(0xFFFFFFFFu));
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    u_xlat4.w = float(0.0);
    u_xlat6 = u_xlat2;
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    u_xlat7.w = float(0.0);
    u_xlat18.x = float(0.0);
    u_xlati27 = int(0);
    u_xlati8 = 0;
    while(true){
        u_xlat1.x = float(u_xlati27);
        u_xlatb1 = u_xlat1.x>=_Params2.w;
        u_xlat8.x = 0.0;
        if(u_xlatb1){break;}
        u_xlat6 = u_xlat5 * vec4(u_xlat9) + u_xlat6;
        u_xlat1.xy = u_xlat1.wz * vec2(0.5, 0.5) + u_xlat6.wz;
        u_xlat1.x = u_xlat1.x / u_xlat1.y;
        u_xlatb10 = u_xlat18.x<u_xlat1.x;
        u_xlat18.x = (u_xlatb10) ? u_xlat18.x : u_xlat1.x;
        u_xlat1.xy = (bool(u_xlatb0)) ? u_xlat6.yx : u_xlat6.xy;
        u_xlat3.yz = u_xlat1.xy * _Test_TexelSize.xy;
        u_xlat1.x = textureLod(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat3.yz, 0.0).x;
        u_xlat1.x = _ZBufferParams.z * u_xlat1.x + _ZBufferParams.w;
        u_xlat1.x = float(1.0) / u_xlat1.x;
        u_xlatb1 = u_xlat18.x<(-u_xlat1.x);
        u_xlat3.w = intBitsToFloat(u_xlati27 + 1);
        u_xlat8 = bool(u_xlatb1) ? u_xlat3 : vec4(0.0, 0.0, 0.0, 0.0);
        u_xlat4 = u_xlat8;
        u_xlat7 = u_xlat8;
        if(u_xlatb1){break;}
        u_xlatb8 = u_xlatb1;
        u_xlati27 = u_xlati27 + 1;
        u_xlat4.x = float(0.0);
        u_xlat4.y = float(0.0);
        u_xlat4.z = float(0.0);
        u_xlat4.w = float(0.0);
        u_xlat7.x = float(0.0);
        u_xlat7.y = float(0.0);
        u_xlat7.z = float(0.0);
        u_xlat7.w = float(0.0);
    }
    u_xlat0 = (floatBitsToInt(u_xlat8.x) != 0) ? u_xlat4 : u_xlat7;
    u_xlat27 = float(floatBitsToInt(u_xlat0.w));
    SV_Target0.z = u_xlat27 / _Params2.w;
    SV_Target0.w = uintBitsToFloat(floatBitsToUint(u_xlat0.x) & 1065353216u);
    SV_Target0.xy = u_xlat0.yz;
    return;
}

