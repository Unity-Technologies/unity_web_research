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

var<private> u_xlat24 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu24 : u32;

var<private> u_xlatu9 : vec2<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb24 : bool;

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
  var x_499 : vec2<f32>;
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
  u_xlat9 = (vec3<f32>(x_266.z, x_266.x, x_266.y) * vec3<f32>(x_268.y, x_268.z, x_268.x));
  let x_271 : vec4<f32> = u_xlat3;
  let x_273 : vec4<f32> = u_xlat5;
  let x_276 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_271.y, x_271.z, x_271.x) * vec3<f32>(x_273.z, x_273.x, x_273.y)) + -(x_276));
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec3<f32> = u_xlat9;
  u_xlat24 = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), x_282);
  let x_284 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_284);
  let x_286 : f32 = u_xlat24;
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
  let x_318 : f32 = u_xlat24;
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = (vec3<f32>(x_318, x_318, x_318) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : f32 = u_xlat24;
  let x_327 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_325, x_325, x_325) * x_327);
  let x_329 : vec3<f32> = in_NORMAL0;
  let x_330 : vec3<f32> = u_xlat9;
  u_xlat0.x = dot(x_329, x_330);
  let x_333 : vec3<f32> = in_NORMAL0;
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(x_333, vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_338 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = u_xlat0;
  u_xlat24 = dot(vec3<f32>(x_338.x, x_338.y, x_338.z), vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_343);
  let x_345 : f32 = u_xlat24;
  let x_347 : vec4<f32> = u_xlat0;
  let x_349 : vec3<f32> = (vec3<f32>(x_345, x_345, x_345) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_354 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_354.x, x_354.y, x_354.z);
  let x_357 : vec4<f32> = u_xlat6;
  vs_TEXCOORD1 = vec3<f32>(x_357.x, x_357.y, x_357.z);
  let x_359 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = x_185.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_359.x, x_359.x, x_359.x, x_359.x)) + x_363);
  let x_365 : vec4<f32> = u_xlat6;
  let x_369 : vec4<f32> = x_185.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_365.y, x_365.y, x_365.y, x_365.y)) + x_369);
  let x_371 : vec4<f32> = u_xlat6;
  let x_375 : vec4<f32> = x_185.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_371.z, x_371.z, x_371.z, x_371.z)) + x_375);
  let x_378 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_378 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_384 : f32 = x_185.unity_ParticleUseMeshColors;
  let x_386 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_384, x_384, x_384, x_384) * x_386) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_393 : f32 = u_xlat2.w;
  u_xlatu24 = (bitcast<u32>(x_393) & 255u);
  let x_397 : u32 = u_xlatu24;
  u_xlat7.x = f32(x_397);
  let x_404 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_404);
  param_1 = 8i;
  param_2 = 8i;
  let x_409 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_411 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_411);
  param_4 = 16i;
  param_5 = 8i;
  let x_417 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu9 = vec2<u32>(x_409, x_417);
  let x_420 : f32 = u_xlat2.w;
  u_xlatu24 = (bitcast<u32>(x_420) >> 24u);
  let x_424 : u32 = u_xlatu24;
  u_xlat7.w = f32(x_424);
  let x_427 : vec2<u32> = u_xlatu9;
  let x_429 : vec2<f32> = vec2<f32>(x_427);
  let x_430 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_430.x, x_429.x, x_429.y, x_430.w);
  let x_432 : vec4<f32> = u_xlat6;
  let x_433 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_432 * x_433);
  let x_436 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_436 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_441 : f32 = u_xlat1.x;
  let x_443 : f32 = x_185.unity_ParticleUVShiftData.y;
  u_xlat24 = (x_441 / x_443);
  let x_445 : f32 = u_xlat24;
  u_xlat24 = floor(x_445);
  let x_447 : f32 = u_xlat24;
  let x_450 : f32 = x_185.unity_ParticleUVShiftData.y;
  let x_453 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_447) * x_450) + x_453);
  let x_457 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_457);
  let x_461 : f32 = u_xlat1.x;
  let x_463 : f32 = x_185.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_461 * x_463);
  let x_467 : f32 = x_185.unity_ParticleUVShiftData.w;
  u_xlat17 = (-(x_467) + 1.0f);
  let x_470 : f32 = u_xlat24;
  let x_473 : f32 = x_185.unity_ParticleUVShiftData.w;
  let x_475 : f32 = u_xlat17;
  u_xlat1.y = ((-(x_470) * x_473) + x_475);
  let x_480 : vec2<f32> = in_TEXCOORD0;
  let x_482 : vec4<f32> = x_185.unity_ParticleUVShiftData;
  let x_485 : vec4<f32> = u_xlat1;
  let x_487 : vec2<f32> = ((x_480 * vec2<f32>(x_482.z, x_482.w)) + vec2<f32>(x_485.x, x_485.y));
  let x_488 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
  let x_494 : f32 = x_185.unity_ParticleUVShiftData.x;
  u_xlatb24 = !((x_494 == 0.0f));
  let x_497 : bool = u_xlatb24;
  if (x_497) {
    let x_502 : vec4<f32> = u_xlat1;
    x_499 = vec2<f32>(x_502.x, x_502.y);
  } else {
    let x_505 : vec2<f32> = in_TEXCOORD0;
    x_499 = x_505;
  }
  let x_506 : vec2<f32> = x_499;
  let x_507 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_511 : vec4<f32> = u_xlat1;
  let x_514 : vec4<f32> = x_185.x_MainTex_ST;
  let x_518 : vec4<f32> = x_185.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_511.x, x_511.y) * vec2<f32>(x_514.x, x_514.y)) + vec2<f32>(x_518.z, x_518.w));
  let x_521 : vec4<f32> = u_xlat0;
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_521.y, x_521.y, x_521.y, x_521.y) * x_523);
  let x_525 : vec4<f32> = u_xlat4;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_525 * x_526);
  let x_528 : vec4<f32> = u_xlat3;
  let x_529 : vec4<f32> = u_xlat3;
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_528 * x_529) + x_531);
  let x_533 : vec4<f32> = u_xlat3;
  let x_534 : vec4<f32> = u_xlat0;
  let x_537 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_533 * vec4<f32>(x_534.x, x_534.x, x_534.x, x_534.x)) + x_537);
  let x_539 : vec4<f32> = u_xlat5;
  let x_540 : vec4<f32> = u_xlat0;
  let x_543 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_539 * vec4<f32>(x_540.z, x_540.z, x_540.z, x_540.z)) + x_543);
  let x_545 : vec4<f32> = u_xlat5;
  let x_546 : vec4<f32> = u_xlat5;
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_545 * x_546) + x_548);
  let x_550 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_550, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_554 : vec4<f32> = u_xlat2;
  u_xlat3 = inverseSqrt(x_554);
  let x_556 : vec4<f32> = u_xlat2;
  let x_558 : vec4<f32> = x_185.unity_4LightAtten0;
  u_xlat2 = ((x_556 * x_558) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_561 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_561);
  let x_563 : vec4<f32> = u_xlat1;
  let x_564 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_563 * x_564);
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_566, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_569 : vec4<f32> = u_xlat2;
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_569 * x_570);
  let x_572 : vec4<f32> = u_xlat1;
  let x_575 : vec4<f32> = x_185.unity_LightColor[1i];
  let x_577 : vec3<f32> = (vec3<f32>(x_572.y, x_572.y, x_572.y) * vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_581 : vec4<f32> = x_185.unity_LightColor[0i];
  let x_583 : vec4<f32> = u_xlat1;
  let x_586 : vec4<f32> = u_xlat2;
  let x_588 : vec3<f32> = ((vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(x_583.x, x_583.x, x_583.x)) + vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_592 : vec4<f32> = x_185.unity_LightColor[2i];
  let x_594 : vec4<f32> = u_xlat1;
  let x_597 : vec4<f32> = u_xlat2;
  let x_599 : vec3<f32> = ((vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(x_594.z, x_594.z, x_594.z)) + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : vec4<f32> = x_185.unity_LightColor[3i];
  let x_605 : vec4<f32> = u_xlat1;
  let x_608 : vec4<f32> = u_xlat1;
  let x_610 : vec3<f32> = ((vec3<f32>(x_603.x, x_603.y, x_603.z) * vec3<f32>(x_605.w, x_605.w, x_605.w)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = u_xlat0.y;
  let x_616 : f32 = u_xlat0.y;
  u_xlat24 = (x_614 * x_616);
  let x_619 : f32 = u_xlat0.x;
  let x_621 : f32 = u_xlat0.x;
  let x_623 : f32 = u_xlat24;
  u_xlat24 = ((x_619 * x_621) + -(x_623));
  let x_626 : vec4<f32> = u_xlat0;
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_626.y, x_626.z, x_626.z, x_626.x) * vec4<f32>(x_628.x, x_628.y, x_628.z, x_628.z));
  let x_632 : vec4<f32> = x_185.unity_SHBr;
  let x_633 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(x_632, x_633);
  let x_637 : vec4<f32> = x_185.unity_SHBg;
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(x_637, x_638);
  let x_642 : vec4<f32> = x_185.unity_SHBb;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(x_642, x_643);
  let x_647 : vec4<f32> = x_185.unity_SHC;
  let x_649 : f32 = u_xlat24;
  let x_652 : vec4<f32> = u_xlat0;
  let x_654 : vec3<f32> = ((vec3<f32>(x_647.x, x_647.y, x_647.z) * vec3<f32>(x_649, x_649, x_649)) + vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_658 : vec4<f32> = u_xlat0;
  let x_660 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_658.x, x_658.y, x_658.z) + vec3<f32>(x_660.x, x_660.y, x_660.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_665 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_665);
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
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3);
}

