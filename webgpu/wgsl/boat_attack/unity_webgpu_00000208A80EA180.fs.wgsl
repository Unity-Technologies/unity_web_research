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
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : vec3<bool>;
  var x_227 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_454 : f32;
  var x_466 : f32;
  var x_478 : f32;
  var u_xlat4 : vec2<f32>;
  var x_623 : f32;
  var x_635 : f32;
  var x_647 : f32;
  var u_xlat5 : vec3<f32>;
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
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
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
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat6 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat6.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat6.y;
    u_xlat11 = (1.0f / x_113);
    let x_116 : f32 = u_xlat6.x;
    let x_117 : f32 = u_xlat11;
    u_xlat6.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat6;
    let x_127 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_132);
    let x_134 : f32 = u_xlat16;
    let x_136 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_139 * x_141);
    let x_145 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_145), 1.0f);
    let x_151 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_151), 1.0f);
    let x_154 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_154);
    let x_156 : f32 = u_xlat7;
    let x_158 : f32 = u_xlat2.x;
    u_xlat2.x = (x_156 * x_158);
    let x_162 : f32 = u_xlat2.x;
    let x_164 : f32 = u_xlat2.x;
    u_xlat7 = (x_162 * x_164);
    let x_167 : f32 = u_xlat7;
    u_xlat12 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat7;
    let x_173 : f32 = u_xlat12;
    u_xlat12 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat7;
    let x_178 : f32 = u_xlat12;
    u_xlat12 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat7;
    let x_183 : f32 = u_xlat12;
    u_xlat7 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat7;
    let x_189 : f32 = u_xlat2.x;
    u_xlat12 = (x_187 * x_189);
    let x_193 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_193));
    let x_196 : f32 = u_xlat12;
    u_xlat12 = ((x_196 * -2.0f) + 1.570796371f);
    let x_201 : bool = u_xlatb17;
    let x_202 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_202, x_201);
    let x_205 : f32 = u_xlat2.x;
    let x_206 : f32 = u_xlat7;
    let x_208 : f32 = u_xlat12;
    u_xlat2.x = ((x_205 * x_206) + x_208);
    let x_212 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_212, 1.0f);
    let x_219 : f32 = u_xlat1.x;
    let x_221 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_219 < -(x_221));
    let x_226 : bool = u_xlatb1.x;
    if (x_226) {
      let x_231 : f32 = u_xlat2.x;
      x_227 = -(x_231);
    } else {
      let x_235 : f32 = u_xlat2.x;
      x_227 = x_235;
    }
    let x_236 : f32 = x_227;
    u_xlat1.x = x_236;
    let x_238 : f32 = u_xlat16;
    let x_240 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_238 * x_240) + -1.0f);
    let x_244 : vec4<f32> = u_xlat0;
    let x_246 : vec3<f32> = u_xlat1;
    let x_249 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_244.x, x_244.y) * vec2<f32>(x_246.x, x_246.x)) + x_249);
  }
  let x_261 : vec2<f32> = u_xlat6;
  let x_264 : f32 = x_25.x_GlobalMipBias.x;
  let x_265 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_261, x_264);
  let x_266 : vec3<f32> = vec3<f32>(x_265.x, x_265.y, x_265.z);
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_273 : vec2<f32> = u_xlat6;
  let x_275 : f32 = x_25.x_GlobalMipBias.x;
  let x_276 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_273, x_275);
  u_xlat2 = x_276;
  let x_280 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_280);
  let x_282 : bool = u_xlatb15;
  if (x_282) {
    let x_285 : vec4<f32> = u_xlat2;
    let x_287 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_285.w, x_285.w, x_285.w) * vec3<f32>(x_287.x, x_287.y, x_287.z));
    let x_290 : vec3<f32> = u_xlat3;
    let x_293 : vec3<f32> = (x_290 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_294 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  }
  let x_296 : vec4<f32> = u_xlat2;
  let x_300 : vec4<f32> = x_25.x_Bloom_Params;
  let x_302 : vec3<f32> = (vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_300.x, x_300.x, x_300.x));
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = x_25.x_Bloom_Params;
  let x_311 : vec4<f32> = u_xlat0;
  let x_313 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_308.y, x_308.z, x_308.w)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_319 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_319);
  let x_321 : bool = u_xlatb15;
  if (x_321) {
    let x_324 : vec2<f32> = u_xlat6;
    let x_326 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_329 : vec2<f32> = (x_324 + -(vec2<f32>(x_326.x, x_326.y)));
    let x_330 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_329.x, x_329.y, x_330.z);
    let x_332 : vec3<f32> = u_xlat1;
    let x_336 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_338 : vec2<f32> = (abs(vec2<f32>(x_332.x, x_332.y)) * vec2<f32>(x_336.z, x_336.z));
    let x_339 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_339.x, x_338.x, x_338.y);
    let x_342 : f32 = u_xlat1.y;
    let x_345 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_342 * x_345);
    let x_349 : vec3<f32> = u_xlat1;
    let x_351 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_349.x, x_349.z), vec2<f32>(x_351.x, x_351.z));
    let x_354 : f32 = u_xlat15;
    u_xlat15 = (-(x_354) + 1.0f);
    let x_357 : f32 = u_xlat15;
    u_xlat15 = max(x_357, 0.0f);
    let x_359 : f32 = u_xlat15;
    u_xlat15 = log2(x_359);
    let x_361 : f32 = u_xlat15;
    let x_363 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_361 * x_363);
    let x_365 : f32 = u_xlat15;
    u_xlat15 = exp2(x_365);
    let x_368 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_368.x, x_368.y, x_368.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_373 : f32 = u_xlat15;
    let x_375 : vec3<f32> = u_xlat1;
    let x_378 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_373, x_373, x_373) * x_375) + vec3<f32>(x_378.x, x_378.y, x_378.z));
    let x_381 : vec4<f32> = u_xlat0;
    let x_383 : vec3<f32> = u_xlat1;
    let x_384 : vec3<f32> = (vec3<f32>(x_381.x, x_381.y, x_381.z) * x_383);
    let x_385 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  }
  let x_387 : vec4<f32> = u_xlat0;
  let x_391 : vec4<f32> = x_25.x_Lut_Params;
  let x_393 : vec3<f32> = (vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_391.w, x_391.w, x_391.w));
  let x_394 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : vec4<f32> = u_xlat0;
  let x_400 : vec3<f32> = clamp(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_401 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_405 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_405);
  let x_407 : bool = u_xlatb15;
  if (x_407) {
    let x_410 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_415 : vec4<f32> = u_xlat0;
    let x_417 : vec3<f32> = log2(vec3<f32>(x_415.x, x_415.y, x_415.z));
    let x_418 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_420 : vec4<f32> = u_xlat2;
    let x_424 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_425 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
    let x_427 : vec4<f32> = u_xlat2;
    let x_429 : vec3<f32> = exp2(vec3<f32>(x_427.x, x_427.y, x_427.z));
    let x_430 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
    let x_432 : vec4<f32> = u_xlat2;
    let x_439 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_440 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
    let x_445 : vec4<f32> = u_xlat0;
    let x_448 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_445.x, x_445.y, x_445.z, x_445.x));
    u_xlatb3 = vec3<bool>(x_448.x, x_448.y, x_448.z);
    let x_451 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_451;
    let x_453 : bool = u_xlatb3.x;
    if (x_453) {
      let x_458 : f32 = u_xlat1.x;
      x_454 = x_458;
    } else {
      let x_461 : f32 = u_xlat2.x;
      x_454 = x_461;
    }
    let x_462 : f32 = x_454;
    hlslcc_movcTemp.x = x_462;
    let x_465 : bool = u_xlatb3.y;
    if (x_465) {
      let x_470 : f32 = u_xlat1.y;
      x_466 = x_470;
    } else {
      let x_473 : f32 = u_xlat2.y;
      x_466 = x_473;
    }
    let x_474 : f32 = x_466;
    hlslcc_movcTemp.y = x_474;
    let x_477 : bool = u_xlatb3.z;
    if (x_477) {
      let x_482 : f32 = u_xlat1.z;
      x_478 = x_482;
    } else {
      let x_485 : f32 = u_xlat2.z;
      x_478 = x_485;
    }
    let x_486 : f32 = x_478;
    hlslcc_movcTemp.z = x_486;
    let x_488 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_488;
    let x_489 : vec3<f32> = u_xlat1;
    let x_492 : vec4<f32> = x_25.x_UserLut_Params;
    let x_494 : vec3<f32> = (vec3<f32>(x_489.z, x_489.x, x_489.y) * vec3<f32>(x_492.z, x_492.z, x_492.z));
    let x_495 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
    let x_498 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_498);
    let x_501 : vec4<f32> = x_25.x_UserLut_Params;
    let x_503 : vec2<f32> = (vec2<f32>(x_501.x, x_501.y) * vec2<f32>(0.5f, 0.5f));
    let x_504 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_503.x, x_504.y, x_504.z, x_503.y);
    let x_506 : vec4<f32> = u_xlat2;
    let x_509 : vec4<f32> = x_25.x_UserLut_Params;
    let x_512 : vec4<f32> = u_xlat2;
    let x_514 : vec2<f32> = ((vec2<f32>(x_506.y, x_506.z) * vec2<f32>(x_509.x, x_509.y)) + vec2<f32>(x_512.x, x_512.w));
    let x_515 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_515.x, x_514.x, x_514.y, x_515.w);
    let x_517 : f32 = u_xlat15;
    let x_519 : f32 = x_25.x_UserLut_Params.y;
    let x_522 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_517 * x_519) + x_522);
    let x_529 : vec4<f32> = u_xlat2;
    let x_531 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_529.x, x_529.z), 0.0f);
    u_xlat3 = vec3<f32>(x_531.x, x_531.y, x_531.z);
    let x_535 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_535;
    u_xlat4.y = 0.0f;
    let x_538 : vec4<f32> = u_xlat2;
    let x_540 : vec2<f32> = u_xlat4;
    let x_541 : vec2<f32> = (vec2<f32>(x_538.x, x_538.z) + x_540);
    let x_542 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_541.x, x_541.y, x_542.z, x_542.w);
    let x_547 : vec4<f32> = u_xlat2;
    let x_549 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_547.x, x_547.y), 0.0f);
    let x_550 : vec3<f32> = vec3<f32>(x_549.x, x_549.y, x_549.z);
    let x_551 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
    let x_554 : f32 = u_xlat1.z;
    let x_556 : f32 = x_25.x_UserLut_Params.z;
    let x_558 : f32 = u_xlat15;
    u_xlat15 = ((x_554 * x_556) + -(x_558));
    let x_561 : vec3<f32> = u_xlat3;
    let x_563 : vec4<f32> = u_xlat2;
    let x_565 : vec3<f32> = (-(x_561) + vec3<f32>(x_563.x, x_563.y, x_563.z));
    let x_566 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
    let x_568 : f32 = u_xlat15;
    let x_570 : vec4<f32> = u_xlat2;
    let x_573 : vec3<f32> = u_xlat3;
    let x_574 : vec3<f32> = ((vec3<f32>(x_568, x_568, x_568) * vec3<f32>(x_570.x, x_570.y, x_570.z)) + x_573);
    let x_575 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
    let x_577 : vec3<f32> = u_xlat1;
    let x_579 : vec4<f32> = u_xlat2;
    let x_581 : vec3<f32> = (-(x_577) + vec3<f32>(x_579.x, x_579.y, x_579.z));
    let x_582 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
    let x_585 : vec4<f32> = x_25.x_UserLut_Params;
    let x_587 : vec4<f32> = u_xlat2;
    let x_590 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_585.w, x_585.w, x_585.w) * vec3<f32>(x_587.x, x_587.y, x_587.z)) + x_590);
    let x_592 : vec3<f32> = u_xlat1;
    let x_595 : vec3<f32> = (x_592 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_596 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
    let x_598 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_598 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_602 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_602 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_606 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_606));
    let x_609 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_609 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_613 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_613);
    let x_617 : vec3<f32> = u_xlat1;
    let x_619 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_617.x, x_617.y, x_617.z, x_617.x));
    u_xlatb1 = vec3<bool>(x_619.x, x_619.y, x_619.z);
    let x_622 : bool = u_xlatb1.x;
    if (x_622) {
      let x_627 : f32 = u_xlat2.x;
      x_623 = x_627;
    } else {
      let x_630 : f32 = u_xlat3.x;
      x_623 = x_630;
    }
    let x_631 : f32 = x_623;
    u_xlat0.x = x_631;
    let x_634 : bool = u_xlatb1.y;
    if (x_634) {
      let x_639 : f32 = u_xlat2.y;
      x_635 = x_639;
    } else {
      let x_642 : f32 = u_xlat3.y;
      x_635 = x_642;
    }
    let x_643 : f32 = x_635;
    u_xlat0.y = x_643;
    let x_646 : bool = u_xlatb1.z;
    if (x_646) {
      let x_651 : f32 = u_xlat2.z;
      x_647 = x_651;
    } else {
      let x_654 : f32 = u_xlat3.z;
      x_647 = x_654;
    }
    let x_655 : f32 = x_647;
    u_xlat0.z = x_655;
  }
  let x_657 : vec4<f32> = u_xlat0;
  let x_660 : vec4<f32> = x_25.x_Lut_Params;
  let x_662 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(x_660.z, x_660.z, x_660.z));
  let x_663 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_662.z);
  let x_666 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_666);
  let x_669 : vec4<f32> = x_25.x_Lut_Params;
  let x_671 : vec2<f32> = (vec2<f32>(x_669.x, x_669.y) * vec2<f32>(0.5f, 0.5f));
  let x_672 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_671.x, x_671.y, x_672.z);
  let x_674 : vec4<f32> = u_xlat0;
  let x_677 : vec4<f32> = x_25.x_Lut_Params;
  let x_680 : vec3<f32> = u_xlat1;
  let x_682 : vec2<f32> = ((vec2<f32>(x_674.x, x_674.y) * vec2<f32>(x_677.x, x_677.y)) + vec2<f32>(x_680.x, x_680.y));
  let x_683 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_683.x, x_682.x, x_682.y);
  let x_685 : f32 = u_xlat15;
  let x_687 : f32 = x_25.x_Lut_Params.y;
  let x_690 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_685 * x_687) + x_690);
  let x_697 : vec3<f32> = u_xlat1;
  let x_699 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_697.x, x_697.z), 0.0f);
  let x_700 : vec3<f32> = vec3<f32>(x_699.x, x_699.y, x_699.z);
  let x_701 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_704 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_704;
  u_xlat0.y = 0.0f;
  let x_707 : vec4<f32> = u_xlat0;
  let x_709 : vec3<f32> = u_xlat1;
  let x_711 : vec2<f32> = (vec2<f32>(x_707.x, x_707.y) + vec2<f32>(x_709.x, x_709.z));
  let x_712 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
  let x_717 : vec4<f32> = u_xlat0;
  let x_719 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_717.x, x_717.y), 0.0f);
  u_xlat1 = vec3<f32>(x_719.x, x_719.y, x_719.z);
  let x_722 : f32 = u_xlat0.z;
  let x_724 : f32 = x_25.x_Lut_Params.z;
  let x_726 : f32 = u_xlat15;
  u_xlat0.x = ((x_722 * x_724) + -(x_726));
  let x_731 : vec4<f32> = u_xlat2;
  let x_734 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_731.x, x_731.y, x_731.z)) + x_734);
  let x_736 : vec4<f32> = u_xlat0;
  let x_738 : vec3<f32> = u_xlat5;
  let x_740 : vec4<f32> = u_xlat2;
  let x_742 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.x, x_736.x) * x_738) + vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_747 : vec4<f32> = u_xlat0;
  let x_749 : vec3<f32> = sqrt(vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
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

