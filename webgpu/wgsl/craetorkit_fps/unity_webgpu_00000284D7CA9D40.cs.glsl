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
layout(set = 1, binding = 0, std140) uniform Params {
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
layout(set = 0, binding = 0) uniform mediump texture2D _Curves;
writeonly layout(set = 0, binding = 1, rgba32f) highp uniform image3D _Output_origX0X;
layout(local_size_x = 4, local_size_y = 4, local_size_z = 4) in;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_Curves;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
vec2 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
bool u_xlatb7;
float u_xlat8;
bvec2 u_xlatb8;
float u_xlat9;
vec2 u_xlat10;
vec2 u_xlat11;
float u_xlat12;
bool u_xlatb12;
float u_xlat13;
bool u_xlatb13;
    u_xlat0.xyz = vec3(gl_GlobalInvocationID.xyz);
    u_xlatb1.xyz = lessThan(u_xlat0.xyzx, _Size.xxxx).xyz;
    u_xlatb12 = u_xlatb1.y && u_xlatb1.x;
    u_xlatb12 = u_xlatb1.z && u_xlatb12;
    if(u_xlatb12){
        u_xlat0.xyz = u_xlat0.xyz * _Size.yyy + vec3(-0.386036009, -0.386036009, -0.386036009);
        u_xlat0.xyz = u_xlat0.xyz * vec3(13.6054821, 13.6054821, 13.6054821);
        u_xlat0.xyz = exp2(u_xlat0.xyz);
        u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0479959995, -0.0479959995, -0.0479959995);
        u_xlat0.xyz = u_xlat0.xyz * vec3(0.179999992, 0.179999992, 0.179999992);
        u_xlat1.x = dot(vec3(0.439700991, 0.382977992, 0.177334994), u_xlat0.xyz);
        u_xlat1.y = dot(vec3(0.0897922963, 0.813422978, 0.0967615992), u_xlat0.xyz);
        u_xlat1.z = dot(vec3(0.0175439995, 0.111543998, 0.870703995), u_xlat0.xyz);
        u_xlat0.xyz = max(u_xlat1.xyz, vec3(0.0, 0.0, 0.0));
        u_xlat0.xyz = min(u_xlat0.xyz, vec3(65504.0, 65504.0, 65504.0));
        u_xlatb1.xyz = lessThan(u_xlat0.xyzx, vec4(3.05175708e-05, 3.05175708e-05, 3.05175708e-05, 0.0)).xyz;
        u_xlat2.xyz = u_xlat0.xyz * vec3(0.5, 0.5, 0.5) + vec3(1.525878e-05, 1.525878e-05, 1.525878e-05);
        u_xlat2.xyz = log2(u_xlat2.xyz);
        u_xlat2.xyz = u_xlat2.xyz + vec3(9.72000027, 9.72000027, 9.72000027);
        u_xlat2.xyz = u_xlat2.xyz * vec3(0.0570776239, 0.0570776239, 0.0570776239);
        u_xlat0.xyz = log2(u_xlat0.xyz);
        u_xlat0.xyz = u_xlat0.xyz + vec3(9.72000027, 9.72000027, 9.72000027);
        u_xlat0.xyz = u_xlat0.xyz * vec3(0.0570776239, 0.0570776239, 0.0570776239);
        {
            vec4 hlslcc_movcTemp = u_xlat0;
            hlslcc_movcTemp.x = (u_xlatb1.x) ? u_xlat2.x : u_xlat0.x;
            hlslcc_movcTemp.y = (u_xlatb1.y) ? u_xlat2.y : u_xlat0.y;
            hlslcc_movcTemp.z = (u_xlatb1.z) ? u_xlat2.z : u_xlat0.z;
            u_xlat0 = hlslcc_movcTemp;
        }
        u_xlat0.xyz = u_xlat0.xyz + vec3(-0.413588405, -0.413588405, -0.413588405);
        u_xlat0.xyz = u_xlat0.xyz * _HueSatCon.zzz + vec3(0.413588405, 0.413588405, 0.413588405);
        u_xlatb1.xyz = lessThan(u_xlat0.xyzx, vec4(-0.301369876, -0.301369876, -0.301369876, 0.0)).xyz;
        if(u_xlatb1.x){
            u_xlat12 = u_xlat0.x * 17.5200005 + -9.72000027;
            u_xlat12 = exp2(u_xlat12);
            u_xlat12 = u_xlat12 + -1.52587891e-05;
            u_xlat2.x = u_xlat12 + u_xlat12;
        } else {
            u_xlatb12 = u_xlat0.x<1.46799636;
            if(u_xlatb12){
                u_xlat0.x = u_xlat0.x * 17.5200005 + -9.72000027;
                u_xlat2.x = exp2(u_xlat0.x);
            } else {
                u_xlat2.x = 65504.0;
            }
        }
        if(u_xlatb1.y){
            u_xlat0.x = u_xlat0.y * 17.5200005 + -9.72000027;
            u_xlat0.x = exp2(u_xlat0.x);
            u_xlat0.x = u_xlat0.x + -1.52587891e-05;
            u_xlat2.y = u_xlat0.x + u_xlat0.x;
        } else {
            u_xlatb0 = u_xlat0.y<1.46799636;
            if(u_xlatb0){
                u_xlat0.x = u_xlat0.y * 17.5200005 + -9.72000027;
                u_xlat2.y = exp2(u_xlat0.x);
            } else {
                u_xlat2.y = 65504.0;
            }
        }
        if(u_xlatb1.z){
            u_xlat0.x = u_xlat0.z * 17.5200005 + -9.72000027;
            u_xlat0.x = exp2(u_xlat0.x);
            u_xlat0.x = u_xlat0.x + -1.52587891e-05;
            u_xlat2.z = u_xlat0.x + u_xlat0.x;
        } else {
            u_xlatb0 = u_xlat0.z<1.46799636;
            if(u_xlatb0){
                u_xlat0.x = u_xlat0.z * 17.5200005 + -9.72000027;
                u_xlat2.z = exp2(u_xlat0.x);
            } else {
                u_xlat2.z = 65504.0;
            }
        }
        u_xlat0.x = dot(vec3(1.45143926, -0.236510754, -0.214928567), u_xlat2.xyz);
        u_xlat0.y = dot(vec3(-0.0765537769, 1.17622972, -0.0996759236), u_xlat2.xyz);
        u_xlat0.z = dot(vec3(0.00831614807, -0.00603244966, 0.997716308), u_xlat2.xyz);
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
        u_xlat4.x = u_xlat4.x + -0.5;
        u_xlat4.x = u_xlat4.x + u_xlat11.x;
        u_xlatb8.x = u_xlat4.x<0.0;
        u_xlatb12 = 1.0<u_xlat4.x;
        u_xlat5.xy = u_xlat4.xx + vec2(1.0, -1.0);
        u_xlat4.x = (u_xlatb12) ? u_xlat5.y : u_xlat4.x;
        u_xlat4.x = (u_xlatb8.x) ? u_xlat5.x : u_xlat4.x;
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
        u_xlat5.x = dot(vec3(0.695452213, 0.140678704, 0.163869068), u_xlat0.xyz);
        u_xlat5.y = dot(vec3(0.0447945632, 0.859671116, 0.0955343172), u_xlat0.xyz);
        u_xlat5.z = dot(vec3(-0.00552588282, 0.00402521016, 1.00150073), u_xlat0.xyz);
        u_xlat0.x = min(u_xlat5.y, u_xlat5.x);
        u_xlat0.x = min(u_xlat5.z, u_xlat0.x);
        u_xlat4.x = max(u_xlat5.y, u_xlat5.x);
        u_xlat0.y = max(u_xlat5.z, u_xlat4.x);
        u_xlat0.xyz = max(u_xlat0.xyy, vec3(9.99999975e-05, 9.99999975e-05, 0.00999999978));
        u_xlat0.x = (-u_xlat0.x) + u_xlat0.y;
        u_xlat0.x = u_xlat0.x / u_xlat0.z;
        u_xlat4.xyz = (-u_xlat5.yxz) + u_xlat5.zyx;
        u_xlat4.xy = u_xlat4.xy * u_xlat5.zy;
        u_xlat4.x = u_xlat4.y + u_xlat4.x;
        u_xlat4.x = u_xlat5.x * u_xlat4.z + u_xlat4.x;
        u_xlat4.x = sqrt(u_xlat4.x);
        u_xlat8 = u_xlat5.y + u_xlat5.z;
        u_xlat8 = u_xlat5.x + u_xlat8;
        u_xlat4.x = u_xlat4.x * 1.75 + u_xlat8;
        u_xlat8 = u_xlat0.x + -0.400000006;
        u_xlat12 = u_xlat8 * 2.5;
        u_xlat12 = -abs(u_xlat12) + 1.0;
        u_xlat12 = max(u_xlat12, 0.0);
        u_xlat8 = u_xlat8 * intBitsToFloat(int(0x7F800000u)) + 0.5;
        u_xlat8 = clamp(u_xlat8, 0.0, 1.0);
        u_xlat8 = u_xlat8 * 2.0 + -1.0;
        u_xlat12 = (-u_xlat12) * u_xlat12 + 1.0;
        u_xlat8 = u_xlat8 * u_xlat12 + 1.0;
        u_xlat8 = u_xlat8 * 0.0250000004;
        u_xlatb12 = 0.159999996>=u_xlat4.x;
        if(!u_xlatb12){
            u_xlatb12 = u_xlat4.x>=0.479999989;
            if(u_xlatb12){
                u_xlat8 = 0.0;
            } else {
                u_xlat4.x = u_xlat4.x * 0.333333343;
                u_xlat4.x = 0.0799999982 / u_xlat4.x;
                u_xlat4.x = u_xlat4.x + -0.5;
                u_xlat8 = u_xlat4.x * u_xlat8;
            }
        }
        u_xlat4.x = u_xlat8 + 1.0;
        u_xlat2.yzw = u_xlat4.xxx * u_xlat5.xyz;
        u_xlatb8.xy = equal(u_xlat2.zwzw, u_xlat2.yzyz).xy;
        u_xlatb8.x = u_xlatb8.y && u_xlatb8.x;
        if(u_xlatb8.x){
            u_xlat8 = 0.0;
        } else {
            u_xlat12 = u_xlat5.y * u_xlat4.x + (-u_xlat2.w);
            u_xlat12 = u_xlat12 * 1.73205078;
            u_xlat1.x = u_xlat2.y * 2.0 + (-u_xlat2.z);
            u_xlat1.x = (-u_xlat5.z) * u_xlat4.x + u_xlat1.x;
            u_xlat9 = min(abs(u_xlat12), abs(u_xlat1.x));
            u_xlat13 = max(abs(u_xlat12), abs(u_xlat1.x));
            u_xlat13 = float(1.0) / u_xlat13;
            u_xlat9 = u_xlat13 * u_xlat9;
            u_xlat13 = u_xlat9 * u_xlat9;
            u_xlat3.x = u_xlat13 * 0.0208350997 + -0.0851330012;
            u_xlat3.x = u_xlat13 * u_xlat3.x + 0.180141002;
            u_xlat3.x = u_xlat13 * u_xlat3.x + -0.330299497;
            u_xlat13 = u_xlat13 * u_xlat3.x + 0.999866009;
            u_xlat3.x = u_xlat13 * u_xlat9;
            u_xlatb7 = abs(u_xlat1.x)<abs(u_xlat12);
            u_xlat3.x = u_xlat3.x * -2.0 + 1.57079637;
            u_xlat3.x = u_xlatb7 ? u_xlat3.x : float(0.0);
            u_xlat9 = u_xlat9 * u_xlat13 + u_xlat3.x;
            u_xlatb13 = u_xlat1.x<(-u_xlat1.x);
            u_xlat13 = u_xlatb13 ? -3.14159274 : float(0.0);
            u_xlat9 = u_xlat13 + u_xlat9;
            u_xlat13 = min(u_xlat12, u_xlat1.x);
            u_xlat12 = max(u_xlat12, u_xlat1.x);
            u_xlatb1.x = u_xlat13<(-u_xlat13);
            u_xlatb12 = u_xlat12>=(-u_xlat12);
            u_xlatb12 = u_xlatb12 && u_xlatb1.x;
            u_xlat12 = (u_xlatb12) ? (-u_xlat9) : u_xlat9;
            u_xlat8 = u_xlat12 * 57.2957802;
        }
        u_xlatb12 = u_xlat8<0.0;
        if(u_xlatb12){
            u_xlat8 = u_xlat8 + 360.0;
        }
        u_xlatb12 = u_xlat8<-180.0;
        if(u_xlatb12){
            u_xlat8 = u_xlat8 + 360.0;
        } else {
            u_xlatb12 = 180.0<u_xlat8;
            if(u_xlatb12){
                u_xlat8 = u_xlat8 + -360.0;
            }
        }
        u_xlat8 = u_xlat8 * 0.0148148146;
        u_xlat8 = -abs(u_xlat8) + 1.0;
        u_xlat8 = max(u_xlat8, 0.0);
        u_xlat12 = u_xlat8 * -2.0 + 3.0;
        u_xlat8 = u_xlat8 * u_xlat8;
        u_xlat8 = u_xlat8 * u_xlat12;
        u_xlat8 = u_xlat8 * u_xlat8;
        u_xlat0.x = u_xlat0.x * u_xlat8;
        u_xlat4.x = (-u_xlat5.x) * u_xlat4.x + 0.0299999993;
        u_xlat0.x = u_xlat4.x * u_xlat0.x;
        u_xlat2.x = u_xlat0.x * 0.180000007 + u_xlat2.y;
        u_xlat0.x = dot(vec3(1.45143926, -0.236510754, -0.214928567), u_xlat2.xzw);
        u_xlat0.y = dot(vec3(-0.0765537769, 1.17622972, -0.0996759236), u_xlat2.xzw);
        u_xlat0.z = dot(vec3(0.00831614807, -0.00603244966, 0.997716308), u_xlat2.xzw);
        u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
        u_xlat12 = dot(u_xlat0.xyz, vec3(0.272228986, 0.674081981, 0.0536894985));
        u_xlat0.xyz = (-vec3(u_xlat12)) + u_xlat0.xyz;
        u_xlat0.xyz = u_xlat0.xyz * vec3(0.959999979, 0.959999979, 0.959999979) + vec3(u_xlat12);
        u_xlat1.xyz = u_xlat0.xyz * vec3(278.508514, 278.508514, 278.508514) + vec3(10.7771997, 10.7771997, 10.7771997);
        u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz;
        u_xlat2.xyz = u_xlat0.xyz * vec3(293.604492, 293.604492, 293.604492) + vec3(88.7121964, 88.7121964, 88.7121964);
        u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz + vec3(80.6889038, 80.6889038, 80.6889038);
        u_xlat0.xyz = u_xlat1.xyz / u_xlat0.xyz;
        u_xlat1.x = dot(vec3(0.662454188, 0.134004205, 0.156187683), u_xlat0.xyz);
        u_xlat1.y = dot(vec3(0.272228718, 0.674081743, 0.0536895171), u_xlat0.xyz);
        u_xlat1.z = dot(vec3(-0.00557464967, 0.0040607336, 1.01033914), u_xlat0.xyz);
        u_xlat0.x = dot(u_xlat1.xyz, vec3(1.0, 1.0, 1.0));
        u_xlat0.x = max(u_xlat0.x, 9.99999975e-05);
        u_xlat0.xy = u_xlat1.xy / u_xlat0.xx;
        u_xlat12 = max(u_xlat1.y, 0.0);
        u_xlat12 = min(u_xlat12, 65504.0);
        u_xlat12 = log2(u_xlat12);
        u_xlat12 = u_xlat12 * 0.981100023;
        u_xlat1.y = exp2(u_xlat12);
        u_xlat12 = max(u_xlat0.y, 9.99999975e-05);
        u_xlat12 = u_xlat1.y / u_xlat12;
        u_xlat13 = (-u_xlat0.x) + 1.0;
        u_xlat0.z = (-u_xlat0.y) + u_xlat13;
        u_xlat1.xz = vec2(u_xlat12) * u_xlat0.xz;
        u_xlat0.x = dot(vec3(1.6410234, -0.324803293, -0.236424699), u_xlat1.xyz);
        u_xlat0.y = dot(vec3(-0.663662851, 1.61533165, 0.0167563483), u_xlat1.xyz);
        u_xlat0.z = dot(vec3(0.0117218941, -0.00828444213, 0.988394856), u_xlat1.xyz);
        u_xlat12 = dot(u_xlat0.xyz, vec3(0.272228986, 0.674081981, 0.0536894985));
        u_xlat0.xyz = (-vec3(u_xlat12)) + u_xlat0.xyz;
        u_xlat0.xyz = u_xlat0.xyz * vec3(0.930000007, 0.930000007, 0.930000007) + vec3(u_xlat12);
        u_xlat1.x = dot(vec3(0.662454188, 0.134004205, 0.156187683), u_xlat0.xyz);
        u_xlat1.y = dot(vec3(0.272228718, 0.674081743, 0.0536895171), u_xlat0.xyz);
        u_xlat1.z = dot(vec3(-0.00557464967, 0.0040607336, 1.01033914), u_xlat0.xyz);
        u_xlat0.x = dot(vec3(0.987223983, -0.00611326983, 0.0159533005), u_xlat1.xyz);
        u_xlat0.y = dot(vec3(-0.00759836007, 1.00186002, 0.00533019984), u_xlat1.xyz);
        u_xlat0.z = dot(vec3(0.00307257008, -0.00509594986, 1.08168006), u_xlat1.xyz);
        u_xlat1.x = dot(vec3(3.2409699, -1.5373832, -0.498610765), u_xlat0.xyz);
        u_xlat1.y = dot(vec3(-0.969243646, 1.8759675, 0.0415550582), u_xlat0.xyz);
        u_xlat1.z = dot(vec3(0.0556300804, -0.203976959, 1.05697155), u_xlat0.xyz);
        u_xlat0.xyz = max(u_xlat1.xyz, vec3(0.0, 0.0, 0.0));
        u_xlat0.w = 1.0;
        imageStore(_Output_origX0X, ivec3(gl_GlobalInvocationID.xyz), u_xlat0);
    }
    return;
}

