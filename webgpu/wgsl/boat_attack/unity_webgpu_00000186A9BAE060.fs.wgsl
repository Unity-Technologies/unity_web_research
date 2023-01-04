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
  x_LensDirt_Params : vec4<f32>,
  x_LensDirt_Intensity : f32,
  @size(12)
  padding_2 : u32,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
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
  var hlslcc_movcTemp : vec4<f32>;
  var x_499 : f32;
  var x_511 : f32;
  var x_523 : f32;
  var u_xlat4 : vec2<f32>;
  var x_674 : f32;
  var x_686 : f32;
  var x_698 : f32;
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
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_79);
  let x_81 : bool = u_xlatb6;
  if (x_81) {
    let x_85 : vec4<f32> = u_xlat1;
    let x_88 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat6 = (vec2<f32>(x_85.x, x_85.x) * vec2<f32>(x_88.x, x_88.y));
    let x_93 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_93);
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
    let x_246 : vec4<f32> = u_xlat1;
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
  let x_316 : vec2<f32> = u_xlat6;
  let x_319 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_323 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_325 : vec2<f32> = ((x_316 * vec2<f32>(x_319.x, x_319.y)) + vec2<f32>(x_323.z, x_323.w));
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_325.x, x_326.y, x_326.z, x_325.y);
  let x_332 : vec4<f32> = u_xlat1;
  let x_335 : f32 = x_25.x_GlobalMipBias.x;
  let x_336 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_332.x, x_332.w), x_335);
  u_xlat3 = vec3<f32>(x_336.x, x_336.y, x_336.z);
  let x_338 : vec3<f32> = u_xlat3;
  let x_341 : f32 = x_25.x_LensDirt_Intensity;
  u_xlat3 = (x_338 * vec3<f32>(x_341, x_341, x_341));
  let x_344 : vec3<f32> = u_xlat3;
  let x_345 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = u_xlat0;
  let x_350 : vec3<f32> = ((x_344 * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_356 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_356);
  let x_358 : bool = u_xlatb15;
  if (x_358) {
    let x_361 : vec2<f32> = u_xlat6;
    let x_363 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_366 : vec2<f32> = (x_361 + -(vec2<f32>(x_363.x, x_363.y)));
    let x_367 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
    let x_369 : vec4<f32> = u_xlat1;
    let x_373 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_375 : vec2<f32> = (abs(vec2<f32>(x_369.x, x_369.y)) * vec2<f32>(x_373.z, x_373.z));
    let x_376 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_376.x, x_375.x, x_375.y, x_376.w);
    let x_379 : f32 = u_xlat1.y;
    let x_382 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_379 * x_382);
    let x_386 : vec4<f32> = u_xlat1;
    let x_388 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_386.x, x_386.z), vec2<f32>(x_388.x, x_388.z));
    let x_391 : f32 = u_xlat15;
    u_xlat15 = (-(x_391) + 1.0f);
    let x_394 : f32 = u_xlat15;
    u_xlat15 = max(x_394, 0.0f);
    let x_396 : f32 = u_xlat15;
    u_xlat15 = log2(x_396);
    let x_398 : f32 = u_xlat15;
    let x_400 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_398 * x_400);
    let x_402 : f32 = u_xlat15;
    u_xlat15 = exp2(x_402);
    let x_405 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_409 : vec3<f32> = (-(vec3<f32>(x_405.x, x_405.y, x_405.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_410 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
    let x_412 : f32 = u_xlat15;
    let x_414 : vec4<f32> = u_xlat1;
    let x_418 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_420 : vec3<f32> = ((vec3<f32>(x_412, x_412, x_412) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + vec3<f32>(x_418.x, x_418.y, x_418.z));
    let x_421 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
    let x_423 : vec4<f32> = u_xlat0;
    let x_425 : vec4<f32> = u_xlat1;
    let x_427 : vec3<f32> = (vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.x, x_425.y, x_425.z));
    let x_428 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  }
  let x_430 : vec4<f32> = u_xlat0;
  let x_434 : vec4<f32> = x_25.x_Lut_Params;
  let x_436 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) * vec3<f32>(x_434.w, x_434.w, x_434.w));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat0;
  let x_443 : vec3<f32> = clamp(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_448 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_448);
  let x_450 : bool = u_xlatb15;
  if (x_450) {
    let x_453 : vec4<f32> = u_xlat0;
    let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_458 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
    let x_460 : vec4<f32> = u_xlat0;
    let x_462 : vec3<f32> = log2(vec3<f32>(x_460.x, x_460.y, x_460.z));
    let x_463 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
    let x_465 : vec4<f32> = u_xlat2;
    let x_469 : vec3<f32> = (vec3<f32>(x_465.x, x_465.y, x_465.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_470 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
    let x_472 : vec4<f32> = u_xlat2;
    let x_474 : vec3<f32> = exp2(vec3<f32>(x_472.x, x_472.y, x_472.z));
    let x_475 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
    let x_477 : vec4<f32> = u_xlat2;
    let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_485 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
    let x_490 : vec4<f32> = u_xlat0;
    let x_493 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_490.x, x_490.y, x_490.z, x_490.x));
    u_xlatb3 = vec3<bool>(x_493.x, x_493.y, x_493.z);
    let x_496 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_496;
    let x_498 : bool = u_xlatb3.x;
    if (x_498) {
      let x_503 : f32 = u_xlat1.x;
      x_499 = x_503;
    } else {
      let x_506 : f32 = u_xlat2.x;
      x_499 = x_506;
    }
    let x_507 : f32 = x_499;
    hlslcc_movcTemp.x = x_507;
    let x_510 : bool = u_xlatb3.y;
    if (x_510) {
      let x_515 : f32 = u_xlat1.y;
      x_511 = x_515;
    } else {
      let x_518 : f32 = u_xlat2.y;
      x_511 = x_518;
    }
    let x_519 : f32 = x_511;
    hlslcc_movcTemp.y = x_519;
    let x_522 : bool = u_xlatb3.z;
    if (x_522) {
      let x_527 : f32 = u_xlat1.z;
      x_523 = x_527;
    } else {
      let x_530 : f32 = u_xlat2.z;
      x_523 = x_530;
    }
    let x_531 : f32 = x_523;
    hlslcc_movcTemp.z = x_531;
    let x_533 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_533;
    let x_534 : vec4<f32> = u_xlat1;
    let x_537 : vec4<f32> = x_25.x_UserLut_Params;
    let x_539 : vec3<f32> = (vec3<f32>(x_534.z, x_534.x, x_534.y) * vec3<f32>(x_537.z, x_537.z, x_537.z));
    let x_540 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
    let x_543 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_543);
    let x_546 : vec4<f32> = x_25.x_UserLut_Params;
    let x_548 : vec2<f32> = (vec2<f32>(x_546.x, x_546.y) * vec2<f32>(0.5f, 0.5f));
    let x_549 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_548.x, x_549.y, x_549.z, x_548.y);
    let x_551 : vec4<f32> = u_xlat2;
    let x_554 : vec4<f32> = x_25.x_UserLut_Params;
    let x_557 : vec4<f32> = u_xlat2;
    let x_559 : vec2<f32> = ((vec2<f32>(x_551.y, x_551.z) * vec2<f32>(x_554.x, x_554.y)) + vec2<f32>(x_557.x, x_557.w));
    let x_560 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_560.x, x_559.x, x_559.y, x_560.w);
    let x_562 : f32 = u_xlat15;
    let x_564 : f32 = x_25.x_UserLut_Params.y;
    let x_567 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_562 * x_564) + x_567);
    let x_574 : vec4<f32> = u_xlat2;
    let x_576 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_574.x, x_574.z), 0.0f);
    u_xlat3 = vec3<f32>(x_576.x, x_576.y, x_576.z);
    let x_580 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_580;
    u_xlat4.y = 0.0f;
    let x_583 : vec4<f32> = u_xlat2;
    let x_585 : vec2<f32> = u_xlat4;
    let x_586 : vec2<f32> = (vec2<f32>(x_583.x, x_583.z) + x_585);
    let x_587 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
    let x_592 : vec4<f32> = u_xlat2;
    let x_594 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_592.x, x_592.y), 0.0f);
    let x_595 : vec3<f32> = vec3<f32>(x_594.x, x_594.y, x_594.z);
    let x_596 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
    let x_599 : f32 = u_xlat1.z;
    let x_601 : f32 = x_25.x_UserLut_Params.z;
    let x_603 : f32 = u_xlat15;
    u_xlat15 = ((x_599 * x_601) + -(x_603));
    let x_606 : vec3<f32> = u_xlat3;
    let x_608 : vec4<f32> = u_xlat2;
    let x_610 : vec3<f32> = (-(x_606) + vec3<f32>(x_608.x, x_608.y, x_608.z));
    let x_611 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
    let x_613 : f32 = u_xlat15;
    let x_615 : vec4<f32> = u_xlat2;
    let x_618 : vec3<f32> = u_xlat3;
    let x_619 : vec3<f32> = ((vec3<f32>(x_613, x_613, x_613) * vec3<f32>(x_615.x, x_615.y, x_615.z)) + x_618);
    let x_620 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
    let x_622 : vec4<f32> = u_xlat1;
    let x_625 : vec4<f32> = u_xlat2;
    let x_627 : vec3<f32> = (-(vec3<f32>(x_622.x, x_622.y, x_622.z)) + vec3<f32>(x_625.x, x_625.y, x_625.z));
    let x_628 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
    let x_631 : vec4<f32> = x_25.x_UserLut_Params;
    let x_633 : vec4<f32> = u_xlat2;
    let x_636 : vec4<f32> = u_xlat1;
    let x_638 : vec3<f32> = ((vec3<f32>(x_631.w, x_631.w, x_631.w) * vec3<f32>(x_633.x, x_633.y, x_633.z)) + vec3<f32>(x_636.x, x_636.y, x_636.z));
    let x_639 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
    let x_641 : vec4<f32> = u_xlat1;
    let x_645 : vec3<f32> = (vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_646 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
    let x_648 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_648.x, x_648.y, x_648.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_653 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_653 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_657 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_657));
    let x_660 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_660 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_664 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_664);
    let x_668 : vec4<f32> = u_xlat1;
    let x_670 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_668.x, x_668.y, x_668.z, x_668.x));
    u_xlatb1 = vec3<bool>(x_670.x, x_670.y, x_670.z);
    let x_673 : bool = u_xlatb1.x;
    if (x_673) {
      let x_678 : f32 = u_xlat2.x;
      x_674 = x_678;
    } else {
      let x_681 : f32 = u_xlat3.x;
      x_674 = x_681;
    }
    let x_682 : f32 = x_674;
    u_xlat0.x = x_682;
    let x_685 : bool = u_xlatb1.y;
    if (x_685) {
      let x_690 : f32 = u_xlat2.y;
      x_686 = x_690;
    } else {
      let x_693 : f32 = u_xlat3.y;
      x_686 = x_693;
    }
    let x_694 : f32 = x_686;
    u_xlat0.y = x_694;
    let x_697 : bool = u_xlatb1.z;
    if (x_697) {
      let x_702 : f32 = u_xlat2.z;
      x_698 = x_702;
    } else {
      let x_705 : f32 = u_xlat3.z;
      x_698 = x_705;
    }
    let x_706 : f32 = x_698;
    u_xlat0.z = x_706;
  }
  let x_708 : vec4<f32> = u_xlat0;
  let x_711 : vec4<f32> = x_25.x_Lut_Params;
  let x_713 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(x_711.z, x_711.z, x_711.z));
  let x_714 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_713.z);
  let x_717 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_717);
  let x_720 : vec4<f32> = x_25.x_Lut_Params;
  let x_722 : vec2<f32> = (vec2<f32>(x_720.x, x_720.y) * vec2<f32>(0.5f, 0.5f));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_723.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat0;
  let x_728 : vec4<f32> = x_25.x_Lut_Params;
  let x_731 : vec4<f32> = u_xlat1;
  let x_733 : vec2<f32> = ((vec2<f32>(x_725.x, x_725.y) * vec2<f32>(x_728.x, x_728.y)) + vec2<f32>(x_731.x, x_731.y));
  let x_734 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_734.x, x_733.x, x_733.y, x_734.w);
  let x_736 : f32 = u_xlat15;
  let x_738 : f32 = x_25.x_Lut_Params.y;
  let x_741 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_736 * x_738) + x_741);
  let x_748 : vec4<f32> = u_xlat1;
  let x_750 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_748.x, x_748.z), 0.0f);
  let x_751 : vec3<f32> = vec3<f32>(x_750.x, x_750.y, x_750.z);
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_755 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_755;
  u_xlat0.y = 0.0f;
  let x_758 : vec4<f32> = u_xlat0;
  let x_760 : vec4<f32> = u_xlat1;
  let x_762 : vec2<f32> = (vec2<f32>(x_758.x, x_758.y) + vec2<f32>(x_760.x, x_760.z));
  let x_763 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
  let x_768 : vec4<f32> = u_xlat0;
  let x_770 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_768.x, x_768.y), 0.0f);
  let x_771 : vec3<f32> = vec3<f32>(x_770.x, x_770.y, x_770.z);
  let x_772 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_775 : f32 = u_xlat0.z;
  let x_777 : f32 = x_25.x_Lut_Params.z;
  let x_779 : f32 = u_xlat15;
  u_xlat0.x = ((x_775 * x_777) + -(x_779));
  let x_784 : vec4<f32> = u_xlat2;
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_784.x, x_784.y, x_784.z)) + vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_792 : vec4<f32> = u_xlat0;
  let x_794 : vec3<f32> = u_xlat5;
  let x_796 : vec4<f32> = u_xlat2;
  let x_798 : vec3<f32> = ((vec3<f32>(x_792.x, x_792.x, x_792.x) * x_794) + vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
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

