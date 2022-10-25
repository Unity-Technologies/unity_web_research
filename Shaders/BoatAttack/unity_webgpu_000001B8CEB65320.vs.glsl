#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#extension GL_EXT_samplerless_texture_functions : require

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
layout(set = 1, binding = 1, std140) uniform VGlobals {
	vec4 _ScaledScreenParams;
	vec4 _ZBufferParams;
	vec4 _FlareData0;
	vec4 _FlareData1;
	vec4 _FlareData2;
	vec4 _FlareData3;
};
layout(set = 0, binding = 2) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _FlareOcclusionRemapTex;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
layout(location = 1) out highp float vs_TEXCOORD1;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_FlareOcclusionRemapTex;
int int_bitfieldInsert(int base, int insert, int offset, int bits) {
    uint mask = ~(uint(0xffffffffu) << uint(bits)) << uint(offset);
    return int((uint(base) & ~mask) | ((uint(insert) << uint(offset)) & mask));
}

void main()
{
vec2 u_xlat0;
bool u_xlatb0;
vec2 u_xlat1;
uvec4 u_xlatu1;
bvec2 u_xlatb1;
vec2 u_xlat2;
vec3 u_xlat3;
uint u_xlatu3;
vec2 u_xlat4;
vec2 u_xlat5;
int u_xlati5;
uvec3 u_xlatu5;
bool u_xlatb5;
vec2 u_xlat6;
bvec3 u_xlatb8;
int u_xlati10;
bvec2 u_xlatb10;
vec2 u_xlat12;
int u_xlati12;
uint u_xlatu12;
bvec2 u_xlatb12;
float u_xlat15;
int u_xlati15;
uint u_xlatu15;
bool u_xlatb15;
float u_xlat17;
int u_xlati17;
uint u_xlatu17;
bool u_xlatb17;
    u_xlat0.x = _ScaledScreenParams.y / _ScaledScreenParams.x;
    u_xlatu5.x = uint(gl_VertexIndex) >> (1u & uint(0x1F));
    u_xlati10 = int(uint(gl_VertexIndex) & 1u);
    u_xlati15 = (-u_xlati10) + (-int(u_xlatu5.x));
    u_xlati15 = u_xlati15 + 1;
    u_xlatu5.z = uint(u_xlati15) & 1u;
    u_xlat1.xy = vec2(u_xlatu5.xz);
    u_xlat6.xy = u_xlat1.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlati5 = u_xlati10 + int(u_xlatu5.x);
    u_xlatu5.x = uint(u_xlati5) & 1u;
    u_xlat5.x = float(u_xlatu5.x);
    vs_TEXCOORD0.y = (-u_xlat5.x) + 1.0;
    vs_TEXCOORD0.x = (-u_xlat1.x) + 1.0;
    u_xlat5.xy = u_xlat6.xy * _FlareData2.zw;
    u_xlat15 = u_xlat5.y * _FlareData0.y;
    u_xlat15 = u_xlat5.x * _FlareData0.x + (-u_xlat15);
    u_xlat1.y = dot(u_xlat5.yx, _FlareData0.xy);
    u_xlat1.x = u_xlat0.x * u_xlat15;
    u_xlat0.xy = u_xlat1.xy + _FlareData2.xy;
    gl_Position.xy = u_xlat0.xy + _FlareData0.zw;
    u_xlatb0 = _FlareData1.y!=0.0;
    if(u_xlatb0){
        u_xlat0.x = float(1.0) / _FlareData1.y;
        u_xlatu5.x = uint(_FlareData1.y);
        u_xlatb10.x = 0.0<_FlareData3.x;
        u_xlatu1.z = uint(0u);
        u_xlatu1.w = uint(0u);
        u_xlat2.x = 0.0;
        for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu5.x ; u_xlatu_loop_1++)
        {
            u_xlati12 = int(u_xlatu_loop_1) << (1 & int(0x1F));
            u_xlati12 = int(uint(u_xlati12) ^ 2747636419u);
            u_xlatu12 = uint(u_xlati12) * 2654435769u;
            u_xlatu17 = u_xlatu12 >> (16u & uint(0x1F));
            u_xlati12 = int(u_xlatu17 ^ u_xlatu12);
            u_xlatu12 = uint(u_xlati12) * 2654435769u;
            u_xlatu17 = u_xlatu12 >> (16u & uint(0x1F));
            u_xlati12 = int(u_xlatu17 ^ u_xlatu12);
            u_xlatu12 = uint(u_xlati12) * 2654435769u;
            u_xlat12.x = float(u_xlatu12);
            u_xlat12.x = u_xlat12.x * 2.32830644e-10;
            u_xlati17 = int(int_bitfieldInsert(1, int(u_xlatu_loop_1), 1 & int(0x1F), 31));
            u_xlati17 = int(uint(u_xlati17) ^ 2747636419u);
            u_xlatu17 = uint(u_xlati17) * 2654435769u;
            u_xlatu3 = u_xlatu17 >> (16u & uint(0x1F));
            u_xlati17 = int(u_xlatu17 ^ u_xlatu3);
            u_xlatu17 = uint(u_xlati17) * 2654435769u;
            u_xlatu3 = u_xlatu17 >> (16u & uint(0x1F));
            u_xlati17 = int(u_xlatu17 ^ u_xlatu3);
            u_xlatu17 = uint(u_xlati17) * 2654435769u;
            u_xlat17 = float(u_xlatu17);
            u_xlat12.x = sqrt(u_xlat12.x);
            u_xlat17 = u_xlat17 * 1.46291812e-09;
            u_xlat3.x = sin(u_xlat17);
            u_xlat4.x = cos(u_xlat17);
            u_xlat4.y = u_xlat3.x;
            u_xlat12.xy = u_xlat12.xx * u_xlat4.xy;
            u_xlat12.xy = _FlareData1.xx * u_xlat12.xy + _FlareData2.xy;
            u_xlat3.xy = u_xlat12.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
            u_xlat3.z = (-u_xlat3.y) + 1.0;
            u_xlatb12.xy = greaterThanEqual(u_xlat3.xzxz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
            u_xlatb12.x = u_xlatb12.y && u_xlatb12.x;
            u_xlatb8.xz = greaterThanEqual(vec4(1.0, 0.0, 1.0, 1.0), u_xlat3.xxzz).xz;
            u_xlatb17 = u_xlatb8.z && u_xlatb8.x;
            u_xlatb12.x = u_xlatb17 && u_xlatb12.x;
            if(u_xlatb12.x){
                u_xlat12.xy = u_xlat3.xz * _ScaledScreenParams.xy;
                u_xlatu1.xy = uvec2(u_xlat12.xy);
                u_xlat1.x = texelFetch(_CameraDepthTexture, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).x;
                u_xlat1.x = _ZBufferParams.z * u_xlat1.x + _ZBufferParams.w;
                u_xlat1.x = float(1.0) / u_xlat1.x;
                u_xlatb1.x = _FlareData1.z<u_xlat1.x;
                u_xlat6.x = u_xlat0.x + u_xlat2.x;
                u_xlat2.x = (u_xlatb1.x) ? u_xlat6.x : u_xlat2.x;
            } else {
                u_xlat1.x = u_xlat0.x + u_xlat2.x;
                u_xlat2.x = (u_xlatb10.x) ? u_xlat1.x : u_xlat2.x;
            }
        }
        u_xlat2.x = u_xlat2.x;
        u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
        u_xlat2.y = 0.0;
        u_xlat0.x = textureLod(sampler2D(_FlareOcclusionRemapTex, sampler_FlareOcclusionRemapTex), u_xlat2.xy, 0.0).x;
        u_xlat0.x = u_xlat0.x;
        u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    } else {
        u_xlat0.x = 1.0;
    }
    u_xlatb5 = _FlareData3.x<0.0;
    u_xlatb10.xy = lessThan(_FlareData2.xyxy, vec4(-1.0, -1.0, -1.0, -1.0)).xy;
    u_xlatb10.x = u_xlatb10.y || u_xlatb10.x;
    u_xlatb1.xy = greaterThanEqual(_FlareData2.xyxx, vec4(1.0, 1.0, 0.0, 0.0)).xy;
    u_xlatb15 = u_xlatb1.y || u_xlatb1.x;
    u_xlatb10.x = u_xlatb15 || u_xlatb10.x;
    u_xlatb5 = u_xlatb10.x && u_xlatb5;
    vs_TEXCOORD1 = (u_xlatb5) ? 0.0 : u_xlat0.x;
    gl_Position.zw = vec2(1.0, 1.0);
    return;
}

