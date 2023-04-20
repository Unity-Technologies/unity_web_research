#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#extension GL_EXT_samplerless_texture_functions : require

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
	int _ShadingMode;
	float _ExposureCompensation;
	vec4 _Color;
};
layout(set = 1, binding = 1, std140) uniform Props {
	float _Validity;
	float _DilationThreshold;
	float _TouchupedByVolume;
	vec4 _IndexInAtlas;
	vec4 _Offset;
	float _RelativeSize;
};
layout(set = 0, binding = 0) uniform mediump texture3D _APVResL0_L1Rx;
layout(set = 0, binding = 1) uniform mediump texture3D _APVResL1G_L1Ry;
layout(set = 0, binding = 2) uniform mediump texture3D _APVResL1B_L1Rz;
layout(location = 0) in highp  vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
uvec4 u_xlatu0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
bool u_xlatb6;
float u_xlat18;
void main()
{
    u_xlatb0 = _ShadingMode>=0;
    u_xlatb6 = 2>=_ShadingMode;
    u_xlatb0 = u_xlatb6 && u_xlatb0;
    if(u_xlatb0){
        u_xlatu0.xyz =  uvec3(ivec3(_IndexInAtlas.xyz));
        u_xlatu0.w = 0u;
        u_xlat1 = texelFetch(_APVResL0_L1Rx, ivec3(u_xlatu0.xyz), int(u_xlatu0.w));
        u_xlatb2 = _ShadingMode!=1;
        if(u_xlatb2){
            u_xlat2.x = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
            u_xlat2.x = inversesqrt(u_xlat2.x);
            u_xlat2.xyz = u_xlat2.xxx * vs_TEXCOORD1.xyz;
            u_xlat3 = texelFetch(_APVResL1G_L1Ry, ivec3(u_xlatu0.xyz), int(u_xlatu0.w));
            u_xlat0 = texelFetch(_APVResL1B_L1Rz, ivec3(u_xlatu0.xyz), int(u_xlatu0.w));
            u_xlat4.x = u_xlat1.w;
            u_xlat4.y = u_xlat3.w;
            u_xlat4.z = u_xlat0.w;
            u_xlat4.xyz = u_xlat4.xyz + vec3(-0.5, -0.5, -0.5);
            u_xlat5.xyz = u_xlat1.xyz * vec3(4.0, 4.0, 4.0);
            u_xlat4.xyz = u_xlat4.xyz * u_xlat5.xxx;
            u_xlat3.xyz = u_xlat3.xyz + vec3(-0.5, -0.5, -0.5);
            u_xlat3.xyz = u_xlat5.yyy * u_xlat3.xyz;
            u_xlat0.xyz = u_xlat0.xyz + vec3(-0.5, -0.5, -0.5);
            u_xlat0.xyz = u_xlat5.zzz * u_xlat0.xyz;
            u_xlat4.x = dot(u_xlat4.xyz, u_xlat2.xyz);
            u_xlat4.y = dot(u_xlat3.xyz, u_xlat2.xyz);
            u_xlat4.z = dot(u_xlat0.xyz, u_xlat2.xyz);
            u_xlat1.xyz = u_xlat1.xyz + u_xlat4.xyz;
        }
        u_xlat0.x = exp2(_ExposureCompensation);
        SV_Target0.xyz = u_xlat0.xxx * u_xlat1.xyz;
        SV_Target0.w = 1.0;
        return;
    } else {
        u_xlatb0 = _ShadingMode==5;
        if(u_xlatb0){
            u_xlatb0 = 0.0<_TouchupedByVolume;
            u_xlatb6 = _TouchupedByVolume<1.0;
            u_xlatb0 = u_xlatb6 && u_xlatb0;
            if(u_xlatb0){
                SV_Target0 = vec4(1.0, 0.0, 0.0, 1.0);
                return;
            }
            u_xlatu0.xyz =  uvec3(ivec3(_IndexInAtlas.xyz));
            u_xlat1.x = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
            u_xlat1.x = inversesqrt(u_xlat1.x);
            u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD1.xyz;
            u_xlatu0.w = 0u;
            u_xlat2 = texelFetch(_APVResL0_L1Rx, ivec3(u_xlatu0.xyz), int(u_xlatu0.w));
            u_xlat3 = texelFetch(_APVResL1G_L1Ry, ivec3(u_xlatu0.xyz), int(u_xlatu0.w));
            u_xlat0 = texelFetch(_APVResL1B_L1Rz, ivec3(u_xlatu0.xyz), int(u_xlatu0.w));
            u_xlat4.x = u_xlat2.w;
            u_xlat4.y = u_xlat3.w;
            u_xlat4.z = u_xlat0.w;
            u_xlat4.xyz = u_xlat4.xyz + vec3(-0.5, -0.5, -0.5);
            u_xlat5.xyz = u_xlat2.xyz * vec3(4.0, 4.0, 4.0);
            u_xlat4.xyz = u_xlat4.xyz * u_xlat5.xxx;
            u_xlat3.xyz = u_xlat3.xyz + vec3(-0.5, -0.5, -0.5);
            u_xlat3.xyz = u_xlat5.yyy * u_xlat3.xyz;
            u_xlat0.xyz = u_xlat0.xyz + vec3(-0.5, -0.5, -0.5);
            u_xlat0.xyz = u_xlat5.zzz * u_xlat0.xyz;
            u_xlat4.x = dot(u_xlat4.xyz, u_xlat1.xyz);
            u_xlat4.y = dot(u_xlat3.xyz, u_xlat1.xyz);
            u_xlat4.z = dot(u_xlat0.xyz, u_xlat1.xyz);
            u_xlat0.xyz = u_xlat2.xyz + u_xlat4.xyz;
            u_xlat18 = exp2(_ExposureCompensation);
            SV_Target0.xyz = vec3(u_xlat18) * u_xlat0.xyz;
            SV_Target0.w = 1.0;
            return;
        } else {
            u_xlatb0 = _ShadingMode==3;
            if(u_xlatb0){
                SV_Target0 = vec4(_Validity) * vec4(1.0, -1.0, 0.0, 0.0) + vec4(0.0, 1.0, 0.0, 1.0);
                return;
            } else {
                u_xlatb0 = _ShadingMode==4;
                if(u_xlatb0){
                    u_xlatb0 = _DilationThreshold<_Validity;
                    if(u_xlatb0){
                        SV_Target0 = vec4(1.0, 0.0, 0.0, 1.0);
                        return;
                    } else {
                        SV_Target0 = vec4(0.0, 1.0, 0.0, 1.0);
                        return;
                    }
                } else {
                    u_xlatb0 = _ShadingMode==6;
                    if(u_xlatb0){
                        SV_Target0 = vec4(_RelativeSize) * vec4(1.0, -1.0, 0.0, 0.0) + vec4(0.0, 1.0, 0.0, 1.0);
                        return;
                    }
                }
            }
        }
    }
    SV_Target0 = _Color;
    return;
}

