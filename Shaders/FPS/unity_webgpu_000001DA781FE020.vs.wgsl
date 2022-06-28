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

var<private> u_xlati7 : i32;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(13) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(12) var<uniform> x_98 : VGlobals;

var<private> u_xlat4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var<uniform> x_337 : UnityInstancing_PerDraw2;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

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
  u_xlat3 = ((x_117 * vec4<f32>(x_118.w, x_118.w, x_118.w, x_118.w)) + x_121);
  let x_128 : vec4<f32> = u_xlat3;
  gl_Position = x_128;
  let x_134 : vec3<f32> = in_NORMAL0;
  let x_135 : i32 = u_xlati7;
  let x_138 : vec4<f32> = x_42.unity_Builtins0Array[(x_135 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat4.x = dot(x_134, vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_144 : vec3<f32> = in_NORMAL0;
  let x_145 : i32 = u_xlati7;
  let x_148 : vec4<f32> = x_42.unity_Builtins0Array[(x_145 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat4.y = dot(x_144, vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_152 : vec3<f32> = in_NORMAL0;
  let x_153 : i32 = u_xlati7;
  let x_156 : vec4<f32> = x_42.unity_Builtins0Array[(x_153 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat4.z = dot(x_152, vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_163 : vec4<f32> = u_xlat4;
  let x_165 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_170 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_170);
  let x_173 : vec3<f32> = u_xlat7;
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec3<f32>(x_173.x, x_173.x, x_173.x) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_180 : vec3<f32> = u_xlat7;
  vs_TEXCOORD0 = x_180;
  let x_182 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = vec3<f32>(x_182.x, x_182.y, x_182.z);
  let x_186 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_186;
  let x_192 : vec2<f32> = in_TEXCOORD0;
  let x_194 : vec4<f32> = x_98.x_MainTex_ST;
  let x_198 : vec4<f32> = x_98.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_192 * vec2<f32>(x_194.x, x_194.y)) + vec2<f32>(x_198.z, x_198.w));
  let x_203 : f32 = u_xlat2.y;
  let x_207 : f32 = x_98.unity_MatrixV[1i].z;
  u_xlat22 = (x_203 * x_207);
  let x_210 : f32 = x_98.unity_MatrixV[0i].z;
  let x_212 : f32 = u_xlat2.x;
  let x_214 : f32 = u_xlat22;
  u_xlat22 = ((x_210 * x_212) + x_214);
  let x_217 : f32 = x_98.unity_MatrixV[2i].z;
  let x_219 : f32 = u_xlat2.z;
  let x_221 : f32 = u_xlat22;
  u_xlat22 = ((x_217 * x_219) + x_221);
  let x_224 : f32 = x_98.unity_MatrixV[3i].z;
  let x_227 : f32 = u_xlat2.w;
  let x_229 : f32 = u_xlat22;
  u_xlat22 = ((x_224 * x_227) + x_229);
  let x_232 : f32 = u_xlat22;
  vs_TEXCOORD3.z = -(x_232);
  let x_235 : vec4<f32> = u_xlat2;
  let x_238 : vec4<f32> = x_98.unity_MatrixVP[1i];
  let x_240 : vec3<f32> = (vec3<f32>(x_235.y, x_235.y, x_235.y) * vec3<f32>(x_238.x, x_238.y, x_238.w));
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_244 : vec4<f32> = x_98.unity_MatrixVP[0i];
  let x_246 : vec4<f32> = u_xlat2;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.w) * vec3<f32>(x_246.x, x_246.x, x_246.x)) + vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : vec4<f32> = x_98.unity_MatrixVP[2i];
  let x_257 : vec4<f32> = u_xlat2;
  let x_260 : vec4<f32> = u_xlat4;
  let x_262 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.w) * vec3<f32>(x_257.z, x_257.z, x_257.z)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec4<f32> = x_98.unity_MatrixVP[3i];
  let x_268 : vec4<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.w) * vec3<f32>(x_268.w, x_268.w, x_268.w)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : f32 = u_xlat2.z;
  vs_TEXCOORD3.w = x_277;
  u_xlat4.x = 0.5f;
  u_xlat4.z = 0.5f;
  let x_283 : f32 = x_98.x_ProjectionParams.x;
  u_xlat4.y = x_283;
  let x_285 : vec4<f32> = u_xlat2;
  let x_287 : vec4<f32> = u_xlat4;
  let x_289 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat3;
  let x_294 : vec4<f32> = u_xlat4;
  let x_296 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.w) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_300 : vec4<f32> = u_xlat3;
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
  let x_316 : f32 = u_xlat7.y;
  let x_318 : f32 = u_xlat7.y;
  u_xlat22 = (x_316 * x_318);
  let x_321 : f32 = u_xlat7.x;
  let x_323 : f32 = u_xlat7.x;
  let x_325 : f32 = u_xlat22;
  u_xlat22 = ((x_321 * x_323) + -(x_325));
  let x_328 : vec3<f32> = u_xlat7;
  let x_330 : vec3<f32> = u_xlat7;
  u_xlat2 = (vec4<f32>(x_328.y, x_328.z, x_328.z, x_328.x) * vec4<f32>(x_330.x, x_330.y, x_330.z, x_330.z));
  let x_338 : i32 = u_xlati0;
  let x_341 : vec4<f32> = x_337.unity_Builtins2Array[(x_338 / 7i)].unity_SHBrArray;
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_341, x_342);
  let x_345 : i32 = u_xlati0;
  let x_349 : vec4<f32> = x_337.unity_Builtins2Array[(x_345 / 7i)].unity_SHBgArray;
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_349, x_350);
  let x_353 : i32 = u_xlati0;
  let x_357 : vec4<f32> = x_337.unity_Builtins2Array[(x_353 / 7i)].unity_SHBbArray;
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_357, x_358);
  let x_361 : i32 = u_xlati0;
  let x_364 : vec4<f32> = x_337.unity_Builtins2Array[(x_361 / 7i)].unity_SHCArray;
  let x_366 : f32 = u_xlat22;
  let x_369 : vec4<f32> = u_xlat3;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366, x_366, x_366)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat1;
  let x_378 : vec4<f32> = x_98.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_374.y, x_374.y, x_374.y, x_374.y)) + x_378);
  let x_381 : vec3<f32> = u_xlat7;
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_381.y, x_381.y, x_381.y, x_381.y) * x_383);
  let x_385 : vec4<f32> = u_xlat3;
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_385 * x_386);
  let x_389 : vec4<f32> = u_xlat1;
  let x_393 : vec4<f32> = x_98.unity_4LightPosX0;
  u_xlat6 = (-(vec4<f32>(x_389.x, x_389.x, x_389.x, x_389.x)) + x_393);
  let x_395 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = x_98.unity_4LightPosZ0;
  u_xlat1 = (-(vec4<f32>(x_395.z, x_395.z, x_395.z, x_395.z)) + x_399);
  let x_401 : vec4<f32> = u_xlat6;
  let x_402 : vec3<f32> = u_xlat7;
  let x_405 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_401 * vec4<f32>(x_402.x, x_402.x, x_402.x, x_402.x)) + x_405);
  let x_408 : vec4<f32> = u_xlat1;
  let x_409 : vec3<f32> = u_xlat7;
  let x_412 : vec4<f32> = u_xlat5;
  u_xlat0 = ((x_408 * vec4<f32>(x_409.z, x_409.z, x_409.z, x_409.z)) + x_412);
  let x_414 : vec4<f32> = u_xlat6;
  let x_415 : vec4<f32> = u_xlat6;
  let x_417 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_414 * x_415) + x_417);
  let x_419 : vec4<f32> = u_xlat1;
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat3;
  u_xlat1 = ((x_419 * x_420) + x_422);
  let x_424 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_424, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat3 = inverseSqrt(x_428);
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = x_98.unity_4LightAtten0;
  u_xlat1 = ((x_430 * x_432) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_437 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_437);
  let x_439 : vec4<f32> = u_xlat0;
  let x_440 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_439 * x_440);
  let x_442 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_442, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_446 : vec4<f32> = u_xlat1;
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_446 * x_447);
  let x_449 : vec4<f32> = u_xlat0;
  let x_452 : vec4<f32> = x_98.unity_LightColor[1i];
  let x_454 : vec3<f32> = (vec3<f32>(x_449.y, x_449.y, x_449.y) * vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_458 : vec4<f32> = x_98.unity_LightColor[0i];
  let x_460 : vec4<f32> = u_xlat0;
  let x_463 : vec4<f32> = u_xlat1;
  let x_465 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460.x, x_460.x, x_460.x)) + vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_469 : vec4<f32> = x_98.unity_LightColor[2i];
  let x_471 : vec4<f32> = u_xlat0;
  let x_474 : vec4<f32> = u_xlat1;
  let x_476 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_471.z, x_471.z, x_471.z)) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_480 : vec4<f32> = x_98.unity_LightColor[3i];
  let x_482 : vec4<f32> = u_xlat0;
  let x_485 : vec4<f32> = u_xlat0;
  let x_487 : vec3<f32> = ((vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482.w, x_482.w, x_482.w)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_491 : vec4<f32> = u_xlat2;
  let x_493 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = (vec3<f32>(x_491.x, x_491.y, x_491.z) + vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_497 : f32 = u_xlat4.y;
  u_xlat4.w = (x_497 * 0.5f);
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat4;
  let x_504 : vec2<f32> = (vec2<f32>(x_500.z, x_500.z) + vec2<f32>(x_502.x, x_502.w));
  let x_505 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
  let x_509 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_509);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6, vs_TEXCOORD4, vs_SV_InstanceID0);
}

