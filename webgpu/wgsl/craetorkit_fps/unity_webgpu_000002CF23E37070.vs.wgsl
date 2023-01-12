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

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_445 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlati6 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_21 : i32 = u_xlati0;
  u_xlati6 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati6;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati6;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati6;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati6;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_77 : i32 = u_xlati6;
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
  let x_115 : vec4<f32> = x_96.unity_MatrixVP[3i];
  let x_116 : vec4<f32> = u_xlat2;
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_115 * vec4<f32>(x_116.w, x_116.w, x_116.w, x_116.w)) + x_119);
  let x_126 : vec4<f32> = u_xlat3;
  gl_Position = x_126;
  let x_132 : vec4<f32> = in_TEXCOORD0;
  let x_136 : vec4<f32> = x_96.x_MainTex_ST;
  let x_140 : vec4<f32> = x_96.x_MainTex_ST;
  let x_142 : vec2<f32> = ((vec2<f32>(x_132.x, x_132.y) * vec2<f32>(x_136.x, x_136.y)) + vec2<f32>(x_140.z, x_140.w));
  let x_143 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_142.x, x_142.y, x_143.z, x_143.w);
  let x_145 : vec4<f32> = in_TEXCOORD0;
  let x_149 : vec4<f32> = x_96.x_Normal_ST;
  let x_153 : vec4<f32> = x_96.x_Normal_ST;
  let x_155 : vec2<f32> = ((vec2<f32>(x_145.x, x_145.y) * vec2<f32>(x_149.x, x_149.y)) + vec2<f32>(x_153.z, x_153.w));
  let x_156 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_156.x, x_156.y, x_155.x, x_155.y);
  let x_161 : vec4<f32> = in_TANGENT0;
  let x_163 : i32 = u_xlati6;
  let x_166 : vec4<f32> = x_42.unity_Builtins0Array[(x_163 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat4 = (vec3<f32>(x_161.y, x_161.y, x_161.y) * vec3<f32>(x_166.y, x_166.z, x_166.x));
  let x_169 : i32 = u_xlati6;
  let x_172 : vec4<f32> = x_42.unity_Builtins0Array[(x_169 / 8i)].unity_ObjectToWorldArray[0i];
  let x_174 : vec4<f32> = in_TANGENT0;
  let x_177 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_172.y, x_172.z, x_172.x) * vec3<f32>(x_174.x, x_174.x, x_174.x)) + x_177);
  let x_179 : i32 = u_xlati6;
  let x_182 : vec4<f32> = x_42.unity_Builtins0Array[(x_179 / 8i)].unity_ObjectToWorldArray[2i];
  let x_184 : vec4<f32> = in_TANGENT0;
  let x_187 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_182.y, x_182.z, x_182.x) * vec3<f32>(x_184.z, x_184.z, x_184.z)) + x_187);
  let x_191 : vec3<f32> = u_xlat4;
  let x_192 : vec3<f32> = u_xlat4;
  u_xlat12 = dot(x_191, x_192);
  let x_194 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_194);
  let x_196 : f32 = u_xlat12;
  let x_198 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_196, x_196, x_196) * x_198);
  let x_203 : vec3<f32> = in_NORMAL0;
  let x_204 : i32 = u_xlati6;
  let x_207 : vec4<f32> = x_42.unity_Builtins0Array[(x_204 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat5.x = dot(x_203, vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_212 : vec3<f32> = in_NORMAL0;
  let x_213 : i32 = u_xlati6;
  let x_216 : vec4<f32> = x_42.unity_Builtins0Array[(x_213 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat5.y = dot(x_212, vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_220 : vec3<f32> = in_NORMAL0;
  let x_221 : i32 = u_xlati6;
  let x_224 : vec4<f32> = x_42.unity_Builtins0Array[(x_221 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat5.z = dot(x_220, vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_230 : vec4<f32> = u_xlat5;
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_237 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat6;
  let x_242 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_240.x, x_240.x, x_240.x, x_240.x) * vec4<f32>(x_242.x, x_242.y, x_242.z, x_242.z));
  let x_245 : vec3<f32> = u_xlat4;
  let x_246 : vec4<f32> = u_xlat5;
  u_xlat6 = (x_245 * vec3<f32>(x_246.w, x_246.x, x_246.y));
  let x_249 : vec4<f32> = u_xlat5;
  let x_251 : vec3<f32> = u_xlat4;
  let x_254 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_249.y, x_249.w, x_249.x) * vec3<f32>(x_251.y, x_251.z, x_251.x)) + -(x_254));
  let x_261 : f32 = in_TANGENT0.w;
  let x_264 : f32 = x_96.unity_WorldTransformParams.w;
  u_xlat19 = (x_261 * x_264);
  let x_266 : vec3<f32> = u_xlat6;
  let x_267 : f32 = u_xlat19;
  u_xlat6 = (x_266 * vec3<f32>(x_267, x_267, x_267));
  let x_272 : f32 = u_xlat6.x;
  vs_TEXCOORD1.y = x_272;
  let x_276 : f32 = u_xlat4.z;
  vs_TEXCOORD1.x = x_276;
  let x_279 : f32 = u_xlat5.x;
  vs_TEXCOORD1.z = x_279;
  let x_282 : f32 = u_xlat1.x;
  vs_TEXCOORD1.w = x_282;
  let x_286 : f32 = u_xlat4.x;
  vs_TEXCOORD2.x = x_286;
  let x_290 : f32 = u_xlat4.y;
  vs_TEXCOORD3.x = x_290;
  let x_293 : f32 = u_xlat1.y;
  vs_TEXCOORD2.w = x_293;
  let x_296 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_296;
  let x_299 : f32 = u_xlat6.y;
  vs_TEXCOORD2.y = x_299;
  let x_302 : f32 = u_xlat6.z;
  vs_TEXCOORD3.y = x_302;
  let x_305 : f32 = u_xlat5.y;
  vs_TEXCOORD2.z = x_305;
  let x_308 : f32 = u_xlat5.w;
  vs_TEXCOORD3.z = x_308;
  let x_312 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_312;
  let x_314 : f32 = u_xlat2.y;
  let x_316 : f32 = x_96.unity_MatrixV[1i].z;
  u_xlat6.x = (x_314 * x_316);
  let x_320 : f32 = x_96.unity_MatrixV[0i].z;
  let x_322 : f32 = u_xlat2.x;
  let x_325 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_320 * x_322) + x_325);
  let x_329 : f32 = x_96.unity_MatrixV[2i].z;
  let x_331 : f32 = u_xlat2.z;
  let x_334 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_329 * x_331) + x_334);
  let x_338 : f32 = x_96.unity_MatrixV[3i].z;
  let x_340 : f32 = u_xlat2.w;
  let x_343 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_338 * x_340) + x_343);
  let x_349 : f32 = u_xlat6.x;
  vs_TEXCOORD4.z = -(x_349);
  let x_353 : vec4<f32> = u_xlat2;
  let x_356 : vec4<f32> = x_96.unity_MatrixVP[1i];
  u_xlat6 = (vec3<f32>(x_353.y, x_353.y, x_353.y) * vec3<f32>(x_356.x, x_356.y, x_356.w));
  let x_360 : vec4<f32> = x_96.unity_MatrixVP[0i];
  let x_362 : vec4<f32> = u_xlat2;
  let x_365 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_360.x, x_360.y, x_360.w) * vec3<f32>(x_362.x, x_362.x, x_362.x)) + x_365);
  let x_368 : vec4<f32> = x_96.unity_MatrixVP[2i];
  let x_370 : vec4<f32> = u_xlat2;
  let x_373 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_368.x, x_368.y, x_368.w) * vec3<f32>(x_370.z, x_370.z, x_370.z)) + x_373);
  let x_376 : vec4<f32> = x_96.unity_MatrixVP[3i];
  let x_378 : vec4<f32> = u_xlat2;
  let x_381 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_376.x, x_376.y, x_376.w) * vec3<f32>(x_378.w, x_378.w, x_378.w)) + x_381);
  let x_384 : f32 = u_xlat6.z;
  vs_TEXCOORD4.w = x_384;
  u_xlat1.x = 0.5f;
  u_xlat1.z = 0.5f;
  let x_390 : f32 = x_96.x_ProjectionParams.x;
  u_xlat1.y = x_390;
  let x_392 : vec3<f32> = u_xlat6;
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec3<f32> = (x_392 * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat1;
  let x_400 : vec4<f32> = u_xlat3;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_400.x, x_400.y, x_400.w));
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_406 : vec4<f32> = u_xlat3;
  let x_407 : vec2<f32> = vec2<f32>(x_406.z, x_406.w);
  let x_408 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_408.x, x_408.y, x_407.x, x_407.y);
  let x_411 : f32 = u_xlat2.y;
  u_xlat2.w = (x_411 * 0.5f);
  let x_414 : vec4<f32> = u_xlat2;
  let x_416 : vec4<f32> = u_xlat2;
  let x_418 : vec2<f32> = (vec2<f32>(x_414.z, x_414.z) + vec2<f32>(x_416.x, x_416.w));
  let x_419 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
  let x_422 : f32 = u_xlat5.y;
  let x_424 : f32 = u_xlat5.y;
  u_xlat6.x = (x_422 * x_424);
  let x_428 : f32 = u_xlat5.x;
  let x_430 : f32 = u_xlat5.x;
  let x_433 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_428 * x_430) + -(x_433));
  let x_437 : vec4<f32> = u_xlat5;
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat2 = (vec4<f32>(x_437.y, x_437.w, x_437.z, x_437.x) * x_439);
  let x_446 : i32 = u_xlati0;
  let x_449 : vec4<f32> = x_445.unity_Builtins2Array[(x_446 / 7i)].unity_SHBrArray;
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_449, x_450);
  let x_453 : i32 = u_xlati0;
  let x_456 : vec4<f32> = x_445.unity_Builtins2Array[(x_453 / 7i)].unity_SHBgArray;
  let x_457 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_456, x_457);
  let x_460 : i32 = u_xlati0;
  let x_463 : vec4<f32> = x_445.unity_Builtins2Array[(x_460 / 7i)].unity_SHBbArray;
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_463, x_464);
  let x_469 : i32 = u_xlati0;
  let x_473 : vec4<f32> = x_445.unity_Builtins2Array[(x_469 / 7i)].unity_SHCArray;
  let x_475 : vec3<f32> = u_xlat6;
  let x_478 : vec4<f32> = u_xlat3;
  vs_TEXCOORD5 = ((vec3<f32>(x_473.x, x_473.y, x_473.z) * vec3<f32>(x_475.x, x_475.x, x_475.x)) + vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_482 : f32 = u_xlat1.y;
  u_xlat1.w = (x_482 * 0.5f);
  let x_485 : vec4<f32> = u_xlat1;
  let x_487 : vec4<f32> = u_xlat1;
  let x_489 : vec2<f32> = (vec2<f32>(x_485.z, x_485.z) + vec2<f32>(x_487.x, x_487.w));
  let x_490 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_497 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_497);
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
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(7) @interpolate(flat)
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD7, vs_TEXCOORD5, vs_SV_InstanceID0);
}

