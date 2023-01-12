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
  unity_ParticleUVShiftData : vec4<f32>,
  unity_ParticleUseMeshColors : f32,
  @size(12)
  padding : u32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_49 : UnityDrawCallInfo;

@group(0) @binding(7) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> vs_TEXCOORD5 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlati1 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlatu25 : u32;
  var u_xlatu2 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb2 : bool;
  var x_497 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec4<f32> = in_POSITION0;
  let x_36 : vec3<f32> = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  u_xlat0.w = 1.0f;
  let x_46 : i32 = gl_InstanceIndex;
  let x_53 : i32 = x_49.unity_BaseInstanceID;
  u_xlati1 = (x_46 + x_53);
  let x_63 : i32 = u_xlati1;
  let x_67 : u32 = x_62.unity_ParticleInstanceData_buf[x_63].value[9i];
  let x_69 : i32 = u_xlati1;
  let x_72 : u32 = x_62.unity_ParticleInstanceData_buf[x_69].value[10i];
  let x_74 : i32 = u_xlati1;
  let x_77 : u32 = x_62.unity_ParticleInstanceData_buf[x_74].value[11i];
  let x_79 : i32 = u_xlati1;
  let x_82 : u32 = x_62.unity_ParticleInstanceData_buf[x_79].value[12i];
  u_xlat2 = vec4<f32>(bitcast<f32>(x_67), bitcast<f32>(x_72), bitcast<f32>(x_77), bitcast<f32>(x_82));
  let x_88 : f32 = u_xlat2.y;
  u_xlat3.w = x_88;
  let x_92 : i32 = u_xlati1;
  let x_95 : u32 = x_62.unity_ParticleInstanceData_buf[x_92].value[3i];
  let x_97 : i32 = u_xlati1;
  let x_100 : u32 = x_62.unity_ParticleInstanceData_buf[x_97].value[4i];
  let x_102 : i32 = u_xlati1;
  let x_105 : u32 = x_62.unity_ParticleInstanceData_buf[x_102].value[5i];
  u_xlat9 = vec3<f32>(bitcast<f32>(x_95), bitcast<f32>(x_100), bitcast<f32>(x_105));
  let x_109 : f32 = u_xlat9.y;
  u_xlat3.y = x_109;
  let x_112 : i32 = u_xlati1;
  let x_115 : u32 = x_62.unity_ParticleInstanceData_buf[x_112].value[7i];
  let x_117 : i32 = u_xlati1;
  let x_120 : u32 = x_62.unity_ParticleInstanceData_buf[x_117].value[8i];
  let x_122 : i32 = u_xlati1;
  let x_125 : u32 = x_62.unity_ParticleInstanceData_buf[x_122].value[6i];
  let x_127 : vec3<f32> = vec3<f32>(bitcast<f32>(x_115), bitcast<f32>(x_120), bitcast<f32>(x_125));
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_132 : f32 = u_xlat4.x;
  u_xlat3.z = x_132;
  let x_136 : i32 = u_xlati1;
  let x_139 : u32 = x_62.unity_ParticleInstanceData_buf[x_136].value[2i];
  let x_141 : i32 = u_xlati1;
  let x_143 : u32 = x_62.unity_ParticleInstanceData_buf[x_141].value[0i];
  let x_145 : i32 = u_xlati1;
  let x_148 : u32 = x_62.unity_ParticleInstanceData_buf[x_145].value[1i];
  let x_150 : vec3<f32> = vec3<f32>(bitcast<f32>(x_139), bitcast<f32>(x_143), bitcast<f32>(x_148));
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : i32 = u_xlati1;
  let x_157 : u32 = x_62.unity_ParticleInstanceData_buf[x_154].value[13i];
  u_xlat1.x = bitcast<f32>(x_157);
  let x_161 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_161);
  let x_165 : f32 = u_xlat5.z;
  u_xlat3.x = x_165;
  let x_168 : vec4<f32> = u_xlat3;
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat17 = dot(x_168, x_169);
  let x_172 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = in_POSITION0;
  u_xlat6.y = dot(x_172, x_173);
  let x_177 : f32 = u_xlat17;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat7 = (vec4<f32>(x_177, x_177, x_177, x_177) * x_187);
  let x_190 : f32 = u_xlat2.x;
  u_xlat4.w = x_190;
  let x_193 : f32 = u_xlat4.y;
  u_xlat5.z = x_193;
  let x_196 : f32 = u_xlat5.y;
  u_xlat4.x = x_196;
  let x_199 : f32 = u_xlat9.x;
  u_xlat4.y = x_199;
  let x_202 : f32 = u_xlat9.z;
  u_xlat5.y = x_202;
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat9.x = dot(x_204, x_205);
  let x_208 : vec4<f32> = u_xlat4;
  let x_209 : vec4<f32> = in_POSITION0;
  u_xlat6.x = dot(x_208, x_209);
  let x_213 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_214 : vec3<f32> = u_xlat9;
  let x_217 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_213 * vec4<f32>(x_214.x, x_214.x, x_214.x, x_214.x)) + x_217);
  let x_220 : f32 = u_xlat2.z;
  u_xlat5.w = x_220;
  let x_222 : vec4<f32> = u_xlat5;
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_222, x_223);
  let x_226 : vec4<f32> = u_xlat5;
  let x_227 : vec4<f32> = in_POSITION0;
  u_xlat6.z = dot(x_226, x_227);
  let x_231 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_232 : vec4<f32> = u_xlat0;
  let x_235 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_231 * vec4<f32>(x_232.x, x_232.x, x_232.x, x_232.x)) + x_235);
  let x_237 : vec4<f32> = u_xlat7;
  let x_239 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat7 = (x_237 + x_239);
  let x_245 : vec4<f32> = u_xlat7;
  gl_Position = x_245;
  let x_251 : f32 = u_xlat7.z;
  vs_TEXCOORD5 = x_251;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_253.y, x_253.z, x_253.x) * vec3<f32>(x_255.z, x_255.x, x_255.y));
  let x_258 : vec4<f32> = u_xlat4;
  let x_260 : vec4<f32> = u_xlat5;
  let x_263 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_258.z, x_258.x, x_258.y) * vec3<f32>(x_260.y, x_260.z, x_260.x)) + -(x_263));
  let x_266 : vec4<f32> = u_xlat3;
  let x_268 : vec4<f32> = u_xlat5;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.z, x_266.x, x_266.y) * vec3<f32>(x_268.y, x_268.z, x_268.x));
  let x_271 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat3;
  let x_275 : vec4<f32> = u_xlat5;
  let x_278 : vec4<f32> = u_xlat2;
  let x_281 : vec3<f32> = ((vec3<f32>(x_273.y, x_273.z, x_273.x) * vec3<f32>(x_275.z, x_275.x, x_275.y)) + -(vec3<f32>(x_278.x, x_278.y, x_278.z)));
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_285 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : f32 = u_xlat25;
  u_xlat25 = (1.0f / x_290);
  let x_292 : vec3<f32> = u_xlat8;
  let x_293 : f32 = u_xlat25;
  u_xlat8 = (x_292 * vec3<f32>(x_293, x_293, x_293));
  let x_298 : vec3<f32> = in_NORMAL0;
  let x_299 : vec3<f32> = u_xlat8;
  u_xlat5.y = dot(x_298, x_299);
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat8 = (vec3<f32>(x_302.y, x_302.z, x_302.x) * vec3<f32>(x_304.z, x_304.x, x_304.y));
  let x_307 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = u_xlat3;
  let x_312 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_307.y, x_307.z, x_307.x) * vec3<f32>(x_309.z, x_309.x, x_309.y)) + -(x_312));
  let x_315 : f32 = u_xlat25;
  let x_317 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_315, x_315, x_315) * x_317);
  let x_319 : f32 = u_xlat25;
  let x_321 : vec4<f32> = u_xlat2;
  let x_323 : vec3<f32> = (vec3<f32>(x_319, x_319, x_319) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec3<f32> = in_NORMAL0;
  let x_327 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_326, vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : vec3<f32> = in_NORMAL0;
  let x_332 : vec3<f32> = u_xlat8;
  u_xlat5.z = dot(x_331, x_332);
  let x_335 : vec4<f32> = u_xlat5;
  let x_337 : vec4<f32> = u_xlat5;
  u_xlat8.x = dot(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_342 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_342);
  let x_345 : vec3<f32> = u_xlat8;
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_345.x, x_345.x, x_345.x) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_352 : vec3<f32> = u_xlat8;
  vs_TEXCOORD0 = x_352;
  let x_354 : vec4<f32> = u_xlat6;
  vs_TEXCOORD1 = vec3<f32>(x_354.x, x_354.y, x_354.z);
  let x_356 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = x_184.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_356.x, x_356.x, x_356.x, x_356.x)) + x_360);
  let x_362 : vec4<f32> = u_xlat6;
  let x_366 : vec4<f32> = x_184.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_362.y, x_362.y, x_362.y, x_362.y)) + x_366);
  let x_368 : vec4<f32> = u_xlat6;
  let x_372 : vec4<f32> = x_184.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_368.z, x_368.z, x_368.z, x_368.z)) + x_372);
  let x_375 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_375 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_381 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_381, x_381, x_381, x_381) * x_383) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_389 : f32 = u_xlat2.w;
  u_xlatu25 = (bitcast<u32>(x_389) & 255u);
  let x_393 : u32 = u_xlatu25;
  u_xlat7.x = f32(x_393);
  let x_400 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_400);
  param_1 = 8i;
  param_2 = 8i;
  let x_405 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_407 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_407);
  param_4 = 16i;
  param_5 = 8i;
  let x_413 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu2 = vec2<u32>(x_405, x_413);
  let x_416 : f32 = u_xlat2.w;
  u_xlatu25 = (bitcast<u32>(x_416) >> 24u);
  let x_420 : u32 = u_xlatu25;
  u_xlat7.w = f32(x_420);
  let x_423 : vec2<u32> = u_xlatu2;
  let x_425 : vec2<f32> = vec2<f32>(x_423);
  let x_426 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_426.x, x_425.x, x_425.y, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  let x_429 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_428 * x_429);
  let x_432 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_432 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_437 : f32 = u_xlat1.x;
  let x_439 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat25 = (x_437 / x_439);
  let x_441 : f32 = u_xlat25;
  u_xlat25 = floor(x_441);
  let x_443 : f32 = u_xlat25;
  let x_446 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_449 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_443) * x_446) + x_449);
  let x_453 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_453);
  let x_457 : f32 = u_xlat1.x;
  let x_459 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_457 * x_459);
  let x_463 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_463) + 1.0f);
  let x_467 : f32 = u_xlat25;
  let x_470 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_473 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_467) * x_470) + x_473);
  let x_478 : vec2<f32> = in_TEXCOORD0;
  let x_480 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_483 : vec4<f32> = u_xlat2;
  let x_485 : vec2<f32> = ((x_478 * vec2<f32>(x_480.z, x_480.w)) + vec2<f32>(x_483.x, x_483.y));
  let x_486 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_485.x, x_486.y, x_486.z, x_485.y);
  let x_492 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb2 = !((x_492 == 0.0f));
  let x_495 : bool = u_xlatb2;
  if (x_495) {
    let x_500 : vec4<f32> = u_xlat1;
    x_497 = vec2<f32>(x_500.x, x_500.w);
  } else {
    let x_503 : vec2<f32> = in_TEXCOORD0;
    x_497 = x_503;
  }
  let x_504 : vec2<f32> = x_497;
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_504.x, x_505.y, x_505.z, x_504.y);
  let x_509 : vec4<f32> = u_xlat1;
  let x_513 : vec4<f32> = x_184.x_MainTex_ST;
  let x_517 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_509.x, x_509.w) * vec2<f32>(x_513.x, x_513.y)) + vec2<f32>(x_517.z, x_517.w));
  let x_520 : f32 = u_xlat17;
  let x_522 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat1.x = (x_520 * x_522);
  let x_525 : f32 = u_xlat17;
  let x_528 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_530 : vec3<f32> = (vec3<f32>(x_525, x_525, x_525) * vec3<f32>(x_528.x, x_528.y, x_528.w));
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_534 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_536 : vec3<f32> = u_xlat9;
  let x_539 : vec4<f32> = u_xlat2;
  let x_541 : vec3<f32> = ((vec3<f32>(x_534.x, x_534.y, x_534.w) * vec3<f32>(x_536.x, x_536.x, x_536.x)) + vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_545 : f32 = x_184.unity_MatrixV[0i].z;
  let x_547 : f32 = u_xlat9.x;
  let x_550 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_545 * x_547) + x_550);
  let x_554 : f32 = x_184.unity_MatrixV[2i].z;
  let x_556 : f32 = u_xlat0.x;
  let x_559 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_554 * x_556) + x_559);
  let x_563 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_565 : vec4<f32> = u_xlat0;
  let x_568 : vec4<f32> = u_xlat2;
  u_xlat9 = ((vec3<f32>(x_563.x, x_563.y, x_563.w) * vec3<f32>(x_565.x, x_565.x, x_565.x)) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec3<f32> = u_xlat9;
  let x_573 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat9 = (x_571 + vec3<f32>(x_573.x, x_573.y, x_573.w));
  let x_577 : f32 = u_xlat1.x;
  let x_579 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat0.x = (x_577 + x_579);
  let x_585 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_585);
  let x_590 : f32 = u_xlat9.y;
  let x_592 : f32 = x_184.x_ProjectionParams.x;
  u_xlat0.x = (x_590 * x_592);
  let x_596 : f32 = u_xlat0.x;
  u_xlat2.w = (x_596 * 0.5f);
  let x_600 : vec3<f32> = u_xlat9;
  let x_603 : vec2<f32> = (vec2<f32>(x_600.x, x_600.z) * vec2<f32>(0.5f, 0.5f));
  let x_604 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_603.x, x_604.y, x_603.y, x_604.w);
  let x_607 : f32 = u_xlat9.z;
  vs_TEXCOORD3.w = x_607;
  let x_609 : vec4<f32> = u_xlat2;
  let x_611 : vec4<f32> = u_xlat2;
  let x_613 : vec2<f32> = (vec2<f32>(x_609.z, x_609.z) + vec2<f32>(x_611.x, x_611.w));
  let x_614 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
  let x_616 : vec3<f32> = u_xlat8;
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_616.y, x_616.y, x_616.y, x_616.y) * x_618);
  let x_620 : vec4<f32> = u_xlat4;
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_620 * x_621);
  let x_623 : vec4<f32> = u_xlat3;
  let x_624 : vec4<f32> = u_xlat3;
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_623 * x_624) + x_626);
  let x_628 : vec4<f32> = u_xlat3;
  let x_629 : vec3<f32> = u_xlat8;
  let x_632 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_628 * vec4<f32>(x_629.x, x_629.x, x_629.x, x_629.x)) + x_632);
  let x_634 : vec4<f32> = u_xlat5;
  let x_635 : vec3<f32> = u_xlat8;
  let x_638 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_634 * vec4<f32>(x_635.z, x_635.z, x_635.z, x_635.z)) + x_638);
  let x_640 : vec4<f32> = u_xlat5;
  let x_641 : vec4<f32> = u_xlat5;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_640 * x_641) + x_643);
  let x_645 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_645, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_649 : vec4<f32> = u_xlat2;
  u_xlat3 = inverseSqrt(x_649);
  let x_651 : vec4<f32> = u_xlat2;
  let x_653 : vec4<f32> = x_184.unity_4LightAtten0;
  u_xlat2 = ((x_651 * x_653) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_656);
  let x_658 : vec4<f32> = u_xlat1;
  let x_659 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_658 * x_659);
  let x_661 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_661, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_664 : vec4<f32> = u_xlat2;
  let x_665 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_664 * x_665);
  let x_667 : vec4<f32> = u_xlat1;
  let x_670 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_672 : vec3<f32> = (vec3<f32>(x_667.y, x_667.y, x_667.y) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_676 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_678 : vec4<f32> = u_xlat1;
  let x_681 : vec4<f32> = u_xlat2;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678.x, x_678.x, x_678.x)) + vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_687 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_689 : vec4<f32> = u_xlat1;
  let x_692 : vec4<f32> = u_xlat2;
  let x_694 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_689.z, x_689.z, x_689.z)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_698 : vec4<f32> = x_184.unity_LightColor[3i];
  let x_700 : vec4<f32> = u_xlat1;
  let x_703 : vec4<f32> = u_xlat1;
  let x_705 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(x_700.w, x_700.w, x_700.w)) + vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_706 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_709 : f32 = u_xlat8.y;
  let x_711 : f32 = u_xlat8.y;
  u_xlat0.x = (x_709 * x_711);
  let x_715 : f32 = u_xlat8.x;
  let x_717 : f32 = u_xlat8.x;
  let x_720 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_715 * x_717) + -(x_720));
  let x_724 : vec3<f32> = u_xlat8;
  let x_726 : vec3<f32> = u_xlat8;
  u_xlat2 = (vec4<f32>(x_724.y, x_724.z, x_724.z, x_724.x) * vec4<f32>(x_726.x, x_726.y, x_726.z, x_726.z));
  let x_730 : vec4<f32> = x_184.unity_SHBr;
  let x_731 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_730, x_731);
  let x_735 : vec4<f32> = x_184.unity_SHBg;
  let x_736 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_735, x_736);
  let x_740 : vec4<f32> = x_184.unity_SHBb;
  let x_741 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_740, x_741);
  let x_745 : vec4<f32> = x_184.unity_SHC;
  let x_747 : vec4<f32> = u_xlat0;
  let x_750 : vec4<f32> = u_xlat3;
  let x_752 : vec3<f32> = ((vec3<f32>(x_745.x, x_745.y, x_745.z) * vec3<f32>(x_747.x, x_747.x, x_747.x)) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_756 : vec4<f32> = u_xlat0;
  let x_758 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_756.x, x_756.y, x_756.z) + vec3<f32>(x_758.x, x_758.y, x_758.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_764 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_764);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

