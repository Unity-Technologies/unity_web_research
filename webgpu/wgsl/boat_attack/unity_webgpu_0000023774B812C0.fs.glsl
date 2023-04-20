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
	vec4 _MainTex_ST;
	vec4 _TerrainNormalmapGenSize;
	vec4 _TerrainTilesScaleOffsets[9];
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec4 vs_TEXCOORD1;
layout(location = 2) in highp  vec4 vs_TEXCOORD2;
layout(location = 3) in highp  vec4 vs_TEXCOORD3;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
ivec4 u_xlati0;
vec4 u_xlat1;
ivec4 u_xlati1;
vec4 u_xlat2;
vec4 u_xlat3;
ivec4 u_xlati3;
float u_xlat4;
float u_xlat5;
vec3 u_xlat6;
vec2 u_xlat8;
ivec2 u_xlati8;
vec2 u_xlat9;
float u_xlat12;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0 = vs_TEXCOORD1 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat0 = floor(u_xlat0);
    u_xlati0 = ivec4(u_xlat0);
    u_xlati0.xy = u_xlati0.yw * ivec2(3, 3) + u_xlati0.xz;
    u_xlat1 = vs_TEXCOORD1 * _MainTex_ST.xyxy + _MainTex_ST.zwzw;
    u_xlat8.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy).xy;
    u_xlat1.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw).xy;
    u_xlat1.x = u_xlat1.y * 256.0 + u_xlat1.x;
    u_xlat1.x = u_xlat1.x * 0.00389105058;
    u_xlat4 = u_xlat1.x * _TerrainTilesScaleOffsets[u_xlati0.y].x + _TerrainTilesScaleOffsets[u_xlati0.y].y;
    u_xlat8.x = u_xlat8.y * 256.0 + u_xlat8.x;
    u_xlat8.x = u_xlat8.x * 0.00389105058;
    u_xlat0.x = u_xlat8.x * _TerrainTilesScaleOffsets[u_xlati0.x].x + _TerrainTilesScaleOffsets[u_xlati0.x].y;
    u_xlat1 = vs_TEXCOORD2 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat1 = floor(u_xlat1);
    u_xlati1 = ivec4(u_xlat1);
    u_xlati8.xy = u_xlati1.yw * ivec2(3, 3) + u_xlati1.xz;
    u_xlat1 = vs_TEXCOORD2 * _MainTex_ST.xyxy + _MainTex_ST.zwzw;
    u_xlat1.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy).xy;
    u_xlat9.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw).xy;
    u_xlat9.x = u_xlat9.y * 256.0 + u_xlat9.x;
    u_xlat9.x = u_xlat9.x * 0.00389105058;
    u_xlat12 = u_xlat9.x * _TerrainTilesScaleOffsets[u_xlati8.y].x + _TerrainTilesScaleOffsets[u_xlati8.y].y;
    u_xlat1.x = u_xlat1.y * 256.0 + u_xlat1.x;
    u_xlat1.x = u_xlat1.x * 0.00389105058;
    u_xlat8.x = u_xlat1.x * _TerrainTilesScaleOffsets[u_xlati8.x].x + _TerrainTilesScaleOffsets[u_xlati8.x].y;
    u_xlat0.x = u_xlat0.x * -2.0 + (-u_xlat8.x);
    u_xlat1 = vs_TEXCOORD3 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat1 = floor(u_xlat1);
    u_xlati1 = ivec4(u_xlat1);
    u_xlati1.xy = u_xlati1.yw * ivec2(3, 3) + u_xlati1.xz;
    u_xlat2 = vs_TEXCOORD3 * _MainTex_ST.xyxy + _MainTex_ST.zwzw;
    u_xlat9.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy).xy;
    u_xlat2.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.zw).xy;
    u_xlat2.x = u_xlat2.y * 256.0 + u_xlat2.x;
    u_xlat2.x = u_xlat2.x * 0.00389105058;
    u_xlat5 = u_xlat2.x * _TerrainTilesScaleOffsets[u_xlati1.y].x + _TerrainTilesScaleOffsets[u_xlati1.y].y;
    u_xlat9.x = u_xlat9.y * 256.0 + u_xlat9.x;
    u_xlat9.x = u_xlat9.x * 0.00389105058;
    u_xlat1.x = u_xlat9.x * _TerrainTilesScaleOffsets[u_xlati1.x].x + _TerrainTilesScaleOffsets[u_xlati1.x].y;
    u_xlat0.x = u_xlat0.x + (-u_xlat1.x);
    u_xlat0.x = u_xlat12 + u_xlat0.x;
    u_xlat0.x = u_xlat4 * 2.0 + u_xlat0.x;
    u_xlat2.x = u_xlat5 + u_xlat0.x;
    u_xlat3 = vs_TEXCOORD0 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat3 = floor(u_xlat3);
    u_xlati3 = ivec4(u_xlat3);
    u_xlati0.xy = u_xlati3.yw * ivec2(3, 3) + u_xlati3.xz;
    u_xlat3 = vs_TEXCOORD0 * _MainTex_ST.xyxy + _MainTex_ST.zwzw;
    u_xlat9.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat3.xy).xy;
    u_xlat6.xz = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat3.zw).xy;
    u_xlat6.x = u_xlat6.z * 256.0 + u_xlat6.x;
    u_xlat6.x = u_xlat6.x * 0.00389105058;
    u_xlat4 = u_xlat6.x * _TerrainTilesScaleOffsets[u_xlati0.y].x + _TerrainTilesScaleOffsets[u_xlati0.y].y;
    u_xlat9.x = u_xlat9.y * 256.0 + u_xlat9.x;
    u_xlat9.x = u_xlat9.x * 0.00389105058;
    u_xlat0.x = u_xlat9.x * _TerrainTilesScaleOffsets[u_xlati0.x].x + _TerrainTilesScaleOffsets[u_xlati0.x].y;
    u_xlat0.x = u_xlat0.x * -2.0 + (-u_xlat8.x);
    u_xlat0.x = (-u_xlat12) + u_xlat0.x;
    u_xlat0.x = u_xlat1.x + u_xlat0.x;
    u_xlat0.x = u_xlat4 * 2.0 + u_xlat0.x;
    u_xlat2.z = u_xlat5 + u_xlat0.x;
    u_xlat0.xy = u_xlat2.xz * _TerrainNormalmapGenSize.zw;
    u_xlat0.xz = (-u_xlat0.xy);
    u_xlat0.y = 8.0;
    u_xlat4 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat1.y = inversesqrt(u_xlat4);
    u_xlat1.xz = u_xlat0.xz * u_xlat1.yy;
    SV_Target0.xyz = u_xlat1.xyz * vec3(0.5, 4.0, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target0.w = 1.0;
    return;
}

