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

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

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
  let x_520 : f32 = u_xlat7.z;
  vs_TEXCOORD5 = x_520;
  let x_522 : vec4<f32> = u_xlat7;
  let x_523 : vec2<f32> = vec2<f32>(x_522.z, x_522.w);
  let x_524 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_524.x, x_524.y, x_523.x, x_523.y);
  let x_526 : f32 = u_xlat19;
  let x_528 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat1.x = (x_526 * x_528);
  let x_531 : f32 = u_xlat19;
  let x_534 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_536 : vec3<f32> = (vec3<f32>(x_531, x_531, x_531) * vec3<f32>(x_534.x, x_534.y, x_534.w));
  let x_537 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_540 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_542 : vec3<f32> = u_xlat10;
  let x_545 : vec4<f32> = u_xlat2;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.x, x_540.y, x_540.w) * vec3<f32>(x_542.x, x_542.x, x_542.x)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : f32 = x_184.unity_MatrixV[0i].z;
  let x_553 : f32 = u_xlat10.x;
  let x_556 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_551 * x_553) + x_556);
  let x_560 : f32 = x_184.unity_MatrixV[2i].z;
  let x_562 : f32 = u_xlat0.x;
  let x_565 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_560 * x_562) + x_565);
  let x_569 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_571 : vec4<f32> = u_xlat0;
  let x_574 : vec4<f32> = u_xlat2;
  u_xlat10 = ((vec3<f32>(x_569.x, x_569.y, x_569.w) * vec3<f32>(x_571.x, x_571.x, x_571.x)) + vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec3<f32> = u_xlat10;
  let x_579 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat10 = (x_577 + vec3<f32>(x_579.x, x_579.y, x_579.w));
  let x_583 : f32 = u_xlat1.x;
  let x_585 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat0.x = (x_583 + x_585);
  let x_591 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_591);
  let x_596 : f32 = u_xlat10.z;
  vs_TEXCOORD3.w = x_596;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_602 : f32 = x_184.x_ProjectionParams.x;
  u_xlat2.y = x_602;
  let x_604 : vec3<f32> = u_xlat10;
  let x_605 : vec4<f32> = u_xlat2;
  let x_607 : vec3<f32> = (x_604 * vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec4<f32> = u_xlat2;
  let x_612 : vec4<f32> = u_xlat7;
  let x_614 : vec3<f32> = (vec3<f32>(x_610.x, x_610.y, x_610.z) * vec3<f32>(x_612.x, x_612.y, x_612.w));
  let x_615 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_618 : f32 = u_xlat1.y;
  u_xlat1.w = (x_618 * 0.5f);
  let x_621 : vec4<f32> = u_xlat1;
  let x_623 : vec4<f32> = u_xlat1;
  let x_625 : vec2<f32> = (vec2<f32>(x_621.z, x_621.z) + vec2<f32>(x_623.x, x_623.w));
  let x_626 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
  let x_628 : vec3<f32> = u_xlat9;
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_628.y, x_628.y, x_628.y, x_628.y) * x_630);
  let x_632 : vec4<f32> = u_xlat4;
  let x_633 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_632 * x_633);
  let x_635 : vec4<f32> = u_xlat3;
  let x_636 : vec4<f32> = u_xlat3;
  let x_638 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_635 * x_636) + x_638);
  let x_640 : vec4<f32> = u_xlat3;
  let x_641 : vec3<f32> = u_xlat9;
  let x_644 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_640 * vec4<f32>(x_641.x, x_641.x, x_641.x, x_641.x)) + x_644);
  let x_646 : vec4<f32> = u_xlat5;
  let x_647 : vec3<f32> = u_xlat9;
  let x_650 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_646 * vec4<f32>(x_647.z, x_647.z, x_647.z, x_647.z)) + x_650);
  let x_652 : vec4<f32> = u_xlat5;
  let x_653 : vec4<f32> = u_xlat5;
  let x_655 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_652 * x_653) + x_655);
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_657, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat4 = inverseSqrt(x_661);
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : vec4<f32> = x_184.unity_4LightAtten0;
  u_xlat3 = ((x_663 * x_665) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_668 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_668);
  let x_670 : vec4<f32> = u_xlat1;
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_670 * x_671);
  let x_673 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_673, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_676 : vec4<f32> = u_xlat3;
  let x_677 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_676 * x_677);
  let x_679 : vec4<f32> = u_xlat1;
  let x_682 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_684 : vec3<f32> = (vec3<f32>(x_679.y, x_679.y, x_679.y) * vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_690 : vec4<f32> = u_xlat1;
  let x_693 : vec4<f32> = u_xlat3;
  let x_695 : vec3<f32> = ((vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(x_690.x, x_690.x, x_690.x)) + vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_699 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_701 : vec4<f32> = u_xlat1;
  let x_704 : vec4<f32> = u_xlat3;
  let x_706 : vec3<f32> = ((vec3<f32>(x_699.x, x_699.y, x_699.z) * vec3<f32>(x_701.z, x_701.z, x_701.z)) + vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_710 : vec4<f32> = x_184.unity_LightColor[3i];
  let x_712 : vec4<f32> = u_xlat1;
  let x_715 : vec4<f32> = u_xlat1;
  let x_717 : vec3<f32> = ((vec3<f32>(x_710.x, x_710.y, x_710.z) * vec3<f32>(x_712.w, x_712.w, x_712.w)) + vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_721 : f32 = u_xlat9.y;
  let x_723 : f32 = u_xlat9.y;
  u_xlat0.x = (x_721 * x_723);
  let x_727 : f32 = u_xlat9.x;
  let x_729 : f32 = u_xlat9.x;
  let x_732 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_727 * x_729) + -(x_732));
  let x_736 : vec3<f32> = u_xlat9;
  let x_738 : vec3<f32> = u_xlat9;
  u_xlat3 = (vec4<f32>(x_736.y, x_736.z, x_736.z, x_736.x) * vec4<f32>(x_738.x, x_738.y, x_738.z, x_738.z));
  let x_742 : vec4<f32> = x_184.unity_SHBr;
  let x_743 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_742, x_743);
  let x_747 : vec4<f32> = x_184.unity_SHBg;
  let x_748 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_747, x_748);
  let x_752 : vec4<f32> = x_184.unity_SHBb;
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_752, x_753);
  let x_757 : vec4<f32> = x_184.unity_SHC;
  let x_759 : vec4<f32> = u_xlat0;
  let x_762 : vec4<f32> = u_xlat4;
  let x_764 : vec3<f32> = ((vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(x_759.x, x_759.x, x_759.x)) + vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_768 : vec4<f32> = u_xlat0;
  let x_770 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_768.x, x_768.y, x_768.z) + vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_774 : f32 = u_xlat2.y;
  u_xlat2.w = (x_774 * 0.5f);
  let x_777 : vec4<f32> = u_xlat2;
  let x_779 : vec4<f32> = u_xlat2;
  let x_781 : vec2<f32> = (vec2<f32>(x_777.z, x_777.z) + vec2<f32>(x_779.x, x_779.w));
  let x_782 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
  let x_786 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_786);
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
  vs_TEXCOORD5_1 : f32,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD4);
}

