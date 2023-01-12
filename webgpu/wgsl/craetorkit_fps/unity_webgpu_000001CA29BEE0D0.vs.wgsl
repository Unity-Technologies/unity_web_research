const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
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
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_Normal_ST : vec4<f32>,
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

var<private> gl_InstanceIndex : i32;

@group(1) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_42 : UnityInstancing_PerDraw0;

@group(1) @binding(3) var<uniform> x_96 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_446 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlati5 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat10 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat16 : f32;
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
  let x_77 : i32 = u_xlati5;
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
  let x_131 : vec4<f32> = in_TEXCOORD0;
  let x_135 : vec4<f32> = x_96.x_MainTex_ST;
  let x_139 : vec4<f32> = x_96.x_MainTex_ST;
  let x_141 : vec2<f32> = ((vec2<f32>(x_131.x, x_131.y) * vec2<f32>(x_135.x, x_135.y)) + vec2<f32>(x_139.z, x_139.w));
  let x_142 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_141.x, x_141.y, x_142.z, x_142.w);
  let x_144 : vec4<f32> = in_TEXCOORD0;
  let x_148 : vec4<f32> = x_96.x_Normal_ST;
  let x_152 : vec4<f32> = x_96.x_Normal_ST;
  let x_154 : vec2<f32> = ((vec2<f32>(x_144.x, x_144.y) * vec2<f32>(x_148.x, x_148.y)) + vec2<f32>(x_152.z, x_152.w));
  let x_155 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_155.x, x_155.y, x_154.x, x_154.y);
  let x_158 : vec4<f32> = in_TANGENT0;
  let x_160 : i32 = u_xlati5;
  let x_163 : vec4<f32> = x_42.unity_Builtins0Array[(x_160 / 8i)].unity_ObjectToWorldArray[1i];
  let x_165 : vec3<f32> = (vec3<f32>(x_158.y, x_158.y, x_158.y) * vec3<f32>(x_163.y, x_163.z, x_163.x));
  let x_166 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : i32 = u_xlati5;
  let x_171 : vec4<f32> = x_42.unity_Builtins0Array[(x_168 / 8i)].unity_ObjectToWorldArray[0i];
  let x_173 : vec4<f32> = in_TANGENT0;
  let x_176 : vec4<f32> = u_xlat3;
  let x_178 : vec3<f32> = ((vec3<f32>(x_171.y, x_171.z, x_171.x) * vec3<f32>(x_173.x, x_173.x, x_173.x)) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : i32 = u_xlati5;
  let x_184 : vec4<f32> = x_42.unity_Builtins0Array[(x_181 / 8i)].unity_ObjectToWorldArray[2i];
  let x_186 : vec4<f32> = in_TANGENT0;
  let x_189 : vec4<f32> = u_xlat3;
  let x_191 : vec3<f32> = ((vec3<f32>(x_184.y, x_184.z, x_184.x) * vec3<f32>(x_186.z, x_186.z, x_186.z)) + vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_196 : vec4<f32> = u_xlat3;
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat10 = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_201);
  let x_203 : f32 = u_xlat10;
  let x_205 : vec4<f32> = u_xlat3;
  let x_207 : vec3<f32> = (vec3<f32>(x_203, x_203, x_203) * vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_213 : vec3<f32> = in_NORMAL0;
  let x_214 : i32 = u_xlati5;
  let x_217 : vec4<f32> = x_42.unity_Builtins0Array[(x_214 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat4.x = dot(x_213, vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_222 : vec3<f32> = in_NORMAL0;
  let x_223 : i32 = u_xlati5;
  let x_226 : vec4<f32> = x_42.unity_Builtins0Array[(x_223 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat4.y = dot(x_222, vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_230 : vec3<f32> = in_NORMAL0;
  let x_231 : i32 = u_xlati5;
  let x_234 : vec4<f32> = x_42.unity_Builtins0Array[(x_231 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat4.z = dot(x_230, vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_241 : vec4<f32> = u_xlat4;
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(vec3<f32>(x_241.x, x_241.y, x_241.z), vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_248 : f32 = u_xlat5.x;
  u_xlat5.x = inverseSqrt(x_248);
  let x_251 : vec3<f32> = u_xlat5;
  let x_253 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_251.x, x_251.x, x_251.x, x_251.x) * vec4<f32>(x_253.x, x_253.y, x_253.z, x_253.z));
  let x_256 : vec4<f32> = u_xlat3;
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.w, x_258.x, x_258.y));
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec4<f32> = u_xlat3;
  let x_266 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_261.y, x_261.w, x_261.x) * vec3<f32>(x_263.y, x_263.z, x_263.x)) + -(x_266));
  let x_273 : f32 = in_TANGENT0.w;
  let x_276 : f32 = x_96.unity_WorldTransformParams.w;
  u_xlat16 = (x_273 * x_276);
  let x_278 : vec3<f32> = u_xlat5;
  let x_279 : f32 = u_xlat16;
  u_xlat5 = (x_278 * vec3<f32>(x_279, x_279, x_279));
  let x_284 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_284;
  let x_288 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_288;
  let x_291 : f32 = u_xlat4.x;
  vs_TEXCOORD1.z = x_291;
  let x_294 : f32 = u_xlat1.x;
  vs_TEXCOORD1.w = x_294;
  let x_298 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_298;
  let x_302 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_302;
  let x_305 : f32 = u_xlat1.y;
  vs_TEXCOORD2.w = x_305;
  let x_308 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_308;
  let x_311 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_311;
  let x_314 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_314;
  let x_317 : f32 = u_xlat4.y;
  vs_TEXCOORD2.z = x_317;
  let x_320 : f32 = u_xlat4.w;
  vs_TEXCOORD3.z = x_320;
  let x_324 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_324;
  let x_326 : f32 = u_xlat2.y;
  let x_328 : f32 = x_96.unity_MatrixV[1i].z;
  u_xlat5.x = (x_326 * x_328);
  let x_332 : f32 = x_96.unity_MatrixV[0i].z;
  let x_334 : f32 = u_xlat2.x;
  let x_337 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_332 * x_334) + x_337);
  let x_341 : f32 = x_96.unity_MatrixV[2i].z;
  let x_343 : f32 = u_xlat2.z;
  let x_346 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_341 * x_343) + x_346);
  let x_350 : f32 = x_96.unity_MatrixV[3i].z;
  let x_352 : f32 = u_xlat2.w;
  let x_355 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_350 * x_352) + x_355);
  let x_361 : f32 = u_xlat5.x;
  vs_TEXCOORD4.z = -(x_361);
  let x_365 : vec4<f32> = u_xlat2;
  let x_368 : vec4<f32> = x_96.unity_MatrixVP[1i];
  u_xlat5 = (vec3<f32>(x_365.y, x_365.y, x_365.y) * vec3<f32>(x_368.x, x_368.y, x_368.w));
  let x_372 : vec4<f32> = x_96.unity_MatrixVP[0i];
  let x_374 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_372.x, x_372.y, x_372.w) * vec3<f32>(x_374.x, x_374.x, x_374.x)) + x_377);
  let x_380 : vec4<f32> = x_96.unity_MatrixVP[2i];
  let x_382 : vec4<f32> = u_xlat2;
  let x_385 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_380.x, x_380.y, x_380.w) * vec3<f32>(x_382.z, x_382.z, x_382.z)) + x_385);
  let x_388 : vec4<f32> = x_96.unity_MatrixVP[3i];
  let x_390 : vec4<f32> = u_xlat2;
  let x_393 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_388.x, x_388.y, x_388.w) * vec3<f32>(x_390.w, x_390.w, x_390.w)) + x_393);
  let x_395 : vec3<f32> = u_xlat5;
  let x_399 : vec2<f32> = (vec2<f32>(x_395.x, x_395.z) * vec2<f32>(0.5f, 0.5f));
  let x_400 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_399.x, x_400.y, x_399.y, x_400.w);
  let x_403 : f32 = u_xlat5.y;
  let x_405 : f32 = x_96.x_ProjectionParams.x;
  u_xlat5.x = (x_403 * x_405);
  let x_409 : f32 = u_xlat5.z;
  vs_TEXCOORD4.w = x_409;
  let x_412 : f32 = u_xlat5.x;
  u_xlat1.w = (x_412 * 0.5f);
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec4<f32> = u_xlat1;
  let x_419 : vec2<f32> = (vec2<f32>(x_415.z, x_415.z) + vec2<f32>(x_417.x, x_417.w));
  let x_420 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
  let x_423 : f32 = u_xlat4.y;
  let x_425 : f32 = u_xlat4.y;
  u_xlat5.x = (x_423 * x_425);
  let x_429 : f32 = u_xlat4.x;
  let x_431 : f32 = u_xlat4.x;
  let x_434 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_429 * x_431) + -(x_434));
  let x_438 : vec4<f32> = u_xlat4;
  let x_440 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_438.y, x_438.w, x_438.z, x_438.x) * x_440);
  let x_447 : i32 = u_xlati0;
  let x_450 : vec4<f32> = x_446.unity_Builtins2Array[(x_447 / 7i)].unity_SHBrArray;
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_450, x_451);
  let x_454 : i32 = u_xlati0;
  let x_457 : vec4<f32> = x_446.unity_Builtins2Array[(x_454 / 7i)].unity_SHBgArray;
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_457, x_458);
  let x_461 : i32 = u_xlati0;
  let x_464 : vec4<f32> = x_446.unity_Builtins2Array[(x_461 / 7i)].unity_SHBbArray;
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_464, x_465);
  let x_470 : i32 = u_xlati0;
  let x_474 : vec4<f32> = x_446.unity_Builtins2Array[(x_470 / 7i)].unity_SHCArray;
  let x_476 : vec3<f32> = u_xlat5;
  let x_479 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = ((vec3<f32>(x_474.x, x_474.y, x_474.z) * vec3<f32>(x_476.x, x_476.x, x_476.x)) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_488 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_488);
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
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_COLOR0_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD5, vs_SV_InstanceID0);
}

