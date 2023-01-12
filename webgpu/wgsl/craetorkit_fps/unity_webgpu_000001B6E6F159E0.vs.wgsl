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

@group(0) @binding(9) var<storage, read> x_62 : unity_ParticleInstanceData;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_186 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD5 : f32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

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
  var x_574 : vec2<f32>;
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
  let x_241 : vec4<f32> = u_xlat0;
  let x_243 : vec4<f32> = x_186.unity_MatrixVP[3i];
  u_xlat0 = (x_241 + x_243);
  let x_249 : vec4<f32> = u_xlat0;
  gl_Position = x_249;
  let x_253 : f32 = u_xlat0.z;
  vs_TEXCOORD5 = x_253;
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat5;
  let x_258 : vec3<f32> = (vec3<f32>(x_254.y, x_254.z, x_254.x) * vec3<f32>(x_256.z, x_256.x, x_256.y));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec4<f32> = u_xlat5;
  let x_266 : vec4<f32> = u_xlat0;
  let x_269 : vec3<f32> = ((vec3<f32>(x_261.z, x_261.x, x_261.y) * vec3<f32>(x_263.y, x_263.z, x_263.x)) + -(vec3<f32>(x_266.x, x_266.y, x_266.z)));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat3;
  let x_274 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_272.z, x_272.x, x_272.y) * vec3<f32>(x_274.y, x_274.z, x_274.x));
  let x_277 : vec4<f32> = u_xlat3;
  let x_279 : vec4<f32> = u_xlat5;
  let x_282 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_277.y, x_277.z, x_277.x) * vec3<f32>(x_279.z, x_279.x, x_279.y)) + -(x_282));
  let x_285 : vec4<f32> = u_xlat5;
  let x_288 : vec4<f32> = in_TANGENT0;
  u_xlat2.y = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_293 : vec4<f32> = u_xlat4;
  let x_295 : vec3<f32> = u_xlat8;
  u_xlat21 = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), x_295);
  let x_297 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_297);
  let x_299 : f32 = u_xlat21;
  let x_301 : vec4<f32> = u_xlat0;
  let x_303 : vec3<f32> = (vec3<f32>(x_299, x_299, x_299) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_308 : vec3<f32> = in_NORMAL0;
  let x_309 : vec4<f32> = u_xlat0;
  u_xlat0.y = dot(x_308, vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_313 : vec4<f32> = u_xlat3;
  let x_315 : vec4<f32> = u_xlat4;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.y, x_313.z, x_313.x) * vec3<f32>(x_315.z, x_315.x, x_315.y));
  let x_318 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = u_xlat3;
  let x_325 : vec4<f32> = u_xlat5;
  let x_328 : vec3<f32> = ((vec3<f32>(x_320.y, x_320.z, x_320.x) * vec3<f32>(x_322.z, x_322.x, x_322.y)) + -(vec3<f32>(x_325.x, x_325.y, x_325.z)));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec4<f32> = in_TANGENT0;
  u_xlat2.x = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = in_TANGENT0;
  u_xlat2.z = dot(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_343 : f32 = u_xlat21;
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec3<f32> = (vec3<f32>(x_343, x_343, x_343) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : f32 = u_xlat21;
  let x_352 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_350, x_350, x_350) * x_352);
  let x_354 : vec3<f32> = in_NORMAL0;
  let x_355 : vec3<f32> = u_xlat8;
  u_xlat0.x = dot(x_354, x_355);
  let x_358 : vec3<f32> = in_NORMAL0;
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat0.z = dot(x_358, vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_363.x, x_363.y, x_363.z), vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_368);
  let x_370 : f32 = u_xlat21;
  let x_372 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(x_370, x_370, x_370, x_370) * vec4<f32>(x_372.x, x_372.y, x_372.z, x_372.z));
  let x_375 : vec4<f32> = u_xlat2;
  let x_377 : vec4<f32> = u_xlat2;
  u_xlat8.x = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_382 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_382);
  let x_385 : vec3<f32> = u_xlat8;
  let x_387 : vec4<f32> = u_xlat2;
  u_xlat8 = (vec3<f32>(x_385.x, x_385.x, x_385.x) * vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat0;
  let x_392 : vec3<f32> = u_xlat8;
  let x_393 : vec3<f32> = (vec3<f32>(x_390.w, x_390.x, x_390.y) * x_392);
  let x_394 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : vec4<f32> = u_xlat0;
  let x_398 : vec3<f32> = u_xlat8;
  let x_401 : vec4<f32> = u_xlat2;
  let x_404 : vec3<f32> = ((vec3<f32>(x_396.y, x_396.w, x_396.x) * vec3<f32>(x_398.y, x_398.z, x_398.x)) + -(vec3<f32>(x_401.x, x_401.y, x_401.z)));
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_409 : f32 = in_TANGENT0.w;
  let x_412 : f32 = x_186.unity_WorldTransformParams.w;
  u_xlat3.x = (x_409 * x_412);
  let x_415 : vec4<f32> = u_xlat2;
  let x_417 : vec4<f32> = u_xlat3;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.x, x_417.x, x_417.x));
  let x_420 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_423 : f32 = u_xlat2.x;
  vs_TEXCOORD0.y = x_423;
  let x_426 : f32 = u_xlat0.x;
  vs_TEXCOORD0.z = x_426;
  let x_429 : f32 = u_xlat8.z;
  vs_TEXCOORD0.x = x_429;
  let x_432 : f32 = u_xlat8.x;
  vs_TEXCOORD1.x = x_432;
  let x_435 : f32 = u_xlat8.y;
  vs_TEXCOORD2.x = x_435;
  let x_438 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_438;
  let x_441 : f32 = u_xlat2.y;
  vs_TEXCOORD1.y = x_441;
  let x_444 : f32 = u_xlat2.z;
  vs_TEXCOORD2.y = x_444;
  let x_447 : f32 = u_xlat0.w;
  vs_TEXCOORD2.z = x_447;
  let x_450 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_450 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_455 : f32 = x_186.unity_ParticleUseMeshColors;
  let x_457 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_455, x_455, x_455, x_455) * x_457) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_465 : f32 = u_xlat2.w;
  u_xlatu8.x = (bitcast<u32>(x_465) & 255u);
  let x_471 : u32 = u_xlatu8.x;
  u_xlat4.x = f32(x_471);
  let x_475 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_475);
  param_1 = 8i;
  param_2 = 8i;
  let x_480 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_482 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_482);
  param_4 = 16i;
  param_5 = 8i;
  let x_488 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_490 : vec2<u32> = vec2<u32>(x_480, x_488);
  let x_491 : vec3<u32> = u_xlatu8;
  u_xlatu8 = vec3<u32>(x_490.x, x_490.y, x_491.z);
  let x_494 : f32 = u_xlat2.w;
  u_xlatu8.z = (bitcast<u32>(x_494) >> 24u);
  let x_499 : vec3<u32> = u_xlatu8;
  let x_500 : vec3<f32> = vec3<f32>(x_499);
  let x_501 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_501.x, x_500.x, x_500.y, x_500.z);
  let x_503 : vec4<f32> = u_xlat3;
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_503 * x_504);
  let x_507 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_507 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_512 : f32 = u_xlat1.x;
  let x_514 : f32 = x_186.unity_ParticleUVShiftData.y;
  u_xlat8.x = (x_512 / x_514);
  let x_518 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_518);
  let x_522 : f32 = u_xlat8.x;
  let x_525 : f32 = x_186.unity_ParticleUVShiftData.y;
  let x_528 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_522) * x_525) + x_528);
  let x_532 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_532);
  let x_536 : f32 = u_xlat1.x;
  let x_538 : f32 = x_186.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_536 * x_538);
  let x_542 : f32 = x_186.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_542) + 1.0f);
  let x_547 : f32 = u_xlat8.x;
  let x_550 : f32 = x_186.unity_ParticleUVShiftData.w;
  let x_553 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_547) * x_550) + x_553);
  let x_558 : vec2<f32> = in_TEXCOORD0;
  let x_560 : vec4<f32> = x_186.unity_ParticleUVShiftData;
  let x_563 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_558 * vec2<f32>(x_560.z, x_560.w)) + vec2<f32>(x_563.x, x_563.y));
  let x_570 : f32 = x_186.unity_ParticleUVShiftData.x;
  u_xlatb15 = !((x_570 == 0.0f));
  let x_573 : bool = u_xlatb15;
  if (x_573) {
    let x_577 : vec2<f32> = u_xlat1;
    x_574 = x_577;
  } else {
    let x_579 : vec2<f32> = in_TEXCOORD0;
    x_574 = x_579;
  }
  let x_580 : vec2<f32> = x_574;
  u_xlat1 = x_580;
  let x_583 : vec2<f32> = u_xlat1;
  let x_585 : vec4<f32> = x_186.x_MainTex_ST;
  let x_589 : vec4<f32> = x_186.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_583 * vec2<f32>(x_585.x, x_585.y)) + vec2<f32>(x_589.z, x_589.w));
  let x_593 : f32 = u_xlat0.y;
  let x_595 : f32 = u_xlat0.y;
  u_xlat1.x = (x_593 * x_595);
  let x_599 : f32 = u_xlat0.x;
  let x_601 : f32 = u_xlat0.x;
  let x_604 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_599 * x_601) + -(x_604));
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(x_608.y, x_608.w, x_608.z, x_608.x) * x_610);
  let x_613 : vec4<f32> = x_186.unity_SHBr;
  let x_614 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_613, x_614);
  let x_618 : vec4<f32> = x_186.unity_SHBg;
  let x_619 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_618, x_619);
  let x_623 : vec4<f32> = x_186.unity_SHBb;
  let x_624 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_623, x_624);
  let x_630 : vec4<f32> = x_186.unity_SHC;
  let x_632 : vec2<f32> = u_xlat1;
  let x_635 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_630.x, x_630.y, x_630.z) * vec3<f32>(x_632.x, x_632.x, x_632.x)) + vec3<f32>(x_635.x, x_635.y, x_635.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_643 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_643);
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
  @location(5)
  vs_TEXCOORD5_1 : f32,
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
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, gl_Position, vs_TEXCOORD5, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

