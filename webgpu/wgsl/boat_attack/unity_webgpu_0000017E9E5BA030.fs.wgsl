diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_BloomTexture_TexelSize : vec4<f32>,
  /* @offset(64) */
  x_Lut_Params : vec4<f32>,
  /* @offset(80) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(96) */
  x_Bloom_Params : vec4<f32>,
  /* @offset(112) */
  x_Bloom_RGBM : f32,
  /* @offset(128) */
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(144) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(160) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(192) */
  x_Grain_Params : vec2<f32>,
  /* @offset(208) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(224) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatb10 : vec2<bool>;

var<private> u_xlatb8 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_230 : f32;
  var x_626 : f32;
  var x_635 : f32;
  var x_766 : f32;
  var x_817 : f32;
  var x_844 : f32;
  var x_868 : f32;
  var x_879 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1269 : f32;
  var x_1281 : f32;
  var x_1293 : f32;
  var x_1438 : f32;
  var x_1450 : f32;
  var x_1462 : f32;
  var x_1655 : f32;
  var x_1667 : f32;
  var x_1679 : f32;
  var x_1764 : f32;
  var x_1776 : f32;
  var x_1788 : f32;
  var x_1840 : f32;
  var x_1852 : f32;
  var x_1864 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Params2;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Params2;
  let x_45 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11.x = (1.0f / x_115);
    let x_119 : f32 = u_xlat6.x;
    let x_121 : f32 = u_xlat11.x;
    u_xlat6.x = ((x_119 * x_121) + -1.0f);
    let x_126 : vec3<f32> = u_xlat0;
    let x_128 : vec3<f32> = u_xlat6;
    let x_131 : vec2<f32> = u_xlat10;
    let x_132 : vec2<f32> = ((vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_128.x, x_128.x)) + x_131);
    let x_133 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  } else {
    let x_138 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_138);
    let x_140 : f32 = u_xlat16;
    let x_142 : f32 = x_26.x_Distortion_Params2.x;
    u_xlat16 = (x_140 * x_142);
    let x_145 : f32 = u_xlat1.x;
    let x_147 : f32 = x_26.x_Distortion_Params2.y;
    u_xlat1.x = (x_145 * x_147);
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_151), 1.0f);
    let x_157 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_157), 1.0f);
    let x_160 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_160);
    let x_162 : f32 = u_xlat7;
    let x_164 : f32 = u_xlat2.x;
    u_xlat2.x = (x_162 * x_164);
    let x_168 : f32 = u_xlat2.x;
    let x_170 : f32 = u_xlat2.x;
    u_xlat7 = (x_168 * x_170);
    let x_173 : f32 = u_xlat7;
    u_xlat12 = ((x_173 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_178 : f32 = u_xlat7;
    let x_179 : f32 = u_xlat12;
    u_xlat12 = ((x_178 * x_179) + 0.18014100193977355957f);
    let x_183 : f32 = u_xlat7;
    let x_184 : f32 = u_xlat12;
    u_xlat12 = ((x_183 * x_184) + -0.33029949665069580078f);
    let x_188 : f32 = u_xlat7;
    let x_189 : f32 = u_xlat12;
    u_xlat7 = ((x_188 * x_189) + 0.99986600875854492188f);
    let x_193 : f32 = u_xlat7;
    let x_195 : f32 = u_xlat2.x;
    u_xlat12 = (x_193 * x_195);
    let x_199 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_199));
    let x_202 : f32 = u_xlat12;
    u_xlat12 = ((x_202 * -2.0f) + 1.57079637050628662109f);
    let x_207 : bool = u_xlatb17;
    let x_208 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_208, x_207);
    let x_211 : f32 = u_xlat2.x;
    let x_212 : f32 = u_xlat7;
    let x_214 : f32 = u_xlat12;
    u_xlat2.x = ((x_211 * x_212) + x_214);
    let x_218 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_218, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1 = (x_223 < -(x_225));
    let x_228 : bool = u_xlatb1;
    if (x_228) {
      let x_234 : f32 = u_xlat2.x;
      x_230 = -(x_234);
    } else {
      let x_238 : f32 = u_xlat2.x;
      x_230 = x_238;
    }
    let x_239 : f32 = x_230;
    u_xlat1.x = x_239;
    let x_241 : f32 = u_xlat16;
    let x_243 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_241 * x_243) + -1.0f);
    let x_247 : vec3<f32> = u_xlat0;
    let x_249 : vec4<f32> = u_xlat1;
    let x_252 : vec2<f32> = u_xlat10;
    let x_253 : vec2<f32> = ((vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_249.x, x_249.x)) + x_252);
    let x_254 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_253.x, x_253.y, x_254.z);
  }
  let x_258 : vec4<f32> = x_26.x_BlitTexture_TexelSize;
  let x_264 : vec4<f32> = x_26.x_RTHandleScale;
  let x_266 : vec2<f32> = ((-(vec2<f32>(x_258.x, x_258.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_264.x, x_264.y));
  let x_267 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_266.x, x_266.y, x_267.z);
  let x_269 : vec3<f32> = u_xlat0;
  let x_271 : vec3<f32> = u_xlat6;
  let x_273 : vec2<f32> = min(vec2<f32>(x_269.x, x_269.y), vec2<f32>(x_271.x, x_271.y));
  let x_274 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_273.x, x_273.y, x_274.z);
  let x_286 : vec3<f32> = u_xlat0;
  let x_290 : f32 = x_26.x_GlobalMipBias.x;
  let x_291 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_286.x, x_286.y), x_290);
  u_xlat0 = vec3<f32>(x_291.x, x_291.y, x_291.z);
  let x_295 : vec4<f32> = x_26.x_BloomTexture_TexelSize;
  let x_300 : vec4<f32> = x_26.x_RTHandleScale;
  let x_302 : vec2<f32> = ((-(vec2<f32>(x_295.x, x_295.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_300.x, x_300.y));
  let x_303 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_302.x, x_303.y, x_303.z, x_302.y);
  let x_305 : vec4<f32> = u_xlat1;
  let x_307 : vec3<f32> = u_xlat6;
  let x_309 : vec2<f32> = min(vec2<f32>(x_305.x, x_305.w), vec2<f32>(x_307.x, x_307.y));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_310.y, x_310.z, x_309.y);
  let x_316 : vec4<f32> = u_xlat1;
  let x_319 : f32 = x_26.x_GlobalMipBias.x;
  let x_320 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_316.x, x_316.w), x_319);
  u_xlat2 = x_320;
  let x_324 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_324);
  let x_326 : bool = u_xlatb15;
  if (x_326) {
    let x_329 : vec4<f32> = u_xlat2;
    let x_331 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_329.w, x_329.w, x_329.w) * vec3<f32>(x_331.x, x_331.y, x_331.z));
    let x_334 : vec3<f32> = u_xlat3;
    let x_337 : vec3<f32> = (x_334 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_338 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  }
  let x_340 : vec4<f32> = u_xlat2;
  let x_344 : vec4<f32> = x_26.x_Bloom_Params;
  let x_346 : vec3<f32> = (vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_344.x, x_344.x, x_344.x));
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat2;
  let x_352 : vec4<f32> = x_26.x_Bloom_Params;
  let x_355 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_352.y, x_352.z, x_352.w)) + x_355);
  let x_360 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_360);
  let x_362 : bool = u_xlatb15;
  if (x_362) {
    let x_365 : vec3<f32> = u_xlat6;
    let x_368 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_371 : vec2<f32> = (vec2<f32>(x_365.x, x_365.y) + -(vec2<f32>(x_368.x, x_368.y)));
    let x_372 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
    let x_374 : vec4<f32> = u_xlat1;
    let x_378 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_380 : vec2<f32> = (abs(vec2<f32>(x_374.x, x_374.y)) * vec2<f32>(x_378.z, x_378.z));
    let x_381 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_381.x, x_380.x, x_380.y, x_381.w);
    let x_384 : f32 = u_xlat1.y;
    let x_387 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_384 * x_387);
    let x_391 : vec4<f32> = u_xlat1;
    let x_393 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_391.x, x_391.z), vec2<f32>(x_393.x, x_393.z));
    let x_396 : f32 = u_xlat15;
    u_xlat15 = (-(x_396) + 1.0f);
    let x_399 : f32 = u_xlat15;
    u_xlat15 = max(x_399, 0.0f);
    let x_401 : f32 = u_xlat15;
    u_xlat15 = log2(x_401);
    let x_403 : f32 = u_xlat15;
    let x_405 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_403 * x_405);
    let x_407 : f32 = u_xlat15;
    u_xlat15 = exp2(x_407);
    let x_410 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_414 : vec3<f32> = (-(vec3<f32>(x_410.x, x_410.y, x_410.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_415 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_417 : f32 = u_xlat15;
    let x_419 : vec4<f32> = u_xlat1;
    let x_423 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_425 : vec3<f32> = ((vec3<f32>(x_417, x_417, x_417) * vec3<f32>(x_419.x, x_419.y, x_419.z)) + vec3<f32>(x_423.x, x_423.y, x_423.z));
    let x_426 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
    let x_428 : vec3<f32> = u_xlat0;
    let x_429 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_428 * vec3<f32>(x_429.x, x_429.y, x_429.z));
  }
  let x_432 : vec3<f32> = u_xlat0;
  let x_435 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (x_432 * vec3<f32>(x_435.w, x_435.w, x_435.w));
  let x_442 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), x_442);
  let x_449 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), x_449);
  let x_456 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), x_456);
  let x_460 : f32 = u_xlat6.y;
  let x_462 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_460, x_462);
  let x_466 : f32 = u_xlat6.z;
  let x_468 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_466, x_468);
  let x_473 : f32 = u_xlat6.y;
  let x_475 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_473, x_475);
  let x_479 : f32 = u_xlat6.z;
  let x_481 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_479, x_481);
  let x_484 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_484.x, x_484.y, x_484.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_491 : f32 = u_xlat0.x;
  let x_494 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_491) + x_494);
  let x_498 : f32 = u_xlat0.x;
  let x_500 : f32 = u_xlat0.z;
  u_xlat0.x = (x_498 / x_500);
  let x_503 : vec3<f32> = u_xlat6;
  let x_506 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_503.y, x_503.x, x_503.z)) + vec3<f32>(x_506.z, x_506.y, x_506.x));
  let x_509 : vec3<f32> = u_xlat5;
  let x_511 : vec3<f32> = u_xlat6;
  let x_513 : vec2<f32> = (vec2<f32>(x_509.x, x_509.y) * vec2<f32>(x_511.z, x_511.y));
  let x_514 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_513.x, x_513.y, x_514.z);
  let x_517 : f32 = u_xlat5.y;
  let x_519 : f32 = u_xlat5.x;
  u_xlat5.x = (x_517 + x_519);
  let x_523 : f32 = u_xlat6.x;
  let x_525 : f32 = u_xlat5.z;
  let x_528 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_523 * x_525) + x_528);
  let x_532 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_532, 0.0f);
  let x_536 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_536);
  let x_540 : f32 = u_xlat6.y;
  let x_542 : f32 = u_xlat6.z;
  u_xlat10.x = (x_540 + x_542);
  let x_546 : f32 = u_xlat6.x;
  let x_548 : f32 = u_xlat10.x;
  u_xlat10.x = (x_546 + x_548);
  let x_552 : f32 = u_xlat5.x;
  let x_556 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_552 * 1.75f) + x_556);
  let x_560 : f32 = u_xlat0.x;
  u_xlat15 = (x_560 + -0.40000000596046447754f);
  let x_563 : f32 = u_xlat15;
  u_xlat1.x = (x_563 * 2.5f);
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_568)) + 1.0f);
  let x_574 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_574, 0.0f);
  let x_577 : f32 = u_xlat15;
  u_xlatb15 = (x_577 >= 0.0f);
  let x_579 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_579);
  let x_582 : f32 = u_xlat1.x;
  let x_585 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_582) * x_585) + 1.0f);
  let x_589 : f32 = u_xlat15;
  let x_591 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_589 * x_591) + 1.0f);
  let x_595 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_595.x, x_595.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_603 : f32 = u_xlat5.x;
  u_xlatb1 = (0.15999999642372131348f >= x_603);
  let x_607 : f32 = u_xlat5.x;
  u_xlatb5 = (x_607 >= 0.47999998927116394043f);
  let x_612 : f32 = u_xlat10.x;
  u_xlat10.x = (0.07999999821186065674f / x_612);
  let x_616 : f32 = u_xlat10.x;
  u_xlat10.x = (x_616 + -0.5f);
  let x_620 : f32 = u_xlat10.x;
  let x_622 : f32 = u_xlat10.y;
  u_xlat10.x = (x_620 * x_622);
  let x_625 : bool = u_xlatb5;
  if (x_625) {
    x_626 = 0.0f;
  } else {
    let x_631 : f32 = u_xlat10.x;
    x_626 = x_631;
  }
  let x_632 : f32 = x_626;
  u_xlat5.x = x_632;
  let x_634 : bool = u_xlatb1;
  if (x_634) {
    let x_639 : f32 = u_xlat10.y;
    x_635 = x_639;
  } else {
    let x_642 : f32 = u_xlat5.x;
    x_635 = x_642;
  }
  let x_643 : f32 = x_635;
  u_xlat5.x = x_643;
  let x_646 : f32 = u_xlat5.x;
  u_xlat5.x = (x_646 + 1.0f);
  let x_649 : vec3<f32> = u_xlat5;
  let x_651 : vec3<f32> = u_xlat6;
  let x_652 : vec3<f32> = (vec3<f32>(x_649.x, x_649.x, x_649.x) * x_651);
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_653.x, x_652.x, x_652.y, x_652.z);
  let x_658 : vec4<f32> = u_xlat2;
  let x_660 : vec4<f32> = u_xlat2;
  let x_663 : vec4<bool> = (vec4<f32>(x_658.z, x_658.w, x_658.z, x_658.w) == vec4<f32>(x_660.y, x_660.z, x_660.y, x_660.z));
  u_xlatb10 = vec2<bool>(x_663.x, x_663.y);
  let x_666 : bool = u_xlatb10.y;
  let x_668 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_666 & x_668);
  let x_672 : f32 = u_xlat6.y;
  let x_674 : f32 = u_xlat5.x;
  let x_677 : f32 = u_xlat2.w;
  u_xlat15 = ((x_672 * x_674) + -(x_677));
  let x_680 : f32 = u_xlat15;
  u_xlat15 = (x_680 * 1.73205077648162841797f);
  let x_684 : f32 = u_xlat2.y;
  let x_688 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_684 * 2.0f) + -(x_688));
  let x_693 : f32 = u_xlat6.z;
  let x_696 : f32 = u_xlat5.x;
  let x_699 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_693) * x_696) + x_699);
  let x_702 : f32 = u_xlat15;
  let x_705 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_702), abs(x_705));
  let x_709 : f32 = u_xlat15;
  let x_712 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_709), abs(x_712));
  let x_715 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_715);
  let x_717 : f32 = u_xlat16;
  let x_719 : f32 = u_xlat11.x;
  u_xlat11.x = (x_717 * x_719);
  let x_723 : f32 = u_xlat11.x;
  let x_725 : f32 = u_xlat11.x;
  u_xlat16 = (x_723 * x_725);
  let x_727 : f32 = u_xlat16;
  u_xlat3.x = ((x_727 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_731 : f32 = u_xlat16;
  let x_733 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_731 * x_733) + 0.18014100193977355957f);
  let x_737 : f32 = u_xlat16;
  let x_739 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_737 * x_739) + -0.33029949665069580078f);
  let x_743 : f32 = u_xlat16;
  let x_745 : f32 = u_xlat3.x;
  u_xlat16 = ((x_743 * x_745) + 0.99986600875854492188f);
  let x_748 : f32 = u_xlat16;
  let x_750 : f32 = u_xlat11.x;
  u_xlat3.x = (x_748 * x_750);
  let x_755 : f32 = u_xlat1.x;
  let x_757 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_755) < abs(x_757));
  let x_761 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_761 * -2.0f) + 1.57079637050628662109f);
  let x_765 : bool = u_xlatb8;
  if (x_765) {
    let x_770 : f32 = u_xlat3.x;
    x_766 = x_770;
  } else {
    x_766 = 0.0f;
  }
  let x_772 : f32 = x_766;
  u_xlat3.x = x_772;
  let x_775 : f32 = u_xlat11.x;
  let x_776 : f32 = u_xlat16;
  let x_779 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_775 * x_776) + x_779);
  let x_784 : f32 = u_xlat1.x;
  let x_786 : f32 = u_xlat1.x;
  u_xlatb16 = (x_784 < -(x_786));
  let x_789 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.14159274101257324219f, x_789);
  let x_792 : f32 = u_xlat16;
  let x_794 : f32 = u_xlat11.x;
  u_xlat11.x = (x_792 + x_794);
  let x_797 : f32 = u_xlat15;
  let x_799 : f32 = u_xlat1.x;
  u_xlat16 = min(x_797, x_799);
  let x_801 : f32 = u_xlat15;
  let x_803 : f32 = u_xlat1.x;
  u_xlat15 = max(x_801, x_803);
  let x_805 : f32 = u_xlat16;
  let x_806 : f32 = u_xlat16;
  u_xlatb1 = (x_805 < -(x_806));
  let x_809 : f32 = u_xlat15;
  let x_810 : f32 = u_xlat15;
  u_xlatb15 = (x_809 >= -(x_810));
  let x_813 : bool = u_xlatb15;
  let x_814 : bool = u_xlatb1;
  u_xlatb15 = (x_813 & x_814);
  let x_816 : bool = u_xlatb15;
  if (x_816) {
    let x_821 : f32 = u_xlat11.x;
    x_817 = -(x_821);
  } else {
    let x_825 : f32 = u_xlat11.x;
    x_817 = x_825;
  }
  let x_826 : f32 = x_817;
  u_xlat15 = x_826;
  let x_827 : f32 = u_xlat15;
  u_xlat15 = (x_827 * 57.295780181884765625f);
  let x_831 : bool = u_xlatb10.x;
  let x_832 : f32 = u_xlat15;
  u_xlat10.x = select(x_832, 0.0f, x_831);
  let x_836 : f32 = u_xlat10.x;
  u_xlatb15 = (x_836 < 0.0f);
  let x_839 : f32 = u_xlat10.x;
  u_xlat1.x = (x_839 + 360.0f);
  let x_843 : bool = u_xlatb15;
  if (x_843) {
    let x_848 : f32 = u_xlat1.x;
    x_844 = x_848;
  } else {
    let x_851 : f32 = u_xlat10.x;
    x_844 = x_851;
  }
  let x_852 : f32 = x_844;
  u_xlat10.x = x_852;
  let x_855 : f32 = u_xlat10.x;
  u_xlatb15 = (x_855 < -180.0f);
  let x_860 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_860);
  let x_862 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_862.x, x_862.x) + vec2<f32>(360.0f, -360.0f));
  let x_867 : bool = u_xlatb1;
  if (x_867) {
    let x_872 : f32 = u_xlat11.y;
    x_868 = x_872;
  } else {
    let x_875 : f32 = u_xlat10.x;
    x_868 = x_875;
  }
  let x_876 : f32 = x_868;
  u_xlat10.x = x_876;
  let x_878 : bool = u_xlatb15;
  if (x_878) {
    let x_883 : f32 = u_xlat11.x;
    x_879 = x_883;
  } else {
    let x_886 : f32 = u_xlat10.x;
    x_879 = x_886;
  }
  let x_887 : f32 = x_879;
  u_xlat10.x = x_887;
  let x_890 : f32 = u_xlat10.x;
  u_xlat10.x = (x_890 * 0.01481481455266475677f);
  let x_895 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_895)) + 1.0f);
  let x_901 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_901, 0.0f);
  let x_905 : f32 = u_xlat10.x;
  u_xlat15 = ((x_905 * -2.0f) + 3.0f);
  let x_910 : f32 = u_xlat10.x;
  let x_912 : f32 = u_xlat10.x;
  u_xlat10.x = (x_910 * x_912);
  let x_916 : f32 = u_xlat10.x;
  let x_917 : f32 = u_xlat15;
  u_xlat10.x = (x_916 * x_917);
  let x_921 : f32 = u_xlat10.x;
  let x_923 : f32 = u_xlat10.x;
  u_xlat10.x = (x_921 * x_923);
  let x_927 : f32 = u_xlat0.x;
  let x_929 : f32 = u_xlat10.x;
  u_xlat0.x = (x_927 * x_929);
  let x_933 : f32 = u_xlat6.x;
  let x_936 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_933) * x_936) + 0.02999999932944774628f);
  let x_942 : f32 = u_xlat5.x;
  let x_944 : f32 = u_xlat0.x;
  u_xlat0.x = (x_942 * x_944);
  let x_948 : f32 = u_xlat0.x;
  let x_952 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_948 * 0.18000000715255737305f) + x_952);
  let x_959 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_959.x, x_959.z, x_959.w));
  let x_967 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_967.x, x_967.z, x_967.w));
  let x_975 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_975.x, x_975.z, x_975.w));
  let x_979 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_979, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_982 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_982, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_988 : f32 = u_xlat15;
  let x_991 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_988, x_988, x_988)) + x_991);
  let x_993 : vec3<f32> = u_xlat0;
  let x_997 : f32 = u_xlat15;
  u_xlat0 = ((x_993 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_997, x_997, x_997));
  let x_1000 : vec3<f32> = u_xlat0;
  let x_1003 : vec3<f32> = (x_1000 + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_1004 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec3<f32> = u_xlat0;
  let x_1007 : vec4<f32> = u_xlat1;
  let x_1012 : vec3<f32> = ((x_1006 * vec3<f32>(x_1007.x, x_1007.y, x_1007.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_1013 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec3<f32> = u_xlat0;
  let x_1021 : vec3<f32> = ((x_1015 * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_1022 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : vec3<f32> = u_xlat0;
  let x_1025 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1024 * vec3<f32>(x_1025.x, x_1025.y, x_1025.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_1031 : vec4<f32> = u_xlat1;
  let x_1033 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) / x_1033);
  let x_1039 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_1039);
  let x_1046 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_1046);
  let x_1053 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_1053);
  let x_1056 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1056.x, x_1056.y, x_1056.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1061 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1061, 0.00009999999747378752f);
  let x_1064 : vec4<f32> = u_xlat1;
  let x_1066 : vec3<f32> = u_xlat0;
  let x_1068 : vec2<f32> = (vec2<f32>(x_1064.x, x_1064.y) / vec2<f32>(x_1066.x, x_1066.x));
  let x_1069 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1068.x, x_1068.y, x_1069.z);
  let x_1072 : f32 = u_xlat1.y;
  u_xlat15 = max(x_1072, 0.0f);
  let x_1074 : f32 = u_xlat15;
  u_xlat15 = min(x_1074, 65504.0f);
  let x_1077 : f32 = u_xlat15;
  u_xlat15 = log2(x_1077);
  let x_1079 : f32 = u_xlat15;
  u_xlat15 = (x_1079 * 0.98110002279281616211f);
  let x_1082 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_1082);
  let x_1086 : f32 = u_xlat0.y;
  u_xlat15 = max(x_1086, 0.00009999999747378752f);
  let x_1089 : f32 = u_xlat1.y;
  let x_1090 : f32 = u_xlat15;
  u_xlat15 = (x_1089 / x_1090);
  let x_1093 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_1093) + 1.0f);
  let x_1097 : f32 = u_xlat0.y;
  let x_1099 : f32 = u_xlat16;
  u_xlat0.z = (-(x_1097) + x_1099);
  let x_1102 : f32 = u_xlat15;
  let x_1104 : vec3<f32> = u_xlat0;
  let x_1106 : vec2<f32> = (vec2<f32>(x_1102, x_1102) * vec2<f32>(x_1104.x, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1106.x, x_1107.y, x_1106.y, x_1107.w);
  let x_1113 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1121 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1129 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1133 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_1133, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1135 : f32 = u_xlat15;
  let x_1138 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_1135, x_1135, x_1135)) + x_1138);
  let x_1140 : vec3<f32> = u_xlat0;
  let x_1144 : f32 = u_xlat15;
  u_xlat0 = ((x_1140 * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1144, x_1144, x_1144));
  let x_1147 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_1147);
  let x_1150 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_1150);
  let x_1153 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_1153);
  let x_1160 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
  let x_1168 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1176 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1184 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), x_1184);
  let x_1188 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1188, 0.0f, 1.0f);
  let x_1195 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), x_1195);
  let x_1199 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1199, 0.0f, 1.0f);
  let x_1206 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), x_1206);
  let x_1210 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1210, 0.0f, 1.0f);
  let x_1218 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1218);
  let x_1222 : bool = u_xlatb0.x;
  if (x_1222) {
    let x_1225 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1225.x, x_1225.y, x_1225.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1230 : vec4<f32> = u_xlat1;
    let x_1232 : vec3<f32> = log2(vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
    let x_1233 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
    let x_1235 : vec4<f32> = u_xlat2;
    let x_1239 : vec3<f32> = (vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1240 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
    let x_1242 : vec4<f32> = u_xlat2;
    let x_1244 : vec3<f32> = exp2(vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
    let x_1245 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
    let x_1247 : vec4<f32> = u_xlat2;
    let x_1254 : vec3<f32> = ((vec3<f32>(x_1247.x, x_1247.y, x_1247.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1255 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
    let x_1260 : vec4<f32> = u_xlat1;
    let x_1262 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1260.x));
    u_xlatb3 = vec3<bool>(x_1262.x, x_1262.y, x_1262.z);
    let x_1266 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1266;
    let x_1268 : bool = u_xlatb3.x;
    if (x_1268) {
      let x_1273 : f32 = u_xlat0.x;
      x_1269 = x_1273;
    } else {
      let x_1276 : f32 = u_xlat2.x;
      x_1269 = x_1276;
    }
    let x_1277 : f32 = x_1269;
    hlslcc_movcTemp.x = x_1277;
    let x_1280 : bool = u_xlatb3.y;
    if (x_1280) {
      let x_1285 : f32 = u_xlat0.y;
      x_1281 = x_1285;
    } else {
      let x_1288 : f32 = u_xlat2.y;
      x_1281 = x_1288;
    }
    let x_1289 : f32 = x_1281;
    hlslcc_movcTemp.y = x_1289;
    let x_1292 : bool = u_xlatb3.z;
    if (x_1292) {
      let x_1297 : f32 = u_xlat0.z;
      x_1293 = x_1297;
    } else {
      let x_1300 : f32 = u_xlat2.z;
      x_1293 = x_1300;
    }
    let x_1301 : f32 = x_1293;
    hlslcc_movcTemp.z = x_1301;
    let x_1303 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1303;
    let x_1304 : vec3<f32> = u_xlat0;
    let x_1307 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1309 : vec3<f32> = (vec3<f32>(x_1304.z, x_1304.x, x_1304.y) * vec3<f32>(x_1307.z, x_1307.z, x_1307.z));
    let x_1310 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
    let x_1313 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1313);
    let x_1316 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1318 : vec2<f32> = (vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(0.5f, 0.5f));
    let x_1319 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1318.x, x_1319.y, x_1319.z, x_1318.y);
    let x_1321 : vec4<f32> = u_xlat2;
    let x_1324 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1327 : vec4<f32> = u_xlat2;
    let x_1329 : vec2<f32> = ((vec2<f32>(x_1321.y, x_1321.z) * vec2<f32>(x_1324.x, x_1324.y)) + vec2<f32>(x_1327.x, x_1327.w));
    let x_1330 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1330.x, x_1329.x, x_1329.y, x_1330.w);
    let x_1332 : f32 = u_xlat15;
    let x_1334 : f32 = x_26.x_UserLut_Params.y;
    let x_1337 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1332 * x_1334) + x_1337);
    let x_1344 : vec4<f32> = u_xlat2;
    let x_1346 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1344.x, x_1344.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1346.x, x_1346.y, x_1346.z);
    let x_1350 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_1350;
    u_xlat4.y = 0.0f;
    let x_1353 : vec4<f32> = u_xlat2;
    let x_1355 : vec2<f32> = u_xlat4;
    let x_1356 : vec2<f32> = (vec2<f32>(x_1353.x, x_1353.z) + x_1355);
    let x_1357 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
    let x_1362 : vec4<f32> = u_xlat2;
    let x_1364 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1362.x, x_1362.y), 0.0f);
    let x_1365 : vec3<f32> = vec3<f32>(x_1364.x, x_1364.y, x_1364.z);
    let x_1366 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
    let x_1369 : f32 = u_xlat0.z;
    let x_1371 : f32 = x_26.x_UserLut_Params.z;
    let x_1373 : f32 = u_xlat15;
    u_xlat15 = ((x_1369 * x_1371) + -(x_1373));
    let x_1376 : vec3<f32> = u_xlat3;
    let x_1378 : vec4<f32> = u_xlat2;
    let x_1380 : vec3<f32> = (-(x_1376) + vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
    let x_1381 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
    let x_1383 : f32 = u_xlat15;
    let x_1385 : vec4<f32> = u_xlat2;
    let x_1388 : vec3<f32> = u_xlat3;
    let x_1389 : vec3<f32> = ((vec3<f32>(x_1383, x_1383, x_1383) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z)) + x_1388);
    let x_1390 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1390.w);
    let x_1392 : vec3<f32> = u_xlat0;
    let x_1394 : vec4<f32> = u_xlat2;
    let x_1396 : vec3<f32> = (-(x_1392) + vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
    let x_1397 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
    let x_1400 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1402 : vec4<f32> = u_xlat2;
    let x_1405 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1400.w, x_1400.w, x_1400.w) * vec3<f32>(x_1402.x, x_1402.y, x_1402.z)) + x_1405);
    let x_1407 : vec3<f32> = u_xlat0;
    let x_1410 : vec3<f32> = (x_1407 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1411 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1411.w);
    let x_1413 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1413 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1417 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1417 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1421 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1421));
    let x_1424 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1424 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1428 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1428);
    let x_1432 : vec3<f32> = u_xlat0;
    let x_1434 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1432.x));
    u_xlatb0 = vec3<bool>(x_1434.x, x_1434.y, x_1434.z);
    let x_1437 : bool = u_xlatb0.x;
    if (x_1437) {
      let x_1442 : f32 = u_xlat2.x;
      x_1438 = x_1442;
    } else {
      let x_1445 : f32 = u_xlat3.x;
      x_1438 = x_1445;
    }
    let x_1446 : f32 = x_1438;
    u_xlat1.x = x_1446;
    let x_1449 : bool = u_xlatb0.y;
    if (x_1449) {
      let x_1454 : f32 = u_xlat2.y;
      x_1450 = x_1454;
    } else {
      let x_1457 : f32 = u_xlat3.y;
      x_1450 = x_1457;
    }
    let x_1458 : f32 = x_1450;
    u_xlat1.y = x_1458;
    let x_1461 : bool = u_xlatb0.z;
    if (x_1461) {
      let x_1466 : f32 = u_xlat2.z;
      x_1462 = x_1466;
    } else {
      let x_1469 : f32 = u_xlat3.z;
      x_1462 = x_1469;
    }
    let x_1470 : f32 = x_1462;
    u_xlat1.z = x_1470;
  }
  let x_1472 : vec4<f32> = u_xlat1;
  let x_1475 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1472.z, x_1472.x, x_1472.y) * vec3<f32>(x_1475.z, x_1475.z, x_1475.z));
  let x_1479 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1479);
  let x_1483 : vec4<f32> = x_26.x_Lut_Params;
  let x_1485 : vec2<f32> = (vec2<f32>(x_1483.x, x_1483.y) * vec2<f32>(0.5f, 0.5f));
  let x_1486 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1485.x, x_1485.y, x_1486.z, x_1486.w);
  let x_1488 : vec3<f32> = u_xlat0;
  let x_1491 : vec4<f32> = x_26.x_Lut_Params;
  let x_1494 : vec4<f32> = u_xlat1;
  let x_1496 : vec2<f32> = ((vec2<f32>(x_1488.y, x_1488.z) * vec2<f32>(x_1491.x, x_1491.y)) + vec2<f32>(x_1494.x, x_1494.y));
  let x_1497 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1497.x, x_1496.x, x_1496.y, x_1497.w);
  let x_1500 : f32 = u_xlat0.x;
  let x_1502 : f32 = x_26.x_Lut_Params.y;
  let x_1505 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1500 * x_1502) + x_1505);
  let x_1512 : vec4<f32> = u_xlat2;
  let x_1514 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1512.x, x_1512.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1514.x, x_1514.y, x_1514.z);
  let x_1517 : f32 = x_26.x_Lut_Params.y;
  u_xlat1.x = x_1517;
  u_xlat1.y = 0.0f;
  let x_1520 : vec4<f32> = u_xlat1;
  let x_1522 : vec4<f32> = u_xlat2;
  let x_1524 : vec2<f32> = (vec2<f32>(x_1520.x, x_1520.y) + vec2<f32>(x_1522.x, x_1522.z));
  let x_1525 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1524.x, x_1524.y, x_1525.z, x_1525.w);
  let x_1530 : vec4<f32> = u_xlat1;
  let x_1532 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1530.x, x_1530.y), 0.0f);
  let x_1533 : vec3<f32> = vec3<f32>(x_1532.x, x_1532.y, x_1532.z);
  let x_1534 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1533.x, x_1533.y, x_1534.z, x_1533.z);
  let x_1537 : f32 = u_xlat1.z;
  let x_1539 : f32 = x_26.x_Lut_Params.z;
  let x_1542 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1537 * x_1539) + -(x_1542));
  let x_1546 : vec3<f32> = u_xlat5;
  let x_1548 : vec4<f32> = u_xlat1;
  let x_1550 : vec3<f32> = (-(x_1546) + vec3<f32>(x_1548.x, x_1548.y, x_1548.w));
  let x_1551 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
  let x_1553 : vec3<f32> = u_xlat0;
  let x_1555 : vec4<f32> = u_xlat1;
  let x_1558 : vec3<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1553.x, x_1553.x, x_1553.x) * vec3<f32>(x_1555.x, x_1555.y, x_1555.z)) + x_1558);
  let x_1560 : vec2<f32> = vs_TEXCOORD0;
  let x_1563 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_1567 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_1569 : vec2<f32> = ((x_1560 * vec2<f32>(x_1563.x, x_1563.y)) + vec2<f32>(x_1567.z, x_1567.w));
  let x_1570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1569.x, x_1569.y, x_1570.z, x_1570.w);
  let x_1577 : vec4<f32> = u_xlat1;
  let x_1580 : f32 = x_26.x_GlobalMipBias.x;
  let x_1581 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1577.x, x_1577.y), x_1580);
  u_xlat15 = x_1581.w;
  let x_1583 : f32 = u_xlat15;
  u_xlat15 = (x_1583 + -0.5f);
  let x_1585 : f32 = u_xlat15;
  let x_1586 : f32 = u_xlat15;
  u_xlat15 = (x_1585 + x_1586);
  let x_1588 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_1588, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1596 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1596);
  let x_1601 : f32 = x_26.x_Grain_Params.y;
  let x_1603 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1601 * -(x_1603)) + 1.0f);
  let x_1608 : f32 = u_xlat15;
  let x_1610 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_1608, x_1608, x_1608) * x_1610);
  let x_1612 : vec3<f32> = u_xlat6;
  let x_1615 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat6 = (x_1612 * vec3<f32>(x_1615.x, x_1615.x, x_1615.x));
  let x_1618 : vec3<f32> = u_xlat6;
  let x_1619 : vec4<f32> = u_xlat1;
  let x_1622 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1618 * vec3<f32>(x_1619.x, x_1619.x, x_1619.x)) + x_1622);
  let x_1624 : vec3<f32> = u_xlat0;
  let x_1625 : vec3<f32> = (x_1624 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1626 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
  let x_1628 : vec3<f32> = u_xlat0;
  let x_1630 : vec3<f32> = log2(abs(x_1628));
  let x_1631 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
  let x_1633 : vec4<f32> = u_xlat2;
  let x_1635 : vec3<f32> = (vec3<f32>(x_1633.x, x_1633.y, x_1633.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1636 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1635.x, x_1635.y, x_1635.z, x_1636.w);
  let x_1638 : vec4<f32> = u_xlat2;
  let x_1640 : vec3<f32> = exp2(vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
  let x_1641 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
  let x_1643 : vec4<f32> = u_xlat2;
  let x_1646 : vec3<f32> = ((vec3<f32>(x_1643.x, x_1643.y, x_1643.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1647 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1646.x, x_1646.y, x_1646.z, x_1647.w);
  let x_1649 : vec3<f32> = u_xlat0;
  let x_1651 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1649.x));
  u_xlatb0 = vec3<bool>(x_1651.x, x_1651.y, x_1651.z);
  let x_1654 : bool = u_xlatb0.x;
  if (x_1654) {
    let x_1659 : f32 = u_xlat1.x;
    x_1655 = x_1659;
  } else {
    let x_1662 : f32 = u_xlat2.x;
    x_1655 = x_1662;
  }
  let x_1663 : f32 = x_1655;
  u_xlat0.x = x_1663;
  let x_1666 : bool = u_xlatb0.y;
  if (x_1666) {
    let x_1671 : f32 = u_xlat1.y;
    x_1667 = x_1671;
  } else {
    let x_1674 : f32 = u_xlat2.y;
    x_1667 = x_1674;
  }
  let x_1675 : f32 = x_1667;
  u_xlat0.y = x_1675;
  let x_1678 : bool = u_xlatb0.z;
  if (x_1678) {
    let x_1683 : f32 = u_xlat1.z;
    x_1679 = x_1683;
  } else {
    let x_1686 : f32 = u_xlat2.z;
    x_1679 = x_1686;
  }
  let x_1687 : f32 = x_1679;
  u_xlat0.z = x_1687;
  let x_1689 : vec2<f32> = vs_TEXCOORD0;
  let x_1692 : vec4<f32> = x_26.x_Dithering_Params;
  let x_1696 : vec4<f32> = x_26.x_Dithering_Params;
  let x_1698 : vec2<f32> = ((x_1689 * vec2<f32>(x_1692.x, x_1692.y)) + vec2<f32>(x_1696.z, x_1696.w));
  let x_1699 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1698.x, x_1698.y, x_1699.z, x_1699.w);
  let x_1706 : vec4<f32> = u_xlat1;
  let x_1709 : f32 = x_26.x_GlobalMipBias.x;
  let x_1710 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1706.x, x_1706.y), x_1709);
  u_xlat15 = x_1710.w;
  let x_1712 : f32 = u_xlat15;
  u_xlat15 = ((x_1712 * 2.0f) + -1.0f);
  let x_1715 : f32 = u_xlat15;
  u_xlatb1 = (x_1715 >= 0.0f);
  let x_1717 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1717);
  let x_1720 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1720)) + 1.0f);
  let x_1724 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1724);
  let x_1726 : f32 = u_xlat15;
  u_xlat15 = (-(x_1726) + 1.0f);
  let x_1729 : f32 = u_xlat15;
  let x_1731 : f32 = u_xlat1.x;
  u_xlat15 = (x_1729 * x_1731);
  let x_1733 : vec3<f32> = u_xlat0;
  let x_1734 : vec3<f32> = (x_1733 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1735 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
  let x_1737 : vec3<f32> = u_xlat0;
  let x_1739 : vec3<f32> = log2(abs(x_1737));
  let x_1740 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
  let x_1742 : vec4<f32> = u_xlat2;
  let x_1744 : vec3<f32> = (vec3<f32>(x_1742.x, x_1742.y, x_1742.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1745 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
  let x_1747 : vec4<f32> = u_xlat2;
  let x_1749 : vec3<f32> = exp2(vec3<f32>(x_1747.x, x_1747.y, x_1747.z));
  let x_1750 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
  let x_1752 : vec4<f32> = u_xlat2;
  let x_1755 : vec3<f32> = ((vec3<f32>(x_1752.x, x_1752.y, x_1752.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1756 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1756.w);
  let x_1758 : vec3<f32> = u_xlat0;
  let x_1760 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1758.x));
  u_xlatb0 = vec3<bool>(x_1760.x, x_1760.y, x_1760.z);
  let x_1763 : bool = u_xlatb0.x;
  if (x_1763) {
    let x_1768 : f32 = u_xlat1.x;
    x_1764 = x_1768;
  } else {
    let x_1771 : f32 = u_xlat2.x;
    x_1764 = x_1771;
  }
  let x_1772 : f32 = x_1764;
  u_xlat0.x = x_1772;
  let x_1775 : bool = u_xlatb0.y;
  if (x_1775) {
    let x_1780 : f32 = u_xlat1.y;
    x_1776 = x_1780;
  } else {
    let x_1783 : f32 = u_xlat2.y;
    x_1776 = x_1783;
  }
  let x_1784 : f32 = x_1776;
  u_xlat0.y = x_1784;
  let x_1787 : bool = u_xlatb0.z;
  if (x_1787) {
    let x_1792 : f32 = u_xlat1.z;
    x_1788 = x_1792;
  } else {
    let x_1795 : f32 = u_xlat2.z;
    x_1788 = x_1795;
  }
  let x_1796 : f32 = x_1788;
  u_xlat0.z = x_1796;
  let x_1798 : f32 = u_xlat15;
  let x_1803 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1798, x_1798, x_1798) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + x_1803);
  let x_1805 : vec3<f32> = u_xlat0;
  let x_1806 : vec3<f32> = (x_1805 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1806.x, x_1806.y, x_1806.z, x_1807.w);
  let x_1809 : vec3<f32> = u_xlat0;
  let x_1810 : vec3<f32> = (x_1809 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1811 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
  let x_1813 : vec4<f32> = u_xlat2;
  let x_1815 : vec3<f32> = (vec3<f32>(x_1813.x, x_1813.y, x_1813.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1816 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
  let x_1818 : vec4<f32> = u_xlat2;
  let x_1821 : vec3<f32> = log2(abs(vec3<f32>(x_1818.x, x_1818.y, x_1818.z)));
  let x_1822 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1821.x, x_1821.y, x_1821.z, x_1822.w);
  let x_1824 : vec4<f32> = u_xlat2;
  let x_1826 : vec3<f32> = (vec3<f32>(x_1824.x, x_1824.y, x_1824.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1827 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1827.w);
  let x_1829 : vec4<f32> = u_xlat2;
  let x_1831 : vec3<f32> = exp2(vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
  let x_1832 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
  let x_1834 : vec3<f32> = u_xlat0;
  let x_1836 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1834.x));
  u_xlatb0 = vec3<bool>(x_1836.x, x_1836.y, x_1836.z);
  let x_1839 : bool = u_xlatb0.x;
  if (x_1839) {
    let x_1844 : f32 = u_xlat1.x;
    x_1840 = x_1844;
  } else {
    let x_1847 : f32 = u_xlat2.x;
    x_1840 = x_1847;
  }
  let x_1848 : f32 = x_1840;
  u_xlat0.x = x_1848;
  let x_1851 : bool = u_xlatb0.y;
  if (x_1851) {
    let x_1856 : f32 = u_xlat1.y;
    x_1852 = x_1856;
  } else {
    let x_1859 : f32 = u_xlat2.y;
    x_1852 = x_1859;
  }
  let x_1860 : f32 = x_1852;
  u_xlat0.y = x_1860;
  let x_1863 : bool = u_xlatb0.z;
  if (x_1863) {
    let x_1868 : f32 = u_xlat1.z;
    x_1864 = x_1868;
  } else {
    let x_1871 : f32 = u_xlat2.z;
    x_1864 = x_1871;
  }
  let x_1872 : f32 = x_1864;
  u_xlat0.z = x_1872;
  let x_1876 : vec3<f32> = u_xlat0;
  let x_1877 : vec3<f32> = max(x_1876, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1878 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);
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


