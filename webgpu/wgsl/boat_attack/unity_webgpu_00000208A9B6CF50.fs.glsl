#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#extension GL_EXT_samplerless_texture_functions : require

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
	vec4 _SourceSize;
	vec4 _DownSampleScaleFactor;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _ColorTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _FullCoCTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec2 u_xlat0;
uvec4 u_xlatu0;
vec3 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
bool u_xlatb6;
vec2 u_xlat15;
vec2 u_xlat16;
float u_xlat19;
    u_xlat0.xy = vs_TEXCOORD0.xy * _SourceSize.xy;
    u_xlatu0.xy =  uvec2(ivec2(u_xlat0.xy));
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat1.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xyz;
    u_xlat0.x = texelFetch(_FullCoCTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).x;
    u_xlatb6 = 0.0<u_xlat0.x;
    if(u_xlatb6){
        u_xlat2 = _SourceSize * _DownSampleScaleFactor;
        u_xlat6.xy = vs_TEXCOORD0.xy * u_xlat2.xy + vec2(0.5, 0.5);
        u_xlat2.xy = floor(u_xlat6.xy);
        u_xlat6.xy = fract(u_xlat6.xy);
        u_xlat3 = (-u_xlat6.xyxy) * vec4(0.5, 0.5, 0.166666672, 0.166666672) + vec4(0.5, 0.5, 0.5, 0.5);
        u_xlat3 = u_xlat6.xyxy * u_xlat3 + vec4(0.5, 0.5, -0.5, -0.5);
        u_xlat4.xy = u_xlat6.xy * vec2(0.5, 0.5) + vec2(-1.0, -1.0);
        u_xlat16.xy = u_xlat6.xy * u_xlat6.xy;
        u_xlat4.xy = u_xlat16.xy * u_xlat4.xy + vec2(0.666666687, 0.666666687);
        u_xlat3 = u_xlat6.xyxy * u_xlat3 + vec4(0.166666672, 0.166666672, 0.166666672, 0.166666672);
        u_xlat6.xy = (-u_xlat4.xy) + vec2(1.0, 1.0);
        u_xlat6.xy = (-u_xlat3.xy) + u_xlat6.xy;
        u_xlat6.xy = (-u_xlat3.zw) + u_xlat6.xy;
        u_xlat15.xy = u_xlat4.xy + u_xlat3.zw;
        u_xlat3.xy = u_xlat6.xy + u_xlat3.xy;
        u_xlat16.xy = vec2(1.0) / vec2(u_xlat15.xy);
        u_xlat4.zw = u_xlat4.xy * u_xlat16.xy + vec2(-1.0, -1.0);
        u_xlat5.xy = vec2(1.0) / vec2(u_xlat3.xy);
        u_xlat4.xy = u_xlat6.xy * u_xlat5.xy + vec2(1.0, 1.0);
        u_xlat5 = u_xlat2.xyxy + u_xlat4.zwxw;
        u_xlat5 = u_xlat5 + vec4(-0.5, -0.5, -0.5, -0.5);
        u_xlat5 = u_xlat2.zwzw * u_xlat5;
        u_xlat5 = min(u_xlat5, vec4(1.0, 1.0, 1.0, 1.0));
        u_xlat6.xyz = textureLod(sampler2D(_ColorTexture, sampler_LinearClamp), u_xlat5.xy, 0.0).xyz;
        u_xlat5.xyz = textureLod(sampler2D(_ColorTexture, sampler_LinearClamp), u_xlat5.zw, 0.0).xyz;
        u_xlat5.xyz = u_xlat3.xxx * u_xlat5.xyz;
        u_xlat6.xyz = u_xlat15.xxx * u_xlat6.xyz + u_xlat5.xyz;
        u_xlat4 = u_xlat2.xyxy + u_xlat4.zyxy;
        u_xlat4 = u_xlat4 + vec4(-0.5, -0.5, -0.5, -0.5);
        u_xlat2 = u_xlat2.zwzw * u_xlat4;
        u_xlat2 = min(u_xlat2, vec4(1.0, 1.0, 1.0, 1.0));
        u_xlat4.xyz = textureLod(sampler2D(_ColorTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).xyz;
        u_xlat2.xyz = textureLod(sampler2D(_ColorTexture, sampler_LinearClamp), u_xlat2.zw, 0.0).xyz;
        u_xlat2.xyz = u_xlat2.xyz * u_xlat3.xxx;
        u_xlat2.xyz = u_xlat15.xxx * u_xlat4.xyz + u_xlat2.xyz;
        u_xlat2.xyz = u_xlat2.xyz * u_xlat3.yyy;
        u_xlat6.xyz = u_xlat15.yyy * u_xlat6.xyz + u_xlat2.xyz;
        u_xlat0.x = u_xlat0.x * 6.28318548;
        u_xlat0.x = sqrt(u_xlat0.x);
        u_xlat19 = min(u_xlat0.x, 1.0);
        u_xlat6.xyz = u_xlat6.xyz * vec3(u_xlat19);
        u_xlat0.x = (-u_xlat0.x) + 1.0;
        u_xlat0.x = max(u_xlat0.x, 0.0);
    } else {
        u_xlat0.x = float(1.0);
        u_xlat6.x = float(0.0);
        u_xlat6.y = float(0.0);
        u_xlat6.z = float(0.0);
    }
    SV_Target0.xyz = u_xlat1.xyz * u_xlat0.xxx + u_xlat6.xyz;
    SV_Target0.w = 1.0;
    return;
}

