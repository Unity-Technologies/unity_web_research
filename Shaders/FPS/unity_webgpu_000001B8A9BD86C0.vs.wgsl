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

@group(0) @binding(6) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(7) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var<uniform> x_185 : VGlobals;

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

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

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
  var x_472 : vec2<f32>;
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
  let x_242 : vec4<f32> = u_xlat6;
  let x_244 : vec4<f32> = x_185.unity_MatrixVP[3i];
  gl_Position = (x_242 + x_244);
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
  let x_355 : f32 = x_185.unity_ParticleUseMeshColors;
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_355, x_355, x_355, x_355) * x_357) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_364 : f32 = u_xlat2.w;
  u_xlatu22 = (bitcast<u32>(x_364) & 255u);
  let x_368 : u32 = u_xlatu22;
  u_xlat4.x = f32(x_368);
  let x_375 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_375);
  param_1 = 8i;
  param_2 = 8i;
  let x_380 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_382 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_382);
  param_4 = 16i;
  param_5 = 8i;
  let x_388 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu2 = vec2<u32>(x_380, x_388);
  let x_391 : f32 = u_xlat2.w;
  u_xlatu22 = (bitcast<u32>(x_391) >> 24u);
  let x_395 : u32 = u_xlatu22;
  u_xlat4.w = f32(x_395);
  let x_398 : vec2<u32> = u_xlatu2;
  let x_400 : vec2<f32> = vec2<f32>(x_398);
  let x_401 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_401.x, x_400.x, x_400.y, x_401.w);
  let x_403 : vec4<f32> = u_xlat3;
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_403 * x_404);
  let x_407 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_407 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_412 : f32 = u_xlat1.x;
  let x_414 : f32 = x_185.unity_ParticleUVShiftData.y;
  u_xlat22 = (x_412 / x_414);
  let x_416 : f32 = u_xlat22;
  u_xlat22 = floor(x_416);
  let x_418 : f32 = u_xlat22;
  let x_421 : f32 = x_185.unity_ParticleUVShiftData.y;
  let x_424 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_418) * x_421) + x_424);
  let x_428 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_428);
  let x_432 : f32 = u_xlat1.x;
  let x_434 : f32 = x_185.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_432 * x_434);
  let x_438 : f32 = x_185.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_438) + 1.0f);
  let x_442 : f32 = u_xlat22;
  let x_445 : f32 = x_185.unity_ParticleUVShiftData.w;
  let x_448 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_442) * x_445) + x_448);
  let x_453 : vec2<f32> = in_TEXCOORD0;
  let x_455 : vec4<f32> = x_185.unity_ParticleUVShiftData;
  let x_458 : vec4<f32> = u_xlat2;
  let x_460 : vec2<f32> = ((x_453 * vec2<f32>(x_455.z, x_455.w)) + vec2<f32>(x_458.x, x_458.y));
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_461.y, x_461.z, x_460.y);
  let x_467 : f32 = x_185.unity_ParticleUVShiftData.x;
  u_xlatb2 = !((x_467 == 0.0f));
  let x_470 : bool = u_xlatb2;
  if (x_470) {
    let x_475 : vec4<f32> = u_xlat1;
    x_472 = vec2<f32>(x_475.x, x_475.w);
  } else {
    let x_478 : vec2<f32> = in_TEXCOORD0;
    x_472 = x_478;
  }
  let x_479 : vec2<f32> = x_472;
  let x_480 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_479.x, x_480.y, x_480.z, x_479.y);
  let x_484 : vec4<f32> = u_xlat1;
  let x_487 : vec4<f32> = x_185.x_MainTex_ST;
  let x_491 : vec4<f32> = x_185.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_484.x, x_484.w) * vec2<f32>(x_487.x, x_487.y)) + vec2<f32>(x_491.z, x_491.w));
  let x_494 : f32 = u_xlat15;
  let x_496 : f32 = x_185.unity_MatrixV[1i].z;
  u_xlat1.x = (x_494 * x_496);
  let x_499 : f32 = u_xlat15;
  let x_502 : vec4<f32> = x_185.unity_MatrixVP[1i];
  let x_504 : vec3<f32> = (vec3<f32>(x_499, x_499, x_499) * vec3<f32>(x_502.x, x_502.y, x_502.w));
  let x_505 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_508 : vec4<f32> = x_185.unity_MatrixVP[0i];
  let x_510 : vec3<f32> = u_xlat8;
  let x_513 : vec4<f32> = u_xlat2;
  let x_515 : vec3<f32> = ((vec3<f32>(x_508.x, x_508.y, x_508.w) * vec3<f32>(x_510.x, x_510.x, x_510.x)) + vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_519 : f32 = x_185.unity_MatrixV[0i].z;
  let x_521 : f32 = u_xlat8.x;
  let x_524 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_519 * x_521) + x_524);
  let x_528 : f32 = x_185.unity_MatrixV[2i].z;
  let x_530 : f32 = u_xlat0.x;
  let x_533 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_528 * x_530) + x_533);
  let x_537 : vec4<f32> = x_185.unity_MatrixVP[2i];
  let x_539 : vec4<f32> = u_xlat0;
  let x_542 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_537.x, x_537.y, x_537.w) * vec3<f32>(x_539.x, x_539.x, x_539.x)) + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec3<f32> = u_xlat8;
  let x_547 : vec4<f32> = x_185.unity_MatrixVP[3i];
  u_xlat8 = (x_545 + vec3<f32>(x_547.x, x_547.y, x_547.w));
  let x_551 : f32 = u_xlat1.x;
  let x_553 : f32 = x_185.unity_MatrixV[3i].z;
  u_xlat0.x = (x_551 + x_553);
  let x_558 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_558);
  let x_562 : f32 = u_xlat8.y;
  let x_564 : f32 = x_185.x_ProjectionParams.x;
  u_xlat0.x = (x_562 * x_564);
  let x_568 : f32 = u_xlat0.x;
  u_xlat2.w = (x_568 * 0.5f);
  let x_572 : vec3<f32> = u_xlat8;
  let x_575 : vec2<f32> = (vec2<f32>(x_572.x, x_572.z) * vec2<f32>(0.5f, 0.5f));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_576.y, x_575.y, x_576.w);
  let x_579 : f32 = u_xlat8.z;
  vs_TEXCOORD3.w = x_579;
  let x_581 : vec4<f32> = u_xlat2;
  let x_583 : vec4<f32> = u_xlat2;
  let x_585 : vec2<f32> = (vec2<f32>(x_581.z, x_581.z) + vec2<f32>(x_583.x, x_583.w));
  let x_586 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_591 : f32 = u_xlat7.y;
  let x_593 : f32 = u_xlat7.y;
  u_xlat0.x = (x_591 * x_593);
  let x_597 : f32 = u_xlat7.x;
  let x_599 : f32 = u_xlat7.x;
  let x_602 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_597 * x_599) + -(x_602));
  let x_606 : vec3<f32> = u_xlat7;
  let x_608 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec4<f32>(x_606.y, x_606.z, x_606.z, x_606.x) * vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.z));
  let x_612 : vec4<f32> = x_185.unity_SHBr;
  let x_613 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_612, x_613);
  let x_617 : vec4<f32> = x_185.unity_SHBg;
  let x_618 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_617, x_618);
  let x_622 : vec4<f32> = x_185.unity_SHBb;
  let x_623 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_622, x_623);
  let x_628 : vec4<f32> = x_185.unity_SHC;
  let x_630 : vec4<f32> = u_xlat0;
  let x_633 : vec4<f32> = u_xlat2;
  vs_TEXCOORD6 = ((vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(x_630.x, x_630.x, x_630.x)) + vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_637 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_637);
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
  vs_TEXCOORD6_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6);
}

