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
  var x_514 : f32;
  var x_526 : f32;
  var x_538 : f32;
  var u_xlat4 : vec2<f32>;
  var x_683 : f32;
  var x_695 : f32;
  var x_707 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_888 : f32;
  var x_900 : f32;
  var x_912 : f32;
  var x_967 : f32;
  var x_979 : f32;
  var x_991 : f32;
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
  u_xlat1 = (vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_401 : vec4<f32> = u_xlat0;
  let x_408 : vec3<f32> = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec3<f32> = u_xlat1;
  let x_412 : vec4<f32> = u_xlat2;
  let x_417 : vec3<f32> = ((x_411 * vec3<f32>(x_412.x, x_412.y, x_412.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat0;
  let x_425 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_426 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec3<f32> = u_xlat1;
  let x_429 : vec4<f32> = u_xlat0;
  let x_434 : vec3<f32> = ((x_428 * vec3<f32>(x_429.x, x_429.y, x_429.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_435 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat2;
  let x_439 : vec4<f32> = u_xlat0;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) / vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat0;
  let x_448 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = (vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat0;
  let x_460 : vec3<f32> = clamp(vec3<f32>(x_456.x, x_456.y, x_456.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_461 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_465 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_465);
  let x_467 : bool = u_xlatb15;
  if (x_467) {
    let x_470 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_475 : vec4<f32> = u_xlat0;
    let x_477 : vec3<f32> = log2(vec3<f32>(x_475.x, x_475.y, x_475.z));
    let x_478 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_480 : vec4<f32> = u_xlat2;
    let x_484 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_485 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
    let x_487 : vec4<f32> = u_xlat2;
    let x_489 : vec3<f32> = exp2(vec3<f32>(x_487.x, x_487.y, x_487.z));
    let x_490 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
    let x_492 : vec4<f32> = u_xlat2;
    let x_499 : vec3<f32> = ((vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_500 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
    let x_505 : vec4<f32> = u_xlat0;
    let x_508 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_505.x, x_505.y, x_505.z, x_505.x));
    u_xlatb3 = vec3<bool>(x_508.x, x_508.y, x_508.z);
    let x_511 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_511;
    let x_513 : bool = u_xlatb3.x;
    if (x_513) {
      let x_518 : f32 = u_xlat1.x;
      x_514 = x_518;
    } else {
      let x_521 : f32 = u_xlat2.x;
      x_514 = x_521;
    }
    let x_522 : f32 = x_514;
    hlslcc_movcTemp.x = x_522;
    let x_525 : bool = u_xlatb3.y;
    if (x_525) {
      let x_530 : f32 = u_xlat1.y;
      x_526 = x_530;
    } else {
      let x_533 : f32 = u_xlat2.y;
      x_526 = x_533;
    }
    let x_534 : f32 = x_526;
    hlslcc_movcTemp.y = x_534;
    let x_537 : bool = u_xlatb3.z;
    if (x_537) {
      let x_542 : f32 = u_xlat1.z;
      x_538 = x_542;
    } else {
      let x_545 : f32 = u_xlat2.z;
      x_538 = x_545;
    }
    let x_546 : f32 = x_538;
    hlslcc_movcTemp.z = x_546;
    let x_548 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_548;
    let x_549 : vec3<f32> = u_xlat1;
    let x_552 : vec4<f32> = x_25.x_UserLut_Params;
    let x_554 : vec3<f32> = (vec3<f32>(x_549.z, x_549.x, x_549.y) * vec3<f32>(x_552.z, x_552.z, x_552.z));
    let x_555 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
    let x_558 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_558);
    let x_561 : vec4<f32> = x_25.x_UserLut_Params;
    let x_563 : vec2<f32> = (vec2<f32>(x_561.x, x_561.y) * vec2<f32>(0.5f, 0.5f));
    let x_564 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_563.x, x_564.y, x_564.z, x_563.y);
    let x_566 : vec4<f32> = u_xlat2;
    let x_569 : vec4<f32> = x_25.x_UserLut_Params;
    let x_572 : vec4<f32> = u_xlat2;
    let x_574 : vec2<f32> = ((vec2<f32>(x_566.y, x_566.z) * vec2<f32>(x_569.x, x_569.y)) + vec2<f32>(x_572.x, x_572.w));
    let x_575 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_575.x, x_574.x, x_574.y, x_575.w);
    let x_577 : f32 = u_xlat15;
    let x_579 : f32 = x_25.x_UserLut_Params.y;
    let x_582 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_577 * x_579) + x_582);
    let x_589 : vec4<f32> = u_xlat2;
    let x_591 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_589.x, x_589.z), 0.0f);
    u_xlat3 = vec3<f32>(x_591.x, x_591.y, x_591.z);
    let x_595 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_595;
    u_xlat4.y = 0.0f;
    let x_598 : vec4<f32> = u_xlat2;
    let x_600 : vec2<f32> = u_xlat4;
    let x_601 : vec2<f32> = (vec2<f32>(x_598.x, x_598.z) + x_600);
    let x_602 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
    let x_607 : vec4<f32> = u_xlat2;
    let x_609 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_607.x, x_607.y), 0.0f);
    let x_610 : vec3<f32> = vec3<f32>(x_609.x, x_609.y, x_609.z);
    let x_611 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
    let x_614 : f32 = u_xlat1.z;
    let x_616 : f32 = x_25.x_UserLut_Params.z;
    let x_618 : f32 = u_xlat15;
    u_xlat15 = ((x_614 * x_616) + -(x_618));
    let x_621 : vec3<f32> = u_xlat3;
    let x_623 : vec4<f32> = u_xlat2;
    let x_625 : vec3<f32> = (-(x_621) + vec3<f32>(x_623.x, x_623.y, x_623.z));
    let x_626 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
    let x_628 : f32 = u_xlat15;
    let x_630 : vec4<f32> = u_xlat2;
    let x_633 : vec3<f32> = u_xlat3;
    let x_634 : vec3<f32> = ((vec3<f32>(x_628, x_628, x_628) * vec3<f32>(x_630.x, x_630.y, x_630.z)) + x_633);
    let x_635 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
    let x_637 : vec3<f32> = u_xlat1;
    let x_639 : vec4<f32> = u_xlat2;
    let x_641 : vec3<f32> = (-(x_637) + vec3<f32>(x_639.x, x_639.y, x_639.z));
    let x_642 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
    let x_645 : vec4<f32> = x_25.x_UserLut_Params;
    let x_647 : vec4<f32> = u_xlat2;
    let x_650 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_645.w, x_645.w, x_645.w) * vec3<f32>(x_647.x, x_647.y, x_647.z)) + x_650);
    let x_652 : vec3<f32> = u_xlat1;
    let x_655 : vec3<f32> = (x_652 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_656 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
    let x_658 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_658 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_662 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_662 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_666 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_666));
    let x_669 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_669 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_673 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_673);
    let x_677 : vec3<f32> = u_xlat1;
    let x_679 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_677.x, x_677.y, x_677.z, x_677.x));
    u_xlatb1 = vec3<bool>(x_679.x, x_679.y, x_679.z);
    let x_682 : bool = u_xlatb1.x;
    if (x_682) {
      let x_687 : f32 = u_xlat2.x;
      x_683 = x_687;
    } else {
      let x_690 : f32 = u_xlat3.x;
      x_683 = x_690;
    }
    let x_691 : f32 = x_683;
    u_xlat0.x = x_691;
    let x_694 : bool = u_xlatb1.y;
    if (x_694) {
      let x_699 : f32 = u_xlat2.y;
      x_695 = x_699;
    } else {
      let x_702 : f32 = u_xlat3.y;
      x_695 = x_702;
    }
    let x_703 : f32 = x_695;
    u_xlat0.y = x_703;
    let x_706 : bool = u_xlatb1.z;
    if (x_706) {
      let x_711 : f32 = u_xlat2.z;
      x_707 = x_711;
    } else {
      let x_714 : f32 = u_xlat3.z;
      x_707 = x_714;
    }
    let x_715 : f32 = x_707;
    u_xlat0.z = x_715;
  }
  let x_717 : vec4<f32> = u_xlat0;
  let x_720 : vec4<f32> = x_25.x_Lut_Params;
  let x_722 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) * vec3<f32>(x_720.z, x_720.z, x_720.z));
  let x_723 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_722.x, x_722.y, x_723.z, x_722.z);
  let x_726 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_726);
  let x_729 : vec4<f32> = x_25.x_Lut_Params;
  let x_731 : vec2<f32> = (vec2<f32>(x_729.x, x_729.y) * vec2<f32>(0.5f, 0.5f));
  let x_732 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_731.x, x_731.y, x_732.z);
  let x_734 : vec4<f32> = u_xlat0;
  let x_737 : vec4<f32> = x_25.x_Lut_Params;
  let x_740 : vec3<f32> = u_xlat1;
  let x_742 : vec2<f32> = ((vec2<f32>(x_734.x, x_734.y) * vec2<f32>(x_737.x, x_737.y)) + vec2<f32>(x_740.x, x_740.y));
  let x_743 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_743.x, x_742.x, x_742.y);
  let x_745 : f32 = u_xlat15;
  let x_747 : f32 = x_25.x_Lut_Params.y;
  let x_750 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_745 * x_747) + x_750);
  let x_757 : vec3<f32> = u_xlat1;
  let x_759 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_757.x, x_757.z), 0.0f);
  let x_760 : vec3<f32> = vec3<f32>(x_759.x, x_759.y, x_759.z);
  let x_761 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_764 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_764;
  u_xlat0.y = 0.0f;
  let x_767 : vec4<f32> = u_xlat0;
  let x_769 : vec3<f32> = u_xlat1;
  let x_771 : vec2<f32> = (vec2<f32>(x_767.x, x_767.y) + vec2<f32>(x_769.x, x_769.z));
  let x_772 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
  let x_777 : vec4<f32> = u_xlat0;
  let x_779 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_777.x, x_777.y), 0.0f);
  u_xlat1 = vec3<f32>(x_779.x, x_779.y, x_779.z);
  let x_782 : f32 = u_xlat0.z;
  let x_784 : f32 = x_25.x_Lut_Params.z;
  let x_786 : f32 = u_xlat15;
  u_xlat0.x = ((x_782 * x_784) + -(x_786));
  let x_791 : vec4<f32> = u_xlat2;
  let x_794 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_791.x, x_791.y, x_791.z)) + x_794);
  let x_796 : vec4<f32> = u_xlat0;
  let x_798 : vec3<f32> = u_xlat5;
  let x_800 : vec4<f32> = u_xlat2;
  let x_802 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.x, x_796.x) * x_798) + vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat0;
  let x_807 : vec3<f32> = sqrt(vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec2<f32> = vs_TEXCOORD0;
  let x_813 : vec4<f32> = x_25.x_Dithering_Params;
  let x_817 : vec4<f32> = x_25.x_Dithering_Params;
  let x_819 : vec2<f32> = ((x_810 * vec2<f32>(x_813.x, x_813.y)) + vec2<f32>(x_817.z, x_817.w));
  let x_820 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_819.x, x_819.y, x_820.z);
  let x_827 : vec3<f32> = u_xlat1;
  let x_830 : f32 = x_25.x_GlobalMipBias.x;
  let x_831 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_827.x, x_827.y), x_830);
  u_xlat15 = x_831.w;
  let x_833 : f32 = u_xlat15;
  u_xlat15 = ((x_833 * 2.0f) + -1.0f);
  let x_837 : f32 = u_xlat15;
  u_xlatb1.x = (x_837 >= 0.0f);
  let x_841 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_841);
  let x_844 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_844)) + 1.0f);
  let x_848 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_848);
  let x_850 : f32 = u_xlat15;
  u_xlat15 = (-(x_850) + 1.0f);
  let x_853 : f32 = u_xlat15;
  let x_855 : f32 = u_xlat1.x;
  u_xlat15 = (x_853 * x_855);
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_860 : vec4<f32> = u_xlat0;
  let x_862 : vec3<f32> = log2(vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_868 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat2;
  let x_872 : vec3<f32> = exp2(vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_875 : vec4<f32> = u_xlat2;
  let x_878 : vec3<f32> = ((vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_882 : vec4<f32> = u_xlat0;
  let x_884 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_882.x, x_882.y, x_882.z, x_882.x));
  u_xlatb0 = vec3<bool>(x_884.x, x_884.y, x_884.z);
  let x_887 : bool = u_xlatb0.x;
  if (x_887) {
    let x_892 : f32 = u_xlat1.x;
    x_888 = x_892;
  } else {
    let x_895 : f32 = u_xlat2.x;
    x_888 = x_895;
  }
  let x_896 : f32 = x_888;
  u_xlat0.x = x_896;
  let x_899 : bool = u_xlatb0.y;
  if (x_899) {
    let x_904 : f32 = u_xlat1.y;
    x_900 = x_904;
  } else {
    let x_907 : f32 = u_xlat2.y;
    x_900 = x_907;
  }
  let x_908 : f32 = x_900;
  u_xlat0.y = x_908;
  let x_911 : bool = u_xlatb0.z;
  if (x_911) {
    let x_916 : f32 = u_xlat1.z;
    x_912 = x_916;
  } else {
    let x_919 : f32 = u_xlat2.z;
    x_912 = x_919;
  }
  let x_920 : f32 = x_912;
  u_xlat0.z = x_920;
  let x_922 : f32 = u_xlat15;
  let x_927 : vec4<f32> = u_xlat0;
  let x_929 : vec3<f32> = ((vec3<f32>(x_922, x_922, x_922) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_935 : vec4<f32> = u_xlat0;
  let x_937 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat2;
  let x_942 : vec3<f32> = (vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_943 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec4<f32> = u_xlat2;
  let x_948 : vec3<f32> = log2(abs(vec3<f32>(x_945.x, x_945.y, x_945.z)));
  let x_949 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = u_xlat2;
  let x_953 : vec3<f32> = (vec3<f32>(x_951.x, x_951.y, x_951.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_954 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_956 : vec4<f32> = u_xlat2;
  let x_958 : vec3<f32> = exp2(vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : vec4<f32> = u_xlat0;
  let x_963 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_961.x, x_961.y, x_961.z, x_961.x));
  u_xlatb0 = vec3<bool>(x_963.x, x_963.y, x_963.z);
  let x_966 : bool = u_xlatb0.x;
  if (x_966) {
    let x_971 : f32 = u_xlat1.x;
    x_967 = x_971;
  } else {
    let x_974 : f32 = u_xlat2.x;
    x_967 = x_974;
  }
  let x_975 : f32 = x_967;
  u_xlat0.x = x_975;
  let x_978 : bool = u_xlatb0.y;
  if (x_978) {
    let x_983 : f32 = u_xlat1.y;
    x_979 = x_983;
  } else {
    let x_986 : f32 = u_xlat2.y;
    x_979 = x_986;
  }
  let x_987 : f32 = x_979;
  u_xlat0.y = x_987;
  let x_990 : bool = u_xlatb0.z;
  if (x_990) {
    let x_995 : f32 = u_xlat1.z;
    x_991 = x_995;
  } else {
    let x_998 : f32 = u_xlat2.z;
    x_991 = x_998;
  }
  let x_999 : f32 = x_991;
  u_xlat0.z = x_999;
  let x_1003 : vec4<f32> = u_xlat0;
  let x_1006 : vec3<f32> = max(vec3<f32>(x_1003.x, x_1003.y, x_1003.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1007 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
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

