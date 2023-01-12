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

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  var u_xlat8 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatu7 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat14 : f32;
  var u_xlatb21 : bool;
  var x_566 : vec2<f32>;
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
  u_xlat8 = vec3<f32>(bitcast<f32>(x_95), bitcast<f32>(x_100), bitcast<f32>(x_105));
  let x_109 : f32 = u_xlat8.y;
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
  u_xlat15 = dot(x_168, x_169);
  let x_173 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.w = dot(x_173, x_174);
  let x_179 : f32 = u_xlat15;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_179, x_179, x_179, x_179) * x_187);
  let x_190 : f32 = u_xlat2.x;
  u_xlat4.w = x_190;
  let x_193 : f32 = u_xlat4.y;
  u_xlat5.z = x_193;
  let x_196 : f32 = u_xlat5.y;
  u_xlat4.x = x_196;
  let x_199 : f32 = u_xlat8.x;
  u_xlat4.y = x_199;
  let x_202 : f32 = u_xlat8.z;
  u_xlat5.y = x_202;
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat8.x = dot(x_204, x_205);
  let x_209 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD0.w = dot(x_209, x_210);
  let x_214 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_215 : vec3<f32> = u_xlat8;
  let x_218 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_214 * vec4<f32>(x_215.x, x_215.x, x_215.x, x_215.x)) + x_218);
  let x_221 : f32 = u_xlat2.z;
  u_xlat5.w = x_221;
  let x_223 : vec4<f32> = u_xlat5;
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_223, x_224);
  let x_228 : vec4<f32> = u_xlat5;
  let x_229 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD2.w = dot(x_228, x_229);
  let x_233 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_234 : vec4<f32> = u_xlat0;
  let x_237 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_233 * vec4<f32>(x_234.x, x_234.x, x_234.x, x_234.x)) + x_237);
  let x_239 : vec4<f32> = u_xlat6;
  let x_241 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat6 = (x_239 + x_241);
  let x_247 : vec4<f32> = u_xlat6;
  gl_Position = x_247;
  let x_251 : f32 = u_xlat6.z;
  vs_TEXCOORD6 = x_251;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_253.y, x_253.z, x_253.x) * vec3<f32>(x_255.z, x_255.x, x_255.y));
  let x_258 : vec4<f32> = u_xlat4;
  let x_260 : vec4<f32> = u_xlat5;
  let x_263 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_258.z, x_258.x, x_258.y) * vec3<f32>(x_260.y, x_260.z, x_260.x)) + -(x_263));
  let x_266 : vec4<f32> = u_xlat3;
  let x_268 : vec4<f32> = u_xlat5;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.z, x_266.x, x_266.y) * vec3<f32>(x_268.y, x_268.z, x_268.x));
  let x_271 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat3;
  let x_275 : vec4<f32> = u_xlat5;
  let x_278 : vec4<f32> = u_xlat2;
  let x_281 : vec3<f32> = ((vec3<f32>(x_273.y, x_273.z, x_273.x) * vec3<f32>(x_275.z, x_275.x, x_275.y)) + -(vec3<f32>(x_278.x, x_278.y, x_278.z)));
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat5;
  let x_287 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_292 : vec4<f32> = u_xlat4;
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_292.x, x_292.y, x_292.z), vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_297);
  let x_299 : vec3<f32> = u_xlat7;
  let x_300 : f32 = u_xlat22;
  u_xlat7 = (x_299 * vec3<f32>(x_300, x_300, x_300));
  let x_305 : vec3<f32> = in_NORMAL0;
  let x_306 : vec3<f32> = u_xlat7;
  u_xlat6.y = dot(x_305, x_306);
  let x_309 : vec4<f32> = u_xlat3;
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec3<f32>(x_309.y, x_309.z, x_309.x) * vec3<f32>(x_311.z, x_311.x, x_311.y));
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : vec4<f32> = u_xlat3;
  let x_319 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_314.y, x_314.z, x_314.x) * vec3<f32>(x_316.z, x_316.x, x_316.y)) + -(x_319));
  let x_322 : vec4<f32> = u_xlat3;
  let x_324 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_322.x, x_322.y, x_322.z), vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_328 : vec4<f32> = u_xlat4;
  let x_330 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_328.x, x_328.y, x_328.z), vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_334 : f32 = u_xlat22;
  let x_336 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_334, x_334, x_334) * x_336);
  let x_338 : f32 = u_xlat22;
  let x_340 : vec4<f32> = u_xlat2;
  let x_342 : vec3<f32> = (vec3<f32>(x_338, x_338, x_338) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec3<f32> = in_NORMAL0;
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_345, vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_350 : vec3<f32> = in_NORMAL0;
  let x_351 : vec3<f32> = u_xlat7;
  u_xlat6.z = dot(x_350, x_351);
  let x_354 : vec4<f32> = u_xlat6;
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(vec3<f32>(x_354.x, x_354.y, x_354.z), vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_361 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_361);
  let x_364 : vec3<f32> = u_xlat7;
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat3 = (vec4<f32>(x_364.x, x_364.x, x_364.x, x_364.x) * vec4<f32>(x_366.x, x_366.y, x_366.z, x_366.z));
  let x_369 : vec4<f32> = u_xlat5;
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_369.x, x_369.y, x_369.z), vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_376 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_376);
  let x_379 : vec3<f32> = u_xlat7;
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat7 = (vec3<f32>(x_379.x, x_379.x, x_379.x) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec3<f32> = u_xlat7;
  let x_385 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = (x_384 * vec3<f32>(x_385.w, x_385.x, x_385.y));
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec4<f32> = u_xlat3;
  let x_392 : vec3<f32> = u_xlat7;
  let x_395 : vec4<f32> = u_xlat2;
  let x_398 : vec3<f32> = ((vec3<f32>(x_390.y, x_390.w, x_390.x) * vec3<f32>(x_392.y, x_392.z, x_392.x)) + -(vec3<f32>(x_395.x, x_395.y, x_395.z)));
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_403 : f32 = in_TANGENT0.w;
  let x_406 : f32 = x_184.unity_WorldTransformParams.w;
  u_xlat22 = (x_403 * x_406);
  let x_408 : f32 = u_xlat22;
  let x_410 : vec4<f32> = u_xlat2;
  let x_412 : vec3<f32> = (vec3<f32>(x_408, x_408, x_408) * vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat2.x;
  vs_TEXCOORD0.y = x_416;
  let x_419 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_419;
  let x_422 : f32 = u_xlat7.z;
  vs_TEXCOORD0.x = x_422;
  let x_425 : f32 = u_xlat7.x;
  vs_TEXCOORD1.x = x_425;
  let x_428 : f32 = u_xlat7.y;
  vs_TEXCOORD2.x = x_428;
  let x_431 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_431;
  let x_434 : f32 = u_xlat2.y;
  vs_TEXCOORD1.y = x_434;
  let x_437 : f32 = u_xlat2.z;
  vs_TEXCOORD2.y = x_437;
  let x_440 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_440;
  let x_443 : vec4<f32> = in_COLOR0;
  u_xlat4 = (x_443 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_448 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_450 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_448, x_448, x_448, x_448) * x_450) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_458 : f32 = u_xlat2.w;
  u_xlatu7.x = (bitcast<u32>(x_458) & 255u);
  let x_464 : u32 = u_xlatu7.x;
  u_xlat5.x = f32(x_464);
  let x_468 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_468);
  param_1 = 8i;
  param_2 = 8i;
  let x_473 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_475 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_475);
  param_4 = 16i;
  param_5 = 8i;
  let x_481 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_483 : vec2<u32> = vec2<u32>(x_473, x_481);
  let x_484 : vec3<u32> = u_xlatu7;
  u_xlatu7 = vec3<u32>(x_483.x, x_483.y, x_484.z);
  let x_487 : f32 = u_xlat2.w;
  u_xlatu7.z = (bitcast<u32>(x_487) >> 24u);
  let x_492 : vec3<u32> = u_xlatu7;
  let x_493 : vec3<f32> = vec3<f32>(x_492);
  let x_494 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_494.x, x_493.x, x_493.y, x_493.z);
  let x_496 : vec4<f32> = u_xlat4;
  let x_497 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_496 * x_497);
  let x_500 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_500 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_505 : f32 = u_xlat1.x;
  let x_507 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat7.x = (x_505 / x_507);
  let x_511 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_511);
  let x_516 : f32 = u_xlat7.x;
  let x_519 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_522 : f32 = u_xlat1.x;
  u_xlat14 = ((-(x_516) * x_519) + x_522);
  let x_524 : f32 = u_xlat14;
  u_xlat14 = floor(x_524);
  let x_526 : f32 = u_xlat14;
  let x_528 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_526 * x_528);
  let x_532 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat14 = (-(x_532) + 1.0f);
  let x_536 : f32 = u_xlat7.x;
  let x_539 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_541 : f32 = u_xlat14;
  u_xlat2.y = ((-(x_536) * x_539) + x_541);
  let x_547 : vec2<f32> = in_TEXCOORD0;
  let x_549 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_552 : vec4<f32> = u_xlat2;
  let x_554 : vec2<f32> = ((x_547 * vec2<f32>(x_549.z, x_549.w)) + vec2<f32>(x_552.x, x_552.y));
  let x_555 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_554.x, x_554.y, x_555.z);
  let x_561 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb21 = !((x_561 == 0.0f));
  let x_564 : bool = u_xlatb21;
  if (x_564) {
    let x_569 : vec3<f32> = u_xlat7;
    x_566 = vec2<f32>(x_569.x, x_569.y);
  } else {
    let x_572 : vec2<f32> = in_TEXCOORD0;
    x_566 = x_572;
  }
  let x_573 : vec2<f32> = x_566;
  let x_574 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_573.x, x_573.y, x_574.z);
  let x_578 : vec3<f32> = u_xlat7;
  let x_581 : vec4<f32> = x_184.x_MainTex_ST;
  let x_585 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_578.x, x_578.y) * vec2<f32>(x_581.x, x_581.y)) + vec2<f32>(x_585.z, x_585.w));
  let x_588 : f32 = u_xlat15;
  let x_590 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat7.x = (x_588 * x_590);
  let x_593 : f32 = u_xlat15;
  let x_596 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_598 : vec3<f32> = (vec3<f32>(x_593, x_593, x_593) * vec3<f32>(x_596.x, x_596.y, x_596.w));
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_598.x, x_599.y, x_598.y, x_598.z);
  let x_602 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_604 : vec3<f32> = u_xlat8;
  let x_607 : vec4<f32> = u_xlat1;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.x, x_602.y, x_602.w) * vec3<f32>(x_604.x, x_604.x, x_604.x)) + vec3<f32>(x_607.x, x_607.z, x_607.w));
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_609.x, x_610.y, x_609.y, x_609.z);
  let x_613 : f32 = x_184.unity_MatrixV[0i].z;
  let x_615 : f32 = u_xlat8.x;
  let x_618 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_613 * x_615) + x_618);
  let x_622 : f32 = x_184.unity_MatrixV[2i].z;
  let x_624 : f32 = u_xlat0.x;
  let x_627 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_622 * x_624) + x_627);
  let x_631 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_633 : vec4<f32> = u_xlat0;
  let x_636 : vec4<f32> = u_xlat1;
  let x_638 : vec3<f32> = ((vec3<f32>(x_631.x, x_631.y, x_631.w) * vec3<f32>(x_633.x, x_633.x, x_633.x)) + vec3<f32>(x_636.x, x_636.z, x_636.w));
  let x_639 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_638.x, x_639.y, x_638.y, x_638.z);
  let x_641 : vec4<f32> = u_xlat0;
  let x_644 : vec4<f32> = x_184.unity_MatrixVP[3i];
  let x_646 : vec3<f32> = (vec3<f32>(x_641.x, x_641.z, x_641.w) + vec3<f32>(x_644.x, x_644.y, x_644.w));
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_646.x, x_647.y, x_646.y, x_646.z);
  let x_650 : f32 = u_xlat7.x;
  let x_652 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat7.x = (x_650 + x_652);
  let x_658 : f32 = u_xlat7.x;
  vs_TEXCOORD4.z = -(x_658);
  let x_663 : f32 = u_xlat0.z;
  let x_665 : f32 = x_184.x_ProjectionParams.x;
  u_xlat0.y = (x_663 * x_665);
  let x_668 : vec4<f32> = u_xlat0;
  let x_672 : vec3<f32> = (vec3<f32>(x_668.x, x_668.w, x_668.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_673 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_672.x, x_673.y, x_672.y, x_672.z);
  let x_676 : f32 = u_xlat0.w;
  vs_TEXCOORD4.w = x_676;
  let x_678 : vec4<f32> = u_xlat1;
  let x_680 : vec4<f32> = u_xlat1;
  let x_682 : vec2<f32> = (vec2<f32>(x_678.z, x_678.z) + vec2<f32>(x_680.x, x_680.w));
  let x_683 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
  let x_686 : f32 = u_xlat3.y;
  let x_688 : f32 = u_xlat3.y;
  u_xlat0.x = (x_686 * x_688);
  let x_692 : f32 = u_xlat3.x;
  let x_694 : f32 = u_xlat3.x;
  let x_697 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_692 * x_694) + -(x_697));
  let x_701 : vec4<f32> = u_xlat3;
  let x_703 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_701.y, x_701.w, x_701.z, x_701.x) * x_703);
  let x_706 : vec4<f32> = x_184.unity_SHBr;
  let x_707 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_706, x_707);
  let x_711 : vec4<f32> = x_184.unity_SHBg;
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_711, x_712);
  let x_716 : vec4<f32> = x_184.unity_SHBb;
  let x_717 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_716, x_717);
  let x_723 : vec4<f32> = x_184.unity_SHC;
  let x_725 : vec4<f32> = u_xlat0;
  let x_728 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = ((vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(x_725.x, x_725.x, x_725.x)) + vec3<f32>(x_728.x, x_728.y, x_728.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_735 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_735);
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
  @location(5)
  vs_TEXCOORD6_1 : f32,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(6)
  vs_TEXCOORD5_1 : vec3<f32>,
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
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, gl_Position, vs_TEXCOORD6, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5);
}

