let      UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct unity_Builtins0Array_Type {
  unity_ObjectToWorldArray : mat4x4<f32>,
  unity_WorldToObjectArray : mat4x4<f32>,
}

type Arr = array<unity_Builtins0Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw0 {
  unity_Builtins0Array : Arr,
}

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

struct unity_Builtins2Array_Type {
  unity_SHArArray : vec4<f32>,
  unity_SHAgArray : vec4<f32>,
  unity_SHAbArray : vec4<f32>,
  unity_SHBrArray : vec4<f32>,
  unity_SHBgArray : vec4<f32>,
  unity_SHBbArray : vec4<f32>,
  unity_SHCArray : vec4<f32>,
}

type Arr_1 = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr_1,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlati5 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(13) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(12) var<uniform> x_95 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(2) var<uniform> x_220 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_21 : i32 = u_xlati0;
  u_xlati5 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati5;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati5;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati5;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati5;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_80 : i32 = u_xlati5;
  let x_83 : vec4<f32> = x_42.unity_Builtins0Array[(x_80 / 8i)].unity_ObjectToWorldArray[3i];
  let x_85 : vec4<f32> = in_POSITION0;
  let x_88 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = ((vec3<f32>(x_83.x, x_83.y, x_83.z) * vec3<f32>(x_85.w, x_85.w, x_85.w)) + vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : vec4<f32> = u_xlat2;
  let x_97 : vec4<f32> = x_95.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_91.y, x_91.y, x_91.y, x_91.y) * x_97);
  let x_100 : vec4<f32> = x_95.unity_MatrixVP[0i];
  let x_101 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_100 * vec4<f32>(x_101.x, x_101.x, x_101.x, x_101.x)) + x_104);
  let x_107 : vec4<f32> = x_95.unity_MatrixVP[2i];
  let x_108 : vec4<f32> = u_xlat2;
  let x_111 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_107 * vec4<f32>(x_108.z, x_108.z, x_108.z, x_108.z)) + x_111);
  let x_114 : vec4<f32> = x_95.unity_MatrixVP[3i];
  let x_115 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_114 * vec4<f32>(x_115.w, x_115.w, x_115.w, x_115.w)) + x_118);
  let x_125 : vec4<f32> = u_xlat1;
  gl_Position = x_125;
  let x_130 : vec3<f32> = in_NORMAL0;
  let x_131 : i32 = u_xlati5;
  let x_134 : vec4<f32> = x_42.unity_Builtins0Array[(x_131 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat2.x = dot(x_130, vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_140 : vec3<f32> = in_NORMAL0;
  let x_141 : i32 = u_xlati5;
  let x_144 : vec4<f32> = x_42.unity_Builtins0Array[(x_141 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat2.y = dot(x_140, vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec3<f32> = in_NORMAL0;
  let x_149 : i32 = u_xlati5;
  let x_152 : vec4<f32> = x_42.unity_Builtins0Array[(x_149 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat2.z = dot(x_148, vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_159 : vec4<f32> = u_xlat2;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec3<f32>(x_159.x, x_159.y, x_159.z), vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_166 : f32 = u_xlat5.x;
  u_xlat5.x = inverseSqrt(x_166);
  let x_169 : vec3<f32> = u_xlat5;
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_169.x, x_169.x, x_169.x) * vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_175 : vec3<f32> = u_xlat5;
  vs_TEXCOORD0 = x_175;
  let x_178 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_178;
  let x_184 : vec2<f32> = in_TEXCOORD0;
  let x_186 : vec4<f32> = x_95.x_MainTex_ST;
  let x_190 : vec4<f32> = x_95.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_184 * vec2<f32>(x_186.x, x_186.y)) + vec2<f32>(x_190.z, x_190.w));
  let x_194 : f32 = u_xlat5.y;
  let x_196 : f32 = u_xlat5.y;
  u_xlat2.x = (x_194 * x_196);
  let x_200 : f32 = u_xlat5.x;
  let x_202 : f32 = u_xlat5.x;
  let x_205 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_200 * x_202) + -(x_205));
  let x_210 : vec3<f32> = u_xlat5;
  let x_212 : vec3<f32> = u_xlat5;
  u_xlat3 = (vec4<f32>(x_210.y, x_210.z, x_210.z, x_210.x) * vec4<f32>(x_212.x, x_212.y, x_212.z, x_212.z));
  let x_221 : i32 = u_xlati0;
  let x_224 : vec4<f32> = x_220.unity_Builtins2Array[(x_221 / 7i)].unity_SHBrArray;
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_224, x_225);
  let x_228 : i32 = u_xlati0;
  let x_232 : vec4<f32> = x_220.unity_Builtins2Array[(x_228 / 7i)].unity_SHBgArray;
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_232, x_233);
  let x_236 : i32 = u_xlati0;
  let x_240 : vec4<f32> = x_220.unity_Builtins2Array[(x_236 / 7i)].unity_SHBbArray;
  let x_241 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_240, x_241);
  let x_245 : i32 = u_xlati0;
  let x_249 : vec4<f32> = x_220.unity_Builtins2Array[(x_245 / 7i)].unity_SHCArray;
  let x_251 : vec4<f32> = u_xlat2;
  let x_254 : vec3<f32> = u_xlat4;
  vs_TEXCOORD3 = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251.x, x_251.x, x_251.x)) + x_254);
  let x_258 : f32 = u_xlat1.y;
  let x_261 : f32 = x_95.x_ProjectionParams.x;
  u_xlat0.x = (x_258 * x_261);
  let x_265 : f32 = u_xlat0.x;
  u_xlat0.w = (x_265 * 0.5f);
  let x_270 : vec4<f32> = u_xlat1;
  let x_273 : vec2<f32> = (vec2<f32>(x_270.x, x_270.w) * vec2<f32>(0.5f, 0.5f));
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_274.y, x_273.y, x_274.w);
  let x_277 : vec4<f32> = u_xlat1;
  let x_278 : vec2<f32> = vec2<f32>(x_277.z, x_277.w);
  let x_279 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_279.x, x_279.y, x_278.x, x_278.y);
  let x_281 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = u_xlat0;
  let x_285 : vec2<f32> = (vec2<f32>(x_281.z, x_281.z) + vec2<f32>(x_283.x, x_283.w));
  let x_286 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_285.x, x_285.y, x_286.z, x_286.w);
  let x_290 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_290);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5, vs_SV_InstanceID0);
}

