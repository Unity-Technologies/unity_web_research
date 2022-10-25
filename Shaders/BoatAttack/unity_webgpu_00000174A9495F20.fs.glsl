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
	vec4 _Vignette_Params1;
	vec4 _Vignette_Params2;
	vec4 _Bloom_Texture_TexelSize;
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
vec4 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
bvec3 u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
vec2 u_xlat13;
vec2 u_xlat14;
vec2 u_xlat15;
float u_xlat18;
bool u_xlatb18;
    u_xlat0.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xy = vs_TEXCOORD0.xy * _Bloom_Texture_TexelSize.zw + vec2(0.5, 0.5);
    u_xlat13.xy = floor(u_xlat1.xy);
    u_xlat1.xy = fract(u_xlat1.xy);
    u_xlat2 = (-u_xlat1.xyxy) * vec4(0.5, 0.5, 0.166666672, 0.166666672) + vec4(0.5, 0.5, 0.5, 0.5);
    u_xlat2 = u_xlat1.xyxy * u_xlat2 + vec4(0.5, 0.5, -0.5, -0.5);
    u_xlat3.xy = u_xlat1.xy * vec2(0.5, 0.5) + vec2(-1.0, -1.0);
    u_xlat15.xy = u_xlat1.xy * u_xlat1.xy;
    u_xlat3.xy = u_xlat15.xy * u_xlat3.xy + vec2(0.666666687, 0.666666687);
    u_xlat2 = u_xlat1.xyxy * u_xlat2 + vec4(0.166666672, 0.166666672, 0.166666672, 0.166666672);
    u_xlat1.xy = (-u_xlat3.xy) + vec2(1.0, 1.0);
    u_xlat1.xy = (-u_xlat2.xy) + u_xlat1.xy;
    u_xlat1.xy = (-u_xlat2.zw) + u_xlat1.xy;
    u_xlat14.xy = u_xlat3.xy + u_xlat2.zw;
    u_xlat2.xy = u_xlat1.xy + u_xlat2.xy;
    u_xlat15.xy = vec2(1.0) / vec2(u_xlat14.xy);
    u_xlat3.zw = u_xlat3.xy * u_xlat15.xy + vec2(-1.0, -1.0);
    u_xlat4.xy = vec2(1.0) / vec2(u_xlat2.xy);
    u_xlat3.xy = u_xlat1.xy * u_xlat4.xy + vec2(1.0, 1.0);
    u_xlat4 = u_xlat13.xyxy + u_xlat3.zwxw;
    u_xlat4 = u_xlat4 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat4 = u_xlat4 * _Bloom_Texture_TexelSize.xyxy;
    u_xlat4 = min(u_xlat4, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat5 = textureLod(sampler2D(_Bloom_Texture, sampler_LinearClamp), u_xlat4.xy, 0.0);
    u_xlat4 = textureLod(sampler2D(_Bloom_Texture, sampler_LinearClamp), u_xlat4.zw, 0.0);
    u_xlat4 = u_xlat2.xxxx * u_xlat4;
    u_xlat4 = u_xlat14.xxxx * u_xlat5 + u_xlat4;
    u_xlat1 = u_xlat13.xyxy + u_xlat3.zyxy;
    u_xlat1 = u_xlat1 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat1 = u_xlat1 * _Bloom_Texture_TexelSize.xyxy;
    u_xlat1 = min(u_xlat1, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat3 = textureLod(sampler2D(_Bloom_Texture, sampler_LinearClamp), u_xlat1.xy, 0.0);
    u_xlat1 = textureLod(sampler2D(_Bloom_Texture, sampler_LinearClamp), u_xlat1.zw, 0.0);
    u_xlat1 = u_xlat1 * u_xlat2.xxxx;
    u_xlat1 = u_xlat14.xxxx * u_xlat3 + u_xlat1;
    u_xlat1 = u_xlat1 * u_xlat2.yyyy;
    u_xlat1 = u_xlat14.yyyy * u_xlat4 + u_xlat1;
    u_xlatb18 = 0.0<_Bloom_RGBM;
    if(u_xlatb18){
        u_xlat2.xyz = u_xlat1.www * u_xlat1.xyz;
        u_xlat1.xyz = u_xlat2.xyz * vec3(8.0, 8.0, 8.0);
    }
    u_xlat1.xyz = u_xlat1.xyz * _Bloom_Params.xxx;
    u_xlat0.xyz = u_xlat1.xyz * _Bloom_Params.yzw + u_xlat0.xyz;
    u_xlatb18 = 0.0<_Vignette_Params2.z;
    if(u_xlatb18){
        u_xlat1.xy = vs_TEXCOORD0.xy + (-_Vignette_Params2.xy);
        u_xlat1.yz = abs(u_xlat1.xy) * _Vignette_Params2.zz;
        u_xlat1.x = u_xlat1.y * _Vignette_Params1.w;
        u_xlat18 = dot(u_xlat1.xz, u_xlat1.xz);
        u_xlat18 = (-u_xlat18) + 1.0;
        u_xlat18 = max(u_xlat18, 0.0);
        u_xlat18 = log2(u_xlat18);
        u_xlat18 = u_xlat18 * _Vignette_Params2.w;
        u_xlat18 = exp2(u_xlat18);
        u_xlat1.xyz = (-_Vignette_Params1.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat1.xyz = vec3(u_xlat18) * u_xlat1.xyz + _Vignette_Params1.xyz;
        u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    }
    u_xlat0.xyz = u_xlat0.xyz * _Lut_Params.www;
    u_xlat1.xyz = u_xlat0.xyz * vec3(1.31338608, 1.31338608, 1.31338608);
    u_xlat2.xyz = u_xlat0.xyz * vec3(0.262677222, 0.262677222, 0.262677222) + vec3(0.0695999935, 0.0695999935, 0.0695999935);
    u_xlat2.xyz = u_xlat1.xyz * u_xlat2.xyz + vec3(0.00543999998, 0.00543999998, 0.00543999998);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.262677222, 0.262677222, 0.262677222) + vec3(0.289999992, 0.289999992, 0.289999992);
    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz + vec3(0.0816000104, 0.0816000104, 0.0816000104);
    u_xlat0.xyz = u_xlat2.xyz / u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0666666627, -0.0666666627, -0.0666666627);
    u_xlat0.xyz = u_xlat0.xyz * vec3(1.31338608, 1.31338608, 1.31338608);
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlatb18 = 0.0<_UserLut_Params.w;
    if(u_xlatb18){
        u_xlat1.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
        u_xlat2.xyz = log2(u_xlat0.xyz);
        u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
        u_xlat2.xyz = exp2(u_xlat2.xyz);
        u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
        u_xlatb3.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
        {
            vec4 hlslcc_movcTemp = u_xlat1;
            hlslcc_movcTemp.x = (u_xlatb3.x) ? u_xlat1.x : u_xlat2.x;
            hlslcc_movcTemp.y = (u_xlatb3.y) ? u_xlat1.y : u_xlat2.y;
            hlslcc_movcTemp.z = (u_xlatb3.z) ? u_xlat1.z : u_xlat2.z;
            u_xlat1 = hlslcc_movcTemp;
        }
        u_xlat2.xyz = u_xlat1.zxy * _UserLut_Params.zzz;
        u_xlat18 = floor(u_xlat2.x);
        u_xlat2.xw = _UserLut_Params.xy * vec2(0.5, 0.5);
        u_xlat2.yz = u_xlat2.yz * _UserLut_Params.xy + u_xlat2.xw;
        u_xlat2.x = u_xlat18 * _UserLut_Params.y + u_xlat2.y;
        u_xlat3.xyz = textureLod(sampler2D(_UserLut, sampler_LinearClamp), u_xlat2.xz, 0.0).xyz;
        u_xlat4.x = _UserLut_Params.y;
        u_xlat4.y = 0.0;
        u_xlat2.xy = u_xlat2.xz + u_xlat4.xy;
        u_xlat2.xyz = textureLod(sampler2D(_UserLut, sampler_LinearClamp), u_xlat2.xy, 0.0).xyz;
        u_xlat18 = u_xlat1.z * _UserLut_Params.z + (-u_xlat18);
        u_xlat2.xyz = (-u_xlat3.xyz) + u_xlat2.xyz;
        u_xlat2.xyz = vec3(u_xlat18) * u_xlat2.xyz + u_xlat3.xyz;
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
    u_xlat0.xyw = u_xlat0.xyz * _Lut_Params.zzz;
    u_xlat18 = floor(u_xlat0.w);
    u_xlat1.xy = _Lut_Params.xy * vec2(0.5, 0.5);
    u_xlat1.yz = u_xlat0.xy * _Lut_Params.xy + u_xlat1.xy;
    u_xlat1.x = u_xlat18 * _Lut_Params.y + u_xlat1.y;
    u_xlat2.xyz = textureLod(sampler2D(_InternalLut, sampler_LinearClamp), u_xlat1.xz, 0.0).xyz;
    u_xlat0.x = _Lut_Params.y;
    u_xlat0.y = 0.0;
    u_xlat0.xy = u_xlat0.xy + u_xlat1.xz;
    u_xlat1.xyz = textureLod(sampler2D(_InternalLut, sampler_LinearClamp), u_xlat0.xy, 0.0).xyz;
    u_xlat0.x = u_xlat0.z * _Lut_Params.z + (-u_xlat18);
    u_xlat6.xyz = (-u_xlat2.xyz) + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat6.xyz + u_xlat2.xyz;
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
    u_xlat18 = texture(sampler2D(_BlueNoise_Texture, sampler_PointRepeat), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlat18 = u_xlat18 * 2.0 + -1.0;
    u_xlatb1.x = u_xlat18>=0.0;
    u_xlat1.x = (u_xlatb1.x) ? 1.0 : -1.0;
    u_xlat18 = -abs(u_xlat18) + 1.0;
    u_xlat18 = sqrt(u_xlat18);
    u_xlat18 = (-u_xlat18) + 1.0;
    u_xlat18 = u_xlat18 * u_xlat1.x;
    u_xlat1.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat2.xyz = log2(abs(u_xlat0.xyz));
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat2.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat2.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat2.z;
    u_xlat0.xyz = vec3(u_xlat18) * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
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

