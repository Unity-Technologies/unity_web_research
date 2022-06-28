#version 440

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
layout(set = 0, binding = 0, std140) uniform Params {
	vec4 _Size;
	vec4 _ColorBalance;
	vec4 _ColorFilter;
	vec4 _HueSatCon;
	vec4 _ChannelMixerRed;
	vec4 _ChannelMixerGreen;
	vec4 _ChannelMixerBlue;
	vec4 _Lift;
	vec4 _InvGamma;
	vec4 _Gain;
	vec4 _CustomToneCurve;
	vec4 _ToeSegmentA;
	vec4 _ToeSegmentB;
	vec4 _MidSegmentA;
	vec4 _MidSegmentB;
	vec4 _ShoSegmentA;
	vec4 _ShoSegmentB;
};
layout(set = 0, binding = 1) uniform mediump texture2D _Curves;
writeonly layout(set = 0, binding = 2, rgba32f) highp uniform image3D _Output_origX0X;
vec4 u_xlat0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
vec2 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
bool u_xlatb5;
bool u_xlatb9;
vec2 u_xlat10;
vec2 u_xlat11;
float u_xlat12;
bool u_xlatb12;
float u_xlat13;
layout(local_size_x = 4, local_size_y = 4, local_size_z = 4) in;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_Curves;
void main()
{
    u_xlat0.xyz = vec3(gl_GlobalInvocationID.xyz);
    u_xlatb1.xyz = lessThan(u_xlat0.xyzx, _Size.xxxx).xyz;
    u_xlatb12 = u_xlatb1.y && u_xlatb1.x;
    u_xlatb12 = u_xlatb1.z && u_xlatb12;
    if(u_xlatb12){
        u_xlat0.xyz = u_xlat0.xyz * _Size.yyy + vec3(-0.413588405, -0.413588405, -0.413588405);
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
        u_xlat1.xyz = u_xlat0.xyz * vec3(3.40282347e+38, 3.40282347e+38, 3.40282347e+38) + vec3(0.5, 0.5, 0.5);
        u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
        u_xlat1.xyz = u_xlat1.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
        u_xlat0.xyz = log2(abs(u_xlat0.xyz));
        u_xlat0.xyz = u_xlat0.xyz * _InvGamma.xyz;
        u_xlat0.xyz = exp2(u_xlat0.xyz);
        u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
        u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
        u_xlatb12 = u_xlat0.y>=u_xlat0.z;
        u_xlat12 = u_xlatb12 ? 1.0 : float(0.0);
        u_xlat1.xy = u_xlat0.zy;
        u_xlat1.z = float(-1.0);
        u_xlat1.w = float(0.666666687);
        u_xlat2.xy = u_xlat0.yz + (-u_xlat1.xy);
        u_xlat2.z = float(1.0);
        u_xlat2.w = float(-1.0);
        u_xlat1 = vec4(u_xlat12) * u_xlat2 + u_xlat1;
        u_xlatb12 = u_xlat0.x>=u_xlat1.x;
        u_xlat12 = u_xlatb12 ? 1.0 : float(0.0);
        u_xlat2.xyz = u_xlat1.xyw;
        u_xlat2.w = u_xlat0.x;
        u_xlat1.xyw = u_xlat2.wyx;
        u_xlat1 = (-u_xlat2) + u_xlat1;
        u_xlat1 = vec4(u_xlat12) * u_xlat1 + u_xlat2;
        u_xlat12 = min(u_xlat1.y, u_xlat1.w);
        u_xlat12 = (-u_xlat12) + u_xlat1.x;
        u_xlat5.x = (-u_xlat1.y) + u_xlat1.w;
        u_xlat13 = u_xlat12 * 6.0 + 9.99999975e-05;
        u_xlat5.x = u_xlat5.x / u_xlat13;
        u_xlat5.x = u_xlat5.x + u_xlat1.z;
        u_xlat2.x = abs(u_xlat5.x);
        u_xlat5.x = u_xlat1.x + 9.99999975e-05;
        u_xlat10.x = u_xlat12 / u_xlat5.x;
        u_xlat2.y = float(0.25);
        u_xlat10.y = float(0.25);
        u_xlat12 = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat2.xy, 0.0).y;
        u_xlat12 = u_xlat12;
        u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
        u_xlat12 = u_xlat12 + u_xlat12;
        u_xlat5.x = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat10.xy, 0.0).z;
        u_xlat5.x = u_xlat5.x;
        u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
        u_xlat12 = dot(u_xlat5.xx, vec2(u_xlat12));
        u_xlat3.x = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
        u_xlat3.y = float(0.25);
        u_xlat11.y = float(0.25);
        u_xlat0.x = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat3.xy, 0.0).w;
        u_xlat0.x = u_xlat0.x;
        u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
        u_xlat0.x = u_xlat12 * u_xlat0.x;
        u_xlat11.x = u_xlat2.x + _HueSatCon.x;
        u_xlat4.x = textureLod(sampler2D(_Curves, sampler_Curves), u_xlat11.xy, 0.0).x;
        u_xlat4.x = u_xlat4.x;
        u_xlat4.x = clamp(u_xlat4.x, 0.0, 1.0);
        u_xlat4.x = u_xlat11.x + u_xlat4.x;
        u_xlat4.xyz = u_xlat4.xxx + vec3(-0.5, 0.5, -1.5);
        u_xlatb5 = u_xlat4.x<0.0;
        u_xlatb9 = 1.0<u_xlat4.x;
        u_xlat4.x = (u_xlatb9) ? u_xlat4.z : u_xlat4.x;
        u_xlat4.x = (u_xlatb5) ? u_xlat4.y : u_xlat4.x;
        u_xlat4.xyz = u_xlat4.xxx + vec3(1.0, 0.666666687, 0.333333343);
        u_xlat4.xyz = fract(u_xlat4.xyz);
        u_xlat4.xyz = u_xlat4.xyz * vec3(6.0, 6.0, 6.0) + vec3(-3.0, -3.0, -3.0);
        u_xlat4.xyz = abs(u_xlat4.xyz) + vec3(-1.0, -1.0, -1.0);
        u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
        u_xlat4.xyz = u_xlat4.xyz + vec3(-1.0, -1.0, -1.0);
        u_xlat4.xyz = u_xlat10.xxx * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
        u_xlat5.xyz = u_xlat4.xyz * u_xlat1.xxx;
        u_xlat0.x = dot(_HueSatCon.yy, u_xlat0.xx);
        u_xlat5.x = dot(u_xlat5.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
        u_xlat4.xyz = u_xlat1.xxx * u_xlat4.xyz + (-u_xlat5.xxx);
        u_xlat0.xyz = u_xlat0.xxx * u_xlat4.xyz + u_xlat5.xxx;
        u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
        u_xlat1.xyz = u_xlat0.xyz * vec3(1.31338608, 1.31338608, 1.31338608);
        u_xlat2.xyz = u_xlat0.xyz * vec3(0.262677222, 0.262677222, 0.262677222) + vec3(0.0695999935, 0.0695999935, 0.0695999935);
        u_xlat2.xyz = u_xlat1.xyz * u_xlat2.xyz + vec3(0.00543999998, 0.00543999998, 0.00543999998);
        u_xlat0.xyz = u_xlat0.xyz * vec3(0.262677222, 0.262677222, 0.262677222) + vec3(0.289999992, 0.289999992, 0.289999992);
        u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz + vec3(0.0816000104, 0.0816000104, 0.0816000104);
        u_xlat0.xyz = u_xlat2.xyz / u_xlat0.xyz;
        u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0666666627, -0.0666666627, -0.0666666627);
        u_xlat0.xyz = u_xlat0.xyz * vec3(1.31338608, 1.31338608, 1.31338608);
        u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
        u_xlat0.w = 1.0;
        imageStore(_Output_origX0X, ivec3(gl_GlobalInvocationID.xyz), u_xlat0);
    }
    return;
}

