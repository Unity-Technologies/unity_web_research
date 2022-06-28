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
  unity_MatrixVP : mat4x4<f32>,
  unity_ParticleUVShiftData : vec4<f32>,
  unity_ParticleUseMeshColors : f32,
  @size(12)
  padding : u32,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlati1 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(11) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(12) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_185 : VGlobals;

var<private> u_xlat27 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu2 : vec3<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb1 : bool;

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
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var x_501 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec4<f32> = in_POSITION0;
  let x_36 : vec3<f32> = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  u_xlat0.w = 1.0f;
  let x_47 : i32 = gl_InstanceIndex;
  let x_54 : i32 = x_50.unity_BaseInstanceID;
  u_xlati1 = (x_47 + x_54);
  let x_64 : i32 = u_xlati1;
  let x_68 : u32 = x_63.unity_ParticleInstanceData_buf[x_64].value[9i];
  let x_70 : i32 = u_xlati1;
  let x_73 : u32 = x_63.unity_ParticleInstanceData_buf[x_70].value[10i];
  let x_75 : i32 = u_xlati1;
  let x_78 : u32 = x_63.unity_ParticleInstanceData_buf[x_75].value[11i];
  let x_80 : i32 = u_xlati1;
  let x_83 : u32 = x_63.unity_ParticleInstanceData_buf[x_80].value[12i];
  u_xlat2 = vec4<f32>(bitcast<f32>(x_68), bitcast<f32>(x_73), bitcast<f32>(x_78), bitcast<f32>(x_83));
  let x_89 : f32 = u_xlat2.y;
  u_xlat3.w = x_89;
  let x_93 : i32 = u_xlati1;
  let x_96 : u32 = x_63.unity_ParticleInstanceData_buf[x_93].value[3i];
  let x_98 : i32 = u_xlati1;
  let x_101 : u32 = x_63.unity_ParticleInstanceData_buf[x_98].value[4i];
  let x_103 : i32 = u_xlati1;
  let x_106 : u32 = x_63.unity_ParticleInstanceData_buf[x_103].value[5i];
  u_xlat9 = vec3<f32>(bitcast<f32>(x_96), bitcast<f32>(x_101), bitcast<f32>(x_106));
  let x_110 : f32 = u_xlat9.y;
  u_xlat3.y = x_110;
  let x_113 : i32 = u_xlati1;
  let x_116 : u32 = x_63.unity_ParticleInstanceData_buf[x_113].value[7i];
  let x_118 : i32 = u_xlati1;
  let x_121 : u32 = x_63.unity_ParticleInstanceData_buf[x_118].value[8i];
  let x_123 : i32 = u_xlati1;
  let x_126 : u32 = x_63.unity_ParticleInstanceData_buf[x_123].value[6i];
  let x_128 : vec3<f32> = vec3<f32>(bitcast<f32>(x_116), bitcast<f32>(x_121), bitcast<f32>(x_126));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_133 : f32 = u_xlat4.x;
  u_xlat3.z = x_133;
  let x_137 : i32 = u_xlati1;
  let x_140 : u32 = x_63.unity_ParticleInstanceData_buf[x_137].value[2i];
  let x_142 : i32 = u_xlati1;
  let x_144 : u32 = x_63.unity_ParticleInstanceData_buf[x_142].value[0i];
  let x_146 : i32 = u_xlati1;
  let x_149 : u32 = x_63.unity_ParticleInstanceData_buf[x_146].value[1i];
  let x_151 : vec3<f32> = vec3<f32>(bitcast<f32>(x_140), bitcast<f32>(x_144), bitcast<f32>(x_149));
  let x_152 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : i32 = u_xlati1;
  let x_158 : u32 = x_63.unity_ParticleInstanceData_buf[x_155].value[13i];
  u_xlat1.x = bitcast<f32>(x_158);
  let x_162 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_162);
  let x_166 : f32 = u_xlat5.z;
  u_xlat3.x = x_166;
  let x_169 : vec4<f32> = u_xlat3;
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat17 = dot(x_169, x_170);
  let x_173 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = in_POSITION0;
  u_xlat6.y = dot(x_173, x_174);
  let x_178 : f32 = u_xlat17;
  let x_188 : vec4<f32> = x_185.unity_MatrixVP[1i];
  u_xlat7 = (vec4<f32>(x_178, x_178, x_178, x_178) * x_188);
  let x_191 : f32 = u_xlat2.x;
  u_xlat4.w = x_191;
  let x_194 : f32 = u_xlat4.y;
  u_xlat5.z = x_194;
  let x_197 : f32 = u_xlat5.y;
  u_xlat4.x = x_197;
  let x_200 : f32 = u_xlat9.x;
  u_xlat4.y = x_200;
  let x_203 : f32 = u_xlat9.z;
  u_xlat5.y = x_203;
  let x_205 : vec4<f32> = u_xlat4;
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat9.x = dot(x_205, x_206);
  let x_209 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = in_POSITION0;
  u_xlat6.x = dot(x_209, x_210);
  let x_214 : vec4<f32> = x_185.unity_MatrixVP[0i];
  let x_215 : vec3<f32> = u_xlat9;
  let x_218 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_214 * vec4<f32>(x_215.x, x_215.x, x_215.x, x_215.x)) + x_218);
  let x_221 : f32 = u_xlat2.z;
  u_xlat5.w = x_221;
  let x_223 : vec4<f32> = u_xlat5;
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_223, x_224);
  let x_227 : vec4<f32> = u_xlat5;
  let x_228 : vec4<f32> = in_POSITION0;
  u_xlat6.z = dot(x_227, x_228);
  let x_232 : vec4<f32> = x_185.unity_MatrixVP[2i];
  let x_233 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_232 * vec4<f32>(x_233.x, x_233.x, x_233.x, x_233.x)) + x_236);
  let x_238 : vec4<f32> = u_xlat0;
  let x_240 : vec4<f32> = x_185.unity_MatrixVP[3i];
  u_xlat0 = (x_238 + x_240);
  let x_246 : vec4<f32> = u_xlat0;
  gl_Position = x_246;
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
  u_xlat27 = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : f32 = u_xlat27;
  u_xlat27 = (1.0f / x_286);
  let x_288 : vec3<f32> = u_xlat9;
  let x_289 : f32 = u_xlat27;
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
  let x_311 : f32 = u_xlat27;
  let x_313 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_315 : vec4<f32> = u_xlat2;
  let x_317 : f32 = u_xlat27;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317, x_317, x_317));
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
  let x_356 : vec4<f32> = x_185.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_352.x, x_352.x, x_352.x, x_352.x)) + x_356);
  let x_358 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = x_185.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_358.y, x_358.y, x_358.y, x_358.y)) + x_362);
  let x_364 : vec4<f32> = u_xlat6;
  let x_368 : vec4<f32> = x_185.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_364.z, x_364.z, x_364.z, x_364.z)) + x_368);
  let x_371 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_371 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_377 : f32 = x_185.unity_ParticleUseMeshColors;
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_377, x_377, x_377, x_377) * x_379) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_387 : f32 = u_xlat2.w;
  u_xlatu2.x = (bitcast<u32>(x_387) & 255u);
  let x_394 : u32 = u_xlatu2.x;
  u_xlat7.x = f32(x_394);
  let x_398 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_398);
  param_1 = 8i;
  param_2 = 8i;
  let x_403 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_405 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_405);
  param_4 = 16i;
  param_5 = 8i;
  let x_411 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_413 : vec2<u32> = vec2<u32>(x_403, x_411);
  let x_414 : vec3<u32> = u_xlatu2;
  u_xlatu2 = vec3<u32>(x_413.x, x_413.y, x_414.z);
  let x_417 : f32 = u_xlat2.w;
  u_xlatu2.z = (bitcast<u32>(x_417) >> 24u);
  let x_422 : vec3<u32> = u_xlatu2;
  let x_423 : vec3<f32> = vec3<f32>(x_422);
  let x_424 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_424.x, x_423.x, x_423.y, x_423.z);
  let x_426 : vec4<f32> = u_xlat6;
  let x_427 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_426 * x_427);
  let x_430 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_430 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_435 : f32 = u_xlat1.x;
  let x_437 : f32 = x_185.unity_ParticleUVShiftData.y;
  u_xlat2.x = (x_435 / x_437);
  let x_441 : f32 = u_xlat2.x;
  u_xlat2.x = floor(x_441);
  let x_445 : f32 = u_xlat2.x;
  let x_448 : f32 = x_185.unity_ParticleUVShiftData.y;
  let x_451 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_445) * x_448) + x_451);
  let x_455 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_455);
  let x_459 : f32 = u_xlat1.x;
  let x_461 : f32 = x_185.unity_ParticleUVShiftData.z;
  u_xlat6.x = (x_459 * x_461);
  let x_465 : f32 = x_185.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_465) + 1.0f);
  let x_470 : f32 = u_xlat2.x;
  let x_473 : f32 = x_185.unity_ParticleUVShiftData.w;
  let x_476 : f32 = u_xlat1.x;
  u_xlat6.y = ((-(x_470) * x_473) + x_476);
  let x_482 : vec2<f32> = in_TEXCOORD0;
  let x_484 : vec4<f32> = x_185.unity_ParticleUVShiftData;
  let x_487 : vec4<f32> = u_xlat6;
  let x_489 : vec2<f32> = ((x_482 * vec2<f32>(x_484.z, x_484.w)) + vec2<f32>(x_487.x, x_487.y));
  let x_490 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
  let x_496 : f32 = x_185.unity_ParticleUVShiftData.x;
  u_xlatb1 = !((x_496 == 0.0f));
  let x_499 : bool = u_xlatb1;
  if (x_499) {
    let x_504 : vec4<f32> = u_xlat2;
    x_501 = vec2<f32>(x_504.x, x_504.y);
  } else {
    let x_507 : vec2<f32> = in_TEXCOORD0;
    x_501 = x_507;
  }
  let x_508 : vec2<f32> = x_501;
  let x_509 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_513 : vec4<f32> = u_xlat2;
  let x_516 : vec4<f32> = x_185.x_MainTex_ST;
  let x_520 : vec4<f32> = x_185.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_513.x, x_513.y) * vec2<f32>(x_516.x, x_516.y)) + vec2<f32>(x_520.z, x_520.w));
  let x_523 : vec3<f32> = u_xlat9;
  let x_525 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_523.y, x_523.y, x_523.y, x_523.y) * x_525);
  let x_527 : vec4<f32> = u_xlat4;
  let x_528 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_527 * x_528);
  let x_530 : vec4<f32> = u_xlat3;
  let x_531 : vec4<f32> = u_xlat3;
  let x_533 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_530 * x_531) + x_533);
  let x_535 : vec4<f32> = u_xlat3;
  let x_536 : vec3<f32> = u_xlat9;
  let x_539 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_535 * vec4<f32>(x_536.x, x_536.x, x_536.x, x_536.x)) + x_539);
  let x_541 : vec4<f32> = u_xlat5;
  let x_542 : vec3<f32> = u_xlat9;
  let x_545 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_541 * vec4<f32>(x_542.z, x_542.z, x_542.z, x_542.z)) + x_545);
  let x_547 : vec4<f32> = u_xlat5;
  let x_548 : vec4<f32> = u_xlat5;
  let x_550 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_547 * x_548) + x_550);
  let x_552 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_552, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat4 = inverseSqrt(x_556);
  let x_558 : vec4<f32> = u_xlat3;
  let x_560 : vec4<f32> = x_185.unity_4LightAtten0;
  u_xlat3 = ((x_558 * x_560) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_563 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_563);
  let x_565 : vec4<f32> = u_xlat2;
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_565 * x_566);
  let x_568 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_568, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_571 : vec4<f32> = u_xlat3;
  let x_572 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_571 * x_572);
  let x_574 : vec4<f32> = u_xlat2;
  let x_577 : vec4<f32> = x_185.unity_LightColor[1i];
  let x_579 : vec3<f32> = (vec3<f32>(x_574.y, x_574.y, x_574.y) * vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_583 : vec4<f32> = x_185.unity_LightColor[0i];
  let x_585 : vec4<f32> = u_xlat2;
  let x_588 : vec4<f32> = u_xlat3;
  let x_590 : vec3<f32> = ((vec3<f32>(x_583.x, x_583.y, x_583.z) * vec3<f32>(x_585.x, x_585.x, x_585.x)) + vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_594 : vec4<f32> = x_185.unity_LightColor[2i];
  let x_596 : vec4<f32> = u_xlat2;
  let x_599 : vec4<f32> = u_xlat3;
  let x_601 : vec3<f32> = ((vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(x_596.z, x_596.z, x_596.z)) + vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_602 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_605 : vec4<f32> = x_185.unity_LightColor[3i];
  let x_607 : vec4<f32> = u_xlat2;
  let x_610 : vec4<f32> = u_xlat2;
  let x_612 : vec3<f32> = ((vec3<f32>(x_605.x, x_605.y, x_605.z) * vec3<f32>(x_607.w, x_607.w, x_607.w)) + vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_616 : f32 = u_xlat9.y;
  let x_618 : f32 = u_xlat9.y;
  u_xlat1.x = (x_616 * x_618);
  let x_622 : f32 = u_xlat9.x;
  let x_624 : f32 = u_xlat9.x;
  let x_627 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_622 * x_624) + -(x_627));
  let x_631 : vec3<f32> = u_xlat9;
  let x_633 : vec3<f32> = u_xlat9;
  u_xlat3 = (vec4<f32>(x_631.y, x_631.z, x_631.z, x_631.x) * vec4<f32>(x_633.x, x_633.y, x_633.z, x_633.z));
  let x_637 : vec4<f32> = x_185.unity_SHBr;
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_637, x_638);
  let x_642 : vec4<f32> = x_185.unity_SHBg;
  let x_643 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_642, x_643);
  let x_647 : vec4<f32> = x_185.unity_SHBb;
  let x_648 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_647, x_648);
  let x_652 : vec4<f32> = x_185.unity_SHC;
  let x_654 : vec4<f32> = u_xlat1;
  let x_657 : vec4<f32> = u_xlat4;
  let x_659 : vec3<f32> = ((vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(x_654.x, x_654.x, x_654.x)) + vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_663 : vec4<f32> = u_xlat1;
  let x_665 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_663.x, x_663.y, x_663.z) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_669 : f32 = u_xlat0.y;
  let x_671 : f32 = x_185.x_ProjectionParams.x;
  u_xlat0.y = (x_669 * x_671);
  let x_674 : vec4<f32> = u_xlat0;
  let x_678 : vec3<f32> = (vec3<f32>(x_674.x, x_674.w, x_674.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_679 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_678.x, x_679.y, x_678.y, x_678.z);
  let x_682 : vec4<f32> = u_xlat0;
  let x_683 : vec2<f32> = vec2<f32>(x_682.z, x_682.w);
  let x_684 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_684.x, x_684.y, x_683.x, x_683.y);
  let x_686 : vec4<f32> = u_xlat1;
  let x_688 : vec4<f32> = u_xlat1;
  let x_690 : vec2<f32> = (vec2<f32>(x_686.z, x_686.z) + vec2<f32>(x_688.x, x_688.w));
  let x_691 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
  let x_694 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_694);
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
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5);
}

