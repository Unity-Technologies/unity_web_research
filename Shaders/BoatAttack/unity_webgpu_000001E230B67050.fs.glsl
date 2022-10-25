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
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec4 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec3 u_xlat3;
bvec3 u_xlatb3;
vec2 u_xlat4;
vec3 u_xlat5;
bool u_xlatb5;
vec3 u_xlat6;
bool u_xlatb8;
vec2 u_xlat10;
bvec2 u_xlatb10;
vec2 u_xlat11;
float u_xlat15;
bool u_xlatb15;
float u_xlat16;
bool u_xlatb16;
    u_xlat0 = vs_TEXCOORD0.xyxy * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat1.x = dot(u_xlat0.zw, u_xlat0.zw);
    u_xlat0 = u_xlat0 * u_xlat1.xxxx;
    u_xlat0 = u_xlat0 * vec4(_Chroma_Params);
    u_xlat1.x = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlat0 = u_xlat0 * vec4(-0.333333343, -0.333333343, -0.666666687, -0.666666687) + vs_TEXCOORD0.xyxy;
    u_xlat1.y = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).y;
    u_xlat1.z = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.zw, _GlobalMipBias.x).z;
    u_xlat0 = texture(sampler2D(_Bloom_Texture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlatb16 = 0.0<_Bloom_RGBM;
    if(u_xlatb16){
        u_xlat2.xyz = u_xlat0.www * u_xlat0.xyz;
        u_xlat0.xyz = u_xlat2.xyz * vec3(8.0, 8.0, 8.0);
    }
    u_xlat0.xyz = u_xlat0.xyz * _Bloom_Params.xxx;
    u_xlat1.xyz = u_xlat0.xyz * _Bloom_Params.yzw + u_xlat1.xyz;
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
    u_xlat6.x = dot(vec3(0.439700991, 0.382977992, 0.177334994), u_xlat0.xyz);
    u_xlat6.y = dot(vec3(0.0897922963, 0.813422978, 0.0967615992), u_xlat0.xyz);
    u_xlat6.z = dot(vec3(0.0175439995, 0.111543998, 0.870703995), u_xlat0.xyz);
    u_xlat0.x = min(u_xlat6.y, u_xlat6.x);
    u_xlat0.x = min(u_xlat6.z, u_xlat0.x);
    u_xlat5.x = max(u_xlat6.y, u_xlat6.x);
    u_xlat0.y = max(u_xlat6.z, u_xlat5.x);
    u_xlat0.xyz = max(u_xlat0.xyy, vec3(9.99999975e-05, 9.99999975e-05, 0.00999999978));
    u_xlat0.x = (-u_xlat0.x) + u_xlat0.y;
    u_xlat0.x = u_xlat0.x / u_xlat0.z;
    u_xlat5.xyz = (-u_xlat6.yxz) + u_xlat6.zyx;
    u_xlat5.xy = u_xlat5.xy * u_xlat6.zy;
    u_xlat5.x = u_xlat5.y + u_xlat5.x;
    u_xlat5.x = u_xlat6.x * u_xlat5.z + u_xlat5.x;
    u_xlat5.x = max(u_xlat5.x, 0.0);
    u_xlat5.x = sqrt(u_xlat5.x);
    u_xlat10.x = u_xlat6.y + u_xlat6.z;
    u_xlat10.x = u_xlat6.x + u_xlat10.x;
    u_xlat5.x = u_xlat5.x * 1.75 + u_xlat10.x;
    u_xlat15 = u_xlat0.x + -0.400000006;
    u_xlat1.x = u_xlat15 * 2.5;
    u_xlat1.x = -abs(u_xlat1.x) + 1.0;
    u_xlat1.x = max(u_xlat1.x, 0.0);
    u_xlatb15 = u_xlat15>=0.0;
    u_xlat15 = (u_xlatb15) ? 1.0 : -1.0;
    u_xlat1.x = (-u_xlat1.x) * u_xlat1.x + 1.0;
    u_xlat5.z = u_xlat15 * u_xlat1.x + 1.0;
    u_xlat10.xy = u_xlat5.xz * vec2(0.333333343, 0.0250000004);
    u_xlatb1 = 0.159999996>=u_xlat5.x;
    u_xlatb5 = u_xlat5.x>=0.479999989;
    u_xlat10.x = 0.0799999982 / u_xlat10.x;
    u_xlat10.x = u_xlat10.x + -0.5;
    u_xlat10.x = u_xlat10.x * u_xlat10.y;
    u_xlat5.x = (u_xlatb5) ? 0.0 : u_xlat10.x;
    u_xlat5.x = (u_xlatb1) ? u_xlat10.y : u_xlat5.x;
    u_xlat5.x = u_xlat5.x + 1.0;
    u_xlat2.yzw = u_xlat5.xxx * u_xlat6.xyz;
    u_xlatb10.xy = equal(u_xlat2.zwzw, u_xlat2.yzyz).xy;
    u_xlatb10.x = u_xlatb10.y && u_xlatb10.x;
    u_xlat15 = u_xlat6.y * u_xlat5.x + (-u_xlat2.w);
    u_xlat15 = u_xlat15 * 1.73205078;
    u_xlat1.x = u_xlat2.y * 2.0 + (-u_xlat2.z);
    u_xlat1.x = (-u_xlat6.z) * u_xlat5.x + u_xlat1.x;
    u_xlat11.x = min(abs(u_xlat15), abs(u_xlat1.x));
    u_xlat16 = max(abs(u_xlat15), abs(u_xlat1.x));
    u_xlat16 = float(1.0) / u_xlat16;
    u_xlat11.x = u_xlat16 * u_xlat11.x;
    u_xlat16 = u_xlat11.x * u_xlat11.x;
    u_xlat3.x = u_xlat16 * 0.0208350997 + -0.0851330012;
    u_xlat3.x = u_xlat16 * u_xlat3.x + 0.180141002;
    u_xlat3.x = u_xlat16 * u_xlat3.x + -0.330299497;
    u_xlat16 = u_xlat16 * u_xlat3.x + 0.999866009;
    u_xlat3.x = u_xlat16 * u_xlat11.x;
    u_xlatb8 = abs(u_xlat1.x)<abs(u_xlat15);
    u_xlat3.x = u_xlat3.x * -2.0 + 1.57079637;
    u_xlat3.x = u_xlatb8 ? u_xlat3.x : float(0.0);
    u_xlat11.x = u_xlat11.x * u_xlat16 + u_xlat3.x;
    u_xlatb16 = u_xlat1.x<(-u_xlat1.x);
    u_xlat16 = u_xlatb16 ? -3.14159274 : float(0.0);
    u_xlat11.x = u_xlat16 + u_xlat11.x;
    u_xlat16 = min(u_xlat15, u_xlat1.x);
    u_xlat15 = max(u_xlat15, u_xlat1.x);
    u_xlatb1 = u_xlat16<(-u_xlat16);
    u_xlatb15 = u_xlat15>=(-u_xlat15);
    u_xlatb15 = u_xlatb15 && u_xlatb1;
    u_xlat15 = (u_xlatb15) ? (-u_xlat11.x) : u_xlat11.x;
    u_xlat15 = u_xlat15 * 57.2957802;
    u_xlat10.x = (u_xlatb10.x) ? 0.0 : u_xlat15;
    u_xlatb15 = u_xlat10.x<0.0;
    u_xlat1.x = u_xlat10.x + 360.0;
    u_xlat10.x = (u_xlatb15) ? u_xlat1.x : u_xlat10.x;
    u_xlatb15 = u_xlat10.x<-180.0;
    u_xlatb1 = 180.0<u_xlat10.x;
    u_xlat11.xy = u_xlat10.xx + vec2(360.0, -360.0);
    u_xlat10.x = (u_xlatb1) ? u_xlat11.y : u_xlat10.x;
    u_xlat10.x = (u_xlatb15) ? u_xlat11.x : u_xlat10.x;
    u_xlat10.x = u_xlat10.x * 0.0148148146;
    u_xlat10.x = -abs(u_xlat10.x) + 1.0;
    u_xlat10.x = max(u_xlat10.x, 0.0);
    u_xlat15 = u_xlat10.x * -2.0 + 3.0;
    u_xlat10.x = u_xlat10.x * u_xlat10.x;
    u_xlat10.x = u_xlat10.x * u_xlat15;
    u_xlat10.x = u_xlat10.x * u_xlat10.x;
    u_xlat0.x = u_xlat0.x * u_xlat10.x;
    u_xlat5.x = (-u_xlat6.x) * u_xlat5.x + 0.0299999993;
    u_xlat0.x = u_xlat5.x * u_xlat0.x;
    u_xlat2.x = u_xlat0.x * 0.180000007 + u_xlat2.y;
    u_xlat0.x = dot(vec3(1.45143926, -0.236510754, -0.214928567), u_xlat2.xzw);
    u_xlat0.y = dot(vec3(-0.0765537769, 1.17622972, -0.0996759236), u_xlat2.xzw);
    u_xlat0.z = dot(vec3(0.00831614807, -0.00603244966, 0.997716308), u_xlat2.xzw);
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat15 = dot(u_xlat0.xyz, vec3(0.272228986, 0.674081981, 0.0536894985));
    u_xlat0.xyz = (-vec3(u_xlat15)) + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.959999979, 0.959999979, 0.959999979) + vec3(u_xlat15);
    u_xlat1.xyz = u_xlat0.xyz + vec3(0.0245785993, 0.0245785993, 0.0245785993);
    u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz + vec3(-9.05370034e-05, -9.05370034e-05, -9.05370034e-05);
    u_xlat2.xyz = u_xlat0.xyz * vec3(0.983729005, 0.983729005, 0.983729005) + vec3(0.432951003, 0.432951003, 0.432951003);
    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz + vec3(0.238080993, 0.238080993, 0.238080993);
    u_xlat0.xyz = u_xlat1.xyz / u_xlat0.xyz;
    u_xlat1.x = dot(vec3(0.662454188, 0.134004205, 0.156187683), u_xlat0.xyz);
    u_xlat1.y = dot(vec3(0.272228718, 0.674081743, 0.0536895171), u_xlat0.xyz);
    u_xlat1.z = dot(vec3(-0.00557464967, 0.0040607336, 1.01033914), u_xlat0.xyz);
    u_xlat0.x = dot(u_xlat1.xyz, vec3(1.0, 1.0, 1.0));
    u_xlat0.x = max(u_xlat0.x, 9.99999975e-05);
    u_xlat0.xy = u_xlat1.xy / u_xlat0.xx;
    u_xlat15 = max(u_xlat1.y, 0.0);
    u_xlat15 = min(u_xlat15, 65504.0);
    u_xlat15 = log2(u_xlat15);
    u_xlat15 = u_xlat15 * 0.981100023;
    u_xlat1.y = exp2(u_xlat15);
    u_xlat15 = max(u_xlat0.y, 9.99999975e-05);
    u_xlat15 = u_xlat1.y / u_xlat15;
    u_xlat16 = (-u_xlat0.x) + 1.0;
    u_xlat0.z = (-u_xlat0.y) + u_xlat16;
    u_xlat1.xz = vec2(u_xlat15) * u_xlat0.xz;
    u_xlat0.x = dot(vec3(1.6410234, -0.324803293, -0.236424699), u_xlat1.xyz);
    u_xlat0.y = dot(vec3(-0.663662851, 1.61533165, 0.0167563483), u_xlat1.xyz);
    u_xlat0.z = dot(vec3(0.0117218941, -0.00828444213, 0.988394856), u_xlat1.xyz);
    u_xlat15 = dot(u_xlat0.xyz, vec3(0.272228986, 0.674081981, 0.0536894985));
    u_xlat0.xyz = (-vec3(u_xlat15)) + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.930000007, 0.930000007, 0.930000007) + vec3(u_xlat15);
    u_xlat1.x = dot(vec3(0.662454188, 0.134004205, 0.156187683), u_xlat0.xyz);
    u_xlat1.y = dot(vec3(0.272228718, 0.674081743, 0.0536895171), u_xlat0.xyz);
    u_xlat1.z = dot(vec3(-0.00557464967, 0.0040607336, 1.01033914), u_xlat0.xyz);
    u_xlat0.x = dot(vec3(0.987223983, -0.00611326983, 0.0159533005), u_xlat1.xyz);
    u_xlat0.y = dot(vec3(-0.00759836007, 1.00186002, 0.00533019984), u_xlat1.xyz);
    u_xlat0.z = dot(vec3(0.00307257008, -0.00509594986, 1.08168006), u_xlat1.xyz);
    u_xlat1.x = dot(vec3(3.2409699, -1.5373832, -0.498610765), u_xlat0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat1.y = dot(vec3(-0.969243646, 1.8759675, 0.0415550582), u_xlat0.xyz);
    u_xlat1.y = clamp(u_xlat1.y, 0.0, 1.0);
    u_xlat1.z = dot(vec3(0.0556300804, -0.203976959, 1.05697155), u_xlat0.xyz);
    u_xlat1.z = clamp(u_xlat1.z, 0.0, 1.0);
    u_xlatb0.x = 0.0<_UserLut_Params.w;
    if(u_xlatb0.x){
        u_xlat0.xyz = u_xlat1.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
        u_xlat2.xyz = log2(u_xlat1.xyz);
        u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
        u_xlat2.xyz = exp2(u_xlat2.xyz);
        u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
        u_xlatb3.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat1.xyzx).xyz;
        {
            vec4 hlslcc_movcTemp = u_xlat0;
            hlslcc_movcTemp.x = (u_xlatb3.x) ? u_xlat0.x : u_xlat2.x;
            hlslcc_movcTemp.y = (u_xlatb3.y) ? u_xlat0.y : u_xlat2.y;
            hlslcc_movcTemp.z = (u_xlatb3.z) ? u_xlat0.z : u_xlat2.z;
            u_xlat0 = hlslcc_movcTemp;
        }
        u_xlat2.xyz = u_xlat0.zxy * _UserLut_Params.zzz;
        u_xlat15 = floor(u_xlat2.x);
        u_xlat2.xw = _UserLut_Params.xy * vec2(0.5, 0.5);
        u_xlat2.yz = u_xlat2.yz * _UserLut_Params.xy + u_xlat2.xw;
        u_xlat2.x = u_xlat15 * _UserLut_Params.y + u_xlat2.y;
        u_xlat3.xyz = textureLod(sampler2D(_UserLut, sampler_LinearClamp), u_xlat2.xz, 0.0).xyz;
        u_xlat4.x = _UserLut_Params.y;
        u_xlat4.y = 0.0;
        u_xlat2.xy = u_xlat2.xz + u_xlat4.xy;
        u_xlat2.xyz = textureLod(sampler2D(_UserLut, sampler_LinearClamp), u_xlat2.xy, 0.0).xyz;
        u_xlat15 = u_xlat0.z * _UserLut_Params.z + (-u_xlat15);
        u_xlat2.xyz = (-u_xlat3.xyz) + u_xlat2.xyz;
        u_xlat2.xyz = vec3(u_xlat15) * u_xlat2.xyz + u_xlat3.xyz;
        u_xlat2.xyz = (-u_xlat0.xyz) + u_xlat2.xyz;
        u_xlat0.xyz = _UserLut_Params.www * u_xlat2.xyz + u_xlat0.xyz;
        u_xlat2.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
        u_xlat3.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
        u_xlat3.xyz = u_xlat3.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
        u_xlat3.xyz = log2(abs(u_xlat3.xyz));
        u_xlat3.xyz = u_xlat3.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
        u_xlat3.xyz = exp2(u_xlat3.xyz);
        u_xlatb0.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
        u_xlat1.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat3.x;
        u_xlat1.y = (u_xlatb0.y) ? u_xlat2.y : u_xlat3.y;
        u_xlat1.z = (u_xlatb0.z) ? u_xlat2.z : u_xlat3.z;
    }
    u_xlat0.xyz = u_xlat1.zxy * _Lut_Params.zzz;
    u_xlat0.x = floor(u_xlat0.x);
    u_xlat1.xy = _Lut_Params.xy * vec2(0.5, 0.5);
    u_xlat2.yz = u_xlat0.yz * _Lut_Params.xy + u_xlat1.xy;
    u_xlat2.x = u_xlat0.x * _Lut_Params.y + u_xlat2.y;
    u_xlat5.xyz = textureLod(sampler2D(_InternalLut, sampler_LinearClamp), u_xlat2.xz, 0.0).xyz;
    u_xlat1.x = _Lut_Params.y;
    u_xlat1.y = 0.0;
    u_xlat1.xy = u_xlat1.xy + u_xlat2.xz;
    u_xlat1.xyw = textureLod(sampler2D(_InternalLut, sampler_LinearClamp), u_xlat1.xy, 0.0).xyz;
    u_xlat0.x = u_xlat1.z * _Lut_Params.z + (-u_xlat0.x);
    u_xlat1.xyz = (-u_xlat5.xyz) + u_xlat1.xyw;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz + u_xlat5.xyz;
    SV_Target0.xyz = sqrt(u_xlat0.xyz);
    SV_Target0.w = 1.0;
    return;
}

