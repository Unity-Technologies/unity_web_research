struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_DitheringTex : sampler;

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
  var x_363 : f32;
  var x_375 : f32;
  var x_388 : f32;
  var x_440 : f32;
  var x_453 : f32;
  var x_465 : f32;
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
  let x_272 : vec2<f32> = vs_TEXCOORD0;
  let x_275 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_279 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_281 : vec2<f32> = ((x_272 * vec2<f32>(x_275.x, x_275.y)) + vec2<f32>(x_279.z, x_279.w));
  let x_282 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_290.x, x_290.y));
  u_xlat12 = x_292.w;
  let x_294 : f32 = u_xlat12;
  u_xlat12 = ((x_294 * 2.0f) + -1.0f);
  let x_298 : f32 = u_xlat12;
  u_xlat1.x = ((x_298 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_304 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_304, 0.0f, 1.0f);
  let x_308 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_308 * 2.0f) + -1.0f);
  let x_312 : f32 = u_xlat12;
  u_xlat12 = (-(abs(x_312)) + 1.0f);
  let x_316 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_316);
  let x_318 : f32 = u_xlat12;
  u_xlat12 = (-(x_318) + 1.0f);
  let x_321 : f32 = u_xlat12;
  let x_323 : f32 = u_xlat1.x;
  u_xlat12 = (x_321 * x_323);
  let x_325 : vec3<f32> = u_xlat0;
  let x_328 : vec3<f32> = (x_325 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_331), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_336 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_336);
  let x_338 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_338 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_342 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_342);
  let x_344 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_344 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_356 : vec3<f32> = u_xlat0;
  let x_359 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_356.x, x_356.y, x_356.z, x_356.x));
  u_xlatb0 = vec3<bool>(x_359.x, x_359.y, x_359.z);
  let x_362 : bool = u_xlatb0.x;
  if (x_362) {
    let x_367 : f32 = u_xlat1.x;
    x_363 = x_367;
  } else {
    let x_370 : f32 = u_xlat2.x;
    x_363 = x_370;
  }
  let x_371 : f32 = x_363;
  u_xlat0.x = x_371;
  let x_374 : bool = u_xlatb0.y;
  if (x_374) {
    let x_379 : f32 = u_xlat1.y;
    x_375 = x_379;
  } else {
    let x_382 : f32 = u_xlat2.y;
    x_375 = x_382;
  }
  let x_383 : f32 = x_375;
  u_xlat0.y = x_383;
  let x_387 : bool = u_xlatb0.z;
  if (x_387) {
    let x_392 : f32 = u_xlat1.z;
    x_388 = x_392;
  } else {
    let x_395 : f32 = u_xlat2.z;
    x_388 = x_395;
  }
  let x_396 : f32 = x_388;
  u_xlat0.z = x_396;
  let x_398 : f32 = u_xlat12;
  let x_403 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_398, x_398, x_398) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_403);
  let x_405 : vec3<f32> = u_xlat0;
  let x_408 : vec3<f32> = (x_405 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_411 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_415 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_415 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_419 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_419), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_422 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_422);
  let x_424 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_424 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_428 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_428);
  let x_432 : vec3<f32> = u_xlat0;
  let x_434 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_432.x, x_432.y, x_432.z, x_432.x));
  u_xlatb0 = vec3<bool>(x_434.x, x_434.y, x_434.z);
  let x_439 : bool = u_xlatb0.x;
  if (x_439) {
    let x_444 : f32 = u_xlat1.x;
    x_440 = x_444;
  } else {
    let x_447 : f32 = u_xlat2.x;
    x_440 = x_447;
  }
  let x_448 : f32 = x_440;
  SV_Target0.x = x_448;
  let x_452 : bool = u_xlatb0.y;
  if (x_452) {
    let x_457 : f32 = u_xlat1.y;
    x_453 = x_457;
  } else {
    let x_460 : f32 = u_xlat2.y;
    x_453 = x_460;
  }
  let x_461 : f32 = x_453;
  SV_Target0.y = x_461;
  let x_464 : bool = u_xlatb0.z;
  if (x_464) {
    let x_469 : f32 = u_xlat1.z;
    x_465 = x_469;
  } else {
    let x_472 : f32 = u_xlat2.z;
    x_465 = x_472;
  }
  let x_473 : f32 = x_465;
  SV_Target0.z = x_473;
  let x_476 : f32 = u_xlat1.w;
  SV_Target0.w = x_476;
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

