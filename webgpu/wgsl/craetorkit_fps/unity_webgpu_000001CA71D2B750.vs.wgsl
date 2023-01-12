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
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_LightShadowBias : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_ParticleUVShiftData : vec4<f32>,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

@group(0) @binding(4) var<storage, read> x_31 : unity_ParticleInstanceData;

@group(1) @binding(0) var<uniform> x_51 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlatb21 : bool;
  var x_116 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var x_193 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var x_473 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_32 : i32 = u_xlati0;
  let x_36 : u32 = x_31.unity_ParticleInstanceData_buf[x_32].value[13i];
  u_xlat7.x = bitcast<f32>(x_36);
  let x_43 : f32 = u_xlat7.x;
  u_xlat14 = floor(x_43);
  let x_46 : f32 = u_xlat14;
  let x_56 : f32 = x_51.unity_ParticleUVShiftData.y;
  u_xlat21 = (x_46 / x_56);
  let x_58 : f32 = u_xlat21;
  u_xlat21 = floor(x_58);
  let x_60 : f32 = u_xlat21;
  let x_63 : f32 = x_51.unity_ParticleUVShiftData.y;
  let x_65 : f32 = u_xlat14;
  u_xlat14 = ((-(x_60) * x_63) + x_65);
  let x_67 : f32 = u_xlat14;
  u_xlat14 = floor(x_67);
  let x_71 : f32 = u_xlat14;
  let x_74 : f32 = x_51.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_71 * x_74);
  let x_79 : f32 = x_51.unity_ParticleUVShiftData.w;
  u_xlat14 = (-(x_79) + 1.0f);
  let x_83 : f32 = u_xlat21;
  let x_86 : f32 = x_51.unity_ParticleUVShiftData.w;
  let x_88 : f32 = u_xlat14;
  u_xlat1.y = ((-(x_83) * x_86) + x_88);
  let x_94 : vec2<f32> = in_TEXCOORD0;
  let x_97 : vec4<f32> = x_51.unity_ParticleUVShiftData;
  let x_100 : vec4<f32> = u_xlat1;
  let x_102 : vec2<f32> = ((x_94 * vec2<f32>(x_97.z, x_97.w)) + vec2<f32>(x_100.x, x_100.y));
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_109 : f32 = x_51.unity_ParticleUVShiftData.x;
  u_xlatb21 = !((x_109 == 0.0f));
  let x_114 : bool = u_xlatb21;
  if (x_114) {
    let x_119 : vec4<f32> = u_xlat1;
    x_116 = vec2<f32>(x_119.x, x_119.y);
  } else {
    let x_122 : vec2<f32> = in_TEXCOORD0;
    x_116 = x_122;
  }
  let x_123 : vec2<f32> = x_116;
  vs_TEXCOORD1 = x_123;
  let x_125 : f32 = u_xlat7.x;
  u_xlat1.x = (x_125 + 1.0f);
  let x_130 : f32 = u_xlat7.x;
  u_xlat2.z = fract(x_130);
  let x_134 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_134);
  let x_138 : f32 = u_xlat7.x;
  let x_140 : f32 = x_51.unity_ParticleUVShiftData.y;
  u_xlat1.x = (x_138 / x_140);
  let x_144 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_144);
  let x_148 : f32 = u_xlat1.x;
  let x_151 : f32 = x_51.unity_ParticleUVShiftData.y;
  let x_154 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_148) * x_151) + x_154);
  let x_158 : f32 = u_xlat1.x;
  let x_161 : f32 = x_51.unity_ParticleUVShiftData.w;
  let x_163 : f32 = u_xlat14;
  u_xlat1.y = ((-(x_158) * x_161) + x_163);
  let x_167 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_167);
  let x_171 : f32 = u_xlat7.x;
  let x_173 : f32 = x_51.unity_ParticleUVShiftData.z;
  u_xlat1.x = (x_171 * x_173);
  let x_176 : vec2<f32> = in_TEXCOORD0;
  let x_178 : vec4<f32> = x_51.unity_ParticleUVShiftData;
  let x_181 : vec4<f32> = u_xlat1;
  let x_183 : vec2<f32> = ((x_176 * vec2<f32>(x_178.z, x_178.w)) + vec2<f32>(x_181.x, x_181.y));
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_183.x, x_183.y, x_184.z, x_184.w);
  let x_186 : vec2<f32> = in_TEXCOORD0;
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_186.x, x_186.y, x_187.z, x_187.w);
  u_xlat1.z = 0.0f;
  let x_192 : bool = u_xlatb21;
  if (x_192) {
    let x_196 : vec4<f32> = u_xlat2;
    x_193 = vec3<f32>(x_196.x, x_196.y, x_196.z);
  } else {
    let x_199 : vec4<f32> = u_xlat1;
    x_193 = vec3<f32>(x_199.x, x_199.y, x_199.z);
  }
  let x_201 : vec3<f32> = x_193;
  vs_TEXCOORD2 = x_201;
  let x_206 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD3 = x_206;
  let x_207 : i32 = u_xlati0;
  let x_210 : u32 = x_31.unity_ParticleInstanceData_buf[x_207].value[7i];
  let x_212 : i32 = u_xlati0;
  let x_215 : u32 = x_31.unity_ParticleInstanceData_buf[x_212].value[8i];
  let x_217 : i32 = u_xlati0;
  let x_220 : u32 = x_31.unity_ParticleInstanceData_buf[x_217].value[6i];
  let x_222 : vec3<f32> = vec3<f32>(bitcast<f32>(x_210), bitcast<f32>(x_215), bitcast<f32>(x_220));
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : f32 = u_xlat1.y;
  u_xlat2.z = x_226;
  let x_229 : i32 = u_xlati0;
  let x_232 : u32 = x_31.unity_ParticleInstanceData_buf[x_229].value[1i];
  let x_234 : i32 = u_xlati0;
  let x_236 : u32 = x_31.unity_ParticleInstanceData_buf[x_234].value[0i];
  let x_238 : i32 = u_xlati0;
  let x_241 : u32 = x_31.unity_ParticleInstanceData_buf[x_238].value[2i];
  let x_243 : vec3<f32> = vec3<f32>(bitcast<f32>(x_232), bitcast<f32>(x_236), bitcast<f32>(x_241));
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : f32 = u_xlat3.z;
  u_xlat2.x = x_247;
  let x_249 : i32 = u_xlati0;
  let x_251 : u32 = x_31.unity_ParticleInstanceData_buf[x_249].value[3i];
  let x_253 : i32 = u_xlati0;
  let x_256 : u32 = x_31.unity_ParticleInstanceData_buf[x_253].value[4i];
  let x_258 : i32 = u_xlati0;
  let x_261 : u32 = x_31.unity_ParticleInstanceData_buf[x_258].value[5i];
  u_xlat7 = vec3<f32>(bitcast<f32>(x_251), bitcast<f32>(x_256), bitcast<f32>(x_261));
  let x_265 : i32 = u_xlati0;
  let x_268 : u32 = x_31.unity_ParticleInstanceData_buf[x_265].value[9i];
  let x_270 : i32 = u_xlati0;
  let x_273 : u32 = x_31.unity_ParticleInstanceData_buf[x_270].value[10i];
  let x_275 : i32 = u_xlati0;
  let x_278 : u32 = x_31.unity_ParticleInstanceData_buf[x_275].value[11i];
  u_xlat4 = vec3<f32>(bitcast<f32>(x_268), bitcast<f32>(x_273), bitcast<f32>(x_278));
  let x_282 : f32 = u_xlat7.z;
  u_xlat2.y = x_282;
  let x_285 : f32 = u_xlat1.x;
  u_xlat3.z = x_285;
  let x_288 : f32 = u_xlat3.y;
  u_xlat1.x = x_288;
  let x_291 : f32 = u_xlat7.x;
  u_xlat1.y = x_291;
  let x_294 : f32 = u_xlat7.y;
  u_xlat3.y = x_294;
  let x_297 : vec4<f32> = u_xlat2;
  let x_299 : vec4<f32> = u_xlat1;
  let x_301 : vec3<f32> = (vec3<f32>(x_297.z, x_297.x, x_297.y) * vec3<f32>(x_299.y, x_299.z, x_299.x));
  let x_302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat1;
  let x_306 : vec4<f32> = u_xlat2;
  let x_309 : vec4<f32> = u_xlat0;
  let x_312 : vec3<f32> = ((vec3<f32>(x_304.z, x_304.x, x_304.y) * vec3<f32>(x_306.y, x_306.z, x_306.x)) + -(vec3<f32>(x_309.x, x_309.y, x_309.z)));
  let x_313 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec3<f32>(x_316.y, x_316.z, x_316.x) * vec3<f32>(x_318.z, x_318.x, x_318.y));
  let x_321 : vec4<f32> = u_xlat3;
  let x_323 : vec4<f32> = u_xlat2;
  let x_326 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_321.y, x_321.z, x_321.x) * vec3<f32>(x_323.z, x_323.x, x_323.y)) + -(x_326));
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), x_331);
  let x_333 : f32 = u_xlat21;
  u_xlat21 = (1.0f / x_333);
  let x_335 : f32 = u_xlat21;
  let x_337 : vec4<f32> = u_xlat0;
  let x_339 : vec3<f32> = (vec3<f32>(x_335, x_335, x_335) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_344 : vec3<f32> = in_NORMAL0;
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat0.y = dot(x_344, vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_350 : vec4<f32> = u_xlat1;
  let x_352 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_350.z, x_350.x, x_350.y) * vec3<f32>(x_352.y, x_352.z, x_352.x));
  let x_355 : vec4<f32> = u_xlat1;
  let x_357 : vec4<f32> = u_xlat3;
  let x_360 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_355.y, x_355.z, x_355.x) * vec3<f32>(x_357.z, x_357.x, x_357.y)) + -(x_360));
  let x_363 : f32 = u_xlat21;
  let x_365 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_363, x_363, x_363) * x_365);
  let x_367 : f32 = u_xlat21;
  let x_369 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_371 : vec3<f32> = in_NORMAL0;
  let x_372 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_371, x_372);
  let x_375 : vec3<f32> = in_NORMAL0;
  let x_376 : vec3<f32> = u_xlat6;
  u_xlat0.z = dot(x_375, x_376);
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_379.x, x_379.y, x_379.z), vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_384);
  let x_386 : f32 = u_xlat21;
  let x_388 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = (vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : f32 = u_xlat4.x;
  u_xlat1.w = x_394;
  let x_396 : vec4<f32> = u_xlat1;
  let x_398 : vec4<f32> = in_POSITION0;
  u_xlat1.x = dot(x_396, x_398);
  let x_402 : f32 = u_xlat4.y;
  u_xlat3.w = x_402;
  let x_405 : f32 = u_xlat4.z;
  u_xlat2.w = x_405;
  let x_407 : vec4<f32> = u_xlat2;
  let x_408 : vec4<f32> = in_POSITION0;
  u_xlat1.z = dot(x_407, x_408);
  let x_411 : vec4<f32> = u_xlat3;
  let x_412 : vec4<f32> = in_POSITION0;
  u_xlat1.y = dot(x_411, x_412);
  let x_415 : vec4<f32> = u_xlat1;
  let x_419 : vec4<f32> = x_51.x_WorldSpaceLightPos0;
  let x_423 : vec4<f32> = x_51.x_WorldSpaceLightPos0;
  let x_425 : vec3<f32> = ((-(vec3<f32>(x_415.x, x_415.y, x_415.z)) * vec3<f32>(x_419.w, x_419.w, x_419.w)) + vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat2;
  let x_430 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_433);
  let x_435 : f32 = u_xlat21;
  let x_437 : vec4<f32> = u_xlat2;
  let x_439 : vec3<f32> = (vec3<f32>(x_435, x_435, x_435) * vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat0;
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_442.x, x_442.y, x_442.z), vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : f32 = u_xlat21;
  let x_449 : f32 = u_xlat21;
  u_xlat21 = ((-(x_447) * x_449) + 1.0f);
  let x_452 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_452);
  let x_454 : f32 = u_xlat21;
  let x_456 : f32 = x_51.unity_LightShadowBias.z;
  u_xlat21 = (x_454 * x_456);
  let x_458 : vec4<f32> = u_xlat0;
  let x_461 : f32 = u_xlat21;
  let x_464 : vec4<f32> = u_xlat1;
  let x_466 : vec3<f32> = ((-(vec3<f32>(x_458.x, x_458.y, x_458.z)) * vec3<f32>(x_461, x_461, x_461)) + vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_470 : f32 = x_51.unity_LightShadowBias.z;
  u_xlatb21 = !((x_470 == 0.0f));
  let x_472 : bool = u_xlatb21;
  if (x_472) {
    let x_476 : vec4<f32> = u_xlat0;
    x_473 = vec3<f32>(x_476.x, x_476.y, x_476.z);
  } else {
    let x_479 : vec4<f32> = u_xlat1;
    x_473 = vec3<f32>(x_479.x, x_479.y, x_479.z);
  }
  let x_481 : vec3<f32> = x_473;
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat0;
  let x_487 : vec4<f32> = x_51.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_484.y, x_484.y, x_484.y, x_484.y) * x_487);
  let x_490 : vec4<f32> = x_51.unity_MatrixVP[0i];
  let x_491 : vec4<f32> = u_xlat0;
  let x_494 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_490 * vec4<f32>(x_491.x, x_491.x, x_491.x, x_491.x)) + x_494);
  let x_497 : vec4<f32> = x_51.unity_MatrixVP[2i];
  let x_498 : vec4<f32> = u_xlat0;
  let x_501 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_497 * vec4<f32>(x_498.z, x_498.z, x_498.z, x_498.z)) + x_501);
  let x_504 : vec4<f32> = x_51.unity_MatrixVP[3i];
  let x_505 : vec4<f32> = in_POSITION0;
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_504 * vec4<f32>(x_505.w, x_505.w, x_505.w, x_505.w)) + x_508);
  let x_511 : f32 = u_xlat0.w;
  let x_513 : f32 = u_xlat0.z;
  u_xlat1.x = min(x_511, x_513);
  let x_517 : f32 = u_xlat0.z;
  let x_520 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_517) + x_520);
  let x_528 : f32 = x_51.unity_LightShadowBias.y;
  let x_530 : f32 = u_xlat1.x;
  let x_533 : f32 = u_xlat0.z;
  gl_Position.z = ((x_528 * x_530) + x_533);
  let x_537 : vec4<f32> = u_xlat0;
  let x_538 : vec3<f32> = vec3<f32>(x_537.x, x_537.y, x_537.w);
  let x_540 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_538.x, x_538.y, x_540.z, x_538.z);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(3) in_TEXCOORD0_param : vec2<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, gl_Position);
}

