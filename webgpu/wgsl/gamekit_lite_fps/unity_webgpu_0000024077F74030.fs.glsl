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
	vec4 _Time;
	vec3 _WorldSpaceCameraPos;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	vec4 _SpecColor;
	float _FaceUVSpeedX;
	float _FaceUVSpeedY;
	vec4 _FaceColor;
	float _OutlineSoftness;
	float _OutlineUVSpeedX;
	float _OutlineUVSpeedY;
	vec4 _OutlineColor;
	float _OutlineWidth;
	float _Bevel;
	float _BevelOffset;
	float _BevelWidth;
	float _BevelClamp;
	float _BevelRoundness;
	float _BumpOutline;
	float _BumpFace;
	float _ShaderFlags;
	float _ScaleRatioA;
	float _TextureWidth;
	float _TextureHeight;
	float _GradientScale;
	float _FaceShininess;
	float _OutlineShininess;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _FaceTex;
layout(set = 0, binding = 3) uniform mediump texture2D _OutlineTex;
layout(set = 0, binding = 4) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 5) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 2) in highp vec2 vs_TEXCOORD6;
layout(location = 3) in highp vec3 vs_TEXCOORD2;
layout(location = 4) in highp vec3 vs_TEXCOORD3;
layout(location = 5) in highp vec3 vs_TEXCOORD4;
layout(location = 6) in highp vec3 vs_TEXCOORD5;
layout(location = 7) in highp vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
bool u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
float u_xlat6;
vec3 u_xlat7;
vec2 u_xlat8;
bool u_xlatb8;
vec3 u_xlat9;
vec3 u_xlat10;
float u_xlat13;
float u_xlat18;
float u_xlat19;
float u_xlat21;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_FaceTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_OutlineTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0.xyz = (-vs_TEXCOORD5.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat18 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat1.xy = vec2(1.0, 1.0) / vec2(_TextureWidth, _TextureHeight);
    u_xlat1.z = 0.0;
    u_xlat2 = (-u_xlat1.xzzy) + vs_TEXCOORD0.xyxy;
    u_xlat3.x = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy).w;
    u_xlat1 = u_xlat1.xzzy + vs_TEXCOORD0.xyxy;
    u_xlat3.y = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy).w;
    u_xlat3.z = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.zw).w;
    u_xlat3.w = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw).w;
    u_xlat1.x = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat1.x = (-u_xlat1.x) + 0.5;
    u_xlat1.x = u_xlat1.x + (-vs_TEXCOORD6.x);
    u_xlat1.x = u_xlat1.x * vs_TEXCOORD6.y + 0.5;
    u_xlat7.x = _OutlineWidth * _ScaleRatioA;
    u_xlat7.y = _OutlineSoftness * _ScaleRatioA;
    u_xlat7.xz = u_xlat7.xy * vs_TEXCOORD6.yy;
    u_xlat2 = vs_COLOR0 * _FaceColor;
    u_xlat4.x = vs_COLOR0.w * _OutlineColor.w;
    u_xlat10.xy = vec2(_FaceUVSpeedX, _FaceUVSpeedY) * _Time.yy + vs_TEXCOORD0.zw;
    u_xlat5 = texture(sampler2D(_FaceTex, sampler_FaceTex), u_xlat10.xy);
    u_xlat2 = u_xlat2 * u_xlat5;
    u_xlat10.xy = vec2(_OutlineUVSpeedX, _OutlineUVSpeedY) * _Time.yy + vs_TEXCOORD1.xy;
    u_xlat5 = texture(sampler2D(_OutlineTex, sampler_OutlineTex), u_xlat10.xy);
    u_xlat10.xyz = u_xlat5.xyz * _OutlineColor.xyz;
    u_xlat5.w = u_xlat4.x * u_xlat5.w;
    u_xlat4.x = (-u_xlat7.x) * 0.5 + u_xlat1.x;
    u_xlat19 = u_xlat7.z * 0.5 + u_xlat4.x;
    u_xlat13 = u_xlat7.y * vs_TEXCOORD6.y + 1.0;
    u_xlat13 = u_xlat19 / u_xlat13;
    u_xlat13 = clamp(u_xlat13, 0.0, 1.0);
    u_xlat13 = (-u_xlat13) + 1.0;
    u_xlat1.x = u_xlat7.x * 0.5 + u_xlat1.x;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat7.x = min(u_xlat7.x, 1.0);
    u_xlat7.x = sqrt(u_xlat7.x);
    u_xlat7.x = u_xlat7.x * u_xlat1.x;
    u_xlat2.xyz = u_xlat2.www * u_xlat2.xyz;
    u_xlat5.xyz = u_xlat10.xyz * u_xlat5.www;
    u_xlat4 = (-u_xlat2) + u_xlat5;
    u_xlat2 = u_xlat7.xxxx * u_xlat4 + u_xlat2;
    u_xlat2 = vec4(u_xlat13) * u_xlat2;
    u_xlat7.x = max(u_xlat2.w, 9.99999975e-05);
    u_xlat7.xyz = u_xlat2.xyz / u_xlat7.xxx;
    u_xlat2.x = _ShaderFlags * 0.5;
    u_xlatb8 = u_xlat2.x>=(-u_xlat2.x);
    u_xlat2.x = fract(abs(u_xlat2.x));
    u_xlat2.x = (u_xlatb8) ? u_xlat2.x : (-u_xlat2.x);
    u_xlatb2 = u_xlat2.x>=0.5;
    u_xlat8.x = vs_TEXCOORD6.x + _BevelOffset;
    u_xlat3 = u_xlat8.xxxx + u_xlat3;
    u_xlat8.x = _BevelWidth + _OutlineWidth;
    u_xlat8.x = max(u_xlat8.x, 0.00999999978);
    u_xlat3 = u_xlat3 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat3 = u_xlat3 / u_xlat8.xxxx;
    u_xlat3 = u_xlat3 + vec4(0.5, 0.5, 0.5, 0.5);
    u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
    u_xlat4 = u_xlat3 * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat4 = -abs(u_xlat4) + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat3 = (bool(u_xlatb2)) ? u_xlat4 : u_xlat3;
    u_xlat4 = u_xlat3 * vec4(1.57079601, 1.57079601, 1.57079601, 1.57079601);
    u_xlat4 = sin(u_xlat4);
    u_xlat4 = (-u_xlat3) + u_xlat4;
    u_xlat3 = vec4(vec4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness)) * u_xlat4 + u_xlat3;
    u_xlat2.x = (-_BevelClamp) + 1.0;
    u_xlat3 = min(u_xlat2.xxxx, u_xlat3);
    u_xlat2.x = u_xlat8.x * _Bevel;
    u_xlat2.x = u_xlat2.x * _GradientScale;
    u_xlat2.x = u_xlat2.x * -2.0;
    u_xlat8.xy = u_xlat2.xx * u_xlat3.xz;
    u_xlat3.yz = u_xlat3.wy * u_xlat2.xx + (-u_xlat8.yx);
    u_xlat3.x = float(-1.0);
    u_xlat3.w = float(1.0);
    u_xlat2.x = dot(u_xlat3.zw, u_xlat3.zw);
    u_xlat2.x = inversesqrt(u_xlat2.x);
    u_xlat4.yz = u_xlat2.xx * vec2(1.0, 0.0);
    u_xlat4.x = u_xlat2.x * u_xlat3.z;
    u_xlat2.x = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat2.x = inversesqrt(u_xlat2.x);
    u_xlat3.z = 0.0;
    u_xlat2.xyz = u_xlat2.xxx * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat2.xyz * u_xlat4.xyz;
    u_xlat2.xyz = u_xlat4.zxy * u_xlat2.yzx + (-u_xlat3.xyz);
    u_xlat3.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.zw).xyw;
    u_xlat3.x = u_xlat3.z * u_xlat3.x;
    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat21 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat21 = min(u_xlat21, 1.0);
    u_xlat21 = (-u_xlat21) + 1.0;
    u_xlat3.z = sqrt(u_xlat21);
    u_xlat21 = (-_BumpFace) + _BumpOutline;
    u_xlat21 = u_xlat1.x * u_xlat21 + _BumpFace;
    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat21) + vec3(-0.0, -0.0, -1.0);
    u_xlat3.xyz = u_xlat2.www * u_xlat3.xyz + vec3(0.0, 0.0, 1.0);
    u_xlat2.xyz = u_xlat2.xyz + (-u_xlat3.xyz);
    u_xlat3.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat3.x = inversesqrt(u_xlat3.x);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat3.xxx;
    u_xlat3.x = (-_FaceShininess) + _OutlineShininess;
    u_xlat1.x = u_xlat1.x * u_xlat3.x + _FaceShininess;
    u_xlatb3 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb3){
        u_xlatb3 = unity_ProbeVolumeParams.y==1.0;
        u_xlat9.xyz = vs_TEXCOORD5.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD5.xxx + u_xlat9.xyz;
        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD5.zzz + u_xlat9.xyz;
        u_xlat9.xyz = u_xlat9.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat3.xyz = (bool(u_xlatb3)) ? u_xlat9.xyz : vs_TEXCOORD5.xyz;
        u_xlat3.xyz = u_xlat3.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat3.yzw = u_xlat3.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat9.x = u_xlat3.y * 0.25 + 0.75;
        u_xlat4.x = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat3.x = max(u_xlat9.x, u_xlat4.x);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat3.xzw);
    } else {
        u_xlat3.x = float(1.0);
        u_xlat3.y = float(1.0);
        u_xlat3.z = float(1.0);
        u_xlat3.w = float(1.0);
    }
    u_xlat3.x = dot(u_xlat3, unity_OcclusionMaskSelector);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat4.x = dot(vs_TEXCOORD2.xyz, (-u_xlat2.xyz));
    u_xlat4.y = dot(vs_TEXCOORD3.xyz, (-u_xlat2.xyz));
    u_xlat4.z = dot(vs_TEXCOORD4.xyz, (-u_xlat2.xyz));
    u_xlat2.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat2.x = inversesqrt(u_xlat2.x);
    u_xlat2.xyz = u_xlat2.xxx * u_xlat4.xyz;
    u_xlat3.xyz = u_xlat3.xxx * _LightColor0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat18) + _WorldSpaceLightPos0.xyz;
    u_xlat18 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat0.w = dot(u_xlat2.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat0.x = dot(u_xlat2.xyz, u_xlat0.xyz);
    u_xlat0.xw = max(u_xlat0.xw, vec2(0.0, 0.0));
    u_xlat6 = u_xlat1.x * 128.0;
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * u_xlat6;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat1.xyz = u_xlat7.xyz * u_xlat3.xyz;
    u_xlat2.xyz = u_xlat3.xyz * _SpecColor.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
    SV_Target0.xyz = u_xlat1.xyz * u_xlat0.www + u_xlat0.xyz;
    SV_Target0.w = u_xlat2.w;
    return;
}

