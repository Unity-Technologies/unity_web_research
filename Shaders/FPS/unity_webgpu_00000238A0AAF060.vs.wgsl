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

@group(0) @binding(9) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(8) var<uniform> x_93 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat15 : f32;

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
  u_xlat5 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.w, x_81.w, x_81.w)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
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
  let x_118 : vec4<f32> = x_93.unity_MatrixVP[3i];
  let x_119 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat1;
  gl_Position = ((x_118 * vec4<f32>(x_119.w, x_119.w, x_119.w, x_119.w)) + x_122);
  let x_128 : vec3<f32> = in_NORMAL0;
  let x_129 : i32 = u_xlati0;
  let x_132 : vec4<f32> = x_38.unity_Builtins0Array[(x_129 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat1.x = dot(x_128, vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_138 : vec3<f32> = in_NORMAL0;
  let x_139 : i32 = u_xlati0;
  let x_142 : vec4<f32> = x_38.unity_Builtins0Array[(x_139 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat1.y = dot(x_138, vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_146 : vec3<f32> = in_NORMAL0;
  let x_147 : i32 = u_xlati0;
  let x_150 : vec4<f32> = x_38.unity_Builtins0Array[(x_147 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat1.z = dot(x_146, vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_156 : vec4<f32> = u_xlat1;
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_163 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_163);
  let x_166 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat1;
  let x_170 : vec3<f32> = (vec3<f32>(x_166.x, x_166.x, x_166.x) * vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_175 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_175.x, x_175.y, x_175.z);
  let x_178 : vec3<f32> = u_xlat5;
  vs_TEXCOORD1 = x_178;
  let x_181 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_181;
  let x_187 : vec2<f32> = in_TEXCOORD0;
  let x_190 : vec4<f32> = x_93.x_MainTex_ST;
  let x_194 : vec4<f32> = x_93.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_187 * vec2<f32>(x_190.x, x_190.y)) + vec2<f32>(x_194.z, x_194.w));
  let x_198 : f32 = u_xlat2.y;
  let x_202 : f32 = x_93.unity_MatrixV[1i].z;
  u_xlat0.x = (x_198 * x_202);
  let x_206 : f32 = x_93.unity_MatrixV[0i].z;
  let x_208 : f32 = u_xlat2.x;
  let x_211 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_206 * x_208) + x_211);
  let x_215 : f32 = x_93.unity_MatrixV[2i].z;
  let x_217 : f32 = u_xlat2.z;
  let x_220 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_215 * x_217) + x_220);
  let x_224 : f32 = x_93.unity_MatrixV[3i].z;
  let x_227 : f32 = u_xlat2.w;
  let x_230 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_224 * x_227) + x_230);
  let x_235 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_235);
  let x_239 : vec4<f32> = u_xlat2;
  let x_242 : vec4<f32> = x_93.unity_MatrixVP[1i];
  let x_244 : vec3<f32> = (vec3<f32>(x_239.y, x_239.y, x_239.y) * vec3<f32>(x_242.x, x_242.y, x_242.w));
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_248 : vec4<f32> = x_93.unity_MatrixVP[0i];
  let x_250 : vec4<f32> = u_xlat2;
  let x_253 : vec4<f32> = u_xlat3;
  let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.w) * vec3<f32>(x_250.x, x_250.x, x_250.x)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = x_93.unity_MatrixVP[2i];
  let x_261 : vec4<f32> = u_xlat2;
  let x_264 : vec4<f32> = u_xlat3;
  let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.w) * vec3<f32>(x_261.z, x_261.z, x_261.z)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = x_93.unity_MatrixVP[3i];
  let x_272 : vec4<f32> = u_xlat2;
  let x_275 : vec4<f32> = u_xlat2;
  let x_277 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.w) * vec3<f32>(x_272.w, x_272.w, x_272.w)) + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat2;
  let x_284 : vec2<f32> = (vec2<f32>(x_280.x, x_280.z) * vec2<f32>(0.5f, 0.5f));
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_284.x, x_285.y, x_284.y, x_285.w);
  let x_288 : f32 = u_xlat2.y;
  let x_290 : f32 = x_93.x_ProjectionParams.x;
  u_xlat0.x = (x_288 * x_290);
  let x_294 : f32 = u_xlat2.z;
  vs_TEXCOORD3.w = x_294;
  let x_297 : f32 = u_xlat0.x;
  u_xlat3.w = (x_297 * 0.5f);
  let x_300 : vec4<f32> = u_xlat3;
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec2<f32> = (vec2<f32>(x_300.z, x_300.z) + vec2<f32>(x_302.x, x_302.w));
  let x_305 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_304.x, x_304.y, x_305.z, x_305.w);
  let x_307 : vec3<f32> = u_xlat5;
  let x_311 : vec4<f32> = x_93.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_307.x, x_307.x, x_307.x, x_307.x)) + x_311);
  let x_313 : vec3<f32> = u_xlat5;
  let x_317 : vec4<f32> = x_93.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_313.y, x_313.y, x_313.y, x_313.y)) + x_317);
  let x_319 : vec3<f32> = u_xlat5;
  let x_323 : vec4<f32> = x_93.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_319.z, x_319.z, x_319.z, x_319.z)) + x_323);
  let x_326 : vec4<f32> = u_xlat1;
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_326.y, x_326.y, x_326.y, x_326.y) * x_328);
  let x_330 : vec4<f32> = u_xlat3;
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_330 * x_331);
  let x_333 : vec4<f32> = u_xlat2;
  let x_334 : vec4<f32> = u_xlat2;
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_333 * x_334) + x_336);
  let x_338 : vec4<f32> = u_xlat2;
  let x_339 : vec4<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_338 * vec4<f32>(x_339.x, x_339.x, x_339.x, x_339.x)) + x_342);
  let x_344 : vec4<f32> = u_xlat0;
  let x_345 : vec4<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_344 * vec4<f32>(x_345.z, x_345.z, x_345.z, x_345.z)) + x_348);
  let x_350 : vec4<f32> = u_xlat0;
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_350 * x_351) + x_353);
  let x_355 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_355, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_359 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_359);
  let x_361 : vec4<f32> = u_xlat0;
  let x_364 : vec4<f32> = x_93.unity_4LightAtten0;
  u_xlat0 = ((x_361 * x_364) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_369 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_369);
  let x_371 : vec4<f32> = u_xlat2;
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_371 * x_372);
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_374, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_378 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_378 * x_379);
  let x_381 : vec4<f32> = u_xlat0;
  let x_385 : vec4<f32> = x_93.unity_LightColor[1i];
  let x_387 : vec3<f32> = (vec3<f32>(x_381.y, x_381.y, x_381.y) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : vec4<f32> = x_93.unity_LightColor[0i];
  let x_393 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat2;
  let x_398 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393.x, x_393.x, x_393.x)) + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_402 : vec4<f32> = x_93.unity_LightColor[2i];
  let x_404 : vec4<f32> = u_xlat0;
  let x_407 : vec4<f32> = u_xlat2;
  let x_409 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.y, x_402.z) * vec3<f32>(x_404.z, x_404.z, x_404.z)) + vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_413 : vec4<f32> = x_93.unity_LightColor[3i];
  let x_415 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = u_xlat0;
  let x_420 : vec3<f32> = ((vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_415.w, x_415.w, x_415.w)) + vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_425 : f32 = u_xlat1.y;
  let x_427 : f32 = u_xlat1.y;
  u_xlat15 = (x_425 * x_427);
  let x_430 : f32 = u_xlat1.x;
  let x_432 : f32 = u_xlat1.x;
  let x_434 : f32 = u_xlat15;
  u_xlat15 = ((x_430 * x_432) + -(x_434));
  let x_437 : vec4<f32> = u_xlat1;
  let x_439 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_437.y, x_437.z, x_437.z, x_437.x) * vec4<f32>(x_439.x, x_439.y, x_439.z, x_439.z));
  let x_444 : vec4<f32> = x_93.unity_SHBr;
  let x_445 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_444, x_445);
  let x_450 : vec4<f32> = x_93.unity_SHBg;
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_450, x_451);
  let x_455 : vec4<f32> = x_93.unity_SHBb;
  let x_456 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_455, x_456);
  let x_461 : vec4<f32> = x_93.unity_SHC;
  let x_463 : f32 = u_xlat15;
  let x_466 : vec4<f32> = u_xlat2;
  let x_468 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463, x_463, x_463)) + vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : vec4<f32> = u_xlat0;
  let x_474 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_472.x, x_472.y, x_472.z) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_480 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_480);
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
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

