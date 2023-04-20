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
  x_LensDirt_Params : vec4<f32>,
  /* @offset(144) */
  x_LensDirt_Intensity : f32,
  /* @offset(160) */
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(192) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(208) */
  x_Vignette_Params2 : vec4<f32>,
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

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

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

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_230 : f32;
  var x_661 : f32;
  var x_670 : f32;
  var x_801 : f32;
  var x_852 : f32;
  var x_879 : f32;
  var x_903 : f32;
  var x_914 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1304 : f32;
  var x_1316 : f32;
  var x_1328 : f32;
  var x_1473 : f32;
  var x_1485 : f32;
  var x_1497 : f32;
  var x_1670 : f32;
  var x_1682 : f32;
  var x_1694 : f32;
  var x_1746 : f32;
  var x_1758 : f32;
  var x_1770 : f32;
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
  let x_357 : vec3<f32> = u_xlat6;
  let x_361 : vec4<f32> = x_26.x_LensDirt_Params;
  let x_365 : vec4<f32> = x_26.x_LensDirt_Params;
  let x_367 : vec2<f32> = ((vec2<f32>(x_357.x, x_357.y) * vec2<f32>(x_361.x, x_361.y)) + vec2<f32>(x_365.z, x_365.w));
  let x_368 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_367.x, x_368.y, x_368.z, x_367.y);
  let x_374 : vec4<f32> = u_xlat1;
  let x_377 : f32 = x_26.x_GlobalMipBias.x;
  let x_378 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_374.x, x_374.w), x_377);
  u_xlat3 = vec3<f32>(x_378.x, x_378.y, x_378.z);
  let x_380 : vec3<f32> = u_xlat3;
  let x_383 : f32 = x_26.x_LensDirt_Intensity;
  u_xlat3 = (x_380 * vec3<f32>(x_383, x_383, x_383));
  let x_386 : vec3<f32> = u_xlat3;
  let x_387 : vec4<f32> = u_xlat2;
  let x_390 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_386 * vec3<f32>(x_387.x, x_387.y, x_387.z)) + x_390);
  let x_395 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_395);
  let x_397 : bool = u_xlatb15;
  if (x_397) {
    let x_400 : vec3<f32> = u_xlat6;
    let x_403 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_406 : vec2<f32> = (vec2<f32>(x_400.x, x_400.y) + -(vec2<f32>(x_403.x, x_403.y)));
    let x_407 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
    let x_409 : vec4<f32> = u_xlat1;
    let x_413 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_415 : vec2<f32> = (abs(vec2<f32>(x_409.x, x_409.y)) * vec2<f32>(x_413.z, x_413.z));
    let x_416 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_416.x, x_415.x, x_415.y, x_416.w);
    let x_419 : f32 = u_xlat1.y;
    let x_422 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_419 * x_422);
    let x_426 : vec4<f32> = u_xlat1;
    let x_428 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_426.x, x_426.z), vec2<f32>(x_428.x, x_428.z));
    let x_431 : f32 = u_xlat15;
    u_xlat15 = (-(x_431) + 1.0f);
    let x_434 : f32 = u_xlat15;
    u_xlat15 = max(x_434, 0.0f);
    let x_436 : f32 = u_xlat15;
    u_xlat15 = log2(x_436);
    let x_438 : f32 = u_xlat15;
    let x_440 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_438 * x_440);
    let x_442 : f32 = u_xlat15;
    u_xlat15 = exp2(x_442);
    let x_445 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_449 : vec3<f32> = (-(vec3<f32>(x_445.x, x_445.y, x_445.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_450 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
    let x_452 : f32 = u_xlat15;
    let x_454 : vec4<f32> = u_xlat1;
    let x_458 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_460 : vec3<f32> = ((vec3<f32>(x_452, x_452, x_452) * vec3<f32>(x_454.x, x_454.y, x_454.z)) + vec3<f32>(x_458.x, x_458.y, x_458.z));
    let x_461 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
    let x_463 : vec3<f32> = u_xlat0;
    let x_464 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_463 * vec3<f32>(x_464.x, x_464.y, x_464.z));
  }
  let x_467 : vec3<f32> = u_xlat0;
  let x_470 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (x_467 * vec3<f32>(x_470.w, x_470.w, x_470.w));
  let x_477 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), x_477);
  let x_484 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), x_484);
  let x_491 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), x_491);
  let x_495 : f32 = u_xlat6.y;
  let x_497 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_495, x_497);
  let x_501 : f32 = u_xlat6.z;
  let x_503 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_501, x_503);
  let x_508 : f32 = u_xlat6.y;
  let x_510 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_508, x_510);
  let x_514 : f32 = u_xlat6.z;
  let x_516 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_514, x_516);
  let x_519 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_519.x, x_519.y, x_519.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_526 : f32 = u_xlat0.x;
  let x_529 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_526) + x_529);
  let x_533 : f32 = u_xlat0.x;
  let x_535 : f32 = u_xlat0.z;
  u_xlat0.x = (x_533 / x_535);
  let x_538 : vec3<f32> = u_xlat6;
  let x_541 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_538.y, x_538.x, x_538.z)) + vec3<f32>(x_541.z, x_541.y, x_541.x));
  let x_544 : vec3<f32> = u_xlat5;
  let x_546 : vec3<f32> = u_xlat6;
  let x_548 : vec2<f32> = (vec2<f32>(x_544.x, x_544.y) * vec2<f32>(x_546.z, x_546.y));
  let x_549 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_548.x, x_548.y, x_549.z);
  let x_552 : f32 = u_xlat5.y;
  let x_554 : f32 = u_xlat5.x;
  u_xlat5.x = (x_552 + x_554);
  let x_558 : f32 = u_xlat6.x;
  let x_560 : f32 = u_xlat5.z;
  let x_563 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_558 * x_560) + x_563);
  let x_567 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_567, 0.0f);
  let x_571 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_571);
  let x_575 : f32 = u_xlat6.y;
  let x_577 : f32 = u_xlat6.z;
  u_xlat10.x = (x_575 + x_577);
  let x_581 : f32 = u_xlat6.x;
  let x_583 : f32 = u_xlat10.x;
  u_xlat10.x = (x_581 + x_583);
  let x_587 : f32 = u_xlat5.x;
  let x_591 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_587 * 1.75f) + x_591);
  let x_595 : f32 = u_xlat0.x;
  u_xlat15 = (x_595 + -0.40000000596046447754f);
  let x_598 : f32 = u_xlat15;
  u_xlat1.x = (x_598 * 2.5f);
  let x_603 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_603)) + 1.0f);
  let x_609 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_609, 0.0f);
  let x_612 : f32 = u_xlat15;
  u_xlatb15 = (x_612 >= 0.0f);
  let x_614 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_614);
  let x_617 : f32 = u_xlat1.x;
  let x_620 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_617) * x_620) + 1.0f);
  let x_624 : f32 = u_xlat15;
  let x_626 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_624 * x_626) + 1.0f);
  let x_630 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_630.x, x_630.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_638 : f32 = u_xlat5.x;
  u_xlatb1 = (0.15999999642372131348f >= x_638);
  let x_642 : f32 = u_xlat5.x;
  u_xlatb5 = (x_642 >= 0.47999998927116394043f);
  let x_647 : f32 = u_xlat10.x;
  u_xlat10.x = (0.07999999821186065674f / x_647);
  let x_651 : f32 = u_xlat10.x;
  u_xlat10.x = (x_651 + -0.5f);
  let x_655 : f32 = u_xlat10.x;
  let x_657 : f32 = u_xlat10.y;
  u_xlat10.x = (x_655 * x_657);
  let x_660 : bool = u_xlatb5;
  if (x_660) {
    x_661 = 0.0f;
  } else {
    let x_666 : f32 = u_xlat10.x;
    x_661 = x_666;
  }
  let x_667 : f32 = x_661;
  u_xlat5.x = x_667;
  let x_669 : bool = u_xlatb1;
  if (x_669) {
    let x_674 : f32 = u_xlat10.y;
    x_670 = x_674;
  } else {
    let x_677 : f32 = u_xlat5.x;
    x_670 = x_677;
  }
  let x_678 : f32 = x_670;
  u_xlat5.x = x_678;
  let x_681 : f32 = u_xlat5.x;
  u_xlat5.x = (x_681 + 1.0f);
  let x_684 : vec3<f32> = u_xlat5;
  let x_686 : vec3<f32> = u_xlat6;
  let x_687 : vec3<f32> = (vec3<f32>(x_684.x, x_684.x, x_684.x) * x_686);
  let x_688 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_688.x, x_687.x, x_687.y, x_687.z);
  let x_693 : vec4<f32> = u_xlat2;
  let x_695 : vec4<f32> = u_xlat2;
  let x_698 : vec4<bool> = (vec4<f32>(x_693.z, x_693.w, x_693.z, x_693.w) == vec4<f32>(x_695.y, x_695.z, x_695.y, x_695.z));
  u_xlatb10 = vec2<bool>(x_698.x, x_698.y);
  let x_701 : bool = u_xlatb10.y;
  let x_703 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_701 & x_703);
  let x_707 : f32 = u_xlat6.y;
  let x_709 : f32 = u_xlat5.x;
  let x_712 : f32 = u_xlat2.w;
  u_xlat15 = ((x_707 * x_709) + -(x_712));
  let x_715 : f32 = u_xlat15;
  u_xlat15 = (x_715 * 1.73205077648162841797f);
  let x_719 : f32 = u_xlat2.y;
  let x_723 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_719 * 2.0f) + -(x_723));
  let x_728 : f32 = u_xlat6.z;
  let x_731 : f32 = u_xlat5.x;
  let x_734 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_728) * x_731) + x_734);
  let x_737 : f32 = u_xlat15;
  let x_740 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_737), abs(x_740));
  let x_744 : f32 = u_xlat15;
  let x_747 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_744), abs(x_747));
  let x_750 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_750);
  let x_752 : f32 = u_xlat16;
  let x_754 : f32 = u_xlat11.x;
  u_xlat11.x = (x_752 * x_754);
  let x_758 : f32 = u_xlat11.x;
  let x_760 : f32 = u_xlat11.x;
  u_xlat16 = (x_758 * x_760);
  let x_762 : f32 = u_xlat16;
  u_xlat3.x = ((x_762 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_766 : f32 = u_xlat16;
  let x_768 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_766 * x_768) + 0.18014100193977355957f);
  let x_772 : f32 = u_xlat16;
  let x_774 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_772 * x_774) + -0.33029949665069580078f);
  let x_778 : f32 = u_xlat16;
  let x_780 : f32 = u_xlat3.x;
  u_xlat16 = ((x_778 * x_780) + 0.99986600875854492188f);
  let x_783 : f32 = u_xlat16;
  let x_785 : f32 = u_xlat11.x;
  u_xlat3.x = (x_783 * x_785);
  let x_790 : f32 = u_xlat1.x;
  let x_792 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_790) < abs(x_792));
  let x_796 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_796 * -2.0f) + 1.57079637050628662109f);
  let x_800 : bool = u_xlatb8;
  if (x_800) {
    let x_805 : f32 = u_xlat3.x;
    x_801 = x_805;
  } else {
    x_801 = 0.0f;
  }
  let x_807 : f32 = x_801;
  u_xlat3.x = x_807;
  let x_810 : f32 = u_xlat11.x;
  let x_811 : f32 = u_xlat16;
  let x_814 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_810 * x_811) + x_814);
  let x_819 : f32 = u_xlat1.x;
  let x_821 : f32 = u_xlat1.x;
  u_xlatb16 = (x_819 < -(x_821));
  let x_824 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.14159274101257324219f, x_824);
  let x_827 : f32 = u_xlat16;
  let x_829 : f32 = u_xlat11.x;
  u_xlat11.x = (x_827 + x_829);
  let x_832 : f32 = u_xlat15;
  let x_834 : f32 = u_xlat1.x;
  u_xlat16 = min(x_832, x_834);
  let x_836 : f32 = u_xlat15;
  let x_838 : f32 = u_xlat1.x;
  u_xlat15 = max(x_836, x_838);
  let x_840 : f32 = u_xlat16;
  let x_841 : f32 = u_xlat16;
  u_xlatb1 = (x_840 < -(x_841));
  let x_844 : f32 = u_xlat15;
  let x_845 : f32 = u_xlat15;
  u_xlatb15 = (x_844 >= -(x_845));
  let x_848 : bool = u_xlatb15;
  let x_849 : bool = u_xlatb1;
  u_xlatb15 = (x_848 & x_849);
  let x_851 : bool = u_xlatb15;
  if (x_851) {
    let x_856 : f32 = u_xlat11.x;
    x_852 = -(x_856);
  } else {
    let x_860 : f32 = u_xlat11.x;
    x_852 = x_860;
  }
  let x_861 : f32 = x_852;
  u_xlat15 = x_861;
  let x_862 : f32 = u_xlat15;
  u_xlat15 = (x_862 * 57.295780181884765625f);
  let x_866 : bool = u_xlatb10.x;
  let x_867 : f32 = u_xlat15;
  u_xlat10.x = select(x_867, 0.0f, x_866);
  let x_871 : f32 = u_xlat10.x;
  u_xlatb15 = (x_871 < 0.0f);
  let x_874 : f32 = u_xlat10.x;
  u_xlat1.x = (x_874 + 360.0f);
  let x_878 : bool = u_xlatb15;
  if (x_878) {
    let x_883 : f32 = u_xlat1.x;
    x_879 = x_883;
  } else {
    let x_886 : f32 = u_xlat10.x;
    x_879 = x_886;
  }
  let x_887 : f32 = x_879;
  u_xlat10.x = x_887;
  let x_890 : f32 = u_xlat10.x;
  u_xlatb15 = (x_890 < -180.0f);
  let x_895 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_895);
  let x_897 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_897.x, x_897.x) + vec2<f32>(360.0f, -360.0f));
  let x_902 : bool = u_xlatb1;
  if (x_902) {
    let x_907 : f32 = u_xlat11.y;
    x_903 = x_907;
  } else {
    let x_910 : f32 = u_xlat10.x;
    x_903 = x_910;
  }
  let x_911 : f32 = x_903;
  u_xlat10.x = x_911;
  let x_913 : bool = u_xlatb15;
  if (x_913) {
    let x_918 : f32 = u_xlat11.x;
    x_914 = x_918;
  } else {
    let x_921 : f32 = u_xlat10.x;
    x_914 = x_921;
  }
  let x_922 : f32 = x_914;
  u_xlat10.x = x_922;
  let x_925 : f32 = u_xlat10.x;
  u_xlat10.x = (x_925 * 0.01481481455266475677f);
  let x_930 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_930)) + 1.0f);
  let x_936 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_936, 0.0f);
  let x_940 : f32 = u_xlat10.x;
  u_xlat15 = ((x_940 * -2.0f) + 3.0f);
  let x_945 : f32 = u_xlat10.x;
  let x_947 : f32 = u_xlat10.x;
  u_xlat10.x = (x_945 * x_947);
  let x_951 : f32 = u_xlat10.x;
  let x_952 : f32 = u_xlat15;
  u_xlat10.x = (x_951 * x_952);
  let x_956 : f32 = u_xlat10.x;
  let x_958 : f32 = u_xlat10.x;
  u_xlat10.x = (x_956 * x_958);
  let x_962 : f32 = u_xlat0.x;
  let x_964 : f32 = u_xlat10.x;
  u_xlat0.x = (x_962 * x_964);
  let x_968 : f32 = u_xlat6.x;
  let x_971 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_968) * x_971) + 0.02999999932944774628f);
  let x_977 : f32 = u_xlat5.x;
  let x_979 : f32 = u_xlat0.x;
  u_xlat0.x = (x_977 * x_979);
  let x_983 : f32 = u_xlat0.x;
  let x_987 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_983 * 0.18000000715255737305f) + x_987);
  let x_994 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_994.x, x_994.z, x_994.w));
  let x_1002 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_1002.x, x_1002.z, x_1002.w));
  let x_1010 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_1010.x, x_1010.z, x_1010.w));
  let x_1014 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_1014, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1017 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_1017, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1023 : f32 = u_xlat15;
  let x_1026 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_1023, x_1023, x_1023)) + x_1026);
  let x_1028 : vec3<f32> = u_xlat0;
  let x_1032 : f32 = u_xlat15;
  u_xlat0 = ((x_1028 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_1032, x_1032, x_1032));
  let x_1035 : vec3<f32> = u_xlat0;
  let x_1038 : vec3<f32> = (x_1035 + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_1039 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : vec3<f32> = u_xlat0;
  let x_1042 : vec4<f32> = u_xlat1;
  let x_1047 : vec3<f32> = ((x_1041 * vec3<f32>(x_1042.x, x_1042.y, x_1042.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_1048 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : vec3<f32> = u_xlat0;
  let x_1056 : vec3<f32> = ((x_1050 * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_1057 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec3<f32> = u_xlat0;
  let x_1060 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1059 * vec3<f32>(x_1060.x, x_1060.y, x_1060.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_1066 : vec4<f32> = u_xlat1;
  let x_1068 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1066.x, x_1066.y, x_1066.z) / x_1068);
  let x_1074 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_1074);
  let x_1081 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_1081);
  let x_1088 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_1088);
  let x_1091 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1091.x, x_1091.y, x_1091.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1096 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1096, 0.00009999999747378752f);
  let x_1099 : vec4<f32> = u_xlat1;
  let x_1101 : vec3<f32> = u_xlat0;
  let x_1103 : vec2<f32> = (vec2<f32>(x_1099.x, x_1099.y) / vec2<f32>(x_1101.x, x_1101.x));
  let x_1104 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1103.x, x_1103.y, x_1104.z);
  let x_1107 : f32 = u_xlat1.y;
  u_xlat15 = max(x_1107, 0.0f);
  let x_1109 : f32 = u_xlat15;
  u_xlat15 = min(x_1109, 65504.0f);
  let x_1112 : f32 = u_xlat15;
  u_xlat15 = log2(x_1112);
  let x_1114 : f32 = u_xlat15;
  u_xlat15 = (x_1114 * 0.98110002279281616211f);
  let x_1117 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_1117);
  let x_1121 : f32 = u_xlat0.y;
  u_xlat15 = max(x_1121, 0.00009999999747378752f);
  let x_1124 : f32 = u_xlat1.y;
  let x_1125 : f32 = u_xlat15;
  u_xlat15 = (x_1124 / x_1125);
  let x_1128 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_1128) + 1.0f);
  let x_1132 : f32 = u_xlat0.y;
  let x_1134 : f32 = u_xlat16;
  u_xlat0.z = (-(x_1132) + x_1134);
  let x_1137 : f32 = u_xlat15;
  let x_1139 : vec3<f32> = u_xlat0;
  let x_1141 : vec2<f32> = (vec2<f32>(x_1137, x_1137) * vec2<f32>(x_1139.x, x_1139.z));
  let x_1142 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1142.w);
  let x_1148 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1156 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1164 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1168 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_1168, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1170 : f32 = u_xlat15;
  let x_1173 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_1170, x_1170, x_1170)) + x_1173);
  let x_1175 : vec3<f32> = u_xlat0;
  let x_1179 : f32 = u_xlat15;
  u_xlat0 = ((x_1175 * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1179, x_1179, x_1179));
  let x_1182 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_1182);
  let x_1185 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_1185);
  let x_1188 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_1188);
  let x_1195 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
  let x_1203 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1211 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1219 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), x_1219);
  let x_1223 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1223, 0.0f, 1.0f);
  let x_1230 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), x_1230);
  let x_1234 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1234, 0.0f, 1.0f);
  let x_1241 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), x_1241);
  let x_1245 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1245, 0.0f, 1.0f);
  let x_1253 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1253);
  let x_1257 : bool = u_xlatb0.x;
  if (x_1257) {
    let x_1260 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1260.x, x_1260.y, x_1260.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1265 : vec4<f32> = u_xlat1;
    let x_1267 : vec3<f32> = log2(vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
    let x_1268 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
    let x_1270 : vec4<f32> = u_xlat2;
    let x_1274 : vec3<f32> = (vec3<f32>(x_1270.x, x_1270.y, x_1270.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1275 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
    let x_1277 : vec4<f32> = u_xlat2;
    let x_1279 : vec3<f32> = exp2(vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
    let x_1280 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
    let x_1282 : vec4<f32> = u_xlat2;
    let x_1289 : vec3<f32> = ((vec3<f32>(x_1282.x, x_1282.y, x_1282.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1290 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
    let x_1295 : vec4<f32> = u_xlat1;
    let x_1297 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1295.x));
    u_xlatb3 = vec3<bool>(x_1297.x, x_1297.y, x_1297.z);
    let x_1301 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1301;
    let x_1303 : bool = u_xlatb3.x;
    if (x_1303) {
      let x_1308 : f32 = u_xlat0.x;
      x_1304 = x_1308;
    } else {
      let x_1311 : f32 = u_xlat2.x;
      x_1304 = x_1311;
    }
    let x_1312 : f32 = x_1304;
    hlslcc_movcTemp.x = x_1312;
    let x_1315 : bool = u_xlatb3.y;
    if (x_1315) {
      let x_1320 : f32 = u_xlat0.y;
      x_1316 = x_1320;
    } else {
      let x_1323 : f32 = u_xlat2.y;
      x_1316 = x_1323;
    }
    let x_1324 : f32 = x_1316;
    hlslcc_movcTemp.y = x_1324;
    let x_1327 : bool = u_xlatb3.z;
    if (x_1327) {
      let x_1332 : f32 = u_xlat0.z;
      x_1328 = x_1332;
    } else {
      let x_1335 : f32 = u_xlat2.z;
      x_1328 = x_1335;
    }
    let x_1336 : f32 = x_1328;
    hlslcc_movcTemp.z = x_1336;
    let x_1338 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1338;
    let x_1339 : vec3<f32> = u_xlat0;
    let x_1342 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1344 : vec3<f32> = (vec3<f32>(x_1339.z, x_1339.x, x_1339.y) * vec3<f32>(x_1342.z, x_1342.z, x_1342.z));
    let x_1345 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
    let x_1348 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1348);
    let x_1351 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1353 : vec2<f32> = (vec2<f32>(x_1351.x, x_1351.y) * vec2<f32>(0.5f, 0.5f));
    let x_1354 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1353.x, x_1354.y, x_1354.z, x_1353.y);
    let x_1356 : vec4<f32> = u_xlat2;
    let x_1359 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1362 : vec4<f32> = u_xlat2;
    let x_1364 : vec2<f32> = ((vec2<f32>(x_1356.y, x_1356.z) * vec2<f32>(x_1359.x, x_1359.y)) + vec2<f32>(x_1362.x, x_1362.w));
    let x_1365 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1365.x, x_1364.x, x_1364.y, x_1365.w);
    let x_1367 : f32 = u_xlat15;
    let x_1369 : f32 = x_26.x_UserLut_Params.y;
    let x_1372 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1367 * x_1369) + x_1372);
    let x_1379 : vec4<f32> = u_xlat2;
    let x_1381 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1379.x, x_1379.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1381.x, x_1381.y, x_1381.z);
    let x_1385 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_1385;
    u_xlat4.y = 0.0f;
    let x_1388 : vec4<f32> = u_xlat2;
    let x_1390 : vec2<f32> = u_xlat4;
    let x_1391 : vec2<f32> = (vec2<f32>(x_1388.x, x_1388.z) + x_1390);
    let x_1392 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
    let x_1397 : vec4<f32> = u_xlat2;
    let x_1399 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1397.x, x_1397.y), 0.0f);
    let x_1400 : vec3<f32> = vec3<f32>(x_1399.x, x_1399.y, x_1399.z);
    let x_1401 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
    let x_1404 : f32 = u_xlat0.z;
    let x_1406 : f32 = x_26.x_UserLut_Params.z;
    let x_1408 : f32 = u_xlat15;
    u_xlat15 = ((x_1404 * x_1406) + -(x_1408));
    let x_1411 : vec3<f32> = u_xlat3;
    let x_1413 : vec4<f32> = u_xlat2;
    let x_1415 : vec3<f32> = (-(x_1411) + vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
    let x_1416 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
    let x_1418 : f32 = u_xlat15;
    let x_1420 : vec4<f32> = u_xlat2;
    let x_1423 : vec3<f32> = u_xlat3;
    let x_1424 : vec3<f32> = ((vec3<f32>(x_1418, x_1418, x_1418) * vec3<f32>(x_1420.x, x_1420.y, x_1420.z)) + x_1423);
    let x_1425 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
    let x_1427 : vec3<f32> = u_xlat0;
    let x_1429 : vec4<f32> = u_xlat2;
    let x_1431 : vec3<f32> = (-(x_1427) + vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
    let x_1432 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1432.w);
    let x_1435 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1437 : vec4<f32> = u_xlat2;
    let x_1440 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1435.w, x_1435.w, x_1435.w) * vec3<f32>(x_1437.x, x_1437.y, x_1437.z)) + x_1440);
    let x_1442 : vec3<f32> = u_xlat0;
    let x_1445 : vec3<f32> = (x_1442 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1446 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
    let x_1448 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1448 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1452 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1452 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1456 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1456));
    let x_1459 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1459 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1463 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1463);
    let x_1467 : vec3<f32> = u_xlat0;
    let x_1469 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1467.x));
    u_xlatb0 = vec3<bool>(x_1469.x, x_1469.y, x_1469.z);
    let x_1472 : bool = u_xlatb0.x;
    if (x_1472) {
      let x_1477 : f32 = u_xlat2.x;
      x_1473 = x_1477;
    } else {
      let x_1480 : f32 = u_xlat3.x;
      x_1473 = x_1480;
    }
    let x_1481 : f32 = x_1473;
    u_xlat1.x = x_1481;
    let x_1484 : bool = u_xlatb0.y;
    if (x_1484) {
      let x_1489 : f32 = u_xlat2.y;
      x_1485 = x_1489;
    } else {
      let x_1492 : f32 = u_xlat3.y;
      x_1485 = x_1492;
    }
    let x_1493 : f32 = x_1485;
    u_xlat1.y = x_1493;
    let x_1496 : bool = u_xlatb0.z;
    if (x_1496) {
      let x_1501 : f32 = u_xlat2.z;
      x_1497 = x_1501;
    } else {
      let x_1504 : f32 = u_xlat3.z;
      x_1497 = x_1504;
    }
    let x_1505 : f32 = x_1497;
    u_xlat1.z = x_1505;
  }
  let x_1507 : vec4<f32> = u_xlat1;
  let x_1510 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1507.z, x_1507.x, x_1507.y) * vec3<f32>(x_1510.z, x_1510.z, x_1510.z));
  let x_1514 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1514);
  let x_1518 : vec4<f32> = x_26.x_Lut_Params;
  let x_1520 : vec2<f32> = (vec2<f32>(x_1518.x, x_1518.y) * vec2<f32>(0.5f, 0.5f));
  let x_1521 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
  let x_1523 : vec3<f32> = u_xlat0;
  let x_1526 : vec4<f32> = x_26.x_Lut_Params;
  let x_1529 : vec4<f32> = u_xlat1;
  let x_1531 : vec2<f32> = ((vec2<f32>(x_1523.y, x_1523.z) * vec2<f32>(x_1526.x, x_1526.y)) + vec2<f32>(x_1529.x, x_1529.y));
  let x_1532 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1532.x, x_1531.x, x_1531.y, x_1532.w);
  let x_1535 : f32 = u_xlat0.x;
  let x_1537 : f32 = x_26.x_Lut_Params.y;
  let x_1540 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1535 * x_1537) + x_1540);
  let x_1547 : vec4<f32> = u_xlat2;
  let x_1549 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1547.x, x_1547.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1549.x, x_1549.y, x_1549.z);
  let x_1552 : f32 = x_26.x_Lut_Params.y;
  u_xlat1.x = x_1552;
  u_xlat1.y = 0.0f;
  let x_1555 : vec4<f32> = u_xlat1;
  let x_1557 : vec4<f32> = u_xlat2;
  let x_1559 : vec2<f32> = (vec2<f32>(x_1555.x, x_1555.y) + vec2<f32>(x_1557.x, x_1557.z));
  let x_1560 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1559.x, x_1559.y, x_1560.z, x_1560.w);
  let x_1565 : vec4<f32> = u_xlat1;
  let x_1567 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1565.x, x_1565.y), 0.0f);
  let x_1568 : vec3<f32> = vec3<f32>(x_1567.x, x_1567.y, x_1567.z);
  let x_1569 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1568.x, x_1568.y, x_1569.z, x_1568.z);
  let x_1572 : f32 = u_xlat1.z;
  let x_1574 : f32 = x_26.x_Lut_Params.z;
  let x_1577 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1572 * x_1574) + -(x_1577));
  let x_1581 : vec3<f32> = u_xlat5;
  let x_1583 : vec4<f32> = u_xlat1;
  let x_1585 : vec3<f32> = (-(x_1581) + vec3<f32>(x_1583.x, x_1583.y, x_1583.w));
  let x_1586 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1585.x, x_1585.y, x_1585.z, x_1586.w);
  let x_1588 : vec3<f32> = u_xlat0;
  let x_1590 : vec4<f32> = u_xlat1;
  let x_1593 : vec3<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1588.x, x_1588.x, x_1588.x) * vec3<f32>(x_1590.x, x_1590.y, x_1590.z)) + x_1593);
  let x_1595 : vec2<f32> = vs_TEXCOORD0;
  let x_1598 : vec4<f32> = x_26.x_Dithering_Params;
  let x_1602 : vec4<f32> = x_26.x_Dithering_Params;
  let x_1604 : vec2<f32> = ((x_1595 * vec2<f32>(x_1598.x, x_1598.y)) + vec2<f32>(x_1602.z, x_1602.w));
  let x_1605 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1604.x, x_1604.y, x_1605.z, x_1605.w);
  let x_1612 : vec4<f32> = u_xlat1;
  let x_1615 : f32 = x_26.x_GlobalMipBias.x;
  let x_1616 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1612.x, x_1612.y), x_1615);
  u_xlat15 = x_1616.w;
  let x_1618 : f32 = u_xlat15;
  u_xlat15 = ((x_1618 * 2.0f) + -1.0f);
  let x_1621 : f32 = u_xlat15;
  u_xlatb1 = (x_1621 >= 0.0f);
  let x_1623 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1623);
  let x_1626 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1626)) + 1.0f);
  let x_1630 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1630);
  let x_1632 : f32 = u_xlat15;
  u_xlat15 = (-(x_1632) + 1.0f);
  let x_1635 : f32 = u_xlat15;
  let x_1637 : f32 = u_xlat1.x;
  u_xlat15 = (x_1635 * x_1637);
  let x_1639 : vec3<f32> = u_xlat0;
  let x_1640 : vec3<f32> = (x_1639 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1641 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
  let x_1643 : vec3<f32> = u_xlat0;
  let x_1645 : vec3<f32> = log2(abs(x_1643));
  let x_1646 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
  let x_1648 : vec4<f32> = u_xlat2;
  let x_1650 : vec3<f32> = (vec3<f32>(x_1648.x, x_1648.y, x_1648.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1651 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
  let x_1653 : vec4<f32> = u_xlat2;
  let x_1655 : vec3<f32> = exp2(vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
  let x_1656 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
  let x_1658 : vec4<f32> = u_xlat2;
  let x_1661 : vec3<f32> = ((vec3<f32>(x_1658.x, x_1658.y, x_1658.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1662 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
  let x_1664 : vec3<f32> = u_xlat0;
  let x_1666 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1664.x));
  u_xlatb0 = vec3<bool>(x_1666.x, x_1666.y, x_1666.z);
  let x_1669 : bool = u_xlatb0.x;
  if (x_1669) {
    let x_1674 : f32 = u_xlat1.x;
    x_1670 = x_1674;
  } else {
    let x_1677 : f32 = u_xlat2.x;
    x_1670 = x_1677;
  }
  let x_1678 : f32 = x_1670;
  u_xlat0.x = x_1678;
  let x_1681 : bool = u_xlatb0.y;
  if (x_1681) {
    let x_1686 : f32 = u_xlat1.y;
    x_1682 = x_1686;
  } else {
    let x_1689 : f32 = u_xlat2.y;
    x_1682 = x_1689;
  }
  let x_1690 : f32 = x_1682;
  u_xlat0.y = x_1690;
  let x_1693 : bool = u_xlatb0.z;
  if (x_1693) {
    let x_1698 : f32 = u_xlat1.z;
    x_1694 = x_1698;
  } else {
    let x_1701 : f32 = u_xlat2.z;
    x_1694 = x_1701;
  }
  let x_1702 : f32 = x_1694;
  u_xlat0.z = x_1702;
  let x_1704 : f32 = u_xlat15;
  let x_1709 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1704, x_1704, x_1704) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + x_1709);
  let x_1711 : vec3<f32> = u_xlat0;
  let x_1712 : vec3<f32> = (x_1711 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1713 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
  let x_1715 : vec3<f32> = u_xlat0;
  let x_1716 : vec3<f32> = (x_1715 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1717 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1717.w);
  let x_1719 : vec4<f32> = u_xlat2;
  let x_1721 : vec3<f32> = (vec3<f32>(x_1719.x, x_1719.y, x_1719.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1722 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1722.w);
  let x_1724 : vec4<f32> = u_xlat2;
  let x_1727 : vec3<f32> = log2(abs(vec3<f32>(x_1724.x, x_1724.y, x_1724.z)));
  let x_1728 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
  let x_1730 : vec4<f32> = u_xlat2;
  let x_1732 : vec3<f32> = (vec3<f32>(x_1730.x, x_1730.y, x_1730.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1733 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  let x_1735 : vec4<f32> = u_xlat2;
  let x_1737 : vec3<f32> = exp2(vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
  let x_1738 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1737.x, x_1737.y, x_1737.z, x_1738.w);
  let x_1740 : vec3<f32> = u_xlat0;
  let x_1742 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1740.x));
  u_xlatb0 = vec3<bool>(x_1742.x, x_1742.y, x_1742.z);
  let x_1745 : bool = u_xlatb0.x;
  if (x_1745) {
    let x_1750 : f32 = u_xlat1.x;
    x_1746 = x_1750;
  } else {
    let x_1753 : f32 = u_xlat2.x;
    x_1746 = x_1753;
  }
  let x_1754 : f32 = x_1746;
  u_xlat0.x = x_1754;
  let x_1757 : bool = u_xlatb0.y;
  if (x_1757) {
    let x_1762 : f32 = u_xlat1.y;
    x_1758 = x_1762;
  } else {
    let x_1765 : f32 = u_xlat2.y;
    x_1758 = x_1765;
  }
  let x_1766 : f32 = x_1758;
  u_xlat0.y = x_1766;
  let x_1769 : bool = u_xlatb0.z;
  if (x_1769) {
    let x_1774 : f32 = u_xlat1.z;
    x_1770 = x_1774;
  } else {
    let x_1777 : f32 = u_xlat2.z;
    x_1770 = x_1777;
  }
  let x_1778 : f32 = x_1770;
  u_xlat0.z = x_1778;
  let x_1782 : vec3<f32> = u_xlat0;
  let x_1783 : vec3<f32> = max(x_1782, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1784 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
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


