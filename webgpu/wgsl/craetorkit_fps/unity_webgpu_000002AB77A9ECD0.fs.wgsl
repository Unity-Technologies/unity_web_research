struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb5 : bool;
  var u_xlat5 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : f32;
  var u_xlat9 : f32;
  var u_xlat13 : f32;
  var u_xlat6 : f32;
  var u_xlat10 : f32;
  var u_xlatb14 : bool;
  var u_xlatb1 : bool;
  var x_221 : f32;
  var u_xlat12 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_431 : f32;
  var x_443 : f32;
  var x_456 : f32;
  var x_508 : f32;
  var x_521 : f32;
  var x_533 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_81);
  let x_83 : bool = u_xlatb5;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat5 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat5.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat5.x;
    u_xlat3 = cos(x_100);
    let x_103 : f32 = u_xlat2.x;
    let x_104 : f32 = u_xlat3;
    u_xlat5.x = (x_103 / x_104);
    let x_111 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_111);
    let x_114 : f32 = u_xlat5.x;
    let x_115 : f32 = u_xlat9;
    u_xlat5.x = ((x_114 * x_115) + -1.0f);
    let x_120 : vec3<f32> = u_xlat0;
    let x_122 : vec2<f32> = u_xlat5;
    let x_125 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.x)) + x_125);
  } else {
    let x_130 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_130);
    let x_132 : f32 = u_xlat13;
    let x_134 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat13 = (x_132 * x_134);
    let x_137 : f32 = u_xlat1.x;
    let x_139 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_137 * x_139);
    let x_143 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_143), 1.0f);
    let x_149 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_149), 1.0f);
    let x_152 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_152);
    let x_154 : f32 = u_xlat6;
    let x_156 : f32 = u_xlat2.x;
    u_xlat2.x = (x_154 * x_156);
    let x_160 : f32 = u_xlat2.x;
    let x_162 : f32 = u_xlat2.x;
    u_xlat6 = (x_160 * x_162);
    let x_165 : f32 = u_xlat6;
    u_xlat10 = ((x_165 * 0.0208351f) + -0.085133001f);
    let x_170 : f32 = u_xlat6;
    let x_171 : f32 = u_xlat10;
    u_xlat10 = ((x_170 * x_171) + 0.180141002f);
    let x_175 : f32 = u_xlat6;
    let x_176 : f32 = u_xlat10;
    u_xlat10 = ((x_175 * x_176) + -0.330299497f);
    let x_180 : f32 = u_xlat6;
    let x_181 : f32 = u_xlat10;
    u_xlat6 = ((x_180 * x_181) + 0.999866009f);
    let x_185 : f32 = u_xlat6;
    let x_187 : f32 = u_xlat2.x;
    u_xlat10 = (x_185 * x_187);
    let x_191 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_191));
    let x_194 : f32 = u_xlat10;
    u_xlat10 = ((x_194 * -2.0f) + 1.570796371f);
    let x_199 : bool = u_xlatb14;
    let x_200 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_200, x_199);
    let x_203 : f32 = u_xlat2.x;
    let x_204 : f32 = u_xlat6;
    let x_206 : f32 = u_xlat10;
    u_xlat2.x = ((x_203 * x_204) + x_206);
    let x_210 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_210, 1.0f);
    let x_215 : f32 = u_xlat1.x;
    let x_217 : f32 = u_xlat1.x;
    u_xlatb1 = (x_215 < -(x_217));
    let x_220 : bool = u_xlatb1;
    if (x_220) {
      let x_225 : f32 = u_xlat2.x;
      x_221 = -(x_225);
    } else {
      let x_229 : f32 = u_xlat2.x;
      x_221 = x_229;
    }
    let x_230 : f32 = x_221;
    u_xlat1.x = x_230;
    let x_232 : f32 = u_xlat13;
    let x_234 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_232 * x_234) + -1.0f);
    let x_238 : vec3<f32> = u_xlat0;
    let x_240 : vec4<f32> = u_xlat1;
    let x_243 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.x, x_240.x)) + x_243);
  }
  let x_256 : vec2<f32> = vs_TEXCOORD0;
  let x_257 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_256);
  u_xlat0.x = x_257.x;
  let x_265 : vec2<f32> = u_xlat5;
  let x_266 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_265);
  u_xlat1 = x_266;
  let x_267 : vec3<f32> = u_xlat0;
  let x_269 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_267.x, x_267.x, x_267.x) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec2<f32> = vs_TEXCOORD1;
  let x_275 : vec4<f32> = x_26.x_Grain_Params2;
  let x_279 : vec4<f32> = x_26.x_Grain_Params2;
  let x_281 : vec2<f32> = ((x_272 * vec2<f32>(x_275.x, x_275.y)) + vec2<f32>(x_279.z, x_279.w));
  let x_282 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_289.x, x_289.y));
  let x_292 : vec3<f32> = vec3<f32>(x_291.x, x_291.y, x_291.z);
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec3<f32> = u_xlat0;
  u_xlat2 = x_295;
  let x_296 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_296, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_301 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_301, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_307 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_307);
  let x_311 : f32 = x_26.x_Grain_Params1.x;
  let x_312 : f32 = u_xlat12;
  u_xlat12 = ((x_311 * -(x_312)) + 1.0f);
  let x_316 : vec3<f32> = u_xlat0;
  let x_317 : vec4<f32> = u_xlat1;
  let x_319 : vec3<f32> = (x_316 * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat1;
  let x_325 : f32 = x_26.x_Grain_Params1.y;
  let x_327 : f32 = x_26.x_Grain_Params1.y;
  let x_329 : f32 = x_26.x_Grain_Params1.y;
  let x_331 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_325, x_327, x_329));
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat1;
  let x_336 : f32 = u_xlat12;
  let x_339 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336, x_336, x_336)) + x_339);
  let x_341 : vec2<f32> = vs_TEXCOORD0;
  let x_344 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_348 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_350 : vec2<f32> = ((x_341 * vec2<f32>(x_344.x, x_344.y)) + vec2<f32>(x_348.z, x_348.w));
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_350.x, x_350.y, x_351.z, x_351.w);
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_358.x, x_358.y));
  u_xlat12 = x_360.w;
  let x_362 : f32 = u_xlat12;
  u_xlat12 = ((x_362 * 2.0f) + -1.0f);
  let x_366 : f32 = u_xlat12;
  u_xlat1.x = ((x_366 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_372 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_372, 0.0f, 1.0f);
  let x_376 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_376 * 2.0f) + -1.0f);
  let x_380 : f32 = u_xlat12;
  u_xlat12 = (-(abs(x_380)) + 1.0f);
  let x_384 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_384);
  let x_386 : f32 = u_xlat12;
  u_xlat12 = (-(x_386) + 1.0f);
  let x_389 : f32 = u_xlat12;
  let x_391 : f32 = u_xlat1.x;
  u_xlat12 = (x_389 * x_391);
  let x_393 : vec3<f32> = u_xlat0;
  let x_396 : vec3<f32> = (x_393 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_397 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_399), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_404 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_404);
  let x_406 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_406 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_410 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_410);
  let x_412 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_412 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_424 : vec3<f32> = u_xlat0;
  let x_427 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_424.x, x_424.y, x_424.z, x_424.x));
  u_xlatb0 = vec3<bool>(x_427.x, x_427.y, x_427.z);
  let x_430 : bool = u_xlatb0.x;
  if (x_430) {
    let x_435 : f32 = u_xlat1.x;
    x_431 = x_435;
  } else {
    let x_438 : f32 = u_xlat2.x;
    x_431 = x_438;
  }
  let x_439 : f32 = x_431;
  u_xlat0.x = x_439;
  let x_442 : bool = u_xlatb0.y;
  if (x_442) {
    let x_447 : f32 = u_xlat1.y;
    x_443 = x_447;
  } else {
    let x_450 : f32 = u_xlat2.y;
    x_443 = x_450;
  }
  let x_451 : f32 = x_443;
  u_xlat0.y = x_451;
  let x_455 : bool = u_xlatb0.z;
  if (x_455) {
    let x_460 : f32 = u_xlat1.z;
    x_456 = x_460;
  } else {
    let x_463 : f32 = u_xlat2.z;
    x_456 = x_463;
  }
  let x_464 : f32 = x_456;
  u_xlat0.z = x_464;
  let x_466 : f32 = u_xlat12;
  let x_471 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_466, x_466, x_466) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_471);
  let x_473 : vec3<f32> = u_xlat0;
  let x_476 : vec3<f32> = (x_473 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_479 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_483 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_483 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_487 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_487), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_490 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_490);
  let x_492 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_492 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_496 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_496);
  let x_500 : vec3<f32> = u_xlat0;
  let x_502 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_500.x, x_500.y, x_500.z, x_500.x));
  u_xlatb0 = vec3<bool>(x_502.x, x_502.y, x_502.z);
  let x_507 : bool = u_xlatb0.x;
  if (x_507) {
    let x_512 : f32 = u_xlat1.x;
    x_508 = x_512;
  } else {
    let x_515 : f32 = u_xlat2.x;
    x_508 = x_515;
  }
  let x_516 : f32 = x_508;
  SV_Target0.x = x_516;
  let x_520 : bool = u_xlatb0.y;
  if (x_520) {
    let x_525 : f32 = u_xlat1.y;
    x_521 = x_525;
  } else {
    let x_528 : f32 = u_xlat2.y;
    x_521 = x_528;
  }
  let x_529 : f32 = x_521;
  SV_Target0.y = x_529;
  let x_532 : bool = u_xlatb0.z;
  if (x_532) {
    let x_537 : f32 = u_xlat1.z;
    x_533 = x_537;
  } else {
    let x_540 : f32 = u_xlat2.z;
    x_533 = x_540;
  }
  let x_541 : f32 = x_533;
  SV_Target0.z = x_541;
  let x_544 : f32 = u_xlat1.w;
  SV_Target0.w = x_544;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

