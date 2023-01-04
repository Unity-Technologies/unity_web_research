#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
const int UNITY_RUNTIME_INSTANCING_ARRAY_SIZE = 2;

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
layout(set = 0, binding = 0, std140) uniform VGlobals {
	vec4 _WorldSpaceLightPos0;
	vec4 unity_LightShadowBias;
	mat4x4 unity_MatrixVP;
};
layout(set = 0, binding = 1, std140) uniform UnityDrawCallInfo {
	int unity_BaseInstanceID;
	int unity_InstanceCount;
};
struct unity_Builtins0Array_Type {
	mat4x4 unity_ObjectToWorldArray;
	mat4x4 unity_WorldToObjectArray;
};
layout(set = 0, binding = 2, std140) uniform UnityInstancing_PerDraw0 {
	unity_Builtins0Array_Type unity_Builtins0Array[UNITY_RUNTIME_INSTANCING_ARRAY_SIZE];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
vec4 u_xlat0;
int u_xlati0;
vec4 u_xlat1;
vec3 u_xlat2;
bool u_xlatb3;
float u_xlat6;
float u_xlat9;
void main()
{
    u_xlati0 = gl_InstanceIndex + unity_BaseInstanceID;
    u_xlati0 = u_xlati0 << 3;
    u_xlat1 = in_POSITION0.yyyy * unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[1];
    u_xlat1 = unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[0] * in_POSITION0.xxxx + u_xlat1;
    u_xlat1 = unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[2] * in_POSITION0.zzzz + u_xlat1;
    u_xlat1 = unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[3] * in_POSITION0.wwww + u_xlat1;
    u_xlatb3 = unity_LightShadowBias.z!=0.0;
    if(u_xlatb3){
        u_xlat2.x = dot(in_NORMAL0.xyz, unity_Builtins0Array[u_xlati0 / 8].unity_WorldToObjectArray[0].xyz);
        u_xlat2.y = dot(in_NORMAL0.xyz, unity_Builtins0Array[u_xlati0 / 8].unity_WorldToObjectArray[1].xyz);
        u_xlat2.z = dot(in_NORMAL0.xyz, unity_Builtins0Array[u_xlati0 / 8].unity_WorldToObjectArray[2].xyz);
        u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
        u_xlat0.x = inversesqrt(u_xlat0.x);
        u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
        u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
        u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
        u_xlat9 = inversesqrt(u_xlat9);
        u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
        u_xlat9 = dot(u_xlat0.xyz, u_xlat2.xyz);
        u_xlat9 = (-u_xlat9) * u_xlat9 + 1.0;
        u_xlat9 = sqrt(u_xlat9);
        u_xlat9 = u_xlat9 * unity_LightShadowBias.z;
        u_xlat1.xyz = (-u_xlat0.xyz) * vec3(u_xlat9) + u_xlat1.xyz;
    }
    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
    u_xlat1.x = unity_LightShadowBias.x / u_xlat0.w;
    u_xlat1.x = min(u_xlat1.x, 0.0);
    u_xlat1.x = max(u_xlat1.x, -1.0);
    u_xlat6 = u_xlat0.z + u_xlat1.x;
    u_xlat1.x = min(u_xlat0.w, u_xlat6);
    u_xlat1.x = (-u_xlat6) + u_xlat1.x;
    gl_Position.z = unity_LightShadowBias.y * u_xlat1.x + u_xlat6;
    gl_Position.xyw = u_xlat0.xyw;
    return;
}

