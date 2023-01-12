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

@group(0) @binding(9) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_183 : VGlobals;

var<private> vs_TEXCOORD5 : f32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

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
  var u_xlat10 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatu9 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb17 : bool;
  var x_619 : vec2<f32>;
  var u_xlat24 : f32;
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
  u_xlat10 = dot(x_172, x_173);
  let x_176 : f32 = u_xlat17;
  let x_186 : vec4<f32> = x_183.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_176, x_176, x_176, x_176) * x_186);
  let x_189 : f32 = u_xlat2.x;
  u_xlat4.w = x_189;
  let x_192 : f32 = u_xlat4.y;
  u_xlat5.z = x_192;
  let x_195 : f32 = u_xlat5.y;
  u_xlat4.x = x_195;
  let x_198 : f32 = u_xlat9.x;
  u_xlat4.y = x_198;
  let x_201 : f32 = u_xlat9.z;
  u_xlat5.y = x_201;
  let x_203 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat9.x = dot(x_203, x_204);
  let x_207 : vec4<f32> = u_xlat4;
  let x_208 : vec4<f32> = in_POSITION0;
  u_xlat17 = dot(x_207, x_208);
  let x_211 : vec4<f32> = x_183.unity_MatrixVP[0i];
  let x_212 : vec3<f32> = u_xlat9;
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_211 * vec4<f32>(x_212.x, x_212.x, x_212.x, x_212.x)) + x_215);
  let x_218 : f32 = u_xlat2.z;
  u_xlat5.w = x_218;
  let x_220 : vec4<f32> = u_xlat5;
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_220, x_221);
  let x_224 : vec4<f32> = u_xlat5;
  let x_225 : vec4<f32> = in_POSITION0;
  u_xlat0.y = dot(x_224, x_225);
  let x_229 : vec4<f32> = x_183.unity_MatrixVP[2i];
  let x_230 : vec4<f32> = u_xlat0;
  let x_233 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_229 * vec4<f32>(x_230.x, x_230.x, x_230.x, x_230.x)) + x_233);
  let x_235 : vec4<f32> = u_xlat6;
  let x_237 : vec4<f32> = x_183.unity_MatrixVP[3i];
  u_xlat6 = (x_235 + x_237);
  let x_243 : vec4<f32> = u_xlat6;
  gl_Position = x_243;
  let x_249 : f32 = u_xlat6.z;
  vs_TEXCOORD5 = x_249;
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = u_xlat5;
  let x_254 : vec3<f32> = (vec3<f32>(x_250.y, x_250.z, x_250.x) * vec3<f32>(x_252.z, x_252.x, x_252.y));
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_254.x, x_255.y, x_254.y, x_254.z);
  let x_257 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat5;
  let x_262 : vec4<f32> = u_xlat0;
  let x_265 : vec3<f32> = ((vec3<f32>(x_257.z, x_257.x, x_257.y) * vec3<f32>(x_259.y, x_259.z, x_259.x)) + -(vec3<f32>(x_262.x, x_262.z, x_262.w)));
  let x_266 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_265.x, x_266.y, x_265.y, x_265.z);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = u_xlat5;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.z, x_268.x, x_268.y) * vec3<f32>(x_270.y, x_270.z, x_270.x));
  let x_273 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat5;
  let x_280 : vec4<f32> = u_xlat6;
  let x_283 : vec3<f32> = ((vec3<f32>(x_275.y, x_275.z, x_275.x) * vec3<f32>(x_277.z, x_277.x, x_277.y)) + -(vec3<f32>(x_280.x, x_280.y, x_280.z)));
  let x_284 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat5;
  let x_289 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_293 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_300 : f32 = u_xlat9.x;
  u_xlat9.x = (1.0f / x_300);
  let x_303 : vec4<f32> = u_xlat0;
  let x_305 : vec3<f32> = u_xlat9;
  let x_307 : vec3<f32> = (vec3<f32>(x_303.x, x_303.z, x_303.w) * vec3<f32>(x_305.x, x_305.x, x_305.x));
  let x_308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_307.x, x_308.y, x_307.y, x_307.z);
  let x_313 : vec3<f32> = in_NORMAL0;
  let x_314 : vec4<f32> = u_xlat0;
  u_xlat7.y = dot(x_313, vec3<f32>(x_314.x, x_314.z, x_314.w));
  let x_318 : vec4<f32> = u_xlat3;
  let x_320 : vec4<f32> = u_xlat4;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.y, x_318.z, x_318.x) * vec3<f32>(x_320.z, x_320.x, x_320.y));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_323.y, x_322.y, x_322.z);
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec4<f32> = u_xlat3;
  let x_330 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = ((vec3<f32>(x_325.y, x_325.z, x_325.x) * vec3<f32>(x_327.z, x_327.x, x_327.y)) + -(vec3<f32>(x_330.x, x_330.z, x_330.w)));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_333.x, x_334.y, x_333.y, x_333.z);
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_336.x, x_336.y, x_336.z), vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_342 : vec4<f32> = u_xlat4;
  let x_344 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_342.x, x_342.y, x_342.z), vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_348 : vec3<f32> = u_xlat9;
  let x_350 : vec4<f32> = u_xlat0;
  let x_352 : vec3<f32> = (vec3<f32>(x_348.x, x_348.x, x_348.x) * vec3<f32>(x_350.x, x_350.z, x_350.w));
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_352.x, x_353.y, x_352.y, x_352.z);
  let x_355 : vec3<f32> = u_xlat9;
  let x_357 : vec4<f32> = u_xlat6;
  let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.x, x_355.x) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec3<f32> = in_NORMAL0;
  let x_363 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_362, vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_367 : vec3<f32> = in_NORMAL0;
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat7.z = dot(x_367, vec3<f32>(x_368.x, x_368.z, x_368.w));
  let x_372 : vec4<f32> = u_xlat7;
  let x_374 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_379 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_379);
  let x_382 : vec4<f32> = u_xlat0;
  let x_384 : vec4<f32> = u_xlat7;
  u_xlat3 = (vec4<f32>(x_382.x, x_382.x, x_382.x, x_382.x) * vec4<f32>(x_384.x, x_384.y, x_384.z, x_384.z));
  let x_387 : vec4<f32> = u_xlat5;
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_387.x, x_387.y, x_387.z), vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_394 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_394);
  let x_397 : vec4<f32> = u_xlat0;
  let x_399 : vec4<f32> = u_xlat5;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.x, x_397.x) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_401.x, x_402.y, x_401.y, x_401.z);
  let x_404 : vec4<f32> = u_xlat0;
  let x_406 : vec4<f32> = u_xlat3;
  let x_408 : vec3<f32> = (vec3<f32>(x_404.x, x_404.z, x_404.w) * vec3<f32>(x_406.w, x_406.x, x_406.y));
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat3;
  let x_413 : vec4<f32> = u_xlat0;
  let x_416 : vec4<f32> = u_xlat4;
  let x_419 : vec3<f32> = ((vec3<f32>(x_411.y, x_411.w, x_411.x) * vec3<f32>(x_413.z, x_413.w, x_413.x)) + -(vec3<f32>(x_416.x, x_416.y, x_416.z)));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_424 : f32 = in_TANGENT0.w;
  let x_427 : f32 = x_183.unity_WorldTransformParams.w;
  u_xlat9.x = (x_424 * x_427);
  let x_430 : vec3<f32> = u_xlat9;
  let x_432 : vec4<f32> = u_xlat4;
  let x_434 : vec3<f32> = (vec3<f32>(x_430.x, x_430.x, x_430.x) * vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_439 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_439;
  let x_442 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_442;
  let x_445 : f32 = u_xlat0.w;
  vs_TEXCOORD0.x = x_445;
  let x_447 : f32 = u_xlat17;
  vs_TEXCOORD0.w = x_447;
  let x_449 : f32 = u_xlat17;
  let x_453 : vec4<f32> = x_183.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_449, x_449, x_449, x_449)) + x_453);
  let x_457 : f32 = u_xlat0.x;
  vs_TEXCOORD1.x = x_457;
  let x_460 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_460;
  let x_463 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_463;
  let x_467 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_467;
  let x_469 : f32 = u_xlat10;
  vs_TEXCOORD1.w = x_469;
  let x_471 : f32 = u_xlat10;
  let x_475 : vec4<f32> = x_183.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_471, x_471, x_471, x_471)) + x_475);
  let x_478 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_478;
  let x_481 : vec4<f32> = u_xlat0;
  let x_482 : vec2<f32> = vec2<f32>(x_481.z, x_481.y);
  let x_483 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_482.x, x_483.y, x_483.z, x_482.y);
  let x_485 : vec4<f32> = u_xlat0;
  let x_489 : vec4<f32> = x_183.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_485.y, x_485.y, x_485.y, x_485.y)) + x_489);
  let x_492 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_492 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_497 : f32 = x_183.unity_ParticleUseMeshColors;
  let x_499 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_497, x_497, x_497, x_497) * x_499) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_507 : f32 = u_xlat2.w;
  u_xlatu9.x = (bitcast<u32>(x_507) & 255u);
  let x_513 : u32 = u_xlatu9.x;
  u_xlat7.x = f32(x_513);
  let x_517 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_517);
  param_1 = 8i;
  param_2 = 8i;
  let x_522 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_524 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_524);
  param_4 = 16i;
  param_5 = 8i;
  let x_530 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_532 : vec2<u32> = vec2<u32>(x_522, x_530);
  let x_533 : vec3<u32> = u_xlatu9;
  u_xlatu9 = vec3<u32>(x_532.x, x_532.y, x_533.z);
  let x_536 : f32 = u_xlat2.w;
  u_xlatu9.z = (bitcast<u32>(x_536) >> 24u);
  let x_541 : vec3<u32> = u_xlatu9;
  let x_542 : vec3<f32> = vec3<f32>(x_541);
  let x_543 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_543.x, x_542.x, x_542.y, x_542.z);
  let x_545 : vec4<f32> = u_xlat6;
  let x_546 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_545 * x_546);
  let x_549 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_549 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_554 : f32 = u_xlat1.x;
  let x_556 : f32 = x_183.unity_ParticleUVShiftData.y;
  u_xlat9.x = (x_554 / x_556);
  let x_560 : f32 = u_xlat9.x;
  u_xlat9.x = floor(x_560);
  let x_564 : f32 = u_xlat9.x;
  let x_567 : f32 = x_183.unity_ParticleUVShiftData.y;
  let x_570 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_564) * x_567) + x_570);
  let x_574 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_574);
  let x_578 : f32 = u_xlat1.x;
  let x_580 : f32 = x_183.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_578 * x_580);
  let x_584 : f32 = x_183.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_584) + 1.0f);
  let x_589 : f32 = u_xlat9.x;
  let x_592 : f32 = x_183.unity_ParticleUVShiftData.w;
  let x_595 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_589) * x_592) + x_595);
  let x_600 : vec2<f32> = in_TEXCOORD0;
  let x_602 : vec4<f32> = x_183.unity_ParticleUVShiftData;
  let x_605 : vec4<f32> = u_xlat2;
  let x_607 : vec2<f32> = ((x_600 * vec2<f32>(x_602.z, x_602.w)) + vec2<f32>(x_605.x, x_605.y));
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
  let x_614 : f32 = x_183.unity_ParticleUVShiftData.x;
  u_xlatb17 = !((x_614 == 0.0f));
  let x_617 : bool = u_xlatb17;
  if (x_617) {
    let x_622 : vec4<f32> = u_xlat1;
    x_619 = vec2<f32>(x_622.x, x_622.y);
  } else {
    let x_625 : vec2<f32> = in_TEXCOORD0;
    x_619 = x_625;
  }
  let x_626 : vec2<f32> = x_619;
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
  let x_631 : vec4<f32> = u_xlat1;
  let x_634 : vec4<f32> = x_183.x_MainTex_ST;
  let x_638 : vec4<f32> = x_183.x_MainTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_631.x, x_631.y) * vec2<f32>(x_634.x, x_634.y)) + vec2<f32>(x_638.z, x_638.w));
  let x_641 : vec4<f32> = u_xlat3;
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_641.y, x_641.y, x_641.y, x_641.y) * x_643);
  let x_645 : vec4<f32> = u_xlat4;
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_645 * x_646);
  let x_648 : vec4<f32> = u_xlat5;
  let x_649 : vec4<f32> = u_xlat5;
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_648 * x_649) + x_651);
  let x_653 : vec4<f32> = u_xlat5;
  let x_654 : vec4<f32> = u_xlat3;
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_653 * vec4<f32>(x_654.x, x_654.x, x_654.x, x_654.x)) + x_657);
  let x_659 : vec4<f32> = u_xlat0;
  let x_660 : vec4<f32> = u_xlat3;
  let x_663 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_659 * vec4<f32>(x_660.w, x_660.w, x_660.z, x_660.w)) + x_663);
  let x_665 : vec4<f32> = u_xlat0;
  let x_666 : vec4<f32> = u_xlat0;
  let x_668 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_665 * x_666) + x_668);
  let x_670 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_670, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_674 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_674);
  let x_676 : vec4<f32> = u_xlat0;
  let x_678 : vec4<f32> = x_183.unity_4LightAtten0;
  u_xlat0 = ((x_676 * x_678) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_681 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_681);
  let x_683 : vec4<f32> = u_xlat1;
  let x_684 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_683 * x_684);
  let x_686 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_686, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_689 : vec4<f32> = u_xlat0;
  let x_690 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_689 * x_690);
  let x_692 : vec4<f32> = u_xlat0;
  let x_695 : vec4<f32> = x_183.unity_LightColor[1i];
  let x_697 : vec3<f32> = (vec3<f32>(x_692.y, x_692.y, x_692.y) * vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_701 : vec4<f32> = x_183.unity_LightColor[0i];
  let x_703 : vec4<f32> = u_xlat0;
  let x_706 : vec4<f32> = u_xlat1;
  let x_708 : vec3<f32> = ((vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(x_703.x, x_703.x, x_703.x)) + vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_712 : vec4<f32> = x_183.unity_LightColor[2i];
  let x_714 : vec4<f32> = u_xlat0;
  let x_717 : vec4<f32> = u_xlat1;
  let x_719 : vec3<f32> = ((vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_714.z, x_714.z, x_714.z)) + vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_723 : vec4<f32> = x_183.unity_LightColor[3i];
  let x_725 : vec4<f32> = u_xlat0;
  let x_728 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = ((vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(x_725.w, x_725.w, x_725.w)) + vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_735 : f32 = u_xlat3.y;
  let x_737 : f32 = u_xlat3.y;
  u_xlat24 = (x_735 * x_737);
  let x_740 : f32 = u_xlat3.x;
  let x_742 : f32 = u_xlat3.x;
  let x_744 : f32 = u_xlat24;
  u_xlat24 = ((x_740 * x_742) + -(x_744));
  let x_747 : vec4<f32> = u_xlat3;
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_747.y, x_747.w, x_747.z, x_747.x) * x_749);
  let x_752 : vec4<f32> = x_183.unity_SHBr;
  let x_753 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_752, x_753);
  let x_757 : vec4<f32> = x_183.unity_SHBg;
  let x_758 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_757, x_758);
  let x_762 : vec4<f32> = x_183.unity_SHBb;
  let x_763 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_762, x_763);
  let x_767 : vec4<f32> = x_183.unity_SHC;
  let x_769 : f32 = u_xlat24;
  let x_772 : vec4<f32> = u_xlat2;
  let x_774 : vec3<f32> = ((vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(x_769, x_769, x_769)) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_779 : vec4<f32> = u_xlat0;
  let x_781 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_779.x, x_779.y, x_779.z) + vec3<f32>(x_781.x, x_781.y, x_781.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_788 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_788);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(6)
  vs_TEXCOORD4_1 : vec3<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

