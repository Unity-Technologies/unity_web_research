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
	vec4 _Lut_Params;
	vec4 _UserLut_Params;
	vec4 _Bloom_Params;
	float _Bloom_RGBM;
	vec4 _Distortion_Params1;
	vec4 _Distortion_Params2;
	vec4 _Vignette_Params1;
	vec4 _Vignette_Params2;
	vec4 _Dithering_Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _Bloom_Texture;
layout(set = 0, binding = 2) uniform mediump texture2D _InternalLut;
layout(set = 0, binding = 3) uniform mediump texture2D _UserLut;
layout(set = 0, binding = 4) uniform mediump texture2D _BlueNoise_Texture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_PointRepeat;
void main()
{
vec3 u_xlat0;
bvec3 u_xlatb0;
vec3 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
vec3 u_xlat3;
bvec3 u_xlatb3;
vec2 u_xlat4;
vec3 u_xlat5;
vec2 u_xlat6;
bool u_xlatb6;
float u_xlat7;
vec2 u_xlat10;
float u_xlat11;
float u_xlat12;
float u_xlat15;
bool u_xlatb15;
float u_xlat16;
bool u_xlatb17;
    u_xlat0.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
    u_xlat10.xy = u_xlat0.xy * _Distortion_Params2.zz + vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * _Distortion_Params2.zz + (-_Distortion_Params1.xy);
    u_xlat0.xy = u_xlat0.xy * _Distortion_Params1.zw;
    u_xlat1.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlatb6 = 0.0<_Distortion_Params2.w;
    if(u_xlatb6){
        u_xlat6.xy = u_xlat1.xx * _Distortion_Params2.xy;
        u_xlat2.x = sin(u_xlat6.x);
        u_xlat3.x = cos(u_xlat6.x);
        u_xlat6.x = u_xlat2.x / u_xlat3.x;
        u_xlat11 = float(1.0) / float(u_xlat6.y);
        u_xlat6.x = u_xlat6.x * u_xlat11 + -1.0;
        u_xlat6.xy = u_xlat0.xy * u_xlat6.xx + u_xlat10.xy;
    } else {
        u_xlat16 = float(1.0) / float(u_xlat1.x);
        u_xlat16 = u_xlat16 * _Distortion_Params2.x;
        u_xlat1.x = u_xlat1.x * _Distortion_Params2.y;
        u_xlat2.x = min(abs(u_xlat1.x), 1.0);
        u_xlat7 = max(abs(u_xlat1.x), 1.0);
        u_xlat7 = float(1.0) / u_xlat7;
        u_xlat2.x = u_xlat7 * u_xlat2.x;
        u_xlat7 = u_xlat2.x * u_xlat2.x;
        u_xlat12 = u_xlat7 * 0.0208350997 + -0.0851330012;
        u_xlat12 = u_xlat7 * u_xlat12 + 0.180141002;
        u_xlat12 = u_xlat7 * u_xlat12 + -0.330299497;
        u_xlat7 = u_xlat7 * u_xlat12 + 0.999866009;
        u_xlat12 = u_xlat7 * u_xlat2.x;
        u_xlatb17 = 1.0<abs(u_xlat1.x);
        u_xlat12 = u_xlat12 * -2.0 + 1.57079637;
        u_xlat12 = u_xlatb17 ? u_xlat12 : float(0.0);
        u_xlat2.x = u_xlat2.x * u_xlat7 + u_xlat12;
        u_xlat1.x = min(u_xlat1.x, 1.0);
        u_xlatb1.x = u_xlat1.x<(-u_xlat1.x);
        u_xlat1.x = (u_xlatb1.x) ? (-u_xlat2.x) : u_xlat2.x;
        u_xlat1.x = u_xlat16 * u_xlat1.x + -1.0;
        u_xlat6.xy = u_xlat0.xy * u_xlat1.xx + u_xlat10.xy;
    }
    u_xlat0.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat6.xy, _GlobalMipBias.x).xyz;
    u_xlat2 = texture(sampler2D(_Bloom_Texture, sampler_LinearClamp), u_xlat6.xy, _GlobalMipBias.x);
    u_xlatb15 = 0.0<_Bloom_RGBM;
    if(u_xlatb15){
        u_xlat3.xyz = u_xlat2.www * u_xlat2.xyz;
        u_xlat2.xyz = u_xlat3.xyz * vec3(8.0, 8.0, 8.0);
    }
    u_xlat2.xyz = u_xlat2.xyz * _Bloom_Params.xxx;
    u_xlat0.xyz = u_xlat2.xyz * _Bloom_Params.yzw + u_xlat0.xyz;
    u_xlatb15 = 0.0<_Vignette_Params2.z;
    if(u_xlatb15){
        u_xlat1.xy = u_xlat6.xy + (-_Vignette_Params2.xy);
        u_xlat1.yz = abs(u_xlat1.xy) * _Vignette_Params2.zz;
        u_xlat1.x = u_xlat1.y * _Vignette_Params1.w;
        u_xlat15 = dot(u_xlat1.xz, u_xlat1.xz);
        u_xlat15 = (-u_xlat15) + 1.0;
        u_xlat15 = max(u_xlat15, 0.0);
        u_xlat15 = log2(u_xlat15);
        u_xlat15 = u_xlat15 * _Vignette_Params2.w;
        u_xlat15 = exp2(u_xlat15);
        u_xlat1.xyz = (-_Vignette_Params1.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat1.xyz = vec3(u_xlat15) * u_xlat1.xyz + _Vignette_Params1.xyz;
        u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    }
    u_xlat0.xyz = u_xlat0.zxy * _Lut_Params.www;
    u_xlat0.xyz = u_xlat0.xyz * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.xyz = log2(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(0.386036009, 0.386036009, 0.386036009);
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat5.xyz = u_xlat0.xyz * _Lut_Params.zzz;
    u_xlat5.x = floor(u_xlat5.x);
    u_xlat1.xy = _Lut_Params.xy * vec2(0.5, 0.5);
    u_xlat1.yz = u_xlat5.yz * _Lut_Params.xy + u_xlat1.xy;
    u_xlat1.x = u_xlat5.x * _Lut_Params.y + u_xlat1.y;
    u_xlat2.xyz = textureLod(sampler2D(_InternalLut, sampler_LinearClamp), u_xlat1.xz, 0.0).xyz;
    u_xlat3.x = _Lut_Params.y;
    u_xlat3.y = 0.0;
    u_xlat10.xy = u_xlat1.xz + u_xlat3.xy;
    u_xlat1.xyz = textureLod(sampler2D(_InternalLut, sampler_LinearClamp), u_xlat10.xy, 0.0).xyz;
    u_xlat0.x = u_xlat0.x * _Lut_Params.z + (-u_xlat5.x);
    u_xlat5.xyz = (-u_xlat2.xyz) + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat5.xyz + u_xlat2.xyz;
    u_xlatb15 = 0.0<_UserLut_Params.w;
    if(u_xlatb15){
        u_xlat0.xyz = u_xlat0.xyz;
        u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
        u_xlat1.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
        u_xlat2.xyz = log2(u_xlat0.xyz);
        u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
        u_xlat2.xyz = exp2(u_xlat2.xyz);
        u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
        u_xlatb3.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
        {
            vec3 hlslcc_movcTemp = u_xlat1;
            hlslcc_movcTemp.x = (u_xlatb3.x) ? u_xlat1.x : u_xlat2.x;
            hlslcc_movcTemp.y = (u_xlatb3.y) ? u_xlat1.y : u_xlat2.y;
            hlslcc_movcTemp.z = (u_xlatb3.z) ? u_xlat1.z : u_xlat2.z;
            u_xlat1 = hlslcc_movcTemp;
        }
        u_xlat2.xyz = u_xlat1.zxy * _UserLut_Params.zzz;
        u_xlat15 = floor(u_xlat2.x);
        u_xlat2.xw = _UserLut_Params.xy * vec2(0.5, 0.5);
        u_xlat2.yz = u_xlat2.yz * _UserLut_Params.xy + u_xlat2.xw;
        u_xlat2.x = u_xlat15 * _UserLut_Params.y + u_xlat2.y;
        u_xlat3.xyz = textureLod(sampler2D(_UserLut, sampler_LinearClamp), u_xlat2.xz, 0.0).xyz;
        u_xlat4.x = _UserLut_Params.y;
        u_xlat4.y = 0.0;
        u_xlat2.xy = u_xlat2.xz + u_xlat4.xy;
        u_xlat2.xyz = textureLod(sampler2D(_UserLut, sampler_LinearClamp), u_xlat2.xy, 0.0).xyz;
        u_xlat15 = u_xlat1.z * _UserLut_Params.z + (-u_xlat15);
        u_xlat2.xyz = (-u_xlat3.xyz) + u_xlat2.xyz;
        u_xlat2.xyz = vec3(u_xlat15) * u_xlat2.xyz + u_xlat3.xyz;
        u_xlat2.xyz = (-u_xlat1.xyz) + u_xlat2.xyz;
        u_xlat1.xyz = _UserLut_Params.www * u_xlat2.xyz + u_xlat1.xyz;
        u_xlat2.xyz = u_xlat1.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
        u_xlat3.xyz = u_xlat1.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
        u_xlat3.xyz = u_xlat3.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
        u_xlat3.xyz = log2(abs(u_xlat3.xyz));
        u_xlat3.xyz = u_xlat3.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
        u_xlat3.xyz = exp2(u_xlat3.xyz);
        u_xlatb1.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat1.xyzx).xyz;
        u_xlat0.x = (u_xlatb1.x) ? u_xlat2.x : u_xlat3.x;
        u_xlat0.y = (u_xlatb1.y) ? u_xlat2.y : u_xlat3.y;
        u_xlat0.z = (u_xlatb1.z) ? u_xlat2.z : u_xlat3.z;
    }
    u_xlat0.xyz = sqrt(u_xlat0.xyz);
    u_xlat1.xy = vs_TEXCOORD0.xy * _Dithering_Params.xy + _Dithering_Params.zw;
    u_xlat15 = texture(sampler2D(_BlueNoise_Texture, sampler_PointRepeat), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlat15 = u_xlat15 * 2.0 + -1.0;
    u_xlatb1.x = u_xlat15>=0.0;
    u_xlat1.x = (u_xlatb1.x) ? 1.0 : -1.0;
    u_xlat15 = -abs(u_xlat15) + 1.0;
    u_xlat15 = sqrt(u_xlat15);
    u_xlat15 = (-u_xlat15) + 1.0;
    u_xlat15 = u_xlat15 * u_xlat1.x;
    u_xlat1.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat2.xyz = log2(u_xlat0.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat2.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat2.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat2.z;
    u_xlat0.xyz = vec3(u_xlat15) * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
    u_xlat1.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlat2.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat2.xyz = log2(abs(u_xlat2.xyz));
    u_xlat2.xyz = u_xlat2.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat2.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat2.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat2.z;
    SV_Target0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    SV_Target0.w = 1.0;
    return;
}

