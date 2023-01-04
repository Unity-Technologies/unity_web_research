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
  unity_WorldTransformParams : vec4<f32>,
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

@group(0) @binding(15) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(16) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_185 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat24 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu8 : vec3<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb15 : bool;

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
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
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
  u_xlat8 = vec3<f32>(bitcast<f32>(x_96), bitcast<f32>(x_101), bitcast<f32>(x_106));
  let x_110 : f32 = u_xlat8.y;
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
  u_xlat15 = dot(x_169, x_170);
  let x_174 : vec4<f32> = u_xlat3;
  let x_175 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.w = dot(x_174, x_175);
  let x_180 : f32 = u_xlat15;
  let x_188 : vec4<f32> = x_185.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_180, x_180, x_180, x_180) * x_188);
  let x_191 : f32 = u_xlat2.x;
  u_xlat4.w = x_191;
  let x_194 : f32 = u_xlat4.y;
  u_xlat5.z = x_194;
  let x_197 : f32 = u_xlat5.y;
  u_xlat4.x = x_197;
  let x_200 : f32 = u_xlat8.x;
  u_xlat4.y = x_200;
  let x_203 : f32 = u_xlat8.z;
  u_xlat5.y = x_203;
  let x_205 : vec4<f32> = u_xlat4;
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat8.x = dot(x_205, x_206);
  let x_210 : vec4<f32> = u_xlat4;
  let x_211 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD0.w = dot(x_210, x_211);
  let x_215 : vec4<f32> = x_185.unity_MatrixVP[0i];
  let x_216 : vec3<f32> = u_xlat8;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_215 * vec4<f32>(x_216.x, x_216.x, x_216.x, x_216.x)) + x_219);
  let x_222 : f32 = u_xlat2.z;
  u_xlat5.w = x_222;
  let x_224 : vec4<f32> = u_xlat5;
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_224, x_225);
  let x_229 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD2.w = dot(x_229, x_230);
  let x_234 : vec4<f32> = x_185.unity_MatrixVP[2i];
  let x_235 : vec4<f32> = u_xlat0;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_234 * vec4<f32>(x_235.x, x_235.x, x_235.x, x_235.x)) + x_238);
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = x_185.unity_MatrixVP[3i];
  u_xlat0 = (x_240 + x_242);
  let x_248 : vec4<f32> = u_xlat0;
  gl_Position = x_248;
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_250.y, x_250.z, x_250.x) * vec3<f32>(x_252.z, x_252.x, x_252.y));
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec4<f32> = u_xlat5;
  let x_260 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_255.z, x_255.x, x_255.y) * vec3<f32>(x_257.y, x_257.z, x_257.x)) + -(x_260));
  let x_263 : vec4<f32> = u_xlat3;
  let x_265 : vec4<f32> = u_xlat5;
  let x_267 : vec3<f32> = (vec3<f32>(x_263.z, x_263.x, x_263.y) * vec3<f32>(x_265.y, x_265.z, x_265.x));
  let x_268 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat3;
  let x_272 : vec4<f32> = u_xlat5;
  let x_275 : vec4<f32> = u_xlat2;
  let x_278 : vec3<f32> = ((vec3<f32>(x_270.y, x_270.z, x_270.x) * vec3<f32>(x_272.z, x_272.x, x_272.y)) + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat5;
  let x_284 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_289 : vec4<f32> = u_xlat4;
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_294);
  let x_296 : vec3<f32> = u_xlat8;
  let x_297 : f32 = u_xlat24;
  u_xlat8 = (x_296 * vec3<f32>(x_297, x_297, x_297));
  let x_302 : vec3<f32> = in_NORMAL0;
  let x_303 : vec3<f32> = u_xlat8;
  u_xlat6.y = dot(x_302, x_303);
  let x_306 : vec4<f32> = u_xlat3;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat8 = (vec3<f32>(x_306.y, x_306.z, x_306.x) * vec3<f32>(x_308.z, x_308.x, x_308.y));
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = u_xlat3;
  let x_316 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_311.y, x_311.z, x_311.x) * vec3<f32>(x_313.z, x_313.x, x_313.y)) + -(x_316));
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : f32 = u_xlat24;
  let x_333 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_331, x_331, x_331) * x_333);
  let x_335 : vec4<f32> = u_xlat2;
  let x_337 : f32 = u_xlat24;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337, x_337, x_337));
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec3<f32> = in_NORMAL0;
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_342, vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_347 : vec3<f32> = in_NORMAL0;
  let x_348 : vec3<f32> = u_xlat8;
  u_xlat6.z = dot(x_347, x_348);
  let x_351 : vec4<f32> = u_xlat6;
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat8.x = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_358 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_358);
  let x_361 : vec3<f32> = u_xlat8;
  let x_363 : vec4<f32> = u_xlat6;
  u_xlat3 = (vec4<f32>(x_361.x, x_361.x, x_361.x, x_361.x) * vec4<f32>(x_363.x, x_363.y, x_363.z, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat8.x = dot(vec3<f32>(x_366.x, x_366.y, x_366.z), vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_373 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_373);
  let x_376 : vec3<f32> = u_xlat8;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_376.x, x_376.x, x_376.x) * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec3<f32> = u_xlat8;
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec3<f32> = (x_381 * vec3<f32>(x_382.w, x_382.x, x_382.y));
  let x_385 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec4<f32> = u_xlat3;
  let x_389 : vec3<f32> = u_xlat8;
  let x_392 : vec4<f32> = u_xlat2;
  let x_395 : vec3<f32> = ((vec3<f32>(x_387.y, x_387.w, x_387.x) * vec3<f32>(x_389.y, x_389.z, x_389.x)) + -(vec3<f32>(x_392.x, x_392.y, x_392.z)));
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_400 : f32 = in_TANGENT0.w;
  let x_403 : f32 = x_185.unity_WorldTransformParams.w;
  u_xlat4.x = (x_400 * x_403);
  let x_406 : vec4<f32> = u_xlat2;
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) * vec3<f32>(x_408.x, x_408.x, x_408.x));
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : f32 = u_xlat2.x;
  vs_TEXCOORD0.y = x_414;
  let x_417 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_417;
  let x_420 : f32 = u_xlat8.z;
  vs_TEXCOORD0.x = x_420;
  let x_423 : f32 = u_xlat8.x;
  vs_TEXCOORD1.x = x_423;
  let x_426 : f32 = u_xlat8.y;
  vs_TEXCOORD2.x = x_426;
  let x_429 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_429;
  let x_432 : f32 = u_xlat2.y;
  vs_TEXCOORD1.y = x_432;
  let x_435 : f32 = u_xlat2.z;
  vs_TEXCOORD2.y = x_435;
  let x_438 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_438;
  let x_441 : vec4<f32> = in_COLOR0;
  u_xlat4 = (x_441 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_446 : f32 = x_185.unity_ParticleUseMeshColors;
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_446, x_446, x_446, x_446) * x_448) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_456 : f32 = u_xlat2.w;
  u_xlatu8.x = (bitcast<u32>(x_456) & 255u);
  let x_463 : u32 = u_xlatu8.x;
  u_xlat5.x = f32(x_463);
  let x_467 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_467);
  param_1 = 8i;
  param_2 = 8i;
  let x_472 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_474 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_474);
  param_4 = 16i;
  param_5 = 8i;
  let x_480 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_482 : vec2<u32> = vec2<u32>(x_472, x_480);
  let x_483 : vec3<u32> = u_xlatu8;
  u_xlatu8 = vec3<u32>(x_482.x, x_482.y, x_483.z);
  let x_486 : f32 = u_xlat2.w;
  u_xlatu8.z = (bitcast<u32>(x_486) >> 24u);
  let x_491 : vec3<u32> = u_xlatu8;
  let x_492 : vec3<f32> = vec3<f32>(x_491);
  let x_493 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_493.x, x_492.x, x_492.y, x_492.z);
  let x_495 : vec4<f32> = u_xlat4;
  let x_496 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_495 * x_496);
  let x_499 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_499 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_504 : f32 = u_xlat1.x;
  let x_506 : f32 = x_185.unity_ParticleUVShiftData.y;
  u_xlat8.x = (x_504 / x_506);
  let x_510 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_510);
  let x_514 : f32 = u_xlat8.x;
  let x_517 : f32 = x_185.unity_ParticleUVShiftData.y;
  let x_520 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_514) * x_517) + x_520);
  let x_524 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_524);
  let x_528 : f32 = u_xlat1.x;
  let x_530 : f32 = x_185.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_528 * x_530);
  let x_534 : f32 = x_185.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_534) + 1.0f);
  let x_539 : f32 = u_xlat8.x;
  let x_542 : f32 = x_185.unity_ParticleUVShiftData.w;
  let x_545 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_539) * x_542) + x_545);
  let x_551 : vec2<f32> = in_TEXCOORD0;
  let x_553 : vec4<f32> = x_185.unity_ParticleUVShiftData;
  let x_556 : vec4<f32> = u_xlat2;
  let x_558 : vec2<f32> = ((x_551 * vec2<f32>(x_553.z, x_553.w)) + vec2<f32>(x_556.x, x_556.y));
  let x_559 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
  let x_565 : f32 = x_185.unity_ParticleUVShiftData.x;
  u_xlatb15 = !((x_565 == 0.0f));
  let x_568 : bool = u_xlatb15;
  if (x_568) {
    let x_573 : vec4<f32> = u_xlat1;
    x_570 = vec2<f32>(x_573.x, x_573.y);
  } else {
    let x_576 : vec2<f32> = in_TEXCOORD0;
    x_570 = x_576;
  }
  let x_577 : vec2<f32> = x_570;
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
  let x_582 : vec4<f32> = u_xlat1;
  let x_585 : vec4<f32> = x_185.x_MainTex_ST;
  let x_589 : vec4<f32> = x_185.x_MainTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_582.x, x_582.y) * vec2<f32>(x_585.x, x_585.y)) + vec2<f32>(x_589.z, x_589.w));
  let x_593 : f32 = u_xlat3.y;
  let x_595 : f32 = u_xlat3.y;
  u_xlat1.x = (x_593 * x_595);
  let x_599 : f32 = u_xlat3.x;
  let x_601 : f32 = u_xlat3.x;
  let x_604 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_599 * x_601) + -(x_604));
  let x_608 : vec4<f32> = u_xlat3;
  let x_610 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_608.y, x_608.w, x_608.z, x_608.x) * x_610);
  let x_613 : vec4<f32> = x_185.unity_SHBr;
  let x_614 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_613, x_614);
  let x_618 : vec4<f32> = x_185.unity_SHBg;
  let x_619 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_618, x_619);
  let x_623 : vec4<f32> = x_185.unity_SHBb;
  let x_624 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_623, x_624);
  let x_630 : vec4<f32> = x_185.unity_SHC;
  let x_632 : vec4<f32> = u_xlat1;
  let x_635 : vec4<f32> = u_xlat3;
  vs_TEXCOORD4 = ((vec3<f32>(x_630.x, x_630.y, x_630.z) * vec3<f32>(x_632.x, x_632.x, x_632.x)) + vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : f32 = u_xlat0.y;
  let x_641 : f32 = x_185.x_ProjectionParams.x;
  u_xlat0.y = (x_639 * x_641);
  let x_644 : vec4<f32> = u_xlat0;
  let x_648 : vec3<f32> = (vec3<f32>(x_644.x, x_644.w, x_644.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_649 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_648.x, x_649.y, x_648.y, x_648.z);
  let x_652 : vec4<f32> = u_xlat0;
  let x_653 : vec2<f32> = vec2<f32>(x_652.z, x_652.w);
  let x_654 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_654.x, x_654.y, x_653.x, x_653.y);
  let x_656 : vec4<f32> = u_xlat1;
  let x_658 : vec4<f32> = u_xlat1;
  let x_660 : vec2<f32> = (vec2<f32>(x_656.z, x_656.z) + vec2<f32>(x_658.x, x_658.w));
  let x_661 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
  let x_664 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_664);
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
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
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
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, gl_Position, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6);
}

