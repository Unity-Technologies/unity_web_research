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
	vec2 _GlobalMipBias;
	vec4 _SourceSize;
	vec2 _Grain_Params;
	vec4 _Grain_TilingParams;
	vec4 _Dithering_Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _Grain_Texture;
layout(set = 0, binding = 2) uniform mediump texture2D _BlueNoise_Texture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
ivec2 u_xlati2;
bvec2 u_xlatb2;
vec4 u_xlat3;
bool u_xlatb3;
vec3 u_xlat4;
vec3 u_xlat5;
ivec2 u_xlati5;
vec3 u_xlat6;
vec3 u_xlat8;
vec3 u_xlat9;
int u_xlati9;
bool u_xlatb9;
vec2 u_xlat10;
vec3 u_xlat11;
ivec3 u_xlati11;
float u_xlat15;
bool u_xlatb15;
vec2 u_xlat16;
bool u_xlatb16;
float u_xlat17;
ivec2 u_xlati17;
float u_xlat21;
int u_xlati21;
float u_xlat22;
float u_xlat23;
bool u_xlatb23;
float u_xlat24;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_PointClamp;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_PointRepeat;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_LinearRepeat;
void main()
{
    u_xlat0.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat21 = dot(u_xlat0.xyz, vec3(0.298999995, 0.587000012, 0.114));
    u_xlat1 = _SourceSize.zwzw * vec4(0.0, 1.0, 1.0, 0.0) + vs_TEXCOORD0.xyxy;
    u_xlat2.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, 0.0).xyz;
    u_xlat1.x = dot(u_xlat2.xyz, vec3(0.298999995, 0.587000012, 0.114));
    u_xlat8.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.zw, 0.0).xyz;
    u_xlat1.y = dot(u_xlat8.xyz, vec3(0.298999995, 0.587000012, 0.114));
    u_xlat2 = _SourceSize.zwzw * vec4(0.0, -1.0, -1.0, 0.0) + vs_TEXCOORD0.xyxy;
    u_xlat3.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).xyz;
    u_xlat1.z = dot(u_xlat3.xyz, vec3(0.298999995, 0.587000012, 0.114));
    u_xlat2.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.zw, 0.0).xyz;
    u_xlat1.w = dot(u_xlat2.xyz, vec3(0.298999995, 0.587000012, 0.114));
    u_xlat2.x = max(u_xlat21, u_xlat1.x);
    u_xlat9.x = min(u_xlat21, u_xlat1.x);
    u_xlat2.x = max(u_xlat1.y, u_xlat2.x);
    u_xlat9.x = min(u_xlat1.y, u_xlat9.x);
    u_xlat16.x = max(u_xlat1.w, u_xlat1.z);
    u_xlat23 = min(u_xlat1.w, u_xlat1.z);
    u_xlat2.x = max(u_xlat2.x, u_xlat16.x);
    u_xlat9.x = min(u_xlat9.x, u_xlat23);
    u_xlat16.x = u_xlat2.x * 0.150000006;
    u_xlat2.x = (-u_xlat9.x) + u_xlat2.x;
    u_xlat9.x = max(u_xlat16.x, 0.0299999993);
    u_xlatb9 = u_xlat2.x>=u_xlat9.x;
    if(u_xlatb9){
        u_xlat9.xy = vs_TEXCOORD0.xy + (-_SourceSize.zw);
        u_xlat9.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat9.xy, 0.0).xyz;
        u_xlat9.x = dot(u_xlat9.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat16.xy = vs_TEXCOORD0.xy + _SourceSize.zw;
        u_xlat3.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat16.xy, 0.0).xyz;
        u_xlat16.x = dot(u_xlat3.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat3 = _SourceSize.zwzw * vec4(1.0, -1.0, -1.0, 1.0) + vs_TEXCOORD0.xyxy;
        u_xlat4.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.xy, 0.0).xyz;
        u_xlat23 = dot(u_xlat4.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat3.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.zw, 0.0).xyz;
        u_xlat3.x = dot(u_xlat3.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat10.xy = u_xlat1.xy + u_xlat1.zw;
        u_xlat2.x = float(1.0) / u_xlat2.x;
        u_xlat24 = u_xlat10.y + u_xlat10.x;
        u_xlat10.x = u_xlat21 * -2.0 + u_xlat10.x;
        u_xlat17 = u_xlat21 * -2.0 + u_xlat10.y;
        u_xlat4.x = u_xlat16.x + u_xlat23;
        u_xlat23 = u_xlat23 + u_xlat9.x;
        u_xlat11.x = u_xlat1.y * -2.0 + u_xlat4.x;
        u_xlat23 = u_xlat1.z * -2.0 + u_xlat23;
        u_xlat9.x = u_xlat9.x + u_xlat3.x;
        u_xlat16.x = u_xlat16.x + u_xlat3.x;
        u_xlat3.x = abs(u_xlat10.x) * 2.0 + abs(u_xlat11.x);
        u_xlat23 = abs(u_xlat17) * 2.0 + abs(u_xlat23);
        u_xlat10.x = u_xlat1.w * -2.0 + u_xlat9.x;
        u_xlat16.x = u_xlat1.x * -2.0 + u_xlat16.x;
        u_xlat3.x = u_xlat3.x + abs(u_xlat10.x);
        u_xlat16.x = u_xlat23 + abs(u_xlat16.x);
        u_xlat9.x = u_xlat4.x + u_xlat9.x;
        u_xlatb16 = u_xlat3.x>=u_xlat16.x;
        u_xlat9.x = u_xlat24 * 2.0 + u_xlat9.x;
        u_xlat1.xz = (bool(u_xlatb16)) ? u_xlat1.xz : u_xlat1.yw;
        u_xlat8.x = (u_xlatb16) ? _SourceSize.w : _SourceSize.z;
        u_xlat22 = u_xlat9.x * 0.0833333358 + (-u_xlat21);
        u_xlat9.xz = (-vec2(u_xlat21)) + u_xlat1.zx;
        u_xlat1.xz = vec2(u_xlat21) + u_xlat1.xz;
        u_xlatb3 = abs(u_xlat9.x)>=abs(u_xlat9.z);
        u_xlat9.x = max(abs(u_xlat9.z), abs(u_xlat9.x));
        u_xlat8.x = (u_xlatb3) ? (-u_xlat8.x) : u_xlat8.x;
        u_xlat22 = u_xlat2.x * abs(u_xlat22);
        u_xlat22 = clamp(u_xlat22, 0.0, 1.0);
        u_xlat2.x = u_xlatb16 ? _SourceSize.z : float(0.0);
        u_xlat2.w = (u_xlatb16) ? 0.0 : _SourceSize.w;
        u_xlat10.xy = u_xlat8.xx * vec2(0.5, 0.5) + vs_TEXCOORD0.xy;
        u_xlat10.x = (u_xlatb16) ? vs_TEXCOORD0.x : u_xlat10.x;
        u_xlat10.y = (u_xlatb16) ? u_xlat10.y : vs_TEXCOORD0.y;
        u_xlat4.xy = (-u_xlat2.xw) + u_xlat10.xy;
        u_xlat5.xy = u_xlat2.xw + u_xlat10.xy;
        u_xlat10.x = u_xlat22 * -2.0 + 3.0;
        u_xlat6.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xy, 0.0).xyz;
        u_xlat17 = dot(u_xlat6.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat22 = u_xlat22 * u_xlat22;
        u_xlat6.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat5.xy, 0.0).xyz;
        u_xlat24 = dot(u_xlat6.xyz, vec3(0.298999995, 0.587000012, 0.114));
        u_xlat1.x = (u_xlatb3) ? u_xlat1.z : u_xlat1.x;
        u_xlat15 = u_xlat9.x * 0.25;
        u_xlat21 = (-u_xlat1.x) * 0.5 + u_xlat21;
        u_xlat22 = u_xlat22 * u_xlat10.x;
        u_xlati21 = int((u_xlat21<0.0) ? 0xFFFFFFFFu : uint(0));
        u_xlat3.x = (-u_xlat1.x) * 0.5 + u_xlat17;
        u_xlat3.y = (-u_xlat1.x) * 0.5 + u_xlat24;
        u_xlati17.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), vec4(u_xlat15)).xy) * 0xFFFFFFFFu);
        u_xlat9.x = (-u_xlat2.x) * 1.5 + u_xlat4.x;
        u_xlat4.x = (u_xlati17.x != 0) ? u_xlat4.x : u_xlat9.x;
        u_xlat9.x = (-u_xlat2.w) * 1.5 + u_xlat4.y;
        u_xlat4.z = (u_xlati17.x != 0) ? u_xlat4.y : u_xlat9.x;
        u_xlati11.xz = ~(u_xlati17.xy);
        u_xlati9 = int(uint(u_xlati11.z) | uint(u_xlati11.x));
        u_xlat11.x = u_xlat2.x * 1.5 + u_xlat5.x;
        u_xlat11.x = (u_xlati17.y != 0) ? u_xlat5.x : u_xlat11.x;
        u_xlat5.x = u_xlat2.w * 1.5 + u_xlat5.y;
        u_xlat11.z = (u_xlati17.y != 0) ? u_xlat5.y : u_xlat5.x;
        if(u_xlati9 != 0) {
            if(u_xlati17.x == 0) {
                u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xz, 0.0).xyz;
                u_xlat3.x = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
            }
            if(u_xlati17.y == 0) {
                u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat11.xz, 0.0).xyz;
                u_xlat3.y = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
            }
            u_xlat9.x = (-u_xlat1.x) * 0.5 + u_xlat3.x;
            u_xlat3.x = (u_xlati17.x != 0) ? u_xlat3.x : u_xlat9.x;
            u_xlat9.x = (-u_xlat1.x) * 0.5 + u_xlat3.y;
            u_xlat3.y = (u_xlati17.y != 0) ? u_xlat3.y : u_xlat9.x;
            u_xlati17.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), vec4(u_xlat15)).xy) * 0xFFFFFFFFu);
            u_xlat9.x = (-u_xlat2.x) * 2.0 + u_xlat4.x;
            u_xlat4.x = (u_xlati17.x != 0) ? u_xlat4.x : u_xlat9.x;
            u_xlat9.x = (-u_xlat2.w) * 2.0 + u_xlat4.z;
            u_xlat4.z = (u_xlati17.x != 0) ? u_xlat4.z : u_xlat9.x;
            u_xlati5.xy = ~(u_xlati17.xy);
            u_xlati9 = int(uint(u_xlati5.y) | uint(u_xlati5.x));
            u_xlat5.x = u_xlat2.x * 2.0 + u_xlat11.x;
            u_xlat11.x = (u_xlati17.y != 0) ? u_xlat11.x : u_xlat5.x;
            u_xlat5.x = u_xlat2.w * 2.0 + u_xlat11.z;
            u_xlat11.z = (u_xlati17.y != 0) ? u_xlat11.z : u_xlat5.x;
            if(u_xlati9 != 0) {
                if(u_xlati17.x == 0) {
                    u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xz, 0.0).xyz;
                    u_xlat3.x = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
                }
                if(u_xlati17.y == 0) {
                    u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat11.xz, 0.0).xyz;
                    u_xlat3.y = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
                }
                u_xlat9.x = (-u_xlat1.x) * 0.5 + u_xlat3.x;
                u_xlat3.x = (u_xlati17.x != 0) ? u_xlat3.x : u_xlat9.x;
                u_xlat9.x = (-u_xlat1.x) * 0.5 + u_xlat3.y;
                u_xlat3.y = (u_xlati17.y != 0) ? u_xlat3.y : u_xlat9.x;
                u_xlati17.xy = ivec2(uvec2(greaterThanEqual(abs(u_xlat3.xyxy), vec4(u_xlat15)).xy) * 0xFFFFFFFFu);
                u_xlat9.x = (-u_xlat2.x) * 4.0 + u_xlat4.x;
                u_xlat4.x = (u_xlati17.x != 0) ? u_xlat4.x : u_xlat9.x;
                u_xlat9.x = (-u_xlat2.w) * 4.0 + u_xlat4.z;
                u_xlat4.z = (u_xlati17.x != 0) ? u_xlat4.z : u_xlat9.x;
                u_xlati5.xy = ~(u_xlati17.xy);
                u_xlati9 = int(uint(u_xlati5.y) | uint(u_xlati5.x));
                u_xlat5.x = u_xlat2.x * 4.0 + u_xlat11.x;
                u_xlat11.x = (u_xlati17.y != 0) ? u_xlat11.x : u_xlat5.x;
                u_xlat5.x = u_xlat2.w * 4.0 + u_xlat11.z;
                u_xlat11.z = (u_xlati17.y != 0) ? u_xlat11.z : u_xlat5.x;
                if(u_xlati9 != 0) {
                    if(u_xlati17.x == 0) {
                        u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xz, 0.0).xyz;
                        u_xlat3.x = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
                    }
                    if(u_xlati17.y == 0) {
                        u_xlat5.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat11.xz, 0.0).xyz;
                        u_xlat3.y = dot(u_xlat5.xyz, vec3(0.298999995, 0.587000012, 0.114));
                    }
                    u_xlat9.x = (-u_xlat1.x) * 0.5 + u_xlat3.x;
                    u_xlat3.x = (u_xlati17.x != 0) ? u_xlat3.x : u_xlat9.x;
                    u_xlat1.x = (-u_xlat1.x) * 0.5 + u_xlat3.y;
                    u_xlat3.y = (u_xlati17.y != 0) ? u_xlat3.y : u_xlat1.x;
                    u_xlatb1.xz = greaterThanEqual(abs(u_xlat3.xxyx), vec4(u_xlat15)).xz;
                    u_xlat9.x = (-u_xlat2.x) * 12.0 + u_xlat4.x;
                    u_xlat4.x = (u_xlatb1.x) ? u_xlat4.x : u_xlat9.x;
                    u_xlat9.x = (-u_xlat2.w) * 12.0 + u_xlat4.z;
                    u_xlat4.z = (u_xlatb1.x) ? u_xlat4.z : u_xlat9.x;
                    u_xlat1.x = u_xlat2.x * 12.0 + u_xlat11.x;
                    u_xlat11.x = (u_xlatb1.z) ? u_xlat11.x : u_xlat1.x;
                    u_xlat1.x = u_xlat2.w * 12.0 + u_xlat11.z;
                    u_xlat11.z = (u_xlatb1.z) ? u_xlat11.z : u_xlat1.x;
                }
            }
        }
        u_xlat1.x = (-u_xlat4.x) + vs_TEXCOORD0.x;
        u_xlat15 = u_xlat11.x + (-vs_TEXCOORD0.x);
        u_xlat2.x = (-u_xlat4.z) + vs_TEXCOORD0.y;
        u_xlat1.x = (u_xlatb16) ? u_xlat1.x : u_xlat2.x;
        u_xlat2.x = u_xlat11.z + (-vs_TEXCOORD0.y);
        u_xlat15 = (u_xlatb16) ? u_xlat15 : u_xlat2.x;
        u_xlati2.xy = ivec2(uvec2(lessThan(u_xlat3.xyxx, vec4(0.0, 0.0, 0.0, 0.0)).xy) * 0xFFFFFFFFu);
        u_xlat23 = u_xlat1.x + u_xlat15;
        u_xlatb2.xy = notEqual(ivec4(u_xlati21), u_xlati2.xyxx).xy;
        u_xlat21 = float(1.0) / u_xlat23;
        u_xlatb23 = u_xlat1.x<u_xlat15;
        u_xlat1.x = min(u_xlat15, u_xlat1.x);
        u_xlatb15 = (u_xlatb23) ? u_xlatb2.x : u_xlatb2.y;
        u_xlat22 = u_xlat22 * u_xlat22;
        u_xlat21 = u_xlat1.x * (-u_xlat21) + 0.5;
        u_xlat1.x = u_xlat22 * 0.649999976;
        u_xlat21 = u_xlatb15 ? u_xlat21 : float(0.0);
        u_xlat21 = max(u_xlat1.x, u_xlat21);
        u_xlat1.xy = vec2(u_xlat21) * u_xlat8.xx + vs_TEXCOORD0.xy;
        u_xlat2.x = (u_xlatb16) ? vs_TEXCOORD0.x : u_xlat1.x;
        u_xlat2.y = (u_xlatb16) ? u_xlat1.y : vs_TEXCOORD0.y;
        u_xlat0.xyz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).xyz;
    }
    u_xlat1.xy = vs_TEXCOORD0.xy * _Grain_TilingParams.xy + _Grain_TilingParams.zw;
    u_xlat21 = texture(sampler2D(_Grain_Texture, sampler_LinearRepeat), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlat21 = u_xlat21 + -0.5;
    u_xlat21 = u_xlat21 + u_xlat21;
    u_xlat1.x = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = _Grain_Params.y * (-u_xlat1.x) + 1.0;
    u_xlat8.xyz = vec3(u_xlat21) * u_xlat0.xyz;
    u_xlat8.xyz = u_xlat8.xyz * _Grain_Params.xxx;
    u_xlat0.xyz = u_xlat8.xyz * u_xlat1.xxx + u_xlat0.xyz;
    u_xlat1.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat2.xyz = log2(abs(u_xlat0.xyz));
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat2.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat2.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat2.z;
    u_xlat1.xy = vs_TEXCOORD0.xy * _Dithering_Params.xy + _Dithering_Params.zw;
    u_xlat21 = texture(sampler2D(_BlueNoise_Texture, sampler_PointRepeat), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlat21 = u_xlat21 * 2.0 + -1.0;
    u_xlatb1.x = u_xlat21>=0.0;
    u_xlat1.x = (u_xlatb1.x) ? 1.0 : -1.0;
    u_xlat21 = -abs(u_xlat21) + 1.0;
    u_xlat21 = sqrt(u_xlat21);
    u_xlat21 = (-u_xlat21) + 1.0;
    u_xlat21 = u_xlat21 * u_xlat1.x;
    u_xlat1.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat2.xyz = log2(abs(u_xlat0.xyz));
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat2.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat2.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat2.z;
    u_xlat0.xyz = vec3(u_xlat21) * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
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

