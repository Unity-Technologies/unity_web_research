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

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

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
  var x_1085 : f32;
  var x_1097 : f32;
  var x_1109 : f32;
  var x_1272 : f32;
  var x_1284 : f32;
  var x_1296 : f32;
  var x_1424 : f32;
  var x_1436 : f32;
  var x_1448 : f32;
  var x_1535 : f32;
  var x_1547 : f32;
  var x_1559 : f32;
  var x_1614 : f32;
  var x_1626 : f32;
  var x_1638 : f32;
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
  let x_1025 : vec3<f32> = (vec3<f32>(x_1019.x, x_1019.y, x_1019.z) * vec3<f32>(x_1023.w, x_1023.w, x_1023.w));
  let x_1026 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1032 : vec3<f32> = clamp(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1033 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1037 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_1037);
  let x_1039 : bool = u_xlatb21;
  if (x_1039) {
    let x_1042 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_1042.x, x_1042.y, x_1042.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_1047 : vec4<f32> = u_xlat0;
    let x_1049 : vec3<f32> = log2(vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
    let x_1050 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
    let x_1052 : vec4<f32> = u_xlat2;
    let x_1056 : vec3<f32> = (vec3<f32>(x_1052.x, x_1052.y, x_1052.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_1057 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
    let x_1059 : vec4<f32> = u_xlat2;
    let x_1061 : vec3<f32> = exp2(vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
    let x_1062 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
    let x_1064 : vec4<f32> = u_xlat2;
    let x_1071 : vec3<f32> = ((vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1072 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
    let x_1076 : vec4<f32> = u_xlat0;
    let x_1079 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1076.x));
    u_xlatb3 = vec3<bool>(x_1079.x, x_1079.y, x_1079.z);
    let x_1082 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_1082;
    let x_1084 : bool = u_xlatb3.x;
    if (x_1084) {
      let x_1089 : f32 = u_xlat1.x;
      x_1085 = x_1089;
    } else {
      let x_1092 : f32 = u_xlat2.x;
      x_1085 = x_1092;
    }
    let x_1093 : f32 = x_1085;
    hlslcc_movcTemp.x = x_1093;
    let x_1096 : bool = u_xlatb3.y;
    if (x_1096) {
      let x_1101 : f32 = u_xlat1.y;
      x_1097 = x_1101;
    } else {
      let x_1104 : f32 = u_xlat2.y;
      x_1097 = x_1104;
    }
    let x_1105 : f32 = x_1097;
    hlslcc_movcTemp.y = x_1105;
    let x_1108 : bool = u_xlatb3.z;
    if (x_1108) {
      let x_1113 : f32 = u_xlat1.z;
      x_1109 = x_1113;
    } else {
      let x_1116 : f32 = u_xlat2.z;
      x_1109 = x_1116;
    }
    let x_1117 : f32 = x_1109;
    hlslcc_movcTemp.z = x_1117;
    let x_1119 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1119;
    let x_1120 : vec3<f32> = u_xlat1;
    let x_1123 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1125 : vec3<f32> = (vec3<f32>(x_1120.z, x_1120.x, x_1120.y) * vec3<f32>(x_1123.z, x_1123.z, x_1123.z));
    let x_1126 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
    let x_1129 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1129);
    let x_1132 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1134 : vec2<f32> = (vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(0.5f, 0.5f));
    let x_1135 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1134.x, x_1135.y, x_1135.z, x_1134.y);
    let x_1137 : vec4<f32> = u_xlat2;
    let x_1140 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1143 : vec4<f32> = u_xlat2;
    let x_1145 : vec2<f32> = ((vec2<f32>(x_1137.y, x_1137.z) * vec2<f32>(x_1140.x, x_1140.y)) + vec2<f32>(x_1143.x, x_1143.w));
    let x_1146 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1146.x, x_1145.x, x_1145.y, x_1146.w);
    let x_1148 : f32 = u_xlat21;
    let x_1150 : f32 = x_25.x_UserLut_Params.y;
    let x_1153 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1148 * x_1150) + x_1153);
    let x_1160 : vec4<f32> = u_xlat2;
    let x_1162 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1160.x, x_1160.z), 0.0f);
    let x_1163 : vec3<f32> = vec3<f32>(x_1162.x, x_1162.y, x_1162.z);
    let x_1164 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
    let x_1167 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1167;
    u_xlat4.y = 0.0f;
    let x_1170 : vec4<f32> = u_xlat2;
    let x_1172 : vec4<f32> = u_xlat4;
    let x_1174 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.z) + vec2<f32>(x_1172.x, x_1172.y));
    let x_1175 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
    let x_1180 : vec4<f32> = u_xlat2;
    let x_1182 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1180.x, x_1180.y), 0.0f);
    let x_1183 : vec3<f32> = vec3<f32>(x_1182.x, x_1182.y, x_1182.z);
    let x_1184 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
    let x_1187 : f32 = u_xlat1.z;
    let x_1189 : f32 = x_25.x_UserLut_Params.z;
    let x_1191 : f32 = u_xlat21;
    u_xlat21 = ((x_1187 * x_1189) + -(x_1191));
    let x_1194 : vec4<f32> = u_xlat3;
    let x_1197 : vec4<f32> = u_xlat2;
    let x_1199 : vec3<f32> = (-(vec3<f32>(x_1194.x, x_1194.y, x_1194.z)) + vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
    let x_1200 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
    let x_1202 : f32 = u_xlat21;
    let x_1204 : vec4<f32> = u_xlat2;
    let x_1207 : vec4<f32> = u_xlat3;
    let x_1209 : vec3<f32> = ((vec3<f32>(x_1202, x_1202, x_1202) * vec3<f32>(x_1204.x, x_1204.y, x_1204.z)) + vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
    let x_1210 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
    let x_1212 : vec3<f32> = u_xlat1;
    let x_1214 : vec4<f32> = u_xlat2;
    let x_1216 : vec3<f32> = (-(x_1212) + vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
    let x_1217 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
    let x_1220 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1222 : vec4<f32> = u_xlat2;
    let x_1225 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1220.w, x_1220.w, x_1220.w) * vec3<f32>(x_1222.x, x_1222.y, x_1222.z)) + x_1225);
    let x_1227 : vec3<f32> = u_xlat1;
    let x_1230 : vec3<f32> = (x_1227 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1231 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
    let x_1233 : vec3<f32> = u_xlat1;
    let x_1236 : vec3<f32> = (x_1233 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1237 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
    let x_1239 : vec4<f32> = u_xlat3;
    let x_1243 : vec3<f32> = (vec3<f32>(x_1239.x, x_1239.y, x_1239.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1244 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
    let x_1246 : vec4<f32> = u_xlat3;
    let x_1249 : vec3<f32> = log2(abs(vec3<f32>(x_1246.x, x_1246.y, x_1246.z)));
    let x_1250 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
    let x_1252 : vec4<f32> = u_xlat3;
    let x_1256 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1257 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
    let x_1259 : vec4<f32> = u_xlat3;
    let x_1261 : vec3<f32> = exp2(vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
    let x_1262 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
    let x_1266 : vec3<f32> = u_xlat1;
    let x_1268 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1266.x));
    u_xlatb1 = vec3<bool>(x_1268.x, x_1268.y, x_1268.z);
    let x_1271 : bool = u_xlatb1.x;
    if (x_1271) {
      let x_1276 : f32 = u_xlat2.x;
      x_1272 = x_1276;
    } else {
      let x_1279 : f32 = u_xlat3.x;
      x_1272 = x_1279;
    }
    let x_1280 : f32 = x_1272;
    u_xlat0.x = x_1280;
    let x_1283 : bool = u_xlatb1.y;
    if (x_1283) {
      let x_1288 : f32 = u_xlat2.y;
      x_1284 = x_1288;
    } else {
      let x_1291 : f32 = u_xlat3.y;
      x_1284 = x_1291;
    }
    let x_1292 : f32 = x_1284;
    u_xlat0.y = x_1292;
    let x_1295 : bool = u_xlatb1.z;
    if (x_1295) {
      let x_1300 : f32 = u_xlat2.z;
      x_1296 = x_1300;
    } else {
      let x_1303 : f32 = u_xlat3.z;
      x_1296 = x_1303;
    }
    let x_1304 : f32 = x_1296;
    u_xlat0.z = x_1304;
  }
  let x_1306 : vec4<f32> = u_xlat0;
  let x_1309 : vec4<f32> = x_25.x_Lut_Params;
  let x_1311 : vec3<f32> = (vec3<f32>(x_1306.x, x_1306.y, x_1306.z) * vec3<f32>(x_1309.z, x_1309.z, x_1309.z));
  let x_1312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1311.z);
  let x_1315 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1315);
  let x_1318 : vec4<f32> = x_25.x_Lut_Params;
  let x_1320 : vec2<f32> = (vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(0.5f, 0.5f));
  let x_1321 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1320.x, x_1320.y, x_1321.z);
  let x_1323 : vec4<f32> = u_xlat0;
  let x_1326 : vec4<f32> = x_25.x_Lut_Params;
  let x_1329 : vec3<f32> = u_xlat1;
  let x_1331 : vec2<f32> = ((vec2<f32>(x_1323.x, x_1323.y) * vec2<f32>(x_1326.x, x_1326.y)) + vec2<f32>(x_1329.x, x_1329.y));
  let x_1332 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1332.x, x_1331.x, x_1331.y);
  let x_1334 : f32 = u_xlat21;
  let x_1336 : f32 = x_25.x_Lut_Params.y;
  let x_1339 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1334 * x_1336) + x_1339);
  let x_1346 : vec3<f32> = u_xlat1;
  let x_1348 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1346.x, x_1346.z), 0.0f);
  let x_1349 : vec3<f32> = vec3<f32>(x_1348.x, x_1348.y, x_1348.z);
  let x_1350 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
  let x_1353 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1353;
  u_xlat0.y = 0.0f;
  let x_1356 : vec4<f32> = u_xlat0;
  let x_1358 : vec3<f32> = u_xlat1;
  let x_1360 : vec2<f32> = (vec2<f32>(x_1356.x, x_1356.y) + vec2<f32>(x_1358.x, x_1358.z));
  let x_1361 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1360.x, x_1360.y, x_1361.z, x_1361.w);
  let x_1366 : vec4<f32> = u_xlat0;
  let x_1368 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1366.x, x_1366.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1368.x, x_1368.y, x_1368.z);
  let x_1371 : f32 = u_xlat0.z;
  let x_1373 : f32 = x_25.x_Lut_Params.z;
  let x_1375 : f32 = u_xlat21;
  u_xlat0.x = ((x_1371 * x_1373) + -(x_1375));
  let x_1379 : vec4<f32> = u_xlat2;
  let x_1382 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1379.x, x_1379.y, x_1379.z)) + x_1382);
  let x_1384 : vec4<f32> = u_xlat0;
  let x_1386 : vec3<f32> = u_xlat7;
  let x_1388 : vec4<f32> = u_xlat2;
  let x_1390 : vec3<f32> = ((vec3<f32>(x_1384.x, x_1384.x, x_1384.x) * x_1386) + vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
  let x_1391 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
  let x_1393 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1393.x, x_1393.y, x_1393.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1396 : vec4<f32> = u_xlat0;
  let x_1399 : vec3<f32> = log2(abs(vec3<f32>(x_1396.x, x_1396.y, x_1396.z)));
  let x_1400 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec4<f32> = u_xlat2;
  let x_1404 : vec3<f32> = (vec3<f32>(x_1402.x, x_1402.y, x_1402.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1405 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);
  let x_1407 : vec4<f32> = u_xlat2;
  let x_1409 : vec3<f32> = exp2(vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
  let x_1410 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
  let x_1412 : vec4<f32> = u_xlat2;
  let x_1415 : vec3<f32> = ((vec3<f32>(x_1412.x, x_1412.y, x_1412.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1416 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1418 : vec4<f32> = u_xlat0;
  let x_1420 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1418.x));
  u_xlatb0 = vec3<bool>(x_1420.x, x_1420.y, x_1420.z);
  let x_1423 : bool = u_xlatb0.x;
  if (x_1423) {
    let x_1428 : f32 = u_xlat1.x;
    x_1424 = x_1428;
  } else {
    let x_1431 : f32 = u_xlat2.x;
    x_1424 = x_1431;
  }
  let x_1432 : f32 = x_1424;
  u_xlat0.x = x_1432;
  let x_1435 : bool = u_xlatb0.y;
  if (x_1435) {
    let x_1440 : f32 = u_xlat1.y;
    x_1436 = x_1440;
  } else {
    let x_1443 : f32 = u_xlat2.y;
    x_1436 = x_1443;
  }
  let x_1444 : f32 = x_1436;
  u_xlat0.y = x_1444;
  let x_1447 : bool = u_xlatb0.z;
  if (x_1447) {
    let x_1452 : f32 = u_xlat1.z;
    x_1448 = x_1452;
  } else {
    let x_1455 : f32 = u_xlat2.z;
    x_1448 = x_1455;
  }
  let x_1456 : f32 = x_1448;
  u_xlat0.z = x_1456;
  let x_1458 : vec2<f32> = vs_TEXCOORD0;
  let x_1461 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1465 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1467 : vec2<f32> = ((x_1458 * vec2<f32>(x_1461.x, x_1461.y)) + vec2<f32>(x_1465.z, x_1465.w));
  let x_1468 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1467.x, x_1467.y, x_1468.z);
  let x_1475 : vec3<f32> = u_xlat1;
  let x_1478 : f32 = x_25.x_GlobalMipBias.x;
  let x_1479 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1475.x, x_1475.y), x_1478);
  u_xlat21 = x_1479.w;
  let x_1481 : f32 = u_xlat21;
  u_xlat21 = ((x_1481 * 2.0f) + -1.0f);
  let x_1484 : f32 = u_xlat21;
  u_xlatb1.x = (x_1484 >= 0.0f);
  let x_1488 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1488);
  let x_1491 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1491)) + 1.0f);
  let x_1495 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1495);
  let x_1497 : f32 = u_xlat21;
  u_xlat21 = (-(x_1497) + 1.0f);
  let x_1500 : f32 = u_xlat21;
  let x_1502 : f32 = u_xlat1.x;
  u_xlat21 = (x_1500 * x_1502);
  let x_1504 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1504.x, x_1504.y, x_1504.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1507 : vec4<f32> = u_xlat0;
  let x_1510 : vec3<f32> = log2(abs(vec3<f32>(x_1507.x, x_1507.y, x_1507.z)));
  let x_1511 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1510.x, x_1510.y, x_1510.z, x_1511.w);
  let x_1513 : vec4<f32> = u_xlat2;
  let x_1515 : vec3<f32> = (vec3<f32>(x_1513.x, x_1513.y, x_1513.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
  let x_1518 : vec4<f32> = u_xlat2;
  let x_1520 : vec3<f32> = exp2(vec3<f32>(x_1518.x, x_1518.y, x_1518.z));
  let x_1521 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
  let x_1523 : vec4<f32> = u_xlat2;
  let x_1526 : vec3<f32> = ((vec3<f32>(x_1523.x, x_1523.y, x_1523.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1527 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1526.x, x_1526.y, x_1526.z, x_1527.w);
  let x_1529 : vec4<f32> = u_xlat0;
  let x_1531 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1529.x, x_1529.y, x_1529.z, x_1529.x));
  u_xlatb0 = vec3<bool>(x_1531.x, x_1531.y, x_1531.z);
  let x_1534 : bool = u_xlatb0.x;
  if (x_1534) {
    let x_1539 : f32 = u_xlat1.x;
    x_1535 = x_1539;
  } else {
    let x_1542 : f32 = u_xlat2.x;
    x_1535 = x_1542;
  }
  let x_1543 : f32 = x_1535;
  u_xlat0.x = x_1543;
  let x_1546 : bool = u_xlatb0.y;
  if (x_1546) {
    let x_1551 : f32 = u_xlat1.y;
    x_1547 = x_1551;
  } else {
    let x_1554 : f32 = u_xlat2.y;
    x_1547 = x_1554;
  }
  let x_1555 : f32 = x_1547;
  u_xlat0.y = x_1555;
  let x_1558 : bool = u_xlatb0.z;
  if (x_1558) {
    let x_1563 : f32 = u_xlat1.z;
    x_1559 = x_1563;
  } else {
    let x_1566 : f32 = u_xlat2.z;
    x_1559 = x_1566;
  }
  let x_1567 : f32 = x_1559;
  u_xlat0.z = x_1567;
  let x_1569 : f32 = u_xlat21;
  let x_1574 : vec4<f32> = u_xlat0;
  let x_1576 : vec3<f32> = ((vec3<f32>(x_1569, x_1569, x_1569) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1574.x, x_1574.y, x_1574.z));
  let x_1577 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1577.w);
  let x_1579 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1579.x, x_1579.y, x_1579.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1582 : vec4<f32> = u_xlat0;
  let x_1584 : vec3<f32> = (vec3<f32>(x_1582.x, x_1582.y, x_1582.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1585 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
  let x_1587 : vec4<f32> = u_xlat2;
  let x_1589 : vec3<f32> = (vec3<f32>(x_1587.x, x_1587.y, x_1587.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1590 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
  let x_1592 : vec4<f32> = u_xlat2;
  let x_1595 : vec3<f32> = log2(abs(vec3<f32>(x_1592.x, x_1592.y, x_1592.z)));
  let x_1596 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);
  let x_1598 : vec4<f32> = u_xlat2;
  let x_1600 : vec3<f32> = (vec3<f32>(x_1598.x, x_1598.y, x_1598.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1601 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1603 : vec4<f32> = u_xlat2;
  let x_1605 : vec3<f32> = exp2(vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
  let x_1606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
  let x_1608 : vec4<f32> = u_xlat0;
  let x_1610 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1608.x));
  u_xlatb0 = vec3<bool>(x_1610.x, x_1610.y, x_1610.z);
  let x_1613 : bool = u_xlatb0.x;
  if (x_1613) {
    let x_1618 : f32 = u_xlat1.x;
    x_1614 = x_1618;
  } else {
    let x_1621 : f32 = u_xlat2.x;
    x_1614 = x_1621;
  }
  let x_1622 : f32 = x_1614;
  u_xlat0.x = x_1622;
  let x_1625 : bool = u_xlatb0.y;
  if (x_1625) {
    let x_1630 : f32 = u_xlat1.y;
    x_1626 = x_1630;
  } else {
    let x_1633 : f32 = u_xlat2.y;
    x_1626 = x_1633;
  }
  let x_1634 : f32 = x_1626;
  u_xlat0.y = x_1634;
  let x_1637 : bool = u_xlatb0.z;
  if (x_1637) {
    let x_1642 : f32 = u_xlat1.z;
    x_1638 = x_1642;
  } else {
    let x_1645 : f32 = u_xlat2.z;
    x_1638 = x_1645;
  }
  let x_1646 : f32 = x_1638;
  u_xlat0.z = x_1646;
  let x_1650 : vec4<f32> = u_xlat0;
  let x_1653 : vec3<f32> = max(vec3<f32>(x_1650.x, x_1650.y, x_1650.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1654 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1654.w);
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

