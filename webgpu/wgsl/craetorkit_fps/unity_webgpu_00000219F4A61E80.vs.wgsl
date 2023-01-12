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

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

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
  var u_xlat8 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatu22 : u32;
  var u_xlatu2 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb2 : bool;
  var x_470 : vec2<f32>;
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
  u_xlat6 = ((x_231 * vec4<f32>(x_232.x, x_232.x, x_232.x, x_232.x)) + x_235);
  let x_241 : vec4<f32> = u_xlat6;
  let x_243 : vec4<f32> = x_184.unity_MatrixVP[3i];
  gl_Position = (x_241 + x_243);
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_248.y, x_248.z, x_248.x) * vec3<f32>(x_250.z, x_250.x, x_250.y));
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat5;
  let x_258 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_253.z, x_253.x, x_253.y) * vec3<f32>(x_255.y, x_255.z, x_255.x)) + -(x_258));
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
  u_xlat22 = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_285);
  let x_287 : vec3<f32> = u_xlat7;
  let x_288 : f32 = u_xlat22;
  u_xlat7 = (x_287 * vec3<f32>(x_288, x_288, x_288));
  let x_293 : vec3<f32> = in_NORMAL0;
  let x_294 : vec3<f32> = u_xlat7;
  u_xlat5.y = dot(x_293, x_294);
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec3<f32>(x_297.y, x_297.z, x_297.x) * vec3<f32>(x_299.z, x_299.x, x_299.y));
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_302.y, x_302.z, x_302.x) * vec3<f32>(x_304.z, x_304.x, x_304.y)) + -(x_307));
  let x_310 : f32 = u_xlat22;
  let x_312 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_310, x_310, x_310) * x_312);
  let x_314 : f32 = u_xlat22;
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec3<f32> = (vec3<f32>(x_314, x_314, x_314) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec3<f32> = in_NORMAL0;
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_321, vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : vec3<f32> = in_NORMAL0;
  let x_327 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_326, x_327);
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_337 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_337);
  let x_340 : vec3<f32> = u_xlat7;
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_340.x, x_340.x, x_340.x) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_346 : vec3<f32> = u_xlat7;
  vs_TEXCOORD0 = x_346;
  let x_348 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_348 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_354 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_356 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_354, x_354, x_354, x_354) * x_356) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_362 : f32 = u_xlat2.w;
  u_xlatu22 = (bitcast<u32>(x_362) & 255u);
  let x_366 : u32 = u_xlatu22;
  u_xlat4.x = f32(x_366);
  let x_373 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_373);
  param_1 = 8i;
  param_2 = 8i;
  let x_378 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_380 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_380);
  param_4 = 16i;
  param_5 = 8i;
  let x_386 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu2 = vec2<u32>(x_378, x_386);
  let x_389 : f32 = u_xlat2.w;
  u_xlatu22 = (bitcast<u32>(x_389) >> 24u);
  let x_393 : u32 = u_xlatu22;
  u_xlat4.w = f32(x_393);
  let x_396 : vec2<u32> = u_xlatu2;
  let x_398 : vec2<f32> = vec2<f32>(x_396);
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_399.x, x_398.x, x_398.y, x_399.w);
  let x_401 : vec4<f32> = u_xlat3;
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_401 * x_402);
  let x_405 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_405 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_410 : f32 = u_xlat1.x;
  let x_412 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat22 = (x_410 / x_412);
  let x_414 : f32 = u_xlat22;
  u_xlat22 = floor(x_414);
  let x_416 : f32 = u_xlat22;
  let x_419 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_422 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_416) * x_419) + x_422);
  let x_426 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_426);
  let x_430 : f32 = u_xlat1.x;
  let x_432 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_430 * x_432);
  let x_436 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_436) + 1.0f);
  let x_440 : f32 = u_xlat22;
  let x_443 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_446 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_440) * x_443) + x_446);
  let x_451 : vec2<f32> = in_TEXCOORD0;
  let x_453 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_456 : vec4<f32> = u_xlat2;
  let x_458 : vec2<f32> = ((x_451 * vec2<f32>(x_453.z, x_453.w)) + vec2<f32>(x_456.x, x_456.y));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_459.y, x_459.z, x_458.y);
  let x_465 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb2 = !((x_465 == 0.0f));
  let x_468 : bool = u_xlatb2;
  if (x_468) {
    let x_473 : vec4<f32> = u_xlat1;
    x_470 = vec2<f32>(x_473.x, x_473.w);
  } else {
    let x_476 : vec2<f32> = in_TEXCOORD0;
    x_470 = x_476;
  }
  let x_477 : vec2<f32> = x_470;
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_477.x, x_478.y, x_478.z, x_477.y);
  let x_482 : vec4<f32> = u_xlat1;
  let x_485 : vec4<f32> = x_184.x_MainTex_ST;
  let x_489 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_482.x, x_482.w) * vec2<f32>(x_485.x, x_485.y)) + vec2<f32>(x_489.z, x_489.w));
  let x_492 : f32 = u_xlat15;
  let x_494 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat1.x = (x_492 * x_494);
  let x_497 : f32 = u_xlat15;
  let x_500 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_502 : vec3<f32> = (vec3<f32>(x_497, x_497, x_497) * vec3<f32>(x_500.x, x_500.y, x_500.w));
  let x_503 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_508 : vec3<f32> = u_xlat8;
  let x_511 : vec4<f32> = u_xlat2;
  let x_513 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.w) * vec3<f32>(x_508.x, x_508.x, x_508.x)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_517 : f32 = x_184.unity_MatrixV[0i].z;
  let x_519 : f32 = u_xlat8.x;
  let x_522 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_517 * x_519) + x_522);
  let x_526 : f32 = x_184.unity_MatrixV[2i].z;
  let x_528 : f32 = u_xlat0.x;
  let x_531 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_526 * x_528) + x_531);
  let x_535 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_537 : vec4<f32> = u_xlat0;
  let x_540 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_535.x, x_535.y, x_535.w) * vec3<f32>(x_537.x, x_537.x, x_537.x)) + vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec3<f32> = u_xlat8;
  let x_545 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat8 = (x_543 + vec3<f32>(x_545.x, x_545.y, x_545.w));
  let x_549 : f32 = u_xlat1.x;
  let x_551 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat0.x = (x_549 + x_551);
  let x_557 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_557);
  let x_562 : f32 = u_xlat8.y;
  let x_564 : f32 = x_184.x_ProjectionParams.x;
  u_xlat0.x = (x_562 * x_564);
  let x_568 : f32 = u_xlat0.x;
  u_xlat2.w = (x_568 * 0.5f);
  let x_572 : vec3<f32> = u_xlat8;
  let x_575 : vec2<f32> = (vec2<f32>(x_572.x, x_572.z) * vec2<f32>(0.5f, 0.5f));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_576.y, x_575.y, x_576.w);
  let x_579 : f32 = u_xlat8.z;
  vs_TEXCOORD3.w = x_579;
  let x_581 : vec4<f32> = u_xlat2;
  let x_583 : vec4<f32> = u_xlat2;
  let x_585 : vec2<f32> = (vec2<f32>(x_581.z, x_581.z) + vec2<f32>(x_583.x, x_583.w));
  let x_586 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
  let x_589 : f32 = u_xlat7.y;
  let x_591 : f32 = u_xlat7.y;
  u_xlat0.x = (x_589 * x_591);
  let x_595 : f32 = u_xlat7.x;
  let x_597 : f32 = u_xlat7.x;
  let x_600 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_595 * x_597) + -(x_600));
  let x_604 : vec3<f32> = u_xlat7;
  let x_606 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec4<f32>(x_604.y, x_604.z, x_604.z, x_604.x) * vec4<f32>(x_606.x, x_606.y, x_606.z, x_606.z));
  let x_610 : vec4<f32> = x_184.unity_SHBr;
  let x_611 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_610, x_611);
  let x_615 : vec4<f32> = x_184.unity_SHBg;
  let x_616 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_615, x_616);
  let x_620 : vec4<f32> = x_184.unity_SHBb;
  let x_621 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_620, x_621);
  let x_626 : vec4<f32> = x_184.unity_SHC;
  let x_628 : vec4<f32> = u_xlat0;
  let x_631 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(x_628.x, x_628.x, x_628.x)) + vec3<f32>(x_631.x, x_631.y, x_631.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_638 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_638);
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
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

