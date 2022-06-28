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
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(11) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_98 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var<uniform> x_321 : UnityInstancing_PerDraw2;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

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
  let x_122 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_123 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = u_xlat3;
  gl_Position = ((x_122 * vec4<f32>(x_123.w, x_123.w, x_123.w, x_123.w)) + x_126);
  let x_132 : vec3<f32> = in_NORMAL0;
  let x_133 : i32 = u_xlati6;
  let x_136 : vec4<f32> = x_42.unity_Builtins0Array[(x_133 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat3.x = dot(x_132, vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_142 : vec3<f32> = in_NORMAL0;
  let x_143 : i32 = u_xlati6;
  let x_146 : vec4<f32> = x_42.unity_Builtins0Array[(x_143 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat3.y = dot(x_142, vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_150 : vec3<f32> = in_NORMAL0;
  let x_151 : i32 = u_xlati6;
  let x_154 : vec4<f32> = x_42.unity_Builtins0Array[(x_151 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat3.z = dot(x_150, vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_161 : vec4<f32> = u_xlat3;
  let x_163 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_168 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_168);
  let x_171 : vec3<f32> = u_xlat6;
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_171.x, x_171.x, x_171.x) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_178 : vec3<f32> = u_xlat6;
  vs_TEXCOORD0 = x_178;
  let x_180 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  let x_184 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_184;
  let x_190 : vec2<f32> = in_TEXCOORD0;
  let x_192 : vec4<f32> = x_98.x_MainTex_ST;
  let x_196 : vec4<f32> = x_98.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_190 * vec2<f32>(x_192.x, x_192.y)) + vec2<f32>(x_196.z, x_196.w));
  let x_201 : f32 = u_xlat2.y;
  let x_205 : f32 = x_98.unity_MatrixV[1i].z;
  u_xlat19 = (x_201 * x_205);
  let x_208 : f32 = x_98.unity_MatrixV[0i].z;
  let x_210 : f32 = u_xlat2.x;
  let x_212 : f32 = u_xlat19;
  u_xlat19 = ((x_208 * x_210) + x_212);
  let x_215 : f32 = x_98.unity_MatrixV[2i].z;
  let x_217 : f32 = u_xlat2.z;
  let x_219 : f32 = u_xlat19;
  u_xlat19 = ((x_215 * x_217) + x_219);
  let x_222 : f32 = x_98.unity_MatrixV[3i].z;
  let x_225 : f32 = u_xlat2.w;
  let x_227 : f32 = u_xlat19;
  u_xlat19 = ((x_222 * x_225) + x_227);
  let x_230 : f32 = u_xlat19;
  vs_TEXCOORD3.z = -(x_230);
  let x_233 : vec4<f32> = u_xlat2;
  let x_236 : vec4<f32> = x_98.unity_MatrixVP[1i];
  let x_238 : vec3<f32> = (vec3<f32>(x_233.y, x_233.y, x_233.y) * vec3<f32>(x_236.x, x_236.y, x_236.w));
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : vec4<f32> = x_98.unity_MatrixVP[0i];
  let x_244 : vec4<f32> = u_xlat2;
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec3<f32> = ((vec3<f32>(x_242.x, x_242.y, x_242.w) * vec3<f32>(x_244.x, x_244.x, x_244.x)) + vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec4<f32> = x_98.unity_MatrixVP[2i];
  let x_255 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = u_xlat3;
  let x_260 : vec3<f32> = ((vec3<f32>(x_253.x, x_253.y, x_253.w) * vec3<f32>(x_255.z, x_255.z, x_255.z)) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_264 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_266 : vec4<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec3<f32> = ((vec3<f32>(x_264.x, x_264.y, x_264.w) * vec3<f32>(x_266.w, x_266.w, x_266.w)) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat2;
  let x_278 : vec2<f32> = (vec2<f32>(x_274.x, x_274.z) * vec2<f32>(0.5f, 0.5f));
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_278.x, x_279.y, x_278.y, x_279.w);
  let x_282 : f32 = u_xlat2.y;
  let x_284 : f32 = x_98.x_ProjectionParams.x;
  u_xlat19 = (x_282 * x_284);
  let x_287 : f32 = u_xlat2.z;
  vs_TEXCOORD3.w = x_287;
  let x_289 : f32 = u_xlat19;
  u_xlat3.w = (x_289 * 0.5f);
  let x_292 : vec4<f32> = u_xlat3;
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : vec2<f32> = (vec2<f32>(x_292.z, x_292.z) + vec2<f32>(x_294.x, x_294.w));
  let x_297 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_297.w);
  let x_300 : f32 = u_xlat6.y;
  let x_302 : f32 = u_xlat6.y;
  u_xlat19 = (x_300 * x_302);
  let x_305 : f32 = u_xlat6.x;
  let x_307 : f32 = u_xlat6.x;
  let x_309 : f32 = u_xlat19;
  u_xlat19 = ((x_305 * x_307) + -(x_309));
  let x_312 : vec3<f32> = u_xlat6;
  let x_314 : vec3<f32> = u_xlat6;
  u_xlat2 = (vec4<f32>(x_312.y, x_312.z, x_312.z, x_312.x) * vec4<f32>(x_314.x, x_314.y, x_314.z, x_314.z));
  let x_322 : i32 = u_xlati0;
  let x_325 : vec4<f32> = x_321.unity_Builtins2Array[(x_322 / 7i)].unity_SHBrArray;
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_325, x_326);
  let x_329 : i32 = u_xlati0;
  let x_333 : vec4<f32> = x_321.unity_Builtins2Array[(x_329 / 7i)].unity_SHBgArray;
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_333, x_334);
  let x_337 : i32 = u_xlati0;
  let x_341 : vec4<f32> = x_321.unity_Builtins2Array[(x_337 / 7i)].unity_SHBbArray;
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_341, x_342);
  let x_345 : i32 = u_xlati0;
  let x_348 : vec4<f32> = x_321.unity_Builtins2Array[(x_345 / 7i)].unity_SHCArray;
  let x_350 : f32 = u_xlat19;
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350, x_350, x_350)) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat1;
  let x_362 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_358.y, x_358.y, x_358.y, x_358.y)) + x_362);
  let x_365 : vec3<f32> = u_xlat6;
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_365.y, x_365.y, x_365.y, x_365.y) * x_367);
  let x_369 : vec4<f32> = u_xlat3;
  let x_370 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_369 * x_370);
  let x_373 : vec4<f32> = u_xlat1;
  let x_377 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_373.x, x_373.x, x_373.x, x_373.x)) + x_377);
  let x_379 : vec4<f32> = u_xlat1;
  let x_383 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_379.z, x_379.z, x_379.z, x_379.z)) + x_383);
  let x_385 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = u_xlat6;
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_385 * vec4<f32>(x_386.x, x_386.x, x_386.x, x_386.x)) + x_389);
  let x_392 : vec4<f32> = u_xlat1;
  let x_393 : vec3<f32> = u_xlat6;
  let x_396 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_392 * vec4<f32>(x_393.z, x_393.z, x_393.z, x_393.z)) + x_396);
  let x_398 : vec4<f32> = u_xlat5;
  let x_399 : vec4<f32> = u_xlat5;
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_398 * x_399) + x_401);
  let x_403 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_403 * x_404) + x_406);
  let x_408 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_408, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat3 = inverseSqrt(x_412);
  let x_414 : vec4<f32> = u_xlat1;
  let x_416 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_414 * x_416) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_421);
  let x_423 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_423 * x_424);
  let x_426 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_426, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_430 : vec4<f32> = u_xlat1;
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_430 * x_431);
  let x_433 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_438 : vec3<f32> = (vec3<f32>(x_433.y, x_433.y, x_433.y) * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_442 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_444 : vec4<f32> = u_xlat0;
  let x_447 : vec4<f32> = u_xlat1;
  let x_449 : vec3<f32> = ((vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_444.x, x_444.x, x_444.x)) + vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_455 : vec4<f32> = u_xlat0;
  let x_458 : vec4<f32> = u_xlat1;
  let x_460 : vec3<f32> = ((vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(x_455.z, x_455.z, x_455.z)) + vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_466 : vec4<f32> = u_xlat0;
  let x_469 : vec4<f32> = u_xlat0;
  let x_471 : vec3<f32> = ((vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(x_466.w, x_466.w, x_466.w)) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : vec4<f32> = u_xlat2;
  let x_477 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = (vec3<f32>(x_475.x, x_475.y, x_475.z) + vec3<f32>(x_477.x, x_477.y, x_477.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_483 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_483);
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
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(5) @interpolate(flat)
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4, vs_SV_InstanceID0);
}

