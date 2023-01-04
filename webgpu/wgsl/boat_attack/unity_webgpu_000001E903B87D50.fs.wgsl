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
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_656 : f32;
  var u_xlat17 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1212 : f32;
  var x_1224 : f32;
  var x_1236 : f32;
  var x_1399 : f32;
  var x_1411 : f32;
  var x_1423 : f32;
  var x_1510 : f32;
  var x_1522 : f32;
  var x_1534 : f32;
  var x_1589 : f32;
  var x_1601 : f32;
  var x_1613 : f32;
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
    u_xlatb0.x = (x_648 < -(x_650));
    let x_655 : bool = u_xlatb0.x;
    if (x_655) {
      let x_659 : f32 = u_xlat23;
      x_656 = -(x_659);
    } else {
      let x_662 : f32 = u_xlat23;
      x_656 = x_662;
    }
    let x_663 : f32 = x_656;
    u_xlat0.x = x_663;
    let x_666 : f32 = u_xlat7.x;
    let x_668 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_666 * x_668) + -1.0f);
    let x_672 : vec4<f32> = u_xlat0;
    let x_674 : vec4<f32> = u_xlat0;
    let x_677 : vec4<f32> = u_xlat3;
    let x_679 : vec2<f32> = ((vec2<f32>(x_672.z, x_672.w) * vec2<f32>(x_674.x, x_674.x)) + vec2<f32>(x_677.z, x_677.w));
    let x_680 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_679.x, x_679.y, x_680.z);
  }
  let x_685 : vec3<f32> = u_xlat1;
  let x_688 : f32 = x_25.x_GlobalMipBias.x;
  let x_689 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_685.x, x_685.y), x_688);
  u_xlat2.z = x_689.z;
  let x_693 : vec2<f32> = u_xlat15;
  let x_696 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  let x_699 : vec2<f32> = ((x_693 * vec2<f32>(x_696.z, x_696.w)) + vec2<f32>(0.5f, 0.5f));
  let x_700 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat0;
  u_xlat14 = floor(vec2<f32>(x_702.x, x_702.y));
  let x_705 : vec4<f32> = u_xlat0;
  let x_707 : vec2<f32> = fract(vec2<f32>(x_705.x, x_705.y));
  let x_708 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_707.x, x_707.y, x_708.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat0;
  u_xlat3 = ((-(vec4<f32>(x_710.x, x_710.y, x_710.x, x_710.y)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_717 : vec4<f32> = u_xlat0;
  let x_719 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y) * x_719) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_723 : vec4<f32> = u_xlat0;
  let x_727 : vec2<f32> = ((vec2<f32>(x_723.x, x_723.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_728 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_727.x, x_727.y, x_728.z);
  let x_730 : vec4<f32> = u_xlat0;
  let x_732 : vec4<f32> = u_xlat0;
  let x_734 : vec2<f32> = (vec2<f32>(x_730.x, x_730.y) * vec2<f32>(x_732.x, x_732.y));
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
  let x_737 : vec4<f32> = u_xlat4;
  let x_739 : vec3<f32> = u_xlat1;
  let x_744 : vec2<f32> = ((vec2<f32>(x_737.x, x_737.y) * vec2<f32>(x_739.x, x_739.y)) + vec2<f32>(0.666666687f, 0.666666687f));
  let x_745 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_744.x, x_744.y, x_745.z);
  let x_747 : vec4<f32> = u_xlat0;
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y) * x_749) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
  let x_753 : vec3<f32> = u_xlat1;
  let x_757 : vec2<f32> = (-(vec2<f32>(x_753.x, x_753.y)) + vec2<f32>(1.0f, 1.0f));
  let x_758 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat3;
  let x_763 : vec4<f32> = u_xlat0;
  let x_765 : vec2<f32> = (-(vec2<f32>(x_760.x, x_760.y)) + vec2<f32>(x_763.x, x_763.y));
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat3;
  let x_771 : vec4<f32> = u_xlat0;
  let x_773 : vec2<f32> = (-(vec2<f32>(x_768.z, x_768.w)) + vec2<f32>(x_771.x, x_771.y));
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
  let x_777 : vec3<f32> = u_xlat1;
  let x_779 : vec4<f32> = u_xlat3;
  u_xlat17 = (vec2<f32>(x_777.x, x_777.y) + vec2<f32>(x_779.z, x_779.w));
  let x_782 : vec4<f32> = u_xlat0;
  let x_784 : vec4<f32> = u_xlat3;
  let x_786 : vec2<f32> = (vec2<f32>(x_782.x, x_782.y) + vec2<f32>(x_784.x, x_784.y));
  let x_787 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
  let x_789 : vec2<f32> = u_xlat17;
  let x_793 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_789.x, x_789.y));
  let x_794 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_793.x, x_793.y, x_794.z, x_794.w);
  let x_796 : vec3<f32> = u_xlat1;
  let x_798 : vec4<f32> = u_xlat4;
  let x_801 : vec2<f32> = ((vec2<f32>(x_796.x, x_796.y) * vec2<f32>(x_798.x, x_798.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_802 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_802.x, x_802.y, x_801.x, x_801.y);
  let x_804 : vec4<f32> = u_xlat3;
  let x_805 : vec2<f32> = vec2<f32>(x_804.x, x_804.y);
  let x_809 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_805.x, x_805.y));
  let x_810 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_809.x, x_809.y, x_810.z);
  let x_812 : vec4<f32> = u_xlat0;
  let x_814 : vec3<f32> = u_xlat1;
  let x_817 : vec2<f32> = ((vec2<f32>(x_812.x, x_812.y) * vec2<f32>(x_814.x, x_814.y)) + vec2<f32>(1.0f, 1.0f));
  let x_818 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
  let x_820 : vec2<f32> = u_xlat14;
  let x_822 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y) + vec4<f32>(x_822.z, x_822.w, x_822.x, x_822.w));
  let x_825 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_825 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_827 : vec4<f32> = u_xlat5;
  let x_829 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_827 * vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y));
  let x_832 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_832, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_840 : vec4<f32> = u_xlat5;
  let x_842 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_840.x, x_840.y), 0.0f);
  u_xlat6 = x_842;
  let x_846 : vec4<f32> = u_xlat5;
  let x_848 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_846.z, x_846.w), 0.0f);
  u_xlat5 = x_848;
  let x_849 : vec4<f32> = u_xlat3;
  let x_851 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_849.x, x_849.x, x_849.x, x_849.x) * x_851);
  let x_853 : vec2<f32> = u_xlat17;
  let x_855 : vec4<f32> = u_xlat6;
  let x_857 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_853.x, x_853.x, x_853.x, x_853.x) * x_855) + x_857);
  let x_859 : vec2<f32> = u_xlat14;
  let x_861 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y) + vec4<f32>(x_861.z, x_861.y, x_861.x, x_861.y));
  let x_864 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_864 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_866 : vec4<f32> = u_xlat0;
  let x_868 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat0 = (x_866 * vec4<f32>(x_868.x, x_868.y, x_868.x, x_868.y));
  let x_871 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_871, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_876 : vec4<f32> = u_xlat0;
  let x_878 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_876.x, x_876.y), 0.0f);
  u_xlat4 = x_878;
  let x_882 : vec4<f32> = u_xlat0;
  let x_884 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_882.z, x_882.w), 0.0f);
  u_xlat0 = x_884;
  let x_885 : vec4<f32> = u_xlat0;
  let x_886 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_885 * vec4<f32>(x_886.x, x_886.x, x_886.x, x_886.x));
  let x_889 : vec2<f32> = u_xlat17;
  let x_891 : vec4<f32> = u_xlat4;
  let x_893 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_889.x, x_889.x, x_889.x, x_889.x) * x_891) + x_893);
  let x_895 : vec4<f32> = u_xlat0;
  let x_896 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_895 * vec4<f32>(x_896.y, x_896.y, x_896.y, x_896.y));
  let x_899 : vec2<f32> = u_xlat17;
  let x_901 : vec4<f32> = u_xlat5;
  let x_903 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_899.y, x_899.y, x_899.y, x_899.y) * x_901) + x_903);
  let x_907 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_907);
  let x_911 : bool = u_xlatb1.x;
  if (x_911) {
    let x_914 : vec4<f32> = u_xlat0;
    let x_916 : vec4<f32> = u_xlat0;
    let x_918 : vec3<f32> = (vec3<f32>(x_914.w, x_914.w, x_914.w) * vec3<f32>(x_916.x, x_916.y, x_916.z));
    let x_919 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
    let x_921 : vec4<f32> = u_xlat3;
    let x_925 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_926 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  }
  let x_928 : vec4<f32> = u_xlat0;
  let x_932 : vec4<f32> = x_25.x_Bloom_Params;
  let x_934 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_932.x, x_932.x, x_932.x));
  let x_935 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat0;
  let x_940 : vec4<f32> = x_25.x_Bloom_Params;
  let x_943 : vec4<f32> = u_xlat2;
  let x_945 : vec3<f32> = ((vec3<f32>(x_937.x, x_937.y, x_937.z) * vec3<f32>(x_940.y, x_940.z, x_940.w)) + vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_951 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_951);
  let x_953 : bool = u_xlatb21;
  if (x_953) {
    let x_956 : vec2<f32> = u_xlat15;
    let x_958 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_961 : vec2<f32> = (x_956 + -(vec2<f32>(x_958.x, x_958.y)));
    let x_962 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_961.x, x_961.y, x_962.z);
    let x_964 : vec3<f32> = u_xlat1;
    let x_968 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_970 : vec2<f32> = (abs(vec2<f32>(x_964.x, x_964.y)) * vec2<f32>(x_968.z, x_968.z));
    let x_971 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_971.x, x_970.x, x_970.y);
    let x_974 : f32 = u_xlat1.y;
    let x_977 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_974 * x_977);
    let x_981 : vec3<f32> = u_xlat1;
    let x_983 : vec3<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_981.x, x_981.z), vec2<f32>(x_983.x, x_983.z));
    let x_986 : f32 = u_xlat21;
    u_xlat21 = (-(x_986) + 1.0f);
    let x_989 : f32 = u_xlat21;
    u_xlat21 = max(x_989, 0.0f);
    let x_991 : f32 = u_xlat21;
    u_xlat21 = log2(x_991);
    let x_993 : f32 = u_xlat21;
    let x_995 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_993 * x_995);
    let x_997 : f32 = u_xlat21;
    u_xlat21 = exp2(x_997);
    let x_1000 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_1000.x, x_1000.y, x_1000.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1005 : f32 = u_xlat21;
    let x_1007 : vec3<f32> = u_xlat1;
    let x_1010 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_1005, x_1005, x_1005) * x_1007) + vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
    let x_1013 : vec4<f32> = u_xlat0;
    let x_1015 : vec3<f32> = u_xlat1;
    let x_1016 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) * x_1015);
    let x_1017 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  }
  let x_1019 : vec4<f32> = u_xlat0;
  let x_1023 : vec4<f32> = x_25.x_Lut_Params;
  let x_1025 : vec3<f32> = (vec3<f32>(x_1019.z, x_1019.x, x_1019.y) * vec3<f32>(x_1023.w, x_1023.w, x_1023.w));
  let x_1026 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1035 : vec3<f32> = ((vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1036 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat0;
  let x_1041 : vec3<f32> = max(vec3<f32>(x_1038.x, x_1038.y, x_1038.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1042 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat0;
  let x_1046 : vec3<f32> = log2(vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1049 : vec4<f32> = u_xlat0;
  let x_1056 : vec3<f32> = ((vec3<f32>(x_1049.x, x_1049.y, x_1049.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1057 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat0;
  let x_1063 : vec3<f32> = clamp(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1064 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1069 : vec4<f32> = x_25.x_Lut_Params;
  u_xlat7 = (vec3<f32>(x_1066.x, x_1066.y, x_1066.z) * vec3<f32>(x_1069.z, x_1069.z, x_1069.z));
  let x_1073 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_1073);
  let x_1077 : vec4<f32> = x_25.x_Lut_Params;
  let x_1079 : vec2<f32> = (vec2<f32>(x_1077.x, x_1077.y) * vec2<f32>(0.5f, 0.5f));
  let x_1080 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1079.x, x_1079.y, x_1080.z);
  let x_1082 : vec3<f32> = u_xlat7;
  let x_1085 : vec4<f32> = x_25.x_Lut_Params;
  let x_1088 : vec3<f32> = u_xlat1;
  let x_1090 : vec2<f32> = ((vec2<f32>(x_1082.y, x_1082.z) * vec2<f32>(x_1085.x, x_1085.y)) + vec2<f32>(x_1088.x, x_1088.y));
  let x_1091 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1091.x, x_1090.x, x_1090.y);
  let x_1094 : f32 = u_xlat7.x;
  let x_1096 : f32 = x_25.x_Lut_Params.y;
  let x_1099 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1094 * x_1096) + x_1099);
  let x_1106 : vec3<f32> = u_xlat1;
  let x_1108 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1106.x, x_1106.z), 0.0f);
  let x_1109 : vec3<f32> = vec3<f32>(x_1108.x, x_1108.y, x_1108.z);
  let x_1110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1113 : f32 = x_25.x_Lut_Params.y;
  u_xlat3.x = x_1113;
  u_xlat3.y = 0.0f;
  let x_1116 : vec3<f32> = u_xlat1;
  let x_1118 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec2<f32>(x_1116.x, x_1116.z) + vec2<f32>(x_1118.x, x_1118.y));
  let x_1124 : vec2<f32> = u_xlat14;
  let x_1125 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_1124, 0.0f);
  u_xlat1 = vec3<f32>(x_1125.x, x_1125.y, x_1125.z);
  let x_1128 : f32 = u_xlat0.x;
  let x_1130 : f32 = x_25.x_Lut_Params.z;
  let x_1133 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_1128 * x_1130) + -(x_1133));
  let x_1137 : vec4<f32> = u_xlat2;
  let x_1140 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1137.x, x_1137.y, x_1137.z)) + x_1140);
  let x_1142 : vec4<f32> = u_xlat0;
  let x_1144 : vec3<f32> = u_xlat7;
  let x_1146 : vec4<f32> = u_xlat2;
  let x_1148 : vec3<f32> = ((vec3<f32>(x_1142.x, x_1142.x, x_1142.x) * x_1144) + vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
  let x_1149 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
  let x_1153 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_1153);
  let x_1155 : bool = u_xlatb21;
  if (x_1155) {
    let x_1158 : vec4<f32> = u_xlat0;
    let x_1159 : vec3<f32> = vec3<f32>(x_1158.x, x_1158.y, x_1158.z);
    let x_1160 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
    let x_1162 : vec4<f32> = u_xlat0;
    let x_1166 : vec3<f32> = clamp(vec3<f32>(x_1162.x, x_1162.y, x_1162.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1167 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
    let x_1169 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_1169.x, x_1169.y, x_1169.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_1174 : vec4<f32> = u_xlat0;
    let x_1176 : vec3<f32> = log2(vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
    let x_1177 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
    let x_1179 : vec4<f32> = u_xlat2;
    let x_1183 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_1184 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
    let x_1186 : vec4<f32> = u_xlat2;
    let x_1188 : vec3<f32> = exp2(vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
    let x_1189 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
    let x_1191 : vec4<f32> = u_xlat2;
    let x_1198 : vec3<f32> = ((vec3<f32>(x_1191.x, x_1191.y, x_1191.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1199 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
    let x_1203 : vec4<f32> = u_xlat0;
    let x_1206 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1203.x));
    u_xlatb3 = vec3<bool>(x_1206.x, x_1206.y, x_1206.z);
    let x_1209 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_1209;
    let x_1211 : bool = u_xlatb3.x;
    if (x_1211) {
      let x_1216 : f32 = u_xlat1.x;
      x_1212 = x_1216;
    } else {
      let x_1219 : f32 = u_xlat2.x;
      x_1212 = x_1219;
    }
    let x_1220 : f32 = x_1212;
    hlslcc_movcTemp.x = x_1220;
    let x_1223 : bool = u_xlatb3.y;
    if (x_1223) {
      let x_1228 : f32 = u_xlat1.y;
      x_1224 = x_1228;
    } else {
      let x_1231 : f32 = u_xlat2.y;
      x_1224 = x_1231;
    }
    let x_1232 : f32 = x_1224;
    hlslcc_movcTemp.y = x_1232;
    let x_1235 : bool = u_xlatb3.z;
    if (x_1235) {
      let x_1240 : f32 = u_xlat1.z;
      x_1236 = x_1240;
    } else {
      let x_1243 : f32 = u_xlat2.z;
      x_1236 = x_1243;
    }
    let x_1244 : f32 = x_1236;
    hlslcc_movcTemp.z = x_1244;
    let x_1246 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1246;
    let x_1247 : vec3<f32> = u_xlat1;
    let x_1250 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1252 : vec3<f32> = (vec3<f32>(x_1247.z, x_1247.x, x_1247.y) * vec3<f32>(x_1250.z, x_1250.z, x_1250.z));
    let x_1253 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
    let x_1256 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1256);
    let x_1259 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1261 : vec2<f32> = (vec2<f32>(x_1259.x, x_1259.y) * vec2<f32>(0.5f, 0.5f));
    let x_1262 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1261.x, x_1262.y, x_1262.z, x_1261.y);
    let x_1264 : vec4<f32> = u_xlat2;
    let x_1267 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1270 : vec4<f32> = u_xlat2;
    let x_1272 : vec2<f32> = ((vec2<f32>(x_1264.y, x_1264.z) * vec2<f32>(x_1267.x, x_1267.y)) + vec2<f32>(x_1270.x, x_1270.w));
    let x_1273 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1273.x, x_1272.x, x_1272.y, x_1273.w);
    let x_1275 : f32 = u_xlat21;
    let x_1277 : f32 = x_25.x_UserLut_Params.y;
    let x_1280 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1275 * x_1277) + x_1280);
    let x_1287 : vec4<f32> = u_xlat2;
    let x_1289 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1287.x, x_1287.z), 0.0f);
    let x_1290 : vec3<f32> = vec3<f32>(x_1289.x, x_1289.y, x_1289.z);
    let x_1291 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
    let x_1294 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1294;
    u_xlat4.y = 0.0f;
    let x_1297 : vec4<f32> = u_xlat2;
    let x_1299 : vec4<f32> = u_xlat4;
    let x_1301 : vec2<f32> = (vec2<f32>(x_1297.x, x_1297.z) + vec2<f32>(x_1299.x, x_1299.y));
    let x_1302 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1301.x, x_1301.y, x_1302.z, x_1302.w);
    let x_1307 : vec4<f32> = u_xlat2;
    let x_1309 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1307.x, x_1307.y), 0.0f);
    let x_1310 : vec3<f32> = vec3<f32>(x_1309.x, x_1309.y, x_1309.z);
    let x_1311 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
    let x_1314 : f32 = u_xlat1.z;
    let x_1316 : f32 = x_25.x_UserLut_Params.z;
    let x_1318 : f32 = u_xlat21;
    u_xlat21 = ((x_1314 * x_1316) + -(x_1318));
    let x_1321 : vec4<f32> = u_xlat3;
    let x_1324 : vec4<f32> = u_xlat2;
    let x_1326 : vec3<f32> = (-(vec3<f32>(x_1321.x, x_1321.y, x_1321.z)) + vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
    let x_1327 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
    let x_1329 : f32 = u_xlat21;
    let x_1331 : vec4<f32> = u_xlat2;
    let x_1334 : vec4<f32> = u_xlat3;
    let x_1336 : vec3<f32> = ((vec3<f32>(x_1329, x_1329, x_1329) * vec3<f32>(x_1331.x, x_1331.y, x_1331.z)) + vec3<f32>(x_1334.x, x_1334.y, x_1334.z));
    let x_1337 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
    let x_1339 : vec3<f32> = u_xlat1;
    let x_1341 : vec4<f32> = u_xlat2;
    let x_1343 : vec3<f32> = (-(x_1339) + vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
    let x_1344 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
    let x_1347 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1349 : vec4<f32> = u_xlat2;
    let x_1352 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1347.w, x_1347.w, x_1347.w) * vec3<f32>(x_1349.x, x_1349.y, x_1349.z)) + x_1352);
    let x_1354 : vec3<f32> = u_xlat1;
    let x_1357 : vec3<f32> = (x_1354 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1358 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
    let x_1360 : vec3<f32> = u_xlat1;
    let x_1363 : vec3<f32> = (x_1360 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1364 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
    let x_1366 : vec4<f32> = u_xlat3;
    let x_1370 : vec3<f32> = (vec3<f32>(x_1366.x, x_1366.y, x_1366.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1371 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
    let x_1373 : vec4<f32> = u_xlat3;
    let x_1376 : vec3<f32> = log2(abs(vec3<f32>(x_1373.x, x_1373.y, x_1373.z)));
    let x_1377 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
    let x_1379 : vec4<f32> = u_xlat3;
    let x_1383 : vec3<f32> = (vec3<f32>(x_1379.x, x_1379.y, x_1379.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1384 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
    let x_1386 : vec4<f32> = u_xlat3;
    let x_1388 : vec3<f32> = exp2(vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
    let x_1389 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
    let x_1393 : vec3<f32> = u_xlat1;
    let x_1395 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1393.x));
    u_xlatb1 = vec3<bool>(x_1395.x, x_1395.y, x_1395.z);
    let x_1398 : bool = u_xlatb1.x;
    if (x_1398) {
      let x_1403 : f32 = u_xlat2.x;
      x_1399 = x_1403;
    } else {
      let x_1406 : f32 = u_xlat3.x;
      x_1399 = x_1406;
    }
    let x_1407 : f32 = x_1399;
    u_xlat0.x = x_1407;
    let x_1410 : bool = u_xlatb1.y;
    if (x_1410) {
      let x_1415 : f32 = u_xlat2.y;
      x_1411 = x_1415;
    } else {
      let x_1418 : f32 = u_xlat3.y;
      x_1411 = x_1418;
    }
    let x_1419 : f32 = x_1411;
    u_xlat0.y = x_1419;
    let x_1422 : bool = u_xlatb1.z;
    if (x_1422) {
      let x_1427 : f32 = u_xlat2.z;
      x_1423 = x_1427;
    } else {
      let x_1430 : f32 = u_xlat3.z;
      x_1423 = x_1430;
    }
    let x_1431 : f32 = x_1423;
    u_xlat0.z = x_1431;
  }
  let x_1433 : vec2<f32> = vs_TEXCOORD0;
  let x_1436 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1440 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1442 : vec2<f32> = ((x_1433 * vec2<f32>(x_1436.x, x_1436.y)) + vec2<f32>(x_1440.z, x_1440.w));
  let x_1443 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1442.x, x_1442.y, x_1443.z);
  let x_1450 : vec3<f32> = u_xlat1;
  let x_1453 : f32 = x_25.x_GlobalMipBias.x;
  let x_1454 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1450.x, x_1450.y), x_1453);
  u_xlat21 = x_1454.w;
  let x_1456 : f32 = u_xlat21;
  u_xlat21 = ((x_1456 * 2.0f) + -1.0f);
  let x_1459 : f32 = u_xlat21;
  u_xlatb1.x = (x_1459 >= 0.0f);
  let x_1463 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1463);
  let x_1466 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1466)) + 1.0f);
  let x_1470 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1470);
  let x_1472 : f32 = u_xlat21;
  u_xlat21 = (-(x_1472) + 1.0f);
  let x_1475 : f32 = u_xlat21;
  let x_1477 : f32 = u_xlat1.x;
  u_xlat21 = (x_1475 * x_1477);
  let x_1479 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1479.x, x_1479.y, x_1479.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1482 : vec4<f32> = u_xlat0;
  let x_1485 : vec3<f32> = log2(abs(vec3<f32>(x_1482.x, x_1482.y, x_1482.z)));
  let x_1486 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1486.w);
  let x_1488 : vec4<f32> = u_xlat2;
  let x_1490 : vec3<f32> = (vec3<f32>(x_1488.x, x_1488.y, x_1488.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1491 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1491.w);
  let x_1493 : vec4<f32> = u_xlat2;
  let x_1495 : vec3<f32> = exp2(vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
  let x_1496 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
  let x_1498 : vec4<f32> = u_xlat2;
  let x_1501 : vec3<f32> = ((vec3<f32>(x_1498.x, x_1498.y, x_1498.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1502 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1501.x, x_1501.y, x_1501.z, x_1502.w);
  let x_1504 : vec4<f32> = u_xlat0;
  let x_1506 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1504.x));
  u_xlatb0 = vec3<bool>(x_1506.x, x_1506.y, x_1506.z);
  let x_1509 : bool = u_xlatb0.x;
  if (x_1509) {
    let x_1514 : f32 = u_xlat1.x;
    x_1510 = x_1514;
  } else {
    let x_1517 : f32 = u_xlat2.x;
    x_1510 = x_1517;
  }
  let x_1518 : f32 = x_1510;
  u_xlat0.x = x_1518;
  let x_1521 : bool = u_xlatb0.y;
  if (x_1521) {
    let x_1526 : f32 = u_xlat1.y;
    x_1522 = x_1526;
  } else {
    let x_1529 : f32 = u_xlat2.y;
    x_1522 = x_1529;
  }
  let x_1530 : f32 = x_1522;
  u_xlat0.y = x_1530;
  let x_1533 : bool = u_xlatb0.z;
  if (x_1533) {
    let x_1538 : f32 = u_xlat1.z;
    x_1534 = x_1538;
  } else {
    let x_1541 : f32 = u_xlat2.z;
    x_1534 = x_1541;
  }
  let x_1542 : f32 = x_1534;
  u_xlat0.z = x_1542;
  let x_1544 : f32 = u_xlat21;
  let x_1549 : vec4<f32> = u_xlat0;
  let x_1551 : vec3<f32> = ((vec3<f32>(x_1544, x_1544, x_1544) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
  let x_1552 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
  let x_1554 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1554.x, x_1554.y, x_1554.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1557 : vec4<f32> = u_xlat0;
  let x_1559 : vec3<f32> = (vec3<f32>(x_1557.x, x_1557.y, x_1557.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1560 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
  let x_1562 : vec4<f32> = u_xlat2;
  let x_1564 : vec3<f32> = (vec3<f32>(x_1562.x, x_1562.y, x_1562.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
  let x_1567 : vec4<f32> = u_xlat2;
  let x_1570 : vec3<f32> = log2(abs(vec3<f32>(x_1567.x, x_1567.y, x_1567.z)));
  let x_1571 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
  let x_1573 : vec4<f32> = u_xlat2;
  let x_1575 : vec3<f32> = (vec3<f32>(x_1573.x, x_1573.y, x_1573.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1575.x, x_1575.y, x_1575.z, x_1576.w);
  let x_1578 : vec4<f32> = u_xlat2;
  let x_1580 : vec3<f32> = exp2(vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
  let x_1581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
  let x_1583 : vec4<f32> = u_xlat0;
  let x_1585 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1583.x));
  u_xlatb0 = vec3<bool>(x_1585.x, x_1585.y, x_1585.z);
  let x_1588 : bool = u_xlatb0.x;
  if (x_1588) {
    let x_1593 : f32 = u_xlat1.x;
    x_1589 = x_1593;
  } else {
    let x_1596 : f32 = u_xlat2.x;
    x_1589 = x_1596;
  }
  let x_1597 : f32 = x_1589;
  u_xlat0.x = x_1597;
  let x_1600 : bool = u_xlatb0.y;
  if (x_1600) {
    let x_1605 : f32 = u_xlat1.y;
    x_1601 = x_1605;
  } else {
    let x_1608 : f32 = u_xlat2.y;
    x_1601 = x_1608;
  }
  let x_1609 : f32 = x_1601;
  u_xlat0.y = x_1609;
  let x_1612 : bool = u_xlatb0.z;
  if (x_1612) {
    let x_1617 : f32 = u_xlat1.z;
    x_1613 = x_1617;
  } else {
    let x_1620 : f32 = u_xlat2.z;
    x_1613 = x_1620;
  }
  let x_1621 : f32 = x_1613;
  u_xlat0.z = x_1621;
  let x_1625 : vec4<f32> = u_xlat0;
  let x_1627 : vec3<f32> = max(vec3<f32>(x_1625.x, x_1625.y, x_1625.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1628 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
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

