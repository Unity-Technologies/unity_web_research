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
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(15) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(16) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(14) var<uniform> x_93 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat18 : f32;

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
  let x_20 : i32 = u_xlati0;
  u_xlati0 = (x_20 << bitcast<u32>(3i));
  let x_29 : vec4<f32> = in_POSITION0;
  let x_39 : i32 = u_xlati0;
  let x_45 : vec4<f32> = x_38.unity_Builtins0Array[(x_39 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_29.y, x_29.y, x_29.y, x_29.y) * x_45);
  let x_47 : i32 = u_xlati0;
  let x_50 : vec4<f32> = x_38.unity_Builtins0Array[(x_47 / 8i)].unity_ObjectToWorldArray[0i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_50 * vec4<f32>(x_51.x, x_51.x, x_51.x, x_51.x)) + x_54);
  let x_56 : i32 = u_xlati0;
  let x_60 : vec4<f32> = x_38.unity_Builtins0Array[(x_56 / 8i)].unity_ObjectToWorldArray[2i];
  let x_61 : vec4<f32> = in_POSITION0;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_67 : vec4<f32> = u_xlat1;
  let x_68 : i32 = u_xlati0;
  let x_71 : vec4<f32> = x_38.unity_Builtins0Array[(x_68 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_67 + x_71);
  let x_76 : i32 = u_xlati0;
  let x_79 : vec4<f32> = x_38.unity_Builtins0Array[(x_76 / 8i)].unity_ObjectToWorldArray[3i];
  let x_81 : vec4<f32> = in_POSITION0;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.w, x_81.w, x_81.w)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat2;
  let x_96 : vec4<f32> = x_93.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_87.y, x_87.y, x_87.y, x_87.y) * x_96);
  let x_99 : vec4<f32> = x_93.unity_MatrixVP[0i];
  let x_100 : vec4<f32> = u_xlat2;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_99 * vec4<f32>(x_100.x, x_100.x, x_100.x, x_100.x)) + x_103);
  let x_106 : vec4<f32> = x_93.unity_MatrixVP[2i];
  let x_107 : vec4<f32> = u_xlat2;
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_106 * vec4<f32>(x_107.z, x_107.z, x_107.z, x_107.z)) + x_110);
  let x_113 : vec4<f32> = x_93.unity_MatrixVP[3i];
  let x_114 : vec4<f32> = u_xlat2;
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_113 * vec4<f32>(x_114.w, x_114.w, x_114.w, x_114.w)) + x_117);
  let x_124 : vec4<f32> = u_xlat1;
  gl_Position = x_124;
  let x_128 : vec4<f32> = in_TANGENT0;
  let x_130 : i32 = u_xlati0;
  let x_133 : vec4<f32> = x_38.unity_Builtins0Array[(x_130 / 8i)].unity_ObjectToWorldArray[1i];
  let x_135 : vec3<f32> = (vec3<f32>(x_128.y, x_128.y, x_128.y) * vec3<f32>(x_133.y, x_133.z, x_133.x));
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_138 : i32 = u_xlati0;
  let x_141 : vec4<f32> = x_38.unity_Builtins0Array[(x_138 / 8i)].unity_ObjectToWorldArray[0i];
  let x_143 : vec4<f32> = in_TANGENT0;
  let x_146 : vec4<f32> = u_xlat2;
  let x_148 : vec3<f32> = ((vec3<f32>(x_141.y, x_141.z, x_141.x) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_151 : i32 = u_xlati0;
  let x_154 : vec4<f32> = x_38.unity_Builtins0Array[(x_151 / 8i)].unity_ObjectToWorldArray[2i];
  let x_156 : vec4<f32> = in_TANGENT0;
  let x_159 : vec4<f32> = u_xlat2;
  let x_161 : vec3<f32> = ((vec3<f32>(x_154.y, x_154.z, x_154.x) * vec3<f32>(x_156.z, x_156.z, x_156.z)) + vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_166 : vec4<f32> = u_xlat2;
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat20 = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat20;
  let x_175 : vec4<f32> = u_xlat2;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_183 : vec3<f32> = in_NORMAL0;
  let x_184 : i32 = u_xlati0;
  let x_187 : vec4<f32> = x_38.unity_Builtins0Array[(x_184 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat3.x = dot(x_183, vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_192 : vec3<f32> = in_NORMAL0;
  let x_193 : i32 = u_xlati0;
  let x_196 : vec4<f32> = x_38.unity_Builtins0Array[(x_193 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat3.y = dot(x_192, vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_200 : vec3<f32> = in_NORMAL0;
  let x_201 : i32 = u_xlati0;
  let x_204 : vec4<f32> = x_38.unity_Builtins0Array[(x_201 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat3.z = dot(x_200, vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_210 : vec4<f32> = u_xlat3;
  let x_212 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_217 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_217);
  let x_220 : vec4<f32> = u_xlat0;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_220.x, x_220.x, x_220.x, x_220.x) * vec4<f32>(x_222.x, x_222.y, x_222.z, x_222.z));
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec4<f32> = u_xlat3;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.w, x_228.x, x_228.y));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat3;
  let x_235 : vec4<f32> = u_xlat2;
  let x_238 : vec4<f32> = u_xlat4;
  let x_241 : vec3<f32> = ((vec3<f32>(x_233.y, x_233.w, x_233.x) * vec3<f32>(x_235.y, x_235.z, x_235.x)) + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_247 : f32 = in_TANGENT0.w;
  let x_251 : f32 = x_93.unity_WorldTransformParams.w;
  u_xlat0.x = (x_247 * x_251);
  let x_254 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = u_xlat4;
  let x_258 : vec3<f32> = (vec3<f32>(x_254.x, x_254.x, x_254.x) * vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_263 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_263;
  let x_267 : f32 = u_xlat2.z;
  vs_TEXCOORD0.x = x_267;
  let x_270 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_270;
  let x_273 : f32 = u_xlat6.x;
  vs_TEXCOORD0.w = x_273;
  let x_277 : f32 = u_xlat2.x;
  vs_TEXCOORD1.x = x_277;
  let x_281 : f32 = u_xlat2.y;
  vs_TEXCOORD2.x = x_281;
  let x_284 : f32 = u_xlat6.y;
  vs_TEXCOORD1.w = x_284;
  let x_287 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_287;
  let x_290 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_290;
  let x_293 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_293;
  let x_296 : f32 = u_xlat6.z;
  vs_TEXCOORD2.w = x_296;
  let x_299 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_299;
  let x_303 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_303;
  let x_309 : vec2<f32> = in_TEXCOORD0;
  let x_312 : vec4<f32> = x_93.x_MainTex_ST;
  let x_316 : vec4<f32> = x_93.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_309 * vec2<f32>(x_312.x, x_312.y)) + vec2<f32>(x_316.z, x_316.w));
  let x_319 : vec3<f32> = u_xlat6;
  let x_323 : vec4<f32> = x_93.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_319.x, x_319.x, x_319.x, x_319.x)) + x_323);
  let x_325 : vec3<f32> = u_xlat6;
  let x_329 : vec4<f32> = x_93.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_325.y, x_325.y, x_325.y, x_325.y)) + x_329);
  let x_331 : vec3<f32> = u_xlat6;
  let x_335 : vec4<f32> = x_93.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_331.z, x_331.z, x_331.z, x_331.z)) + x_335);
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_338.y, x_338.y, x_338.y, x_338.y) * x_340);
  let x_342 : vec4<f32> = u_xlat4;
  let x_343 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_342 * x_343);
  let x_345 : vec4<f32> = u_xlat2;
  let x_346 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_345 * x_346) + x_348);
  let x_350 : vec4<f32> = u_xlat2;
  let x_351 : vec4<f32> = u_xlat3;
  let x_354 : vec4<f32> = u_xlat5;
  u_xlat2 = ((x_350 * vec4<f32>(x_351.x, x_351.x, x_351.x, x_351.x)) + x_354);
  let x_356 : vec4<f32> = u_xlat0;
  let x_357 : vec4<f32> = u_xlat3;
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_356 * vec4<f32>(x_357.w, x_357.w, x_357.z, x_357.w)) + x_360);
  let x_362 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_362 * x_363) + x_365);
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_367, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_371);
  let x_373 : vec4<f32> = u_xlat0;
  let x_376 : vec4<f32> = x_93.unity_4LightAtten0;
  u_xlat0 = ((x_373 * x_376) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_381 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_381);
  let x_383 : vec4<f32> = u_xlat2;
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_383 * x_384);
  let x_386 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_386, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_390 : vec4<f32> = u_xlat0;
  let x_391 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_390 * x_391);
  let x_393 : vec4<f32> = u_xlat0;
  let x_397 : vec4<f32> = x_93.unity_LightColor[1i];
  let x_399 : vec3<f32> = (vec3<f32>(x_393.y, x_393.y, x_393.y) * vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : vec4<f32> = x_93.unity_LightColor[0i];
  let x_405 : vec4<f32> = u_xlat0;
  let x_408 : vec4<f32> = u_xlat2;
  let x_410 : vec3<f32> = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405.x, x_405.x, x_405.x)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : vec4<f32> = x_93.unity_LightColor[2i];
  let x_416 : vec4<f32> = u_xlat0;
  let x_419 : vec4<f32> = u_xlat2;
  let x_421 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.z, x_416.z, x_416.z)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_425 : vec4<f32> = x_93.unity_LightColor[3i];
  let x_427 : vec4<f32> = u_xlat0;
  let x_430 : vec4<f32> = u_xlat0;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427.w, x_427.w, x_427.w)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_437 : f32 = u_xlat3.y;
  let x_439 : f32 = u_xlat3.y;
  u_xlat18 = (x_437 * x_439);
  let x_442 : f32 = u_xlat3.x;
  let x_444 : f32 = u_xlat3.x;
  let x_446 : f32 = u_xlat18;
  u_xlat18 = ((x_442 * x_444) + -(x_446));
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_449.y, x_449.w, x_449.z, x_449.x) * x_451);
  let x_455 : vec4<f32> = x_93.unity_SHBr;
  let x_456 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_455, x_456);
  let x_461 : vec4<f32> = x_93.unity_SHBg;
  let x_462 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_461, x_462);
  let x_466 : vec4<f32> = x_93.unity_SHBb;
  let x_467 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_466, x_467);
  let x_472 : vec4<f32> = x_93.unity_SHC;
  let x_474 : f32 = u_xlat18;
  let x_477 : vec4<f32> = u_xlat3;
  let x_479 : vec3<f32> = ((vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_474, x_474, x_474)) + vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_484 : vec4<f32> = u_xlat0;
  let x_486 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_484.x, x_484.y, x_484.z) + vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_490 : f32 = u_xlat1.y;
  let x_492 : f32 = x_93.x_ProjectionParams.x;
  u_xlat0.x = (x_490 * x_492);
  let x_496 : f32 = u_xlat0.x;
  u_xlat0.w = (x_496 * 0.5f);
  let x_500 : vec4<f32> = u_xlat1;
  let x_503 : vec2<f32> = (vec2<f32>(x_500.x, x_500.w) * vec2<f32>(0.5f, 0.5f));
  let x_504 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_503.x, x_504.y, x_503.y, x_504.w);
  let x_507 : vec4<f32> = u_xlat1;
  let x_508 : vec2<f32> = vec2<f32>(x_507.z, x_507.w);
  let x_509 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_509.x, x_509.y, x_508.x, x_508.y);
  let x_511 : vec4<f32> = u_xlat0;
  let x_513 : vec4<f32> = u_xlat0;
  let x_515 : vec2<f32> = (vec2<f32>(x_511.z, x_511.z) + vec2<f32>(x_513.x, x_513.w));
  let x_516 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
  let x_520 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_520);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6);
}

