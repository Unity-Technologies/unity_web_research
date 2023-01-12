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

@group(0) @binding(11) var<storage, read> x_62 : unity_ParticleInstanceData;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

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
  var u_xlat9 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatu8 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat16 : f32;
  var u_xlatb24 : bool;
  var x_562 : vec2<f32>;
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
  u_xlat9 = vec3<f32>(bitcast<f32>(x_95), bitcast<f32>(x_100), bitcast<f32>(x_105));
  let x_109 : f32 = u_xlat9.y;
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
  u_xlat17 = dot(x_168, x_169);
  let x_173 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD1.w = dot(x_173, x_174);
  let x_179 : f32 = u_xlat17;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_179, x_179, x_179, x_179) * x_187);
  let x_190 : f32 = u_xlat2.x;
  u_xlat4.w = x_190;
  let x_193 : f32 = u_xlat4.y;
  u_xlat5.z = x_193;
  let x_196 : f32 = u_xlat5.y;
  u_xlat4.x = x_196;
  let x_199 : f32 = u_xlat9.x;
  u_xlat4.y = x_199;
  let x_202 : f32 = u_xlat9.z;
  u_xlat5.y = x_202;
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat9.x = dot(x_204, x_205);
  let x_209 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD0.w = dot(x_209, x_210);
  let x_214 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_215 : vec3<f32> = u_xlat9;
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
  u_xlat25 = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : f32 = u_xlat25;
  u_xlat25 = (1.0f / x_294);
  let x_296 : vec3<f32> = u_xlat8;
  let x_297 : f32 = u_xlat25;
  u_xlat8 = (x_296 * vec3<f32>(x_297, x_297, x_297));
  let x_303 : vec3<f32> = in_NORMAL0;
  let x_304 : vec3<f32> = u_xlat8;
  u_xlat7.y = dot(x_303, x_304);
  let x_307 : vec4<f32> = u_xlat3;
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat8 = (vec3<f32>(x_307.y, x_307.z, x_307.x) * vec3<f32>(x_309.z, x_309.x, x_309.y));
  let x_312 : vec4<f32> = u_xlat4;
  let x_314 : vec4<f32> = u_xlat3;
  let x_317 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_312.y, x_312.z, x_312.x) * vec3<f32>(x_314.z, x_314.x, x_314.y)) + -(x_317));
  let x_320 : vec4<f32> = u_xlat3;
  let x_322 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_320.x, x_320.y, x_320.z), vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : vec4<f32> = u_xlat4;
  let x_328 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_326.x, x_326.y, x_326.z), vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_332 : f32 = u_xlat25;
  let x_334 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_332, x_332, x_332) * x_334);
  let x_336 : f32 = u_xlat25;
  let x_338 : vec4<f32> = u_xlat2;
  let x_340 : vec3<f32> = (vec3<f32>(x_336, x_336, x_336) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec3<f32> = in_NORMAL0;
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat7.x = dot(x_343, vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_348 : vec3<f32> = in_NORMAL0;
  let x_349 : vec3<f32> = u_xlat8;
  u_xlat7.z = dot(x_348, x_349);
  let x_352 : vec3<f32> = u_xlat7;
  let x_353 : vec3<f32> = u_xlat7;
  u_xlat8.x = dot(x_352, x_353);
  let x_357 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_357);
  let x_360 : vec3<f32> = u_xlat8;
  let x_362 : vec3<f32> = u_xlat7;
  u_xlat3 = (vec4<f32>(x_360.x, x_360.x, x_360.x, x_360.x) * vec4<f32>(x_362.x, x_362.y, x_362.z, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  let x_367 : vec4<f32> = u_xlat5;
  u_xlat8.x = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_372 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_372);
  let x_375 : vec3<f32> = u_xlat8;
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_375.x, x_375.x, x_375.x) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec3<f32> = u_xlat8;
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec3<f32> = (x_380 * vec3<f32>(x_381.w, x_381.x, x_381.y));
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : vec3<f32> = u_xlat8;
  let x_391 : vec4<f32> = u_xlat2;
  let x_394 : vec3<f32> = ((vec3<f32>(x_386.y, x_386.w, x_386.x) * vec3<f32>(x_388.y, x_388.z, x_388.x)) + -(vec3<f32>(x_391.x, x_391.y, x_391.z)));
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_399 : f32 = in_TANGENT0.w;
  let x_402 : f32 = x_184.unity_WorldTransformParams.w;
  u_xlat25 = (x_399 * x_402);
  let x_404 : f32 = u_xlat25;
  let x_406 : vec4<f32> = u_xlat2;
  let x_408 : vec3<f32> = (vec3<f32>(x_404, x_404, x_404) * vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : f32 = u_xlat2.x;
  vs_TEXCOORD0.y = x_412;
  let x_415 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_415;
  let x_418 : f32 = u_xlat8.z;
  vs_TEXCOORD0.x = x_418;
  let x_421 : f32 = u_xlat8.x;
  vs_TEXCOORD1.x = x_421;
  let x_424 : f32 = u_xlat8.y;
  vs_TEXCOORD2.x = x_424;
  let x_427 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_427;
  let x_430 : f32 = u_xlat2.y;
  vs_TEXCOORD1.y = x_430;
  let x_433 : f32 = u_xlat2.z;
  vs_TEXCOORD2.y = x_433;
  let x_436 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_436;
  let x_439 : vec4<f32> = in_COLOR0;
  u_xlat4 = (x_439 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_444 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_446 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_444, x_444, x_444, x_444) * x_446) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_454 : f32 = u_xlat2.w;
  u_xlatu8.x = (bitcast<u32>(x_454) & 255u);
  let x_460 : u32 = u_xlatu8.x;
  u_xlat5.x = f32(x_460);
  let x_464 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_464);
  param_1 = 8i;
  param_2 = 8i;
  let x_469 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_471 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_471);
  param_4 = 16i;
  param_5 = 8i;
  let x_477 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_479 : vec2<u32> = vec2<u32>(x_469, x_477);
  let x_480 : vec3<u32> = u_xlatu8;
  u_xlatu8 = vec3<u32>(x_479.x, x_479.y, x_480.z);
  let x_483 : f32 = u_xlat2.w;
  u_xlatu8.z = (bitcast<u32>(x_483) >> 24u);
  let x_488 : vec3<u32> = u_xlatu8;
  let x_489 : vec3<f32> = vec3<f32>(x_488);
  let x_490 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_490.x, x_489.x, x_489.y, x_489.z);
  let x_492 : vec4<f32> = u_xlat4;
  let x_493 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_492 * x_493);
  let x_496 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_496 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_501 : f32 = u_xlat1.x;
  let x_503 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat8.x = (x_501 / x_503);
  let x_507 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_507);
  let x_512 : f32 = u_xlat8.x;
  let x_515 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_518 : f32 = u_xlat1.x;
  u_xlat16 = ((-(x_512) * x_515) + x_518);
  let x_520 : f32 = u_xlat16;
  u_xlat16 = floor(x_520);
  let x_522 : f32 = u_xlat16;
  let x_524 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_522 * x_524);
  let x_528 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat16 = (-(x_528) + 1.0f);
  let x_532 : f32 = u_xlat8.x;
  let x_535 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_537 : f32 = u_xlat16;
  u_xlat2.y = ((-(x_532) * x_535) + x_537);
  let x_543 : vec2<f32> = in_TEXCOORD0;
  let x_545 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_548 : vec4<f32> = u_xlat2;
  let x_550 : vec2<f32> = ((x_543 * vec2<f32>(x_545.z, x_545.w)) + vec2<f32>(x_548.x, x_548.y));
  let x_551 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_550.x, x_550.y, x_551.z);
  let x_557 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb24 = !((x_557 == 0.0f));
  let x_560 : bool = u_xlatb24;
  if (x_560) {
    let x_565 : vec3<f32> = u_xlat8;
    x_562 = vec2<f32>(x_565.x, x_565.y);
  } else {
    let x_568 : vec2<f32> = in_TEXCOORD0;
    x_562 = x_568;
  }
  let x_569 : vec2<f32> = x_562;
  let x_570 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_569.x, x_569.y, x_570.z);
  let x_574 : vec3<f32> = u_xlat8;
  let x_577 : vec4<f32> = x_184.x_MainTex_ST;
  let x_581 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_574.x, x_574.y) * vec2<f32>(x_577.x, x_577.y)) + vec2<f32>(x_581.z, x_581.w));
  let x_586 : f32 = u_xlat6.z;
  vs_TEXCOORD6 = x_586;
  let x_588 : vec4<f32> = u_xlat6;
  let x_589 : vec2<f32> = vec2<f32>(x_588.z, x_588.w);
  let x_590 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_590.x, x_590.y, x_589.x, x_589.y);
  let x_592 : f32 = u_xlat17;
  let x_594 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat8.x = (x_592 * x_594);
  let x_597 : f32 = u_xlat17;
  let x_600 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_602 : vec3<f32> = (vec3<f32>(x_597, x_597, x_597) * vec3<f32>(x_600.x, x_600.y, x_600.w));
  let x_603 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_602.x, x_603.y, x_602.y, x_602.z);
  let x_606 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_608 : vec3<f32> = u_xlat9;
  let x_611 : vec4<f32> = u_xlat1;
  let x_613 : vec3<f32> = ((vec3<f32>(x_606.x, x_606.y, x_606.w) * vec3<f32>(x_608.x, x_608.x, x_608.x)) + vec3<f32>(x_611.x, x_611.z, x_611.w));
  let x_614 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_613.x, x_614.y, x_613.y, x_613.z);
  let x_617 : f32 = x_184.unity_MatrixV[0i].z;
  let x_619 : f32 = u_xlat9.x;
  let x_622 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_617 * x_619) + x_622);
  let x_626 : f32 = x_184.unity_MatrixV[2i].z;
  let x_628 : f32 = u_xlat0.x;
  let x_631 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_626 * x_628) + x_631);
  let x_635 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_637 : vec4<f32> = u_xlat0;
  let x_640 : vec4<f32> = u_xlat1;
  let x_642 : vec3<f32> = ((vec3<f32>(x_635.x, x_635.y, x_635.w) * vec3<f32>(x_637.x, x_637.x, x_637.x)) + vec3<f32>(x_640.x, x_640.z, x_640.w));
  let x_643 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_642.x, x_643.y, x_642.y, x_642.z);
  let x_645 : vec4<f32> = u_xlat0;
  let x_648 : vec4<f32> = x_184.unity_MatrixVP[3i];
  let x_650 : vec3<f32> = (vec3<f32>(x_645.x, x_645.z, x_645.w) + vec3<f32>(x_648.x, x_648.y, x_648.w));
  let x_651 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_650.x, x_651.y, x_650.y, x_650.z);
  let x_654 : f32 = u_xlat8.x;
  let x_656 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat8.x = (x_654 + x_656);
  let x_662 : f32 = u_xlat8.x;
  vs_TEXCOORD4.z = -(x_662);
  let x_667 : f32 = u_xlat0.w;
  vs_TEXCOORD4.w = x_667;
  u_xlat1.x = 0.5f;
  u_xlat1.z = 0.5f;
  let x_673 : f32 = x_184.x_ProjectionParams.x;
  u_xlat1.y = x_673;
  let x_675 : vec4<f32> = u_xlat0;
  let x_677 : vec4<f32> = u_xlat1;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.z, x_675.w) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat1;
  let x_684 : vec4<f32> = u_xlat6;
  let x_686 : vec3<f32> = (vec3<f32>(x_682.x, x_682.y, x_682.z) * vec3<f32>(x_684.x, x_684.y, x_684.w));
  let x_687 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_690 : f32 = u_xlat0.y;
  u_xlat0.w = (x_690 * 0.5f);
  let x_693 : vec4<f32> = u_xlat0;
  let x_695 : vec4<f32> = u_xlat0;
  let x_697 : vec2<f32> = (vec2<f32>(x_693.z, x_693.z) + vec2<f32>(x_695.x, x_695.w));
  let x_698 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
  let x_701 : f32 = u_xlat3.y;
  let x_703 : f32 = u_xlat3.y;
  u_xlat0.x = (x_701 * x_703);
  let x_707 : f32 = u_xlat3.x;
  let x_709 : f32 = u_xlat3.x;
  let x_712 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_707 * x_709) + -(x_712));
  let x_716 : vec4<f32> = u_xlat3;
  let x_718 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_716.y, x_716.w, x_716.z, x_716.x) * x_718);
  let x_721 : vec4<f32> = x_184.unity_SHBr;
  let x_722 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_721, x_722);
  let x_726 : vec4<f32> = x_184.unity_SHBg;
  let x_727 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_726, x_727);
  let x_731 : vec4<f32> = x_184.unity_SHBb;
  let x_732 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_731, x_732);
  let x_738 : vec4<f32> = x_184.unity_SHC;
  let x_740 : vec4<f32> = u_xlat0;
  let x_743 : vec4<f32> = u_xlat3;
  vs_TEXCOORD5 = ((vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(x_740.x, x_740.x, x_740.x)) + vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_747 : f32 = u_xlat1.y;
  u_xlat1.w = (x_747 * 0.5f);
  let x_750 : vec4<f32> = u_xlat1;
  let x_752 : vec4<f32> = u_xlat1;
  let x_754 : vec2<f32> = (vec2<f32>(x_750.z, x_750.z) + vec2<f32>(x_752.x, x_752.w));
  let x_755 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
  let x_759 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_759);
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
  vs_TEXCOORD6_1 : f32,
  @location(7)
  vs_TEXCOORD7_1 : vec4<f32>,
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
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, gl_Position, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD6, vs_TEXCOORD7, vs_TEXCOORD5);
}

