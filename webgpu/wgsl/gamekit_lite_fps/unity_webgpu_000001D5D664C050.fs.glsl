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
	vec4 _CustomToneCurve;
	vec4 _ToeSegmentA;
	vec4 _ToeSegmentB;
	vec4 _MidSegmentA;
	vec4 _MidSegmentB;
	vec4 _ShoSegmentA;
	vec4 _ShoSegmentB;
};
layout(set = 0, binding = 1) uniform mediump texture2D _Curves;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
bvec4 u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
vec2 u_xlat5;
bool u_xlatb5;
vec3 u_xlat6;
float u_xlat10;
bool u_xlatb10;
bvec2 u_xlatb11;
vec2 u_xlat12;
vec2 u_xlat13;
float u_xlat15;
bool u_xlatb15;
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
    u_xlatb15 = u_xlat0.y>=u_xlat0.z;
    u_xlat15 = u_xlatb15 ? 1.0 : float(0.0);
    u_xlat1.xy = u_xlat0.zy;
    u_xlat2.xy = u_xlat0.yz + (-u_xlat1.xy);
    u_xlat1.z = float(-1.0);
    u_xlat1.w = float(0.666666687);
    u_xlat2.z = float(1.0);
    u_xlat2.w = float(-1.0);
    u_xlat1 = vec4(u_xlat15) * u_xlat2.xywz + u_xlat1.xywz;
    u_xlatb15 = u_xlat0.x>=u_xlat1.x;
    u_xlat15 = u_xlatb15 ? 1.0 : float(0.0);
    u_xlat2.z = u_xlat1.w;
    u_xlat1.w = u_xlat0.x;
    u_xlat3.x = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat2.xyw = u_xlat1.wyx;
    u_xlat2 = (-u_xlat1) + u_xlat2;
    u_xlat0 = vec4(u_xlat15) * u_xlat2 + u_xlat1;
    u_xlat1.x = min(u_xlat0.y, u_xlat0.w);
    u_xlat1.x = u_xlat0.x + (-u_xlat1.x);
    u_xlat6.x = u_xlat1.x * 6.0 + 9.99999975e-05;
    u_xlat5.x = (-u_xlat0.y) + u_xlat0.w;
    u_xlat5.x = u_xlat5.x / u_xlat6.x;
    u_xlat5.x = u_xlat5.x + u_xlat0.z;
    u_xlat2.x = abs(u_xlat5.x);
    u_xlat13.x = u_xlat2.x + _HueSatCon.x;
    u_xlat3.y = float(0.25);
    u_xlat13.y = float(0.25);
    u_xlat5.x = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat13.xy, 0.0).x;
    u_xlat5.y = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat3.xy, 0.0).w;
    u_xlat5.xy = u_xlat5.xy;
    u_xlat5.xy = clamp(u_xlat5.xy, 0.0, 1.0);
    u_xlat5.x = u_xlat13.x + u_xlat5.x;
    u_xlat6.xyz = u_xlat5.xxx + vec3(-0.5, 0.5, -1.5);
    u_xlatb5 = 1.0<u_xlat6.x;
    u_xlat5.x = (u_xlatb5) ? u_xlat6.z : u_xlat6.x;
    u_xlatb15 = u_xlat6.x<0.0;
    u_xlat5.x = (u_xlatb15) ? u_xlat6.y : u_xlat5.x;
    u_xlat6.xyz = u_xlat5.xxx + vec3(1.0, 0.666666687, 0.333333343);
    u_xlat6.xyz = fract(u_xlat6.xyz);
    u_xlat6.xyz = u_xlat6.xyz * vec3(6.0, 6.0, 6.0) + vec3(-3.0, -3.0, -3.0);
    u_xlat6.xyz = abs(u_xlat6.xyz) + vec3(-1.0, -1.0, -1.0);
    u_xlat6.xyz = clamp(u_xlat6.xyz, 0.0, 1.0);
    u_xlat6.xyz = u_xlat6.xyz + vec3(-1.0, -1.0, -1.0);
    u_xlat5.x = u_xlat0.x + 9.99999975e-05;
    u_xlat12.x = u_xlat1.x / u_xlat5.x;
    u_xlat1.xyz = u_xlat12.xxx * u_xlat6.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat3.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat5.x = dot(u_xlat3.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + (-u_xlat5.xxx);
    u_xlat2.y = float(0.25);
    u_xlat12.y = float(0.25);
    u_xlat0.x = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat2.xy, 0.0).y;
    u_xlat0.w = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat12.xy, 0.0).z;
    u_xlat0.xw = u_xlat0.xw;
    u_xlat0.xw = clamp(u_xlat0.xw, 0.0, 1.0);
    u_xlat0.x = u_xlat0.x + u_xlat0.x;
    u_xlat0.x = dot(u_xlat0.ww, u_xlat0.xx);
    u_xlat0.x = u_xlat0.x * u_xlat5.y;
    u_xlat0.x = dot(_HueSatCon.yy, u_xlat0.xx);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz + u_xlat5.xxx;
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = u_xlat0.xyz * _CustomToneCurve.xxx;
    u_xlatb11.xy = lessThan(u_xlat1.zzzz, _CustomToneCurve.yzyz).xy;
    u_xlatb2 = lessThan(u_xlat1.xxyy, _CustomToneCurve.yzyz);
    u_xlat3 = (u_xlatb11.y) ? _MidSegmentA : _ShoSegmentA;
    u_xlat3 = (u_xlatb11.x) ? _ToeSegmentA : u_xlat3;
    u_xlat10 = u_xlat0.z * _CustomToneCurve.x + (-u_xlat3.x);
    u_xlat10 = u_xlat3.z * u_xlat10;
    u_xlat15 = log2(u_xlat10);
    u_xlatb10 = 0.0<u_xlat10;
    u_xlat1.xy = (u_xlatb11.y) ? _MidSegmentB.xy : _ShoSegmentB.xy;
    u_xlat1.xy = (u_xlatb11.x) ? _ToeSegmentB.xy : u_xlat1.xy;
    u_xlat15 = u_xlat15 * u_xlat1.y;
    u_xlat15 = u_xlat15 * 0.693147182 + u_xlat1.x;
    u_xlat15 = u_xlat15 * 1.44269502;
    u_xlat15 = exp2(u_xlat15);
    u_xlat10 = u_xlatb10 ? u_xlat15 : float(0.0);
    u_xlat1.z = u_xlat10 * u_xlat3.w + u_xlat3.y;
    u_xlat3 = (u_xlatb2.y) ? _MidSegmentA : _ShoSegmentA;
    u_xlat3 = (u_xlatb2.x) ? _ToeSegmentA : u_xlat3;
    u_xlat0.x = u_xlat0.x * _CustomToneCurve.x + (-u_xlat3.x);
    u_xlat0.x = u_xlat3.z * u_xlat0.x;
    u_xlat10 = log2(u_xlat0.x);
    u_xlatb0 = 0.0<u_xlat0.x;
    u_xlat4.x = (u_xlatb2.y) ? _MidSegmentB.x : _ShoSegmentB.x;
    u_xlat4.y = (u_xlatb2.y) ? _MidSegmentB.y : _ShoSegmentB.y;
    u_xlat4.z = (u_xlatb2.w) ? _MidSegmentB.x : _ShoSegmentB.x;
    u_xlat4.w = (u_xlatb2.w) ? _MidSegmentB.y : _ShoSegmentB.y;
    {
        vec4 hlslcc_movcTemp = u_xlat4;
        hlslcc_movcTemp.x = (u_xlatb2.x) ? _ToeSegmentB.x : u_xlat4.x;
        hlslcc_movcTemp.y = (u_xlatb2.x) ? _ToeSegmentB.y : u_xlat4.y;
        hlslcc_movcTemp.z = (u_xlatb2.z) ? _ToeSegmentB.x : u_xlat4.z;
        hlslcc_movcTemp.w = (u_xlatb2.z) ? _ToeSegmentB.y : u_xlat4.w;
        u_xlat4 = hlslcc_movcTemp;
    }
    u_xlat10 = u_xlat10 * u_xlat4.y;
    u_xlat10 = u_xlat10 * 0.693147182 + u_xlat4.x;
    u_xlat10 = u_xlat10 * 1.44269502;
    u_xlat10 = exp2(u_xlat10);
    u_xlat0.x = u_xlatb0 ? u_xlat10 : float(0.0);
    u_xlat1.x = u_xlat0.x * u_xlat3.w + u_xlat3.y;
    u_xlat3 = (u_xlatb2.w) ? _MidSegmentA : _ShoSegmentA;
    u_xlat2 = (u_xlatb2.z) ? _ToeSegmentA : u_xlat3;
    u_xlat0.x = u_xlat0.y * _CustomToneCurve.x + (-u_xlat2.x);
    u_xlat0.x = u_xlat2.z * u_xlat0.x;
    u_xlat5.x = log2(u_xlat0.x);
    u_xlatb0 = 0.0<u_xlat0.x;
    u_xlat5.x = u_xlat5.x * u_xlat4.w;
    u_xlat5.x = u_xlat5.x * 0.693147182 + u_xlat4.z;
    u_xlat5.x = u_xlat5.x * 1.44269502;
    u_xlat5.x = exp2(u_xlat5.x);
    u_xlat0.x = u_xlatb0 ? u_xlat5.x : float(0.0);
    u_xlat1.y = u_xlat0.x * u_xlat2.w + u_xlat2.y;
    SV_Target0.xyz = max(u_xlat1.xyz, vec3(0.0, 0.0, 0.0));
    SV_Target0.w = 1.0;
    return;
}

