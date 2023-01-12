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

var<private> vs_TEXCOORD5 : f32;

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
  var x_474 : vec2<f32>;
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
  let x_237 : vec4<f32> = u_xlat6;
  let x_239 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat6 = (x_237 + x_239);
  let x_245 : vec4<f32> = u_xlat6;
  gl_Position = x_245;
  let x_250 : f32 = u_xlat6.z;
  vs_TEXCOORD5 = x_250;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_252.y, x_252.z, x_252.x) * vec3<f32>(x_254.z, x_254.x, x_254.y));
  let x_257 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat5;
  let x_262 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_257.z, x_257.x, x_257.y) * vec3<f32>(x_259.y, x_259.z, x_259.x)) + -(x_262));
  let x_265 : vec4<f32> = u_xlat3;
  let x_267 : vec4<f32> = u_xlat5;
  let x_269 : vec3<f32> = (vec3<f32>(x_265.z, x_265.x, x_265.y) * vec3<f32>(x_267.y, x_267.z, x_267.x));
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat3;
  let x_274 : vec4<f32> = u_xlat5;
  let x_277 : vec4<f32> = u_xlat2;
  let x_280 : vec3<f32> = ((vec3<f32>(x_272.y, x_272.z, x_272.x) * vec3<f32>(x_274.z, x_274.x, x_274.y)) + -(vec3<f32>(x_277.x, x_277.y, x_277.z)));
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_284 : vec4<f32> = u_xlat4;
  let x_286 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_289);
  let x_291 : vec3<f32> = u_xlat7;
  let x_292 : f32 = u_xlat22;
  u_xlat7 = (x_291 * vec3<f32>(x_292, x_292, x_292));
  let x_297 : vec3<f32> = in_NORMAL0;
  let x_298 : vec3<f32> = u_xlat7;
  u_xlat5.y = dot(x_297, x_298);
  let x_301 : vec4<f32> = u_xlat3;
  let x_303 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec3<f32>(x_301.y, x_301.z, x_301.x) * vec3<f32>(x_303.z, x_303.x, x_303.y));
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = u_xlat3;
  let x_311 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_306.y, x_306.z, x_306.x) * vec3<f32>(x_308.z, x_308.x, x_308.y)) + -(x_311));
  let x_314 : f32 = u_xlat22;
  let x_316 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_314, x_314, x_314) * x_316);
  let x_318 : f32 = u_xlat22;
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = (vec3<f32>(x_318, x_318, x_318) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec3<f32> = in_NORMAL0;
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_325, vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_330 : vec3<f32> = in_NORMAL0;
  let x_331 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_330, x_331);
  let x_334 : vec4<f32> = u_xlat5;
  let x_336 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_341 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_341);
  let x_344 : vec3<f32> = u_xlat7;
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_344.x, x_344.x, x_344.x) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_350 : vec3<f32> = u_xlat7;
  vs_TEXCOORD0 = x_350;
  let x_352 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_352 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_358 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_358, x_358, x_358, x_358) * x_360) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_366 : f32 = u_xlat2.w;
  u_xlatu22 = (bitcast<u32>(x_366) & 255u);
  let x_370 : u32 = u_xlatu22;
  u_xlat4.x = f32(x_370);
  let x_377 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_377);
  param_1 = 8i;
  param_2 = 8i;
  let x_382 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_384 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_384);
  param_4 = 16i;
  param_5 = 8i;
  let x_390 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu2 = vec2<u32>(x_382, x_390);
  let x_393 : f32 = u_xlat2.w;
  u_xlatu22 = (bitcast<u32>(x_393) >> 24u);
  let x_397 : u32 = u_xlatu22;
  u_xlat4.w = f32(x_397);
  let x_400 : vec2<u32> = u_xlatu2;
  let x_402 : vec2<f32> = vec2<f32>(x_400);
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_403.x, x_402.x, x_402.y, x_403.w);
  let x_405 : vec4<f32> = u_xlat3;
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_405 * x_406);
  let x_409 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_409 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_414 : f32 = u_xlat1.x;
  let x_416 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat22 = (x_414 / x_416);
  let x_418 : f32 = u_xlat22;
  u_xlat22 = floor(x_418);
  let x_420 : f32 = u_xlat22;
  let x_423 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_426 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_420) * x_423) + x_426);
  let x_430 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_430);
  let x_434 : f32 = u_xlat1.x;
  let x_436 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_434 * x_436);
  let x_440 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_440) + 1.0f);
  let x_444 : f32 = u_xlat22;
  let x_447 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_450 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_444) * x_447) + x_450);
  let x_455 : vec2<f32> = in_TEXCOORD0;
  let x_457 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_460 : vec4<f32> = u_xlat2;
  let x_462 : vec2<f32> = ((x_455 * vec2<f32>(x_457.z, x_457.w)) + vec2<f32>(x_460.x, x_460.y));
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_462.x, x_463.y, x_463.z, x_462.y);
  let x_469 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb2 = !((x_469 == 0.0f));
  let x_472 : bool = u_xlatb2;
  if (x_472) {
    let x_477 : vec4<f32> = u_xlat1;
    x_474 = vec2<f32>(x_477.x, x_477.w);
  } else {
    let x_480 : vec2<f32> = in_TEXCOORD0;
    x_474 = x_480;
  }
  let x_481 : vec2<f32> = x_474;
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_482.y, x_482.z, x_481.y);
  let x_486 : vec4<f32> = u_xlat1;
  let x_489 : vec4<f32> = x_184.x_MainTex_ST;
  let x_493 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_486.x, x_486.w) * vec2<f32>(x_489.x, x_489.y)) + vec2<f32>(x_493.z, x_493.w));
  let x_496 : f32 = u_xlat15;
  let x_498 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat1.x = (x_496 * x_498);
  let x_501 : f32 = u_xlat15;
  let x_504 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_506 : vec3<f32> = (vec3<f32>(x_501, x_501, x_501) * vec3<f32>(x_504.x, x_504.y, x_504.w));
  let x_507 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_510 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_512 : vec3<f32> = u_xlat8;
  let x_515 : vec4<f32> = u_xlat2;
  let x_517 : vec3<f32> = ((vec3<f32>(x_510.x, x_510.y, x_510.w) * vec3<f32>(x_512.x, x_512.x, x_512.x)) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_521 : f32 = x_184.unity_MatrixV[0i].z;
  let x_523 : f32 = u_xlat8.x;
  let x_526 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_521 * x_523) + x_526);
  let x_530 : f32 = x_184.unity_MatrixV[2i].z;
  let x_532 : f32 = u_xlat0.x;
  let x_535 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_530 * x_532) + x_535);
  let x_539 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_541 : vec4<f32> = u_xlat0;
  let x_544 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_539.x, x_539.y, x_539.w) * vec3<f32>(x_541.x, x_541.x, x_541.x)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec3<f32> = u_xlat8;
  let x_549 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat8 = (x_547 + vec3<f32>(x_549.x, x_549.y, x_549.w));
  let x_553 : f32 = u_xlat1.x;
  let x_555 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat0.x = (x_553 + x_555);
  let x_561 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_561);
  let x_566 : f32 = u_xlat8.y;
  let x_568 : f32 = x_184.x_ProjectionParams.x;
  u_xlat0.x = (x_566 * x_568);
  let x_572 : f32 = u_xlat0.x;
  u_xlat2.w = (x_572 * 0.5f);
  let x_576 : vec3<f32> = u_xlat8;
  let x_579 : vec2<f32> = (vec2<f32>(x_576.x, x_576.z) * vec2<f32>(0.5f, 0.5f));
  let x_580 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_579.x, x_580.y, x_579.y, x_580.w);
  let x_583 : f32 = u_xlat8.z;
  vs_TEXCOORD3.w = x_583;
  let x_585 : vec4<f32> = u_xlat2;
  let x_587 : vec4<f32> = u_xlat2;
  let x_589 : vec2<f32> = (vec2<f32>(x_585.z, x_585.z) + vec2<f32>(x_587.x, x_587.w));
  let x_590 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
  let x_593 : f32 = u_xlat7.y;
  let x_595 : f32 = u_xlat7.y;
  u_xlat0.x = (x_593 * x_595);
  let x_599 : f32 = u_xlat7.x;
  let x_601 : f32 = u_xlat7.x;
  let x_604 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_599 * x_601) + -(x_604));
  let x_608 : vec3<f32> = u_xlat7;
  let x_610 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec4<f32>(x_608.y, x_608.z, x_608.z, x_608.x) * vec4<f32>(x_610.x, x_610.y, x_610.z, x_610.z));
  let x_614 : vec4<f32> = x_184.unity_SHBr;
  let x_615 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_614, x_615);
  let x_619 : vec4<f32> = x_184.unity_SHBg;
  let x_620 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_619, x_620);
  let x_624 : vec4<f32> = x_184.unity_SHBb;
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_624, x_625);
  let x_630 : vec4<f32> = x_184.unity_SHC;
  let x_632 : vec4<f32> = u_xlat0;
  let x_635 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_630.x, x_630.y, x_630.z) * vec3<f32>(x_632.x, x_632.x, x_632.x)) + vec3<f32>(x_635.x, x_635.y, x_635.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_642 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_642);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
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
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

