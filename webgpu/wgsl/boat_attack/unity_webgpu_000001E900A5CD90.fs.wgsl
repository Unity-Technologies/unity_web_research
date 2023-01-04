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
  var x_563 : f32;
  var x_575 : f32;
  var x_587 : f32;
  var u_xlat4 : vec2<f32>;
  var x_738 : f32;
  var x_750 : f32;
  var x_762 : f32;
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
  let x_443 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_444 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = ((vec3<f32>(x_446.x, x_446.y, x_446.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat1;
  let x_458 : vec4<f32> = u_xlat2;
  let x_463 : vec3<f32> = ((vec3<f32>(x_456.x, x_456.y, x_456.z) * vec3<f32>(x_458.x, x_458.y, x_458.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat0;
  let x_471 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_472 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat1;
  let x_476 : vec4<f32> = u_xlat0;
  let x_481 : vec3<f32> = ((vec3<f32>(x_474.x, x_474.y, x_474.z) * vec3<f32>(x_476.x, x_476.y, x_476.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat2;
  let x_486 : vec4<f32> = u_xlat0;
  let x_488 : vec3<f32> = (vec3<f32>(x_484.x, x_484.y, x_484.z) / vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat0;
  let x_495 : vec3<f32> = (vec3<f32>(x_491.x, x_491.y, x_491.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_496 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat0;
  let x_500 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_501 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat0;
  let x_507 : vec3<f32> = clamp(vec3<f32>(x_503.x, x_503.y, x_503.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_512 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_512);
  let x_514 : bool = u_xlatb15;
  if (x_514) {
    let x_517 : vec4<f32> = u_xlat0;
    let x_521 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_522 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_524 : vec4<f32> = u_xlat0;
    let x_526 : vec3<f32> = log2(vec3<f32>(x_524.x, x_524.y, x_524.z));
    let x_527 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
    let x_529 : vec4<f32> = u_xlat2;
    let x_533 : vec3<f32> = (vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_534 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
    let x_536 : vec4<f32> = u_xlat2;
    let x_538 : vec3<f32> = exp2(vec3<f32>(x_536.x, x_536.y, x_536.z));
    let x_539 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
    let x_541 : vec4<f32> = u_xlat2;
    let x_548 : vec3<f32> = ((vec3<f32>(x_541.x, x_541.y, x_541.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_549 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
    let x_554 : vec4<f32> = u_xlat0;
    let x_557 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_554.x, x_554.y, x_554.z, x_554.x));
    u_xlatb3 = vec3<bool>(x_557.x, x_557.y, x_557.z);
    let x_560 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_560;
    let x_562 : bool = u_xlatb3.x;
    if (x_562) {
      let x_567 : f32 = u_xlat1.x;
      x_563 = x_567;
    } else {
      let x_570 : f32 = u_xlat2.x;
      x_563 = x_570;
    }
    let x_571 : f32 = x_563;
    hlslcc_movcTemp.x = x_571;
    let x_574 : bool = u_xlatb3.y;
    if (x_574) {
      let x_579 : f32 = u_xlat1.y;
      x_575 = x_579;
    } else {
      let x_582 : f32 = u_xlat2.y;
      x_575 = x_582;
    }
    let x_583 : f32 = x_575;
    hlslcc_movcTemp.y = x_583;
    let x_586 : bool = u_xlatb3.z;
    if (x_586) {
      let x_591 : f32 = u_xlat1.z;
      x_587 = x_591;
    } else {
      let x_594 : f32 = u_xlat2.z;
      x_587 = x_594;
    }
    let x_595 : f32 = x_587;
    hlslcc_movcTemp.z = x_595;
    let x_597 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_597;
    let x_598 : vec4<f32> = u_xlat1;
    let x_601 : vec4<f32> = x_25.x_UserLut_Params;
    let x_603 : vec3<f32> = (vec3<f32>(x_598.z, x_598.x, x_598.y) * vec3<f32>(x_601.z, x_601.z, x_601.z));
    let x_604 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
    let x_607 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_607);
    let x_610 : vec4<f32> = x_25.x_UserLut_Params;
    let x_612 : vec2<f32> = (vec2<f32>(x_610.x, x_610.y) * vec2<f32>(0.5f, 0.5f));
    let x_613 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_612.x, x_613.y, x_613.z, x_612.y);
    let x_615 : vec4<f32> = u_xlat2;
    let x_618 : vec4<f32> = x_25.x_UserLut_Params;
    let x_621 : vec4<f32> = u_xlat2;
    let x_623 : vec2<f32> = ((vec2<f32>(x_615.y, x_615.z) * vec2<f32>(x_618.x, x_618.y)) + vec2<f32>(x_621.x, x_621.w));
    let x_624 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_624.x, x_623.x, x_623.y, x_624.w);
    let x_626 : f32 = u_xlat15;
    let x_628 : f32 = x_25.x_UserLut_Params.y;
    let x_631 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_626 * x_628) + x_631);
    let x_638 : vec4<f32> = u_xlat2;
    let x_640 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_638.x, x_638.z), 0.0f);
    u_xlat3 = vec3<f32>(x_640.x, x_640.y, x_640.z);
    let x_644 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_644;
    u_xlat4.y = 0.0f;
    let x_647 : vec4<f32> = u_xlat2;
    let x_649 : vec2<f32> = u_xlat4;
    let x_650 : vec2<f32> = (vec2<f32>(x_647.x, x_647.z) + x_649);
    let x_651 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
    let x_656 : vec4<f32> = u_xlat2;
    let x_658 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_656.x, x_656.y), 0.0f);
    let x_659 : vec3<f32> = vec3<f32>(x_658.x, x_658.y, x_658.z);
    let x_660 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
    let x_663 : f32 = u_xlat1.z;
    let x_665 : f32 = x_25.x_UserLut_Params.z;
    let x_667 : f32 = u_xlat15;
    u_xlat15 = ((x_663 * x_665) + -(x_667));
    let x_670 : vec3<f32> = u_xlat3;
    let x_672 : vec4<f32> = u_xlat2;
    let x_674 : vec3<f32> = (-(x_670) + vec3<f32>(x_672.x, x_672.y, x_672.z));
    let x_675 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
    let x_677 : f32 = u_xlat15;
    let x_679 : vec4<f32> = u_xlat2;
    let x_682 : vec3<f32> = u_xlat3;
    let x_683 : vec3<f32> = ((vec3<f32>(x_677, x_677, x_677) * vec3<f32>(x_679.x, x_679.y, x_679.z)) + x_682);
    let x_684 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
    let x_686 : vec4<f32> = u_xlat1;
    let x_689 : vec4<f32> = u_xlat2;
    let x_691 : vec3<f32> = (-(vec3<f32>(x_686.x, x_686.y, x_686.z)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
    let x_692 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
    let x_695 : vec4<f32> = x_25.x_UserLut_Params;
    let x_697 : vec4<f32> = u_xlat2;
    let x_700 : vec4<f32> = u_xlat1;
    let x_702 : vec3<f32> = ((vec3<f32>(x_695.w, x_695.w, x_695.w) * vec3<f32>(x_697.x, x_697.y, x_697.z)) + vec3<f32>(x_700.x, x_700.y, x_700.z));
    let x_703 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
    let x_705 : vec4<f32> = u_xlat1;
    let x_709 : vec3<f32> = (vec3<f32>(x_705.x, x_705.y, x_705.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_710 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
    let x_712 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_712.x, x_712.y, x_712.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_717 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_717 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_721 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_721));
    let x_724 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_724 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_728 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_728);
    let x_732 : vec4<f32> = u_xlat1;
    let x_734 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_732.x, x_732.y, x_732.z, x_732.x));
    u_xlatb1 = vec3<bool>(x_734.x, x_734.y, x_734.z);
    let x_737 : bool = u_xlatb1.x;
    if (x_737) {
      let x_742 : f32 = u_xlat2.x;
      x_738 = x_742;
    } else {
      let x_745 : f32 = u_xlat3.x;
      x_738 = x_745;
    }
    let x_746 : f32 = x_738;
    u_xlat0.x = x_746;
    let x_749 : bool = u_xlatb1.y;
    if (x_749) {
      let x_754 : f32 = u_xlat2.y;
      x_750 = x_754;
    } else {
      let x_757 : f32 = u_xlat3.y;
      x_750 = x_757;
    }
    let x_758 : f32 = x_750;
    u_xlat0.y = x_758;
    let x_761 : bool = u_xlatb1.z;
    if (x_761) {
      let x_766 : f32 = u_xlat2.z;
      x_762 = x_766;
    } else {
      let x_769 : f32 = u_xlat3.z;
      x_762 = x_769;
    }
    let x_770 : f32 = x_762;
    u_xlat0.z = x_770;
  }
  let x_772 : vec4<f32> = u_xlat0;
  let x_775 : vec4<f32> = x_25.x_Lut_Params;
  let x_777 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_775.z, x_775.z, x_775.z));
  let x_778 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_777.x, x_777.y, x_778.z, x_777.z);
  let x_781 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_781);
  let x_784 : vec4<f32> = x_25.x_Lut_Params;
  let x_786 : vec2<f32> = (vec2<f32>(x_784.x, x_784.y) * vec2<f32>(0.5f, 0.5f));
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat0;
  let x_792 : vec4<f32> = x_25.x_Lut_Params;
  let x_795 : vec4<f32> = u_xlat1;
  let x_797 : vec2<f32> = ((vec2<f32>(x_789.x, x_789.y) * vec2<f32>(x_792.x, x_792.y)) + vec2<f32>(x_795.x, x_795.y));
  let x_798 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_798.x, x_797.x, x_797.y, x_798.w);
  let x_800 : f32 = u_xlat15;
  let x_802 : f32 = x_25.x_Lut_Params.y;
  let x_805 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_800 * x_802) + x_805);
  let x_812 : vec4<f32> = u_xlat1;
  let x_814 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_812.x, x_812.z), 0.0f);
  let x_815 : vec3<f32> = vec3<f32>(x_814.x, x_814.y, x_814.z);
  let x_816 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_819 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_819;
  u_xlat0.y = 0.0f;
  let x_822 : vec4<f32> = u_xlat0;
  let x_824 : vec4<f32> = u_xlat1;
  let x_826 : vec2<f32> = (vec2<f32>(x_822.x, x_822.y) + vec2<f32>(x_824.x, x_824.z));
  let x_827 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
  let x_832 : vec4<f32> = u_xlat0;
  let x_834 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_832.x, x_832.y), 0.0f);
  let x_835 : vec3<f32> = vec3<f32>(x_834.x, x_834.y, x_834.z);
  let x_836 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_839 : f32 = u_xlat0.z;
  let x_841 : f32 = x_25.x_Lut_Params.z;
  let x_843 : f32 = u_xlat15;
  u_xlat0.x = ((x_839 * x_841) + -(x_843));
  let x_848 : vec4<f32> = u_xlat2;
  let x_851 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_848.x, x_848.y, x_848.z)) + vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat0;
  let x_856 : vec3<f32> = u_xlat5;
  let x_858 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = ((vec3<f32>(x_854.x, x_854.x, x_854.x) * x_856) + vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_865 : vec4<f32> = u_xlat0;
  let x_867 : vec3<f32> = sqrt(vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
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

