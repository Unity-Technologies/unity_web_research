struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Chroma_Params : f32,
  @size(12)
  padding_2 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Bloom_Texture_TexelSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlat15 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat23 : f32;
  var u_xlatb3 : vec3<bool>;
  var u_xlatb1 : vec3<bool>;
  var x_224 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat25 : f32;
  var u_xlatb12 : bool;
  var x_443 : f32;
  var x_470 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlatb4 : bool;
  var u_xlatb0 : bool;
  var x_654 : f32;
  var u_xlat17 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1210 : f32;
  var x_1222 : f32;
  var x_1234 : f32;
  var x_1397 : f32;
  var x_1409 : f32;
  var x_1421 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat14 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_44 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb8 = (0.0f < x_81);
  let x_83 : bool = u_xlatb8;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat15 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat15.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat15.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat15.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat15.y;
    u_xlat22 = (1.0f / x_113);
    let x_116 : f32 = u_xlat15.x;
    let x_117 : f32 = u_xlat22;
    u_xlat15.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat15;
    let x_127 : vec2<f32> = u_xlat14;
    u_xlat15 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_131 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_131);
    let x_135 : f32 = u_xlat2.x;
    let x_137 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat2.x = (x_135 * x_137);
    let x_141 : f32 = u_xlat1.x;
    let x_143 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_141 * x_143);
    let x_148 : f32 = u_xlat1.x;
    u_xlat9 = min(abs(x_148), 1.0f);
    let x_153 : f32 = u_xlat1.x;
    u_xlat16 = max(abs(x_153), 1.0f);
    let x_156 : f32 = u_xlat16;
    u_xlat16 = (1.0f / x_156);
    let x_158 : f32 = u_xlat16;
    let x_159 : f32 = u_xlat9;
    u_xlat9 = (x_158 * x_159);
    let x_161 : f32 = u_xlat9;
    let x_162 : f32 = u_xlat9;
    u_xlat16 = (x_161 * x_162);
    let x_165 : f32 = u_xlat16;
    u_xlat23 = ((x_165 * 0.0208351f) + -0.085133001f);
    let x_170 : f32 = u_xlat16;
    let x_171 : f32 = u_xlat23;
    u_xlat23 = ((x_170 * x_171) + 0.180141002f);
    let x_175 : f32 = u_xlat16;
    let x_176 : f32 = u_xlat23;
    u_xlat23 = ((x_175 * x_176) + -0.330299497f);
    let x_180 : f32 = u_xlat16;
    let x_181 : f32 = u_xlat23;
    u_xlat16 = ((x_180 * x_181) + 0.999866009f);
    let x_185 : f32 = u_xlat16;
    let x_186 : f32 = u_xlat9;
    u_xlat23 = (x_185 * x_186);
    let x_192 : f32 = u_xlat1.x;
    u_xlatb3.x = (1.0f < abs(x_192));
    let x_196 : f32 = u_xlat23;
    u_xlat23 = ((x_196 * -2.0f) + 1.570796371f);
    let x_202 : bool = u_xlatb3.x;
    let x_203 : f32 = u_xlat23;
    u_xlat23 = select(0.0f, x_203, x_202);
    let x_205 : f32 = u_xlat9;
    let x_206 : f32 = u_xlat16;
    let x_208 : f32 = u_xlat23;
    u_xlat9 = ((x_205 * x_206) + x_208);
    let x_211 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_211, 1.0f);
    let x_216 : f32 = u_xlat1.x;
    let x_218 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_216 < -(x_218));
    let x_223 : bool = u_xlatb1.x;
    if (x_223) {
      let x_227 : f32 = u_xlat9;
      x_224 = -(x_227);
    } else {
      let x_230 : f32 = u_xlat9;
      x_224 = x_230;
    }
    let x_231 : f32 = x_224;
    u_xlat1.x = x_231;
    let x_234 : f32 = u_xlat2.x;
    let x_236 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_234 * x_236) + -1.0f);
    let x_240 : vec4<f32> = u_xlat0;
    let x_242 : vec3<f32> = u_xlat1;
    let x_245 : vec2<f32> = u_xlat14;
    u_xlat15 = ((vec2<f32>(x_240.x, x_240.y) * vec2<f32>(x_242.x, x_242.x)) + x_245);
  }
  let x_247 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_247.x, x_247.y, x_247.x, x_247.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_254 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_254.z, x_254.w), vec2<f32>(x_256.z, x_256.w));
  let x_260 : vec4<f32> = u_xlat0;
  let x_261 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_260 * vec4<f32>(x_261.x, x_261.x, x_261.x, x_261.x));
  let x_264 : vec4<f32> = u_xlat0;
  let x_267 : f32 = x_25.x_Chroma_Params;
  u_xlat0 = (x_264 * vec4<f32>(x_267, x_267, x_267, x_267));
  let x_280 : vec2<f32> = u_xlat15;
  let x_283 : f32 = x_25.x_GlobalMipBias.x;
  let x_284 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_280, x_283);
  u_xlat2.x = x_284.x;
  let x_287 : vec4<f32> = u_xlat0;
  let x_292 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_287 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_292.x, x_292.y, x_292.x, x_292.y));
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_295 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_298 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat3 = ((x_298 * vec4<f32>(x_300.z, x_300.z, x_300.z, x_300.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_305 : vec4<f32> = u_xlat0;
  let x_307 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_311 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = ((x_305 * vec4<f32>(x_307.z, x_307.z, x_307.z, x_307.z)) + -(vec4<f32>(x_311.x, x_311.y, x_311.x, x_311.y)));
  let x_315 : vec4<f32> = u_xlat0;
  let x_317 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = (x_315 * vec4<f32>(x_317.z, x_317.w, x_317.z, x_317.w));
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
  let x_327 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_327);
  let x_330 : bool = u_xlatb8;
  if (x_330) {
    let x_334 : vec3<f32> = u_xlat1;
    let x_337 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_339 : vec2<f32> = (vec2<f32>(x_334.x, x_334.x) * vec2<f32>(x_337.x, x_337.y));
    let x_340 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_340.z, x_340.w);
    let x_344 : f32 = u_xlat4.x;
    u_xlat5.x = cos(x_344);
    let x_348 : f32 = u_xlat4.x;
    u_xlat4.x = sin(x_348);
    let x_352 : f32 = u_xlat4.x;
    let x_354 : f32 = u_xlat5.x;
    u_xlat23 = (x_352 / x_354);
    let x_357 : f32 = u_xlat4.y;
    u_xlat4.x = (1.0f / x_357);
    let x_360 : f32 = u_xlat23;
    let x_362 : f32 = u_xlat4.x;
    u_xlat23 = ((x_360 * x_362) + -1.0f);
    let x_365 : vec4<f32> = u_xlat0;
    let x_367 : f32 = u_xlat23;
    let x_370 : vec4<f32> = u_xlat3;
    let x_372 : vec2<f32> = ((vec2<f32>(x_365.x, x_365.y) * vec2<f32>(x_367, x_367)) + vec2<f32>(x_370.x, x_370.y));
    let x_373 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
  } else {
    let x_377 : f32 = u_xlat1.x;
    u_xlat23 = (1.0f / x_377);
    let x_379 : f32 = u_xlat23;
    let x_381 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat23 = (x_379 * x_381);
    let x_384 : f32 = u_xlat1.x;
    let x_386 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_384 * x_386);
    let x_391 : f32 = u_xlat1.x;
    u_xlat18 = min(abs(x_391), 1.0f);
    let x_396 : f32 = u_xlat1.x;
    u_xlat25 = max(abs(x_396), 1.0f);
    let x_399 : f32 = u_xlat25;
    u_xlat25 = (1.0f / x_399);
    let x_401 : f32 = u_xlat25;
    let x_402 : f32 = u_xlat18;
    u_xlat18 = (x_401 * x_402);
    let x_404 : f32 = u_xlat18;
    let x_405 : f32 = u_xlat18;
    u_xlat25 = (x_404 * x_405);
    let x_407 : f32 = u_xlat25;
    u_xlat5.x = ((x_407 * 0.0208351f) + -0.085133001f);
    let x_411 : f32 = u_xlat25;
    let x_413 : f32 = u_xlat5.x;
    u_xlat5.x = ((x_411 * x_413) + 0.180141002f);
    let x_417 : f32 = u_xlat25;
    let x_419 : f32 = u_xlat5.x;
    u_xlat5.x = ((x_417 * x_419) + -0.330299497f);
    let x_423 : f32 = u_xlat25;
    let x_425 : f32 = u_xlat5.x;
    u_xlat25 = ((x_423 * x_425) + 0.999866009f);
    let x_428 : f32 = u_xlat25;
    let x_429 : f32 = u_xlat18;
    u_xlat5.x = (x_428 * x_429);
    let x_434 : f32 = u_xlat1.x;
    u_xlatb12 = (1.0f < abs(x_434));
    let x_438 : f32 = u_xlat5.x;
    u_xlat5.x = ((x_438 * -2.0f) + 1.570796371f);
    let x_442 : bool = u_xlatb12;
    if (x_442) {
      let x_447 : f32 = u_xlat5.x;
      x_443 = x_447;
    } else {
      x_443 = 0.0f;
    }
    let x_449 : f32 = x_443;
    u_xlat5.x = x_449;
    let x_451 : f32 = u_xlat18;
    let x_452 : f32 = u_xlat25;
    let x_455 : f32 = u_xlat5.x;
    u_xlat18 = ((x_451 * x_452) + x_455);
    let x_458 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_458, 1.0f);
    let x_462 : f32 = u_xlat1.x;
    let x_464 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_462 < -(x_464));
    let x_469 : bool = u_xlatb1.x;
    if (x_469) {
      let x_473 : f32 = u_xlat18;
      x_470 = -(x_473);
    } else {
      let x_476 : f32 = u_xlat18;
      x_470 = x_476;
    }
    let x_477 : f32 = x_470;
    u_xlat1.x = x_477;
    let x_479 : f32 = u_xlat23;
    let x_481 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_479 * x_481) + -1.0f);
    let x_485 : vec4<f32> = u_xlat0;
    let x_487 : vec3<f32> = u_xlat1;
    let x_490 : vec4<f32> = u_xlat3;
    let x_492 : vec2<f32> = ((vec2<f32>(x_485.x, x_485.y) * vec2<f32>(x_487.x, x_487.x)) + vec2<f32>(x_490.x, x_490.y));
    let x_493 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
  }
  let x_498 : vec4<f32> = u_xlat4;
  let x_501 : f32 = x_25.x_GlobalMipBias.x;
  let x_502 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_498.x, x_498.y), x_501);
  u_xlat2.y = x_502.y;
  let x_505 : vec4<f32> = u_xlat0;
  let x_507 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_505.z, x_505.w), vec2<f32>(x_507.z, x_507.w));
  let x_512 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_512);
  let x_515 : bool = u_xlatb8;
  if (x_515) {
    let x_518 : vec4<f32> = u_xlat0;
    let x_521 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_523 : vec2<f32> = (vec2<f32>(x_518.x, x_518.x) * vec2<f32>(x_521.x, x_521.y));
    let x_524 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_523.x, x_523.y, x_524.z);
    let x_527 : f32 = u_xlat1.x;
    u_xlat3.x = cos(x_527);
    let x_531 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_531);
    let x_536 : f32 = u_xlat1.x;
    let x_538 : f32 = u_xlat3.x;
    u_xlat7.x = (x_536 / x_538);
    let x_542 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_542);
    let x_546 : f32 = u_xlat7.x;
    let x_548 : f32 = u_xlat1.x;
    u_xlat7.x = ((x_546 * x_548) + -1.0f);
    let x_552 : vec4<f32> = u_xlat0;
    let x_554 : vec3<f32> = u_xlat7;
    let x_557 : vec4<f32> = u_xlat3;
    let x_559 : vec2<f32> = ((vec2<f32>(x_552.z, x_552.w) * vec2<f32>(x_554.x, x_554.x)) + vec2<f32>(x_557.z, x_557.w));
    let x_560 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_559.x, x_559.y, x_560.z);
  } else {
    let x_564 : f32 = u_xlat0.x;
    u_xlat7.x = (1.0f / x_564);
    let x_568 : f32 = u_xlat7.x;
    let x_570 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat7.x = (x_568 * x_570);
    let x_574 : f32 = u_xlat0.x;
    let x_576 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat0.x = (x_574 * x_576);
    let x_580 : f32 = u_xlat0.x;
    u_xlat23 = min(abs(x_580), 1.0f);
    let x_584 : f32 = u_xlat0.x;
    u_xlat3.x = max(abs(x_584), 1.0f);
    let x_589 : f32 = u_xlat3.x;
    u_xlat3.x = (1.0f / x_589);
    let x_592 : f32 = u_xlat23;
    let x_594 : f32 = u_xlat3.x;
    u_xlat23 = (x_592 * x_594);
    let x_596 : f32 = u_xlat23;
    let x_597 : f32 = u_xlat23;
    u_xlat3.x = (x_596 * x_597);
    let x_602 : f32 = u_xlat3.x;
    u_xlat10 = ((x_602 * 0.0208351f) + -0.085133001f);
    let x_606 : f32 = u_xlat3.x;
    let x_607 : f32 = u_xlat10;
    u_xlat10 = ((x_606 * x_607) + 0.180141002f);
    let x_611 : f32 = u_xlat3.x;
    let x_612 : f32 = u_xlat10;
    u_xlat10 = ((x_611 * x_612) + -0.330299497f);
    let x_616 : f32 = u_xlat3.x;
    let x_617 : f32 = u_xlat10;
    u_xlat3.x = ((x_616 * x_617) + 0.999866009f);
    let x_621 : f32 = u_xlat23;
    let x_623 : f32 = u_xlat3.x;
    u_xlat10 = (x_621 * x_623);
    let x_627 : f32 = u_xlat0.x;
    u_xlatb4 = (1.0f < abs(x_627));
    let x_630 : f32 = u_xlat10;
    u_xlat10 = ((x_630 * -2.0f) + 1.570796371f);
    let x_633 : bool = u_xlatb4;
    let x_634 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_634, x_633);
    let x_636 : f32 = u_xlat23;
    let x_638 : f32 = u_xlat3.x;
    let x_640 : f32 = u_xlat10;
    u_xlat23 = ((x_636 * x_638) + x_640);
    let x_643 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_643, 1.0f);
    let x_648 : f32 = u_xlat0.x;
    let x_650 : f32 = u_xlat0.x;
    u_xlatb0 = (x_648 < -(x_650));
    let x_653 : bool = u_xlatb0;
    if (x_653) {
      let x_657 : f32 = u_xlat23;
      x_654 = -(x_657);
    } else {
      let x_660 : f32 = u_xlat23;
      x_654 = x_660;
    }
    let x_661 : f32 = x_654;
    u_xlat0.x = x_661;
    let x_664 : f32 = u_xlat7.x;
    let x_666 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_664 * x_666) + -1.0f);
    let x_670 : vec4<f32> = u_xlat0;
    let x_672 : vec4<f32> = u_xlat0;
    let x_675 : vec4<f32> = u_xlat3;
    let x_677 : vec2<f32> = ((vec2<f32>(x_670.z, x_670.w) * vec2<f32>(x_672.x, x_672.x)) + vec2<f32>(x_675.z, x_675.w));
    let x_678 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_677.x, x_677.y, x_678.z);
  }
  let x_683 : vec3<f32> = u_xlat1;
  let x_686 : f32 = x_25.x_GlobalMipBias.x;
  let x_687 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_683.x, x_683.y), x_686);
  u_xlat2.z = x_687.z;
  let x_691 : vec2<f32> = u_xlat15;
  let x_694 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  let x_697 : vec2<f32> = ((x_691 * vec2<f32>(x_694.z, x_694.w)) + vec2<f32>(0.5f, 0.5f));
  let x_698 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
  let x_700 : vec4<f32> = u_xlat0;
  u_xlat14 = floor(vec2<f32>(x_700.x, x_700.y));
  let x_703 : vec4<f32> = u_xlat0;
  let x_705 : vec2<f32> = fract(vec2<f32>(x_703.x, x_703.y));
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat0;
  u_xlat3 = ((-(vec4<f32>(x_708.x, x_708.y, x_708.x, x_708.y)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_715 : vec4<f32> = u_xlat0;
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_715.x, x_715.y, x_715.x, x_715.y) * x_717) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_721 : vec4<f32> = u_xlat0;
  let x_725 : vec2<f32> = ((vec2<f32>(x_721.x, x_721.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_726 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_725.x, x_725.y, x_726.z);
  let x_728 : vec4<f32> = u_xlat0;
  let x_730 : vec4<f32> = u_xlat0;
  let x_732 : vec2<f32> = (vec2<f32>(x_728.x, x_728.y) * vec2<f32>(x_730.x, x_730.y));
  let x_733 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_732.x, x_732.y, x_733.z, x_733.w);
  let x_735 : vec4<f32> = u_xlat4;
  let x_737 : vec3<f32> = u_xlat1;
  let x_742 : vec2<f32> = ((vec2<f32>(x_735.x, x_735.y) * vec2<f32>(x_737.x, x_737.y)) + vec2<f32>(0.666666687f, 0.666666687f));
  let x_743 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_742.x, x_742.y, x_743.z);
  let x_745 : vec4<f32> = u_xlat0;
  let x_747 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_745.x, x_745.y, x_745.x, x_745.y) * x_747) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
  let x_751 : vec3<f32> = u_xlat1;
  let x_755 : vec2<f32> = (-(vec2<f32>(x_751.x, x_751.y)) + vec2<f32>(1.0f, 1.0f));
  let x_756 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat3;
  let x_761 : vec4<f32> = u_xlat0;
  let x_763 : vec2<f32> = (-(vec2<f32>(x_758.x, x_758.y)) + vec2<f32>(x_761.x, x_761.y));
  let x_764 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat3;
  let x_769 : vec4<f32> = u_xlat0;
  let x_771 : vec2<f32> = (-(vec2<f32>(x_766.z, x_766.w)) + vec2<f32>(x_769.x, x_769.y));
  let x_772 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
  let x_775 : vec3<f32> = u_xlat1;
  let x_777 : vec4<f32> = u_xlat3;
  u_xlat17 = (vec2<f32>(x_775.x, x_775.y) + vec2<f32>(x_777.z, x_777.w));
  let x_780 : vec4<f32> = u_xlat0;
  let x_782 : vec4<f32> = u_xlat3;
  let x_784 : vec2<f32> = (vec2<f32>(x_780.x, x_780.y) + vec2<f32>(x_782.x, x_782.y));
  let x_785 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
  let x_787 : vec2<f32> = u_xlat17;
  let x_791 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_787.x, x_787.y));
  let x_792 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_792.w);
  let x_794 : vec3<f32> = u_xlat1;
  let x_796 : vec4<f32> = u_xlat4;
  let x_799 : vec2<f32> = ((vec2<f32>(x_794.x, x_794.y) * vec2<f32>(x_796.x, x_796.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_800 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_800.x, x_800.y, x_799.x, x_799.y);
  let x_802 : vec4<f32> = u_xlat3;
  let x_803 : vec2<f32> = vec2<f32>(x_802.x, x_802.y);
  let x_807 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_803.x, x_803.y));
  let x_808 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_807.x, x_807.y, x_808.z);
  let x_810 : vec4<f32> = u_xlat0;
  let x_812 : vec3<f32> = u_xlat1;
  let x_815 : vec2<f32> = ((vec2<f32>(x_810.x, x_810.y) * vec2<f32>(x_812.x, x_812.y)) + vec2<f32>(1.0f, 1.0f));
  let x_816 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
  let x_818 : vec2<f32> = u_xlat14;
  let x_820 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_818.x, x_818.y, x_818.x, x_818.y) + vec4<f32>(x_820.z, x_820.w, x_820.x, x_820.w));
  let x_823 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_823 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_825 : vec4<f32> = u_xlat5;
  let x_827 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_825 * vec4<f32>(x_827.x, x_827.y, x_827.x, x_827.y));
  let x_830 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_830, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_838 : vec4<f32> = u_xlat5;
  let x_840 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_838.x, x_838.y), 0.0f);
  u_xlat6 = x_840;
  let x_844 : vec4<f32> = u_xlat5;
  let x_846 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_844.z, x_844.w), 0.0f);
  u_xlat5 = x_846;
  let x_847 : vec4<f32> = u_xlat3;
  let x_849 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_847.x, x_847.x, x_847.x, x_847.x) * x_849);
  let x_851 : vec2<f32> = u_xlat17;
  let x_853 : vec4<f32> = u_xlat6;
  let x_855 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_851.x, x_851.x, x_851.x, x_851.x) * x_853) + x_855);
  let x_857 : vec2<f32> = u_xlat14;
  let x_859 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec4<f32>(x_857.x, x_857.y, x_857.x, x_857.y) + vec4<f32>(x_859.z, x_859.y, x_859.x, x_859.y));
  let x_862 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_862 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_864 : vec4<f32> = u_xlat0;
  let x_866 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat0 = (x_864 * vec4<f32>(x_866.x, x_866.y, x_866.x, x_866.y));
  let x_869 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_869, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_874 : vec4<f32> = u_xlat0;
  let x_876 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_874.x, x_874.y), 0.0f);
  u_xlat4 = x_876;
  let x_880 : vec4<f32> = u_xlat0;
  let x_882 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_880.z, x_880.w), 0.0f);
  u_xlat0 = x_882;
  let x_883 : vec4<f32> = u_xlat0;
  let x_884 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_883 * vec4<f32>(x_884.x, x_884.x, x_884.x, x_884.x));
  let x_887 : vec2<f32> = u_xlat17;
  let x_889 : vec4<f32> = u_xlat4;
  let x_891 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_887.x, x_887.x, x_887.x, x_887.x) * x_889) + x_891);
  let x_893 : vec4<f32> = u_xlat0;
  let x_894 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_893 * vec4<f32>(x_894.y, x_894.y, x_894.y, x_894.y));
  let x_897 : vec2<f32> = u_xlat17;
  let x_899 : vec4<f32> = u_xlat5;
  let x_901 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_897.y, x_897.y, x_897.y, x_897.y) * x_899) + x_901);
  let x_905 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_905);
  let x_909 : bool = u_xlatb1.x;
  if (x_909) {
    let x_912 : vec4<f32> = u_xlat0;
    let x_914 : vec4<f32> = u_xlat0;
    let x_916 : vec3<f32> = (vec3<f32>(x_912.w, x_912.w, x_912.w) * vec3<f32>(x_914.x, x_914.y, x_914.z));
    let x_917 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
    let x_919 : vec4<f32> = u_xlat3;
    let x_923 : vec3<f32> = (vec3<f32>(x_919.x, x_919.y, x_919.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_924 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  }
  let x_926 : vec4<f32> = u_xlat0;
  let x_930 : vec4<f32> = x_25.x_Bloom_Params;
  let x_932 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(x_930.x, x_930.x, x_930.x));
  let x_933 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec4<f32> = u_xlat0;
  let x_938 : vec4<f32> = x_25.x_Bloom_Params;
  let x_941 : vec4<f32> = u_xlat2;
  let x_943 : vec3<f32> = ((vec3<f32>(x_935.x, x_935.y, x_935.z) * vec3<f32>(x_938.y, x_938.z, x_938.w)) + vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_944 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_949 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_949);
  let x_951 : bool = u_xlatb21;
  if (x_951) {
    let x_954 : vec2<f32> = u_xlat15;
    let x_956 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_959 : vec2<f32> = (x_954 + -(vec2<f32>(x_956.x, x_956.y)));
    let x_960 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_959.x, x_959.y, x_960.z);
    let x_962 : vec3<f32> = u_xlat1;
    let x_966 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_968 : vec2<f32> = (abs(vec2<f32>(x_962.x, x_962.y)) * vec2<f32>(x_966.z, x_966.z));
    let x_969 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_969.x, x_968.x, x_968.y);
    let x_972 : f32 = u_xlat1.y;
    let x_975 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_972 * x_975);
    let x_979 : vec3<f32> = u_xlat1;
    let x_981 : vec3<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_979.x, x_979.z), vec2<f32>(x_981.x, x_981.z));
    let x_984 : f32 = u_xlat21;
    u_xlat21 = (-(x_984) + 1.0f);
    let x_987 : f32 = u_xlat21;
    u_xlat21 = max(x_987, 0.0f);
    let x_989 : f32 = u_xlat21;
    u_xlat21 = log2(x_989);
    let x_991 : f32 = u_xlat21;
    let x_993 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_991 * x_993);
    let x_995 : f32 = u_xlat21;
    u_xlat21 = exp2(x_995);
    let x_998 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_998.x, x_998.y, x_998.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1003 : f32 = u_xlat21;
    let x_1005 : vec3<f32> = u_xlat1;
    let x_1008 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_1003, x_1003, x_1003) * x_1005) + vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
    let x_1011 : vec4<f32> = u_xlat0;
    let x_1013 : vec3<f32> = u_xlat1;
    let x_1014 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) * x_1013);
    let x_1015 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  }
  let x_1017 : vec4<f32> = u_xlat0;
  let x_1021 : vec4<f32> = x_25.x_Lut_Params;
  let x_1023 : vec3<f32> = (vec3<f32>(x_1017.z, x_1017.x, x_1017.y) * vec3<f32>(x_1021.w, x_1021.w, x_1021.w));
  let x_1024 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec4<f32> = u_xlat0;
  let x_1033 : vec3<f32> = ((vec3<f32>(x_1026.x, x_1026.y, x_1026.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1034 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1036 : vec4<f32> = u_xlat0;
  let x_1039 : vec3<f32> = max(vec3<f32>(x_1036.x, x_1036.y, x_1036.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1040 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : vec4<f32> = u_xlat0;
  let x_1044 : vec3<f32> = log2(vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
  let x_1045 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat0;
  let x_1054 : vec3<f32> = ((vec3<f32>(x_1047.x, x_1047.y, x_1047.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1055 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1057 : vec4<f32> = u_xlat0;
  let x_1061 : vec3<f32> = clamp(vec3<f32>(x_1057.x, x_1057.y, x_1057.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1062 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1064 : vec4<f32> = u_xlat0;
  let x_1067 : vec4<f32> = x_25.x_Lut_Params;
  u_xlat7 = (vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1067.z, x_1067.z, x_1067.z));
  let x_1071 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_1071);
  let x_1075 : vec4<f32> = x_25.x_Lut_Params;
  let x_1077 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(0.5f, 0.5f));
  let x_1078 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1077.x, x_1077.y, x_1078.z);
  let x_1080 : vec3<f32> = u_xlat7;
  let x_1083 : vec4<f32> = x_25.x_Lut_Params;
  let x_1086 : vec3<f32> = u_xlat1;
  let x_1088 : vec2<f32> = ((vec2<f32>(x_1080.y, x_1080.z) * vec2<f32>(x_1083.x, x_1083.y)) + vec2<f32>(x_1086.x, x_1086.y));
  let x_1089 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1089.x, x_1088.x, x_1088.y);
  let x_1092 : f32 = u_xlat7.x;
  let x_1094 : f32 = x_25.x_Lut_Params.y;
  let x_1097 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1092 * x_1094) + x_1097);
  let x_1104 : vec3<f32> = u_xlat1;
  let x_1106 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1104.x, x_1104.z), 0.0f);
  let x_1107 : vec3<f32> = vec3<f32>(x_1106.x, x_1106.y, x_1106.z);
  let x_1108 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1111 : f32 = x_25.x_Lut_Params.y;
  u_xlat3.x = x_1111;
  u_xlat3.y = 0.0f;
  let x_1114 : vec3<f32> = u_xlat1;
  let x_1116 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec2<f32>(x_1114.x, x_1114.z) + vec2<f32>(x_1116.x, x_1116.y));
  let x_1122 : vec2<f32> = u_xlat14;
  let x_1123 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_1122, 0.0f);
  u_xlat1 = vec3<f32>(x_1123.x, x_1123.y, x_1123.z);
  let x_1126 : f32 = u_xlat0.x;
  let x_1128 : f32 = x_25.x_Lut_Params.z;
  let x_1131 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_1126 * x_1128) + -(x_1131));
  let x_1135 : vec4<f32> = u_xlat2;
  let x_1138 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1135.x, x_1135.y, x_1135.z)) + x_1138);
  let x_1140 : vec4<f32> = u_xlat0;
  let x_1142 : vec3<f32> = u_xlat7;
  let x_1144 : vec4<f32> = u_xlat2;
  let x_1146 : vec3<f32> = ((vec3<f32>(x_1140.x, x_1140.x, x_1140.x) * x_1142) + vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1151 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_1151);
  let x_1153 : bool = u_xlatb21;
  if (x_1153) {
    let x_1156 : vec4<f32> = u_xlat0;
    let x_1157 : vec3<f32> = vec3<f32>(x_1156.x, x_1156.y, x_1156.z);
    let x_1158 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
    let x_1160 : vec4<f32> = u_xlat0;
    let x_1164 : vec3<f32> = clamp(vec3<f32>(x_1160.x, x_1160.y, x_1160.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1165 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
    let x_1167 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_1167.x, x_1167.y, x_1167.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_1172 : vec4<f32> = u_xlat0;
    let x_1174 : vec3<f32> = log2(vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
    let x_1175 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
    let x_1177 : vec4<f32> = u_xlat2;
    let x_1181 : vec3<f32> = (vec3<f32>(x_1177.x, x_1177.y, x_1177.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_1182 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
    let x_1184 : vec4<f32> = u_xlat2;
    let x_1186 : vec3<f32> = exp2(vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
    let x_1187 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
    let x_1189 : vec4<f32> = u_xlat2;
    let x_1196 : vec3<f32> = ((vec3<f32>(x_1189.x, x_1189.y, x_1189.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1197 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
    let x_1201 : vec4<f32> = u_xlat0;
    let x_1204 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1201.x));
    u_xlatb3 = vec3<bool>(x_1204.x, x_1204.y, x_1204.z);
    let x_1207 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_1207;
    let x_1209 : bool = u_xlatb3.x;
    if (x_1209) {
      let x_1214 : f32 = u_xlat1.x;
      x_1210 = x_1214;
    } else {
      let x_1217 : f32 = u_xlat2.x;
      x_1210 = x_1217;
    }
    let x_1218 : f32 = x_1210;
    hlslcc_movcTemp.x = x_1218;
    let x_1221 : bool = u_xlatb3.y;
    if (x_1221) {
      let x_1226 : f32 = u_xlat1.y;
      x_1222 = x_1226;
    } else {
      let x_1229 : f32 = u_xlat2.y;
      x_1222 = x_1229;
    }
    let x_1230 : f32 = x_1222;
    hlslcc_movcTemp.y = x_1230;
    let x_1233 : bool = u_xlatb3.z;
    if (x_1233) {
      let x_1238 : f32 = u_xlat1.z;
      x_1234 = x_1238;
    } else {
      let x_1241 : f32 = u_xlat2.z;
      x_1234 = x_1241;
    }
    let x_1242 : f32 = x_1234;
    hlslcc_movcTemp.z = x_1242;
    let x_1244 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1244;
    let x_1245 : vec3<f32> = u_xlat1;
    let x_1248 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1250 : vec3<f32> = (vec3<f32>(x_1245.z, x_1245.x, x_1245.y) * vec3<f32>(x_1248.z, x_1248.z, x_1248.z));
    let x_1251 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
    let x_1254 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1254);
    let x_1257 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1259 : vec2<f32> = (vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(0.5f, 0.5f));
    let x_1260 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1259.x, x_1260.y, x_1260.z, x_1259.y);
    let x_1262 : vec4<f32> = u_xlat2;
    let x_1265 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1268 : vec4<f32> = u_xlat2;
    let x_1270 : vec2<f32> = ((vec2<f32>(x_1262.y, x_1262.z) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.x, x_1268.w));
    let x_1271 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1271.x, x_1270.x, x_1270.y, x_1271.w);
    let x_1273 : f32 = u_xlat21;
    let x_1275 : f32 = x_25.x_UserLut_Params.y;
    let x_1278 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1273 * x_1275) + x_1278);
    let x_1285 : vec4<f32> = u_xlat2;
    let x_1287 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1285.x, x_1285.z), 0.0f);
    let x_1288 : vec3<f32> = vec3<f32>(x_1287.x, x_1287.y, x_1287.z);
    let x_1289 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
    let x_1292 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1292;
    u_xlat4.y = 0.0f;
    let x_1295 : vec4<f32> = u_xlat2;
    let x_1297 : vec4<f32> = u_xlat4;
    let x_1299 : vec2<f32> = (vec2<f32>(x_1295.x, x_1295.z) + vec2<f32>(x_1297.x, x_1297.y));
    let x_1300 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
    let x_1305 : vec4<f32> = u_xlat2;
    let x_1307 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1305.x, x_1305.y), 0.0f);
    let x_1308 : vec3<f32> = vec3<f32>(x_1307.x, x_1307.y, x_1307.z);
    let x_1309 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
    let x_1312 : f32 = u_xlat1.z;
    let x_1314 : f32 = x_25.x_UserLut_Params.z;
    let x_1316 : f32 = u_xlat21;
    u_xlat21 = ((x_1312 * x_1314) + -(x_1316));
    let x_1319 : vec4<f32> = u_xlat3;
    let x_1322 : vec4<f32> = u_xlat2;
    let x_1324 : vec3<f32> = (-(vec3<f32>(x_1319.x, x_1319.y, x_1319.z)) + vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
    let x_1325 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
    let x_1327 : f32 = u_xlat21;
    let x_1329 : vec4<f32> = u_xlat2;
    let x_1332 : vec4<f32> = u_xlat3;
    let x_1334 : vec3<f32> = ((vec3<f32>(x_1327, x_1327, x_1327) * vec3<f32>(x_1329.x, x_1329.y, x_1329.z)) + vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
    let x_1335 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
    let x_1337 : vec3<f32> = u_xlat1;
    let x_1339 : vec4<f32> = u_xlat2;
    let x_1341 : vec3<f32> = (-(x_1337) + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
    let x_1342 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
    let x_1345 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1347 : vec4<f32> = u_xlat2;
    let x_1350 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1345.w, x_1345.w, x_1345.w) * vec3<f32>(x_1347.x, x_1347.y, x_1347.z)) + x_1350);
    let x_1352 : vec3<f32> = u_xlat1;
    let x_1355 : vec3<f32> = (x_1352 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1356 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
    let x_1358 : vec3<f32> = u_xlat1;
    let x_1361 : vec3<f32> = (x_1358 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1362 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1362.w);
    let x_1364 : vec4<f32> = u_xlat3;
    let x_1368 : vec3<f32> = (vec3<f32>(x_1364.x, x_1364.y, x_1364.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1369 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
    let x_1371 : vec4<f32> = u_xlat3;
    let x_1374 : vec3<f32> = log2(abs(vec3<f32>(x_1371.x, x_1371.y, x_1371.z)));
    let x_1375 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
    let x_1377 : vec4<f32> = u_xlat3;
    let x_1381 : vec3<f32> = (vec3<f32>(x_1377.x, x_1377.y, x_1377.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1382 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
    let x_1384 : vec4<f32> = u_xlat3;
    let x_1386 : vec3<f32> = exp2(vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
    let x_1387 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
    let x_1391 : vec3<f32> = u_xlat1;
    let x_1393 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1391.x));
    u_xlatb1 = vec3<bool>(x_1393.x, x_1393.y, x_1393.z);
    let x_1396 : bool = u_xlatb1.x;
    if (x_1396) {
      let x_1401 : f32 = u_xlat2.x;
      x_1397 = x_1401;
    } else {
      let x_1404 : f32 = u_xlat3.x;
      x_1397 = x_1404;
    }
    let x_1405 : f32 = x_1397;
    u_xlat0.x = x_1405;
    let x_1408 : bool = u_xlatb1.y;
    if (x_1408) {
      let x_1413 : f32 = u_xlat2.y;
      x_1409 = x_1413;
    } else {
      let x_1416 : f32 = u_xlat3.y;
      x_1409 = x_1416;
    }
    let x_1417 : f32 = x_1409;
    u_xlat0.y = x_1417;
    let x_1420 : bool = u_xlatb1.z;
    if (x_1420) {
      let x_1425 : f32 = u_xlat2.z;
      x_1421 = x_1425;
    } else {
      let x_1428 : f32 = u_xlat3.z;
      x_1421 = x_1428;
    }
    let x_1429 : f32 = x_1421;
    u_xlat0.z = x_1429;
  }
  let x_1433 : vec4<f32> = u_xlat0;
  let x_1435 : vec3<f32> = sqrt(vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
  let x_1436 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
  SV_Target0.w = 1.0f;
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
