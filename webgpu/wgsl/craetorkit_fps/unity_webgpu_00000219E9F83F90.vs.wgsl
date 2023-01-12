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

@group(0) @binding(9) var<storage, read> x_62 : unity_ParticleInstanceData;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

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
  var x_471 : vec2<f32>;
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
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_249.y, x_249.z, x_249.x) * vec3<f32>(x_251.z, x_251.x, x_251.y));
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat5;
  let x_259 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_254.z, x_254.x, x_254.y) * vec3<f32>(x_256.y, x_256.z, x_256.x)) + -(x_259));
  let x_262 : vec4<f32> = u_xlat3;
  let x_264 : vec4<f32> = u_xlat5;
  let x_266 : vec3<f32> = (vec3<f32>(x_262.z, x_262.x, x_262.y) * vec3<f32>(x_264.y, x_264.z, x_264.x));
  let x_267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat3;
  let x_271 : vec4<f32> = u_xlat5;
  let x_274 : vec4<f32> = u_xlat2;
  let x_277 : vec3<f32> = ((vec3<f32>(x_269.y, x_269.z, x_269.x) * vec3<f32>(x_271.z, x_271.x, x_271.y)) + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : vec4<f32> = u_xlat4;
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_286);
  let x_288 : vec3<f32> = u_xlat7;
  let x_289 : f32 = u_xlat22;
  u_xlat7 = (x_288 * vec3<f32>(x_289, x_289, x_289));
  let x_294 : vec3<f32> = in_NORMAL0;
  let x_295 : vec3<f32> = u_xlat7;
  u_xlat5.y = dot(x_294, x_295);
  let x_298 : vec4<f32> = u_xlat3;
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec3<f32>(x_298.y, x_298.z, x_298.x) * vec3<f32>(x_300.z, x_300.x, x_300.y));
  let x_303 : vec4<f32> = u_xlat4;
  let x_305 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_303.y, x_303.z, x_303.x) * vec3<f32>(x_305.z, x_305.x, x_305.y)) + -(x_308));
  let x_311 : f32 = u_xlat22;
  let x_313 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_315 : f32 = u_xlat22;
  let x_317 : vec4<f32> = u_xlat2;
  let x_319 : vec3<f32> = (vec3<f32>(x_315, x_315, x_315) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = in_NORMAL0;
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_322, vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_327 : vec3<f32> = in_NORMAL0;
  let x_328 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_327, x_328);
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_338 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_338);
  let x_341 : vec3<f32> = u_xlat7;
  let x_343 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_341.x, x_341.x, x_341.x) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_347 : vec3<f32> = u_xlat7;
  vs_TEXCOORD0 = x_347;
  let x_349 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_349 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_355 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_355, x_355, x_355, x_355) * x_357) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_363 : f32 = u_xlat2.w;
  u_xlatu22 = (bitcast<u32>(x_363) & 255u);
  let x_367 : u32 = u_xlatu22;
  u_xlat4.x = f32(x_367);
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
  u_xlatu2 = vec2<u32>(x_379, x_387);
  let x_390 : f32 = u_xlat2.w;
  u_xlatu22 = (bitcast<u32>(x_390) >> 24u);
  let x_394 : u32 = u_xlatu22;
  u_xlat4.w = f32(x_394);
  let x_397 : vec2<u32> = u_xlatu2;
  let x_399 : vec2<f32> = vec2<f32>(x_397);
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_400.x, x_399.x, x_399.y, x_400.w);
  let x_402 : vec4<f32> = u_xlat3;
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_402 * x_403);
  let x_406 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_406 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_411 : f32 = u_xlat1.x;
  let x_413 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat22 = (x_411 / x_413);
  let x_415 : f32 = u_xlat22;
  u_xlat22 = floor(x_415);
  let x_417 : f32 = u_xlat22;
  let x_420 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_423 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_417) * x_420) + x_423);
  let x_427 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_427);
  let x_431 : f32 = u_xlat1.x;
  let x_433 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_431 * x_433);
  let x_437 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_437) + 1.0f);
  let x_441 : f32 = u_xlat22;
  let x_444 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_447 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_441) * x_444) + x_447);
  let x_452 : vec2<f32> = in_TEXCOORD0;
  let x_454 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_457 : vec4<f32> = u_xlat2;
  let x_459 : vec2<f32> = ((x_452 * vec2<f32>(x_454.z, x_454.w)) + vec2<f32>(x_457.x, x_457.y));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_460.y, x_460.z, x_459.y);
  let x_466 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb2 = !((x_466 == 0.0f));
  let x_469 : bool = u_xlatb2;
  if (x_469) {
    let x_474 : vec4<f32> = u_xlat1;
    x_471 = vec2<f32>(x_474.x, x_474.w);
  } else {
    let x_477 : vec2<f32> = in_TEXCOORD0;
    x_471 = x_477;
  }
  let x_478 : vec2<f32> = x_471;
  let x_479 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_478.x, x_479.y, x_479.z, x_478.y);
  let x_483 : vec4<f32> = u_xlat1;
  let x_486 : vec4<f32> = x_184.x_MainTex_ST;
  let x_490 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_483.x, x_483.w) * vec2<f32>(x_486.x, x_486.y)) + vec2<f32>(x_490.z, x_490.w));
  let x_493 : f32 = u_xlat15;
  let x_495 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat1.x = (x_493 * x_495);
  let x_498 : f32 = u_xlat15;
  let x_501 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_503 : vec3<f32> = (vec3<f32>(x_498, x_498, x_498) * vec3<f32>(x_501.x, x_501.y, x_501.w));
  let x_504 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_507 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_509 : vec3<f32> = u_xlat8;
  let x_512 : vec4<f32> = u_xlat2;
  let x_514 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.y, x_507.w) * vec3<f32>(x_509.x, x_509.x, x_509.x)) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : f32 = x_184.unity_MatrixV[0i].z;
  let x_520 : f32 = u_xlat8.x;
  let x_523 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_518 * x_520) + x_523);
  let x_527 : f32 = x_184.unity_MatrixV[2i].z;
  let x_529 : f32 = u_xlat0.x;
  let x_532 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_527 * x_529) + x_532);
  let x_536 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_538 : vec4<f32> = u_xlat0;
  let x_541 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_536.x, x_536.y, x_536.w) * vec3<f32>(x_538.x, x_538.x, x_538.x)) + vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec3<f32> = u_xlat8;
  let x_546 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat8 = (x_544 + vec3<f32>(x_546.x, x_546.y, x_546.w));
  let x_550 : f32 = u_xlat1.x;
  let x_552 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat0.x = (x_550 + x_552);
  let x_558 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_558);
  let x_563 : f32 = u_xlat8.z;
  vs_TEXCOORD3.w = x_563;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_569 : f32 = x_184.x_ProjectionParams.x;
  u_xlat2.y = x_569;
  let x_571 : vec3<f32> = u_xlat8;
  let x_572 : vec4<f32> = u_xlat2;
  let x_574 : vec3<f32> = (x_571 * vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat2;
  let x_579 : vec4<f32> = u_xlat6;
  let x_581 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(x_579.x, x_579.y, x_579.w));
  let x_582 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_585 : vec4<f32> = u_xlat6;
  let x_586 : vec2<f32> = vec2<f32>(x_585.z, x_585.w);
  let x_587 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_587.x, x_587.y, x_586.x, x_586.y);
  let x_590 : f32 = u_xlat1.y;
  u_xlat1.w = (x_590 * 0.5f);
  let x_593 : vec4<f32> = u_xlat1;
  let x_595 : vec4<f32> = u_xlat1;
  let x_597 : vec2<f32> = (vec2<f32>(x_593.z, x_593.z) + vec2<f32>(x_595.x, x_595.w));
  let x_598 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
  let x_601 : f32 = u_xlat7.y;
  let x_603 : f32 = u_xlat7.y;
  u_xlat0.x = (x_601 * x_603);
  let x_607 : f32 = u_xlat7.x;
  let x_609 : f32 = u_xlat7.x;
  let x_612 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_607 * x_609) + -(x_612));
  let x_616 : vec3<f32> = u_xlat7;
  let x_618 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec4<f32>(x_616.y, x_616.z, x_616.z, x_616.x) * vec4<f32>(x_618.x, x_618.y, x_618.z, x_618.z));
  let x_622 : vec4<f32> = x_184.unity_SHBr;
  let x_623 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_622, x_623);
  let x_627 : vec4<f32> = x_184.unity_SHBg;
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_627, x_628);
  let x_632 : vec4<f32> = x_184.unity_SHBb;
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_632, x_633);
  let x_638 : vec4<f32> = x_184.unity_SHC;
  let x_640 : vec4<f32> = u_xlat0;
  let x_643 : vec4<f32> = u_xlat3;
  vs_TEXCOORD4 = ((vec3<f32>(x_638.x, x_638.y, x_638.z) * vec3<f32>(x_640.x, x_640.x, x_640.x)) + vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_647 : f32 = u_xlat2.y;
  u_xlat2.w = (x_647 * 0.5f);
  let x_650 : vec4<f32> = u_xlat2;
  let x_652 : vec4<f32> = u_xlat2;
  let x_654 : vec2<f32> = (vec2<f32>(x_650.z, x_650.z) + vec2<f32>(x_652.x, x_652.w));
  let x_655 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
  let x_659 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_659);
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
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
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
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6, vs_TEXCOORD4);
}

