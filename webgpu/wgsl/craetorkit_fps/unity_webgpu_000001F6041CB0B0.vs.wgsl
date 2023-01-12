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

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_49 : UnityDrawCallInfo;

@group(0) @binding(7) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_184 : VGlobals;

var<private> vs_TEXCOORD4 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

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
  var u_xlat24 : f32;
  var u_xlatu24 : u32;
  var u_xlatu9 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb24 : bool;
  var x_502 : vec2<f32>;
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
  u_xlat0 = ((x_231 * vec4<f32>(x_232.x, x_232.x, x_232.x, x_232.x)) + x_235);
  let x_237 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat0 = (x_237 + x_239);
  let x_245 : vec4<f32> = u_xlat0;
  gl_Position = x_245;
  let x_251 : f32 = u_xlat0.z;
  vs_TEXCOORD4 = x_251;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat5;
  let x_256 : vec3<f32> = (vec3<f32>(x_252.y, x_252.z, x_252.x) * vec3<f32>(x_254.z, x_254.x, x_254.y));
  let x_257 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec4<f32> = u_xlat5;
  let x_264 : vec4<f32> = u_xlat0;
  let x_267 : vec3<f32> = ((vec3<f32>(x_259.z, x_259.x, x_259.y) * vec3<f32>(x_261.y, x_261.z, x_261.x)) + -(vec3<f32>(x_264.x, x_264.y, x_264.z)));
  let x_268 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat3;
  let x_272 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_270.z, x_270.x, x_270.y) * vec3<f32>(x_272.y, x_272.z, x_272.x));
  let x_275 : vec4<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat5;
  let x_280 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_275.y, x_275.z, x_275.x) * vec3<f32>(x_277.z, x_277.x, x_277.y)) + -(x_280));
  let x_284 : vec4<f32> = u_xlat4;
  let x_286 : vec3<f32> = u_xlat9;
  u_xlat24 = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), x_286);
  let x_288 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_288);
  let x_290 : f32 = u_xlat24;
  let x_292 : vec4<f32> = u_xlat0;
  let x_294 : vec3<f32> = (vec3<f32>(x_290, x_290, x_290) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_299 : vec3<f32> = in_NORMAL0;
  let x_300 : vec4<f32> = u_xlat0;
  u_xlat0.y = dot(x_299, vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_304 : vec4<f32> = u_xlat3;
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.y, x_304.z, x_304.x) * vec3<f32>(x_306.z, x_306.x, x_306.y));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = u_xlat3;
  let x_316 : vec4<f32> = u_xlat2;
  let x_319 : vec3<f32> = ((vec3<f32>(x_311.y, x_311.z, x_311.x) * vec3<f32>(x_313.z, x_313.x, x_313.y)) + -(vec3<f32>(x_316.x, x_316.y, x_316.z)));
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : f32 = u_xlat24;
  let x_324 : vec4<f32> = u_xlat2;
  let x_326 : vec3<f32> = (vec3<f32>(x_322, x_322, x_322) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : f32 = u_xlat24;
  let x_331 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_329, x_329, x_329) * x_331);
  let x_333 : vec3<f32> = in_NORMAL0;
  let x_334 : vec3<f32> = u_xlat9;
  u_xlat0.x = dot(x_333, x_334);
  let x_337 : vec3<f32> = in_NORMAL0;
  let x_338 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(x_337, vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_342 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat24 = dot(vec3<f32>(x_342.x, x_342.y, x_342.z), vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_347);
  let x_349 : f32 = u_xlat24;
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = (vec3<f32>(x_349, x_349, x_349) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_358 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_358.x, x_358.y, x_358.z);
  let x_361 : vec4<f32> = u_xlat6;
  vs_TEXCOORD1 = vec3<f32>(x_361.x, x_361.y, x_361.z);
  let x_363 : vec4<f32> = u_xlat6;
  let x_367 : vec4<f32> = x_184.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_363.x, x_363.x, x_363.x, x_363.x)) + x_367);
  let x_369 : vec4<f32> = u_xlat6;
  let x_373 : vec4<f32> = x_184.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_369.y, x_369.y, x_369.y, x_369.y)) + x_373);
  let x_375 : vec4<f32> = u_xlat6;
  let x_379 : vec4<f32> = x_184.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_375.z, x_375.z, x_375.z, x_375.z)) + x_379);
  let x_382 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_382 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_388 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_388, x_388, x_388, x_388) * x_390) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_396 : f32 = u_xlat2.w;
  u_xlatu24 = (bitcast<u32>(x_396) & 255u);
  let x_400 : u32 = u_xlatu24;
  u_xlat7.x = f32(x_400);
  let x_407 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_407);
  param_1 = 8i;
  param_2 = 8i;
  let x_412 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_414 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_414);
  param_4 = 16i;
  param_5 = 8i;
  let x_420 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu9 = vec2<u32>(x_412, x_420);
  let x_423 : f32 = u_xlat2.w;
  u_xlatu24 = (bitcast<u32>(x_423) >> 24u);
  let x_427 : u32 = u_xlatu24;
  u_xlat7.w = f32(x_427);
  let x_430 : vec2<u32> = u_xlatu9;
  let x_432 : vec2<f32> = vec2<f32>(x_430);
  let x_433 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_433.x, x_432.x, x_432.y, x_433.w);
  let x_435 : vec4<f32> = u_xlat6;
  let x_436 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_435 * x_436);
  let x_439 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_439 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_444 : f32 = u_xlat1.x;
  let x_446 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat24 = (x_444 / x_446);
  let x_448 : f32 = u_xlat24;
  u_xlat24 = floor(x_448);
  let x_450 : f32 = u_xlat24;
  let x_453 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_456 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_450) * x_453) + x_456);
  let x_460 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_460);
  let x_464 : f32 = u_xlat1.x;
  let x_466 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_464 * x_466);
  let x_470 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat17 = (-(x_470) + 1.0f);
  let x_473 : f32 = u_xlat24;
  let x_476 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_478 : f32 = u_xlat17;
  u_xlat1.y = ((-(x_473) * x_476) + x_478);
  let x_483 : vec2<f32> = in_TEXCOORD0;
  let x_485 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_488 : vec4<f32> = u_xlat1;
  let x_490 : vec2<f32> = ((x_483 * vec2<f32>(x_485.z, x_485.w)) + vec2<f32>(x_488.x, x_488.y));
  let x_491 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_497 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb24 = !((x_497 == 0.0f));
  let x_500 : bool = u_xlatb24;
  if (x_500) {
    let x_505 : vec4<f32> = u_xlat1;
    x_502 = vec2<f32>(x_505.x, x_505.y);
  } else {
    let x_508 : vec2<f32> = in_TEXCOORD0;
    x_502 = x_508;
  }
  let x_509 : vec2<f32> = x_502;
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_514 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = x_184.x_MainTex_ST;
  let x_521 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_514.x, x_514.y) * vec2<f32>(x_517.x, x_517.y)) + vec2<f32>(x_521.z, x_521.w));
  let x_524 : vec4<f32> = u_xlat0;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_524.y, x_524.y, x_524.y, x_524.y) * x_526);
  let x_528 : vec4<f32> = u_xlat4;
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_528 * x_529);
  let x_531 : vec4<f32> = u_xlat3;
  let x_532 : vec4<f32> = u_xlat3;
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_531 * x_532) + x_534);
  let x_536 : vec4<f32> = u_xlat3;
  let x_537 : vec4<f32> = u_xlat0;
  let x_540 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_536 * vec4<f32>(x_537.x, x_537.x, x_537.x, x_537.x)) + x_540);
  let x_542 : vec4<f32> = u_xlat5;
  let x_543 : vec4<f32> = u_xlat0;
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_542 * vec4<f32>(x_543.z, x_543.z, x_543.z, x_543.z)) + x_546);
  let x_548 : vec4<f32> = u_xlat5;
  let x_549 : vec4<f32> = u_xlat5;
  let x_551 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_548 * x_549) + x_551);
  let x_553 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_553, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_557 : vec4<f32> = u_xlat2;
  u_xlat3 = inverseSqrt(x_557);
  let x_559 : vec4<f32> = u_xlat2;
  let x_561 : vec4<f32> = x_184.unity_4LightAtten0;
  u_xlat2 = ((x_559 * x_561) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_564 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_564);
  let x_566 : vec4<f32> = u_xlat1;
  let x_567 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_566 * x_567);
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_569, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_572 : vec4<f32> = u_xlat2;
  let x_573 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_572 * x_573);
  let x_575 : vec4<f32> = u_xlat1;
  let x_578 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_580 : vec3<f32> = (vec3<f32>(x_575.y, x_575.y, x_575.y) * vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_586 : vec4<f32> = u_xlat1;
  let x_589 : vec4<f32> = u_xlat2;
  let x_591 : vec3<f32> = ((vec3<f32>(x_584.x, x_584.y, x_584.z) * vec3<f32>(x_586.x, x_586.x, x_586.x)) + vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_595 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_597 : vec4<f32> = u_xlat1;
  let x_600 : vec4<f32> = u_xlat2;
  let x_602 : vec3<f32> = ((vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_597.z, x_597.z, x_597.z)) + vec3<f32>(x_600.x, x_600.y, x_600.z));
  let x_603 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_606 : vec4<f32> = x_184.unity_LightColor[3i];
  let x_608 : vec4<f32> = u_xlat1;
  let x_611 : vec4<f32> = u_xlat1;
  let x_613 : vec3<f32> = ((vec3<f32>(x_606.x, x_606.y, x_606.z) * vec3<f32>(x_608.w, x_608.w, x_608.w)) + vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_614 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_617 : f32 = u_xlat0.y;
  let x_619 : f32 = u_xlat0.y;
  u_xlat24 = (x_617 * x_619);
  let x_622 : f32 = u_xlat0.x;
  let x_624 : f32 = u_xlat0.x;
  let x_626 : f32 = u_xlat24;
  u_xlat24 = ((x_622 * x_624) + -(x_626));
  let x_629 : vec4<f32> = u_xlat0;
  let x_631 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_629.y, x_629.z, x_629.z, x_629.x) * vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.z));
  let x_635 : vec4<f32> = x_184.unity_SHBr;
  let x_636 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(x_635, x_636);
  let x_640 : vec4<f32> = x_184.unity_SHBg;
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(x_640, x_641);
  let x_645 : vec4<f32> = x_184.unity_SHBb;
  let x_646 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(x_645, x_646);
  let x_650 : vec4<f32> = x_184.unity_SHC;
  let x_652 : f32 = u_xlat24;
  let x_655 : vec4<f32> = u_xlat0;
  let x_657 : vec3<f32> = ((vec3<f32>(x_650.x, x_650.y, x_650.z) * vec3<f32>(x_652, x_652, x_652)) + vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_661 : vec4<f32> = u_xlat0;
  let x_663 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_661.x, x_661.y, x_661.z) + vec3<f32>(x_663.x, x_663.y, x_663.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_670 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_670);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(5)
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
  return main_out(gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3);
}

