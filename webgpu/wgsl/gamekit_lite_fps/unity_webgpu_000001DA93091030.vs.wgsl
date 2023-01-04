struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

type Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  value : Arr,
}

type RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  unity_ParticleInstanceData_buf : RTArr,
}

struct VGlobals {
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_ParticleUVShiftData : vec4<f32>,
  unity_ParticleUseMeshColors : f32,
  @size(12)
  padding : u32,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlati1 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(10) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(11) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec2<f32>;

var<private> u_xlat15 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(9) var<uniform> x_187 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat21 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu8 : vec3<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb15 : bool;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var x_573 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec4<f32> = in_POSITION0;
  let x_36 : vec3<f32> = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  u_xlat0.w = 1.0f;
  let x_47 : i32 = gl_InstanceIndex;
  let x_54 : i32 = x_50.unity_BaseInstanceID;
  u_xlati1 = (x_47 + x_54);
  let x_64 : i32 = u_xlati1;
  let x_68 : u32 = x_63.unity_ParticleInstanceData_buf[x_64].value[9i];
  let x_70 : i32 = u_xlati1;
  let x_73 : u32 = x_63.unity_ParticleInstanceData_buf[x_70].value[10i];
  let x_75 : i32 = u_xlati1;
  let x_78 : u32 = x_63.unity_ParticleInstanceData_buf[x_75].value[11i];
  let x_80 : i32 = u_xlati1;
  let x_83 : u32 = x_63.unity_ParticleInstanceData_buf[x_80].value[12i];
  u_xlat2 = vec4<f32>(bitcast<f32>(x_68), bitcast<f32>(x_73), bitcast<f32>(x_78), bitcast<f32>(x_83));
  let x_89 : f32 = u_xlat2.y;
  u_xlat3.w = x_89;
  let x_93 : i32 = u_xlati1;
  let x_96 : u32 = x_63.unity_ParticleInstanceData_buf[x_93].value[3i];
  let x_98 : i32 = u_xlati1;
  let x_101 : u32 = x_63.unity_ParticleInstanceData_buf[x_98].value[4i];
  let x_103 : i32 = u_xlati1;
  let x_106 : u32 = x_63.unity_ParticleInstanceData_buf[x_103].value[5i];
  u_xlat8 = vec3<f32>(bitcast<f32>(x_96), bitcast<f32>(x_101), bitcast<f32>(x_106));
  let x_110 : f32 = u_xlat8.y;
  u_xlat3.y = x_110;
  let x_113 : i32 = u_xlati1;
  let x_116 : u32 = x_63.unity_ParticleInstanceData_buf[x_113].value[7i];
  let x_118 : i32 = u_xlati1;
  let x_121 : u32 = x_63.unity_ParticleInstanceData_buf[x_118].value[8i];
  let x_123 : i32 = u_xlati1;
  let x_126 : u32 = x_63.unity_ParticleInstanceData_buf[x_123].value[6i];
  let x_128 : vec3<f32> = vec3<f32>(bitcast<f32>(x_116), bitcast<f32>(x_121), bitcast<f32>(x_126));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_133 : f32 = u_xlat4.x;
  u_xlat3.z = x_133;
  let x_137 : i32 = u_xlati1;
  let x_140 : u32 = x_63.unity_ParticleInstanceData_buf[x_137].value[2i];
  let x_142 : i32 = u_xlati1;
  let x_144 : u32 = x_63.unity_ParticleInstanceData_buf[x_142].value[0i];
  let x_146 : i32 = u_xlati1;
  let x_149 : u32 = x_63.unity_ParticleInstanceData_buf[x_146].value[1i];
  let x_151 : vec3<f32> = vec3<f32>(bitcast<f32>(x_140), bitcast<f32>(x_144), bitcast<f32>(x_149));
  let x_152 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_157 : i32 = u_xlati1;
  let x_160 : u32 = x_63.unity_ParticleInstanceData_buf[x_157].value[13i];
  u_xlat1.x = bitcast<f32>(x_160);
  let x_164 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_164);
  let x_168 : f32 = u_xlat5.z;
  u_xlat3.x = x_168;
  let x_171 : vec4<f32> = u_xlat3;
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(x_171, x_172);
  let x_176 : vec4<f32> = u_xlat3;
  let x_177 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.w = dot(x_176, x_177);
  let x_182 : f32 = u_xlat15;
  let x_190 : vec4<f32> = x_187.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_182, x_182, x_182, x_182) * x_190);
  let x_193 : f32 = u_xlat2.x;
  u_xlat4.w = x_193;
  let x_196 : f32 = u_xlat4.y;
  u_xlat5.z = x_196;
  let x_199 : f32 = u_xlat5.y;
  u_xlat4.x = x_199;
  let x_202 : f32 = u_xlat8.x;
  u_xlat4.y = x_202;
  let x_205 : f32 = u_xlat8.z;
  u_xlat5.y = x_205;
  let x_207 : vec4<f32> = u_xlat4;
  let x_208 : vec4<f32> = u_xlat0;
  u_xlat8.x = dot(x_207, x_208);
  let x_212 : vec4<f32> = u_xlat4;
  let x_213 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD0.w = dot(x_212, x_213);
  let x_217 : vec4<f32> = x_187.unity_MatrixVP[0i];
  let x_218 : vec3<f32> = u_xlat8;
  let x_221 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_217 * vec4<f32>(x_218.x, x_218.x, x_218.x, x_218.x)) + x_221);
  let x_224 : f32 = u_xlat2.z;
  u_xlat5.w = x_224;
  let x_226 : vec4<f32> = u_xlat5;
  let x_227 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_226, x_227);
  let x_231 : vec4<f32> = u_xlat5;
  let x_232 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD2.w = dot(x_231, x_232);
  let x_236 : vec4<f32> = x_187.unity_MatrixVP[2i];
  let x_237 : vec4<f32> = u_xlat0;
  let x_240 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_236 * vec4<f32>(x_237.x, x_237.x, x_237.x, x_237.x)) + x_240);
  let x_246 : vec4<f32> = u_xlat0;
  let x_248 : vec4<f32> = x_187.unity_MatrixVP[3i];
  gl_Position = (x_246 + x_248);
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec4<f32> = u_xlat5;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.y, x_251.z, x_251.x) * vec3<f32>(x_253.z, x_253.x, x_253.y));
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat4;
  let x_260 : vec4<f32> = u_xlat5;
  let x_263 : vec4<f32> = u_xlat0;
  let x_266 : vec3<f32> = ((vec3<f32>(x_258.z, x_258.x, x_258.y) * vec3<f32>(x_260.y, x_260.z, x_260.x)) + -(vec3<f32>(x_263.x, x_263.y, x_263.z)));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat3;
  let x_271 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_269.z, x_269.x, x_269.y) * vec3<f32>(x_271.y, x_271.z, x_271.x));
  let x_274 : vec4<f32> = u_xlat3;
  let x_276 : vec4<f32> = u_xlat5;
  let x_279 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_274.y, x_274.z, x_274.x) * vec3<f32>(x_276.z, x_276.x, x_276.y)) + -(x_279));
  let x_282 : vec4<f32> = u_xlat5;
  let x_285 : vec4<f32> = in_TANGENT0;
  u_xlat2.y = dot(vec3<f32>(x_282.x, x_282.y, x_282.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_290 : vec4<f32> = u_xlat4;
  let x_292 : vec3<f32> = u_xlat8;
  u_xlat21 = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), x_292);
  let x_294 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_294);
  let x_296 : f32 = u_xlat21;
  let x_298 : vec4<f32> = u_xlat0;
  let x_300 : vec3<f32> = (vec3<f32>(x_296, x_296, x_296) * vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_305 : vec3<f32> = in_NORMAL0;
  let x_306 : vec4<f32> = u_xlat0;
  u_xlat0.y = dot(x_305, vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_310 : vec4<f32> = u_xlat3;
  let x_312 : vec4<f32> = u_xlat4;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.y, x_310.z, x_310.x) * vec3<f32>(x_312.z, x_312.x, x_312.y));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_319 : vec4<f32> = u_xlat3;
  let x_322 : vec4<f32> = u_xlat5;
  let x_325 : vec3<f32> = ((vec3<f32>(x_317.y, x_317.z, x_317.x) * vec3<f32>(x_319.z, x_319.x, x_319.y)) + -(vec3<f32>(x_322.x, x_322.y, x_322.z)));
  let x_326 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat3;
  let x_330 : vec4<f32> = in_TANGENT0;
  u_xlat2.x = dot(vec3<f32>(x_328.x, x_328.y, x_328.z), vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_334 : vec4<f32> = u_xlat4;
  let x_336 : vec4<f32> = in_TANGENT0;
  u_xlat2.z = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_340 : f32 = u_xlat21;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = (vec3<f32>(x_340, x_340, x_340) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : f32 = u_xlat21;
  let x_349 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_347, x_347, x_347) * x_349);
  let x_351 : vec3<f32> = in_NORMAL0;
  let x_352 : vec3<f32> = u_xlat8;
  u_xlat0.x = dot(x_351, x_352);
  let x_355 : vec3<f32> = in_NORMAL0;
  let x_356 : vec4<f32> = u_xlat3;
  u_xlat0.z = dot(x_355, vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_360 : vec4<f32> = u_xlat0;
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_365);
  let x_367 : f32 = u_xlat21;
  let x_369 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(x_367, x_367, x_367, x_367) * vec4<f32>(x_369.x, x_369.y, x_369.z, x_369.z));
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat8.x = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_379 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_379);
  let x_382 : vec3<f32> = u_xlat8;
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat8 = (vec3<f32>(x_382.x, x_382.x, x_382.x) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat0;
  let x_389 : vec3<f32> = u_xlat8;
  let x_390 : vec3<f32> = (vec3<f32>(x_387.w, x_387.x, x_387.y) * x_389);
  let x_391 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat0;
  let x_395 : vec3<f32> = u_xlat8;
  let x_398 : vec4<f32> = u_xlat2;
  let x_401 : vec3<f32> = ((vec3<f32>(x_393.y, x_393.w, x_393.x) * vec3<f32>(x_395.y, x_395.z, x_395.x)) + -(vec3<f32>(x_398.x, x_398.y, x_398.z)));
  let x_402 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_406 : f32 = in_TANGENT0.w;
  let x_409 : f32 = x_187.unity_WorldTransformParams.w;
  u_xlat3.x = (x_406 * x_409);
  let x_412 : vec4<f32> = u_xlat2;
  let x_414 : vec4<f32> = u_xlat3;
  let x_416 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.x, x_414.x, x_414.x));
  let x_417 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_420 : f32 = u_xlat2.x;
  vs_TEXCOORD0.y = x_420;
  let x_423 : f32 = u_xlat0.x;
  vs_TEXCOORD0.z = x_423;
  let x_426 : f32 = u_xlat8.z;
  vs_TEXCOORD0.x = x_426;
  let x_429 : f32 = u_xlat8.x;
  vs_TEXCOORD1.x = x_429;
  let x_432 : f32 = u_xlat8.y;
  vs_TEXCOORD2.x = x_432;
  let x_435 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_435;
  let x_438 : f32 = u_xlat2.y;
  vs_TEXCOORD1.y = x_438;
  let x_441 : f32 = u_xlat2.z;
  vs_TEXCOORD2.y = x_441;
  let x_444 : f32 = u_xlat0.w;
  vs_TEXCOORD2.z = x_444;
  let x_447 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_447 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_452 : f32 = x_187.unity_ParticleUseMeshColors;
  let x_454 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_452, x_452, x_452, x_452) * x_454) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_462 : f32 = u_xlat2.w;
  u_xlatu8.x = (bitcast<u32>(x_462) & 255u);
  let x_469 : u32 = u_xlatu8.x;
  u_xlat4.x = f32(x_469);
  let x_473 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_473);
  param_1 = 8i;
  param_2 = 8i;
  let x_478 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_480 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_480);
  param_4 = 16i;
  param_5 = 8i;
  let x_486 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_488 : vec2<u32> = vec2<u32>(x_478, x_486);
  let x_489 : vec3<u32> = u_xlatu8;
  u_xlatu8 = vec3<u32>(x_488.x, x_488.y, x_489.z);
  let x_492 : f32 = u_xlat2.w;
  u_xlatu8.z = (bitcast<u32>(x_492) >> 24u);
  let x_497 : vec3<u32> = u_xlatu8;
  let x_498 : vec3<f32> = vec3<f32>(x_497);
  let x_499 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_499.x, x_498.x, x_498.y, x_498.z);
  let x_501 : vec4<f32> = u_xlat3;
  let x_502 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_501 * x_502);
  let x_505 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_505 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_510 : f32 = u_xlat1.x;
  let x_512 : f32 = x_187.unity_ParticleUVShiftData.y;
  u_xlat8.x = (x_510 / x_512);
  let x_516 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_516);
  let x_520 : f32 = u_xlat8.x;
  let x_523 : f32 = x_187.unity_ParticleUVShiftData.y;
  let x_526 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_520) * x_523) + x_526);
  let x_530 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_530);
  let x_534 : f32 = u_xlat1.x;
  let x_536 : f32 = x_187.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_534 * x_536);
  let x_540 : f32 = x_187.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_540) + 1.0f);
  let x_545 : f32 = u_xlat8.x;
  let x_548 : f32 = x_187.unity_ParticleUVShiftData.w;
  let x_551 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_545) * x_548) + x_551);
  let x_556 : vec2<f32> = in_TEXCOORD0;
  let x_558 : vec4<f32> = x_187.unity_ParticleUVShiftData;
  let x_561 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_556 * vec2<f32>(x_558.z, x_558.w)) + vec2<f32>(x_561.x, x_561.y));
  let x_568 : f32 = x_187.unity_ParticleUVShiftData.x;
  u_xlatb15 = !((x_568 == 0.0f));
  let x_571 : bool = u_xlatb15;
  if (x_571) {
    let x_576 : vec2<f32> = u_xlat1;
    x_573 = x_576;
  } else {
    let x_578 : vec2<f32> = in_TEXCOORD0;
    x_573 = x_578;
  }
  let x_579 : vec2<f32> = x_573;
  u_xlat1 = x_579;
  let x_582 : vec2<f32> = u_xlat1;
  let x_584 : vec4<f32> = x_187.x_MainTex_ST;
  let x_588 : vec4<f32> = x_187.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_582 * vec2<f32>(x_584.x, x_584.y)) + vec2<f32>(x_588.z, x_588.w));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_594 : f32 = u_xlat0.y;
  let x_596 : f32 = u_xlat0.y;
  u_xlat1.x = (x_594 * x_596);
  let x_600 : f32 = u_xlat0.x;
  let x_602 : f32 = u_xlat0.x;
  let x_605 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_600 * x_602) + -(x_605));
  let x_609 : vec4<f32> = u_xlat0;
  let x_611 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(x_609.y, x_609.w, x_609.z, x_609.x) * x_611);
  let x_614 : vec4<f32> = x_187.unity_SHBr;
  let x_615 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_614, x_615);
  let x_619 : vec4<f32> = x_187.unity_SHBg;
  let x_620 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_619, x_620);
  let x_624 : vec4<f32> = x_187.unity_SHBb;
  let x_625 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_624, x_625);
  let x_631 : vec4<f32> = x_187.unity_SHC;
  let x_633 : vec2<f32> = u_xlat1;
  let x_636 : vec4<f32> = u_xlat2;
  vs_TEXCOORD6 = ((vec3<f32>(x_631.x, x_631.y, x_631.z) * vec3<f32>(x_633.x, x_633.x, x_633.x)) + vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_640 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_640);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, gl_Position, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD6);
}

