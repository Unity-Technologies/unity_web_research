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

var<private> u_xlati6 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(15) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_98 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var<uniform> x_338 : UnityInstancing_PerDraw2;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

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
  let x_101 : vec4<f32> = x_98.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_92.y, x_92.y, x_92.y, x_92.y) * x_101);
  let x_104 : vec4<f32> = x_98.unity_MatrixVP[0i];
  let x_105 : vec4<f32> = u_xlat2;
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_104 * vec4<f32>(x_105.x, x_105.x, x_105.x, x_105.x)) + x_108);
  let x_111 : vec4<f32> = x_98.unity_MatrixVP[2i];
  let x_112 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_111 * vec4<f32>(x_112.z, x_112.z, x_112.z, x_112.z)) + x_115);
  let x_123 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_124 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = u_xlat3;
  gl_Position = ((x_123 * vec4<f32>(x_124.w, x_124.w, x_124.w, x_124.w)) + x_127);
  let x_132 : vec4<f32> = in_TANGENT0;
  let x_134 : i32 = u_xlati6;
  let x_137 : vec4<f32> = x_42.unity_Builtins0Array[(x_134 / 8i)].unity_ObjectToWorldArray[1i];
  let x_139 : vec3<f32> = (vec3<f32>(x_132.y, x_132.y, x_132.y) * vec3<f32>(x_137.y, x_137.z, x_137.x));
  let x_140 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_142 : i32 = u_xlati6;
  let x_145 : vec4<f32> = x_42.unity_Builtins0Array[(x_142 / 8i)].unity_ObjectToWorldArray[0i];
  let x_147 : vec4<f32> = in_TANGENT0;
  let x_150 : vec4<f32> = u_xlat2;
  let x_152 : vec3<f32> = ((vec3<f32>(x_145.y, x_145.z, x_145.x) * vec3<f32>(x_147.x, x_147.x, x_147.x)) + vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_155 : i32 = u_xlati6;
  let x_158 : vec4<f32> = x_42.unity_Builtins0Array[(x_155 / 8i)].unity_ObjectToWorldArray[2i];
  let x_160 : vec4<f32> = in_TANGENT0;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.y, x_158.z, x_158.x) * vec3<f32>(x_160.z, x_160.z, x_160.z)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_170 : vec4<f32> = u_xlat2;
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat12;
  let x_179 : vec4<f32> = u_xlat2;
  let x_181 : vec3<f32> = (vec3<f32>(x_177, x_177, x_177) * vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_186 : vec3<f32> = in_NORMAL0;
  let x_187 : i32 = u_xlati6;
  let x_190 : vec4<f32> = x_42.unity_Builtins0Array[(x_187 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat3.x = dot(x_186, vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_195 : vec3<f32> = in_NORMAL0;
  let x_196 : i32 = u_xlati6;
  let x_199 : vec4<f32> = x_42.unity_Builtins0Array[(x_196 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat3.y = dot(x_195, vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_203 : vec3<f32> = in_NORMAL0;
  let x_204 : i32 = u_xlati6;
  let x_207 : vec4<f32> = x_42.unity_Builtins0Array[(x_204 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat3.z = dot(x_203, vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_214 : vec4<f32> = u_xlat3;
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(vec3<f32>(x_214.x, x_214.y, x_214.z), vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_221 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_221);
  let x_224 : vec3<f32> = u_xlat6;
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_224.x, x_224.x, x_224.x, x_224.x) * vec4<f32>(x_226.x, x_226.y, x_226.z, x_226.z));
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.w, x_231.x, x_231.y));
  let x_234 : vec4<f32> = u_xlat3;
  let x_236 : vec4<f32> = u_xlat2;
  let x_239 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_234.y, x_234.w, x_234.x) * vec3<f32>(x_236.y, x_236.z, x_236.x)) + -(x_239));
  let x_246 : f32 = in_TANGENT0.w;
  let x_250 : f32 = x_98.unity_WorldTransformParams.w;
  u_xlat19 = (x_246 * x_250);
  let x_252 : vec3<f32> = u_xlat6;
  let x_253 : f32 = u_xlat19;
  u_xlat6 = (x_252 * vec3<f32>(x_253, x_253, x_253));
  let x_258 : f32 = u_xlat6.x;
  vs_TEXCOORD0.y = x_258;
  let x_262 : f32 = u_xlat2.z;
  vs_TEXCOORD0.x = x_262;
  let x_265 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_265;
  let x_268 : f32 = u_xlat1.x;
  vs_TEXCOORD0.w = x_268;
  let x_272 : f32 = u_xlat2.x;
  vs_TEXCOORD1.x = x_272;
  let x_276 : f32 = u_xlat2.y;
  vs_TEXCOORD2.x = x_276;
  let x_279 : f32 = u_xlat1.y;
  vs_TEXCOORD1.w = x_279;
  let x_282 : f32 = u_xlat6.y;
  vs_TEXCOORD1.y = x_282;
  let x_285 : f32 = u_xlat6.z;
  vs_TEXCOORD2.y = x_285;
  let x_288 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_288;
  let x_291 : f32 = u_xlat1.z;
  vs_TEXCOORD2.w = x_291;
  let x_294 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_294;
  let x_298 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_298;
  let x_304 : vec2<f32> = in_TEXCOORD0;
  let x_306 : vec4<f32> = x_98.x_MainTex_ST;
  let x_310 : vec4<f32> = x_98.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_304 * vec2<f32>(x_306.x, x_306.y)) + vec2<f32>(x_310.z, x_310.w));
  let x_314 : f32 = u_xlat3.y;
  let x_316 : f32 = u_xlat3.y;
  u_xlat6.x = (x_314 * x_316);
  let x_320 : f32 = u_xlat3.x;
  let x_322 : f32 = u_xlat3.x;
  let x_325 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_320 * x_322) + -(x_325));
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_329.y, x_329.w, x_329.z, x_329.x) * x_331);
  let x_339 : i32 = u_xlati0;
  let x_342 : vec4<f32> = x_338.unity_Builtins2Array[(x_339 / 7i)].unity_SHBrArray;
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_342, x_343);
  let x_346 : i32 = u_xlati0;
  let x_350 : vec4<f32> = x_338.unity_Builtins2Array[(x_346 / 7i)].unity_SHBgArray;
  let x_351 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_350, x_351);
  let x_354 : i32 = u_xlati0;
  let x_357 : vec4<f32> = x_338.unity_Builtins2Array[(x_354 / 7i)].unity_SHBbArray;
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_357, x_358);
  let x_362 : i32 = u_xlati0;
  let x_365 : vec4<f32> = x_338.unity_Builtins2Array[(x_362 / 7i)].unity_SHCArray;
  let x_367 : vec3<f32> = u_xlat6;
  let x_370 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.x, x_367.x, x_367.x)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat1;
  let x_377 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_373.y, x_373.y, x_373.y, x_373.y)) + x_377);
  let x_379 : vec4<f32> = u_xlat3;
  let x_381 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_379.y, x_379.y, x_379.y, x_379.y) * x_381);
  let x_383 : vec4<f32> = u_xlat2;
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_383 * x_384);
  let x_387 : vec4<f32> = u_xlat1;
  let x_391 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_387.x, x_387.x, x_387.x, x_387.x)) + x_391);
  let x_393 : vec4<f32> = u_xlat1;
  let x_397 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_393.z, x_393.z, x_393.z, x_393.z)) + x_397);
  let x_399 : vec4<f32> = u_xlat5;
  let x_400 : vec4<f32> = u_xlat3;
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_399 * vec4<f32>(x_400.x, x_400.x, x_400.x, x_400.x)) + x_403);
  let x_405 : vec4<f32> = u_xlat1;
  let x_406 : vec4<f32> = u_xlat3;
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_405 * vec4<f32>(x_406.w, x_406.w, x_406.z, x_406.w)) + x_409);
  let x_411 : vec4<f32> = u_xlat5;
  let x_412 : vec4<f32> = u_xlat5;
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_411 * x_412) + x_414);
  let x_416 : vec4<f32> = u_xlat1;
  let x_417 : vec4<f32> = u_xlat1;
  let x_419 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_416 * x_417) + x_419);
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_421, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_425 : vec4<f32> = u_xlat1;
  u_xlat2 = inverseSqrt(x_425);
  let x_427 : vec4<f32> = u_xlat1;
  let x_429 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_427 * x_429) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_434 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_434);
  let x_436 : vec4<f32> = u_xlat2;
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_436 * x_437);
  let x_439 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_439, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_443 : vec4<f32> = u_xlat1;
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_443 * x_444);
  let x_446 : vec4<f32> = u_xlat1;
  let x_449 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_451 : vec3<f32> = (vec3<f32>(x_446.y, x_446.y, x_446.y) * vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_457 : vec4<f32> = u_xlat1;
  let x_460 : vec4<f32> = u_xlat2;
  let x_462 : vec3<f32> = ((vec3<f32>(x_455.x, x_455.y, x_455.z) * vec3<f32>(x_457.x, x_457.x, x_457.x)) + vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_466 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_468 : vec4<f32> = u_xlat1;
  let x_471 : vec4<f32> = u_xlat2;
  let x_473 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(x_468.z, x_468.z, x_468.z)) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_477 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_479 : vec4<f32> = u_xlat1;
  let x_482 : vec4<f32> = u_xlat1;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_479.w, x_479.w, x_479.w)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_489 : vec3<f32> = u_xlat0;
  let x_490 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (x_489 + vec3<f32>(x_490.x, x_490.y, x_490.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_496 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_496);
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

