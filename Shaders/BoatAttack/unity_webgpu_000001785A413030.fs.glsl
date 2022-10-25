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
	vec4 _Distortion_Params1;
	vec4 _Distortion_Params2;
	float _Chroma_Params;
	vec4 _Vignette_Params1;
	vec4 _Vignette_Params2;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _InternalLut;
layout(set = 0, binding = 2) uniform mediump texture2D _UserLut;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
bvec3 u_xlatb3;
vec2 u_xlat4;
bool u_xlatb4;
float u_xlat5;
vec3 u_xlat6;
bool u_xlatb7;
float u_xlat8;
float u_xlat9;
bool u_xlatb11;
vec2 u_xlat12;
vec2 u_xlat13;
float u_xlat14;
float u_xlat16;
float u_xlat18;
bool u_xlatb18;
float u_xlat19;
float u_xlat20;
float u_xlat22;
    u_xlat0.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
    u_xlat12.xy = u_xlat0.xy * _Distortion_Params2.zz + vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * _Distortion_Params2.zz + (-_Distortion_Params1.xy);
    u_xlat0.xy = u_xlat0.xy * _Distortion_Params1.zw;
    u_xlat1.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlatb7 = 0.0<_Distortion_Params2.w;
    if(u_xlatb7){
        u_xlat13.xy = u_xlat1.xx * _Distortion_Params2.xy;
        u_xlat2.x = sin(u_xlat13.x);
        u_xlat3.x = cos(u_xlat13.x);
        u_xlat13.x = u_xlat2.x / u_xlat3.x;
        u_xlat19 = float(1.0) / float(u_xlat13.y);
        u_xlat13.x = u_xlat13.x * u_xlat19 + -1.0;
        u_xlat13.xy = u_xlat0.xy * u_xlat13.xx + u_xlat12.xy;
    } else {
        u_xlat2.x = float(1.0) / float(u_xlat1.x);
        u_xlat2.x = u_xlat2.x * _Distortion_Params2.x;
        u_xlat1.x = u_xlat1.x * _Distortion_Params2.y;
        u_xlat8 = min(abs(u_xlat1.x), 1.0);
        u_xlat14 = max(abs(u_xlat1.x), 1.0);
        u_xlat14 = float(1.0) / u_xlat14;
        u_xlat8 = u_xlat14 * u_xlat8;
        u_xlat14 = u_xlat8 * u_xlat8;
        u_xlat20 = u_xlat14 * 0.0208350997 + -0.0851330012;
        u_xlat20 = u_xlat14 * u_xlat20 + 0.180141002;
        u_xlat20 = u_xlat14 * u_xlat20 + -0.330299497;
        u_xlat14 = u_xlat14 * u_xlat20 + 0.999866009;
        u_xlat20 = u_xlat14 * u_xlat8;
        u_xlatb3.x = 1.0<abs(u_xlat1.x);
        u_xlat20 = u_xlat20 * -2.0 + 1.57079637;
        u_xlat20 = u_xlatb3.x ? u_xlat20 : float(0.0);
        u_xlat8 = u_xlat8 * u_xlat14 + u_xlat20;
        u_xlat1.x = min(u_xlat1.x, 1.0);
        u_xlatb1.x = u_xlat1.x<(-u_xlat1.x);
        u_xlat1.x = (u_xlatb1.x) ? (-u_xlat8) : u_xlat8;
        u_xlat1.x = u_xlat2.x * u_xlat1.x + -1.0;
        u_xlat13.xy = u_xlat0.xy * u_xlat1.xx + u_xlat12.xy;
    }
    u_xlat0 = vs_TEXCOORD0.xyxy * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat1.x = dot(u_xlat0.zw, u_xlat0.zw);
    u_xlat0 = u_xlat0 * u_xlat1.xxxx;
    u_xlat0 = u_xlat0 * vec4(_Chroma_Params);
    u_xlat2.x = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat13.xy, _GlobalMipBias.x).x;
    u_xlat0 = u_xlat0 * vec4(-0.333333343, -0.333333343, -0.666666687, -0.666666687) + vs_TEXCOORD0.xyxy;
    u_xlat0 = u_xlat0 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat3 = u_xlat0 * _Distortion_Params2.zzzz + vec4(0.5, 0.5, 0.5, 0.5);
    u_xlat0 = u_xlat0 * _Distortion_Params2.zzzz + (-_Distortion_Params1.xyxy);
    u_xlat0 = u_xlat0 * _Distortion_Params1.zwzw;
    u_xlat1.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat1.x = sqrt(u_xlat1.x);
    if(u_xlatb7){
        u_xlat4.xy = u_xlat1.xx * _Distortion_Params2.xy;
        u_xlat5 = cos(u_xlat4.x);
        u_xlat4.x = sin(u_xlat4.x);
        u_xlat20 = u_xlat4.x / u_xlat5;
        u_xlat4.x = float(1.0) / float(u_xlat4.y);
        u_xlat20 = u_xlat20 * u_xlat4.x + -1.0;
        u_xlat4.xy = u_xlat0.xy * vec2(u_xlat20) + u_xlat3.xy;
    } else {
        u_xlat20 = float(1.0) / float(u_xlat1.x);
        u_xlat20 = u_xlat20 * _Distortion_Params2.x;
        u_xlat1.x = u_xlat1.x * _Distortion_Params2.y;
        u_xlat16 = min(abs(u_xlat1.x), 1.0);
        u_xlat22 = max(abs(u_xlat1.x), 1.0);
        u_xlat22 = float(1.0) / u_xlat22;
        u_xlat16 = u_xlat22 * u_xlat16;
        u_xlat22 = u_xlat16 * u_xlat16;
        u_xlat5 = u_xlat22 * 0.0208350997 + -0.0851330012;
        u_xlat5 = u_xlat22 * u_xlat5 + 0.180141002;
        u_xlat5 = u_xlat22 * u_xlat5 + -0.330299497;
        u_xlat22 = u_xlat22 * u_xlat5 + 0.999866009;
        u_xlat5 = u_xlat22 * u_xlat16;
        u_xlatb11 = 1.0<abs(u_xlat1.x);
        u_xlat5 = u_xlat5 * -2.0 + 1.57079637;
        u_xlat5 = u_xlatb11 ? u_xlat5 : float(0.0);
        u_xlat16 = u_xlat16 * u_xlat22 + u_xlat5;
        u_xlat1.x = min(u_xlat1.x, 1.0);
        u_xlatb1.x = u_xlat1.x<(-u_xlat1.x);
        u_xlat1.x = (u_xlatb1.x) ? (-u_xlat16) : u_xlat16;
        u_xlat1.x = u_xlat20 * u_xlat1.x + -1.0;
        u_xlat4.xy = u_xlat0.xy * u_xlat1.xx + u_xlat3.xy;
    }
    u_xlat2.y = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xy, _GlobalMipBias.x).y;
    u_xlat0.x = dot(u_xlat0.zw, u_xlat0.zw);
    u_xlat0.x = sqrt(u_xlat0.x);
    if(u_xlatb7){
        u_xlat1.xy = u_xlat0.xx * _Distortion_Params2.xy;
        u_xlat3.x = cos(u_xlat1.x);
        u_xlat1.x = sin(u_xlat1.x);
        u_xlat6.x = u_xlat1.x / u_xlat3.x;
        u_xlat1.x = float(1.0) / float(u_xlat1.y);
        u_xlat6.x = u_xlat6.x * u_xlat1.x + -1.0;
        u_xlat1.xy = u_xlat0.zw * u_xlat6.xx + u_xlat3.zw;
    } else {
        u_xlat6.x = float(1.0) / float(u_xlat0.x);
        u_xlat6.x = u_xlat6.x * _Distortion_Params2.x;
        u_xlat0.x = u_xlat0.x * _Distortion_Params2.y;
        u_xlat20 = min(abs(u_xlat0.x), 1.0);
        u_xlat3.x = max(abs(u_xlat0.x), 1.0);
        u_xlat3.x = float(1.0) / u_xlat3.x;
        u_xlat20 = u_xlat20 * u_xlat3.x;
        u_xlat3.x = u_xlat20 * u_xlat20;
        u_xlat9 = u_xlat3.x * 0.0208350997 + -0.0851330012;
        u_xlat9 = u_xlat3.x * u_xlat9 + 0.180141002;
        u_xlat9 = u_xlat3.x * u_xlat9 + -0.330299497;
        u_xlat3.x = u_xlat3.x * u_xlat9 + 0.999866009;
        u_xlat9 = u_xlat20 * u_xlat3.x;
        u_xlatb4 = 1.0<abs(u_xlat0.x);
        u_xlat9 = u_xlat9 * -2.0 + 1.57079637;
        u_xlat9 = u_xlatb4 ? u_xlat9 : float(0.0);
        u_xlat20 = u_xlat20 * u_xlat3.x + u_xlat9;
        u_xlat0.x = min(u_xlat0.x, 1.0);
        u_xlatb0 = u_xlat0.x<(-u_xlat0.x);
        u_xlat0.x = (u_xlatb0) ? (-u_xlat20) : u_xlat20;
        u_xlat0.x = u_xlat6.x * u_xlat0.x + -1.0;
        u_xlat1.xy = u_xlat0.zw * u_xlat0.xx + u_xlat3.zw;
    }
    u_xlat2.z = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, _GlobalMipBias.x).z;
    u_xlatb0 = 0.0<_Vignette_Params2.z;
    if(u_xlatb0){
        u_xlat0.xy = u_xlat13.xy + (-_Vignette_Params2.xy);
        u_xlat0.yz = abs(u_xlat0.xy) * _Vignette_Params2.zz;
        u_xlat0.x = u_xlat0.y * _Vignette_Params1.w;
        u_xlat0.x = dot(u_xlat0.xz, u_xlat0.xz);
        u_xlat0.x = (-u_xlat0.x) + 1.0;
        u_xlat0.x = max(u_xlat0.x, 0.0);
        u_xlat0.x = log2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * _Vignette_Params2.w;
        u_xlat0.x = exp2(u_xlat0.x);
        u_xlat6.xyz = (-_Vignette_Params1.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat0.xyz = u_xlat0.xxx * u_xlat6.xyz + _Vignette_Params1.xyz;
        u_xlat2.xyz = u_xlat0.xyz * u_xlat2.xyz;
    }
    u_xlat0.xyz = u_xlat2.xyz * _Lut_Params.www;
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
            vec3 hlslcc_movcTemp = u_xlat1;
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
    SV_Target0.xyz = u_xlat0.xxx * u_xlat6.xyz + u_xlat2.xyz;
    SV_Target0.w = 1.0;
    return;
}

