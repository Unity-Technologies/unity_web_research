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

@group(0) @binding(4) var<storage, read> x_62 : unity_ParticleInstanceData;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

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
  var u_xlat21 : f32;
  var u_xlatu21 : u32;
  var u_xlatu8 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb21 : bool;
  var x_475 : vec2<f32>;
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
  let x_241 : vec4<f32> = u_xlat0;
  let x_243 : vec4<f32> = x_184.unity_MatrixVP[3i];
  gl_Position = (x_241 + x_243);
  let x_247 : vec4<f32> = u_xlat4;
  let x_249 : vec4<f32> = u_xlat5;
  let x_251 : vec3<f32> = (vec3<f32>(x_247.y, x_247.z, x_247.x) * vec3<f32>(x_249.z, x_249.x, x_249.y));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat5;
  let x_259 : vec4<f32> = u_xlat0;
  let x_262 : vec3<f32> = ((vec3<f32>(x_254.z, x_254.x, x_254.y) * vec3<f32>(x_256.y, x_256.z, x_256.x)) + -(vec3<f32>(x_259.x, x_259.y, x_259.z)));
  let x_263 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat3;
  let x_267 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_265.z, x_265.x, x_265.y) * vec3<f32>(x_267.y, x_267.z, x_267.x));
  let x_270 : vec4<f32> = u_xlat3;
  let x_272 : vec4<f32> = u_xlat5;
  let x_275 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_270.y, x_270.z, x_270.x) * vec3<f32>(x_272.z, x_272.x, x_272.y)) + -(x_275));
  let x_279 : vec4<f32> = u_xlat4;
  let x_281 : vec3<f32> = u_xlat8;
  u_xlat21 = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), x_281);
  let x_283 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_283);
  let x_285 : f32 = u_xlat21;
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec3<f32> = (vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_294 : vec3<f32> = in_NORMAL0;
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0.y = dot(x_294, vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_299 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = u_xlat4;
  let x_303 : vec3<f32> = (vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y));
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = u_xlat3;
  let x_311 : vec4<f32> = u_xlat2;
  let x_314 : vec3<f32> = ((vec3<f32>(x_306.y, x_306.z, x_306.x) * vec3<f32>(x_308.z, x_308.x, x_308.y)) + -(vec3<f32>(x_311.x, x_311.y, x_311.z)));
  let x_315 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : f32 = u_xlat21;
  let x_319 : vec4<f32> = u_xlat2;
  let x_321 : vec3<f32> = (vec3<f32>(x_317, x_317, x_317) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : f32 = u_xlat21;
  let x_326 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_324, x_324, x_324) * x_326);
  let x_328 : vec3<f32> = in_NORMAL0;
  let x_329 : vec3<f32> = u_xlat8;
  u_xlat0.x = dot(x_328, x_329);
  let x_332 : vec3<f32> = in_NORMAL0;
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(x_332, vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_337 : vec4<f32> = u_xlat0;
  let x_339 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_342);
  let x_344 : f32 = u_xlat21;
  let x_346 : vec4<f32> = u_xlat0;
  let x_348 : vec3<f32> = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_352.x, x_352.y, x_352.z);
  let x_355 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_355 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_361 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_363 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_361, x_361, x_361, x_361) * x_363) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_369 : f32 = u_xlat2.w;
  u_xlatu21 = (bitcast<u32>(x_369) & 255u);
  let x_373 : u32 = u_xlatu21;
  u_xlat4.x = f32(x_373);
  let x_380 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_380);
  param_1 = 8i;
  param_2 = 8i;
  let x_385 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_387 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_387);
  param_4 = 16i;
  param_5 = 8i;
  let x_393 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu8 = vec2<u32>(x_385, x_393);
  let x_396 : f32 = u_xlat2.w;
  u_xlatu21 = (bitcast<u32>(x_396) >> 24u);
  let x_400 : u32 = u_xlatu21;
  u_xlat4.w = f32(x_400);
  let x_403 : vec2<u32> = u_xlatu8;
  let x_405 : vec2<f32> = vec2<f32>(x_403);
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_406.x, x_405.x, x_405.y, x_406.w);
  let x_408 : vec4<f32> = u_xlat3;
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_408 * x_409);
  let x_412 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_412 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_417 : f32 = u_xlat1.x;
  let x_419 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat21 = (x_417 / x_419);
  let x_421 : f32 = u_xlat21;
  u_xlat21 = floor(x_421);
  let x_423 : f32 = u_xlat21;
  let x_426 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_429 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_423) * x_426) + x_429);
  let x_433 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_433);
  let x_437 : f32 = u_xlat1.x;
  let x_439 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_437 * x_439);
  let x_443 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat15 = (-(x_443) + 1.0f);
  let x_446 : f32 = u_xlat21;
  let x_449 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_451 : f32 = u_xlat15;
  u_xlat1.y = ((-(x_446) * x_449) + x_451);
  let x_456 : vec2<f32> = in_TEXCOORD0;
  let x_458 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_461 : vec4<f32> = u_xlat1;
  let x_463 : vec2<f32> = ((x_456 * vec2<f32>(x_458.z, x_458.w)) + vec2<f32>(x_461.x, x_461.y));
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
  let x_470 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb21 = !((x_470 == 0.0f));
  let x_473 : bool = u_xlatb21;
  if (x_473) {
    let x_478 : vec4<f32> = u_xlat1;
    x_475 = vec2<f32>(x_478.x, x_478.y);
  } else {
    let x_481 : vec2<f32> = in_TEXCOORD0;
    x_475 = x_481;
  }
  let x_482 : vec2<f32> = x_475;
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
  let x_487 : vec4<f32> = u_xlat1;
  let x_490 : vec4<f32> = x_184.x_MainTex_ST;
  let x_494 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_487.x, x_487.y) * vec2<f32>(x_490.x, x_490.y)) + vec2<f32>(x_494.z, x_494.w));
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_501 : f32 = u_xlat0.y;
  let x_503 : f32 = u_xlat0.y;
  u_xlat21 = (x_501 * x_503);
  let x_506 : f32 = u_xlat0.x;
  let x_508 : f32 = u_xlat0.x;
  let x_510 : f32 = u_xlat21;
  u_xlat21 = ((x_506 * x_508) + -(x_510));
  let x_513 : vec4<f32> = u_xlat0;
  let x_515 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_513.y, x_513.z, x_513.z, x_513.x) * vec4<f32>(x_515.x, x_515.y, x_515.z, x_515.z));
  let x_519 : vec4<f32> = x_184.unity_SHBr;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_519, x_520);
  let x_524 : vec4<f32> = x_184.unity_SHBg;
  let x_525 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_524, x_525);
  let x_529 : vec4<f32> = x_184.unity_SHBb;
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_184.unity_SHC;
  let x_537 : f32 = u_xlat21;
  let x_540 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec3<f32>(x_535.x, x_535.y, x_535.z) * vec3<f32>(x_537, x_537, x_537)) + vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_545 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_545);
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
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD5);
}

