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

type Arr_1 = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr_1,
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

type Arr_2 = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr_2,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlati7 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(17) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(16) var<uniform> x_98 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var<uniform> x_339 : UnityInstancing_PerDraw2;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

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
  u_xlati7 = (x_21 << bitcast<u32>(3i));
  let x_24 : i32 = u_xlati0;
  u_xlati0 = (x_24 * 7i);
  let x_33 : vec4<f32> = in_POSITION0;
  let x_43 : i32 = u_xlati7;
  let x_49 : vec4<f32> = x_42.unity_Builtins0Array[(x_43 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_49);
  let x_51 : i32 = u_xlati7;
  let x_54 : vec4<f32> = x_42.unity_Builtins0Array[(x_51 / 8i)].unity_ObjectToWorldArray[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_60 : i32 = u_xlati7;
  let x_64 : vec4<f32> = x_42.unity_Builtins0Array[(x_60 / 8i)].unity_ObjectToWorldArray[2i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.z, x_65.z, x_65.z, x_65.z)) + x_68);
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : i32 = u_xlati7;
  let x_75 : vec4<f32> = x_42.unity_Builtins0Array[(x_72 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_71 + x_75);
  let x_77 : i32 = u_xlati7;
  let x_81 : vec4<f32> = x_42.unity_Builtins0Array[(x_77 / 8i)].unity_ObjectToWorldArray[3i];
  let x_83 : vec4<f32> = in_POSITION0;
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec3<f32> = ((vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(x_83.w, x_83.w, x_83.w)) + vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_92 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = x_98.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_92.y, x_92.y, x_92.y, x_92.y) * x_100);
  let x_103 : vec4<f32> = x_98.unity_MatrixVP[0i];
  let x_104 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_103 * vec4<f32>(x_104.x, x_104.x, x_104.x, x_104.x)) + x_107);
  let x_110 : vec4<f32> = x_98.unity_MatrixVP[2i];
  let x_111 : vec4<f32> = u_xlat2;
  let x_114 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_110 * vec4<f32>(x_111.z, x_111.z, x_111.z, x_111.z)) + x_114);
  let x_117 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_118 : vec4<f32> = u_xlat2;
  let x_121 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_117 * vec4<f32>(x_118.w, x_118.w, x_118.w, x_118.w)) + x_121);
  let x_128 : vec4<f32> = u_xlat2;
  gl_Position = x_128;
  let x_132 : vec4<f32> = in_TANGENT0;
  let x_134 : i32 = u_xlati7;
  let x_137 : vec4<f32> = x_42.unity_Builtins0Array[(x_134 / 8i)].unity_ObjectToWorldArray[1i];
  let x_139 : vec3<f32> = (vec3<f32>(x_132.y, x_132.y, x_132.y) * vec3<f32>(x_137.y, x_137.z, x_137.x));
  let x_140 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_142 : i32 = u_xlati7;
  let x_145 : vec4<f32> = x_42.unity_Builtins0Array[(x_142 / 8i)].unity_ObjectToWorldArray[0i];
  let x_147 : vec4<f32> = in_TANGENT0;
  let x_150 : vec4<f32> = u_xlat3;
  let x_152 : vec3<f32> = ((vec3<f32>(x_145.y, x_145.z, x_145.x) * vec3<f32>(x_147.x, x_147.x, x_147.x)) + vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_155 : i32 = u_xlati7;
  let x_158 : vec4<f32> = x_42.unity_Builtins0Array[(x_155 / 8i)].unity_ObjectToWorldArray[2i];
  let x_160 : vec4<f32> = in_TANGENT0;
  let x_163 : vec4<f32> = u_xlat3;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.y, x_158.z, x_158.x) * vec3<f32>(x_160.z, x_160.z, x_160.z)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_170 : vec4<f32> = u_xlat3;
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat14 = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : f32 = u_xlat14;
  u_xlat14 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat14;
  let x_179 : vec4<f32> = u_xlat3;
  let x_181 : vec3<f32> = (vec3<f32>(x_177, x_177, x_177) * vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_187 : vec3<f32> = in_NORMAL0;
  let x_188 : i32 = u_xlati7;
  let x_191 : vec4<f32> = x_42.unity_Builtins0Array[(x_188 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat4.x = dot(x_187, vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_196 : vec3<f32> = in_NORMAL0;
  let x_197 : i32 = u_xlati7;
  let x_200 : vec4<f32> = x_42.unity_Builtins0Array[(x_197 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat4.y = dot(x_196, vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_204 : vec3<f32> = in_NORMAL0;
  let x_205 : i32 = u_xlati7;
  let x_208 : vec4<f32> = x_42.unity_Builtins0Array[(x_205 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat4.z = dot(x_204, vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_215 : vec4<f32> = u_xlat4;
  let x_217 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_222 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_222);
  let x_225 : vec3<f32> = u_xlat7;
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_225.x, x_225.x, x_225.x, x_225.x) * vec4<f32>(x_227.x, x_227.y, x_227.z, x_227.z));
  let x_230 : vec4<f32> = u_xlat3;
  let x_232 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.w, x_232.x, x_232.y));
  let x_235 : vec4<f32> = u_xlat4;
  let x_237 : vec4<f32> = u_xlat3;
  let x_240 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_235.y, x_235.w, x_235.x) * vec3<f32>(x_237.y, x_237.z, x_237.x)) + -(x_240));
  let x_247 : f32 = in_TANGENT0.w;
  let x_251 : f32 = x_98.unity_WorldTransformParams.w;
  u_xlat22 = (x_247 * x_251);
  let x_253 : vec3<f32> = u_xlat7;
  let x_254 : f32 = u_xlat22;
  u_xlat7 = (x_253 * vec3<f32>(x_254, x_254, x_254));
  let x_259 : f32 = u_xlat7.x;
  vs_TEXCOORD0.y = x_259;
  let x_263 : f32 = u_xlat3.z;
  vs_TEXCOORD0.x = x_263;
  let x_266 : f32 = u_xlat4.x;
  vs_TEXCOORD0.z = x_266;
  let x_269 : f32 = u_xlat1.x;
  vs_TEXCOORD0.w = x_269;
  let x_273 : f32 = u_xlat3.x;
  vs_TEXCOORD1.x = x_273;
  let x_277 : f32 = u_xlat3.y;
  vs_TEXCOORD2.x = x_277;
  let x_280 : f32 = u_xlat1.y;
  vs_TEXCOORD1.w = x_280;
  let x_283 : f32 = u_xlat7.y;
  vs_TEXCOORD1.y = x_283;
  let x_286 : f32 = u_xlat7.z;
  vs_TEXCOORD2.y = x_286;
  let x_289 : f32 = u_xlat4.y;
  vs_TEXCOORD1.z = x_289;
  let x_292 : f32 = u_xlat1.z;
  vs_TEXCOORD2.w = x_292;
  let x_295 : f32 = u_xlat4.w;
  vs_TEXCOORD2.z = x_295;
  let x_299 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_299;
  let x_305 : vec2<f32> = in_TEXCOORD0;
  let x_307 : vec4<f32> = x_98.x_MainTex_ST;
  let x_311 : vec4<f32> = x_98.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_305 * vec2<f32>(x_307.x, x_307.y)) + vec2<f32>(x_311.z, x_311.w));
  let x_315 : f32 = u_xlat4.y;
  let x_317 : f32 = u_xlat4.y;
  u_xlat7.x = (x_315 * x_317);
  let x_321 : f32 = u_xlat4.x;
  let x_323 : f32 = u_xlat4.x;
  let x_326 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_321 * x_323) + -(x_326));
  let x_330 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat3 = (vec4<f32>(x_330.y, x_330.w, x_330.z, x_330.x) * x_332);
  let x_340 : i32 = u_xlati0;
  let x_343 : vec4<f32> = x_339.unity_Builtins2Array[(x_340 / 7i)].unity_SHBrArray;
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_343, x_344);
  let x_347 : i32 = u_xlati0;
  let x_351 : vec4<f32> = x_339.unity_Builtins2Array[(x_347 / 7i)].unity_SHBgArray;
  let x_352 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_351, x_352);
  let x_355 : i32 = u_xlati0;
  let x_359 : vec4<f32> = x_339.unity_Builtins2Array[(x_355 / 7i)].unity_SHBbArray;
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_359, x_360);
  let x_364 : i32 = u_xlati0;
  let x_367 : vec4<f32> = x_339.unity_Builtins2Array[(x_364 / 7i)].unity_SHCArray;
  let x_369 : vec3<f32> = u_xlat7;
  let x_372 : vec4<f32> = u_xlat5;
  let x_374 : vec3<f32> = ((vec3<f32>(x_367.x, x_367.y, x_367.z) * vec3<f32>(x_369.x, x_369.x, x_369.x)) + vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat1;
  let x_381 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_377.y, x_377.y, x_377.y, x_377.y)) + x_381);
  let x_383 : vec4<f32> = u_xlat4;
  let x_385 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_383.y, x_383.y, x_383.y, x_383.y) * x_385);
  let x_387 : vec4<f32> = u_xlat3;
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_387 * x_388);
  let x_391 : vec4<f32> = u_xlat1;
  let x_395 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat6 = (-(vec4<f32>(x_391.x, x_391.x, x_391.x, x_391.x)) + x_395);
  let x_397 : vec4<f32> = u_xlat1;
  let x_401 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_397.z, x_397.z, x_397.z, x_397.z)) + x_401);
  let x_403 : vec4<f32> = u_xlat6;
  let x_404 : vec4<f32> = u_xlat4;
  let x_407 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_403 * vec4<f32>(x_404.x, x_404.x, x_404.x, x_404.x)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  let x_410 : vec4<f32> = u_xlat4;
  let x_413 : vec4<f32> = u_xlat5;
  u_xlat4 = ((x_409 * vec4<f32>(x_410.w, x_410.w, x_410.z, x_410.w)) + x_413);
  let x_415 : vec4<f32> = u_xlat6;
  let x_416 : vec4<f32> = u_xlat6;
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_415 * x_416) + x_418);
  let x_420 : vec4<f32> = u_xlat1;
  let x_421 : vec4<f32> = u_xlat1;
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_420 * x_421) + x_423);
  let x_425 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_425, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat3 = inverseSqrt(x_429);
  let x_431 : vec4<f32> = u_xlat1;
  let x_433 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_431 * x_433) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_438 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_438);
  let x_440 : vec4<f32> = u_xlat3;
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_440 * x_441);
  let x_443 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_443, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_447 : vec4<f32> = u_xlat1;
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_447 * x_448);
  let x_450 : vec4<f32> = u_xlat1;
  let x_453 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_455 : vec3<f32> = (vec3<f32>(x_450.y, x_450.y, x_450.y) * vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_461 : vec4<f32> = u_xlat1;
  let x_464 : vec4<f32> = u_xlat3;
  let x_466 : vec3<f32> = ((vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(x_461.x, x_461.x, x_461.x)) + vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_470 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_472 : vec4<f32> = u_xlat1;
  let x_475 : vec4<f32> = u_xlat3;
  let x_477 : vec3<f32> = ((vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_472.z, x_472.z, x_472.z)) + vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_483 : vec4<f32> = u_xlat1;
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = ((vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_483.w, x_483.w, x_483.w)) + vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_493 : vec4<f32> = u_xlat0;
  let x_495 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_493.x, x_493.y, x_493.z) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_499 : f32 = u_xlat2.y;
  let x_501 : f32 = x_98.x_ProjectionParams.x;
  u_xlat0.x = (x_499 * x_501);
  let x_505 : f32 = u_xlat0.x;
  u_xlat0.w = (x_505 * 0.5f);
  let x_509 : vec4<f32> = u_xlat2;
  let x_512 : vec2<f32> = (vec2<f32>(x_509.x, x_509.w) * vec2<f32>(0.5f, 0.5f));
  let x_513 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_512.x, x_513.y, x_512.y, x_513.w);
  let x_516 : vec4<f32> = u_xlat2;
  let x_517 : vec2<f32> = vec2<f32>(x_516.z, x_516.w);
  let x_518 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_518.x, x_518.y, x_517.x, x_517.y);
  let x_520 : vec4<f32> = u_xlat0;
  let x_522 : vec4<f32> = u_xlat0;
  let x_524 : vec2<f32> = (vec2<f32>(x_520.z, x_520.z) + vec2<f32>(x_522.x, x_522.w));
  let x_525 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_529 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_529);
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
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(7) @interpolate(flat)
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6, vs_SV_InstanceID0);
}

