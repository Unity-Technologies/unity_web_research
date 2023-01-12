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

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_49 : UnityDrawCallInfo;

@group(0) @binding(6) var<storage, read> x_62 : unity_ParticleInstanceData;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_186 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

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
  var u_xlat0 : vec4<f32>;
  var u_xlati1 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat15 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlatu8 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb15 : bool;
  var x_570 : vec2<f32>;
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
  let x_156 : i32 = u_xlati1;
  let x_159 : u32 = x_62.unity_ParticleInstanceData_buf[x_156].value[13i];
  u_xlat1.x = bitcast<f32>(x_159);
  let x_163 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_163);
  let x_167 : f32 = u_xlat5.z;
  u_xlat3.x = x_167;
  let x_170 : vec4<f32> = u_xlat3;
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(x_170, x_171);
  let x_175 : vec4<f32> = u_xlat3;
  let x_176 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.w = dot(x_175, x_176);
  let x_181 : f32 = u_xlat15;
  let x_189 : vec4<f32> = x_186.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_181, x_181, x_181, x_181) * x_189);
  let x_192 : f32 = u_xlat2.x;
  u_xlat4.w = x_192;
  let x_195 : f32 = u_xlat4.y;
  u_xlat5.z = x_195;
  let x_198 : f32 = u_xlat5.y;
  u_xlat4.x = x_198;
  let x_201 : f32 = u_xlat8.x;
  u_xlat4.y = x_201;
  let x_204 : f32 = u_xlat8.z;
  u_xlat5.y = x_204;
  let x_206 : vec4<f32> = u_xlat4;
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat8.x = dot(x_206, x_207);
  let x_211 : vec4<f32> = u_xlat4;
  let x_212 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD0.w = dot(x_211, x_212);
  let x_216 : vec4<f32> = x_186.unity_MatrixVP[0i];
  let x_217 : vec3<f32> = u_xlat8;
  let x_220 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_216 * vec4<f32>(x_217.x, x_217.x, x_217.x, x_217.x)) + x_220);
  let x_223 : f32 = u_xlat2.z;
  u_xlat5.w = x_223;
  let x_225 : vec4<f32> = u_xlat5;
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_225, x_226);
  let x_230 : vec4<f32> = u_xlat5;
  let x_231 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD2.w = dot(x_230, x_231);
  let x_235 : vec4<f32> = x_186.unity_MatrixVP[2i];
  let x_236 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_235 * vec4<f32>(x_236.x, x_236.x, x_236.x, x_236.x)) + x_239);
  let x_245 : vec4<f32> = u_xlat0;
  let x_247 : vec4<f32> = x_186.unity_MatrixVP[3i];
  gl_Position = (x_245 + x_247);
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = u_xlat5;
  let x_254 : vec3<f32> = (vec3<f32>(x_250.y, x_250.z, x_250.x) * vec3<f32>(x_252.z, x_252.x, x_252.y));
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat5;
  let x_262 : vec4<f32> = u_xlat0;
  let x_265 : vec3<f32> = ((vec3<f32>(x_257.z, x_257.x, x_257.y) * vec3<f32>(x_259.y, x_259.z, x_259.x)) + -(vec3<f32>(x_262.x, x_262.y, x_262.z)));
  let x_266 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_268.z, x_268.x, x_268.y) * vec3<f32>(x_270.y, x_270.z, x_270.x));
  let x_273 : vec4<f32> = u_xlat3;
  let x_275 : vec4<f32> = u_xlat5;
  let x_278 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_273.y, x_273.z, x_273.x) * vec3<f32>(x_275.z, x_275.x, x_275.y)) + -(x_278));
  let x_281 : vec4<f32> = u_xlat5;
  let x_284 : vec4<f32> = in_TANGENT0;
  u_xlat2.y = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_289 : vec4<f32> = u_xlat4;
  let x_291 : vec3<f32> = u_xlat8;
  u_xlat21 = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), x_291);
  let x_293 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_293);
  let x_295 : f32 = u_xlat21;
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : vec3<f32> = (vec3<f32>(x_295, x_295, x_295) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_304 : vec3<f32> = in_NORMAL0;
  let x_305 : vec4<f32> = u_xlat0;
  u_xlat0.y = dot(x_304, vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_309 : vec4<f32> = u_xlat3;
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec3<f32> = (vec3<f32>(x_309.y, x_309.z, x_309.x) * vec3<f32>(x_311.z, x_311.x, x_311.y));
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec4<f32> = u_xlat3;
  let x_321 : vec4<f32> = u_xlat5;
  let x_324 : vec3<f32> = ((vec3<f32>(x_316.y, x_316.z, x_316.x) * vec3<f32>(x_318.z, x_318.x, x_318.y)) + -(vec3<f32>(x_321.x, x_321.y, x_321.z)));
  let x_325 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat3;
  let x_329 : vec4<f32> = in_TANGENT0;
  u_xlat2.x = dot(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_333 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = in_TANGENT0;
  u_xlat2.z = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_339 : f32 = u_xlat21;
  let x_341 : vec4<f32> = u_xlat5;
  let x_343 : vec3<f32> = (vec3<f32>(x_339, x_339, x_339) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : f32 = u_xlat21;
  let x_348 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_346, x_346, x_346) * x_348);
  let x_350 : vec3<f32> = in_NORMAL0;
  let x_351 : vec3<f32> = u_xlat8;
  u_xlat0.x = dot(x_350, x_351);
  let x_354 : vec3<f32> = in_NORMAL0;
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat0.z = dot(x_354, vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_359 : vec4<f32> = u_xlat0;
  let x_361 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_359.x, x_359.y, x_359.z), vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_364);
  let x_366 : f32 = u_xlat21;
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(x_366, x_366, x_366, x_366) * vec4<f32>(x_368.x, x_368.y, x_368.z, x_368.z));
  let x_371 : vec4<f32> = u_xlat2;
  let x_373 : vec4<f32> = u_xlat2;
  u_xlat8.x = dot(vec3<f32>(x_371.x, x_371.y, x_371.z), vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_378 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_378);
  let x_381 : vec3<f32> = u_xlat8;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat8 = (vec3<f32>(x_381.x, x_381.x, x_381.x) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = u_xlat8;
  let x_389 : vec3<f32> = (vec3<f32>(x_386.w, x_386.x, x_386.y) * x_388);
  let x_390 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat0;
  let x_394 : vec3<f32> = u_xlat8;
  let x_397 : vec4<f32> = u_xlat2;
  let x_400 : vec3<f32> = ((vec3<f32>(x_392.y, x_392.w, x_392.x) * vec3<f32>(x_394.y, x_394.z, x_394.x)) + -(vec3<f32>(x_397.x, x_397.y, x_397.z)));
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_405 : f32 = in_TANGENT0.w;
  let x_408 : f32 = x_186.unity_WorldTransformParams.w;
  u_xlat3.x = (x_405 * x_408);
  let x_411 : vec4<f32> = u_xlat2;
  let x_413 : vec4<f32> = u_xlat3;
  let x_415 : vec3<f32> = (vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.x, x_413.x, x_413.x));
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : f32 = u_xlat2.x;
  vs_TEXCOORD0.y = x_419;
  let x_422 : f32 = u_xlat0.x;
  vs_TEXCOORD0.z = x_422;
  let x_425 : f32 = u_xlat8.z;
  vs_TEXCOORD0.x = x_425;
  let x_428 : f32 = u_xlat8.x;
  vs_TEXCOORD1.x = x_428;
  let x_431 : f32 = u_xlat8.y;
  vs_TEXCOORD2.x = x_431;
  let x_434 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_434;
  let x_437 : f32 = u_xlat2.y;
  vs_TEXCOORD1.y = x_437;
  let x_440 : f32 = u_xlat2.z;
  vs_TEXCOORD2.y = x_440;
  let x_443 : f32 = u_xlat0.w;
  vs_TEXCOORD2.z = x_443;
  let x_446 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_446 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_451 : f32 = x_186.unity_ParticleUseMeshColors;
  let x_453 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_451, x_451, x_451, x_451) * x_453) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_461 : f32 = u_xlat2.w;
  u_xlatu8.x = (bitcast<u32>(x_461) & 255u);
  let x_467 : u32 = u_xlatu8.x;
  u_xlat4.x = f32(x_467);
  let x_471 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_471);
  param_1 = 8i;
  param_2 = 8i;
  let x_476 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_478 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_478);
  param_4 = 16i;
  param_5 = 8i;
  let x_484 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_486 : vec2<u32> = vec2<u32>(x_476, x_484);
  let x_487 : vec3<u32> = u_xlatu8;
  u_xlatu8 = vec3<u32>(x_486.x, x_486.y, x_487.z);
  let x_490 : f32 = u_xlat2.w;
  u_xlatu8.z = (bitcast<u32>(x_490) >> 24u);
  let x_495 : vec3<u32> = u_xlatu8;
  let x_496 : vec3<f32> = vec3<f32>(x_495);
  let x_497 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_497.x, x_496.x, x_496.y, x_496.z);
  let x_499 : vec4<f32> = u_xlat3;
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_499 * x_500);
  let x_503 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_503 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_508 : f32 = u_xlat1.x;
  let x_510 : f32 = x_186.unity_ParticleUVShiftData.y;
  u_xlat8.x = (x_508 / x_510);
  let x_514 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_514);
  let x_518 : f32 = u_xlat8.x;
  let x_521 : f32 = x_186.unity_ParticleUVShiftData.y;
  let x_524 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_518) * x_521) + x_524);
  let x_528 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_528);
  let x_532 : f32 = u_xlat1.x;
  let x_534 : f32 = x_186.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_532 * x_534);
  let x_538 : f32 = x_186.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_538) + 1.0f);
  let x_543 : f32 = u_xlat8.x;
  let x_546 : f32 = x_186.unity_ParticleUVShiftData.w;
  let x_549 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_543) * x_546) + x_549);
  let x_554 : vec2<f32> = in_TEXCOORD0;
  let x_556 : vec4<f32> = x_186.unity_ParticleUVShiftData;
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_554 * vec2<f32>(x_556.z, x_556.w)) + vec2<f32>(x_559.x, x_559.y));
  let x_566 : f32 = x_186.unity_ParticleUVShiftData.x;
  u_xlatb15 = !((x_566 == 0.0f));
  let x_569 : bool = u_xlatb15;
  if (x_569) {
    let x_573 : vec2<f32> = u_xlat1;
    x_570 = x_573;
  } else {
    let x_575 : vec2<f32> = in_TEXCOORD0;
    x_570 = x_575;
  }
  let x_576 : vec2<f32> = x_570;
  u_xlat1 = x_576;
  let x_579 : vec2<f32> = u_xlat1;
  let x_581 : vec4<f32> = x_186.x_MainTex_ST;
  let x_585 : vec4<f32> = x_186.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_579 * vec2<f32>(x_581.x, x_581.y)) + vec2<f32>(x_585.z, x_585.w));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_592 : f32 = u_xlat0.y;
  let x_594 : f32 = u_xlat0.y;
  u_xlat1.x = (x_592 * x_594);
  let x_598 : f32 = u_xlat0.x;
  let x_600 : f32 = u_xlat0.x;
  let x_603 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_598 * x_600) + -(x_603));
  let x_607 : vec4<f32> = u_xlat0;
  let x_609 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(x_607.y, x_607.w, x_607.z, x_607.x) * x_609);
  let x_612 : vec4<f32> = x_186.unity_SHBr;
  let x_613 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_612, x_613);
  let x_617 : vec4<f32> = x_186.unity_SHBg;
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_617, x_618);
  let x_622 : vec4<f32> = x_186.unity_SHBb;
  let x_623 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_622, x_623);
  let x_629 : vec4<f32> = x_186.unity_SHC;
  let x_631 : vec2<f32> = u_xlat1;
  let x_634 : vec4<f32> = u_xlat2;
  vs_TEXCOORD6 = ((vec3<f32>(x_629.x, x_629.y, x_629.z) * vec3<f32>(x_631.x, x_631.x, x_631.x)) + vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_639 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_639);
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

