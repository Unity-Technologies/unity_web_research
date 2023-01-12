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

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_TEXCOORD4 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

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
  var u_xlat27 : f32;
  var u_xlatu2 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb1 : bool;
  var x_499 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat8 : f32;
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
  u_xlat0 = ((x_231 * vec4<f32>(x_232.x, x_232.x, x_232.x, x_232.x)) + x_235);
  let x_237 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat0 = (x_237 + x_239);
  let x_245 : vec4<f32> = u_xlat0;
  gl_Position = x_245;
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_248.y, x_248.z, x_248.x) * vec3<f32>(x_250.z, x_250.x, x_250.y));
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat5;
  let x_258 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_253.z, x_253.x, x_253.y) * vec3<f32>(x_255.y, x_255.z, x_255.x)) + -(x_258));
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
  u_xlat27 = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : f32 = u_xlat27;
  u_xlat27 = (1.0f / x_285);
  let x_287 : vec3<f32> = u_xlat9;
  let x_288 : f32 = u_xlat27;
  u_xlat9 = (x_287 * vec3<f32>(x_288, x_288, x_288));
  let x_293 : vec3<f32> = in_NORMAL0;
  let x_294 : vec3<f32> = u_xlat9;
  u_xlat5.y = dot(x_293, x_294);
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat9 = (vec3<f32>(x_297.y, x_297.z, x_297.x) * vec3<f32>(x_299.z, x_299.x, x_299.y));
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_302.y, x_302.z, x_302.x) * vec3<f32>(x_304.z, x_304.x, x_304.y)) + -(x_307));
  let x_310 : f32 = u_xlat27;
  let x_312 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_310, x_310, x_310) * x_312);
  let x_314 : vec4<f32> = u_xlat2;
  let x_316 : f32 = u_xlat27;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316, x_316, x_316));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec3<f32> = in_NORMAL0;
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_321, vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : vec3<f32> = in_NORMAL0;
  let x_327 : vec3<f32> = u_xlat9;
  u_xlat5.z = dot(x_326, x_327);
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec4<f32> = u_xlat5;
  u_xlat9.x = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_337 : f32 = u_xlat9.x;
  u_xlat9.x = inverseSqrt(x_337);
  let x_340 : vec3<f32> = u_xlat9;
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_340.x, x_340.x, x_340.x) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_347 : vec3<f32> = u_xlat9;
  vs_TEXCOORD0 = x_347;
  let x_349 : vec4<f32> = u_xlat6;
  vs_TEXCOORD1 = vec3<f32>(x_349.x, x_349.y, x_349.z);
  let x_351 : vec4<f32> = u_xlat6;
  let x_355 : vec4<f32> = x_184.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_351.x, x_351.x, x_351.x, x_351.x)) + x_355);
  let x_357 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = x_184.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_357.y, x_357.y, x_357.y, x_357.y)) + x_361);
  let x_363 : vec4<f32> = u_xlat6;
  let x_367 : vec4<f32> = x_184.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_363.z, x_363.z, x_363.z, x_363.z)) + x_367);
  let x_370 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_370 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_376 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_376, x_376, x_376, x_376) * x_378) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_386 : f32 = u_xlat2.w;
  u_xlatu2.x = (bitcast<u32>(x_386) & 255u);
  let x_392 : u32 = u_xlatu2.x;
  u_xlat7.x = f32(x_392);
  let x_396 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_396);
  param_1 = 8i;
  param_2 = 8i;
  let x_401 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_403 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_403);
  param_4 = 16i;
  param_5 = 8i;
  let x_409 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_411 : vec2<u32> = vec2<u32>(x_401, x_409);
  let x_412 : vec3<u32> = u_xlatu2;
  u_xlatu2 = vec3<u32>(x_411.x, x_411.y, x_412.z);
  let x_415 : f32 = u_xlat2.w;
  u_xlatu2.z = (bitcast<u32>(x_415) >> 24u);
  let x_420 : vec3<u32> = u_xlatu2;
  let x_421 : vec3<f32> = vec3<f32>(x_420);
  let x_422 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_422.x, x_421.x, x_421.y, x_421.z);
  let x_424 : vec4<f32> = u_xlat6;
  let x_425 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_424 * x_425);
  let x_428 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_428 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_433 : f32 = u_xlat1.x;
  let x_435 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat2.x = (x_433 / x_435);
  let x_439 : f32 = u_xlat2.x;
  u_xlat2.x = floor(x_439);
  let x_443 : f32 = u_xlat2.x;
  let x_446 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_449 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_443) * x_446) + x_449);
  let x_453 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_453);
  let x_457 : f32 = u_xlat1.x;
  let x_459 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat6.x = (x_457 * x_459);
  let x_463 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_463) + 1.0f);
  let x_468 : f32 = u_xlat2.x;
  let x_471 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_474 : f32 = u_xlat1.x;
  u_xlat6.y = ((-(x_468) * x_471) + x_474);
  let x_480 : vec2<f32> = in_TEXCOORD0;
  let x_482 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_485 : vec4<f32> = u_xlat6;
  let x_487 : vec2<f32> = ((x_480 * vec2<f32>(x_482.z, x_482.w)) + vec2<f32>(x_485.x, x_485.y));
  let x_488 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
  let x_494 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb1 = !((x_494 == 0.0f));
  let x_497 : bool = u_xlatb1;
  if (x_497) {
    let x_502 : vec4<f32> = u_xlat2;
    x_499 = vec2<f32>(x_502.x, x_502.y);
  } else {
    let x_505 : vec2<f32> = in_TEXCOORD0;
    x_499 = x_505;
  }
  let x_506 : vec2<f32> = x_499;
  let x_507 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_511 : vec4<f32> = u_xlat2;
  let x_514 : vec4<f32> = x_184.x_MainTex_ST;
  let x_518 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_511.x, x_511.y) * vec2<f32>(x_514.x, x_514.y)) + vec2<f32>(x_518.z, x_518.w));
  let x_524 : f32 = u_xlat0.z;
  vs_TEXCOORD4 = x_524;
  let x_526 : vec4<f32> = u_xlat0;
  let x_527 : vec2<f32> = vec2<f32>(x_526.z, x_526.w);
  let x_528 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_528.x, x_528.y, x_527.x, x_527.y);
  let x_530 : vec3<f32> = u_xlat9;
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_530.y, x_530.y, x_530.y, x_530.y) * x_532);
  let x_534 : vec4<f32> = u_xlat4;
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_534 * x_535);
  let x_537 : vec4<f32> = u_xlat3;
  let x_538 : vec4<f32> = u_xlat3;
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_537 * x_538) + x_540);
  let x_542 : vec4<f32> = u_xlat3;
  let x_543 : vec3<f32> = u_xlat9;
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_542 * vec4<f32>(x_543.x, x_543.x, x_543.x, x_543.x)) + x_546);
  let x_548 : vec4<f32> = u_xlat5;
  let x_549 : vec3<f32> = u_xlat9;
  let x_552 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_548 * vec4<f32>(x_549.z, x_549.z, x_549.z, x_549.z)) + x_552);
  let x_554 : vec4<f32> = u_xlat5;
  let x_555 : vec4<f32> = u_xlat5;
  let x_557 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_554 * x_555) + x_557);
  let x_559 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_559, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_563 : vec4<f32> = u_xlat3;
  u_xlat4 = inverseSqrt(x_563);
  let x_565 : vec4<f32> = u_xlat3;
  let x_567 : vec4<f32> = x_184.unity_4LightAtten0;
  u_xlat3 = ((x_565 * x_567) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_570 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_570);
  let x_572 : vec4<f32> = u_xlat2;
  let x_573 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_572 * x_573);
  let x_575 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_575, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_578 : vec4<f32> = u_xlat3;
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_578 * x_579);
  let x_581 : vec4<f32> = u_xlat2;
  let x_584 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_586 : vec3<f32> = (vec3<f32>(x_581.y, x_581.y, x_581.y) * vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_590 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_592 : vec4<f32> = u_xlat2;
  let x_595 : vec4<f32> = u_xlat3;
  let x_597 : vec3<f32> = ((vec3<f32>(x_590.x, x_590.y, x_590.z) * vec3<f32>(x_592.x, x_592.x, x_592.x)) + vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_601 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_603 : vec4<f32> = u_xlat2;
  let x_606 : vec4<f32> = u_xlat3;
  let x_608 : vec3<f32> = ((vec3<f32>(x_601.x, x_601.y, x_601.z) * vec3<f32>(x_603.z, x_603.z, x_603.z)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : vec4<f32> = x_184.unity_LightColor[3i];
  let x_614 : vec4<f32> = u_xlat2;
  let x_617 : vec4<f32> = u_xlat2;
  let x_619 : vec3<f32> = ((vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_614.w, x_614.w, x_614.w)) + vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_624 : f32 = u_xlat9.y;
  let x_626 : f32 = u_xlat9.y;
  u_xlat16 = (x_624 * x_626);
  let x_629 : f32 = u_xlat9.x;
  let x_631 : f32 = u_xlat9.x;
  let x_633 : f32 = u_xlat16;
  u_xlat16 = ((x_629 * x_631) + -(x_633));
  let x_636 : vec3<f32> = u_xlat9;
  let x_638 : vec3<f32> = u_xlat9;
  u_xlat1 = (vec4<f32>(x_636.y, x_636.z, x_636.z, x_636.x) * vec4<f32>(x_638.x, x_638.y, x_638.z, x_638.z));
  let x_642 : vec4<f32> = x_184.unity_SHBr;
  let x_643 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_642, x_643);
  let x_647 : vec4<f32> = x_184.unity_SHBg;
  let x_648 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_647, x_648);
  let x_652 : vec4<f32> = x_184.unity_SHBb;
  let x_653 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_652, x_653);
  let x_657 : vec4<f32> = x_184.unity_SHC;
  let x_659 : f32 = u_xlat16;
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec3<f32> = ((vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(x_659, x_659, x_659)) + vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_668 : vec4<f32> = u_xlat1;
  let x_670 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_668.x, x_668.y, x_668.z) + vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_675 : f32 = u_xlat0.y;
  let x_677 : f32 = x_184.x_ProjectionParams.x;
  u_xlat8 = (x_675 * x_677);
  let x_679 : vec4<f32> = u_xlat0;
  let x_683 : vec2<f32> = (vec2<f32>(x_679.x, x_679.w) * vec2<f32>(0.5f, 0.5f));
  let x_684 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_683.x, x_684.y, x_683.y, x_684.w);
  let x_686 : f32 = u_xlat8;
  u_xlat0.w = (x_686 * 0.5f);
  let x_689 : vec4<f32> = u_xlat0;
  let x_691 : vec4<f32> = u_xlat0;
  let x_693 : vec2<f32> = (vec2<f32>(x_689.z, x_689.z) + vec2<f32>(x_691.x, x_691.w));
  let x_694 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
  let x_698 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_698);
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
  vs_TEXCOORD4_1 : f32,
  @location(6)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD3);
}

