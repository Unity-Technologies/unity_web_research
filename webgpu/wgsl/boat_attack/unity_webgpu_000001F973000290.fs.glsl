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
	vec4 _RTHandleScale;
	vec4 _BlitTexture_TexelSize;
	vec4 _BloomTexture_TexelSize;
	vec4 _Lut_Params;
	vec4 _UserLut_Params;
	vec4 _Bloom_Params;
	float _Bloom_RGBM;
	vec4 _LensDirt_Params;
	float _LensDirt_Intensity;
	float _Chroma_Params;
	vec4 _Vignette_Params1;
	vec4 _Vignette_Params2;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _Bloom_Texture;
layout(set = 0, binding = 2) uniform mediump texture2D _LensDirt_Texture;
layout(set = 0, binding = 3) uniform mediump texture2D _InternalLut;
layout(set = 0, binding = 4) uniform mediump texture2D _UserLut;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
vec3 u_xlat3;
bvec3 u_xlatb3;
vec2 u_xlat4;
vec3 u_xlat5;
float u_xlat15;
bool u_xlatb15;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_LinearClamp;
void main()
{
    u_xlat0 = vs_TEXCOORD0.xyxy * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat1.x = dot(u_xlat0.zw, u_xlat0.zw);
    u_xlat0 = u_xlat0 * u_xlat1.xxxx;
    u_xlat0 = u_xlat0 * vec4(_Chroma_Params);
    u_xlat1 = (-_BlitTexture_TexelSize.xyxy) * vec4(0.5, 0.5, 0.5, 0.5) + _RTHandleScale.xyxy;
    u_xlat2.xy = min(u_xlat1.zw, vs_TEXCOORD0.xy);
    u_xlat2.x = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).x;
    u_xlat0 = u_xlat0 * vec4(-0.333333343, -0.333333343, -0.666666687, -0.666666687) + vs_TEXCOORD0.xyxy;
    u_xlat0 = min(u_xlat1, u_xlat0);
    u_xlat2.y = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).y;
    u_xlat2.z = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.zw, _GlobalMipBias.x).z;
    u_xlat0.xy = (-_BloomTexture_TexelSize.xy) * vec2(0.5, 0.5) + _RTHandleScale.xy;
    u_xlat0.xy = min(u_xlat0.xy, vs_TEXCOORD0.xy);
    u_xlat0 = texture(sampler2D(_Bloom_Texture, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x);
    u_xlatb1.x = 0.0<_Bloom_RGBM;
    if(u_xlatb1.x){
        u_xlat1.xyz = u_xlat0.www * u_xlat0.xyz;
        u_xlat0.xyz = u_xlat1.xyz * vec3(8.0, 8.0, 8.0);
    }
    u_xlat0.xyz = u_xlat0.xyz * _Bloom_Params.xxx;
    u_xlat1.xyz = u_xlat0.xyz * _Bloom_Params.yzw + u_xlat2.xyz;
    u_xlat2.xy = vs_TEXCOORD0.xy * _LensDirt_Params.xy + _LensDirt_Params.zw;
    u_xlat2.xyz = texture(sampler2D(_LensDirt_Texture, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = u_xlat2.xyz * vec3(_LensDirt_Intensity);
    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xyz + u_xlat1.xyz;
    u_xlatb15 = 0.0<_Vignette_Params2.z;
    if(u_xlatb15){
        u_xlat1.xy = vs_TEXCOORD0.xy + (-_Vignette_Params2.xy);
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
    u_xlat0.xyz = u_xlat0.xyz * _Lut_Params.www;
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlatb15 = 0.0<_UserLut_Params.w;
    if(u_xlatb15){
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
    u_xlat0.xyw = u_xlat0.xyz * _Lut_Params.zzz;
    u_xlat15 = floor(u_xlat0.w);
    u_xlat1.xy = _Lut_Params.xy * vec2(0.5, 0.5);
    u_xlat1.yz = u_xlat0.xy * _Lut_Params.xy + u_xlat1.xy;
    u_xlat1.x = u_xlat15 * _Lut_Params.y + u_xlat1.y;
    u_xlat2.xyz = textureLod(sampler2D(_InternalLut, sampler_LinearClamp), u_xlat1.xz, 0.0).xyz;
    u_xlat0.x = _Lut_Params.y;
    u_xlat0.y = 0.0;
    u_xlat0.xy = u_xlat0.xy + u_xlat1.xz;
    u_xlat1.xyz = textureLod(sampler2D(_InternalLut, sampler_LinearClamp), u_xlat0.xy, 0.0).xyz;
    u_xlat0.x = u_xlat0.z * _Lut_Params.z + (-u_xlat15);
    u_xlat5.xyz = (-u_xlat2.xyz) + u_xlat1.xyz;
    SV_Target0.xyz = u_xlat0.xxx * u_xlat5.xyz + u_xlat2.xyz;
    SV_Target0.w = 1.0;
    return;
}

