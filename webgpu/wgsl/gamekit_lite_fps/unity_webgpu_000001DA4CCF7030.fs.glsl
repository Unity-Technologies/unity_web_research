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
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
bvec3 u_xlatb1;
vec3 u_xlat2;
int u_xlati2;
bvec2 u_xlatb2;
vec3 u_xlat3;
vec3 u_xlat4;
vec2 u_xlat5;
ivec2 u_xlati5;
vec3 u_xlat6;
bvec3 u_xlatb6;
vec2 u_xlat8;
ivec2 u_xlati8;
vec2 u_xlat9;
vec3 u_xlat10;
ivec3 u_xlati10;
float u_xlat12;
float u_xlat14;
bool u_xlatb14;
vec2 u_xlat15;
ivec2 u_xlati15;
bvec2 u_xlatb15;
float u_xlat18;
float u_xlat19;
bool u_xlatb19;
float u_xlat20;
int u_xlati20;
bool u_xlatb20;
float u_xlat21;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_DitheringTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0.xy = vs_TEXCOORD0.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
    u_xlat1.xyz = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0).xyz;
    u_xlat12 = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(0, 1)).y;
    u_xlat18 = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(1, 0)).y;
    u_xlat19 = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(0, -1)).y;
    u_xlat2.x = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(-1, 0)).y;
    u_xlat8.x = max(u_xlat1.y, u_xlat12);
    u_xlat14 = min(u_xlat1.y, u_xlat12);
    u_xlat8.x = max(u_xlat18, u_xlat8.x);
    u_xlat14 = min(u_xlat18, u_xlat14);
    u_xlat20 = max(u_xlat19, u_xlat2.x);
    u_xlat3.x = min(u_xlat19, u_xlat2.x);
    u_xlat8.x = max(u_xlat8.x, u_xlat20);
    u_xlat14 = min(u_xlat14, u_xlat3.x);
    u_xlat20 = u_xlat8.x * 0.165999994;
    u_xlat8.x = (-u_xlat14) + u_xlat8.x;
    u_xlat14 = max(u_xlat20, 0.0625);
    u_xlatb14 = u_xlat8.x>=u_xlat14;
    if(u_xlatb14){
        u_xlat14 = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(-1, -1)).y;
        u_xlat20 = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(1, 1)).y;
        u_xlat3.x = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(1, -1)).y;
        u_xlat0.x = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0, ivec2(-1, 1)).y;
        u_xlat6.x = u_xlat12 + u_xlat19;
        u_xlat9.x = u_xlat18 + u_xlat2.x;
        u_xlat8.x = float(1.0) / u_xlat8.x;
        u_xlat15.x = u_xlat6.x + u_xlat9.x;
        u_xlat6.x = u_xlat1.y * -2.0 + u_xlat6.x;
        u_xlat9.x = u_xlat1.y * -2.0 + u_xlat9.x;
        u_xlat21 = u_xlat20 + u_xlat3.x;
        u_xlat3.x = u_xlat14 + u_xlat3.x;
        u_xlat4.x = u_xlat18 * -2.0 + u_xlat21;
        u_xlat3.x = u_xlat19 * -2.0 + u_xlat3.x;
        u_xlat14 = u_xlat0.x + u_xlat14;
        u_xlat0.x = u_xlat20 + u_xlat0.x;
        u_xlat6.x = abs(u_xlat6.x) * 2.0 + abs(u_xlat4.x);
        u_xlat20 = abs(u_xlat9.x) * 2.0 + abs(u_xlat3.x);
        u_xlat3.x = u_xlat2.x * -2.0 + u_xlat14;
        u_xlat0.x = u_xlat12 * -2.0 + u_xlat0.x;
        u_xlat6.x = u_xlat6.x + abs(u_xlat3.x);
        u_xlat0.x = u_xlat20 + abs(u_xlat0.x);
        u_xlat14 = u_xlat21 + u_xlat14;
        u_xlatb0 = u_xlat6.x>=u_xlat0.x;
        u_xlat6.x = u_xlat15.x * 2.0 + u_xlat14;
        u_xlat19 = (u_xlatb0) ? u_xlat19 : u_xlat2.x;
        u_xlat12 = (u_xlatb0) ? u_xlat12 : u_xlat18;
        u_xlat18 = (u_xlatb0) ? _MainTex_TexelSize.y : _MainTex_TexelSize.x;
        u_xlat6.x = u_xlat6.x * 0.0833333358 + (-u_xlat1.y);
        u_xlat2.x = (-u_xlat1.y) + u_xlat19;
        u_xlat14 = (-u_xlat1.y) + u_xlat12;
        u_xlat19 = u_xlat1.y + u_xlat19;
        u_xlat12 = u_xlat1.y + u_xlat12;
        u_xlatb20 = abs(u_xlat2.x)>=abs(u_xlat14);
        u_xlat2.x = max(abs(u_xlat14), abs(u_xlat2.x));
        u_xlat18 = (u_xlatb20) ? (-u_xlat18) : u_xlat18;
        u_xlat6.x = u_xlat8.x * abs(u_xlat6.x);
        u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
        u_xlat8.x = u_xlatb0 ? _MainTex_TexelSize.x : float(0.0);
        u_xlat8.y = (u_xlatb0) ? 0.0 : _MainTex_TexelSize.y;
        u_xlat3.xy = vec2(u_xlat18) * vec2(0.5, 0.5) + vs_TEXCOORD0.xy;
        u_xlat3.x = (u_xlatb0) ? vs_TEXCOORD0.x : u_xlat3.x;
        u_xlat3.y = (u_xlatb0) ? u_xlat3.y : vs_TEXCOORD0.y;
        u_xlat4.xy = (-u_xlat8.xy) + u_xlat3.xy;
        u_xlat5.xy = u_xlat8.xy + u_xlat3.xy;
        u_xlat3.x = u_xlat6.x * -2.0 + 3.0;
        u_xlat9.xy = u_xlat4.xy;
        u_xlat9.xy = clamp(u_xlat9.xy, 0.0, 1.0);
        u_xlat9.xy = u_xlat9.xy * vec2(_RenderViewportScaleFactor);
        u_xlat9.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat9.xy, 0.0).y;
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat15.xy = u_xlat5.xy;
        u_xlat15.xy = clamp(u_xlat15.xy, 0.0, 1.0);
        u_xlat15.xy = u_xlat15.xy * vec2(_RenderViewportScaleFactor);
        u_xlat15.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat15.xy, 0.0).y;
        u_xlat12 = (u_xlatb20) ? u_xlat19 : u_xlat12;
        u_xlat19 = u_xlat2.x * 0.25;
        u_xlat2.x = (-u_xlat12) * 0.5 + u_xlat1.y;
        u_xlat6.x = u_xlat6.x * u_xlat3.x;
        u_xlati2 = int((u_xlat2.x<0.0) ? 0xFFFFFFFFu : uint(0));
        u_xlat3.x = (-u_xlat12) * 0.5 + u_xlat9.x;
        u_xlat3.y = (-u_xlat12) * 0.5 + u_xlat15.x;
        u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), vec4(u_xlat19)).xy) * 0xFFFFFFFFu);
        u_xlat20 = (-u_xlat8.x) * 1.5 + u_xlat4.x;
        u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat20;
        u_xlat20 = (-u_xlat8.y) * 1.5 + u_xlat4.y;
        u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.y : u_xlat20;
        u_xlati10.xz = ~(u_xlati15.xy);
        u_xlati20 = int(uint(u_xlati10.z) | uint(u_xlati10.x));
        u_xlat10.x = u_xlat8.x * 1.5 + u_xlat5.x;
        u_xlat10.x = (u_xlati15.y != 0) ? u_xlat5.x : u_xlat10.x;
        u_xlat5.x = u_xlat8.y * 1.5 + u_xlat5.y;
        u_xlat10.z = (u_xlati15.y != 0) ? u_xlat5.y : u_xlat5.x;
        if(u_xlati20 != 0) {
            if(u_xlati15.x == 0) {
                u_xlat5.xy = u_xlat4.xz;
                u_xlat5.xy = clamp(u_xlat5.xy, 0.0, 1.0);
                u_xlat5.xy = u_xlat5.xy * vec2(_RenderViewportScaleFactor);
                u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat5.xy, 0.0).y;
            }
            if(u_xlati15.y == 0) {
                u_xlat5.xy = u_xlat10.xz;
                u_xlat5.xy = clamp(u_xlat5.xy, 0.0, 1.0);
                u_xlat5.xy = u_xlat5.xy * vec2(_RenderViewportScaleFactor);
                u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat5.xy, 0.0).y;
            }
            u_xlat20 = (-u_xlat12) * 0.5 + u_xlat3.x;
            u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat20;
            u_xlat20 = (-u_xlat12) * 0.5 + u_xlat3.y;
            u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat20;
            u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), vec4(u_xlat19)).xy) * 0xFFFFFFFFu);
            u_xlat20 = (-u_xlat8.x) * 2.0 + u_xlat4.x;
            u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat20;
            u_xlat20 = (-u_xlat8.y) * 2.0 + u_xlat4.z;
            u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.z : u_xlat20;
            u_xlati5.xy = ~(u_xlati15.xy);
            u_xlati20 = int(uint(u_xlati5.y) | uint(u_xlati5.x));
            u_xlat5.x = u_xlat8.x * 2.0 + u_xlat10.x;
            u_xlat10.x = (u_xlati15.y != 0) ? u_xlat10.x : u_xlat5.x;
            u_xlat5.x = u_xlat8.y * 2.0 + u_xlat10.z;
            u_xlat10.z = (u_xlati15.y != 0) ? u_xlat10.z : u_xlat5.x;
            if(u_xlati20 != 0) {
                if(u_xlati15.x == 0) {
                    u_xlat5.xy = u_xlat4.xz;
                    u_xlat5.xy = clamp(u_xlat5.xy, 0.0, 1.0);
                    u_xlat5.xy = u_xlat5.xy * vec2(_RenderViewportScaleFactor);
                    u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat5.xy, 0.0).y;
                }
                if(u_xlati15.y == 0) {
                    u_xlat5.xy = u_xlat10.xz;
                    u_xlat5.xy = clamp(u_xlat5.xy, 0.0, 1.0);
                    u_xlat5.xy = u_xlat5.xy * vec2(_RenderViewportScaleFactor);
                    u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat5.xy, 0.0).y;
                }
                u_xlat20 = (-u_xlat12) * 0.5 + u_xlat3.x;
                u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat20;
                u_xlat20 = (-u_xlat12) * 0.5 + u_xlat3.y;
                u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat20;
                u_xlati15.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), vec4(u_xlat19)).xy) * 0xFFFFFFFFu);
                u_xlat20 = (-u_xlat8.x) * 4.0 + u_xlat4.x;
                u_xlat4.x = (u_xlati15.x != 0) ? u_xlat4.x : u_xlat20;
                u_xlat20 = (-u_xlat8.y) * 4.0 + u_xlat4.z;
                u_xlat4.z = (u_xlati15.x != 0) ? u_xlat4.z : u_xlat20;
                u_xlati5.xy = ~(u_xlati15.xy);
                u_xlati20 = int(uint(u_xlati5.y) | uint(u_xlati5.x));
                u_xlat5.x = u_xlat8.x * 4.0 + u_xlat10.x;
                u_xlat10.x = (u_xlati15.y != 0) ? u_xlat10.x : u_xlat5.x;
                u_xlat5.x = u_xlat8.y * 4.0 + u_xlat10.z;
                u_xlat10.z = (u_xlati15.y != 0) ? u_xlat10.z : u_xlat5.x;
                if(u_xlati20 != 0) {
                    if(u_xlati15.x == 0) {
                        u_xlat5.xy = u_xlat4.xz;
                        u_xlat5.xy = clamp(u_xlat5.xy, 0.0, 1.0);
                        u_xlat5.xy = u_xlat5.xy * vec2(_RenderViewportScaleFactor);
                        u_xlat3.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat5.xy, 0.0).y;
                    }
                    if(u_xlati15.y == 0) {
                        u_xlat5.xy = u_xlat10.xz;
                        u_xlat5.xy = clamp(u_xlat5.xy, 0.0, 1.0);
                        u_xlat5.xy = u_xlat5.xy * vec2(_RenderViewportScaleFactor);
                        u_xlat3.y = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat5.xy, 0.0).y;
                    }
                    u_xlat20 = (-u_xlat12) * 0.5 + u_xlat3.x;
                    u_xlat3.x = (u_xlati15.x != 0) ? u_xlat3.x : u_xlat20;
                    u_xlat12 = (-u_xlat12) * 0.5 + u_xlat3.y;
                    u_xlat3.y = (u_xlati15.y != 0) ? u_xlat3.y : u_xlat12;
                    u_xlatb15.xy = greaterThanEqual(abs(u_xlat3.xyxy), vec4(u_xlat19)).xy;
                    u_xlat12 = (-u_xlat8.x) * 12.0 + u_xlat4.x;
                    u_xlat4.x = (u_xlatb15.x) ? u_xlat4.x : u_xlat12;
                    u_xlat12 = (-u_xlat8.y) * 12.0 + u_xlat4.z;
                    u_xlat4.z = (u_xlatb15.x) ? u_xlat4.z : u_xlat12;
                    u_xlat12 = u_xlat8.x * 12.0 + u_xlat10.x;
                    u_xlat10.x = (u_xlatb15.y) ? u_xlat10.x : u_xlat12;
                    u_xlat12 = u_xlat8.y * 12.0 + u_xlat10.z;
                    u_xlat10.z = (u_xlatb15.y) ? u_xlat10.z : u_xlat12;
                }
            }
        }
        u_xlat12 = (-u_xlat4.x) + vs_TEXCOORD0.x;
        u_xlat19 = u_xlat10.x + (-vs_TEXCOORD0.x);
        u_xlat8.x = (-u_xlat4.z) + vs_TEXCOORD0.y;
        u_xlat12 = (u_xlatb0) ? u_xlat12 : u_xlat8.x;
        u_xlat8.x = u_xlat10.z + (-vs_TEXCOORD0.y);
        u_xlat19 = (u_xlatb0) ? u_xlat19 : u_xlat8.x;
        u_xlati8.xy = ivec2(uvec2(lessThan(u_xlat3.xyxx, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
        u_xlat20 = u_xlat12 + u_xlat19;
        u_xlatb2.xy = notEqual(ivec4(u_xlati2), u_xlati8.xyxx).xy;
        u_xlat14 = float(1.0) / u_xlat20;
        u_xlatb20 = u_xlat12<u_xlat19;
        u_xlat12 = min(u_xlat12, u_xlat19);
        u_xlatb19 = (u_xlatb20) ? u_xlatb2.x : u_xlatb2.y;
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat12 = u_xlat12 * (-u_xlat14) + 0.5;
        u_xlat12 = u_xlatb19 ? u_xlat12 : float(0.0);
        u_xlat6.x = max(u_xlat6.x, u_xlat12);
        u_xlat6.xy = u_xlat6.xx * vec2(u_xlat18) + vs_TEXCOORD0.xy;
        u_xlat2.x = (u_xlatb0) ? vs_TEXCOORD0.x : u_xlat6.x;
        u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
        u_xlat2.y = (u_xlatb0) ? u_xlat6.y : vs_TEXCOORD0.y;
        u_xlat2.y = clamp(u_xlat2.y, 0.0, 1.0);
        u_xlat0.xy = u_xlat2.xy * vec2(_RenderViewportScaleFactor);
        u_xlat1.xyz = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0).xyz;
    }
    u_xlat0.x = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy).w;
    u_xlat6.xy = vs_TEXCOORD0.xy * _Dithering_Coords.xy + _Dithering_Coords.zw;
    u_xlat6.x = texture(sampler2D(_DitheringTex, sampler_DitheringTex), u_xlat6.xy).w;
    u_xlat6.x = u_xlat6.x * 2.0 + -1.0;
    u_xlat12 = u_xlat6.x * 3.40282347e+38 + 0.5;
    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
    u_xlat12 = u_xlat12 * 2.0 + -1.0;
    u_xlat6.x = -abs(u_xlat6.x) + 1.0;
    u_xlat6.x = sqrt(u_xlat6.x);
    u_xlat6.x = (-u_xlat6.x) + 1.0;
    u_xlat6.x = u_xlat6.x * u_xlat12;
    u_xlat2.xyz = u_xlat1.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat3.xyz = max(abs(u_xlat1.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat3.xyz = log2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat3.xyz = exp2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb1.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat1.xyzx).xyz;
    u_xlat1.x = (u_xlatb1.x) ? u_xlat2.x : u_xlat3.x;
    u_xlat1.y = (u_xlatb1.y) ? u_xlat2.y : u_xlat3.y;
    u_xlat1.z = (u_xlatb1.z) ? u_xlat2.z : u_xlat3.z;
    u_xlat6.xyz = u_xlat6.xxx * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat6.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlat2.xyz = u_xlat6.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat2.xyz = max(abs(u_xlat2.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat2.xyz = log2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlatb6.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0404499993), u_xlat6.xyzz).xyz;
    SV_Target0.x = (u_xlatb6.x) ? u_xlat1.x : u_xlat2.x;
    SV_Target0.y = (u_xlatb6.y) ? u_xlat1.y : u_xlat2.y;
    SV_Target0.z = (u_xlatb6.z) ? u_xlat1.z : u_xlat2.z;
    SV_Target0.w = u_xlat0.x;
    return;
}

