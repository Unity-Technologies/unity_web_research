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
	vec4 _Metrics;
};
layout(set = 0, binding = 0) uniform highp texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _AreaTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _SearchTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec2 vs_TEXCOORD1;
layout(location = 2) in highp  vec4 vs_TEXCOORD2;
layout(location = 3) in highp  vec4 vs_TEXCOORD3;
layout(location = 4) in highp  vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
bvec4 u_xlatb2;
vec4 u_xlat3;
bvec4 u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
bool u_xlatb6;
vec3 u_xlat7;
bvec3 u_xlatb7;
vec3 u_xlat8;
vec2 u_xlat13;
bool u_xlatb13;
vec2 u_xlat14;
bool u_xlatb14;
vec2 u_xlat15;
bool u_xlatb15;
float u_xlat18;
bool u_xlatb18;
float u_xlat19;
bool u_xlatb19;
float u_xlat20;
bool u_xlatb21;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_LinearClamp;
void main()
{
    u_xlat0.xy = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xy;
    u_xlatb6 = 0.0<u_xlat0.y;
    if(u_xlatb6){
        u_xlatb6 = 0.0<u_xlat0.x;
        if(u_xlatb6){
            u_xlat1.xy = _Metrics.xy * vec2(-1.0, 1.0);
            u_xlat1.z = 1.0;
            u_xlat2.xy = vs_TEXCOORD0.xy;
            u_xlat6.x = 0.0;
            u_xlat2.z = -1.0;
            u_xlat3.x = 1.0;
            while(true){
                u_xlatb18 = u_xlat2.z<7.0;
                u_xlatb19 = 0.899999976<u_xlat3.x;
                u_xlatb18 = u_xlatb18 && u_xlatb19;
                if(!u_xlatb18){break;}
                u_xlat2.xyz = u_xlat1.xyz + u_xlat2.xyz;
                u_xlat6.xy = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).yx;
                u_xlat3.x = dot(u_xlat6.yx, vec2(0.5, 0.5));
            }
            u_xlatb6 = 0.899999976<u_xlat6.x;
            u_xlat6.x = u_xlatb6 ? 1.0 : float(0.0);
            u_xlat1.x = u_xlat6.x + u_xlat2.z;
        } else {
            u_xlat1.x = 0.0;
            u_xlat3.x = 0.0;
        }
        u_xlat6.xy = _Metrics.xy * vec2(1.0, -1.0);
        u_xlat6.z = 1.0;
        u_xlat2.yz = vs_TEXCOORD0.xy;
        u_xlat2.x = float(-1.0);
        u_xlat20 = float(1.0);
        while(true){
            u_xlatb15 = u_xlat2.x<7.0;
            u_xlatb21 = 0.899999976<u_xlat20;
            u_xlatb15 = u_xlatb21 && u_xlatb15;
            if(!u_xlatb15){break;}
            u_xlat2.xyz = u_xlat6.zxy + u_xlat2.xyz;
            u_xlat15.xy = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.yz, 0.0).xy;
            u_xlat20 = dot(u_xlat15.xy, vec2(0.5, 0.5));
        }
        u_xlat3.y = u_xlat20;
        u_xlat6.x = u_xlat1.x + u_xlat2.x;
        u_xlatb6 = 2.0<u_xlat6.x;
        if(u_xlatb6){
            u_xlat1.y = (-u_xlat1.x) + 0.25;
            u_xlat1.zw = u_xlat2.xx * vec2(1.0, -1.0) + vec2(0.0, -0.25);
            u_xlat2 = u_xlat1.yxzw * _Metrics.xyxy + vs_TEXCOORD0.xyxy;
            u_xlat2 = _Metrics.xyxy * vec4(-1.0, 0.0, 1.0, 0.0) + u_xlat2;
            u_xlat6.xy = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).xy;
            u_xlat7.xz = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.zw, 0.0).xy;
            u_xlat6.z = u_xlat7.x;
            u_xlat2.xy = u_xlat6.xz * vec2(5.0, 5.0) + vec2(-3.75, -3.75);
            u_xlat6.xz = u_xlat6.xz * abs(u_xlat2.xy);
            u_xlat6.xz = roundEven(u_xlat6.xz);
            u_xlat8.x = roundEven(u_xlat6.y);
            u_xlat8.z = roundEven(u_xlat7.z);
            u_xlat6.xy = u_xlat8.xz * vec2(2.0, 2.0) + u_xlat6.xz;
            u_xlatb7.xz = greaterThanEqual(u_xlat3.xxyy, vec4(0.899999976, 0.0, 0.899999976, 0.899999976)).xz;
            {
                vec3 hlslcc_movcTemp = u_xlat6;
                hlslcc_movcTemp.x = (u_xlatb7.x) ? float(0.0) : u_xlat6.x;
                hlslcc_movcTemp.y = (u_xlatb7.z) ? float(0.0) : u_xlat6.y;
                u_xlat6 = hlslcc_movcTemp;
            }
            u_xlat6.xy = u_xlat6.xy * vec2(20.0, 20.0) + u_xlat1.xz;
            u_xlat6.xy = u_xlat6.xy * vec2(0.00625000009, 0.0017857143) + vec2(0.503125012, 0.000892857148);
            u_xlat6.xy = textureLod(sampler2D(_AreaTexture, sampler_LinearClamp), u_xlat6.xy, 0.0).xy;
        } else {
            u_xlat6.x = float(0.0);
            u_xlat6.y = float(0.0);
        }
        u_xlat18 = _Metrics.x * 0.25 + vs_TEXCOORD0.x;
        u_xlat1.xy = (-_Metrics.xy);
        u_xlat1.z = 1.0;
        u_xlat8.x = u_xlat18;
        u_xlat8.y = vs_TEXCOORD0.y;
        u_xlat2.x = float(1.0);
        u_xlat8.z = float(-1.0);
        while(true){
            u_xlatb19 = u_xlat8.z<7.0;
            u_xlatb3.x = 0.899999976<u_xlat2.x;
            u_xlatb19 = u_xlatb19 && u_xlatb3.x;
            if(!u_xlatb19){break;}
            u_xlat8.xyz = u_xlat1.xyz + u_xlat8.xyz;
            u_xlat3.xy = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat8.xy, 0.0).xy;
            u_xlat19 = u_xlat3.x * 5.0 + -3.75;
            u_xlat19 = abs(u_xlat19) * u_xlat3.x;
            u_xlat4.x = roundEven(u_xlat19);
            u_xlat4.y = roundEven(u_xlat3.y);
            u_xlat2.x = dot(u_xlat4.xy, vec2(0.5, 0.5));
        }
        u_xlat1.x = u_xlat8.z;
        u_xlat14.xy = _Metrics.xy * vec2(1.0, 0.0) + vs_TEXCOORD0.xy;
        u_xlat19 = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat14.xy, 0.0).x;
        u_xlatb19 = 0.0<u_xlat19;
        if(u_xlatb19){
            u_xlat3.xy = _Metrics.xy;
            u_xlat3.z = 1.0;
            u_xlat4.x = u_xlat18;
            u_xlat4.y = vs_TEXCOORD0.y;
            u_xlat4.z = -1.0;
            u_xlat2.y = float(1.0);
            u_xlat14.x = float(0.0);
            while(true){
                u_xlatb19 = u_xlat4.z<7.0;
                u_xlatb21 = 0.899999976<u_xlat2.y;
                u_xlatb19 = u_xlatb19 && u_xlatb21;
                if(!u_xlatb19){break;}
                u_xlat4.xyz = u_xlat3.xyz + u_xlat4.xyz;
                u_xlat5.xy = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xy, 0.0).xy;
                u_xlat19 = u_xlat5.x * 5.0 + -3.75;
                u_xlat19 = abs(u_xlat19) * u_xlat5.x;
                u_xlat14.y = roundEven(u_xlat19);
                u_xlat14.x = roundEven(u_xlat5.y);
                u_xlat2.y = dot(u_xlat14.yx, vec2(0.5, 0.5));
            }
            u_xlatb18 = 0.899999976<u_xlat14.x;
            u_xlat18 = u_xlatb18 ? 1.0 : float(0.0);
            u_xlat1.z = u_xlat18 + u_xlat4.z;
        } else {
            u_xlat1.z = 0.0;
            u_xlat2.y = 0.0;
        }
        u_xlat18 = u_xlat1.z + u_xlat1.x;
        u_xlatb18 = 2.0<u_xlat18;
        if(u_xlatb18){
            u_xlat1.y = (-u_xlat1.x);
            u_xlat3 = u_xlat1.yyzz * _Metrics.xyxy + vs_TEXCOORD0.xyxy;
            u_xlat4 = _Metrics.xyxy * vec4(-1.0, 0.0, 0.0, -1.0) + u_xlat3.xyxy;
            u_xlat5.x = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xy, 0.0).y;
            u_xlat5.z = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.zw, 0.0).x;
            u_xlat7.xz = _Metrics.xy * vec2(1.0, 0.0) + u_xlat3.zw;
            u_xlat5.yw = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat7.xz, 0.0).yx;
            u_xlat7.xz = u_xlat5.xy * vec2(2.0, 2.0) + u_xlat5.zw;
            u_xlatb2.xy = greaterThanEqual(u_xlat2.xyxx, vec4(0.899999976, 0.899999976, 0.0, 0.0)).xy;
            {
                vec3 hlslcc_movcTemp = u_xlat7;
                hlslcc_movcTemp.x = (u_xlatb2.x) ? float(0.0) : u_xlat7.x;
                hlslcc_movcTemp.z = (u_xlatb2.y) ? float(0.0) : u_xlat7.z;
                u_xlat7 = hlslcc_movcTemp;
            }
            u_xlat1.xy = u_xlat7.xz * vec2(20.0, 20.0) + u_xlat1.xz;
            u_xlat1.xy = u_xlat1.xy * vec2(0.00625000009, 0.0017857143) + vec2(0.503125012, 0.000892857148);
            u_xlat1.xy = textureLod(sampler2D(_AreaTexture, sampler_LinearClamp), u_xlat1.xy, 0.0).xy;
            u_xlat6.xy = u_xlat6.xy + u_xlat1.yx;
        }
        u_xlatb18 = (-u_xlat6.y)==u_xlat6.x;
        if(u_xlatb18){
            u_xlat1.xy = vs_TEXCOORD2.xy;
            u_xlat1.z = 1.0;
            u_xlat2.x = 0.0;
            while(true){
                u_xlatb18 = vs_TEXCOORD4.x<u_xlat1.x;
                u_xlatb19 = 0.828100026<u_xlat1.z;
                u_xlatb18 = u_xlatb18 && u_xlatb19;
                u_xlatb19 = u_xlat2.x==0.0;
                u_xlatb18 = u_xlatb18 && u_xlatb19;
                if(!u_xlatb18){break;}
                u_xlat2.xy = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, 0.0).xy;
                u_xlat1.xy = _Metrics.xy * vec2(-2.0, -0.0) + u_xlat1.xy;
                u_xlat1.z = u_xlat2.y;
            }
            u_xlat2.yz = u_xlat1.xz;
            u_xlat1.xy = u_xlat2.xz * vec2(0.5, -2.0) + vec2(0.0078125, 2.03125);
            u_xlat18 = textureLod(sampler2D(_SearchTexture, sampler_LinearClamp), u_xlat1.xy, 0.0).w;
            u_xlat18 = u_xlat18 * -2.00787401 + 3.25;
            u_xlat1.x = _Metrics.x * u_xlat18 + u_xlat2.y;
            u_xlat1.y = vs_TEXCOORD3.y;
            u_xlat2.x = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, 0.0).x;
            u_xlat3.xy = vs_TEXCOORD2.zw;
            u_xlat3.z = 1.0;
            u_xlat4.x = 0.0;
            while(true){
                u_xlatb18 = u_xlat3.x<vs_TEXCOORD4.y;
                u_xlatb14 = 0.828100026<u_xlat3.z;
                u_xlatb18 = u_xlatb18 && u_xlatb14;
                u_xlatb14 = u_xlat4.x==0.0;
                u_xlatb18 = u_xlatb18 && u_xlatb14;
                if(!u_xlatb18){break;}
                u_xlat4.xy = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.xy, 0.0).xy;
                u_xlat3.xy = _Metrics.xy * vec2(2.0, 0.0) + u_xlat3.xy;
                u_xlat3.z = u_xlat4.y;
            }
            u_xlat4.yz = u_xlat3.xz;
            u_xlat14.xy = u_xlat4.xz * vec2(0.5, -2.0) + vec2(0.5234375, 2.03125);
            u_xlat18 = textureLod(sampler2D(_SearchTexture, sampler_LinearClamp), u_xlat14.xy, 0.0).w;
            u_xlat18 = u_xlat18 * -2.00787401 + 3.25;
            u_xlat1.z = (-_Metrics.x) * u_xlat18 + u_xlat4.y;
            u_xlat3 = _Metrics.zzzz * u_xlat1.zxzx + (-vs_TEXCOORD1.xxxx);
            u_xlat3 = roundEven(u_xlat3);
            u_xlat14.xy = sqrt(abs(u_xlat3.wz));
            u_xlat4.xy = _Metrics.xy * vec2(1.0, 0.0) + u_xlat1.zy;
            u_xlat2.y = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xy, 0.0).x;
            u_xlat2.xy = u_xlat2.xy * vec2(4.0, 4.0);
            u_xlat2.xy = roundEven(u_xlat2.xy);
            u_xlat2.xy = u_xlat2.xy * vec2(16.0, 16.0) + u_xlat14.xy;
            u_xlat2.xy = u_xlat2.xy * vec2(0.00625000009, 0.0017857143) + vec2(0.00312500005, 0.000892857148);
            u_xlat2.xy = textureLod(sampler2D(_AreaTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).xy;
            u_xlatb3 = greaterThanEqual(abs(u_xlat3), abs(u_xlat3.wzwz));
            u_xlat3.x = u_xlatb3.x ? float(1.0) : 0.0;
            u_xlat3.y = u_xlatb3.y ? float(1.0) : 0.0;
            u_xlat3.z = u_xlatb3.z ? float(0.75) : 0.0;
            u_xlat3.w = u_xlatb3.w ? float(0.75) : 0.0;
;
            u_xlat18 = u_xlat3.y + u_xlat3.x;
            u_xlat14.xy = u_xlat3.zw / vec2(u_xlat18);
            u_xlat1.w = vs_TEXCOORD0.y;
            u_xlat3.xy = _Metrics.xy * vec2(0.0, 1.0) + u_xlat1.xw;
            u_xlat18 = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.xy, 0.0).x;
            u_xlat18 = (-u_xlat14.x) * u_xlat18 + 1.0;
            u_xlat3.xy = u_xlat1.zw + _Metrics.xy;
            u_xlat7.x = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.xy, 0.0).x;
            u_xlat3.x = (-u_xlat14.y) * u_xlat7.x + u_xlat18;
            u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
            u_xlat1 = _Metrics.xyxy * vec4(0.0, -2.0, 1.0, -2.0) + u_xlat1.xwzw;
            u_xlat18 = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, 0.0).x;
            u_xlat18 = (-u_xlat14.x) * u_xlat18 + 1.0;
            u_xlat1.x = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.zw, 0.0).x;
            u_xlat3.y = (-u_xlat14.y) * u_xlat1.x + u_xlat18;
            u_xlat3.y = clamp(u_xlat3.y, 0.0, 1.0);
            SV_Target0.xy = u_xlat2.xy * u_xlat3.xy;
        } else {
            SV_Target0.xy = u_xlat6.xy;
            u_xlat0.x = 0.0;
        }
    } else {
        SV_Target0.xy = vec2(0.0, 0.0);
    }
    u_xlatb0 = 0.0<u_xlat0.x;
    if(u_xlatb0){
        u_xlat0.xy = vs_TEXCOORD3.xy;
        u_xlat0.z = 1.0;
        u_xlat1.x = 0.0;
        while(true){
            u_xlatb18 = vs_TEXCOORD4.z<u_xlat0.y;
            u_xlatb19 = 0.828100026<u_xlat0.z;
            u_xlatb18 = u_xlatb18 && u_xlatb19;
            u_xlatb19 = u_xlat1.x==0.0;
            u_xlatb18 = u_xlatb18 && u_xlatb19;
            if(!u_xlatb18){break;}
            u_xlat1.xy = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.xy, 0.0).yx;
            u_xlat0.xy = _Metrics.xy * vec2(-0.0, -2.0) + u_xlat0.xy;
            u_xlat0.z = u_xlat1.y;
        }
        u_xlat1.yz = u_xlat0.yz;
        u_xlat0.xy = u_xlat1.xz * vec2(0.5, -2.0) + vec2(0.0078125, 2.03125);
        u_xlat0.x = textureLod(sampler2D(_SearchTexture, sampler_LinearClamp), u_xlat0.xy, 0.0).w;
        u_xlat0.x = u_xlat0.x * -2.00787401 + 3.25;
        u_xlat0.x = _Metrics.y * u_xlat0.x + u_xlat1.y;
        u_xlat0.y = vs_TEXCOORD2.x;
        u_xlat1.x = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.yx, 0.0).y;
        u_xlat2.xy = vs_TEXCOORD3.zw;
        u_xlat2.z = 1.0;
        u_xlat3.x = 0.0;
        while(true){
            u_xlatb13 = u_xlat2.y<vs_TEXCOORD4.w;
            u_xlatb19 = 0.828100026<u_xlat2.z;
            u_xlatb13 = u_xlatb19 && u_xlatb13;
            u_xlatb19 = u_xlat3.x==0.0;
            u_xlatb13 = u_xlatb19 && u_xlatb13;
            if(!u_xlatb13){break;}
            u_xlat3.xy = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).yx;
            u_xlat2.xy = _Metrics.xy * vec2(0.0, 2.0) + u_xlat2.xy;
            u_xlat2.z = u_xlat3.y;
        }
        u_xlat3.yz = u_xlat2.yz;
        u_xlat13.xy = u_xlat3.xz * vec2(0.5, -2.0) + vec2(0.5234375, 2.03125);
        u_xlat13.x = textureLod(sampler2D(_SearchTexture, sampler_LinearClamp), u_xlat13.xy, 0.0).w;
        u_xlat13.x = u_xlat13.x * -2.00787401 + 3.25;
        u_xlat0.z = (-_Metrics.y) * u_xlat13.x + u_xlat3.y;
        u_xlat2 = _Metrics.wwww * u_xlat0.zxzx + (-vs_TEXCOORD1.yyyy);
        u_xlat2 = roundEven(u_xlat2);
        u_xlat13.xy = sqrt(abs(u_xlat2.wz));
        u_xlat3.xy = _Metrics.xy * vec2(0.0, 1.0) + u_xlat0.yz;
        u_xlat1.y = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.xy, 0.0).y;
        u_xlat1.xy = u_xlat1.xy * vec2(4.0, 4.0);
        u_xlat1.xy = roundEven(u_xlat1.xy);
        u_xlat1.xy = u_xlat1.xy * vec2(16.0, 16.0) + u_xlat13.xy;
        u_xlat1.xy = u_xlat1.xy * vec2(0.00625000009, 0.0017857143) + vec2(0.00312500005, 0.000892857148);
        u_xlat1.xy = textureLod(sampler2D(_AreaTexture, sampler_LinearClamp), u_xlat1.xy, 0.0).xy;
        u_xlatb2 = greaterThanEqual(abs(u_xlat2), abs(u_xlat2.wzwz));
        u_xlat2.x = u_xlatb2.x ? float(1.0) : 0.0;
        u_xlat2.y = u_xlatb2.y ? float(1.0) : 0.0;
        u_xlat2.z = u_xlatb2.z ? float(0.75) : 0.0;
        u_xlat2.w = u_xlatb2.w ? float(0.75) : 0.0;
