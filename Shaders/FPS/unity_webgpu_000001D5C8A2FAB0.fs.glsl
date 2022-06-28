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
	mat4x4 unity_WorldToLight;
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
layout(set = 0, binding = 5) uniform highp texture2D _LightTextureB0;
layout(set = 0, binding = 6) uniform highp textureCube _LightTexture0;
layout(set = 0, binding = 7) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 2) in highp vec2 vs_TEXCOORD6;
layout(location = 3) in highp vec3 vs_TEXCOORD2;
layout(location = 4) in highp vec3 vs_TEXCOORD3;
layout(location = 5) in highp vec3 vs_TEXCOORD4;
layout(location = 6) in highp vec3 vs_TEXCOORD5;
layout(location = 7) in highp vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
bool u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
float u_xlat9;
vec2 u_xlat10;
bool u_xlatb10;
float u_xlat14;
float u_xlat16;
float u_xlat21;
float u_xlat22;
float u_xlat23;
float u_xlat24;
bool u_xlatb24;
float u_xlat25;
layout(set = 0, binding = 8) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 9) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 10) uniform highp  sampler sampler_LightTextureB0;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_FaceTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_OutlineTex;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0.xyz = (-vs_TEXCOORD5.xyz) + _WorldSpaceLightPos0.xyz;
    u_xlat21 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat0.xyz = vec3(u_xlat21) * u_xlat0.xyz;
    u_xlat1.xyz = (-vs_TEXCOORD5.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat2.xy = vec2(1.0, 1.0) / vec2(_TextureWidth, _TextureHeight);
    u_xlat2.z = 0.0;
    u_xlat3 = (-u_xlat2.xzzy) + vs_TEXCOORD0.xyxy;
    u_xlat4.x = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat3.xy).w;
    u_xlat2 = u_xlat2.xzzy + vs_TEXCOORD0.xyxy;
    u_xlat4.y = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy).w;
    u_xlat4.z = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat3.zw).w;
    u_xlat4.w = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.zw).w;
    u_xlat22 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat22 = (-u_xlat22) + 0.5;
    u_xlat22 = u_xlat22 + (-vs_TEXCOORD6.x);
    u_xlat22 = u_xlat22 * vs_TEXCOORD6.y + 0.5;
    u_xlat2.x = _OutlineWidth * _ScaleRatioA;
    u_xlat2.y = _OutlineSoftness * _ScaleRatioA;
    u_xlat2.xz = u_xlat2.xy * vs_TEXCOORD6.yy;
    u_xlat3 = vs_COLOR0 * _FaceColor;
    u_xlat23 = vs_COLOR0.w * _OutlineColor.w;
    u_xlat5.xy = vec2(_FaceUVSpeedX, _FaceUVSpeedY) * _Time.yy + vs_TEXCOORD0.zw;
    u_xlat5 = texture(sampler2D(_FaceTex, sampler_FaceTex), u_xlat5.xy);
    u_xlat3 = u_xlat3 * u_xlat5;
    u_xlat5.xy = vec2(_OutlineUVSpeedX, _OutlineUVSpeedY) * _Time.yy + vs_TEXCOORD1.xy;
    u_xlat5 = texture(sampler2D(_OutlineTex, sampler_OutlineTex), u_xlat5.xy);
    u_xlat5.xyz = u_xlat5.xyz * _OutlineColor.xyz;
    u_xlat6.w = u_xlat23 * u_xlat5.w;
    u_xlat23 = (-u_xlat2.x) * 0.5 + u_xlat22;
    u_xlat16 = u_xlat2.z * 0.5 + u_xlat23;
    u_xlat9 = u_xlat2.y * vs_TEXCOORD6.y + 1.0;
    u_xlat9 = u_xlat16 / u_xlat9;
    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
    u_xlat9 = (-u_xlat9) + 1.0;
    u_xlat22 = u_xlat2.x * 0.5 + u_xlat22;
    u_xlat22 = clamp(u_xlat22, 0.0, 1.0);
    u_xlat2.x = min(u_xlat2.x, 1.0);
    u_xlat2.x = sqrt(u_xlat2.x);
    u_xlat2.x = u_xlat22 * u_xlat2.x;
    u_xlat3.xyz = u_xlat3.www * u_xlat3.xyz;
    u_xlat6.xyz = u_xlat5.xyz * u_xlat6.www;
    u_xlat5 = (-u_xlat3) + u_xlat6;
    u_xlat3 = u_xlat2.xxxx * u_xlat5 + u_xlat3;
    u_xlat2 = vec4(u_xlat9) * u_xlat3;
    u_xlat3.x = max(u_xlat2.w, 9.99999975e-05);
    u_xlat2.xyz = u_xlat2.xyz / u_xlat3.xxx;
    u_xlat3.x = _ShaderFlags * 0.5;
    u_xlatb10 = u_xlat3.x>=(-u_xlat3.x);
    u_xlat3.x = fract(abs(u_xlat3.x));
    u_xlat3.x = (u_xlatb10) ? u_xlat3.x : (-u_xlat3.x);
    u_xlatb3 = u_xlat3.x>=0.5;
    u_xlat10.x = vs_TEXCOORD6.x + _BevelOffset;
    u_xlat4 = u_xlat10.xxxx + u_xlat4;
    u_xlat10.x = _BevelWidth + _OutlineWidth;
    u_xlat10.x = max(u_xlat10.x, 0.00999999978);
    u_xlat4 = u_xlat4 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat4 = u_xlat4 / u_xlat10.xxxx;
    u_xlat4 = u_xlat4 + vec4(0.5, 0.5, 0.5, 0.5);
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    u_xlat5 = u_xlat4 * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat5 = -abs(u_xlat5) + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat4 = (bool(u_xlatb3)) ? u_xlat5 : u_xlat4;
    u_xlat5 = u_xlat4 * vec4(1.57079601, 1.57079601, 1.57079601, 1.57079601);
    u_xlat5 = sin(u_xlat5);
    u_xlat5 = (-u_xlat4) + u_xlat5;
    u_xlat4 = vec4(vec4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness)) * u_xlat5 + u_xlat4;
    u_xlat3.x = (-_BevelClamp) + 1.0;
    u_xlat4 = min(u_xlat3.xxxx, u_xlat4);
    u_xlat3.x = u_xlat10.x * _Bevel;
    u_xlat3.x = u_xlat3.x * _GradientScale;
    u_xlat3.x = u_xlat3.x * -2.0;
    u_xlat10.xy = u_xlat3.xx * u_xlat4.xz;
    u_xlat3.yz = u_xlat4.wy * u_xlat3.xx + (-u_xlat10.yx);
    u_xlat3.x = float(-1.0);
    u_xlat3.w = float(1.0);
    u_xlat24 = dot(u_xlat3.zw, u_xlat3.zw);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat4.yz = vec2(u_xlat24) * vec2(1.0, 0.0);
    u_xlat4.x = u_xlat24 * u_xlat3.z;
    u_xlat24 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat3.z = 0.0;
    u_xlat3.xyz = vec3(u_xlat24) * u_xlat3.xyz;
    u_xlat5.xyz = u_xlat3.xyz * u_xlat4.xyz;
    u_xlat3.xyz = u_xlat4.zxy * u_xlat3.yzx + (-u_xlat5.xyz);
    u_xlat4.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.zw).xyw;
    u_xlat4.x = u_xlat4.z * u_xlat4.x;
    u_xlat4.xy = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat24 = dot(u_xlat4.xy, u_xlat4.xy);
    u_xlat24 = min(u_xlat24, 1.0);
    u_xlat24 = (-u_xlat24) + 1.0;
    u_xlat4.z = sqrt(u_xlat24);
    u_xlat24 = (-_BumpFace) + _BumpOutline;
    u_xlat24 = u_xlat22 * u_xlat24 + _BumpFace;
    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat24) + vec3(-0.0, -0.0, -1.0);
    u_xlat4.xyz = u_xlat2.www * u_xlat4.xyz + vec3(0.0, 0.0, 1.0);
    u_xlat3.xyz = u_xlat3.xyz + (-u_xlat4.xyz);
    u_xlat24 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat3.xyz = vec3(u_xlat24) * u_xlat3.xyz;
    u_xlat24 = (-_FaceShininess) + _OutlineShininess;
    u_xlat22 = u_xlat22 * u_xlat24 + _FaceShininess;
    u_xlat4.xyz = vs_TEXCOORD5.yyy * unity_WorldToLight[1].xyz;
    u_xlat4.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD5.xxx + u_xlat4.xyz;
    u_xlat4.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD5.zzz + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz + unity_WorldToLight[3].xyz;
    u_xlatb24 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb24){
        u_xlatb24 = unity_ProbeVolumeParams.y==1.0;
        u_xlat5.xyz = vs_TEXCOORD5.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD5.xxx + u_xlat5.xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD5.zzz + u_xlat5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat5.xyz = (bool(u_xlatb24)) ? u_xlat5.xyz : vs_TEXCOORD5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat5.yzw = u_xlat5.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat24 = u_xlat5.y * 0.25 + 0.75;
        u_xlat25 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat5.x = max(u_xlat24, u_xlat25);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xzw);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
        u_xlat5.w = float(1.0);
    }
    u_xlat24 = dot(u_xlat5, unity_OcclusionMaskSelector);
    u_xlat24 = clamp(u_xlat24, 0.0, 1.0);
    u_xlat25 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat25 = texture(sampler2D(_LightTextureB0, sampler_LightTextureB0), vec2(u_xlat25)).x;
    u_xlat4.x = texture(samplerCube(_LightTexture0, sampler_LightTexture0), u_xlat4.xyz).w;
    u_xlat4.x = u_xlat4.x * u_xlat25;
    u_xlat24 = u_xlat24 * u_xlat4.x;
    u_xlat4.x = dot(vs_TEXCOORD2.xyz, (-u_xlat3.xyz));
    u_xlat4.y = dot(vs_TEXCOORD3.xyz, (-u_xlat3.xyz));
    u_xlat4.z = dot(vs_TEXCOORD4.xyz, (-u_xlat3.xyz));
    u_xlat3.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat3.x = inversesqrt(u_xlat3.x);
    u_xlat3.xyz = u_xlat3.xxx * u_xlat4.xyz;
    u_xlat4.xyz = vec3(u_xlat24) * _LightColor0.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat21) + u_xlat0.xyz;
    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat1.xyz = vec3(u_xlat21) * u_xlat1.xyz;
    u_xlat0.x = dot(u_xlat3.xyz, u_xlat0.xyz);
    u_xlat0.y = dot(u_xlat3.xyz, u_xlat1.xyz);
    u_xlat0.xy = max(u_xlat0.xy, vec2(0.0, 0.0));
    u_xlat14 = u_xlat22 * 128.0;
    u_xlat7.x = log2(u_xlat0.y);
    u_xlat7.x = u_xlat7.x * u_xlat14;
    u_xlat7.x = exp2(u_xlat7.x);
    u_xlat1.xyz = u_xlat2.xyz * u_xlat4.xyz;
    u_xlat2.xyz = u_xlat4.xyz * _SpecColor.xyz;
    u_xlat7.xyz = u_xlat7.xxx * u_xlat2.xyz;
    SV_Target0.xyz = u_xlat1.xyz * u_xlat0.xxx + u_xlat7.xyz;
    SV_Target0.w = u_xlat2.w;
    return;
}

