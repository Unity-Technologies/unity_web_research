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
  unity_WorldTransformParams : vec4<f32>,
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

var<private> u_xlati4 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(15) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_96 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat8 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(0) @binding(2) var<uniform> x_333 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

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
  u_xlati4 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati4;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati4;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati4;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati4;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_77 : i32 = u_xlati4;
  let x_81 : vec4<f32> = x_42.unity_Builtins0Array[(x_77 / 8i)].unity_ObjectToWorldArray[3i];
  let x_83 : vec4<f32> = in_POSITION0;
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec3<f32> = ((vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(x_83.w, x_83.w, x_83.w)) + vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_92 : vec4<f32> = u_xlat2;
  let x_98 : vec4<f32> = x_96.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_92.y, x_92.y, x_92.y, x_92.y) * x_98);
  let x_101 : vec4<f32> = x_96.unity_MatrixVP[0i];
  let x_102 : vec4<f32> = u_xlat2;
  let x_105 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_101 * vec4<f32>(x_102.x, x_102.x, x_102.x, x_102.x)) + x_105);
  let x_108 : vec4<f32> = x_96.unity_MatrixVP[2i];
  let x_109 : vec4<f32> = u_xlat2;
  let x_112 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_108 * vec4<f32>(x_109.z, x_109.z, x_109.z, x_109.z)) + x_112);
  let x_120 : vec4<f32> = x_96.unity_MatrixVP[3i];
  let x_121 : vec4<f32> = u_xlat2;
  let x_124 : vec4<f32> = u_xlat3;
  gl_Position = ((x_120 * vec4<f32>(x_121.w, x_121.w, x_121.w, x_121.w)) + x_124);
  let x_129 : vec4<f32> = in_TANGENT0;
  let x_131 : i32 = u_xlati4;
  let x_134 : vec4<f32> = x_42.unity_Builtins0Array[(x_131 / 8i)].unity_ObjectToWorldArray[1i];
  let x_136 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_134.y, x_134.z, x_134.x));
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : i32 = u_xlati4;
  let x_142 : vec4<f32> = x_42.unity_Builtins0Array[(x_139 / 8i)].unity_ObjectToWorldArray[0i];
  let x_144 : vec4<f32> = in_TANGENT0;
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.y, x_142.z, x_142.x) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_152 : i32 = u_xlati4;
  let x_155 : vec4<f32> = x_42.unity_Builtins0Array[(x_152 / 8i)].unity_ObjectToWorldArray[2i];
  let x_157 : vec4<f32> = in_TANGENT0;
  let x_160 : vec4<f32> = u_xlat2;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.y, x_155.z, x_155.x) * vec3<f32>(x_157.z, x_157.z, x_157.z)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_167 : vec4<f32> = u_xlat2;
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat8 = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_172);
  let x_174 : f32 = u_xlat8;
  let x_176 : vec4<f32> = u_xlat2;
  let x_178 : vec3<f32> = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_183 : vec3<f32> = in_NORMAL0;
  let x_184 : i32 = u_xlati4;
  let x_187 : vec4<f32> = x_42.unity_Builtins0Array[(x_184 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat3.x = dot(x_183, vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_192 : vec3<f32> = in_NORMAL0;
  let x_193 : i32 = u_xlati4;
  let x_196 : vec4<f32> = x_42.unity_Builtins0Array[(x_193 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat3.y = dot(x_192, vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_200 : vec3<f32> = in_NORMAL0;
  let x_201 : i32 = u_xlati4;
  let x_204 : vec4<f32> = x_42.unity_Builtins0Array[(x_201 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat3.z = dot(x_200, vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_218 : f32 = u_xlat4.x;
  u_xlat4.x = inverseSqrt(x_218);
  let x_221 : vec3<f32> = u_xlat4;
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_221.x, x_221.x, x_221.x, x_221.x) * vec4<f32>(x_223.x, x_223.y, x_223.z, x_223.z));
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.w, x_228.x, x_228.y));
  let x_231 : vec4<f32> = u_xlat3;
  let x_233 : vec4<f32> = u_xlat2;
  let x_236 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_231.y, x_231.w, x_231.x) * vec3<f32>(x_233.y, x_233.z, x_233.x)) + -(x_236));
  let x_243 : f32 = in_TANGENT0.w;
  let x_246 : f32 = x_96.unity_WorldTransformParams.w;
  u_xlat13 = (x_243 * x_246);
  let x_248 : vec3<f32> = u_xlat4;
  let x_249 : f32 = u_xlat13;
  u_xlat4 = (x_248 * vec3<f32>(x_249, x_249, x_249));
  let x_254 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_254;
  let x_258 : f32 = u_xlat2.z;
  vs_TEXCOORD0.x = x_258;
  let x_261 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_261;
  let x_264 : f32 = u_xlat1.x;
  vs_TEXCOORD0.w = x_264;
  let x_268 : f32 = u_xlat2.x;
  vs_TEXCOORD1.x = x_268;
  let x_272 : f32 = u_xlat2.y;
  vs_TEXCOORD2.x = x_272;
  let x_275 : f32 = u_xlat1.y;
  vs_TEXCOORD1.w = x_275;
  let x_278 : f32 = u_xlat1.z;
  vs_TEXCOORD2.w = x_278;
  let x_281 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_281;
  let x_284 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_284;
  let x_287 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_287;
  let x_290 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_290;
  let x_294 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_294;
  let x_300 : vec2<f32> = in_TEXCOORD0;
  let x_302 : vec4<f32> = x_96.x_MainTex_ST;
  let x_306 : vec4<f32> = x_96.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_300 * vec2<f32>(x_302.x, x_302.y)) + vec2<f32>(x_306.z, x_306.w));
  let x_310 : f32 = u_xlat3.y;
  let x_312 : f32 = u_xlat3.y;
  u_xlat4.x = (x_310 * x_312);
  let x_316 : f32 = u_xlat3.x;
  let x_318 : f32 = u_xlat3.x;
  let x_321 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_316 * x_318) + -(x_321));
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_325.y, x_325.w, x_325.z, x_325.x) * x_327);
  let x_334 : i32 = u_xlati0;
  let x_337 : vec4<f32> = x_333.unity_Builtins2Array[(x_334 / 7i)].unity_SHBrArray;
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_337, x_338);
  let x_341 : i32 = u_xlati0;
  let x_345 : vec4<f32> = x_333.unity_Builtins2Array[(x_341 / 7i)].unity_SHBgArray;
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_345, x_346);
  let x_349 : i32 = u_xlati0;
  let x_353 : vec4<f32> = x_333.unity_Builtins2Array[(x_349 / 7i)].unity_SHBbArray;
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_353, x_354);
  let x_359 : i32 = u_xlati0;
  let x_363 : vec4<f32> = x_333.unity_Builtins2Array[(x_359 / 7i)].unity_SHCArray;
  let x_365 : vec3<f32> = u_xlat4;
  let x_368 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.x, x_365.x)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_376 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_376);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4, vs_SV_InstanceID0);
}

