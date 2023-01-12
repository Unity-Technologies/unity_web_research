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

@group(0) @binding(7) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

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
  var u_xlat9 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlatu24 : u32;
  var u_xlatu9 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb24 : bool;
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
  u_xlat9 = (vec3<f32>(x_265.z, x_265.x, x_265.y) * vec3<f32>(x_267.y, x_267.z, x_267.x));
  let x_270 : vec4<f32> = u_xlat3;
  let x_272 : vec4<f32> = u_xlat5;
  let x_275 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_270.y, x_270.z, x_270.x) * vec3<f32>(x_272.z, x_272.x, x_272.y)) + -(x_275));
  let x_279 : vec4<f32> = u_xlat4;
  let x_281 : vec3<f32> = u_xlat9;
  u_xlat24 = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), x_281);
  let x_283 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_283);
  let x_285 : f32 = u_xlat24;
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
  let x_317 : f32 = u_xlat24;
  let x_319 : vec4<f32> = u_xlat2;
  let x_321 : vec3<f32> = (vec3<f32>(x_317, x_317, x_317) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : f32 = u_xlat24;
  let x_326 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_324, x_324, x_324) * x_326);
  let x_328 : vec3<f32> = in_NORMAL0;
  let x_329 : vec3<f32> = u_xlat9;
  u_xlat0.x = dot(x_328, x_329);
  let x_332 : vec3<f32> = in_NORMAL0;
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(x_332, vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_337 : vec4<f32> = u_xlat0;
  let x_339 : vec4<f32> = u_xlat0;
  u_xlat24 = dot(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_342);
  let x_344 : f32 = u_xlat24;
  let x_346 : vec4<f32> = u_xlat0;
  let x_348 : vec3<f32> = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_353 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_353.x, x_353.y, x_353.z);
  let x_356 : vec4<f32> = u_xlat6;
  vs_TEXCOORD1 = vec3<f32>(x_356.x, x_356.y, x_356.z);
  let x_358 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = x_184.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_358.x, x_358.x, x_358.x, x_358.x)) + x_362);
  let x_364 : vec4<f32> = u_xlat6;
  let x_368 : vec4<f32> = x_184.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_364.y, x_364.y, x_364.y, x_364.y)) + x_368);
  let x_370 : vec4<f32> = u_xlat6;
  let x_374 : vec4<f32> = x_184.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_370.z, x_370.z, x_370.z, x_370.z)) + x_374);
  let x_377 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_377 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_383 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_385 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_383, x_383, x_383, x_383) * x_385) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_391 : f32 = u_xlat2.w;
  u_xlatu24 = (bitcast<u32>(x_391) & 255u);
  let x_395 : u32 = u_xlatu24;
  u_xlat7.x = f32(x_395);
  let x_402 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_402);
  param_1 = 8i;
  param_2 = 8i;
  let x_407 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_409 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_409);
  param_4 = 16i;
  param_5 = 8i;
  let x_415 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu9 = vec2<u32>(x_407, x_415);
  let x_418 : f32 = u_xlat2.w;
  u_xlatu24 = (bitcast<u32>(x_418) >> 24u);
  let x_422 : u32 = u_xlatu24;
  u_xlat7.w = f32(x_422);
  let x_425 : vec2<u32> = u_xlatu9;
  let x_427 : vec2<f32> = vec2<f32>(x_425);
  let x_428 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_428.x, x_427.x, x_427.y, x_428.w);
  let x_430 : vec4<f32> = u_xlat6;
  let x_431 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_430 * x_431);
  let x_434 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_434 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_439 : f32 = u_xlat1.x;
  let x_441 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat24 = (x_439 / x_441);
  let x_443 : f32 = u_xlat24;
  u_xlat24 = floor(x_443);
  let x_445 : f32 = u_xlat24;
  let x_448 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_451 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_445) * x_448) + x_451);
  let x_455 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_455);
  let x_459 : f32 = u_xlat1.x;
  let x_461 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_459 * x_461);
  let x_465 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat17 = (-(x_465) + 1.0f);
  let x_468 : f32 = u_xlat24;
  let x_471 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_473 : f32 = u_xlat17;
  u_xlat1.y = ((-(x_468) * x_471) + x_473);
  let x_478 : vec2<f32> = in_TEXCOORD0;
  let x_480 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_483 : vec4<f32> = u_xlat1;
  let x_485 : vec2<f32> = ((x_478 * vec2<f32>(x_480.z, x_480.w)) + vec2<f32>(x_483.x, x_483.y));
  let x_486 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
  let x_492 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb24 = !((x_492 == 0.0f));
  let x_495 : bool = u_xlatb24;
  if (x_495) {
    let x_500 : vec4<f32> = u_xlat1;
    x_497 = vec2<f32>(x_500.x, x_500.y);
  } else {
    let x_503 : vec2<f32> = in_TEXCOORD0;
    x_497 = x_503;
  }
  let x_504 : vec2<f32> = x_497;
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
  let x_509 : vec4<f32> = u_xlat1;
  let x_512 : vec4<f32> = x_184.x_MainTex_ST;
  let x_516 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_509.x, x_509.y) * vec2<f32>(x_512.x, x_512.y)) + vec2<f32>(x_516.z, x_516.w));
  let x_519 : vec4<f32> = u_xlat0;
  let x_521 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_519.y, x_519.y, x_519.y, x_519.y) * x_521);
  let x_523 : vec4<f32> = u_xlat4;
  let x_524 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_523 * x_524);
  let x_526 : vec4<f32> = u_xlat3;
  let x_527 : vec4<f32> = u_xlat3;
  let x_529 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_526 * x_527) + x_529);
  let x_531 : vec4<f32> = u_xlat3;
  let x_532 : vec4<f32> = u_xlat0;
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_531 * vec4<f32>(x_532.x, x_532.x, x_532.x, x_532.x)) + x_535);
  let x_537 : vec4<f32> = u_xlat5;
  let x_538 : vec4<f32> = u_xlat0;
  let x_541 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_537 * vec4<f32>(x_538.z, x_538.z, x_538.z, x_538.z)) + x_541);
  let x_543 : vec4<f32> = u_xlat5;
  let x_544 : vec4<f32> = u_xlat5;
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_543 * x_544) + x_546);
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_548, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_552 : vec4<f32> = u_xlat2;
  u_xlat3 = inverseSqrt(x_552);
  let x_554 : vec4<f32> = u_xlat2;
  let x_556 : vec4<f32> = x_184.unity_4LightAtten0;
  u_xlat2 = ((x_554 * x_556) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_559);
  let x_561 : vec4<f32> = u_xlat1;
  let x_562 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_561 * x_562);
  let x_564 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_564, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_567 : vec4<f32> = u_xlat2;
  let x_568 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_567 * x_568);
  let x_570 : vec4<f32> = u_xlat1;
  let x_573 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_575 : vec3<f32> = (vec3<f32>(x_570.y, x_570.y, x_570.y) * vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_579 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_581 : vec4<f32> = u_xlat1;
  let x_584 : vec4<f32> = u_xlat2;
  let x_586 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.y, x_579.z) * vec3<f32>(x_581.x, x_581.x, x_581.x)) + vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_590 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_592 : vec4<f32> = u_xlat1;
  let x_595 : vec4<f32> = u_xlat2;
  let x_597 : vec3<f32> = ((vec3<f32>(x_590.x, x_590.y, x_590.z) * vec3<f32>(x_592.z, x_592.z, x_592.z)) + vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_601 : vec4<f32> = x_184.unity_LightColor[3i];
  let x_603 : vec4<f32> = u_xlat1;
  let x_606 : vec4<f32> = u_xlat1;
  let x_608 : vec3<f32> = ((vec3<f32>(x_601.x, x_601.y, x_601.z) * vec3<f32>(x_603.w, x_603.w, x_603.w)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : f32 = u_xlat0.y;
  let x_614 : f32 = u_xlat0.y;
  u_xlat24 = (x_612 * x_614);
  let x_617 : f32 = u_xlat0.x;
  let x_619 : f32 = u_xlat0.x;
  let x_621 : f32 = u_xlat24;
  u_xlat24 = ((x_617 * x_619) + -(x_621));
  let x_624 : vec4<f32> = u_xlat0;
  let x_626 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_624.y, x_624.z, x_624.z, x_624.x) * vec4<f32>(x_626.x, x_626.y, x_626.z, x_626.z));
  let x_630 : vec4<f32> = x_184.unity_SHBr;
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(x_630, x_631);
  let x_635 : vec4<f32> = x_184.unity_SHBg;
  let x_636 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(x_635, x_636);
  let x_640 : vec4<f32> = x_184.unity_SHBb;
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(x_640, x_641);
  let x_645 : vec4<f32> = x_184.unity_SHC;
  let x_647 : f32 = u_xlat24;
  let x_650 : vec4<f32> = u_xlat0;
  let x_652 : vec3<f32> = ((vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(x_647, x_647, x_647)) + vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_656 : vec4<f32> = u_xlat0;
  let x_658 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_656.x, x_656.y, x_656.z) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_665 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_665);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3);
}

