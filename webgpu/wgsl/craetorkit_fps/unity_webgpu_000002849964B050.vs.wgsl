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

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

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
  var u_xlat10 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlatu28 : u32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu2 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb2 : bool;
  var x_494 : vec2<f32>;
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
  u_xlat6.y = dot(x_172, x_173);
  let x_177 : f32 = u_xlat19;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat7 = (vec4<f32>(x_177, x_177, x_177, x_177) * x_187);
  let x_190 : f32 = u_xlat2.x;
  u_xlat4.w = x_190;
  let x_193 : f32 = u_xlat4.y;
  u_xlat5.z = x_193;
  let x_196 : f32 = u_xlat5.y;
  u_xlat4.x = x_196;
  let x_199 : f32 = u_xlat10.x;
  u_xlat4.y = x_199;
  let x_202 : f32 = u_xlat10.z;
  u_xlat5.y = x_202;
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat10.x = dot(x_204, x_205);
  let x_208 : vec4<f32> = u_xlat4;
  let x_209 : vec4<f32> = in_POSITION0;
  u_xlat6.x = dot(x_208, x_209);
  let x_213 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_214 : vec3<f32> = u_xlat10;
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
  u_xlat7 = ((x_231 * vec4<f32>(x_232.x, x_232.x, x_232.x, x_232.x)) + x_235);
  let x_237 : vec4<f32> = u_xlat7;
  let x_239 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat7 = (x_237 + x_239);
  let x_245 : vec4<f32> = u_xlat7;
  gl_Position = x_245;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_249.y, x_249.z, x_249.x) * vec3<f32>(x_251.z, x_251.x, x_251.y));
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat5;
  let x_259 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_254.z, x_254.x, x_254.y) * vec3<f32>(x_256.y, x_256.z, x_256.x)) + -(x_259));
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
  u_xlat28 = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : f32 = u_xlat28;
  u_xlat28 = (1.0f / x_286);
  let x_288 : vec3<f32> = u_xlat9;
  let x_289 : f32 = u_xlat28;
  u_xlat9 = (x_288 * vec3<f32>(x_289, x_289, x_289));
  let x_294 : vec3<f32> = in_NORMAL0;
  let x_295 : vec3<f32> = u_xlat9;
  u_xlat5.y = dot(x_294, x_295);
  let x_298 : vec4<f32> = u_xlat3;
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat9 = (vec3<f32>(x_298.y, x_298.z, x_298.x) * vec3<f32>(x_300.z, x_300.x, x_300.y));
  let x_303 : vec4<f32> = u_xlat4;
  let x_305 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_303.y, x_303.z, x_303.x) * vec3<f32>(x_305.z, x_305.x, x_305.y)) + -(x_308));
  let x_311 : f32 = u_xlat28;
  let x_313 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_315 : f32 = u_xlat28;
  let x_317 : vec4<f32> = u_xlat2;
  let x_319 : vec3<f32> = (vec3<f32>(x_315, x_315, x_315) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = in_NORMAL0;
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_322, vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_327 : vec3<f32> = in_NORMAL0;
  let x_328 : vec3<f32> = u_xlat9;
  u_xlat5.z = dot(x_327, x_328);
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat9.x = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_338 : f32 = u_xlat9.x;
  u_xlat9.x = inverseSqrt(x_338);
  let x_341 : vec3<f32> = u_xlat9;
  let x_343 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_341.x, x_341.x, x_341.x) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_348 : vec3<f32> = u_xlat9;
  vs_TEXCOORD0 = x_348;
  let x_350 : vec4<f32> = u_xlat6;
  vs_TEXCOORD1 = vec3<f32>(x_350.x, x_350.y, x_350.z);
  let x_352 : vec4<f32> = u_xlat6;
  let x_356 : vec4<f32> = x_184.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_352.x, x_352.x, x_352.x, x_352.x)) + x_356);
  let x_358 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = x_184.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_358.y, x_358.y, x_358.y, x_358.y)) + x_362);
  let x_364 : vec4<f32> = u_xlat6;
  let x_368 : vec4<f32> = x_184.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_364.z, x_364.z, x_364.z, x_364.z)) + x_368);
  let x_371 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_371 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_377 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_377, x_377, x_377, x_377) * x_379) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_385 : f32 = u_xlat2.w;
  u_xlatu28 = (bitcast<u32>(x_385) & 255u);
  let x_390 : u32 = u_xlatu28;
  u_xlat8.x = f32(x_390);
  let x_397 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_397);
  param_1 = 8i;
  param_2 = 8i;
  let x_402 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_404 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_404);
  param_4 = 16i;
  param_5 = 8i;
  let x_410 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu2 = vec2<u32>(x_402, x_410);
  let x_413 : f32 = u_xlat2.w;
  u_xlatu28 = (bitcast<u32>(x_413) >> 24u);
  let x_417 : u32 = u_xlatu28;
  u_xlat8.w = f32(x_417);
  let x_420 : vec2<u32> = u_xlatu2;
  let x_422 : vec2<f32> = vec2<f32>(x_420);
  let x_423 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_423.x, x_422.x, x_422.y, x_423.w);
  let x_425 : vec4<f32> = u_xlat6;
  let x_426 : vec4<f32> = u_xlat8;
  u_xlat2 = (x_425 * x_426);
  let x_429 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_429 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_434 : f32 = u_xlat1.x;
  let x_436 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat28 = (x_434 / x_436);
  let x_438 : f32 = u_xlat28;
  u_xlat28 = floor(x_438);
  let x_440 : f32 = u_xlat28;
  let x_443 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_446 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_440) * x_443) + x_446);
  let x_450 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_450);
  let x_454 : f32 = u_xlat1.x;
  let x_456 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_454 * x_456);
  let x_460 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_460) + 1.0f);
  let x_464 : f32 = u_xlat28;
  let x_467 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_470 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_464) * x_467) + x_470);
  let x_475 : vec2<f32> = in_TEXCOORD0;
  let x_477 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_480 : vec4<f32> = u_xlat2;
  let x_482 : vec2<f32> = ((x_475 * vec2<f32>(x_477.z, x_477.w)) + vec2<f32>(x_480.x, x_480.y));
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_483.y, x_483.z, x_482.y);
  let x_489 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb2 = !((x_489 == 0.0f));
  let x_492 : bool = u_xlatb2;
  if (x_492) {
    let x_497 : vec4<f32> = u_xlat1;
    x_494 = vec2<f32>(x_497.x, x_497.w);
  } else {
    let x_500 : vec2<f32> = in_TEXCOORD0;
    x_494 = x_500;
  }
  let x_501 : vec2<f32> = x_494;
  let x_502 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_501.x, x_502.y, x_502.z, x_501.y);
  let x_506 : vec4<f32> = u_xlat1;
  let x_510 : vec4<f32> = x_184.x_MainTex_ST;
  let x_514 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_506.x, x_506.w) * vec2<f32>(x_510.x, x_510.y)) + vec2<f32>(x_514.z, x_514.w));
  let x_517 : f32 = u_xlat19;
  let x_519 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat1.x = (x_517 * x_519);
  let x_522 : f32 = u_xlat19;
  let x_525 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_527 : vec3<f32> = (vec3<f32>(x_522, x_522, x_522) * vec3<f32>(x_525.x, x_525.y, x_525.w));
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_531 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_533 : vec3<f32> = u_xlat10;
  let x_536 : vec4<f32> = u_xlat2;
  let x_538 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.w) * vec3<f32>(x_533.x, x_533.x, x_533.x)) + vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_542 : f32 = x_184.unity_MatrixV[0i].z;
  let x_544 : f32 = u_xlat10.x;
  let x_547 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_542 * x_544) + x_547);
  let x_551 : f32 = x_184.unity_MatrixV[2i].z;
  let x_553 : f32 = u_xlat0.x;
  let x_556 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_551 * x_553) + x_556);
  let x_560 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_562 : vec4<f32> = u_xlat0;
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat10 = ((vec3<f32>(x_560.x, x_560.y, x_560.w) * vec3<f32>(x_562.x, x_562.x, x_562.x)) + vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : vec3<f32> = u_xlat10;
  let x_570 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat10 = (x_568 + vec3<f32>(x_570.x, x_570.y, x_570.w));
  let x_574 : f32 = u_xlat1.x;
  let x_576 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat0.x = (x_574 + x_576);
  let x_582 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_582);
  let x_587 : f32 = u_xlat10.z;
  vs_TEXCOORD3.w = x_587;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_593 : f32 = x_184.x_ProjectionParams.x;
  u_xlat2.y = x_593;
  let x_595 : vec3<f32> = u_xlat10;
  let x_596 : vec4<f32> = u_xlat2;
  let x_598 : vec3<f32> = (x_595 * vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat2;
  let x_603 : vec4<f32> = u_xlat7;
  let x_605 : vec3<f32> = (vec3<f32>(x_601.x, x_601.y, x_601.z) * vec3<f32>(x_603.x, x_603.y, x_603.w));
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_609 : vec4<f32> = u_xlat7;
  let x_610 : vec2<f32> = vec2<f32>(x_609.z, x_609.w);
  let x_611 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_611.x, x_611.y, x_610.x, x_610.y);
  let x_614 : f32 = u_xlat1.y;
  u_xlat1.w = (x_614 * 0.5f);
  let x_617 : vec4<f32> = u_xlat1;
  let x_619 : vec4<f32> = u_xlat1;
  let x_621 : vec2<f32> = (vec2<f32>(x_617.z, x_617.z) + vec2<f32>(x_619.x, x_619.w));
  let x_622 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
  let x_624 : vec3<f32> = u_xlat9;
  let x_626 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_624.y, x_624.y, x_624.y, x_624.y) * x_626);
  let x_628 : vec4<f32> = u_xlat4;
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_628 * x_629);
  let x_631 : vec4<f32> = u_xlat3;
  let x_632 : vec4<f32> = u_xlat3;
  let x_634 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_631 * x_632) + x_634);
  let x_636 : vec4<f32> = u_xlat3;
  let x_637 : vec3<f32> = u_xlat9;
  let x_640 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_636 * vec4<f32>(x_637.x, x_637.x, x_637.x, x_637.x)) + x_640);
  let x_642 : vec4<f32> = u_xlat5;
  let x_643 : vec3<f32> = u_xlat9;
  let x_646 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_642 * vec4<f32>(x_643.z, x_643.z, x_643.z, x_643.z)) + x_646);
  let x_648 : vec4<f32> = u_xlat5;
  let x_649 : vec4<f32> = u_xlat5;
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_648 * x_649) + x_651);
  let x_653 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_653, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat4 = inverseSqrt(x_657);
  let x_659 : vec4<f32> = u_xlat3;
  let x_661 : vec4<f32> = x_184.unity_4LightAtten0;
  u_xlat3 = ((x_659 * x_661) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_664 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_664);
  let x_666 : vec4<f32> = u_xlat1;
  let x_667 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_666 * x_667);
  let x_669 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_669, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_672 : vec4<f32> = u_xlat3;
  let x_673 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_672 * x_673);
  let x_675 : vec4<f32> = u_xlat1;
  let x_678 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_680 : vec3<f32> = (vec3<f32>(x_675.y, x_675.y, x_675.y) * vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_686 : vec4<f32> = u_xlat1;
  let x_689 : vec4<f32> = u_xlat3;
  let x_691 : vec3<f32> = ((vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(x_686.x, x_686.x, x_686.x)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_695 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_697 : vec4<f32> = u_xlat1;
  let x_700 : vec4<f32> = u_xlat3;
  let x_702 : vec3<f32> = ((vec3<f32>(x_695.x, x_695.y, x_695.z) * vec3<f32>(x_697.z, x_697.z, x_697.z)) + vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_706 : vec4<f32> = x_184.unity_LightColor[3i];
  let x_708 : vec4<f32> = u_xlat1;
  let x_711 : vec4<f32> = u_xlat1;
  let x_713 : vec3<f32> = ((vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(x_708.w, x_708.w, x_708.w)) + vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_717 : f32 = u_xlat9.y;
  let x_719 : f32 = u_xlat9.y;
  u_xlat0.x = (x_717 * x_719);
  let x_723 : f32 = u_xlat9.x;
  let x_725 : f32 = u_xlat9.x;
  let x_728 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_723 * x_725) + -(x_728));
  let x_732 : vec3<f32> = u_xlat9;
  let x_734 : vec3<f32> = u_xlat9;
  u_xlat3 = (vec4<f32>(x_732.y, x_732.z, x_732.z, x_732.x) * vec4<f32>(x_734.x, x_734.y, x_734.z, x_734.z));
  let x_738 : vec4<f32> = x_184.unity_SHBr;
  let x_739 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_738, x_739);
  let x_743 : vec4<f32> = x_184.unity_SHBg;
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_743, x_744);
  let x_748 : vec4<f32> = x_184.unity_SHBb;
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_748, x_749);
  let x_753 : vec4<f32> = x_184.unity_SHC;
  let x_755 : vec4<f32> = u_xlat0;
  let x_758 : vec4<f32> = u_xlat4;
  let x_760 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755.x, x_755.x, x_755.x)) + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_764 : vec4<f32> = u_xlat0;
  let x_766 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_764.x, x_764.y, x_764.z) + vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_770 : f32 = u_xlat2.y;
  u_xlat2.w = (x_770 * 0.5f);
  let x_773 : vec4<f32> = u_xlat2;
  let x_775 : vec4<f32> = u_xlat2;
  let x_777 : vec2<f32> = (vec2<f32>(x_773.z, x_773.z) + vec2<f32>(x_775.x, x_775.w));
  let x_778 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_777.x, x_777.y, x_778.z, x_778.w);
  let x_782 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_782);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6, vs_TEXCOORD4);
}