;
        u_xlat6.x = u_xlat2.y + u_xlat2.x;
        u_xlat13.xy = u_xlat2.zw / u_xlat6.xx;
        u_xlat0.w = vs_TEXCOORD0.x;
        u_xlat2.xy = _Metrics.xy * vec2(1.0, 0.0) + u_xlat0.wx;
        u_xlat6.x = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).y;
        u_xlat6.x = (-u_xlat13.x) * u_xlat6.x + 1.0;
        u_xlat2.xy = u_xlat0.wz + _Metrics.xy;
        u_xlat2.x = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, 0.0).y;
        u_xlat14.x = (-u_xlat13.y) * u_xlat2.x + u_xlat6.x;
        u_xlat14.x = clamp(u_xlat14.x, 0.0, 1.0);
        u_xlat0 = _Metrics.xyxy * vec4(-2.0, 0.0, -2.0, 1.0) + u_xlat0.wxwz;
        u_xlat0.x = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.xy, 0.0).y;
        u_xlat0.x = (-u_xlat13.x) * u_xlat0.x + 1.0;
        u_xlat6.x = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.zw, 0.0).y;
        u_xlat14.y = (-u_xlat13.y) * u_xlat6.x + u_xlat0.x;
        u_xlat14.y = clamp(u_xlat14.y, 0.0, 1.0);
        SV_Target0.zw = u_xlat1.xy * u_xlat14.xy;
    } else {
        SV_Target0.zw = vec2(0.0, 0.0);
    }
    return;
}

