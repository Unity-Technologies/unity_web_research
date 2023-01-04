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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlati1 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(11) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(12) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_185 : VGlobals;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu22 : u32;

var<private> u_xlatu2 : vec2<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb2 : bool;

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
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var x_473 : vec2<f32>;
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
  vs_TEXCOORD1.y = dot(x_174, x_175);
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
  let x_209 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.x = dot(x_209, x_210);
  let x_214 : vec4<f32> = x_185.unity_MatrixVP[0i];
  let x_215 : vec3<f32> = u_xlat8;
  let x_218 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_214 * vec4<f32>(x_215.x, x_215.x, x_215.x, x_215.x)) + x_218);
  let x_221 : f32 = u_xlat2.z;
  u_xlat5.w = x_221;
  let x_223 : vec4<f32> = u_xlat5;
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_223, x_224);
  let x_227 : vec4<f32> = u_xlat5;
  let x_228 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.z = dot(x_227, x_228);
  let x_232 : vec4<f32> = x_185.unity_MatrixVP[2i];
  let x_233 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_232 * vec4<f32>(x_233.x, x_233.x, x_233.x, x_233.x)) + x_236);
  let x_238 : vec4<f32> = u_xlat6;
  let x_240 : vec4<f32> = x_185.unity_MatrixVP[3i];
  u_xlat6 = (x_238 + x_240);
  let x_246 : vec4<f32> = u_xlat6;
  gl_Position = x_246;
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_250.y, x_250.z, x_250.x) * vec3<f32>(x_252.z, x_252.x, x_252.y));
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec4<f32> = u_xlat5;
  let x_260 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_255.z, x_255.x, x_255.y) * vec3<f32>(x_257.y, x_257.z, x_257.x)) + -(x_260));
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
  let x_282 : vec4<f32> = u_xlat4;
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_282.x, x_282.y, x_282.z), vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_287);
  let x_289 : vec3<f32> = u_xlat7;
  let x_290 : f32 = u_xlat22;
  u_xlat7 = (x_289 * vec3<f32>(x_290, x_290, x_290));
  let x_295 : vec3<f32> = in_NORMAL0;
  let x_296 : vec3<f32> = u_xlat7;
  u_xlat5.y = dot(x_295, x_296);
  let x_299 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y));
  let x_304 : vec4<f32> = u_xlat4;
  let x_306 : vec4<f32> = u_xlat3;
  let x_309 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_304.y, x_304.z, x_304.x) * vec3<f32>(x_306.z, x_306.x, x_306.y)) + -(x_309));
  let x_312 : f32 = u_xlat22;
  let x_314 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_312, x_312, x_312) * x_314);
  let x_316 : f32 = u_xlat22;
  let x_318 : vec4<f32> = u_xlat2;
  let x_320 : vec3<f32> = (vec3<f32>(x_316, x_316, x_316) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec3<f32> = in_NORMAL0;
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_323, vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_328 : vec3<f32> = in_NORMAL0;
  let x_329 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_328, x_329);
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_339 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_339);
  let x_342 : vec3<f32> = u_xlat7;
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_342.x, x_342.x, x_342.x) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_348 : vec3<f32> = u_xlat7;
  vs_TEXCOORD0 = x_348;
  let x_350 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_350 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_356 : f32 = x_185.unity_ParticleUseMeshColors;
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_356, x_356, x_356, x_356) * x_358) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_365 : f32 = u_xlat2.w;
  u_xlatu22 = (bitcast<u32>(x_365) & 255u);
  let x_369 : u32 = u_xlatu22;
  u_xlat4.x = f32(x_369);
  let x_376 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_376);
  param_1 = 8i;
  param_2 = 8i;
  let x_381 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_383 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_383);
  param_4 = 16i;
  param_5 = 8i;
  let x_389 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu2 = vec2<u32>(x_381, x_389);
  let x_392 : f32 = u_xlat2.w;
  u_xlatu22 = (bitcast<u32>(x_392) >> 24u);
  let x_396 : u32 = u_xlatu22;
  u_xlat4.w = f32(x_396);
  let x_399 : vec2<u32> = u_xlatu2;
  let x_401 : vec2<f32> = vec2<f32>(x_399);
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_401.x, x_401.y, x_402.w);
  let x_404 : vec4<f32> = u_xlat3;
  let x_405 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_404 * x_405);
  let x_408 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_408 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_413 : f32 = u_xlat1.x;
  let x_415 : f32 = x_185.unity_ParticleUVShiftData.y;
  u_xlat22 = (x_413 / x_415);
  let x_417 : f32 = u_xlat22;
  u_xlat22 = floor(x_417);
  let x_419 : f32 = u_xlat22;
  let x_422 : f32 = x_185.unity_ParticleUVShiftData.y;
  let x_425 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_419) * x_422) + x_425);
  let x_429 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_429);
  let x_433 : f32 = u_xlat1.x;
  let x_435 : f32 = x_185.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_433 * x_435);
  let x_439 : f32 = x_185.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_439) + 1.0f);
  let x_443 : f32 = u_xlat22;
  let x_446 : f32 = x_185.unity_ParticleUVShiftData.w;
  let x_449 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_443) * x_446) + x_449);
  let x_454 : vec2<f32> = in_TEXCOORD0;
  let x_456 : vec4<f32> = x_185.unity_ParticleUVShiftData;
  let x_459 : vec4<f32> = u_xlat2;
  let x_461 : vec2<f32> = ((x_454 * vec2<f32>(x_456.z, x_456.w)) + vec2<f32>(x_459.x, x_459.y));
  let x_462 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_461.x, x_462.y, x_462.z, x_461.y);
  let x_468 : f32 = x_185.unity_ParticleUVShiftData.x;
  u_xlatb2 = !((x_468 == 0.0f));
  let x_471 : bool = u_xlatb2;
  if (x_471) {
    let x_476 : vec4<f32> = u_xlat1;
    x_473 = vec2<f32>(x_476.x, x_476.w);
  } else {
    let x_479 : vec2<f32> = in_TEXCOORD0;
    x_473 = x_479;
  }
  let x_480 : vec2<f32> = x_473;
  let x_481 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_480.x, x_481.y, x_481.z, x_480.y);
  let x_485 : vec4<f32> = u_xlat1;
  let x_488 : vec4<f32> = x_185.x_MainTex_ST;
  let x_492 : vec4<f32> = x_185.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_485.x, x_485.w) * vec2<f32>(x_488.x, x_488.y)) + vec2<f32>(x_492.z, x_492.w));
  let x_495 : f32 = u_xlat15;
  let x_497 : f32 = x_185.unity_MatrixV[1i].z;
  u_xlat1.x = (x_495 * x_497);
  let x_500 : f32 = u_xlat15;
  let x_503 : vec4<f32> = x_185.unity_MatrixVP[1i];
  let x_505 : vec3<f32> = (vec3<f32>(x_500, x_500, x_500) * vec3<f32>(x_503.x, x_503.y, x_503.w));
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_509 : vec4<f32> = x_185.unity_MatrixVP[0i];
  let x_511 : vec3<f32> = u_xlat8;
  let x_514 : vec4<f32> = u_xlat2;
  let x_516 : vec3<f32> = ((vec3<f32>(x_509.x, x_509.y, x_509.w) * vec3<f32>(x_511.x, x_511.x, x_511.x)) + vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_520 : f32 = x_185.unity_MatrixV[0i].z;
  let x_522 : f32 = u_xlat8.x;
  let x_525 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_520 * x_522) + x_525);
  let x_529 : f32 = x_185.unity_MatrixV[2i].z;
  let x_531 : f32 = u_xlat0.x;
  let x_534 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_529 * x_531) + x_534);
  let x_538 : vec4<f32> = x_185.unity_MatrixVP[2i];
  let x_540 : vec4<f32> = u_xlat0;
  let x_543 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_538.x, x_538.y, x_538.w) * vec3<f32>(x_540.x, x_540.x, x_540.x)) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec3<f32> = u_xlat8;
  let x_548 : vec4<f32> = x_185.unity_MatrixVP[3i];
  u_xlat8 = (x_546 + vec3<f32>(x_548.x, x_548.y, x_548.w));
  let x_552 : f32 = u_xlat1.x;
  let x_554 : f32 = x_185.unity_MatrixV[3i].z;
  u_xlat0.x = (x_552 + x_554);
  let x_559 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_559);
  let x_563 : f32 = u_xlat8.z;
  vs_TEXCOORD3.w = x_563;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_569 : f32 = x_185.x_ProjectionParams.x;
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
  let x_622 : vec4<f32> = x_185.unity_SHBr;
  let x_623 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_622, x_623);
  let x_627 : vec4<f32> = x_185.unity_SHBg;
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_627, x_628);
  let x_632 : vec4<f32> = x_185.unity_SHBb;
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_632, x_633);
  let x_638 : vec4<f32> = x_185.unity_SHC;
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
  let x_658 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_658);
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

