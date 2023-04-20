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
	vec2 _GlobalMipBias;
	vec4 _SourceSize;
	vec4 _Dithering_Params;
	vec4 _FsrRcasConstants;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _BlueNoise_Texture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
uvec4 u_xlatu0;
bvec3 u_xlatb0;
vec4 u_xlat1;
uvec4 u_xlatu1;
bvec3 u_xlatb1;
vec4 u_xlat2;
ivec2 u_xlati2;
uvec4 u_xlatu2;
bvec2 u_xlatb2;
vec4 u_xlat3;
bool u_xlatb3;
vec3 u_xlat4;
uvec4 u_xlatu4;
vec3 u_xlat5;
ivec2 u_xlati5;
vec3 u_xlat6;
vec3 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat10;
vec3 u_xlat11;
int u_xlati11;
bool u_xlatb11;
vec2 u_xlat12;
vec3 u_xlat13;
ivec3 u_xlati13;
float u_xlat19;
bool u_xlatb19;
vec2 u_xlat20;
bool u_xlatb20;
float u_xlat21;
ivec2 u_xlati21;
float u_xlat27;
int u_xlati27;
float u_xlat28;
float u_xlat29;
bool u_xlatb29;
float u_xlat30;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_PointRepeat;
void main()
{
    u_xlat0.xy = vs_TEXCOORD0.xy * _SourceSize.xy;
    u_xlatu0.xy =  uvec2(ivec2(u_xlat0.xy));
    u_xlatu1 = u_xlatu0.xyxy + uvec4(4294967295u, 0u, 0u, 4294967295u);
    u_xlatu2.xy = u_xlatu1.zw;
    u_xlatu2.z = uint(0u);
    u_xlatu2.w = uint(0u);
    u_xlat2.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu2.xy), int(u_xlatu2.w)).xyz;
    u_xlatu1.z = uint(0u);
    u_xlatu1.w = uint(0u);
    u_xlat1.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).xyz;
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat3.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xyz;
    u_xlatu0 = u_xlatu0.xyxy + uvec4(0u, 1u, 1u, 0u);
    u_xlatu4.xy = u_xlatu0.zw;
    u_xlatu4.z = uint(0u);
    u_xlatu4.w = uint(0u);
    u_xlat4.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu4.xy), int(u_xlatu4.w)).xyz;
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat0.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xyz;
    u_xlat5.xyz = min(u_xlat1.xyz, u_xlat4.xyz);
    u_xlat5.xyz = min(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat5.xyz = min(u_xlat0.xyz, u_xlat5.xyz);
    u_xlat6.xyz = max(u_xlat1.xyz, u_xlat4.xyz);
    u_xlat6.xyz = max(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat6.xyz = max(u_xlat0.xyz, u_xlat6.xyz);
    u_xlat7.xyz = min(u_xlat3.xyz, u_xlat5.xyz);
    u_xlat8.xyz = u_xlat6.xyz * vec3(4.0, 4.0, 4.0);
    u_xlat8.xyz = vec3(1.0) / vec3(u_xlat8.xyz);
    u_xlat7.xyz = u_xlat7.xyz * u_xlat8.xyz;
    u_xlat6.xyz = max(u_xlat3.xyz, u_xlat6.xyz);
    u_xlat6.xyz = (-u_xlat6.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat5.xyz = u_xlat5.xyz * vec3(4.0, 4.0, 4.0) + vec3(-4.0, -4.0, -4.0);
    u_xlat5.xyz = vec3(1.0) / vec3(u_xlat5.xyz);
    u_xlat5.xyz = u_xlat5.xyz * u_xlat6.xyz;
    u_xlat5.xyz = max(u_xlat5.xyz, (-u_xlat7.xyz));
    u_xlat27 = max(u_xlat5.z, u_xlat5.y);
    u_xlat27 = max(u_xlat27, u_xlat5.x);
    u_xlat27 = min(u_xlat27, 0.0);
    u_xlat27 = max(u_xlat27, -0.1875);
    u_xlat27 = u_xlat27 * _FsrRcasConstants.x;
    u_xlat28 = u_xlat27 * 4.0 + 1.0;
    u_xlat29 = intBitsToFloat((-floatBitsToInt(u_xlat28)) + int(0x7EF19FFFu));
    u_xlat28 = (-u_xlat29) * u_xlat28 + 2.0;
    u_xlat28 = u_xlat28 * u_xlat29;
    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat27);
    u_xlat1.xyz = vec3(u_xlat27) * u_xlat2.xyz + u_xlat1.xyz;
    u_xlat0.xyz = vec3(u_xlat27) * u_xlat0.xyz + u_xlat1.xyz;
    u_xlat0.xyz = vec3(u_xlat27) * u_xlat4.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
    u_xlat0.xyz = vec3(u_xlat28) * u_xlat0.xyz;
    u_xlat27 = dot(u_xlat0.xyz, vec3(0.298999995, 0.587000012, 0.114));
    u_xlat1 = _SourceSize.zwzw * vec4(0.0, 1.0, 1.0, 0.0) + vs_TEXCOORD0.xyxy;
    u_xlat2.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, 0.0).xyz;
    u_xlat1.x = dot(u_xlat2.xyz, vec3(0.298999995, 0.587000012, 0.114));
    u_xlat10.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.zw, 0.0).xyz;
    u_xlat1.y = dot(u_xlat10.xyz, vec3(0.298999995, 0.587000012, 0.114));
    u_xlat2 = _SourceSize.zwzw * vec4(0.0, -1.0, -1.0, 0.0) + vs_TEXCOORD0.xyxy;
    u_xlat3.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).xyz;
    u_xlat1.z = dot(u_xlat3.xyz, vec3(0.298999995, 0.587000012, 0.114));
    u_xlat2.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.zw, 0.0).xyz;
    u_xlat1.w = dot(u_xlat2.xyz, vec3(0.298999995, 0.587000012, 0.114));
    u_xlat2.x = max(u_xlat27, u_xlat1.x);
    u_xlat11.x = min(u_xlat27, u_xlat1.x);
    u_xlat2.x = max(u_xlat1.y, u_xlat2.x);
    u_xlat11.x = min(u_xlat1.y, u_xlat11.x);
    u_xlat20.x = max(u_xlat1.w, u_xlat1.z);
    u_xlat29 = min(u_xlat1.w, u_xlat1.z);
    u_xlat2.x = max(u_xlat2.x, u_xlat20.x);
    u_xlat11.x = min(u_xlat11.x, u_xlat29);
    u_xlat20.x = u_xlat2.x * 0.150000006;
    u_xlat2.x = (-u_xlat11.x) + u_xlat2.x;
    u_xlat11.x = max(u_xlat20.x, 0.0299999993);
    u_xlatb11 = u_xlat2.x>=u_xlat11.x;
    if(u_xlatb11){
        u_xlat11.xy = vs_TEXCOORD0.xy + (-_SourceSize.zw);
        u_xlat11.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat11.xy, 0.0).xyz;
        u_xlat11.x = dot(u_xlat11.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat20.xy = vs_TEXCOORD0.xy + _SourceSize.zw;
        u_xlat3.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat20.xy, 0.0).xyz;
        u_xlat20.x = dot(u_xlat3.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat3 = _SourceSize.zwzw * vec4(1.0, -1.0, -1.0, 1.0) + vs_TEXCOORD0.xyxy;
        u_xlat4.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.xy, 0.0).xyz;
        u_xlat29 = dot(u_xlat4.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat3.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.zw, 0.0).xyz;
        u_xlat3.x = dot(u_xlat3.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat12.xy = u_xlat1.xy + u_xlat1.zw;
        u_xlat2.x = float(1.0) / u_xlat2.x;
        u_xlat30 = u_xlat12.y + u_xlat12.x;
        u_xlat12.x = u_xlat27 * -2.0 + u_xlat12.x;
        u_xlat21 = u_xlat27 * -2.0 + u_xlat12.y;
        u_xlat4.x = u_xlat20.x + u_xlat29;
        u_xlat29 = u_xlat29 + u_xlat11.x;
        u_xlat13.x = u_xlat1.y * -2.0 + u_xlat4.x;
        u_xlat29 = u_xlat1.z * -2.0 + u_xlat29;
        u_xlat11.x = u_xlat11.x + u_xlat3.x;
        u_xlat20.x = u_xlat20.x + u_xlat3.x;
        u_xlat3.x = abs(u_xlat12.x) * 2.0 + abs(u_xlat13.x);
        u_xlat29 = abs(u_xlat21) * 2.0 + abs(u_xlat29);
        u_xlat12.x = u_xlat1.w * -2.0 + u_xlat11.x;
        u_xlat20.x = u_xlat1.x * -2.0 + u_xlat20.x;
        u_xlat3.x = u_xlat3.x + abs(u_xlat12.x);
        u_xlat20.x = u_xlat29 + abs(u_xlat20.x);
        u_xlat11.x = u_xlat4.x + u_xlat11.x;
        u_xlatb20 = u_xlat3.x>=u_xlat20.x;
        u_xlat11.x = u_xlat30 * 2.0 + u_xlat11.x;
        u_xlat1.xz = (bool(u_xlatb20)) ? u_xlat1.xz : u_xlat1.yw;
        u_xlat10.x = (u_xlatb20) ? _SourceSize.w : _SourceSize.z;
        u_xlat28 = u_xlat11.x * 0.0833333358 + (-u_xlat27);
        u_xlat11.xz = (-vec2(u_xlat27)) + u_xlat1.zx;
        u_xlat1.xz = vec2(u_xlat27) + u_xlat1.xz;
        u_xlatb3 = abs(u_xlat11.x)>=abs(u_xlat11.z);
        u_xlat11.x = max(abs(u_xlat11.z), abs(u_xlat11.x));
        u_xlat10.x = (u_xlatb3) ? (-u_xlat10.x) : u_xlat10.x;
        u_xlat28 = u_xlat2.x * abs(u_xlat28);
        u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
        u_xlat2.x = u_xlatb20 ? _SourceSize.z : float(0.0);
        u_xlat2.w = (u_xlatb20) ? 0.0 : _SourceSize.w;
        u_xlat12.xy = u_xlat10.xx * vec2(0.5, 0.5) + vs_TEXCOORD0.xy;
        u_xlat12.x = (u_xlatb20) ? vs_TEXCOORD0.x : u_xlat12.x;
        u_xlat12.y = (u_xlatb20) ? u_xlat12.y : vs_TEXCOORD0.y;
        u_xlat4.xy = (-u_xlat2.xw) + u_xlat12.xy;
        u_xlat5.xy = u_xlat2.xw + u_xlat12.xy;
        u_xlat12.x = u_xlat28 * -2.0 + 3.0;
        u_xlat6.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xy, 0.0).xyz;
        u_xlat21 = dot(u_xlat6.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat28 = u_xlat28 * u_xlat28;
        u_xlat6.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat5.xy, 0.0).xyz;
        u_xlat30 = dot(u_xlat6.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat1.x = (u_xlatb3) ? u_xlat1.z : u_xlat1.x;
        u_xlat19 = u_xlat11.x * 0.25;
        u_xlat27 = (-u_xlat1.x) * 0.5 + u_xlat27;
        u_xlat28 = u_xlat28 * u_xlat12.x;
        u_xlati27 = int((u_xlat27<0.0) ? 0xFFFFFFFFu : uint(0));
        u_xlat3.x = (-u_xlat1.x) * 0.5 + u_xlat21;
        u_xlat3.y = (-u_xlat1.x) * 0.5 + u_xlat30;
        u_xlati21.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), vec4(u_xlat19)).xy) * 0xFFFFFFFFu);
        u_xlat11.x = (-u_xlat2.x) * 1.5 + u_xlat4.x;
        u_xlat4.x = (u_xlati21.x != 0) ? u_xlat4.x : u_xlat11.x;
        u_xlat11.x = (-u_xlat2.w) * 1.5 + u_xlat4.y;
        u_xlat4.z = (u_xlati21.x != 0) ? u_xlat4.y : u_xlat11.x;
        u_xlati13.xz = ~(u_xlati21.xy);
        u_xlati11 = int(uint(u_xlati13.z) | uint(u_xlati13.x));
        u_xlat13.x = u_xlat2.x * 1.5 + u_xlat5.x;
        u_xlat13.x = (u_xlati21.y != 0) ? u_xlat5.x : u_xlat13.x;
        u_xlat5.x = u_xlat2.w * 1.5 + u_xlat5.y;
        u_xlat13.z = (u_xlati21.y != 0) ? u_xlat5.y : u_xlat5.x;
        if(u_xlati11 != 0) {
            if(u_xlati21.x == 0) {
                u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xz, 0.0).xyz;
                u_xlat3.x = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
            }
            if(u_xlati21.y == 0) {
                u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat13.xz, 0.0).xyz;
                u_xlat3.y = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
            }
            u_xlat11.x = (-u_xlat1.x) * 0.5 + u_xlat3.x;
            u_xlat3.x = (u_xlati21.x != 0) ? u_xlat3.x : u_xlat11.x;
            u_xlat11.x = (-u_xlat1.x) * 0.5 + u_xlat3.y;
            u_xlat3.y = (u_xlati21.y != 0) ? u_xlat3.y : u_xlat11.x;
            u_xlati21.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), vec4(u_xlat19)).xy) * 0xFFFFFFFFu);
            u_xlat11.x = (-u_xlat2.x) * 2.0 + u_xlat4.x;
            u_xlat4.x = (u_xlati21.x != 0) ? u_xlat4.x : u_xlat11.x;
            u_xlat11.x = (-u_xlat2.w) * 2.0 + u_xlat4.z;
            u_xlat4.z = (u_xlati21.x != 0) ? u_xlat4.z : u_xlat11.x;
            u_xlati5.xy = ~(u_xlati21.xy);
            u_xlati11 = int(uint(u_xlati5.y) | uint(u_xlati5.x));
            u_xlat5.x = u_xlat2.x * 2.0 + u_xlat13.x;
            u_xlat13.x = (u_xlati21.y != 0) ? u_xlat13.x : u_xlat5.x;
            u_xlat5.x = u_xlat2.w * 2.0 + u_xlat13.z;
            u_xlat13.z = (u_xlati21.y != 0) ? u_xlat13.z : u_xlat5.x;
            if(u_xlati11 != 0) {
                if(u_xlati21.x == 0) {
                    u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xz, 0.0).xyz;
                    u_xlat3.x = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
                }
                if(u_xlati21.y == 0) {
                    u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat13.xz, 0.0).xyz;
                    u_xlat3.y = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
                }
                u_xlat11.x = (-u_xlat1.x) * 0.5 + u_xlat3.x;
                u_xlat3.x = (u_xlati21.x != 0) ? u_xlat3.x : u_xlat11.x;
                u_xlat11.x = (-u_xlat1.x) * 0.5 + u_xlat3.y;
                u_xlat3.y = (u_xlati21.y != 0) ? u_xlat3.y : u_xlat11.x;
                u_xlati21.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), vec4(u_xlat19)).xy) * 0xFFFFFFFFu);
                u_xlat11.x = (-u_xlat2.x) * 4.0 + u_xlat4.x;
                u_xlat4.x = (u_xlati21.x != 0) ? u_xlat4.x : u_xlat11.x;
                u_xlat11.x = (-u_xlat2.w) * 4.0 + u_xlat4.z;
                u_xlat4.z = (u_xlati21.x != 0) ? u_xlat4.z : u_xlat11.x;
                u_xlati5.xy = ~(u_xlati21.xy);
                u_xlati11 = int(uint(u_xlati5.y) | uint(u_xlati5.x));
                u_xlat5.x = u_xlat2.x * 4.0 + u_xlat13.x;
                u_xlat13.x = (u_xlati21.y != 0) ? u_xlat13.x : u_xlat5.x;
                u_xlat5.x = u_xlat2.w * 4.0 + u_xlat13.z;
                u_xlat13.z = (u_xlati21.y != 0) ? u_xlat13.z : u_xlat5.x;
                if(u_xlati11 != 0) {
                    if(u_xlati21.x == 0) {
                        u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xz, 0.0).xyz;
                        u_xlat3.x = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
                    }
                    if(u_xlati21.y == 0) {
                        u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat13.xz, 0.0).xyz;
                        u_xlat3.y = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
                    }
                    u_xlat11.x = (-u_xlat1.x) * 0.5 + u_xlat3.x;
                    u_xlat3.x = (u_xlati21.x != 0) ? u_xlat3.x : u_xlat11.x;
                    u_xlat1.x = (-u_xlat1.x) * 0.5 + u_xlat3.y;
                    u_xlat3.y = (u_xlati21.y != 0) ? u_xlat3.y : u_xlat1.x;
                    u_xlatb1.xz = greaterThanEqual(abs(u_xlat3.xxyx), vec4(u_xlat19)).xz;
                    u_xlat11.x = (-u_xlat2.x) * 12.0 + u_xlat4.x;
                    u_xlat4.x = (u_xlatb1.x) ? u_xlat4.x : u_xlat11.x;
                    u_xlat11.x = (-u_xlat2.w) * 12.0 + u_xlat4.z;
                    u_xlat4.z = (u_xlatb1.x) ? u_xlat4.z : u_xlat11.x;
                    u_xlat1.x = u_xlat2.x * 12.0 + u_xlat13.x;
                    u_xlat13.x = (u_xlatb1.z) ? u_xlat13.x : u_xlat1.x;
                    u_xlat1.x = u_xlat2.w * 12.0 + u_xlat13.z;
                    u_xlat13.z = (u_xlatb1.z) ? u_xlat13.z : u_xlat1.x;
                }
            }
        }
        u_xlat1.x = (-u_xlat4.x) + vs_TEXCOORD0.x;
        u_xlat19 = u_xlat13.x + (-vs_TEXCOORD0.x);
        u_xlat2.x = (-u_xlat4.z) + vs_TEXCOORD0.y;
        u_xlat1.x = (u_xlatb20) ? u_xlat1.x : u_xlat2.x;
        u_xlat2.x = u_xlat13.z + (-vs_TEXCOORD0.y);
        u_xlat19 = (u_xlatb20) ? u_xlat19 : u_xlat2.x;
        u_xlati2.xy = ivec2(uvec2(lessThan(u_xlat3.xyxx, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
        u_xlat29 = u_xlat1.x + u_xlat19;
        u_xlatb2.xy = notEqual(ivec4(u_xlati27), u_xlati2.xyxx).xy;
        u_xlat27 = float(1.0) / u_xlat29;
        u_xlatb29 = u_xlat1.x<u_xlat19;
        u_xlat1.x = min(u_xlat19, u_xlat1.x);
        u_xlatb19 = (u_xlatb29) ? u_xlatb2.x : u_xlatb2.y;
        u_xlat28 = u_xlat28 * u_xlat28;
        u_xlat27 = u_xlat1.x * (-u_xlat27) + 0.5;
        u_xlat1.x = u_xlat28 * 0.649999976;
        u_xlat27 = u_xlatb19 ? u_xlat27 : float(0.0);
        u_xlat27 = max(u_xlat1.x, u_xlat27);
        u_xlat1.xy = vec2(u_xlat27) * u_xlat10.xx + vs_TEXCOORD0.xy;
        u_xlat2.x = (u_xlatb20) ? vs_TEXCOORD0.x : u_xlat1.x;
        u_xlat2.y = (u_xlatb20) ? u_xlat1.y : vs_TEXCOORD0.y;
        u_xlat0.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).xyz;
    }
    u_xlat1.xy = vs_TEXCOORD0.xy * _Dithering_Params.xy + _Dithering_Params.zw;
    u_xlat27 = texture(sampler2D(_BlueNoise_Texture, sampler_PointRepeat), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlat27 = u_xlat27 * 2.0 + -1.0;
    u_xlatb1.x = u_xlat27>=0.0;
    u_xlat1.x = (u_xlatb1.x) ? 1.0 : -1.0;
    u_xlat27 = -abs(u_xlat27) + 1.0;
    u_xlat27 = sqrt(u_xlat27);
    u_xlat27 = (-u_xlat27) + 1.0;
    u_xlat27 = u_xlat27 * u_xlat1.x;
    u_xlat1.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat2.xyz = log2(abs(u_xlat0.xyz));
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat2.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat2.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat2.z;
    u_xlat0.xyz = vec3(u_xlat27) * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
    u_xlat1.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlat2.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat2.xyz = log2(abs(u_xlat2.xyz));
    u_xlat2.xyz = u_xlat2.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    SV_Target0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat2.x;
    SV_Target0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat2.y;
    SV_Target0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat2.z;
    SV_Target0.w = 1.0;
    return;
}

