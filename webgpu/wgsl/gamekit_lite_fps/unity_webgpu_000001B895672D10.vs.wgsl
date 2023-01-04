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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlati1 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(9) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(10) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(8) var<uniform> x_185 : VGlobals;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu25 : u32;

var<private> u_xlatu2 : vec2<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb2 : bool;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

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
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
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
  u_xlat7 = ((x_232 * vec4<f32>(x_233.x, x_233.x, x_233.x, x_233.x)) + x_236);
  let x_242 : vec4<f32> = u_xlat7;
  let x_244 : vec4<f32> = x_185.unity_MatrixVP[3i];
  gl_Position = (x_242 + x_244);
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_249.y, x_249.z, x_249.x) * vec3<f32>(x_251.z, x_251.x, x_251.y));
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat5;
  let x_259 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_254.z, x_254.x, x_254.y) * vec3<f32>(x_256.y, x_256.z, x_256.x)) + -(x_259));
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
  u_xlat25 = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : f32 = u_xlat25;
  u_xlat25 = (1.0f / x_286);
  let x_288 : vec3<f32> = u_xlat8;
  let x_289 : f32 = u_xlat25;
  u_xlat8 = (x_288 * vec3<f32>(x_289, x_289, x_289));
  let x_294 : vec3<f32> = in_NORMAL0;
  let x_295 : vec3<f32> = u_xlat8;
  u_xlat5.y = dot(x_294, x_295);
  let x_298 : vec4<f32> = u_xlat3;
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat8 = (vec3<f32>(x_298.y, x_298.z, x_298.x) * vec3<f32>(x_300.z, x_300.x, x_300.y));
  let x_303 : vec4<f32> = u_xlat4;
  let x_305 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_303.y, x_303.z, x_303.x) * vec3<f32>(x_305.z, x_305.x, x_305.y)) + -(x_308));
  let x_311 : f32 = u_xlat25;
  let x_313 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_315 : f32 = u_xlat25;
  let x_317 : vec4<f32> = u_xlat2;
  let x_319 : vec3<f32> = (vec3<f32>(x_315, x_315, x_315) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = in_NORMAL0;
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_322, vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_327 : vec3<f32> = in_NORMAL0;
  let x_328 : vec3<f32> = u_xlat8;
  u_xlat5.z = dot(x_327, x_328);
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat8.x = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_338 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_338);
  let x_341 : vec3<f32> = u_xlat8;
  let x_343 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_341.x, x_341.x, x_341.x) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_348 : vec3<f32> = u_xlat8;
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
  let x_386 : f32 = u_xlat2.w;
  u_xlatu25 = (bitcast<u32>(x_386) & 255u);
  let x_390 : u32 = u_xlatu25;
  u_xlat7.x = f32(x_390);
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
  u_xlatu25 = (bitcast<u32>(x_413) >> 24u);
  let x_417 : u32 = u_xlatu25;
  u_xlat7.w = f32(x_417);
  let x_420 : vec2<u32> = u_xlatu2;
  let x_422 : vec2<f32> = vec2<f32>(x_420);
  let x_423 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_423.x, x_422.x, x_422.y, x_423.w);
  let x_425 : vec4<f32> = u_xlat6;
  let x_426 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_425 * x_426);
  let x_429 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_429 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_434 : f32 = u_xlat1.x;
  let x_436 : f32 = x_185.unity_ParticleUVShiftData.y;
  u_xlat25 = (x_434 / x_436);
  let x_438 : f32 = u_xlat25;
  u_xlat25 = floor(x_438);
  let x_440 : f32 = u_xlat25;
  let x_443 : f32 = x_185.unity_ParticleUVShiftData.y;
  let x_446 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_440) * x_443) + x_446);
  let x_450 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_450);
  let x_454 : f32 = u_xlat1.x;
  let x_456 : f32 = x_185.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_454 * x_456);
  let x_460 : f32 = x_185.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_460) + 1.0f);
  let x_464 : f32 = u_xlat25;
  let x_467 : f32 = x_185.unity_ParticleUVShiftData.w;
  let x_470 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_464) * x_467) + x_470);
  let x_475 : vec2<f32> = in_TEXCOORD0;
  let x_477 : vec4<f32> = x_185.unity_ParticleUVShiftData;
  let x_480 : vec4<f32> = u_xlat2;
  let x_482 : vec2<f32> = ((x_475 * vec2<f32>(x_477.z, x_477.w)) + vec2<f32>(x_480.x, x_480.y));
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_483.y, x_483.z, x_482.y);
  let x_489 : f32 = x_185.unity_ParticleUVShiftData.x;
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
  let x_510 : vec4<f32> = x_185.x_MainTex_ST;
  let x_514 : vec4<f32> = x_185.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_506.x, x_506.w) * vec2<f32>(x_510.x, x_510.y)) + vec2<f32>(x_514.z, x_514.w));
  let x_517 : f32 = u_xlat17;
  let x_519 : f32 = x_185.unity_MatrixV[1i].z;
  u_xlat1.x = (x_517 * x_519);
  let x_522 : f32 = u_xlat17;
  let x_525 : vec4<f32> = x_185.unity_MatrixVP[1i];
  let x_527 : vec3<f32> = (vec3<f32>(x_522, x_522, x_522) * vec3<f32>(x_525.x, x_525.y, x_525.w));
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_531 : vec4<f32> = x_185.unity_MatrixVP[0i];
  let x_533 : vec3<f32> = u_xlat9;
  let x_536 : vec4<f32> = u_xlat2;
  let x_538 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.w) * vec3<f32>(x_533.x, x_533.x, x_533.x)) + vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_542 : f32 = x_185.unity_MatrixV[0i].z;
  let x_544 : f32 = u_xlat9.x;
  let x_547 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_542 * x_544) + x_547);
  let x_551 : f32 = x_185.unity_MatrixV[2i].z;
  let x_553 : f32 = u_xlat0.x;
  let x_556 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_551 * x_553) + x_556);
  let x_560 : vec4<f32> = x_185.unity_MatrixVP[2i];
  let x_562 : vec4<f32> = u_xlat0;
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat9 = ((vec3<f32>(x_560.x, x_560.y, x_560.w) * vec3<f32>(x_562.x, x_562.x, x_562.x)) + vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : vec3<f32> = u_xlat9;
  let x_570 : vec4<f32> = x_185.unity_MatrixVP[3i];
  u_xlat9 = (x_568 + vec3<f32>(x_570.x, x_570.y, x_570.w));
  let x_574 : f32 = u_xlat1.x;
  let x_576 : f32 = x_185.unity_MatrixV[3i].z;
  u_xlat0.x = (x_574 + x_576);
  let x_581 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_581);
  let x_585 : f32 = u_xlat9.y;
  let x_587 : f32 = x_185.x_ProjectionParams.x;
  u_xlat0.x = (x_585 * x_587);
  let x_591 : f32 = u_xlat0.x;
  u_xlat2.w = (x_591 * 0.5f);
  let x_595 : vec3<f32> = u_xlat9;
  let x_598 : vec2<f32> = (vec2<f32>(x_595.x, x_595.z) * vec2<f32>(0.5f, 0.5f));
  let x_599 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_598.x, x_599.y, x_598.y, x_599.w);
  let x_602 : f32 = u_xlat9.z;
  vs_TEXCOORD3.w = x_602;
  let x_604 : vec4<f32> = u_xlat2;
  let x_606 : vec4<f32> = u_xlat2;
  let x_608 : vec2<f32> = (vec2<f32>(x_604.z, x_604.z) + vec2<f32>(x_606.x, x_606.w));
  let x_609 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
  let x_611 : vec3<f32> = u_xlat8;
  let x_613 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_611.y, x_611.y, x_611.y, x_611.y) * x_613);
  let x_615 : vec4<f32> = u_xlat4;
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_615 * x_616);
  let x_618 : vec4<f32> = u_xlat3;
  let x_619 : vec4<f32> = u_xlat3;
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_618 * x_619) + x_621);
  let x_623 : vec4<f32> = u_xlat3;
  let x_624 : vec3<f32> = u_xlat8;
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_623 * vec4<f32>(x_624.x, x_624.x, x_624.x, x_624.x)) + x_627);
  let x_629 : vec4<f32> = u_xlat5;
  let x_630 : vec3<f32> = u_xlat8;
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_629 * vec4<f32>(x_630.z, x_630.z, x_630.z, x_630.z)) + x_633);
  let x_635 : vec4<f32> = u_xlat5;
  let x_636 : vec4<f32> = u_xlat5;
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_635 * x_636) + x_638);
  let x_640 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_640, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_644 : vec4<f32> = u_xlat2;
  u_xlat3 = inverseSqrt(x_644);
  let x_646 : vec4<f32> = u_xlat2;
  let x_648 : vec4<f32> = x_185.unity_4LightAtten0;
  u_xlat2 = ((x_646 * x_648) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_651);
  let x_653 : vec4<f32> = u_xlat1;
  let x_654 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_653 * x_654);
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_656, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_659 : vec4<f32> = u_xlat2;
  let x_660 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_659 * x_660);
  let x_662 : vec4<f32> = u_xlat1;
  let x_665 : vec4<f32> = x_185.unity_LightColor[1i];
  let x_667 : vec3<f32> = (vec3<f32>(x_662.y, x_662.y, x_662.y) * vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_671 : vec4<f32> = x_185.unity_LightColor[0i];
  let x_673 : vec4<f32> = u_xlat1;
  let x_676 : vec4<f32> = u_xlat2;
  let x_678 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(x_673.x, x_673.x, x_673.x)) + vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_682 : vec4<f32> = x_185.unity_LightColor[2i];
  let x_684 : vec4<f32> = u_xlat1;
  let x_687 : vec4<f32> = u_xlat2;
  let x_689 : vec3<f32> = ((vec3<f32>(x_682.x, x_682.y, x_682.z) * vec3<f32>(x_684.z, x_684.z, x_684.z)) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_693 : vec4<f32> = x_185.unity_LightColor[3i];
  let x_695 : vec4<f32> = u_xlat1;
  let x_698 : vec4<f32> = u_xlat1;
  let x_700 : vec3<f32> = ((vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(x_695.w, x_695.w, x_695.w)) + vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_704 : f32 = u_xlat8.y;
  let x_706 : f32 = u_xlat8.y;
  u_xlat0.x = (x_704 * x_706);
  let x_710 : f32 = u_xlat8.x;
  let x_712 : f32 = u_xlat8.x;
  let x_715 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_710 * x_712) + -(x_715));
  let x_719 : vec3<f32> = u_xlat8;
  let x_721 : vec3<f32> = u_xlat8;
  u_xlat2 = (vec4<f32>(x_719.y, x_719.z, x_719.z, x_719.x) * vec4<f32>(x_721.x, x_721.y, x_721.z, x_721.z));
  let x_725 : vec4<f32> = x_185.unity_SHBr;
  let x_726 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_725, x_726);
  let x_730 : vec4<f32> = x_185.unity_SHBg;
  let x_731 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_730, x_731);
  let x_735 : vec4<f32> = x_185.unity_SHBb;
  let x_736 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_735, x_736);
  let x_740 : vec4<f32> = x_185.unity_SHC;
  let x_742 : vec4<f32> = u_xlat0;
  let x_745 : vec4<f32> = u_xlat3;
  let x_747 : vec3<f32> = ((vec3<f32>(x_740.x, x_740.y, x_740.z) * vec3<f32>(x_742.x, x_742.x, x_742.x)) + vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_751 : vec4<f32> = u_xlat0;
  let x_753 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(x_753.x, x_753.y, x_753.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_758 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_758);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

