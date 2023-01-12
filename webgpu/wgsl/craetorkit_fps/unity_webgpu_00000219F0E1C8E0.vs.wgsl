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

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_49 : UnityDrawCallInfo;

@group(0) @binding(7) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

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
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlatu25 : u32;
  var u_xlatu2 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb2 : bool;
  var x_492 : vec2<f32>;
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
  let x_172 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = in_POSITION0;
  u_xlat6.y = dot(x_172, x_173);
  let x_177 : f32 = u_xlat17;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat7 = (vec4<f32>(x_177, x_177, x_177, x_177) * x_187);
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
  let x_208 : vec4<f32> = u_xlat4;
  let x_209 : vec4<f32> = in_POSITION0;
  u_xlat6.x = dot(x_208, x_209);
  let x_213 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_214 : vec3<f32> = u_xlat9;
  let x_217 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_213 * vec4<f32>(x_214.x, x_214.x, x_214.x, x_214.x)) + x_217);
  let x_220 : f32 = u_xlat2.z;
  u_xlat5.w = x_220;
  let x_222 : vec4<f32> = u_xlat5;
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_222, x_223);
  let x_226 : vec4<f32> = u_xlat5;
  let x_227 : vec4<f32> = in_POSITION0;
  u_xlat6.z = dot(x_226, x_227);
  let x_231 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_232 : vec4<f32> = u_xlat0;
  let x_235 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_231 * vec4<f32>(x_232.x, x_232.x, x_232.x, x_232.x)) + x_235);
  let x_241 : vec4<f32> = u_xlat7;
  let x_243 : vec4<f32> = x_184.unity_MatrixVP[3i];
  gl_Position = (x_241 + x_243);
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_248.y, x_248.z, x_248.x) * vec3<f32>(x_250.z, x_250.x, x_250.y));
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat5;
  let x_258 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_253.z, x_253.x, x_253.y) * vec3<f32>(x_255.y, x_255.z, x_255.x)) + -(x_258));
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec4<f32> = u_xlat5;
  let x_265 : vec3<f32> = (vec3<f32>(x_261.z, x_261.x, x_261.y) * vec3<f32>(x_263.y, x_263.z, x_263.x));
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = u_xlat5;
  let x_273 : vec4<f32> = u_xlat2;
  let x_276 : vec3<f32> = ((vec3<f32>(x_268.y, x_268.z, x_268.x) * vec3<f32>(x_270.z, x_270.x, x_270.y)) + -(vec3<f32>(x_273.x, x_273.y, x_273.z)));
  let x_277 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : f32 = u_xlat25;
  u_xlat25 = (1.0f / x_285);
  let x_287 : vec3<f32> = u_xlat8;
  let x_288 : f32 = u_xlat25;
  u_xlat8 = (x_287 * vec3<f32>(x_288, x_288, x_288));
  let x_293 : vec3<f32> = in_NORMAL0;
  let x_294 : vec3<f32> = u_xlat8;
  u_xlat5.y = dot(x_293, x_294);
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat8 = (vec3<f32>(x_297.y, x_297.z, x_297.x) * vec3<f32>(x_299.z, x_299.x, x_299.y));
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_302.y, x_302.z, x_302.x) * vec3<f32>(x_304.z, x_304.x, x_304.y)) + -(x_307));
  let x_310 : f32 = u_xlat25;
  let x_312 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_310, x_310, x_310) * x_312);
  let x_314 : f32 = u_xlat25;
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec3<f32> = (vec3<f32>(x_314, x_314, x_314) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec3<f32> = in_NORMAL0;
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_321, vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : vec3<f32> = in_NORMAL0;
  let x_327 : vec3<f32> = u_xlat8;
  u_xlat5.z = dot(x_326, x_327);
  let x_330 : vec4<f32> = u_xlat5;
  let x_332 : vec4<f32> = u_xlat5;
  u_xlat8.x = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_337 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_337);
  let x_340 : vec3<f32> = u_xlat8;
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_340.x, x_340.x, x_340.x) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_347 : vec3<f32> = u_xlat8;
  vs_TEXCOORD0 = x_347;
  let x_349 : vec4<f32> = u_xlat6;
  vs_TEXCOORD1 = vec3<f32>(x_349.x, x_349.y, x_349.z);
  let x_351 : vec4<f32> = u_xlat6;
  let x_355 : vec4<f32> = x_184.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_351.x, x_351.x, x_351.x, x_351.x)) + x_355);
  let x_357 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = x_184.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_357.y, x_357.y, x_357.y, x_357.y)) + x_361);
  let x_363 : vec4<f32> = u_xlat6;
  let x_367 : vec4<f32> = x_184.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_363.z, x_363.z, x_363.z, x_363.z)) + x_367);
  let x_370 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_370 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_376 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_376, x_376, x_376, x_376) * x_378) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_384 : f32 = u_xlat2.w;
  u_xlatu25 = (bitcast<u32>(x_384) & 255u);
  let x_388 : u32 = u_xlatu25;
  u_xlat7.x = f32(x_388);
  let x_395 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_395);
  param_1 = 8i;
  param_2 = 8i;
  let x_400 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_402 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_402);
  param_4 = 16i;
  param_5 = 8i;
  let x_408 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu2 = vec2<u32>(x_400, x_408);
  let x_411 : f32 = u_xlat2.w;
  u_xlatu25 = (bitcast<u32>(x_411) >> 24u);
  let x_415 : u32 = u_xlatu25;
  u_xlat7.w = f32(x_415);
  let x_418 : vec2<u32> = u_xlatu2;
  let x_420 : vec2<f32> = vec2<f32>(x_418);
  let x_421 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_421.x, x_420.x, x_420.y, x_421.w);
  let x_423 : vec4<f32> = u_xlat6;
  let x_424 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_423 * x_424);
  let x_427 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_427 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_432 : f32 = u_xlat1.x;
  let x_434 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat25 = (x_432 / x_434);
  let x_436 : f32 = u_xlat25;
  u_xlat25 = floor(x_436);
  let x_438 : f32 = u_xlat25;
  let x_441 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_444 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_438) * x_441) + x_444);
  let x_448 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_448);
  let x_452 : f32 = u_xlat1.x;
  let x_454 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_452 * x_454);
  let x_458 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_458) + 1.0f);
  let x_462 : f32 = u_xlat25;
  let x_465 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_468 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_462) * x_465) + x_468);
  let x_473 : vec2<f32> = in_TEXCOORD0;
  let x_475 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_478 : vec4<f32> = u_xlat2;
  let x_480 : vec2<f32> = ((x_473 * vec2<f32>(x_475.z, x_475.w)) + vec2<f32>(x_478.x, x_478.y));
  let x_481 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_480.x, x_481.y, x_481.z, x_480.y);
  let x_487 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb2 = !((x_487 == 0.0f));
  let x_490 : bool = u_xlatb2;
  if (x_490) {
    let x_495 : vec4<f32> = u_xlat1;
    x_492 = vec2<f32>(x_495.x, x_495.w);
  } else {
    let x_498 : vec2<f32> = in_TEXCOORD0;
    x_492 = x_498;
  }
  let x_499 : vec2<f32> = x_492;
  let x_500 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_499.x, x_500.y, x_500.z, x_499.y);
  let x_504 : vec4<f32> = u_xlat1;
  let x_508 : vec4<f32> = x_184.x_MainTex_ST;
  let x_512 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_504.x, x_504.w) * vec2<f32>(x_508.x, x_508.y)) + vec2<f32>(x_512.z, x_512.w));
  let x_515 : f32 = u_xlat17;
  let x_517 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat1.x = (x_515 * x_517);
  let x_520 : f32 = u_xlat17;
  let x_523 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_525 : vec3<f32> = (vec3<f32>(x_520, x_520, x_520) * vec3<f32>(x_523.x, x_523.y, x_523.w));
  let x_526 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_529 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_531 : vec3<f32> = u_xlat9;
  let x_534 : vec4<f32> = u_xlat2;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.x, x_529.y, x_529.w) * vec3<f32>(x_531.x, x_531.x, x_531.x)) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_540 : f32 = x_184.unity_MatrixV[0i].z;
  let x_542 : f32 = u_xlat9.x;
  let x_545 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_540 * x_542) + x_545);
  let x_549 : f32 = x_184.unity_MatrixV[2i].z;
  let x_551 : f32 = u_xlat0.x;
  let x_554 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_549 * x_551) + x_554);
  let x_558 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_560 : vec4<f32> = u_xlat0;
  let x_563 : vec4<f32> = u_xlat2;
  u_xlat9 = ((vec3<f32>(x_558.x, x_558.y, x_558.w) * vec3<f32>(x_560.x, x_560.x, x_560.x)) + vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec3<f32> = u_xlat9;
  let x_568 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat9 = (x_566 + vec3<f32>(x_568.x, x_568.y, x_568.w));
  let x_572 : f32 = u_xlat1.x;
  let x_574 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat0.x = (x_572 + x_574);
  let x_580 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_580);
  let x_585 : f32 = u_xlat9.y;
  let x_587 : f32 = x_184.x_ProjectionParams.x;
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
  let x_648 : vec4<f32> = x_184.unity_4LightAtten0;
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
  let x_665 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_667 : vec3<f32> = (vec3<f32>(x_662.y, x_662.y, x_662.y) * vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_671 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_673 : vec4<f32> = u_xlat1;
  let x_676 : vec4<f32> = u_xlat2;
  let x_678 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(x_673.x, x_673.x, x_673.x)) + vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_682 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_684 : vec4<f32> = u_xlat1;
  let x_687 : vec4<f32> = u_xlat2;
  let x_689 : vec3<f32> = ((vec3<f32>(x_682.x, x_682.y, x_682.z) * vec3<f32>(x_684.z, x_684.z, x_684.z)) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_693 : vec4<f32> = x_184.unity_LightColor[3i];
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
  let x_725 : vec4<f32> = x_184.unity_SHBr;
  let x_726 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_725, x_726);
  let x_730 : vec4<f32> = x_184.unity_SHBg;
  let x_731 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_730, x_731);
  let x_735 : vec4<f32> = x_184.unity_SHBb;
  let x_736 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_735, x_736);
  let x_740 : vec4<f32> = x_184.unity_SHC;
  let x_742 : vec4<f32> = u_xlat0;
  let x_745 : vec4<f32> = u_xlat3;
  let x_747 : vec3<f32> = ((vec3<f32>(x_740.x, x_740.y, x_740.z) * vec3<f32>(x_742.x, x_742.x, x_742.x)) + vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_751 : vec4<f32> = u_xlat0;
  let x_753 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(x_753.x, x_753.y, x_753.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_759 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_759);
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

