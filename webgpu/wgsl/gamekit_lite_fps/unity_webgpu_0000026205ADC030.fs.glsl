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
	vec4 _Lut2D_Params;
	vec3 _ColorBalance;
	vec3 _ColorFilter;
	vec3 _HueSatCon;
	vec3 _ChannelMixerRed;
	vec3 _ChannelMixerGreen;
	vec3 _ChannelMixerBlue;
	vec3 _Lift;
	vec3 _InvGamma;
	vec3 _Gain;
};
layout(set = 0, binding = 1) uniform mediump texture2D _Curves;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec2 u_xlat4;
bool u_xlatb4;
vec3 u_xlat5;
vec2 u_xlat10;
vec2 u_xlat11;
float u_xlat12;
bool u_xlatb12;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_Curves;
void main()
{
    u_xlat0.yz = vs_TEXCOORD0.xy + (-_Lut2D_Params.yz);
    u_xlat1.x = u_xlat0.y * _Lut2D_Params.x;
    u_xlat0.x = fract(u_xlat1.x);
    u_xlat1.x = u_xlat0.x / _Lut2D_Params.x;
    u_xlat0.w = u_xlat0.y + (-u_xlat1.x);
    u_xlat0.xyz = u_xlat0.xzw * _Lut2D_Params.www + vec3(-0.413588405, -0.413588405, -0.413588405);
    u_xlat0.xyz = u_xlat0.xyz * _HueSatCon.zzz + vec3(0.0275523961, 0.0275523961, 0.0275523961);
    u_xlat0.xyz = u_xlat0.xyz * vec3(13.6054821, 13.6054821, 13.6054821);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0479959995, -0.0479959995, -0.0479959995);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.179999992, 0.179999992, 0.179999992);
    u_xlat1.x = dot(vec3(0.390404999, 0.549941003, 0.00892631989), u_xlat0.xyz);
    u_xlat1.y = dot(vec3(0.070841603, 0.963172019, 0.00135775004), u_xlat0.xyz);
    u_xlat1.z = dot(vec3(0.0231081992, 0.128021002, 0.936245024), u_xlat0.xyz);
    u_xlat0.xyz = u_xlat1.xyz * _ColorBalance.xyz;
    u_xlat1.x = dot(vec3(2.85846996, -1.62879002, -0.0248910002), u_xlat0.xyz);
    u_xlat1.y = dot(vec3(-0.210181996, 1.15820003, 0.000324280991), u_xlat0.xyz);
    u_xlat1.z = dot(vec3(-0.0418119989, -0.118169002, 1.06867003), u_xlat0.xyz);
    u_xlat0.xyz = u_xlat1.xyz * _ColorFilter.xyz;
    u_xlat1.x = dot(u_xlat0.xyz, _ChannelMixerRed.xyz);
    u_xlat1.y = dot(u_xlat0.xyz, _ChannelMixerGreen.xyz);
    u_xlat1.z = dot(u_xlat0.xyz, _ChannelMixerBlue.xyz);
    u_xlat0.xyz = u_xlat1.xyz * _Gain.xyz + _Lift.xyz;
    u_xlat1.xyz = log2(abs(u_xlat0.xyz));
    u_xlat0.xyz = u_xlat0.xyz * vec3(3.40282347e+38, 3.40282347e+38, 3.40282347e+38) + vec3(0.5, 0.5, 0.5);
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat1.xyz = u_xlat1.xyz * _InvGamma.xyz;
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlatb12 = u_xlat0.y>=u_xlat0.z;
    u_xlat12 = u_xlatb12 ? 1.0 : float(0.0);
    u_xlat1.xy = u_xlat0.zy;
    u_xlat2.xy = u_xlat0.yz + (-u_xlat1.xy);
    u_xlat1.z = float(-1.0);
    u_xlat1.w = float(0.666666687);
    u_xlat2.z = float(1.0);
    u_xlat2.w = float(-1.0);
    u_xlat1 = vec4(u_xlat12) * u_xlat2.xywz + u_xlat1.xywz;
    u_xlatb12 = u_xlat0.x>=u_xlat1.x;
    u_xlat12 = u_xlatb12 ? 1.0 : float(0.0);
    u_xlat2.z = u_xlat1.w;
    u_xlat1.w = u_xlat0.x;
    u_xlat3.x = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat2.xyw = u_xlat1.wyx;
    u_xlat2 = (-u_xlat1) + u_xlat2;
    u_xlat0 = vec4(u_xlat12) * u_xlat2 + u_xlat1;
    u_xlat1.x = min(u_xlat0.y, u_xlat0.w);
    u_xlat1.x = u_xlat0.x + (-u_xlat1.x);
    u_xlat5.x = u_xlat1.x * 6.0 + 9.99999975e-05;
    u_xlat4.x = (-u_xlat0.y) + u_xlat0.w;
    u_xlat4.x = u_xlat4.x / u_xlat5.x;
    u_xlat4.x = u_xlat4.x + u_xlat0.z;
    u_xlat2.x = abs(u_xlat4.x);
    u_xlat11.x = u_xlat2.x + _HueSatCon.x;
    u_xlat3.y = float(0.25);
    u_xlat11.y = float(0.25);
    u_xlat4.x = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat11.xy, 0.0).x;
    u_xlat4.y = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat3.xy, 0.0).w;
    u_xlat4.xy = u_xlat4.xy;
    u_xlat4.xy = clamp(u_xlat4.xy, 0.0, 1.0);
    u_xlat4.x = u_xlat11.x + u_xlat4.x;
    u_xlat5.xyz = u_xlat4.xxx + vec3(-0.5, 0.5, -1.5);
    u_xlatb4 = 1.0<u_xlat5.x;
    u_xlat4.x = (u_xlatb4) ? u_xlat5.z : u_xlat5.x;
    u_xlatb12 = u_xlat5.x<0.0;
    u_xlat4.x = (u_xlatb12) ? u_xlat5.y : u_xlat4.x;
    u_xlat5.xyz = u_xlat4.xxx + vec3(1.0, 0.666666687, 0.333333343);
    u_xlat5.xyz = fract(u_xlat5.xyz);
    u_xlat5.xyz = u_xlat5.xyz * vec3(6.0, 6.0, 6.0) + vec3(-3.0, -3.0, -3.0);
    u_xlat5.xyz = abs(u_xlat5.xyz) + vec3(-1.0, -1.0, -1.0);
    u_xlat5.xyz = clamp(u_xlat5.xyz, 0.0, 1.0);
    u_xlat5.xyz = u_xlat5.xyz + vec3(-1.0, -1.0, -1.0);
    u_xlat4.x = u_xlat0.x + 9.99999975e-05;
    u_xlat10.x = u_xlat1.x / u_xlat4.x;
    u_xlat1.xyz = u_xlat10.xxx * u_xlat5.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat3.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat4.x = dot(u_xlat3.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + (-u_xlat4.xxx);
    u_xlat2.y = float(0.25);
    u_xlat10.y = float(0.25);
    u_xlat0.x = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat2.xy, 0.0).y;
    u_xlat0.w = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat10.xy, 0.0).z;
    u_xlat0.xw = u_xlat0.xw;
    u_xlat0.xw = clamp(u_xlat0.xw, 0.0, 1.0);
    u_xlat0.x = u_xlat0.x + u_xlat0.x;
    u_xlat0.x = dot(u_xlat0.ww, u_xlat0.xx);
    u_xlat0.x = u_xlat0.x * u_xlat4.y;
    u_xlat0.x = dot(_HueSatCon.yy, u_xlat0.xx);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz + u_xlat4.xxx;
    SV_Target0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    SV_Target0.w = 1.0;
    return;
}

