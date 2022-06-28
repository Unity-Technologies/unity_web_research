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

var<private> u_xlat24 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

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
  var x_479 : vec2<f32>;
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
  u_xlat0 = ((x_232 * vec4<f32>(x_233.x, x_233.x, x_233.x, x_233.x)) + x_236);
  let x_238 : vec4<f32> = u_xlat0;
  let x_240 : vec4<f32> = x_185.unity_MatrixVP[3i];
  u_xlat0 = (x_238 + x_240);
  let x_246 : vec4<f32> = u_xlat0;
  gl_Position = x_246;
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
  u_xlat24 = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_286);
  let x_288 : vec3<f32> = u_xlat8;
  let x_289 : f32 = u_xlat24;
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
  let x_311 : f32 = u_xlat24;
  let x_313 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_315 : vec4<f32> = u_xlat2;
  let x_317 : f32 = u_xlat24;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317, x_317, x_317));
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
  let x_347 : vec3<f32> = u_xlat8;
  vs_TEXCOORD0 = x_347;
  let x_349 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_349 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_355 : f32 = x_185.unity_ParticleUseMeshColors;
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_355, x_355, x_355, x_355) * x_357) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_365 : f32 = u_xlat2.w;
  u_xlatu2.x = (bitcast<u32>(x_365) & 255u);
  let x_372 : u32 = u_xlatu2.x;
  u_xlat4.x = f32(x_372);
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
  let x_391 : vec2<u32> = vec2<u32>(x_381, x_389);
  let x_392 : vec3<u32> = u_xlatu2;
  u_xlatu2 = vec3<u32>(x_391.x, x_391.y, x_392.z);
  let x_395 : f32 = u_xlat2.w;
  u_xlatu2.z = (bitcast<u32>(x_395) >> 24u);
  let x_400 : vec3<u32> = u_xlatu2;
  let x_401 : vec3<f32> = vec3<f32>(x_400);
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_401.x, x_401.y, x_401.z);
  let x_404 : vec4<f32> = u_xlat3;
  let x_405 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_404 * x_405);
  let x_408 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_408 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_413 : f32 = u_xlat1.x;
  let x_415 : f32 = x_185.unity_ParticleUVShiftData.y;
  u_xlat2.x = (x_413 / x_415);
  let x_419 : f32 = u_xlat2.x;
  u_xlat2.x = floor(x_419);
  let x_423 : f32 = u_xlat2.x;
  let x_426 : f32 = x_185.unity_ParticleUVShiftData.y;
  let x_429 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_423) * x_426) + x_429);
  let x_433 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_433);
  let x_437 : f32 = u_xlat1.x;
  let x_439 : f32 = x_185.unity_ParticleUVShiftData.z;
  u_xlat3.x = (x_437 * x_439);
  let x_443 : f32 = x_185.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_443) + 1.0f);
  let x_448 : f32 = u_xlat2.x;
  let x_451 : f32 = x_185.unity_ParticleUVShiftData.w;
  let x_454 : f32 = u_xlat1.x;
  u_xlat3.y = ((-(x_448) * x_451) + x_454);
  let x_460 : vec2<f32> = in_TEXCOORD0;
  let x_462 : vec4<f32> = x_185.unity_ParticleUVShiftData;
  let x_465 : vec4<f32> = u_xlat3;
  let x_467 : vec2<f32> = ((x_460 * vec2<f32>(x_462.z, x_462.w)) + vec2<f32>(x_465.x, x_465.y));
  let x_468 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
  let x_474 : f32 = x_185.unity_ParticleUVShiftData.x;
  u_xlatb1 = !((x_474 == 0.0f));
  let x_477 : bool = u_xlatb1;
  if (x_477) {
    let x_482 : vec4<f32> = u_xlat2;
    x_479 = vec2<f32>(x_482.x, x_482.y);
  } else {
    let x_485 : vec2<f32> = in_TEXCOORD0;
    x_479 = x_485;
  }
  let x_486 : vec2<f32> = x_479;
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
  let x_491 : vec4<f32> = u_xlat2;
  let x_494 : vec4<f32> = x_185.x_MainTex_ST;
  let x_498 : vec4<f32> = x_185.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_491.x, x_491.y) * vec2<f32>(x_494.x, x_494.y)) + vec2<f32>(x_498.z, x_498.w));
  let x_502 : f32 = u_xlat8.y;
  let x_504 : f32 = u_xlat8.y;
  u_xlat1.x = (x_502 * x_504);
  let x_508 : f32 = u_xlat8.x;
  let x_510 : f32 = u_xlat8.x;
  let x_513 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_508 * x_510) + -(x_513));
  let x_517 : vec3<f32> = u_xlat8;
  let x_519 : vec3<f32> = u_xlat8;
  u_xlat2 = (vec4<f32>(x_517.y, x_517.z, x_517.z, x_517.x) * vec4<f32>(x_519.x, x_519.y, x_519.z, x_519.z));
  let x_523 : vec4<f32> = x_185.unity_SHBr;
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_523, x_524);
  let x_528 : vec4<f32> = x_185.unity_SHBg;
  let x_529 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_528, x_529);
  let x_533 : vec4<f32> = x_185.unity_SHBb;
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_533, x_534);
  let x_539 : vec4<f32> = x_185.unity_SHC;
  let x_541 : vec4<f32> = u_xlat1;
  let x_544 : vec4<f32> = u_xlat3;
  vs_TEXCOORD3 = ((vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_541.x, x_541.x, x_541.x)) + vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_548 : f32 = u_xlat0.y;
  let x_550 : f32 = x_185.x_ProjectionParams.x;
  u_xlat0.y = (x_548 * x_550);
  let x_553 : vec4<f32> = u_xlat0;
  let x_557 : vec3<f32> = (vec3<f32>(x_553.x, x_553.w, x_553.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_558 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_557.x, x_558.y, x_557.y, x_557.z);
  let x_561 : vec4<f32> = u_xlat0;
  let x_562 : vec2<f32> = vec2<f32>(x_561.z, x_561.w);
  let x_563 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_563.x, x_563.y, x_562.x, x_562.y);
  let x_565 : vec4<f32> = u_xlat1;
  let x_567 : vec4<f32> = u_xlat1;
  let x_569 : vec2<f32> = (vec2<f32>(x_565.z, x_565.z) + vec2<f32>(x_567.x, x_567.w));
  let x_570 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
  let x_573 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_573);
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
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5);
}

