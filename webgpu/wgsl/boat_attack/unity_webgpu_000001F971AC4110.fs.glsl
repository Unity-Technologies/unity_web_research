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
	vec4 _ScreenSize;
	vec4 _BloomTexture_TexelSize;
	vec4 _LensFlareScreenSpaceParams1;
	vec4 _LensFlareScreenSpaceParams2;
	vec4 _LensFlareScreenSpaceParams3;
	vec4 _LensFlareScreenSpaceParams4;
	vec4 _LensFlareScreenSpaceParams5;
	vec3 _LensFlareScreenSpaceTintColor;
};
layout(set = 0, binding = 0) uniform mediump texture2D _LensFlareScreenSpaceStreakTex;
layout(set = 0, binding = 1) uniform mediump texture2D _BloomTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec2 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
bool u_xlatb9;
vec3 u_xlat10;
vec4 u_xlat11;
float u_xlat14;
bvec3 u_xlatb14;
vec2 u_xlat21;
bvec2 u_xlatb21;
float u_xlat22;
vec2 u_xlat25;
vec2 u_xlat28;
vec2 u_xlat33;
float u_xlat34;
float u_xlat36;
bool u_xlatb36;
float u_xlat37;
int u_xlati41;
float u_xlat42;
float u_xlat43;
bool u_xlatb43;
float u_xlat44;
bool u_xlatb44;
float u_xlat45;
bool u_xlatb45;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_LinearClamp;
void main()
{
    u_xlatb0 = 0.0<_LensFlareScreenSpaceParams4.x;
    if(u_xlatb0){
        u_xlatb0 = 0.0<_LensFlareScreenSpaceParams3.z;
        if(u_xlatb0){
            u_xlat0 = vs_TEXCOORD0.xyxy * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
            u_xlat1.x = dot(u_xlat0.zw, u_xlat0.zw);
            u_xlat0 = u_xlat0 * u_xlat1.xxxx;
            u_xlat0 = u_xlat0 * _LensFlareScreenSpaceParams3.zzzz;
            u_xlat1 = (-_ScreenSize.zwzw) * vec4(0.5, 0.5, 0.5, 0.5) + vec4(1.0, 1.0, 1.0, 1.0);
            u_xlat2.xy = min(u_xlat1.zw, vs_TEXCOORD0.xy);
            u_xlat2.xy = u_xlat2.xy * _RTHandleScale.xy;
            u_xlat2.x = texture(sampler2D(_LensFlareScreenSpaceStreakTex, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).x;
            u_xlat0 = u_xlat0 * vec4(-0.333333343, -0.333333343, -0.666666687, -0.666666687) + vs_TEXCOORD0.xyxy;
            u_xlat0 = min(u_xlat1, u_xlat0);
            u_xlat0 = u_xlat0 * _RTHandleScale.xyxy;
            u_xlat2.y = texture(sampler2D(_LensFlareScreenSpaceStreakTex, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).y;
            u_xlat2.z = texture(sampler2D(_LensFlareScreenSpaceStreakTex, sampler_LinearClamp), u_xlat0.zw, _GlobalMipBias.x).z;
        } else {
            u_xlat0.xy = (-_ScreenSize.zw) * vec2(0.5, 0.5) + vec2(1.0, 1.0);
            u_xlat0.xy = min(u_xlat0.xy, vs_TEXCOORD0.xy);
            u_xlat0.xy = u_xlat0.xy * _RTHandleScale.xy;
            u_xlat2.xyz = texture(sampler2D(_LensFlareScreenSpaceStreakTex, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).xyz;
        }
        u_xlat0.xyz = u_xlat2.xyz * vec3(_LensFlareScreenSpaceTintColor.x, _LensFlareScreenSpaceTintColor.y, _LensFlareScreenSpaceTintColor.z);
        u_xlat0.xyz = u_xlat0.xyz * _LensFlareScreenSpaceParams4.xxx;
    } else {
        u_xlat0.x = float(0.0);
        u_xlat0.y = float(0.0);
        u_xlat0.z = float(0.0);
    }
    u_xlatb36 = 0.0<_LensFlareScreenSpaceParams1.x;
    if(u_xlatb36){
        u_xlat1.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
        u_xlat2 = vs_TEXCOORD0.xyxy * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
        u_xlat25.xy = max(abs(u_xlat2.xy), vec2(5.96046448e-08, 5.96046448e-08));
        u_xlat25.xy = u_xlat25.xy * u_xlat25.xy;
        u_xlat25.xy = min(u_xlat25.xy, vec2(1.0, 1.0));
        u_xlat36 = u_xlat25.y + u_xlat25.x;
        u_xlat36 = max(u_xlat36, 5.96046448e-08);
        u_xlat36 = u_xlat36 * u_xlat36;
        u_xlat36 = min(u_xlat36, 1.0);
        u_xlat36 = u_xlat36 + -1.0;
        u_xlat36 = _LensFlareScreenSpaceParams2.x * u_xlat36 + 1.0;
        u_xlat37 = max(abs(_LensFlareScreenSpaceParams3.y), 5.96046448e-08);
        u_xlat37 = log2(u_xlat37);
        u_xlatb2 = 0.0<_LensFlareScreenSpaceParams3.z;
        u_xlat14 = dot(u_xlat2.zw, u_xlat2.zw);
        u_xlat3 = vec4(u_xlat14) * u_xlat2.zwzw;
        u_xlat3 = u_xlat3 * _LensFlareScreenSpaceParams3.zzzz;
        u_xlatb14.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), _LensFlareScreenSpaceParams1.zyww).xyz;
        u_xlat4.xy = (-_BloomTexture_TexelSize.xy) * vec2(0.5, 0.5) + vec2(1.0, 1.0);
        u_xlat28.xy = (-_ScreenSize.zw) * vec2(0.5, 0.5) + vec2(1.0, 1.0);
        u_xlat5.xyz = _LensFlareScreenSpaceParams1.zyw * vec3(0.100000001, 0.100000001, 0.100000001);
        u_xlat6.x = float(0.0);
        u_xlat6.y = float(0.0);
        u_xlat6.z = float(0.0);
        u_xlat7.x = float(0.0);
        u_xlat7.y = float(0.0);
        u_xlat7.z = float(0.0);
        u_xlat8.x = float(0.0);
        u_xlat8.y = float(0.0);
        u_xlat8.z = float(0.0);
        u_xlati41 = 0;
        while(true){
            u_xlat42 = float(u_xlati41);
            u_xlatb43 = u_xlat42>=_LensFlareScreenSpaceParams3.x;
            if(u_xlatb43){break;}
            u_xlat43 = u_xlat42 + _LensFlareScreenSpaceParams2.y;
            u_xlat43 = max(abs(u_xlat43), 5.96046448e-08);
            u_xlat43 = log2(u_xlat43);
            u_xlat43 = u_xlat43 * _LensFlareScreenSpaceParams2.z;
            u_xlat43 = exp2(u_xlat43);
            u_xlat42 = u_xlat37 * u_xlat42;
            u_xlat42 = exp2(u_xlat42);
            if(u_xlatb14.x){
                u_xlat44 = u_xlat5.x * u_xlat42;
                u_xlatb9 = (-u_xlat43)<0.0;
                u_xlat21.x = float(1.0) / u_xlat43;
                u_xlat21.xy = u_xlat1.xy * u_xlat21.xx + vec2(0.5, 0.5);
                u_xlat10.xy = (-u_xlat21.xy) + vec2(1.0, 1.0);
                u_xlat9.xy = (bool(u_xlatb9)) ? u_xlat10.xy : u_xlat21.xy;
                if(u_xlatb2){
                    u_xlat33.xy = min(u_xlat4.xy, u_xlat9.xy);
                    u_xlat33.xy = u_xlat33.xy * _RTHandleScale.xy;
                    u_xlat10.x = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat33.xy, _GlobalMipBias.x).x;
                    u_xlat11 = u_xlat3 * vec4(-0.333333343, -0.333333343, -0.666666687, -0.666666687) + u_xlat9.xyxy;
                    u_xlat11 = min(u_xlat4.xyxy, u_xlat11);
                    u_xlat11 = u_xlat11 * _RTHandleScale.xyxy;
                    u_xlat10.y = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat11.xy, _GlobalMipBias.x).y;
                    u_xlat10.z = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat11.zw, _GlobalMipBias.x).z;
                } else {
                    u_xlat9.xy = min(u_xlat28.xy, u_xlat9.xy);
                    u_xlat9.xy = u_xlat9.xy * _RTHandleScale.xy;
                    u_xlat10.xyz = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat9.xy, _GlobalMipBias.x).xyz;
                }
                u_xlat9.xyz = u_xlat10.xyz * vec3(_LensFlareScreenSpaceTintColor.x, _LensFlareScreenSpaceTintColor.y, _LensFlareScreenSpaceTintColor.z);
                u_xlat6.xyz = u_xlat9.xyz * vec3(u_xlat44) + u_xlat6.xyz;
            }
            if(u_xlatb14.y){
                u_xlat44 = u_xlat5.y * u_xlat42;
                u_xlatb9 = u_xlat43!=1.0;
                u_xlat21.x = float(1.0) / u_xlat43;
                u_xlat21.xy = u_xlat1.xy * u_xlat21.xx + vec2(0.5, 0.5);
                u_xlat9.xy = (bool(u_xlatb9)) ? u_xlat21.xy : vs_TEXCOORD0.xy;
                if(u_xlatb2){
                    u_xlat33.xy = min(u_xlat4.xy, u_xlat9.xy);
                    u_xlat33.xy = u_xlat33.xy * _RTHandleScale.xy;
                    u_xlat10.x = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat33.xy, _GlobalMipBias.x).x;
                    u_xlat11 = u_xlat3 * vec4(-0.333333343, -0.333333343, -0.666666687, -0.666666687) + u_xlat9.xyxy;
                    u_xlat11 = min(u_xlat4.xyxy, u_xlat11);
                    u_xlat11 = u_xlat11 * _RTHandleScale.xyxy;
                    u_xlat10.y = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat11.xy, _GlobalMipBias.x).y;
                    u_xlat10.z = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat11.zw, _GlobalMipBias.x).z;
                } else {
                    u_xlat9.xy = min(u_xlat28.xy, u_xlat9.xy);
                    u_xlat9.xy = u_xlat9.xy * _RTHandleScale.xy;
                    u_xlat10.xyz = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat9.xy, _GlobalMipBias.x).xyz;
                }
                u_xlat9.xyz = u_xlat10.xyz * vec3(_LensFlareScreenSpaceTintColor.x, _LensFlareScreenSpaceTintColor.y, _LensFlareScreenSpaceTintColor.z);
                u_xlat7.xyz = u_xlat9.xyz * vec3(u_xlat44) + u_xlat7.xyz;
            }
            if(u_xlatb14.z){
                u_xlat42 = u_xlat5.z * u_xlat42;
                u_xlatb44 = (-u_xlat43)<0.0;
                u_xlat43 = float(1.0) / float(u_xlat43);
                u_xlat43 = u_xlat43 + u_xlat43;
                u_xlat9.xy = u_xlat1.xy * vec2(u_xlat43);
                u_xlat9.xy = u_xlat9.xy * _LensFlareScreenSpaceParams5.yz;
                u_xlat33.xy = max(abs(u_xlat9.xy), vec2(5.96046448e-08, 5.96046448e-08));
                u_xlat33.xy = u_xlat33.xy * u_xlat33.xy;
                u_xlat43 = u_xlat33.y + u_xlat33.x;
                u_xlat43 = sqrt(u_xlat43);
                u_xlat43 = u_xlat43 * 0.707106769;
                u_xlat43 = min(u_xlat43, 1.0);
                u_xlat9.z = u_xlat9.x / u_xlat9.y;
                u_xlatb45 = abs(u_xlat9.z)<1.0;
                u_xlat10.x = float(1.0) / abs(u_xlat9.z);
                u_xlat10.x = (u_xlatb45) ? abs(u_xlat9.z) : u_xlat10.x;
                u_xlat22 = u_xlat10.x * u_xlat10.x;
                u_xlat34 = u_xlat22 * 0.0872929022 + -0.301894993;
                u_xlat22 = u_xlat34 * u_xlat22 + 1.0;
                u_xlat34 = u_xlat10.x * u_xlat22;
                u_xlat10.x = (-u_xlat22) * u_xlat10.x + 1.57079637;
                u_xlat45 = (u_xlatb45) ? u_xlat34 : u_xlat10.x;
                u_xlatb21.xy = lessThan(u_xlat9.yzyy, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                u_xlat33.x = (u_xlatb21.y) ? (-u_xlat45) : u_xlat45;
                u_xlatb9 = u_xlat9.x>=0.0;
                u_xlat9.x = (u_xlatb9) ? 3.14159274 : -3.14159274;
                u_xlat21.x = u_xlatb21.x ? 1.0 : float(0.0);
                u_xlat9.x = u_xlat9.x * u_xlat21.x + u_xlat33.x;
                u_xlat9.x = u_xlat9.x * 0.159154937 + 0.5;
                u_xlat9.x = clamp(u_xlat9.x, 0.0, 1.0);
                u_xlat9.x = (-u_xlat9.x) + 1.0;
                u_xlat33.x = (-u_xlat43) + 1.0;
                u_xlat9.y = (u_xlatb44) ? u_xlat33.x : u_xlat43;
                if(u_xlatb2){
                    u_xlat33.xy = min(u_xlat4.xy, u_xlat9.xy);
                    u_xlat33.xy = u_xlat33.xy * _RTHandleScale.xy;
                    u_xlat10.x = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat33.xy, _GlobalMipBias.x).x;
                    u_xlat11 = u_xlat3 * vec4(-0.333333343, -0.333333343, -0.666666687, -0.666666687) + u_xlat9.xyxy;
                    u_xlat11 = min(u_xlat4.xyxy, u_xlat11);
                    u_xlat11 = u_xlat11 * _RTHandleScale.xyxy;
                    u_xlat10.y = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat11.xy, _GlobalMipBias.x).y;
                    u_xlat10.z = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat11.zw, _GlobalMipBias.x).z;
                } else {
                    u_xlat9.xy = min(u_xlat28.xy, u_xlat9.xy);
                    u_xlat9.xy = u_xlat9.xy * _RTHandleScale.xy;
                    u_xlat10.xyz = texture(sampler2D(_BloomTexture, sampler_LinearClamp), u_xlat9.xy, _GlobalMipBias.x).xyz;
                }
                u_xlat9.xyz = u_xlat10.xyz * vec3(_LensFlareScreenSpaceTintColor.x, _LensFlareScreenSpaceTintColor.y, _LensFlareScreenSpaceTintColor.z);
                u_xlat8.xyz = u_xlat9.xyz * vec3(u_xlat42) + u_xlat8.xyz;
            }
            u_xlati41 = u_xlati41 + 1;
        }
        u_xlat1.xyw = u_xlat6.xyz + u_xlat7.xyz;
        u_xlat2.xyz = u_xlat25.xxx * u_xlat8.xyz;
        u_xlat1.xyz = u_xlat1.xyw * vec3(u_xlat36) + u_xlat2.xyz;
    } else {
        u_xlat1.x = float(0.0);
        u_xlat1.y = float(0.0);
        u_xlat1.z = float(0.0);
    }
    u_xlat0.xyz = u_xlat0.xyz + u_xlat1.xyz;
    u_xlat0.w = 1.0;
    SV_Target0 = u_xlat0 * _LensFlareScreenSpaceParams1.xxxx;
    return;
}

