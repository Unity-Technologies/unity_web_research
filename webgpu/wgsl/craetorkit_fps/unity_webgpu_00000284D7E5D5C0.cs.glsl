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
	vec4 _ScaleOffsetRes;
};
layout(set = 0, binding = 0) uniform highp texture2D _Source;
 struct _HistogramBuffer_origX0X_type {
	uint[1] value;
};

layout(set = 0, binding = 1, std430) buffer _HistogramBuffer_origX0X {
	_HistogramBuffer_origX0X_type _HistogramBuffer_origX0X_buf[];
};
shared struct {
	uint value[1];
} TGSM0[128];
layout(local_size_x = 16, local_size_y = 16, local_size_z = 1) in;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_LinearClamp;
void main()
{
uvec2 u_xlatu0;
vec3 u_xlat1;
uvec2 u_xlatu1;
int u_xlati4;
bool u_xlatb4;
vec2 u_xlat5;
bvec2 u_xlatb5;
float u_xlat6;
uint u_xlatu6;
bool u_xlatb6;
    u_xlatu0.x = gl_LocalInvocationID.y * 16u + gl_LocalInvocationID.x;
    u_xlatb4 = u_xlatu0.x<128u;
    if(u_xlatb4){
        TGSM0[u_xlatu0.x].value[(0 >> 2)] = 0u;
    }
    u_xlat1.xy = vec2(gl_GlobalInvocationID.xy);
    u_xlat1.xy = u_xlat1.xy + u_xlat1.xy;
    //memoryBarrierShared;
    barrier();
    u_xlatb5.xy = lessThan(u_xlat1.xyxy, _ScaleOffsetRes.zwzw).xy;
    u_xlatb6 = u_xlatb5.y && u_xlatb5.x;
    if(u_xlatb6){
        u_xlat1.xy = u_xlat1.xy / _ScaleOffsetRes.zw;
        u_xlat5.xy = u_xlat1.xy + vec2(-0.5, -0.5);
        u_xlat6 = dot(abs(u_xlat5.xy), abs(u_xlat5.xy));
        u_xlat6 = (-u_xlat6) + 1.0;
        u_xlat6 = max(u_xlat6, 0.0);
        u_xlat6 = u_xlat6 * u_xlat6;
        u_xlat6 = u_xlat6 * 64.0;
        u_xlatu6 = uint(u_xlat6);
        u_xlat1.xyz = textureLod(sampler2D(_Source, sampler_LinearClamp), u_xlat1.xy, 0.0).xyz;
        u_xlat1.x = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
        u_xlat1.x = log2(u_xlat1.x);
        u_xlat1.x = u_xlat1.x * _ScaleOffsetRes.x + _ScaleOffsetRes.y;
        u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
        u_xlat1.x = u_xlat1.x * 127.0;
        u_xlatu1.x = uint(u_xlat1.x);
        u_xlatu1.y = 0u;
        atomicAdd(TGSM0[u_xlatu1.x].value[u_xlatu1.y >> 2u], u_xlatu6);
    }
    //memoryBarrierShared;
    barrier();
    if(u_xlatb4){
        u_xlati4 = int(TGSM0[u_xlatu0.x].value[(0 >> 2) + 0]);
        u_xlatu0.y = 0u;
        atomicAdd(_HistogramBuffer_origX0X_buf[u_xlatu0.x].value[u_xlatu0.y >> 2u], uint(u_xlati4));
    }
    return;
}

