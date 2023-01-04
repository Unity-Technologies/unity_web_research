struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_VelocityTex_TexelSize : vec2<f32>,
  x_NeighborMaxTex_TexelSize : vec2<f32>,
  x_MaxBlurRadius : f32,
  x_LoopCount : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(3) var x_NeighborMaxTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_NeighborMaxTex : sampler;

var<private> u_xlat19 : f32;

var<private> u_xlatb28 : bool;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(2) var x_VelocityTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_VelocityTex : sampler;

var<private> u_xlat28 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_220 : vec2<f32>;
  var x_332 : vec2<f32>;
  var x_347 : f32;
  var x_507 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_26 : vec2<f32> = vs_TEXCOORD0;
  let x_30 : vec2<f32> = (x_26 + vec2<f32>(2.0f, 0.0f));
  let x_31 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_30.x, x_30.y, x_31.z, x_31.w);
  let x_33 : vec4<f32> = u_xlat1;
  let x_42 : vec4<f32> = x_37.x_ScreenParams;
  let x_44 : vec2<f32> = (vec2<f32>(x_33.x, x_33.y) * vec2<f32>(x_42.x, x_42.y));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_45.z, x_45.w);
  let x_47 : vec4<f32> = u_xlat1;
  let x_49 : vec2<f32> = floor(vec2<f32>(x_47.x, x_47.y));
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_49.x, x_49.y, x_50.z, x_50.w);
  let x_55 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec2<f32>(0.067110561f, 0.00583715f), vec2<f32>(x_55.x, x_55.y));
  let x_63 : f32 = u_xlat1.x;
  u_xlat1.x = fract(x_63);
  let x_67 : f32 = u_xlat1.x;
  u_xlat1.x = (x_67 * 52.982917786f);
  let x_72 : f32 = u_xlat1.x;
  u_xlat1.x = fract(x_72);
  let x_76 : f32 = u_xlat1.x;
  u_xlat1.x = (x_76 * 6.283185482f);
  let x_82 : f32 = u_xlat1.x;
  u_xlat2.x = cos(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat1.x = sin(x_86);
  let x_90 : f32 = u_xlat1.x;
  u_xlat2.y = x_90;
  let x_93 : vec4<f32> = u_xlat2;
  let x_98 : f32 = x_37.x_NeighborMaxTex_TexelSize.x;
  let x_100 : f32 = x_37.x_NeighborMaxTex_TexelSize.y;
  let x_102 : vec2<f32> = (vec2<f32>(x_93.x, x_93.y) * vec2<f32>(x_98, x_100));
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat1;
  let x_110 : vec2<f32> = vs_TEXCOORD0;
  let x_111 : vec2<f32> = ((vec2<f32>(x_105.x, x_105.y) * vec2<f32>(0.25f, 0.25f)) + x_110);
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_119 : vec4<f32> = u_xlat1;
  let x_121 : vec4<f32> = textureSample(x_NeighborMaxTex, sampler_NeighborMaxTex, vec2<f32>(x_119.x, x_119.y));
  let x_122 : vec2<f32> = vec2<f32>(x_121.x, x_121.y);
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_123.w);
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat19 = dot(vec2<f32>(x_126.x, x_126.y), vec2<f32>(x_128.x, x_128.y));
  let x_131 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_131);
  let x_136 : f32 = u_xlat19;
  u_xlatb28 = (x_136 < 2.0f);
  let x_138 : bool = u_xlatb28;
  if (x_138) {
    let x_143 : vec4<f32> = u_xlat0;
    SV_Target0 = x_143;
    return;
  }
  let x_150 : vec2<f32> = vs_TEXCOORD0;
  let x_151 : vec4<f32> = textureSampleLevel(x_VelocityTex, sampler_VelocityTex, x_150, 0.0f);
  let x_153 : vec3<f32> = vec3<f32>(x_151.x, x_151.y, x_151.z);
  let x_154 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat2;
  let x_162 : vec2<f32> = ((vec2<f32>(x_156.x, x_156.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_162.x, x_162.y, x_163.z, x_163.w);
  let x_165 : vec4<f32> = u_xlat2;
  let x_169 : f32 = x_37.x_MaxBlurRadius;
  let x_171 : vec2<f32> = (vec2<f32>(x_165.x, x_165.y) * vec2<f32>(x_169, x_169));
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_171.x, x_171.y, x_172.z, x_172.w);
  let x_175 : vec4<f32> = u_xlat2;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec2<f32>(x_175.x, x_175.y), vec2<f32>(x_177.x, x_177.y));
  let x_180 : f32 = u_xlat28;
  u_xlat28 = sqrt(x_180);
  let x_184 : f32 = u_xlat28;
  let x_189 : vec2<f32> = max(vec2<f32>(x_184, x_184), vec2<f32>(0.5f, 1.0f));
  let x_190 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_189.x, x_189.y, x_190.z);
  let x_194 : f32 = u_xlat2.z;
  u_xlat28 = (1.0f / x_194);
  let x_198 : f32 = u_xlat3.x;
  let x_200 : f32 = u_xlat3.x;
  u_xlat29 = (x_198 + x_200);
  let x_203 : f32 = u_xlat19;
  let x_204 : f32 = u_xlat29;
  u_xlatb29 = (x_203 < x_204);
  let x_206 : f32 = u_xlat19;
  let x_208 : f32 = u_xlat3.x;
  u_xlat3.x = (x_206 / x_208);
  let x_211 : vec4<f32> = u_xlat2;
  let x_213 : vec3<f32> = u_xlat3;
  let x_215 : vec2<f32> = (vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_213.x, x_213.x));
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_215.x, x_215.y, x_216.z, x_216.w);
  let x_218 : bool = u_xlatb29;
  if (x_218) {
    let x_223 : vec4<f32> = u_xlat2;
    x_220 = vec2<f32>(x_223.x, x_223.y);
  } else {
    let x_226 : vec4<f32> = u_xlat1;
    x_220 = vec2<f32>(x_226.x, x_226.y);
  }
  let x_228 : vec2<f32> = x_220;
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_228.x, x_228.y, x_229.z, x_229.w);
  let x_231 : f32 = u_xlat19;
  u_xlat29 = (x_231 * 0.5f);
  let x_233 : f32 = u_xlat29;
  let x_236 : f32 = x_37.x_LoopCount;
  u_xlat29 = min(x_233, x_236);
  let x_238 : f32 = u_xlat29;
  u_xlat29 = floor(x_238);
  let x_240 : f32 = u_xlat29;
  u_xlat3.x = (1.0f / x_240);
  let x_245 : vec2<f32> = vs_TEXCOORD0;
  let x_247 : vec4<f32> = x_37.x_ScreenParams;
  u_xlat21 = (x_245 * vec2<f32>(x_247.x, x_247.y));
  let x_250 : vec2<f32> = u_xlat21;
  u_xlat21 = floor(x_250);
  let x_252 : vec2<f32> = u_xlat21;
  u_xlat21.x = dot(vec2<f32>(0.067110561f, 0.00583715f), x_252);
  let x_256 : f32 = u_xlat21.x;
  u_xlat3.z = fract(x_256);
  let x_259 : vec3<f32> = u_xlat3;
  u_xlat21 = (vec2<f32>(x_259.z, x_259.x) * vec2<f32>(52.982917786f, 0.25f));
  let x_264 : f32 = u_xlat21.x;
  u_xlat21.x = fract(x_264);
  let x_268 : f32 = u_xlat21.x;
  u_xlat21.x = (x_268 + -0.5f);
  let x_274 : f32 = u_xlat3.x;
  u_xlat4 = ((-(x_274) * 0.5f) + 1.0f);
  u_xlat5.w = 1.0f;
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlat6.w = 0.0f;
  let x_287 : f32 = u_xlat4;
  u_xlat13 = x_287;
  u_xlat22 = 0.0f;
  let x_291 : f32 = u_xlat3.y;
  u_xlat31 = x_291;
  loop {
    if (true) {
    } else {
      break;
    }
    let x_302 : f32 = u_xlat21.y;
    let x_303 : f32 = u_xlat13;
    u_xlatb7.x = (x_302 >= x_303);
    let x_307 : bool = u_xlatb7.x;
    if (x_307) {
      break;
    }
    let x_312 : f32 = u_xlat22;
    let x_315 : vec2<f32> = (vec2<f32>(x_312, x_312) * vec2<f32>(0.25f, 0.5f));
    let x_316 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_315.x, x_315.y, x_316.z);
    let x_318 : vec3<f32> = u_xlat7;
    let x_320 : vec2<f32> = fract(vec2<f32>(x_318.x, x_318.y));
    let x_321 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_320.x, x_320.y, x_321.z);
    let x_325 : vec3<f32> = u_xlat7;
    let x_328 : vec4<bool> = (vec4<f32>(0.499000013f, 0.499000013f, 0.0f, 0.0f) < vec4<f32>(x_325.x, x_325.y, x_325.x, x_325.x));
    u_xlatb7 = vec2<bool>(x_328.x, x_328.y);
    let x_331 : bool = u_xlatb7.x;
    if (x_331) {
      let x_335 : vec4<f32> = u_xlat2;
      x_332 = vec2<f32>(x_335.x, x_335.y);
    } else {
      let x_338 : vec4<f32> = u_xlat1;
      x_332 = vec2<f32>(x_338.x, x_338.y);
    }
    let x_340 : vec2<f32> = x_332;
    let x_341 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_340.x, x_341.y, x_340.y);
    let x_345 : bool = u_xlatb7.y;
    if (x_345) {
      let x_350 : f32 = u_xlat13;
      x_347 = -(x_350);
    } else {
      let x_353 : f32 = u_xlat13;
      x_347 = x_353;
    }
    let x_354 : f32 = x_347;
    u_xlat34 = x_354;
    let x_356 : f32 = u_xlat21.x;
    let x_358 : f32 = u_xlat3.x;
    let x_360 : f32 = u_xlat34;
    u_xlat34 = ((x_356 * x_358) + x_360);
    let x_362 : f32 = u_xlat34;
    let x_364 : vec3<f32> = u_xlat7;
    let x_366 : vec2<f32> = (vec2<f32>(x_362, x_362) * vec2<f32>(x_364.x, x_364.z));
    let x_367 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_366.x, x_367.y, x_366.y);
    let x_370 : vec3<f32> = u_xlat7;
    let x_374 : vec4<f32> = x_37.x_MainTex_TexelSize;
    let x_377 : vec2<f32> = vs_TEXCOORD0;
    let x_378 : vec2<f32> = ((vec2<f32>(x_370.x, x_370.z) * vec2<f32>(x_374.x, x_374.y)) + x_377);
    let x_379 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_378.x, x_378.y, x_379.z);
    let x_381 : vec3<f32> = u_xlat7;
    let x_386 : vec2<f32> = x_37.x_VelocityTex_TexelSize;
    let x_388 : vec2<f32> = vs_TEXCOORD0;
    let x_389 : vec2<f32> = ((vec2<f32>(x_381.x, x_381.z) * x_386) + x_388);
    let x_390 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_389.x, x_390.y, x_389.y);
    let x_395 : vec3<f32> = u_xlat8;
    let x_397 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_395.x, x_395.y), 0.0f);
    let x_398 : vec3<f32> = vec3<f32>(x_397.x, x_397.y, x_397.z);
    let x_399 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
    let x_404 : vec3<f32> = u_xlat7;
    let x_406 : vec4<f32> = textureSampleLevel(x_VelocityTex, sampler_VelocityTex, vec2<f32>(x_404.x, x_404.z), 0.0f);
    u_xlat8 = vec3<f32>(x_406.x, x_406.y, x_406.z);
    let x_408 : vec3<f32> = u_xlat8;
    let x_411 : vec2<f32> = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
    let x_412 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_411.x, x_412.y, x_411.y);
    let x_414 : vec3<f32> = u_xlat7;
    let x_417 : f32 = x_37.x_MaxBlurRadius;
    let x_419 : vec2<f32> = (vec2<f32>(x_414.x, x_414.z) * vec2<f32>(x_417, x_417));
    let x_420 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_419.x, x_420.y, x_419.y);
    let x_423 : f32 = u_xlat2.z;
    let x_425 : f32 = u_xlat8.z;
    u_xlat8.x = (x_423 + -(x_425));
    let x_429 : f32 = u_xlat28;
    let x_431 : f32 = u_xlat8.x;
    u_xlat8.x = (x_429 * x_431);
    let x_435 : f32 = u_xlat8.x;
    u_xlat8.x = (x_435 * 20.0f);
    let x_440 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_440, 0.0f, 1.0f);
    let x_443 : vec3<f32> = u_xlat7;
    let x_445 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(vec2<f32>(x_443.x, x_443.z), vec2<f32>(x_445.x, x_445.z));
    let x_450 : f32 = u_xlat7.x;
    u_xlat7.x = sqrt(x_450);
    let x_453 : f32 = u_xlat31;
    let x_456 : f32 = u_xlat7.x;
    u_xlat7.x = (-(x_453) + x_456);
    let x_460 : f32 = u_xlat8.x;
    let x_462 : f32 = u_xlat7.x;
    let x_464 : f32 = u_xlat31;
    u_xlat7.x = ((x_460 * x_462) + x_464);
    let x_468 : f32 = u_xlat19;
    let x_470 : f32 = u_xlat34;
    let x_474 : f32 = u_xlat7.x;
    u_xlat25 = ((-(x_468) * abs(x_470)) + x_474);
    let x_476 : f32 = u_xlat25;
    u_xlat25 = clamp(x_476, 0.0f, 1.0f);
    let x_478 : f32 = u_xlat25;
    let x_480 : f32 = u_xlat7.x;
    u_xlat25 = (x_478 / x_480);
    let x_482 : f32 = u_xlat13;
    u_xlat34 = (-(x_482) + 1.200000048f);
    let x_486 : f32 = u_xlat34;
    let x_487 : f32 = u_xlat25;
    u_xlat25 = (x_486 * x_487);
    let x_489 : vec4<f32> = u_xlat5;
    let x_490 : f32 = u_xlat25;
    let x_493 : vec4<f32> = u_xlat6;
    u_xlat6 = ((x_489 * vec4<f32>(x_490, x_490, x_490, x_490)) + x_493);
    let x_495 : f32 = u_xlat31;
    let x_497 : f32 = u_xlat7.x;
    u_xlat31 = max(x_495, x_497);
    let x_500 : f32 = u_xlat3.x;
    let x_502 : f32 = u_xlat13;
    u_xlat5.x = (-(x_500) + x_502);
    let x_506 : bool = u_xlatb7.y;
    if (x_506) {
      let x_511 : f32 = u_xlat5.x;
      x_507 = x_511;
    } else {
      let x_513 : f32 = u_xlat13;
      x_507 = x_513;
    }
    let x_514 : f32 = x_507;
    u_xlat13 = x_514;
    let x_515 : f32 = u_xlat22;
    u_xlat22 = (x_515 + 1.0f);
  }
  let x_517 : f32 = u_xlat31;
  let x_519 : f32 = u_xlat29;
  u_xlat1.x = dot(vec2<f32>(x_517, x_517), vec2<f32>(x_519, x_519));
  let x_524 : f32 = u_xlat1.x;
  u_xlat1.x = (1.200000048f / x_524);
  let x_527 : vec4<f32> = u_xlat0;
  let x_528 : vec3<f32> = vec3<f32>(x_527.x, x_527.y, x_527.z);
  let x_529 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  u_xlat2.w = 1.0f;
  let x_532 : vec4<f32> = u_xlat2;
  let x_533 : vec4<f32> = u_xlat1;
  let x_536 : vec4<f32> = u_xlat6;
  u_xlat1 = ((x_532 * vec4<f32>(x_533.x, x_533.x, x_533.x, x_533.x)) + x_536);
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat1;
  let x_542 : vec3<f32> = (vec3<f32>(x_538.x, x_538.y, x_538.z) / vec3<f32>(x_540.w, x_540.w, x_540.w));
  let x_543 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_546 : f32 = u_xlat0.w;
  SV_Target0.w = x_546;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

