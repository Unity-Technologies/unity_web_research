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

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(8) var<uniform> x_185 : VGlobals;

var<private> u_xlat21 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu21 : u32;

var<private> u_xlatu8 : vec2<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb21 : bool;

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
  var x_477 : vec2<f32>;
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
  let x_242 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = x_185.unity_MatrixVP[3i];
  gl_Position = (x_242 + x_244);
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = u_xlat5;
  let x_252 : vec3<f32> = (vec3<f32>(x_248.y, x_248.z, x_248.x) * vec3<f32>(x_250.z, x_250.x, x_250.y));
  let x_253 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec4<f32> = u_xlat5;
  let x_260 : vec4<f32> = u_xlat0;
  let x_263 : vec3<f32> = ((vec3<f32>(x_255.z, x_255.x, x_255.y) * vec3<f32>(x_257.y, x_257.z, x_257.x)) + -(vec3<f32>(x_260.x, x_260.y, x_260.z)));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat3;
  let x_268 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_266.z, x_266.x, x_266.y) * vec3<f32>(x_268.y, x_268.z, x_268.x));
  let x_271 : vec4<f32> = u_xlat3;
  let x_273 : vec4<f32> = u_xlat5;
  let x_276 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_271.y, x_271.z, x_271.x) * vec3<f32>(x_273.z, x_273.x, x_273.y)) + -(x_276));
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec3<f32> = u_xlat8;
  u_xlat21 = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), x_282);
  let x_284 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_284);
  let x_286 : f32 = u_xlat21;
  let x_288 : vec4<f32> = u_xlat0;
  let x_290 : vec3<f32> = (vec3<f32>(x_286, x_286, x_286) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_295 : vec3<f32> = in_NORMAL0;
  let x_296 : vec4<f32> = u_xlat0;
  u_xlat0.y = dot(x_295, vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_300 : vec4<f32> = u_xlat3;
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.y, x_300.z, x_300.x) * vec3<f32>(x_302.z, x_302.x, x_302.y));
  let x_305 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = u_xlat3;
  let x_312 : vec4<f32> = u_xlat2;
  let x_315 : vec3<f32> = ((vec3<f32>(x_307.y, x_307.z, x_307.x) * vec3<f32>(x_309.z, x_309.x, x_309.y)) + -(vec3<f32>(x_312.x, x_312.y, x_312.z)));
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : f32 = u_xlat21;
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = (vec3<f32>(x_318, x_318, x_318) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : f32 = u_xlat21;
  let x_327 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_325, x_325, x_325) * x_327);
  let x_329 : vec3<f32> = in_NORMAL0;
  let x_330 : vec3<f32> = u_xlat8;
  u_xlat0.x = dot(x_329, x_330);
  let x_333 : vec3<f32> = in_NORMAL0;
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(x_333, vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_338 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_338.x, x_338.y, x_338.z), vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_343);
  let x_345 : f32 = u_xlat21;
  let x_347 : vec4<f32> = u_xlat0;
  let x_349 : vec3<f32> = (vec3<f32>(x_345, x_345, x_345) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_353.x, x_353.y, x_353.z);
  let x_356 : vec4<f32> = in_COLOR0;
  u_xlat3 = (x_356 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_362 : f32 = x_185.unity_ParticleUseMeshColors;
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_362, x_362, x_362, x_362) * x_364) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_371 : f32 = u_xlat2.w;
  u_xlatu21 = (bitcast<u32>(x_371) & 255u);
  let x_375 : u32 = u_xlatu21;
  u_xlat4.x = f32(x_375);
  let x_382 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_382);
  param_1 = 8i;
  param_2 = 8i;
  let x_387 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_389 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_389);
  param_4 = 16i;
  param_5 = 8i;
  let x_395 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu8 = vec2<u32>(x_387, x_395);
  let x_398 : f32 = u_xlat2.w;
  u_xlatu21 = (bitcast<u32>(x_398) >> 24u);
  let x_402 : u32 = u_xlatu21;
  u_xlat4.w = f32(x_402);
  let x_405 : vec2<u32> = u_xlatu8;
  let x_407 : vec2<f32> = vec2<f32>(x_405);
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_407.x, x_407.y, x_408.w);
  let x_410 : vec4<f32> = u_xlat3;
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_410 * x_411);
  let x_414 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_414 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_419 : f32 = u_xlat1.x;
  let x_421 : f32 = x_185.unity_ParticleUVShiftData.y;
  u_xlat21 = (x_419 / x_421);
  let x_423 : f32 = u_xlat21;
  u_xlat21 = floor(x_423);
  let x_425 : f32 = u_xlat21;
  let x_428 : f32 = x_185.unity_ParticleUVShiftData.y;
  let x_431 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_425) * x_428) + x_431);
  let x_435 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_435);
  let x_439 : f32 = u_xlat1.x;
  let x_441 : f32 = x_185.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_439 * x_441);
  let x_445 : f32 = x_185.unity_ParticleUVShiftData.w;
  u_xlat15 = (-(x_445) + 1.0f);
  let x_448 : f32 = u_xlat21;
  let x_451 : f32 = x_185.unity_ParticleUVShiftData.w;
  let x_453 : f32 = u_xlat15;
  u_xlat1.y = ((-(x_448) * x_451) + x_453);
  let x_458 : vec2<f32> = in_TEXCOORD0;
  let x_460 : vec4<f32> = x_185.unity_ParticleUVShiftData;
  let x_463 : vec4<f32> = u_xlat1;
  let x_465 : vec2<f32> = ((x_458 * vec2<f32>(x_460.z, x_460.w)) + vec2<f32>(x_463.x, x_463.y));
  let x_466 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
  let x_472 : f32 = x_185.unity_ParticleUVShiftData.x;
  u_xlatb21 = !((x_472 == 0.0f));
  let x_475 : bool = u_xlatb21;
  if (x_475) {
    let x_480 : vec4<f32> = u_xlat1;
    x_477 = vec2<f32>(x_480.x, x_480.y);
  } else {
    let x_483 : vec2<f32> = in_TEXCOORD0;
    x_477 = x_483;
  }
  let x_484 : vec2<f32> = x_477;
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
  let x_489 : vec4<f32> = u_xlat1;
  let x_492 : vec4<f32> = x_185.x_MainTex_ST;
  let x_496 : vec4<f32> = x_185.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_489.x, x_489.y) * vec2<f32>(x_492.x, x_492.y)) + vec2<f32>(x_496.z, x_496.w));
  let x_500 : f32 = u_xlat0.y;
  let x_502 : f32 = u_xlat0.y;
  u_xlat21 = (x_500 * x_502);
  let x_505 : f32 = u_xlat0.x;
  let x_507 : f32 = u_xlat0.x;
  let x_509 : f32 = u_xlat21;
  u_xlat21 = ((x_505 * x_507) + -(x_509));
  let x_512 : vec4<f32> = u_xlat0;
  let x_514 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_512.y, x_512.z, x_512.z, x_512.x) * vec4<f32>(x_514.x, x_514.y, x_514.z, x_514.z));
  let x_518 : vec4<f32> = x_185.unity_SHBr;
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_518, x_519);
  let x_523 : vec4<f32> = x_185.unity_SHBg;
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_523, x_524);
  let x_528 : vec4<f32> = x_185.unity_SHBb;
  let x_529 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_528, x_529);
  let x_534 : vec4<f32> = x_185.unity_SHC;
  let x_536 : f32 = u_xlat21;
  let x_539 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = ((vec3<f32>(x_534.x, x_534.y, x_534.z) * vec3<f32>(x_536, x_536, x_536)) + vec3<f32>(x_539.x, x_539.y, x_539.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_545 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_545);
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
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3);
}

