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
	vec4 _Dithering_Coords;
	vec4 _MainTex_TexelSize;
};
layout(set = 0, binding = 1) uniform mediump texture2D _DitheringTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
bool u_xlatb2;
vec3 u_xlat3;
bool u_xlatb3;
vec3 u_xlat4;
vec3 u_xlat5;
vec2 u_xlat6;
float u_xlat8;
int u_xlati8;
bvec2 u_xlatb8;
vec2 u_xlat9;
vec3 u_xlat10;
ivec3 u_xlati10;
float u_xlat12;
vec2 u_xlat14;
ivec2 u_xlati14;
vec2 u_xlat15;
ivec2 u_xlati15;
bvec2 u_xlatb15;
vec2 u_xlat16;
float u_xlat18;
float u_xlat20;
bool u_xlatb20;
float u_xlat21;
float u_xlat22;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_DitheringTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0.xy = vs_TEXCOORD0.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
    u_xlat1 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0);
    u_xlat12 = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(0, 1)).y;
    u_xlat18 = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(1, 0)).y;
    u_xlat2.x = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(0, -1)).y;
    u_xlat8 = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(-1, 0)).y;
    u_xlat14.x = max(u_xlat1.y, u_xlat12);
    u_xlat20 = min(u_xlat1.y, u_xlat12);
    u_xlat14.x = max(u_xlat18, u_xlat14.x);
    u_xlat20 = min(u_xlat18, u_xlat20);
    u_xlat3.x = max(u_xlat8, u_xlat2.x);
    u_xlat9.x = min(u_xlat8, u_xlat2.x);
    u_xlat14.x = max(u_xlat14.x, u_xlat3.x);
    u_xlat20 = min(u_xlat20, u_xlat9.x);
    u_xlat3.x = u_xlat14.x * 0.063000001;
    u_xlat14.x = (-u_xlat20) + u_xlat14.x;
    u_xlat20 = max(u_xlat3.x, 0.0311999992);
    u_xlatb20 = u_xlat14.x>=u_xlat20;
    if(u_xlatb20){
        u_xlat20 = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(-1, -1)).y;
        u_xlat3.x = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(1, 1)).y;
        u_xlat9.x = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(1, -1)).y;
        u_xlat0.x = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(-1, 1)).y;
        u_xlat6.x = u_xlat12 + u_xlat2.x;
        u_xlat15.x = u_xlat18 + u_xlat8;
        u_xlat14.x = float(1.0) / u_xlat14.x;
        u_xlat21 = u_xlat6.x + u_xlat15.x;
        u_xlat6.x = u_xlat1.y * -2.0 + u_xlat6.x;
        u_xlat15.x = u_xlat1.y * -2.0 + u_xlat15.x;
        u_xlat4.x = u_xlat3.x + u_xlat9.x;
        u_xlat9.x = u_xlat20 + u_xlat9.x;
        u_xlat10.x = u_xlat18 * -2.0 + u_xlat4.x;
        u_xlat9.x = u_xlat2.x * -2.0 + u_xlat9.x;
        u_xlat20 = u_xlat0.x + u_xlat20;
        u_xlat0.x = u_xlat3.x + u_xlat0.x;
        u_xlat6.x = abs(u_xlat6.x) * 2.0 + abs(u_xlat10.x);
        u_xlat3.x = abs(u_xlat15.x) * 2.0 + abs(u_xlat9.x);
        u_xlat9.x = u_xlat8 * -2.0 + u_xlat20;
        u_xlat0.x = u_xlat12 * -2.0 + u_xlat0.x;
        u_xlat6.x = u_xlat6.x + abs(u_xlat9.x);
        u_xlat0.x = u_xlat3.x + abs(u_xlat0.x);
        u_xlat20 = u_xlat4.x + u_xlat20;
        u_xlatb0.x = u_xlat6.x>=u_xlat0.x;
        u_xlat6.x = u_xlat21 * 2.0 + u_xlat20;
        u_xlat2.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat8;
        u_xlat12 = (u_xlatb0.x) ? u_xlat12 : u_xlat18;
        u_xlat18 = (u_xlatb0.x) ? _MainTex_TexelSize.y : _MainTex_TexelSize.x;
        u_xlat6.x = u_xlat6.x * 0.0833333358 + (-u_xlat1.y);
        u_xlat8 = (-u_xlat1.y) + u_xlat2.x;
        u_xlat20 = (-u_xlat1.y) + u_xlat12;
        u_xlat2.x = u_xlat1.y + u_xlat2.x;
        u_xlat12 = u_xlat1.y + u_xlat12;
        u_xlatb3 = abs(u_xlat8)>=abs(u_xlat20);
        u_xlat8 = max(abs(u_xlat20), abs(u_xlat8));
        u_xlat18 = (u_xlatb3) ? (-u_xlat18) : u_xlat18;
        u_xlat6.x = u_xlat14.x * abs(u_xlat6.x);
        u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
        u_xlat14.x = u_xlatb0.x ? _MainTex_TexelSize.x : float(0.0);
        u_xlat14.y = (u_xlatb0.x) ? 0.0 : _MainTex_TexelSize.y;
        u_xlat9.xy = vec2(u_xlat18) * vec2(0.5, 0.5) + vs_TEXCOORD0.xy;
        u_xlat9.x = (u_xlatb0.x) ? vs_TEXCOORD0.x : u_xlat9.x;
        u_xlat9.y = (u_xlatb0.x) ? u_xlat9.y : vs_TEXCOORD0.y;
        u_xlat4.xy = (-u_xlat14.xy) + u_xlat9.xy;
        u_xlat5.xy = u_xlat14.xy + u_xlat9.xy;
        u_xlat9.x = u_xlat6.x * -2.0 + 3.0;
        u_xlat15.xy = u_xlat4.xy;
        u_xlat15.xy = clamp(u_xlat15.xy, 0.0, 1.0);
        u_xlat15.xy = u_xlat15.xy * vec2(_RenderViewportScaleFactor);
        u_xlat15.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat15.xy, 0.0).y;
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat16.xy = u_xlat5.xy;
        u_xlat16.xy = clamp(u_xlat16.xy, 0.0, 1.0);
        u_xlat16.xy = u_xlat16.xy * vec2(_RenderViewportScaleFactor);
        u_xlat21 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat16.xy, 0.0).y;
        u_xlat12 = (u_xlatb3) ? u_xlat2.x : u_xlat12;
        u_xlat2.x = u_xlat8 * 0.25;
        u_xlat8 = (-u_xlat12) * 0.5 + u_xlat1.y;
        u_xlat6.x = u_xlat6.x * u_xlat9.x;
        u_xlati8 = int((u_xlat8<0.0) ? 0xFFFFFFFFu : uint(0));
        u_xlat3.x = (-u_xlat12) * 0.5 + u_xlat15.x;
        u_xlat3.y = (-u_xlat12) * 0.5 + u_xlat21;
        u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), u_xlat2.xxxx).xy) * 0xFFFFFFFFu);
        u_xlat16.x = (-u_xlat14.x) * 1.5 + u_xlat4.x;
        u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat16.x;
        u_xlat22 = (-u_xlat14.y) * 1.5 + u_xlat4.y;
        u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.y : u_xlat22;
        u_xlati10.xz = ~(u_xlati15.xy);
        u_xlati10.x = int(uint(u_xlati10.z) | uint(u_xlati10.x));
        u_xlat22 = u_xlat14.x * 1.5 + u_xlat5.x;
        u_xlat5.x = (u_xlati15.y != 0) ? u_xlat5.x : u_xlat22;
        u_xlat22 = u_xlat14.y * 1.5 + u_xlat5.y;
        u_xlat5.z = (u_xlati15.y != 0) ? u_xlat5.y : u_xlat22;
        if(u_xlati10.x != 0) {
            if(u_xlati15.x == 0) {
                u_xlat10.xz = u_xlat4.xz;
                u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
            }
            if(u_xlati15.y == 0) {
                u_xlat10.xz = u_xlat5.xz;
                u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
            }
            u_xlat10.x = (-u_xlat12) * 0.5 + u_xlat3.x;
            u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat10.x;
            u_xlat15.x = (-u_xlat12) * 0.5 + u_xlat3.y;
            u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat15.x;
            u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), u_xlat2.xxxx).xy) * 0xFFFFFFFFu);
            u_xlat10.x = (-u_xlat14.x) * 2.0 + u_xlat4.x;
            u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat10.x;
            u_xlat10.x = (-u_xlat14.y) * 2.0 + u_xlat4.z;
            u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.z : u_xlat10.x;
            u_xlati10.xz = ~(u_xlati15.xy);
            u_xlati10.x = int(uint(u_xlati10.z) | uint(u_xlati10.x));
            u_xlat22 = u_xlat14.x * 2.0 + u_xlat5.x;
            u_xlat5.x = (u_xlati15.y != 0) ? u_xlat5.x : u_xlat22;
            u_xlat22 = u_xlat14.y * 2.0 + u_xlat5.z;
            u_xlat5.z = (u_xlati15.y != 0) ? u_xlat5.z : u_xlat22;
            if(u_xlati10.x != 0) {
                if(u_xlati15.x == 0) {
                    u_xlat10.xz = u_xlat4.xz;
                    u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                    u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                    u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                }
                if(u_xlati15.y == 0) {
                    u_xlat10.xz = u_xlat5.xz;
                    u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                    u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                    u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                }
                u_xlat10.x = (-u_xlat12) * 0.5 + u_xlat3.x;
                u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat10.x;
                u_xlat15.x = (-u_xlat12) * 0.5 + u_xlat3.y;
                u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat15.x;
                u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), u_xlat2.xxxx).xy) * 0xFFFFFFFFu);
                u_xlat10.x = (-u_xlat14.x) * 2.0 + u_xlat4.x;
                u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat10.x;
                u_xlat10.x = (-u_xlat14.y) * 2.0 + u_xlat4.z;
                u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.z : u_xlat10.x;
                u_xlati10.xz = ~(u_xlati15.xy);
                u_xlati10.x = int(uint(u_xlati10.z) | uint(u_xlati10.x));
                u_xlat22 = u_xlat14.x * 2.0 + u_xlat5.x;
                u_xlat5.x = (u_xlati15.y != 0) ? u_xlat5.x : u_xlat22;
                u_xlat22 = u_xlat14.y * 2.0 + u_xlat5.z;
                u_xlat5.z = (u_xlati15.y != 0) ? u_xlat5.z : u_xlat22;
                if(u_xlati10.x != 0) {
                    if(u_xlati15.x == 0) {
                        u_xlat10.xz = u_xlat4.xz;
                        u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                        u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                        u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                    }
                    if(u_xlati15.y == 0) {
                        u_xlat10.xz = u_xlat5.xz;
                        u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                        u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                        u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                    }
                    u_xlat10.x = (-u_xlat12) * 0.5 + u_xlat3.x;
                    u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat10.x;
                    u_xlat15.x = (-u_xlat12) * 0.5 + u_xlat3.y;
                    u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat15.x;
                    u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), u_xlat2.xxxx).xy) * 0xFFFFFFFFu);
                    u_xlat10.x = (-u_xlat14.x) * 2.0 + u_xlat4.x;
                    u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat10.x;
                    u_xlat10.x = (-u_xlat14.y) * 2.0 + u_xlat4.z;
                    u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.z : u_xlat10.x;
                    u_xlati10.xz = ~(u_xlati15.xy);
                    u_xlati10.x = int(uint(u_xlati10.z) | uint(u_xlati10.x));
                    u_xlat22 = u_xlat14.x * 2.0 + u_xlat5.x;
                    u_xlat5.x = (u_xlati15.y != 0) ? u_xlat5.x : u_xlat22;
                    u_xlat22 = u_xlat14.y * 2.0 + u_xlat5.z;
                    u_xlat5.z = (u_xlati15.y != 0) ? u_xlat5.z : u_xlat22;
                    if(u_xlati10.x != 0) {
                        if(u_xlati15.x == 0) {
                            u_xlat10.xz = u_xlat4.xz;
                            u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                            u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                            u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                        }
                        if(u_xlati15.y == 0) {
                            u_xlat10.xz = u_xlat5.xz;
                            u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                            u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                            u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                        }
                        u_xlat10.x = (-u_xlat12) * 0.5 + u_xlat3.x;
                        u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat10.x;
                        u_xlat15.x = (-u_xlat12) * 0.5 + u_xlat3.y;
                        u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat15.x;
                        u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), u_xlat2.xxxx).xy) * 0xFFFFFFFFu);
                        u_xlat10.x = (-u_xlat14.x) * 2.0 + u_xlat4.x;
                        u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat10.x;
                        u_xlat10.x = (-u_xlat14.y) * 2.0 + u_xlat4.z;
                        u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.z : u_xlat10.x;
                        u_xlati10.xz = ~(u_xlati15.xy);
                        u_xlati10.x = int(uint(u_xlati10.z) | uint(u_xlati10.x));
                        u_xlat22 = u_xlat14.x * 2.0 + u_xlat5.x;
                        u_xlat5.x = (u_xlati15.y != 0) ? u_xlat5.x : u_xlat22;
                        u_xlat22 = u_xlat14.y * 2.0 + u_xlat5.z;
                        u_xlat5.z = (u_xlati15.y != 0) ? u_xlat5.z : u_xlat22;
                        if(u_xlati10.x != 0) {
                            if(u_xlati15.x == 0) {
                                u_xlat10.xz = u_xlat4.xz;
                                u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                                u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                                u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                            }
                            if(u_xlati15.y == 0) {
                                u_xlat10.xz = u_xlat5.xz;
                                u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                                u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                                u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                            }
                            u_xlat10.x = (-u_xlat12) * 0.5 + u_xlat3.x;
                            u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat10.x;
                            u_xlat15.x = (-u_xlat12) * 0.5 + u_xlat3.y;
                            u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat15.x;
                            u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), u_xlat2.xxxx).xy) * 0xFFFFFFFFu);
                            u_xlat10.x = (-u_xlat14.x) * 2.0 + u_xlat4.x;
                            u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat10.x;
                            u_xlat10.x = (-u_xlat14.y) * 2.0 + u_xlat4.z;
                            u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.z : u_xlat10.x;
                            u_xlati10.xz = ~(u_xlati15.xy);
                            u_xlati10.x = int(uint(u_xlati10.z) | uint(u_xlati10.x));
                            u_xlat22 = u_xlat14.x * 2.0 + u_xlat5.x;
                            u_xlat5.x = (u_xlati15.y != 0) ? u_xlat5.x : u_xlat22;
                            u_xlat22 = u_xlat14.y * 2.0 + u_xlat5.z;
                            u_xlat5.z = (u_xlati15.y != 0) ? u_xlat5.z : u_xlat22;
                            if(u_xlati10.x != 0) {
                                if(u_xlati15.x == 0) {
                                    u_xlat10.xz = u_xlat4.xz;
                                    u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                                    u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                                    u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                                }
                                if(u_xlati15.y == 0) {
                                    u_xlat10.xz = u_xlat5.xz;
                                    u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                                    u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                                    u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                                }
                                u_xlat10.x = (-u_xlat12) * 0.5 + u_xlat3.x;
                                u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat10.x;
                                u_xlat15.x = (-u_xlat12) * 0.5 + u_xlat3.y;
                                u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat15.x;
                                u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), u_xlat2.xxxx).xy) * 0xFFFFFFFFu);
                                u_xlat10.x = (-u_xlat14.x) * 2.0 + u_xlat4.x;
                                u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat10.x;
                                u_xlat10.x = (-u_xlat14.y) * 2.0 + u_xlat4.z;
                                u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.z : u_xlat10.x;
                                u_xlati10.xz = ~(u_xlati15.xy);
                                u_xlati10.x = int(uint(u_xlati10.z) | uint(u_xlati10.x));
                                u_xlat22 = u_xlat14.x * 2.0 + u_xlat5.x;
                                u_xlat5.x = (u_xlati15.y != 0) ? u_xlat5.x : u_xlat22;
                                u_xlat22 = u_xlat14.y * 2.0 + u_xlat5.z;
                                u_xlat5.z = (u_xlati15.y != 0) ? u_xlat5.z : u_xlat22;
                                if(u_xlati10.x != 0) {
                                    if(u_xlati15.x == 0) {
                                        u_xlat10.xz = u_xlat4.xz;
                                        u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                                        u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                                        u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                                    }
                                    if(u_xlati15.y == 0) {
                                        u_xlat10.xz = u_xlat5.xz;
                                        u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                                        u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                                        u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                                    }
                                    u_xlat10.x = (-u_xlat12) * 0.5 + u_xlat3.x;
                                    u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat10.x;
                                    u_xlat15.x = (-u_xlat12) * 0.5 + u_xlat3.y;
                                    u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat15.x;
                                    u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), u_xlat2.xxxx).xy) * 0xFFFFFFFFu);
                                    u_xlat10.x = (-u_xlat14.x) * 2.0 + u_xlat4.x;
                                    u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat10.x;
                                    u_xlat10.x = (-u_xlat14.y) * 2.0 + u_xlat4.z;
                                    u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.z : u_xlat10.x;
                                    u_xlati10.xz = ~(u_xlati15.xy);
                                    u_xlati10.x = int(uint(u_xlati10.z) | uint(u_xlati10.x));
                                    u_xlat22 = u_xlat14.x * 2.0 + u_xlat5.x;
                                    u_xlat5.x = (u_xlati15.y != 0) ? u_xlat5.x : u_xlat22;
                                    u_xlat22 = u_xlat14.y * 2.0 + u_xlat5.z;
                                    u_xlat5.z = (u_xlati15.y != 0) ? u_xlat5.z : u_xlat22;
                                    if(u_xlati10.x != 0) {
                                        if(u_xlati15.x == 0) {
                                            u_xlat10.xz = u_xlat4.xz;
                                            u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                                            u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                                            u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                                        }
                                        if(u_xlati15.y == 0) {
                                            u_xlat10.xz = u_xlat5.xz;
                                            u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                                            u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                                            u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                                        }
                                        u_xlat10.x = (-u_xlat12) * 0.5 + u_xlat3.x;
                                        u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat10.x;
                                        u_xlat15.x = (-u_xlat12) * 0.5 + u_xlat3.y;
                                        u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat15.x;
                                        u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), u_xlat2.xxxx).xy) * 0xFFFFFFFFu);
                                        u_xlat10.x = (-u_xlat14.x) * 4.0 + u_xlat4.x;
                                        u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat10.x;
                                        u_xlat10.x = (-u_xlat14.y) * 4.0 + u_xlat4.z;
                                        u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.z : u_xlat10.x;
                                        u_xlati10.xz = ~(u_xlati15.xy);
                                        u_xlati10.x = int(uint(u_xlati10.z) | uint(u_xlati10.x));
                                        u_xlat22 = u_xlat14.x * 4.0 + u_xlat5.x;
                                        u_xlat5.x = (u_xlati15.y != 0) ? u_xlat5.x : u_xlat22;
                                        u_xlat22 = u_xlat14.y * 4.0 + u_xlat5.z;
                                        u_xlat5.z = (u_xlati15.y != 0) ? u_xlat5.z : u_xlat22;
                                        if(u_xlati10.x != 0) {
                                            if(u_xlati15.x == 0) {
                                                u_xlat10.xz = u_xlat4.xz;
                                                u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                                                u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                                                u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                                            }
                                            if(u_xlati15.y == 0) {
                                                u_xlat10.xz = u_xlat5.xz;
                                                u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                                                u_xlat10.xz = u_xlat10.xz * vec2(_RenderViewportScaleFactor);
                                                u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat10.xz, 0.0).y;
                                            }
                                            u_xlat10.x = (-u_xlat12) * 0.5 + u_xlat3.x;
                                            u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat10.x;
                                            u_xlat12 = (-u_xlat12) * 0.5 + u_xlat3.y;
                                            u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat12;
                                            u_xlatb15.xy = greaterThanEqual(abs(u_xlat3.xyxy), u_xlat2.xxxx).xy;
                                            u_xlat12 = (-u_xlat14.x) * 8.0 + u_xlat4.x;
                                            u_xlat4.x = (u_xlatb15.x) ? u_xlat4.x : u_xlat12;
                                            u_xlat12 = (-u_xlat14.y) * 8.0 + u_xlat4.z;
                                            u_xlat4.z = (u_xlatb15.x) ? u_xlat4.z : u_xlat12;
                                            u_xlat12 = u_xlat14.x * 8.0 + u_xlat5.x;
                                            u_xlat5.x = (u_xlatb15.y) ? u_xlat5.x : u_xlat12;
                                            u_xlat12 = u_xlat14.y * 8.0 + u_xlat5.z;
                                            u_xlat5.z = (u_xlatb15.y) ? u_xlat5.z : u_xlat12;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        u_xlat12 = (-u_xlat4.x) + vs_TEXCOORD0.x;
        u_xlat14.x = (-u_xlat4.z) + vs_TEXCOORD0.y;
        u_xlat12 = (u_xlatb0.x) ? u_xlat12 : u_xlat14.x;
        u_xlat2.xz = u_xlat5.xz + (-vs_TEXCOORD0.xy);
        u_xlat2.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat2.z;
        u_xlati14.xy = ivec2(uvec2(lessThan(u_xlat3.xyxy, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
        u_xlat3.x = u_xlat12 + u_xlat2.x;
        u_xlatb8.xy = notEqual(ivec4(u_xlati8), u_xlati14.xyxx).xy;
        u_xlat20 = float(1.0) / u_xlat3.x;
        u_xlatb3 = u_xlat12<u_xlat2.x;
        u_xlat12 = min(u_xlat12, u_xlat2.x);
        u_xlatb2 = (u_xlatb3) ? u_xlatb8.x : u_xlatb8.y;
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat12 = u_xlat12 * (-u_xlat20) + 0.5;
        u_xlat12 = u_xlatb2 ? u_xlat12 : float(0.0);
        u_xlat6.x = max(u_xlat6.x, u_xlat12);
        u_xlat6.xy = u_xlat6.xx * vec2(u_xlat18) + vs_TEXCOORD0.xy;
        u_xlat2.x = (u_xlatb0.x) ? vs_TEXCOORD0.x : u_xlat6.x;
        u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
        u_xlat2.y = (u_xlatb0.x) ? u_xlat6.y : vs_TEXCOORD0.y;
        u_xlat2.y = clamp(u_xlat2.y, 0.0, 1.0);
        u_xlat0.xy = u_xlat2.xy * vec2(_RenderViewportScaleFactor);
        u_xlat0.xyz = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0).xyz;
        u_xlat1.w = u_xlat1.y;
    } else {
        u_xlat0.xyz = u_xlat1.xyz;
    }
    u_xlat2.xy = vs_TEXCOORD0.xy * _Dithering_Coords.xy + _Dithering_Coords.zw;
    u_xlat18 = texture(sampler2D(_DitheringTex, sampler_DitheringTex), u_xlat2.xy).w;
    u_xlat18 = u_xlat18 * 2.0 + -1.0;
    u_xlat2.x = u_xlat18 * 3.40282347e+38 + 0.5;
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat2.x = u_xlat2.x * 2.0 + -1.0;
    u_xlat18 = -abs(u_xlat18) + 1.0;
    u_xlat18 = sqrt(u_xlat18);
    u_xlat18 = (-u_xlat18) + 1.0;
    u_xlat18 = u_xlat18 * u_xlat2.x;
    u_xlat2.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat3.xyz = max(abs(u_xlat0.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat3.xyz = log2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat3.xyz = exp2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat3.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat2.y : u_xlat3.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat2.z : u_xlat3.z;
    u_xlat0.xyz = vec3(u_xlat18) * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
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
    SV_Target0 = u_xlat1;
    return;
}

