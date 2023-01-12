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
  unity_WorldTransformParams : vec4<f32>,
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

@group(0) @binding(9) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_183 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  var u_xlat10 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat11 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat28 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu9 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb27 : bool;
  var x_604 : vec2<f32>;
  var u_xlat27 : f32;
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
  u_xlat10 = vec3<f32>(bitcast<f32>(x_95), bitcast<f32>(x_100), bitcast<f32>(x_105));
  let x_109 : f32 = u_xlat10.y;
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
  u_xlat19 = dot(x_168, x_169);
  let x_172 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = in_POSITION0;
  u_xlat11 = dot(x_172, x_173);
  let x_176 : f32 = u_xlat19;
  let x_186 : vec4<f32> = x_183.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_176, x_176, x_176, x_176) * x_186);
  let x_189 : f32 = u_xlat2.x;
  u_xlat4.w = x_189;
  let x_192 : f32 = u_xlat4.y;
  u_xlat5.z = x_192;
  let x_195 : f32 = u_xlat5.y;
  u_xlat4.x = x_195;
  let x_198 : f32 = u_xlat10.x;
  u_xlat4.y = x_198;
  let x_201 : f32 = u_xlat10.z;
  u_xlat5.y = x_201;
  let x_203 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat10.x = dot(x_203, x_204);
  let x_208 : vec4<f32> = u_xlat4;
  let x_209 : vec4<f32> = in_POSITION0;
  u_xlat28 = dot(x_208, x_209);
  let x_212 : vec4<f32> = x_183.unity_MatrixVP[0i];
  let x_213 : vec3<f32> = u_xlat10;
  let x_216 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_212 * vec4<f32>(x_213.x, x_213.x, x_213.x, x_213.x)) + x_216);
  let x_219 : f32 = u_xlat2.z;
  u_xlat5.w = x_219;
  let x_221 : vec4<f32> = u_xlat5;
  let x_222 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_221, x_222);
  let x_228 : vec4<f32> = u_xlat5;
  let x_229 : vec4<f32> = in_POSITION0;
  u_xlat9.x = dot(x_228, x_229);
  let x_233 : vec4<f32> = x_183.unity_MatrixVP[2i];
  let x_234 : vec4<f32> = u_xlat0;
  let x_237 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_233 * vec4<f32>(x_234.x, x_234.x, x_234.x, x_234.x)) + x_237);
  let x_243 : vec4<f32> = u_xlat6;
  let x_245 : vec4<f32> = x_183.unity_MatrixVP[3i];
  gl_Position = (x_243 + x_245);
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec4<f32> = u_xlat5;
  let x_253 : vec3<f32> = (vec3<f32>(x_249.y, x_249.z, x_249.x) * vec3<f32>(x_251.z, x_251.x, x_251.y));
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = u_xlat5;
  let x_261 : vec4<f32> = u_xlat6;
  let x_264 : vec3<f32> = ((vec3<f32>(x_256.z, x_256.x, x_256.y) * vec3<f32>(x_258.y, x_258.z, x_258.x)) + -(vec3<f32>(x_261.x, x_261.y, x_261.z)));
  let x_265 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = u_xlat5;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.z, x_268.x, x_268.y) * vec3<f32>(x_270.y, x_270.z, x_270.x));
  let x_273 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat5;
  let x_280 : vec4<f32> = u_xlat7;
  let x_283 : vec3<f32> = ((vec3<f32>(x_275.y, x_275.z, x_275.x) * vec3<f32>(x_277.z, x_277.x, x_277.y)) + -(vec3<f32>(x_280.x, x_280.y, x_280.z)));
  let x_284 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat5;
  let x_289 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_294 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = u_xlat7;
  u_xlat18 = dot(vec3<f32>(x_294.x, x_294.y, x_294.z), vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_299);
  let x_301 : f32 = u_xlat18;
  let x_303 : vec4<f32> = u_xlat6;
  let x_305 : vec3<f32> = (vec3<f32>(x_301, x_301, x_301) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_310 : vec3<f32> = in_NORMAL0;
  let x_311 : vec4<f32> = u_xlat6;
  u_xlat6.y = dot(x_310, vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_316 : vec4<f32> = u_xlat3;
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.y, x_316.z, x_316.x) * vec3<f32>(x_318.z, x_318.x, x_318.y));
  let x_321 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat4;
  let x_325 : vec4<f32> = u_xlat3;
  let x_328 : vec4<f32> = u_xlat8;
  let x_331 : vec3<f32> = ((vec3<f32>(x_323.y, x_323.z, x_323.x) * vec3<f32>(x_325.z, x_325.x, x_325.y)) + -(vec3<f32>(x_328.x, x_328.y, x_328.z)));
  let x_332 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat3;
  let x_336 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_340.x, x_340.y, x_340.z), vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_346 : f32 = u_xlat18;
  let x_348 : vec4<f32> = u_xlat8;
  let x_350 : vec3<f32> = (vec3<f32>(x_346, x_346, x_346) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : f32 = u_xlat18;
  let x_355 : vec4<f32> = u_xlat7;
  let x_357 : vec3<f32> = (vec3<f32>(x_353, x_353, x_353) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec3<f32> = in_NORMAL0;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_360, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_365 : vec3<f32> = in_NORMAL0;
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_365, vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_370 : vec4<f32> = u_xlat6;
  let x_372 : vec4<f32> = u_xlat6;
  u_xlat18 = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_375);
  let x_377 : f32 = u_xlat18;
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat3 = (vec4<f32>(x_377, x_377, x_377, x_377) * vec4<f32>(x_379.x, x_379.y, x_379.z, x_379.z));
  let x_382 : vec4<f32> = u_xlat5;
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat18 = dot(vec3<f32>(x_382.x, x_382.y, x_382.z), vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_387);
  let x_389 : f32 = u_xlat18;
  let x_391 : vec4<f32> = u_xlat5;
  let x_393 : vec3<f32> = (vec3<f32>(x_389, x_389, x_389) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : vec4<f32> = u_xlat3;
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : vec3<f32> = (vec3<f32>(x_396.w, x_396.x, x_396.y) * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat3;
  let x_405 : vec4<f32> = u_xlat4;
  let x_408 : vec4<f32> = u_xlat5;
  let x_411 : vec3<f32> = ((vec3<f32>(x_403.y, x_403.w, x_403.x) * vec3<f32>(x_405.y, x_405.z, x_405.x)) + -(vec3<f32>(x_408.x, x_408.y, x_408.z)));
  let x_412 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_416 : f32 = in_TANGENT0.w;
  let x_419 : f32 = x_183.unity_WorldTransformParams.w;
  u_xlat18 = (x_416 * x_419);
  let x_421 : f32 = u_xlat18;
  let x_423 : vec4<f32> = u_xlat5;
  let x_425 : vec3<f32> = (vec3<f32>(x_421, x_421, x_421) * vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_430 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_430;
  let x_434 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_434;
  let x_437 : f32 = u_xlat4.z;
  vs_TEXCOORD0.x = x_437;
  let x_439 : f32 = u_xlat28;
  vs_TEXCOORD0.w = x_439;
  let x_441 : f32 = u_xlat28;
  let x_445 : vec4<f32> = x_183.unity_4LightPosX0;
  u_xlat6 = (-(vec4<f32>(x_441, x_441, x_441, x_441)) + x_445);
  let x_449 : f32 = u_xlat4.x;
  vs_TEXCOORD1.x = x_449;
  let x_453 : f32 = u_xlat4.y;
  vs_TEXCOORD2.x = x_453;
  let x_456 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_456;
  let x_459 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_459;
  let x_462 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_462;
  let x_464 : f32 = u_xlat11;
  vs_TEXCOORD1.w = x_464;
  let x_466 : f32 = u_xlat11;
  let x_470 : vec4<f32> = x_183.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_466, x_466, x_466, x_466)) + x_470);
  let x_473 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_473;
  let x_476 : f32 = u_xlat9.x;
  vs_TEXCOORD2.w = x_476;
  let x_478 : vec2<f32> = u_xlat9;
  let x_482 : vec4<f32> = x_183.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_478.x, x_478.x, x_478.x, x_478.x)) + x_482);
  let x_485 : vec4<f32> = in_COLOR0;
  u_xlat7 = (x_485 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_491 : f32 = x_183.unity_ParticleUseMeshColors;
  let x_493 : vec4<f32> = u_xlat7;
  u_xlat7 = ((vec4<f32>(x_491, x_491, x_491, x_491) * x_493) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_501 : f32 = u_xlat2.w;
  u_xlatu9.x = (bitcast<u32>(x_501) & 255u);
  let x_507 : u32 = u_xlatu9.x;
  u_xlat8.x = f32(x_507);
  let x_511 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_511);
  param_1 = 8i;
  param_2 = 8i;
  let x_516 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_518 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_518);
  param_4 = 16i;
  param_5 = 8i;
  let x_524 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_526 : vec2<u32> = vec2<u32>(x_516, x_524);
  let x_527 : vec3<u32> = u_xlatu9;
  u_xlatu9 = vec3<u32>(x_526.x, x_526.y, x_527.z);
  let x_530 : f32 = u_xlat2.w;
  u_xlatu9.z = (bitcast<u32>(x_530) >> 24u);
  let x_535 : vec3<u32> = u_xlatu9;
  let x_536 : vec3<f32> = vec3<f32>(x_535);
  let x_537 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_537.x, x_536.x, x_536.y, x_536.z);
  let x_539 : vec4<f32> = u_xlat7;
  let x_540 : vec4<f32> = u_xlat8;
  u_xlat2 = (x_539 * x_540);
  let x_543 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_543 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_548 : f32 = u_xlat1.x;
  let x_550 : f32 = x_183.unity_ParticleUVShiftData.y;
  u_xlat9.x = (x_548 / x_550);
  let x_554 : f32 = u_xlat9.x;
  u_xlat9.x = floor(x_554);
  let x_558 : f32 = u_xlat9.x;
  let x_561 : f32 = x_183.unity_ParticleUVShiftData.y;
  let x_564 : f32 = u_xlat1.x;
  u_xlat18 = ((-(x_558) * x_561) + x_564);
  let x_566 : f32 = u_xlat18;
  u_xlat18 = floor(x_566);
  let x_568 : f32 = u_xlat18;
  let x_570 : f32 = x_183.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_568 * x_570);
  let x_574 : f32 = x_183.unity_ParticleUVShiftData.w;
  u_xlat18 = (-(x_574) + 1.0f);
  let x_578 : f32 = u_xlat9.x;
  let x_581 : f32 = x_183.unity_ParticleUVShiftData.w;
  let x_583 : f32 = u_xlat18;
  u_xlat2.y = ((-(x_578) * x_581) + x_583);
  let x_588 : vec2<f32> = in_TEXCOORD0;
  let x_590 : vec4<f32> = x_183.unity_ParticleUVShiftData;
  let x_593 : vec4<f32> = u_xlat2;
  u_xlat9 = ((x_588 * vec2<f32>(x_590.z, x_590.w)) + vec2<f32>(x_593.x, x_593.y));
  let x_600 : f32 = x_183.unity_ParticleUVShiftData.x;
  u_xlatb27 = !((x_600 == 0.0f));
  let x_603 : bool = u_xlatb27;
  if (x_603) {
    let x_607 : vec2<f32> = u_xlat9;
    x_604 = x_607;
  } else {
    let x_609 : vec2<f32> = in_TEXCOORD0;
    x_604 = x_609;
  }
  let x_610 : vec2<f32> = x_604;
  u_xlat9 = x_610;
  let x_613 : vec2<f32> = u_xlat9;
  let x_616 : vec4<f32> = x_183.x_MainTex_ST;
  let x_620 : vec4<f32> = x_183.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_613 * vec2<f32>(x_616.x, x_616.y)) + vec2<f32>(x_620.z, x_620.w));
  let x_623 : f32 = u_xlat19;
  let x_625 : f32 = x_183.unity_MatrixV[1i].z;
  u_xlat9.x = (x_623 * x_625);
  let x_628 : f32 = u_xlat19;
  let x_631 : vec4<f32> = x_183.unity_MatrixVP[1i];
  let x_633 : vec3<f32> = (vec3<f32>(x_628, x_628, x_628) * vec3<f32>(x_631.x, x_631.y, x_631.w));
  let x_634 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_633.x, x_634.y, x_633.y, x_633.z);
  let x_637 : vec4<f32> = x_183.unity_MatrixVP[0i];
  let x_639 : vec3<f32> = u_xlat10;
  let x_642 : vec4<f32> = u_xlat1;
  let x_644 : vec3<f32> = ((vec3<f32>(x_637.x, x_637.y, x_637.w) * vec3<f32>(x_639.x, x_639.x, x_639.x)) + vec3<f32>(x_642.x, x_642.z, x_642.w));
  let x_645 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_644.x, x_645.y, x_644.y, x_644.z);
  let x_648 : f32 = x_183.unity_MatrixV[0i].z;
  let x_650 : f32 = u_xlat10.x;
  let x_653 : f32 = u_xlat9.x;
  u_xlat9.x = ((x_648 * x_650) + x_653);
  let x_657 : f32 = x_183.unity_MatrixV[2i].z;
  let x_659 : f32 = u_xlat0.x;
  let x_662 : f32 = u_xlat9.x;
  u_xlat9.x = ((x_657 * x_659) + x_662);
  let x_666 : vec4<f32> = x_183.unity_MatrixVP[2i];
  let x_668 : vec4<f32> = u_xlat0;
  let x_671 : vec4<f32> = u_xlat1;
  let x_673 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.y, x_666.w) * vec3<f32>(x_668.x, x_668.x, x_668.x)) + vec3<f32>(x_671.x, x_671.z, x_671.w));
  let x_674 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_673.x, x_674.y, x_673.y, x_673.z);
  let x_676 : vec4<f32> = u_xlat0;
  let x_679 : vec4<f32> = x_183.unity_MatrixVP[3i];
  let x_681 : vec3<f32> = (vec3<f32>(x_676.x, x_676.z, x_676.w) + vec3<f32>(x_679.x, x_679.y, x_679.w));
  let x_682 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_681.x, x_682.y, x_681.y, x_681.z);
  let x_685 : f32 = u_xlat9.x;
  let x_687 : f32 = x_183.unity_MatrixV[3i].z;
  u_xlat9.x = (x_685 + x_687);
  let x_693 : f32 = u_xlat9.x;
  vs_TEXCOORD4.z = -(x_693);
  let x_698 : f32 = u_xlat0.z;
  let x_700 : f32 = x_183.x_ProjectionParams.x;
  u_xlat0.y = (x_698 * x_700);
  let x_703 : vec4<f32> = u_xlat0;
  let x_707 : vec3<f32> = (vec3<f32>(x_703.x, x_703.w, x_703.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_708 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_707.x, x_708.y, x_707.y, x_707.z);
  let x_711 : f32 = u_xlat0.w;
  vs_TEXCOORD4.w = x_711;
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec4<f32> = u_xlat1;
  let x_717 : vec2<f32> = (vec2<f32>(x_713.z, x_713.z) + vec2<f32>(x_715.x, x_715.w));
  let x_718 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat3;
  let x_722 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec4<f32>(x_720.y, x_720.y, x_720.y, x_720.y) * x_722);
  let x_724 : vec4<f32> = u_xlat4;
  let x_725 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_724 * x_725);
  let x_727 : vec4<f32> = u_xlat6;
  let x_728 : vec4<f32> = u_xlat6;
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_727 * x_728) + x_730);
  let x_732 : vec4<f32> = u_xlat6;
  let x_733 : vec4<f32> = u_xlat3;
  let x_736 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_732 * vec4<f32>(x_733.x, x_733.x, x_733.x, x_733.x)) + x_736);
  let x_738 : vec4<f32> = u_xlat5;
  let x_739 : vec4<f32> = u_xlat3;
  let x_742 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_738 * vec4<f32>(x_739.w, x_739.w, x_739.z, x_739.w)) + x_742);
  let x_744 : vec4<f32> = u_xlat5;
  let x_745 : vec4<f32> = u_xlat5;
  let x_747 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_744 * x_745) + x_747);
  let x_749 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_749, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_753 : vec4<f32> = u_xlat1;
  u_xlat2 = inverseSqrt(x_753);
  let x_755 : vec4<f32> = u_xlat1;
  let x_757 : vec4<f32> = x_183.unity_4LightAtten0;
  u_xlat1 = ((x_755 * x_757) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_760 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_760);
  let x_762 : vec4<f32> = u_xlat0;
  let x_763 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_762 * x_763);
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_765, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_768 : vec4<f32> = u_xlat1;
  let x_769 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_768 * x_769);
  let x_771 : vec4<f32> = u_xlat0;
  let x_774 : vec4<f32> = x_183.unity_LightColor[1i];
  let x_776 : vec3<f32> = (vec3<f32>(x_771.y, x_771.y, x_771.y) * vec3<f32>(x_774.x, x_774.y, x_774.z));
  let x_777 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_780 : vec4<f32> = x_183.unity_LightColor[0i];
  let x_782 : vec4<f32> = u_xlat0;
  let x_785 : vec4<f32> = u_xlat1;
  let x_787 : vec3<f32> = ((vec3<f32>(x_780.x, x_780.y, x_780.z) * vec3<f32>(x_782.x, x_782.x, x_782.x)) + vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_791 : vec4<f32> = x_183.unity_LightColor[2i];
  let x_793 : vec4<f32> = u_xlat0;
  let x_796 : vec4<f32> = u_xlat1;
  let x_798 : vec3<f32> = ((vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_793.z, x_793.z, x_793.z)) + vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_802 : vec4<f32> = x_183.unity_LightColor[3i];
  let x_804 : vec4<f32> = u_xlat0;
  let x_807 : vec4<f32> = u_xlat0;
  let x_809 : vec3<f32> = ((vec3<f32>(x_802.x, x_802.y, x_802.z) * vec3<f32>(x_804.w, x_804.w, x_804.w)) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_814 : f32 = u_xlat3.y;
  let x_816 : f32 = u_xlat3.y;
  u_xlat27 = (x_814 * x_816);
  let x_819 : f32 = u_xlat3.x;
  let x_821 : f32 = u_xlat3.x;
  let x_823 : f32 = u_xlat27;
  u_xlat27 = ((x_819 * x_821) + -(x_823));
  let x_826 : vec4<f32> = u_xlat3;
  let x_828 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_826.y, x_826.w, x_826.z, x_826.x) * x_828);
  let x_831 : vec4<f32> = x_183.unity_SHBr;
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_831, x_832);
  let x_836 : vec4<f32> = x_183.unity_SHBg;
  let x_837 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_836, x_837);
  let x_841 : vec4<f32> = x_183.unity_SHBb;
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_841, x_842);
  let x_846 : vec4<f32> = x_183.unity_SHC;
  let x_848 : f32 = u_xlat27;
  let x_851 : vec4<f32> = u_xlat2;
  let x_853 : vec3<f32> = ((vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(x_848, x_848, x_848)) + vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_858 : vec4<f32> = u_xlat0;
  let x_860 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (vec3<f32>(x_858.x, x_858.y, x_858.z) + vec3<f32>(x_860.x, x_860.y, x_860.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_866 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_866);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
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
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5);
}

