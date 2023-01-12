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
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
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

@group(0) @binding(9) var<storage, read> x_62 : unity_ParticleInstanceData;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  var u_xlat8 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlatu2 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb1 : bool;
  var x_477 : vec2<f32>;
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
  u_xlat8 = vec3<f32>(bitcast<f32>(x_95), bitcast<f32>(x_100), bitcast<f32>(x_105));
  let x_109 : f32 = u_xlat8.y;
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
  u_xlat15 = dot(x_168, x_169);
  let x_173 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.y = dot(x_173, x_174);
  let x_179 : f32 = u_xlat15;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_179, x_179, x_179, x_179) * x_187);
  let x_190 : f32 = u_xlat2.x;
  u_xlat4.w = x_190;
  let x_193 : f32 = u_xlat4.y;
  u_xlat5.z = x_193;
  let x_196 : f32 = u_xlat5.y;
  u_xlat4.x = x_196;
  let x_199 : f32 = u_xlat8.x;
  u_xlat4.y = x_199;
  let x_202 : f32 = u_xlat8.z;
  u_xlat5.y = x_202;
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat8.x = dot(x_204, x_205);
  let x_208 : vec4<f32> = u_xlat4;
  let x_209 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.x = dot(x_208, x_209);
  let x_213 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_214 : vec3<f32> = u_xlat8;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_213 * vec4<f32>(x_214.x, x_214.x, x_214.x, x_214.x)) + x_217);
  let x_220 : f32 = u_xlat2.z;
  u_xlat5.w = x_220;
  let x_222 : vec4<f32> = u_xlat5;
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_222, x_223);
  let x_226 : vec4<f32> = u_xlat5;
  let x_227 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.z = dot(x_226, x_227);
  let x_231 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_232 : vec4<f32> = u_xlat0;
  let x_235 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_231 * vec4<f32>(x_232.x, x_232.x, x_232.x, x_232.x)) + x_235);
  let x_237 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat0 = (x_237 + x_239);
  let x_245 : vec4<f32> = u_xlat0;
  gl_Position = x_245;
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_248.y, x_248.z, x_248.x) * vec3<f32>(x_250.z, x_250.x, x_250.y));
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat5;
  let x_258 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_253.z, x_253.x, x_253.y) * vec3<f32>(x_255.y, x_255.z, x_255.x)) + -(x_258));
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec4<f32> = u_xlat5;
  let x_265 : vec3<f32> = (vec3<f32>(x_261.z, x_261.x, x_261.y) * vec3<f32>(x_263.y, x_263.z, x_263.x));
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = u_xlat5;
  let x_273 : vec4<f32> = u_xlat2;
  let x_276 : vec3<f32> = ((vec3<f32>(x_268.y, x_268.z, x_268.x) * vec3<f32>(x_270.z, x_270.x, x_270.y)) + -(vec3<f32>(x_273.x, x_273.y, x_273.z)));
  let x_277 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_285);
  let x_287 : vec3<f32> = u_xlat8;
  let x_288 : f32 = u_xlat24;
  u_xlat8 = (x_287 * vec3<f32>(x_288, x_288, x_288));
  let x_293 : vec3<f32> = in_NORMAL0;
  let x_294 : vec3<f32> = u_xlat8;
  u_xlat5.y = dot(x_293, x_294);
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat8 = (vec3<f32>(x_297.y, x_297.z, x_297.x) * vec3<f32>(x_299.z, x_299.x, x_299.y));
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_302.y, x_302.z, x_302.x) * vec3<f32>(x_304.z, x_304.x, x_304.y)) + -(x_307));
  let x_310 : f32 = u_xlat24;
  let x_312 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_310, x_310, x_310) * x_312);
  let x_314 : vec4<f32> = u_xlat2;
  let x_316 : f32 = u_xlat24;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316, x_316, x_316));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec3<f32> = in_NORMAL0;
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_321, vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : vec3<f32> = in_NORMAL0;
  let x_327 : vec3<f32> = u_xlat8;
  u_xlat5.z = dot(x_326, x_327);
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec4<f32> = u_xlat5;
  u_xlat8.x = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_337 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_337);
  let x_340 : vec3<f32> = u_xlat8;
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_340.x, x_340.x, x_340.x) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_346 : vec3<f32> = u_xlat8;
  vs_TEXCOORD0 = x_346;
  let x_348 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_348 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_354 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_356 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_354, x_354, x_354, x_354) * x_356) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_364 : f32 = u_xlat2.w;
  u_xlatu2.x = (bitcast<u32>(x_364) & 255u);
  let x_370 : u32 = u_xlatu2.x;
  u_xlat4.x = f32(x_370);
  let x_374 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_374);
  param_1 = 8i;
  param_2 = 8i;
  let x_379 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_381 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_381);
  param_4 = 16i;
  param_5 = 8i;
  let x_387 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_389 : vec2<u32> = vec2<u32>(x_379, x_387);
  let x_390 : vec3<u32> = u_xlatu2;
  u_xlatu2 = vec3<u32>(x_389.x, x_389.y, x_390.z);
  let x_393 : f32 = u_xlat2.w;
  u_xlatu2.z = (bitcast<u32>(x_393) >> 24u);
  let x_398 : vec3<u32> = u_xlatu2;
  let x_399 : vec3<f32> = vec3<f32>(x_398);
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_400.x, x_399.x, x_399.y, x_399.z);
  let x_402 : vec4<f32> = u_xlat3;
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_402 * x_403);
  let x_406 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_406 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_411 : f32 = u_xlat1.x;
  let x_413 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat2.x = (x_411 / x_413);
  let x_417 : f32 = u_xlat2.x;
  u_xlat2.x = floor(x_417);
  let x_421 : f32 = u_xlat2.x;
  let x_424 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_427 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_421) * x_424) + x_427);
  let x_431 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_431);
  let x_435 : f32 = u_xlat1.x;
  let x_437 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat3.x = (x_435 * x_437);
  let x_441 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_441) + 1.0f);
  let x_446 : f32 = u_xlat2.x;
  let x_449 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_452 : f32 = u_xlat1.x;
  u_xlat3.y = ((-(x_446) * x_449) + x_452);
  let x_458 : vec2<f32> = in_TEXCOORD0;
  let x_460 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_463 : vec4<f32> = u_xlat3;
  let x_465 : vec2<f32> = ((x_458 * vec2<f32>(x_460.z, x_460.w)) + vec2<f32>(x_463.x, x_463.y));
  let x_466 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
  let x_472 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb1 = !((x_472 == 0.0f));
  let x_475 : bool = u_xlatb1;
  if (x_475) {
    let x_480 : vec4<f32> = u_xlat2;
    x_477 = vec2<f32>(x_480.x, x_480.y);
  } else {
    let x_483 : vec2<f32> = in_TEXCOORD0;
    x_477 = x_483;
  }
  let x_484 : vec2<f32> = x_477;
  let x_485 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
  let x_489 : vec4<f32> = u_xlat2;
  let x_492 : vec4<f32> = x_184.x_MainTex_ST;
  let x_496 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_489.x, x_489.y) * vec2<f32>(x_492.x, x_492.y)) + vec2<f32>(x_496.z, x_496.w));
  let x_500 : f32 = u_xlat8.y;
  let x_502 : f32 = u_xlat8.y;
  u_xlat1.x = (x_500 * x_502);
  let x_506 : f32 = u_xlat8.x;
  let x_508 : f32 = u_xlat8.x;
  let x_511 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_506 * x_508) + -(x_511));
  let x_515 : vec3<f32> = u_xlat8;
  let x_517 : vec3<f32> = u_xlat8;
  u_xlat2 = (vec4<f32>(x_515.y, x_515.z, x_515.z, x_515.x) * vec4<f32>(x_517.x, x_517.y, x_517.z, x_517.z));
  let x_521 : vec4<f32> = x_184.unity_SHBr;
  let x_522 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_521, x_522);
  let x_526 : vec4<f32> = x_184.unity_SHBg;
  let x_527 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_526, x_527);
  let x_531 : vec4<f32> = x_184.unity_SHBb;
  let x_532 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_531, x_532);
  let x_537 : vec4<f32> = x_184.unity_SHC;
  let x_539 : vec4<f32> = u_xlat1;
  let x_542 : vec4<f32> = u_xlat3;
  vs_TEXCOORD3 = ((vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(x_539.x, x_539.x, x_539.x)) + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_546 : f32 = u_xlat0.y;
  let x_548 : f32 = x_184.x_ProjectionParams.x;
  u_xlat0.y = (x_546 * x_548);
  let x_551 : vec4<f32> = u_xlat0;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.w, x_551.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_556 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_555.x, x_556.y, x_555.y, x_555.z);
  let x_559 : vec4<f32> = u_xlat0;
  let x_560 : vec2<f32> = vec2<f32>(x_559.z, x_559.w);
  let x_561 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_561.x, x_561.y, x_560.x, x_560.y);
  let x_563 : vec4<f32> = u_xlat1;
  let x_565 : vec4<f32> = u_xlat1;
  let x_567 : vec2<f32> = (vec2<f32>(x_563.z, x_563.z) + vec2<f32>(x_565.x, x_565.w));
  let x_568 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
  let x_572 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_572);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5);
}

