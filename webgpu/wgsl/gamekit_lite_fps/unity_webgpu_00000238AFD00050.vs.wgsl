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

@group(0) @binding(11) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(12) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_185 : VGlobals;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu28 : u32;

var<private> u_xlat8 : vec4<f32>;

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
  var x_496 : vec2<f32>;
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
  u_xlat10 = vec3<f32>(bitcast<f32>(x_96), bitcast<f32>(x_101), bitcast<f32>(x_106));
  let x_110 : f32 = u_xlat10.y;
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
  u_xlat19 = dot(x_169, x_170);
  let x_173 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = in_POSITION0;
  u_xlat6.y = dot(x_173, x_174);
  let x_178 : f32 = u_xlat19;
  let x_188 : vec4<f32> = x_185.unity_MatrixVP[1i];
  u_xlat7 = (vec4<f32>(x_178, x_178, x_178, x_178) * x_188);
  let x_191 : f32 = u_xlat2.x;
  u_xlat4.w = x_191;
  let x_194 : f32 = u_xlat4.y;
  u_xlat5.z = x_194;
  let x_197 : f32 = u_xlat5.y;
  u_xlat4.x = x_197;
  let x_200 : f32 = u_xlat10.x;
  u_xlat4.y = x_200;
  let x_203 : f32 = u_xlat10.z;
  u_xlat5.y = x_203;
  let x_205 : vec4<f32> = u_xlat4;
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat10.x = dot(x_205, x_206);
  let x_209 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = in_POSITION0;
  u_xlat6.x = dot(x_209, x_210);
  let x_214 : vec4<f32> = x_185.unity_MatrixVP[0i];
  let x_215 : vec3<f32> = u_xlat10;
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
  let x_238 : vec4<f32> = u_xlat7;
  let x_240 : vec4<f32> = x_185.unity_MatrixVP[3i];
  u_xlat7 = (x_238 + x_240);
  let x_246 : vec4<f32> = u_xlat7;
  gl_Position = x_246;
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_250.y, x_250.z, x_250.x) * vec3<f32>(x_252.z, x_252.x, x_252.y));
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec4<f32> = u_xlat5;
  let x_260 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_255.z, x_255.x, x_255.y) * vec3<f32>(x_257.y, x_257.z, x_257.x)) + -(x_260));
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
  u_xlat28 = dot(vec3<f32>(x_282.x, x_282.y, x_282.z), vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : f32 = u_xlat28;
  u_xlat28 = (1.0f / x_287);
  let x_289 : vec3<f32> = u_xlat9;
  let x_290 : f32 = u_xlat28;
  u_xlat9 = (x_289 * vec3<f32>(x_290, x_290, x_290));
  let x_295 : vec3<f32> = in_NORMAL0;
  let x_296 : vec3<f32> = u_xlat9;
  u_xlat5.y = dot(x_295, x_296);
  let x_299 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat9 = (vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y));
  let x_304 : vec4<f32> = u_xlat4;
  let x_306 : vec4<f32> = u_xlat3;
  let x_309 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_304.y, x_304.z, x_304.x) * vec3<f32>(x_306.z, x_306.x, x_306.y)) + -(x_309));
  let x_312 : f32 = u_xlat28;
  let x_314 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_312, x_312, x_312) * x_314);
  let x_316 : f32 = u_xlat28;
  let x_318 : vec4<f32> = u_xlat2;
  let x_320 : vec3<f32> = (vec3<f32>(x_316, x_316, x_316) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec3<f32> = in_NORMAL0;
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_323, vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_328 : vec3<f32> = in_NORMAL0;
  let x_329 : vec3<f32> = u_xlat9;
  u_xlat5.z = dot(x_328, x_329);
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec4<f32> = u_xlat5;
  u_xlat9.x = dot(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_339 : f32 = u_xlat9.x;
  u_xlat9.x = inverseSqrt(x_339);
  let x_342 : vec3<f32> = u_xlat9;
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_342.x, x_342.x, x_342.x) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_349 : vec3<f32> = u_xlat9;
  vs_TEXCOORD0 = x_349;
  let x_351 : vec4<f32> = u_xlat6;
  vs_TEXCOORD1 = vec3<f32>(x_351.x, x_351.y, x_351.z);
  let x_353 : vec4<f32> = u_xlat6;
  let x_357 : vec4<f32> = x_185.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_353.x, x_353.x, x_353.x, x_353.x)) + x_357);
  let x_359 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = x_185.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_359.y, x_359.y, x_359.y, x_359.y)) + x_363);
  let x_365 : vec4<f32> = u_xlat6;
  let x_369 : vec4<f32> = x_185.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_365.z, x_365.z, x_365.z, x_365.z)) + x_369);
  let x_372 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_372 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_378 : f32 = x_185.unity_ParticleUseMeshColors;
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_378, x_378, x_378, x_378) * x_380) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_387 : f32 = u_xlat2.w;
  u_xlatu28 = (bitcast<u32>(x_387) & 255u);
  let x_392 : u32 = u_xlatu28;
  u_xlat8.x = f32(x_392);
  let x_399 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_399);
  param_1 = 8i;
  param_2 = 8i;
  let x_404 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_406 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_406);
  param_4 = 16i;
  param_5 = 8i;
  let x_412 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu2 = vec2<u32>(x_404, x_412);
  let x_415 : f32 = u_xlat2.w;
  u_xlatu28 = (bitcast<u32>(x_415) >> 24u);
  let x_419 : u32 = u_xlatu28;
  u_xlat8.w = f32(x_419);
  let x_422 : vec2<u32> = u_xlatu2;
  let x_424 : vec2<f32> = vec2<f32>(x_422);
  let x_425 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_425.x, x_424.x, x_424.y, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  let x_428 : vec4<f32> = u_xlat8;
  u_xlat2 = (x_427 * x_428);
  let x_431 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_431 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_436 : f32 = u_xlat1.x;
  let x_438 : f32 = x_185.unity_ParticleUVShiftData.y;
  u_xlat28 = (x_436 / x_438);
  let x_440 : f32 = u_xlat28;
  u_xlat28 = floor(x_440);
  let x_442 : f32 = u_xlat28;
  let x_445 : f32 = x_185.unity_ParticleUVShiftData.y;
  let x_448 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_442) * x_445) + x_448);
  let x_452 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_452);
  let x_456 : f32 = u_xlat1.x;
  let x_458 : f32 = x_185.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_456 * x_458);
  let x_462 : f32 = x_185.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_462) + 1.0f);
  let x_466 : f32 = u_xlat28;
  let x_469 : f32 = x_185.unity_ParticleUVShiftData.w;
  let x_472 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_466) * x_469) + x_472);
  let x_477 : vec2<f32> = in_TEXCOORD0;
  let x_479 : vec4<f32> = x_185.unity_ParticleUVShiftData;
  let x_482 : vec4<f32> = u_xlat2;
  let x_484 : vec2<f32> = ((x_477 * vec2<f32>(x_479.z, x_479.w)) + vec2<f32>(x_482.x, x_482.y));
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_485.y, x_485.z, x_484.y);
  let x_491 : f32 = x_185.unity_ParticleUVShiftData.x;
  u_xlatb2 = !((x_491 == 0.0f));
  let x_494 : bool = u_xlatb2;
  if (x_494) {
    let x_499 : vec4<f32> = u_xlat1;
    x_496 = vec2<f32>(x_499.x, x_499.w);
  } else {
    let x_502 : vec2<f32> = in_TEXCOORD0;
    x_496 = x_502;
  }
  let x_503 : vec2<f32> = x_496;
  let x_504 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_503.x, x_504.y, x_504.z, x_503.y);
  let x_508 : vec4<f32> = u_xlat1;
  let x_512 : vec4<f32> = x_185.x_MainTex_ST;
  let x_516 : vec4<f32> = x_185.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_508.x, x_508.w) * vec2<f32>(x_512.x, x_512.y)) + vec2<f32>(x_516.z, x_516.w));
  let x_519 : f32 = u_xlat19;
  let x_521 : f32 = x_185.unity_MatrixV[1i].z;
  u_xlat1.x = (x_519 * x_521);
  let x_524 : f32 = u_xlat19;
  let x_527 : vec4<f32> = x_185.unity_MatrixVP[1i];
  let x_529 : vec3<f32> = (vec3<f32>(x_524, x_524, x_524) * vec3<f32>(x_527.x, x_527.y, x_527.w));
  let x_530 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_533 : vec4<f32> = x_185.unity_MatrixVP[0i];
  let x_535 : vec3<f32> = u_xlat10;
  let x_538 : vec4<f32> = u_xlat2;
  let x_540 : vec3<f32> = ((vec3<f32>(x_533.x, x_533.y, x_533.w) * vec3<f32>(x_535.x, x_535.x, x_535.x)) + vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_544 : f32 = x_185.unity_MatrixV[0i].z;
  let x_546 : f32 = u_xlat10.x;
  let x_549 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_544 * x_546) + x_549);
  let x_553 : f32 = x_185.unity_MatrixV[2i].z;
  let x_555 : f32 = u_xlat0.x;
  let x_558 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_553 * x_555) + x_558);
  let x_562 : vec4<f32> = x_185.unity_MatrixVP[2i];
  let x_564 : vec4<f32> = u_xlat0;
  let x_567 : vec4<f32> = u_xlat2;
  u_xlat10 = ((vec3<f32>(x_562.x, x_562.y, x_562.w) * vec3<f32>(x_564.x, x_564.x, x_564.x)) + vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec3<f32> = u_xlat10;
  let x_572 : vec4<f32> = x_185.unity_MatrixVP[3i];
  u_xlat10 = (x_570 + vec3<f32>(x_572.x, x_572.y, x_572.w));
  let x_576 : f32 = u_xlat1.x;
  let x_578 : f32 = x_185.unity_MatrixV[3i].z;
  u_xlat0.x = (x_576 + x_578);
  let x_583 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_583);
  let x_587 : f32 = u_xlat10.z;
  vs_TEXCOORD3.w = x_587;
  u_xlat2.x = 0.5f;
  u_xlat2.z = 0.5f;
  let x_593 : f32 = x_185.x_ProjectionParams.x;
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
  let x_661 : vec4<f32> = x_185.unity_4LightAtten0;
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
  let x_678 : vec4<f32> = x_185.unity_LightColor[1i];
  let x_680 : vec3<f32> = (vec3<f32>(x_675.y, x_675.y, x_675.y) * vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : vec4<f32> = x_185.unity_LightColor[0i];
  let x_686 : vec4<f32> = u_xlat1;
  let x_689 : vec4<f32> = u_xlat3;
  let x_691 : vec3<f32> = ((vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(x_686.x, x_686.x, x_686.x)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_695 : vec4<f32> = x_185.unity_LightColor[2i];
  let x_697 : vec4<f32> = u_xlat1;
  let x_700 : vec4<f32> = u_xlat3;
  let x_702 : vec3<f32> = ((vec3<f32>(x_695.x, x_695.y, x_695.z) * vec3<f32>(x_697.z, x_697.z, x_697.z)) + vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_706 : vec4<f32> = x_185.unity_LightColor[3i];
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
  let x_738 : vec4<f32> = x_185.unity_SHBr;
  let x_739 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_738, x_739);
  let x_743 : vec4<f32> = x_185.unity_SHBg;
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_743, x_744);
  let x_748 : vec4<f32> = x_185.unity_SHBb;
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_748, x_749);
  let x_753 : vec4<f32> = x_185.unity_SHC;
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
  let x_781 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_781);
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

