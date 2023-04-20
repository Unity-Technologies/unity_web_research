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
	vec4 _Time;
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_FogParams;
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
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _FaceTex;
layout(set = 0, binding = 2) uniform mediump texture2D _OutlineTex;
layout(set = 0, binding = 3) uniform mediump texture2D _BumpMap;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec2 vs_TEXCOORD1;
layout(location = 2) in highp  vec2 vs_TEXCOORD6;
layout(location = 3) in highp  vec3 vs_TEXCOORD2;
layout(location = 4) in highp  float vs_TEXCOORD9;
layout(location = 5) in highp  vec3 vs_TEXCOORD3;
layout(location = 6) in highp  vec3 vs_TEXCOORD4;
layout(location = 7) in highp  vec3 vs_TEXCOORD5;
layout(location = 8) in highp  vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
float u_xlat5;
bool u_xlatb5;
float u_xlat6;
float u_xlat7;
float u_xlat8;
bool u_xlatb9;
float u_xlat11;
float u_xlat12;
float u_xlat14;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_FaceTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_OutlineTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0.x = vs_TEXCOORD6.x + _BevelOffset;
    u_xlat1.xy = vec2(1.0, 1.0) / vec2(_TextureWidth, _TextureHeight);
    u_xlat1.z = 0.0;
    u_xlat2 = (-u_xlat1.xzzy) + vs_TEXCOORD0.xyxy;
    u_xlat1 = u_xlat1.xzzy + vs_TEXCOORD0.xyxy;
    u_xlat3.x = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy).w;
    u_xlat3.z = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.zw).w;
    u_xlat3.y = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy).w;
    u_xlat3.w = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw).w;
    u_xlat0 = u_xlat0.xxxx + u_xlat3;
    u_xlat0 = u_xlat0 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat1.x = _BevelWidth + _OutlineWidth;
    u_xlat1.x = max(u_xlat1.x, 0.00999999978);
    u_xlat0 = u_xlat0 / u_xlat1.xxxx;
    u_xlat1.x = u_xlat1.x * _Bevel;
    u_xlat1.x = u_xlat1.x * _GradientScale;
    u_xlat1.x = u_xlat1.x * -2.0;
    u_xlat0 = u_xlat0 + vec4(0.5, 0.5, 0.5, 0.5);
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat2 = u_xlat0 * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat2 = -abs(u_xlat2) + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat5 = _ShaderFlags * 0.5;
    u_xlatb9 = u_xlat5>=(-u_xlat5);
    u_xlat5 = fract(abs(u_xlat5));
    u_xlat5 = (u_xlatb9) ? u_xlat5 : (-u_xlat5);
    u_xlatb5 = u_xlat5>=0.5;
    u_xlat0 = (bool(u_xlatb5)) ? u_xlat2 : u_xlat0;
    u_xlat2 = u_xlat0 * vec4(1.57079601, 1.57079601, 1.57079601, 1.57079601);
    u_xlat2 = sin(u_xlat2);
    u_xlat2 = (-u_xlat0) + u_xlat2;
    u_xlat0 = vec4(vec4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness)) * u_xlat2 + u_xlat0;
    u_xlat5 = (-_BevelClamp) + 1.0;
    u_xlat0 = min(u_xlat0, vec4(u_xlat5));
    u_xlat0.xz = u_xlat1.xx * u_xlat0.xz;
    u_xlat0.yz = u_xlat0.wy * u_xlat1.xx + (-u_xlat0.zx);
    u_xlat0.x = float(-1.0);
    u_xlat0.w = float(1.0);
    u_xlat1.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat12 = dot(u_xlat0.zw, u_xlat0.zw);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat2.x = u_xlat12 * u_xlat0.z;
    u_xlat2.yz = vec2(u_xlat12) * vec2(1.0, 0.0);
    u_xlat0.z = 0.0;
    u_xlat0.xyz = u_xlat1.xxx * u_xlat0.xyz;
    u_xlat1.xyz = u_xlat0.xyz * u_xlat2.xyz;
    u_xlat0.xyz = u_xlat2.zxy * u_xlat0.yzx + (-u_xlat1.xyz);
    u_xlat1.xy = vec2(_OutlineUVSpeedX, _OutlineUVSpeedY) * _Time.yy + vs_TEXCOORD1.xy;
    u_xlat1 = texture(sampler2D(_OutlineTex, sampler_OutlineTex), u_xlat1.xy);
    u_xlat1.xyz = u_xlat1.xyz * _OutlineColor.xyz;
    u_xlat12 = vs_COLOR0.w * _OutlineColor.w;
    u_xlat2.w = u_xlat1.w * u_xlat12;
    u_xlat2.xyz = u_xlat1.xyz * u_xlat2.www;
    u_xlat1.xy = vec2(_FaceUVSpeedX, _FaceUVSpeedY) * _Time.yy + vs_TEXCOORD0.zw;
    u_xlat1 = texture(sampler2D(_FaceTex, sampler_FaceTex), u_xlat1.xy);
    u_xlat3 = vs_COLOR0 * _FaceColor;
    u_xlat1 = u_xlat1 * u_xlat3;
    u_xlat1.xyz = u_xlat1.www * u_xlat1.xyz;
    u_xlat2 = (-u_xlat1) + u_xlat2;
    u_xlat12 = _OutlineWidth * _ScaleRatioA;
    u_xlat12 = u_xlat12 * vs_TEXCOORD6.y;
    u_xlat3.x = min(u_xlat12, 1.0);
    u_xlat3.x = sqrt(u_xlat3.x);
    u_xlat7 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat7 = (-u_xlat7) + 0.5;
    u_xlat7 = u_xlat7 + (-vs_TEXCOORD6.x);
    u_xlat7 = u_xlat7 * vs_TEXCOORD6.y + 0.5;
    u_xlat11 = u_xlat12 * 0.5 + u_xlat7;
    u_xlat11 = clamp(u_xlat11, 0.0, 1.0);
    u_xlat12 = (-u_xlat12) * 0.5 + u_xlat7;
    u_xlat3.x = u_xlat3.x * u_xlat11;
    u_xlat1 = u_xlat3.xxxx * u_xlat2 + u_xlat1;
    u_xlat2.x = _OutlineSoftness * _ScaleRatioA;
    u_xlat6 = u_xlat2.x * vs_TEXCOORD6.y;
    u_xlat2.x = u_xlat2.x * vs_TEXCOORD6.y + 1.0;
    u_xlat12 = u_xlat6 * 0.5 + u_xlat12;
    u_xlat12 = u_xlat12 / u_xlat2.x;
    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
    u_xlat12 = (-u_xlat12) + 1.0;
    u_xlat1 = vec4(u_xlat12) * u_xlat1;
    u_xlat12 = (-_BumpFace) + _BumpOutline;
    u_xlat12 = u_xlat11 * u_xlat12 + _BumpFace;
    u_xlat2.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.zw).xyw;
    u_xlat2.x = u_xlat2.z * u_xlat2.x;
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat14 = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat14 = min(u_xlat14, 1.0);
    u_xlat14 = (-u_xlat14) + 1.0;
    u_xlat2.z = sqrt(u_xlat14);
    u_xlat2.xyz = u_xlat2.xyz * vec3(u_xlat12) + vec3(-0.0, -0.0, -1.0);
    u_xlat2.xyz = u_xlat1.www * u_xlat2.xyz + vec3(0.0, 0.0, 1.0);
    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat2.xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat0.xyz = vec3(u_xlat12) * u_xlat0.xyz;
    u_xlat2.x = dot(vs_TEXCOORD2.xyz, (-u_xlat0.xyz));
    u_xlat2.y = dot(vs_TEXCOORD3.xyz, (-u_xlat0.xyz));
    u_xlat2.z = dot(vs_TEXCOORD4.xyz, (-u_xlat0.xyz));
    u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
    u_xlat2.xyz = (-vs_TEXCOORD5.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat12 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat2.xyz = u_xlat2.xyz * vec3(u_xlat12) + _WorldSpaceLightPos0.xyz;
    u_xlat12 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat2.xyz = vec3(u_xlat12) * u_xlat2.xyz;
    u_xlat0.w = dot(u_xlat0.xyz, u_xlat2.xyz);
    u_xlat0.x = dot(u_xlat0.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat0.xy = max(u_xlat0.xw, vec2(0.0, 0.0));
    u_xlat4.x = log2(u_xlat0.y);
    u_xlat8 = (-_FaceShininess) + _OutlineShininess;
    u_xlat8 = u_xlat11 * u_xlat8 + _FaceShininess;
    u_xlat8 = u_xlat8 * 128.0;
    u_xlat4.x = u_xlat4.x * u_xlat8;
    u_xlat4.x = exp2(u_xlat4.x);
    u_xlat2.xyz = _LightColor0.xyz * _SpecColor.xyz;
    u_xlat4.xyz = u_xlat4.xxx * u_xlat2.xyz;
    u_xlat2.x = max(u_xlat1.w, 9.99999975e-05);
    u_xlat1.xyz = u_xlat1.xyz / u_xlat2.xxx;
    SV_Target0.w = u_xlat1.w;
    u_xlat1.xyz = u_xlat1.xyz * _LightColor0.xyz;
    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xxx + u_xlat4.xyz;
    u_xlat12 = vs_TEXCOORD9 / _ProjectionParams.y;
    u_xlat12 = (-u_xlat12) + 1.0;
    u_xlat12 = u_xlat12 * _ProjectionParams.z;
    u_xlat12 = max(u_xlat12, 0.0);
    u_xlat12 = u_xlat12 * unity_FogParams.x;
    u_xlat12 = u_xlat12 * (-u_xlat12);
    u_xlat12 = exp2(u_xlat12);
    SV_Target0.xyz = u_xlat0.xyz * vec3(u_xlat12);
    return;
}

