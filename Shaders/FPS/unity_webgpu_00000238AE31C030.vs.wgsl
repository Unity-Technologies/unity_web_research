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
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(11) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(12) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(10) var<uniform> x_93 : VGlobals;

var<private> u_xlat3 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD4 : vec3<f32>;

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
  let x_130 : vec3<f32> = in_NORMAL0;
  let x_131 : i32 = u_xlati0;
  let x_134 : vec4<f32> = x_38.unity_Builtins0Array[(x_131 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat3.x = dot(x_130, vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_140 : vec3<f32> = in_NORMAL0;
  let x_141 : i32 = u_xlati0;
  let x_144 : vec4<f32> = x_38.unity_Builtins0Array[(x_141 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat3.y = dot(x_140, vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec3<f32> = in_NORMAL0;
  let x_149 : i32 = u_xlati0;
  let x_152 : vec4<f32> = x_38.unity_Builtins0Array[(x_149 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat3.z = dot(x_148, vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_158 : vec3<f32> = u_xlat3;
  let x_159 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_158, x_159);
  let x_163 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_163);
  let x_166 : vec4<f32> = u_xlat0;
  let x_168 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_166.x, x_166.x, x_166.x) * x_168);
  let x_172 : vec3<f32> = u_xlat3;
  vs_TEXCOORD0 = x_172;
  let x_174 : vec3<f32> = u_xlat6;
  vs_TEXCOORD1 = x_174;
  let x_177 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_177;
  let x_183 : vec2<f32> = in_TEXCOORD0;
  let x_186 : vec4<f32> = x_93.x_MainTex_ST;
  let x_190 : vec4<f32> = x_93.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_183 * vec2<f32>(x_186.x, x_186.y)) + vec2<f32>(x_190.z, x_190.w));
  let x_194 : f32 = u_xlat2.y;
  let x_198 : f32 = x_93.unity_MatrixV[1i].z;
  u_xlat0.x = (x_194 * x_198);
  let x_202 : f32 = x_93.unity_MatrixV[0i].z;
  let x_204 : f32 = u_xlat2.x;
  let x_207 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_202 * x_204) + x_207);
  let x_211 : f32 = x_93.unity_MatrixV[2i].z;
  let x_213 : f32 = u_xlat2.z;
  let x_216 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_211 * x_213) + x_216);
  let x_220 : f32 = x_93.unity_MatrixV[3i].z;
  let x_223 : f32 = u_xlat2.w;
  let x_226 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_220 * x_223) + x_226);
  let x_231 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_231);
  let x_235 : vec4<f32> = u_xlat2;
  let x_238 : vec4<f32> = x_93.unity_MatrixVP[1i];
  let x_240 : vec3<f32> = (vec3<f32>(x_235.y, x_235.y, x_235.y) * vec3<f32>(x_238.x, x_238.y, x_238.w));
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_244 : vec4<f32> = x_93.unity_MatrixVP[0i];
  let x_246 : vec4<f32> = u_xlat2;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.w) * vec3<f32>(x_246.x, x_246.x, x_246.x)) + vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : vec4<f32> = x_93.unity_MatrixVP[2i];
  let x_257 : vec4<f32> = u_xlat2;
  let x_260 : vec4<f32> = u_xlat4;
  let x_262 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.w) * vec3<f32>(x_257.z, x_257.z, x_257.z)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec4<f32> = x_93.unity_MatrixVP[3i];
  let x_268 : vec4<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.w) * vec3<f32>(x_268.w, x_268.w, x_268.w)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : f32 = u_xlat2.z;
  vs_TEXCOORD3.w = x_277;
  u_xlat4.x = 0.5f;
  u_xlat4.z = 0.5f;
  let x_283 : f32 = x_93.x_ProjectionParams.x;
  u_xlat4.y = x_283;
  let x_285 : vec4<f32> = u_xlat2;
  let x_287 : vec4<f32> = u_xlat4;
  let x_289 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat1;
  let x_294 : vec4<f32> = u_xlat4;
  let x_296 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.w) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_300 : vec4<f32> = u_xlat1;
  let x_301 : vec2<f32> = vec2<f32>(x_300.z, x_300.w);
  let x_302 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_302.x, x_302.y, x_301.x, x_301.y);
  let x_305 : f32 = u_xlat2.y;
  u_xlat2.w = (x_305 * 0.5f);
  let x_308 : vec4<f32> = u_xlat2;
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec2<f32> = (vec2<f32>(x_308.z, x_308.z) + vec2<f32>(x_310.x, x_310.w));
  let x_313 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_312.x, x_312.y, x_313.z, x_313.w);
  let x_315 : vec3<f32> = u_xlat6;
  let x_319 : vec4<f32> = x_93.unity_4LightPosX0;
  u_xlat1 = (-(vec4<f32>(x_315.x, x_315.x, x_315.x, x_315.x)) + x_319);
  let x_321 : vec3<f32> = u_xlat6;
  let x_325 : vec4<f32> = x_93.unity_4LightPosY0;
  u_xlat2 = (-(vec4<f32>(x_321.y, x_321.y, x_321.y, x_321.y)) + x_325);
  let x_327 : vec3<f32> = u_xlat6;
  let x_331 : vec4<f32> = x_93.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_327.z, x_327.z, x_327.z, x_327.z)) + x_331);
  let x_334 : vec3<f32> = u_xlat3;
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_334.y, x_334.y, x_334.y, x_334.y) * x_336);
  let x_338 : vec4<f32> = u_xlat2;
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_338 * x_339);
  let x_341 : vec4<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_341 * x_342) + x_344);
  let x_346 : vec4<f32> = u_xlat1;
  let x_347 : vec3<f32> = u_xlat3;
  let x_350 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_346 * vec4<f32>(x_347.x, x_347.x, x_347.x, x_347.x)) + x_350);
  let x_352 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = u_xlat3;
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_352 * vec4<f32>(x_353.z, x_353.z, x_353.z, x_353.z)) + x_356);
  let x_358 : vec4<f32> = u_xlat0;
  let x_359 : vec4<f32> = u_xlat0;
  let x_361 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_358 * x_359) + x_361);
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_363, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_367);
  let x_369 : vec4<f32> = u_xlat0;
  let x_372 : vec4<f32> = x_93.unity_4LightAtten0;
  u_xlat0 = ((x_369 * x_372) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_377);
  let x_379 : vec4<f32> = u_xlat1;
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_379 * x_380);
  let x_382 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_382, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_386 : vec4<f32> = u_xlat0;
  let x_387 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_386 * x_387);
  let x_389 : vec4<f32> = u_xlat0;
  let x_393 : vec4<f32> = x_93.unity_LightColor[1i];
  let x_395 : vec3<f32> = (vec3<f32>(x_389.y, x_389.y, x_389.y) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_399 : vec4<f32> = x_93.unity_LightColor[0i];
  let x_401 : vec4<f32> = u_xlat0;
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_401.x, x_401.x, x_401.x)) + vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : vec4<f32> = x_93.unity_LightColor[2i];
  let x_412 : vec4<f32> = u_xlat0;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.z, x_412.z, x_412.z)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_421 : vec4<f32> = x_93.unity_LightColor[3i];
  let x_423 : vec4<f32> = u_xlat0;
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_423.w, x_423.w, x_423.w)) + vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_433 : f32 = u_xlat3.y;
  let x_435 : f32 = u_xlat3.y;
  u_xlat18 = (x_433 * x_435);
  let x_438 : f32 = u_xlat3.x;
  let x_440 : f32 = u_xlat3.x;
  let x_442 : f32 = u_xlat18;
  u_xlat18 = ((x_438 * x_440) + -(x_442));
  let x_445 : vec3<f32> = u_xlat3;
  let x_447 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_445.y, x_445.z, x_445.z, x_445.x) * vec4<f32>(x_447.x, x_447.y, x_447.z, x_447.z));
  let x_452 : vec4<f32> = x_93.unity_SHBr;
  let x_453 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_452, x_453);
  let x_458 : vec4<f32> = x_93.unity_SHBg;
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_458, x_459);
  let x_463 : vec4<f32> = x_93.unity_SHBb;
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_463, x_464);
  let x_469 : vec4<f32> = x_93.unity_SHC;
  let x_471 : f32 = u_xlat18;
  let x_474 : vec4<f32> = u_xlat2;
  let x_476 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_471, x_471, x_471)) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_480.x, x_480.y, x_480.z) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_486 : f32 = u_xlat4.y;
  u_xlat4.w = (x_486 * 0.5f);
  let x_489 : vec4<f32> = u_xlat4;
  let x_491 : vec4<f32> = u_xlat4;
  let x_493 : vec2<f32> = (vec2<f32>(x_489.z, x_489.z) + vec2<f32>(x_491.x, x_491.w));
  let x_494 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
  let x_498 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_498);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6, vs_TEXCOORD4);
}

