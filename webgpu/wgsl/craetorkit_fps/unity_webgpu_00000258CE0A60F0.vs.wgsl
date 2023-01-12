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

type Arr_1 = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr_1,
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

type Arr_2 = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr_2,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_42 : UnityInstancing_PerDraw0;

@group(1) @binding(3) var<uniform> x_98 : VGlobals;

var<private> vs_TEXCOORD6 : f32;

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

@group(1) @binding(2) var<uniform> x_453 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlati6 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
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
  u_xlat3 = ((x_117 * vec4<f32>(x_118.w, x_118.w, x_118.w, x_118.w)) + x_121);
  let x_128 : vec4<f32> = u_xlat3;
  gl_Position = x_128;
  let x_136 : f32 = u_xlat3.z;
  vs_TEXCOORD6 = x_136;
  let x_140 : vec4<f32> = in_TEXCOORD0;
  let x_144 : vec4<f32> = x_98.x_MainTex_ST;
  let x_148 : vec4<f32> = x_98.x_MainTex_ST;
  let x_150 : vec2<f32> = ((vec2<f32>(x_140.x, x_140.y) * vec2<f32>(x_144.x, x_144.y)) + vec2<f32>(x_148.z, x_148.w));
  let x_151 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_150.x, x_150.y, x_151.z, x_151.w);
  let x_153 : vec4<f32> = in_TEXCOORD0;
  let x_157 : vec4<f32> = x_98.x_Normal_ST;
  let x_161 : vec4<f32> = x_98.x_Normal_ST;
  let x_163 : vec2<f32> = ((vec2<f32>(x_153.x, x_153.y) * vec2<f32>(x_157.x, x_157.y)) + vec2<f32>(x_161.z, x_161.w));
  let x_164 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_164.x, x_164.y, x_163.x, x_163.y);
  let x_167 : vec4<f32> = in_TANGENT0;
  let x_169 : i32 = u_xlati6;
  let x_172 : vec4<f32> = x_42.unity_Builtins0Array[(x_169 / 8i)].unity_ObjectToWorldArray[1i];
  let x_174 : vec3<f32> = (vec3<f32>(x_167.y, x_167.y, x_167.y) * vec3<f32>(x_172.y, x_172.z, x_172.x));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : i32 = u_xlati6;
  let x_180 : vec4<f32> = x_42.unity_Builtins0Array[(x_177 / 8i)].unity_ObjectToWorldArray[0i];
  let x_182 : vec4<f32> = in_TANGENT0;
  let x_185 : vec4<f32> = u_xlat3;
  let x_187 : vec3<f32> = ((vec3<f32>(x_180.y, x_180.z, x_180.x) * vec3<f32>(x_182.x, x_182.x, x_182.x)) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : i32 = u_xlati6;
  let x_193 : vec4<f32> = x_42.unity_Builtins0Array[(x_190 / 8i)].unity_ObjectToWorldArray[2i];
  let x_195 : vec4<f32> = in_TANGENT0;
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec3<f32> = ((vec3<f32>(x_193.y, x_193.z, x_193.x) * vec3<f32>(x_195.z, x_195.z, x_195.z)) + vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_209);
  let x_211 : f32 = u_xlat12;
  let x_213 : vec4<f32> = u_xlat3;
  let x_215 : vec3<f32> = (vec3<f32>(x_211, x_211, x_211) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_221 : vec3<f32> = in_NORMAL0;
  let x_222 : i32 = u_xlati6;
  let x_225 : vec4<f32> = x_42.unity_Builtins0Array[(x_222 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat4.x = dot(x_221, vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_230 : vec3<f32> = in_NORMAL0;
  let x_231 : i32 = u_xlati6;
  let x_234 : vec4<f32> = x_42.unity_Builtins0Array[(x_231 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat4.y = dot(x_230, vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_238 : vec3<f32> = in_NORMAL0;
  let x_239 : i32 = u_xlati6;
  let x_242 : vec4<f32> = x_42.unity_Builtins0Array[(x_239 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat4.z = dot(x_238, vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_255 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_255);
  let x_258 : vec3<f32> = u_xlat6;
  let x_260 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_258.x, x_258.x, x_258.x, x_258.x) * vec4<f32>(x_260.x, x_260.y, x_260.z, x_260.z));
  let x_263 : vec4<f32> = u_xlat3;
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265.w, x_265.x, x_265.y));
  let x_268 : vec4<f32> = u_xlat4;
  let x_270 : vec4<f32> = u_xlat3;
  let x_273 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_268.y, x_268.w, x_268.x) * vec3<f32>(x_270.y, x_270.z, x_270.x)) + -(x_273));
  let x_280 : f32 = in_TANGENT0.w;
  let x_284 : f32 = x_98.unity_WorldTransformParams.w;
  u_xlat19 = (x_280 * x_284);
  let x_286 : vec3<f32> = u_xlat6;
  let x_287 : f32 = u_xlat19;
  u_xlat6 = (x_286 * vec3<f32>(x_287, x_287, x_287));
  let x_292 : f32 = u_xlat6.x;
  vs_TEXCOORD1.y = x_292;
  let x_295 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_295;
  let x_298 : f32 = u_xlat4.x;
  vs_TEXCOORD1.z = x_298;
  let x_301 : f32 = u_xlat1.x;
  vs_TEXCOORD1.w = x_301;
  let x_305 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_305;
  let x_309 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_309;
  let x_312 : f32 = u_xlat1.y;
  vs_TEXCOORD2.w = x_312;
  let x_315 : f32 = u_xlat6.y;
  vs_TEXCOORD2.y = x_315;
  let x_318 : f32 = u_xlat6.z;
  vs_TEXCOORD3.y = x_318;
  let x_321 : f32 = u_xlat4.y;
  vs_TEXCOORD2.z = x_321;
  let x_324 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_324;
  let x_327 : f32 = u_xlat4.w;
  vs_TEXCOORD3.z = x_327;
  let x_331 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_331;
  let x_333 : f32 = u_xlat2.y;
  let x_335 : f32 = x_98.unity_MatrixV[1i].z;
  u_xlat6.x = (x_333 * x_335);
  let x_339 : f32 = x_98.unity_MatrixV[0i].z;
  let x_341 : f32 = u_xlat2.x;
  let x_344 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_339 * x_341) + x_344);
  let x_348 : f32 = x_98.unity_MatrixV[2i].z;
  let x_350 : f32 = u_xlat2.z;
  let x_353 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_348 * x_350) + x_353);
  let x_357 : f32 = x_98.unity_MatrixV[3i].z;
  let x_359 : f32 = u_xlat2.w;
  let x_362 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_357 * x_359) + x_362);
  let x_368 : f32 = u_xlat6.x;
  vs_TEXCOORD4.z = -(x_368);
  let x_372 : vec4<f32> = u_xlat2;
  let x_375 : vec4<f32> = x_98.unity_MatrixVP[1i];
  u_xlat6 = (vec3<f32>(x_372.y, x_372.y, x_372.y) * vec3<f32>(x_375.x, x_375.y, x_375.w));
  let x_379 : vec4<f32> = x_98.unity_MatrixVP[0i];
  let x_381 : vec4<f32> = u_xlat2;
  let x_384 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_379.x, x_379.y, x_379.w) * vec3<f32>(x_381.x, x_381.x, x_381.x)) + x_384);
  let x_387 : vec4<f32> = x_98.unity_MatrixVP[2i];
  let x_389 : vec4<f32> = u_xlat2;
  let x_392 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_387.x, x_387.y, x_387.w) * vec3<f32>(x_389.z, x_389.z, x_389.z)) + x_392);
  let x_395 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_397 : vec4<f32> = u_xlat2;
  let x_400 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_395.x, x_395.y, x_395.w) * vec3<f32>(x_397.w, x_397.w, x_397.w)) + x_400);
  let x_402 : vec3<f32> = u_xlat6;
  let x_406 : vec2<f32> = (vec2<f32>(x_402.x, x_402.z) * vec2<f32>(0.5f, 0.5f));
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_406.x, x_407.y, x_406.y, x_407.w);
  let x_410 : f32 = u_xlat6.y;
  let x_412 : f32 = x_98.x_ProjectionParams.x;
  u_xlat6.x = (x_410 * x_412);
  let x_416 : f32 = u_xlat6.z;
  vs_TEXCOORD4.w = x_416;
  let x_419 : f32 = u_xlat6.x;
  u_xlat2.w = (x_419 * 0.5f);
  let x_422 : vec4<f32> = u_xlat2;
  let x_424 : vec4<f32> = u_xlat2;
  let x_426 : vec2<f32> = (vec2<f32>(x_422.z, x_422.z) + vec2<f32>(x_424.x, x_424.w));
  let x_427 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_430 : f32 = u_xlat4.y;
  let x_432 : f32 = u_xlat4.y;
  u_xlat6.x = (x_430 * x_432);
  let x_436 : f32 = u_xlat4.x;
  let x_438 : f32 = u_xlat4.x;
  let x_441 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_436 * x_438) + -(x_441));
  let x_445 : vec4<f32> = u_xlat4;
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_445.y, x_445.w, x_445.z, x_445.x) * x_447);
  let x_454 : i32 = u_xlati0;
  let x_457 : vec4<f32> = x_453.unity_Builtins2Array[(x_454 / 7i)].unity_SHBrArray;
  let x_458 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_457, x_458);
  let x_461 : i32 = u_xlati0;
  let x_465 : vec4<f32> = x_453.unity_Builtins2Array[(x_461 / 7i)].unity_SHBgArray;
  let x_466 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_465, x_466);
  let x_469 : i32 = u_xlati0;
  let x_473 : vec4<f32> = x_453.unity_Builtins2Array[(x_469 / 7i)].unity_SHBbArray;
  let x_474 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_473, x_474);
  let x_478 : i32 = u_xlati0;
  let x_481 : vec4<f32> = x_453.unity_Builtins2Array[(x_478 / 7i)].unity_SHCArray;
  let x_483 : vec3<f32> = u_xlat6;
  let x_486 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_483.x, x_483.x, x_483.x)) + vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat1;
  let x_493 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_489.y, x_489.y, x_489.y, x_489.y)) + x_493);
  let x_495 : vec4<f32> = u_xlat4;
  let x_497 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec4<f32>(x_495.y, x_495.y, x_495.y, x_495.y) * x_497);
  let x_499 : vec4<f32> = u_xlat2;
  let x_500 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_499 * x_500);
  let x_503 : vec4<f32> = u_xlat1;
  let x_507 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_503.x, x_503.x, x_503.x, x_503.x)) + x_507);
  let x_509 : vec4<f32> = u_xlat1;
  let x_513 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_509.z, x_509.z, x_509.z, x_509.z)) + x_513);
  let x_515 : vec4<f32> = u_xlat5;
  let x_516 : vec4<f32> = u_xlat4;
  let x_519 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_515 * vec4<f32>(x_516.x, x_516.x, x_516.x, x_516.x)) + x_519);
  let x_521 : vec4<f32> = u_xlat1;
  let x_522 : vec4<f32> = u_xlat4;
  let x_525 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_521 * vec4<f32>(x_522.w, x_522.w, x_522.z, x_522.w)) + x_525);
  let x_527 : vec4<f32> = u_xlat5;
  let x_528 : vec4<f32> = u_xlat5;
  let x_530 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_527 * x_528) + x_530);
  let x_532 : vec4<f32> = u_xlat1;
  let x_533 : vec4<f32> = u_xlat1;
  let x_535 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_532 * x_533) + x_535);
  let x_537 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_537, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_541 : vec4<f32> = u_xlat1;
  u_xlat2 = inverseSqrt(x_541);
  let x_543 : vec4<f32> = u_xlat1;
  let x_545 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_543 * x_545) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_550 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_550);
  let x_552 : vec4<f32> = u_xlat2;
  let x_553 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_552 * x_553);
  let x_555 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_555, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_559 : vec4<f32> = u_xlat1;
  let x_560 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_559 * x_560);
  let x_562 : vec4<f32> = u_xlat1;
  let x_565 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_567 : vec3<f32> = (vec3<f32>(x_562.y, x_562.y, x_562.y) * vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_571 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_573 : vec4<f32> = u_xlat1;
  let x_576 : vec4<f32> = u_xlat2;
  let x_578 : vec3<f32> = ((vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_573.x, x_573.x, x_573.x)) + vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_582 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_584 : vec4<f32> = u_xlat1;
  let x_587 : vec4<f32> = u_xlat2;
  let x_589 : vec3<f32> = ((vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(x_584.z, x_584.z, x_584.z)) + vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_593 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_595 : vec4<f32> = u_xlat1;
  let x_598 : vec4<f32> = u_xlat1;
  let x_600 : vec3<f32> = ((vec3<f32>(x_593.x, x_593.y, x_593.z) * vec3<f32>(x_595.w, x_595.w, x_595.w)) + vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_605 : vec3<f32> = u_xlat0;
  let x_606 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (x_605 + vec3<f32>(x_606.x, x_606.y, x_606.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_613 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_613);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(6)
  vs_TEXCOORD6_1 : f32,
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
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0, vs_TEXCOORD5, vs_SV_InstanceID0);
}

