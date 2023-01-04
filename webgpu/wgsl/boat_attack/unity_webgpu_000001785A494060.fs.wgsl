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
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_TilingParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(5) var x_UserLut : texture_2d<f32>;

@group(0) @binding(4) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : vec3<bool>;
  var x_231 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_509 : f32;
  var x_521 : f32;
  var x_533 : f32;
  var u_xlat4 : vec2<f32>;
  var x_684 : f32;
  var x_696 : f32;
  var x_708 : f32;
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
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
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
    u_xlat11 = (1.0f / x_115);
    let x_118 : f32 = u_xlat6.x;
    let x_119 : f32 = u_xlat11;
    u_xlat6.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat6;
    let x_129 : vec2<f32> = u_xlat10;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_136);
    let x_138 : f32 = u_xlat16;
    let x_140 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_158);
    let x_160 : f32 = u_xlat7;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat7 = (x_166 * x_168);
    let x_171 : f32 = u_xlat7;
    u_xlat12 = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_176 : f32 = u_xlat7;
    let x_177 : f32 = u_xlat12;
    u_xlat12 = ((x_176 * x_177) + 0.180141002f);
    let x_181 : f32 = u_xlat7;
    let x_182 : f32 = u_xlat12;
    u_xlat12 = ((x_181 * x_182) + -0.330299497f);
    let x_186 : f32 = u_xlat7;
    let x_187 : f32 = u_xlat12;
    u_xlat7 = ((x_186 * x_187) + 0.999866009f);
    let x_191 : f32 = u_xlat7;
    let x_193 : f32 = u_xlat2.x;
    u_xlat12 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat12;
    u_xlat12 = ((x_200 * -2.0f) + 1.570796371f);
    let x_205 : bool = u_xlatb17;
    let x_206 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_206, x_205);
    let x_209 : f32 = u_xlat2.x;
    let x_210 : f32 = u_xlat7;
    let x_212 : f32 = u_xlat12;
    u_xlat2.x = ((x_209 * x_210) + x_212);
    let x_216 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_216, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_223 < -(x_225));
    let x_230 : bool = u_xlatb1.x;
    if (x_230) {
      let x_235 : f32 = u_xlat2.x;
      x_231 = -(x_235);
    } else {
      let x_239 : f32 = u_xlat2.x;
      x_231 = x_239;
    }
    let x_240 : f32 = x_231;
    u_xlat1.x = x_240;
    let x_242 : f32 = u_xlat16;
    let x_244 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_242 * x_244) + -1.0f);
    let x_248 : vec4<f32> = u_xlat0;
    let x_250 : vec4<f32> = u_xlat1;
    let x_253 : vec2<f32> = u_xlat10;
    let x_254 : vec2<f32> = ((vec2<f32>(x_248.x, x_248.y) * vec2<f32>(x_250.x, x_250.x)) + x_253);
    let x_255 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_254.x, x_254.y, x_255.z);
  }
  let x_267 : vec3<f32> = u_xlat6;
  let x_271 : f32 = x_25.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_267.x, x_267.y), x_271);
  let x_273 : vec3<f32> = vec3<f32>(x_272.x, x_272.y, x_272.z);
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_280 : vec3<f32> = u_xlat6;
  let x_283 : f32 = x_25.x_GlobalMipBias.x;
  let x_284 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_280.x, x_280.y), x_283);
  u_xlat2 = x_284;
  let x_288 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_288);
  let x_290 : bool = u_xlatb15;
  if (x_290) {
    let x_293 : vec4<f32> = u_xlat2;
    let x_295 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_293.w, x_293.w, x_293.w) * vec3<f32>(x_295.x, x_295.y, x_295.z));
    let x_298 : vec3<f32> = u_xlat3;
    let x_301 : vec3<f32> = (x_298 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_302 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  }
  let x_304 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = x_25.x_Bloom_Params;
  let x_310 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_308.x, x_308.x, x_308.x));
  let x_311 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat2;
  let x_316 : vec4<f32> = x_25.x_Bloom_Params;
  let x_319 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_316.y, x_316.z, x_316.w)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec3<f32> = u_xlat6;
  let x_328 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_332 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_334 : vec2<f32> = ((vec2<f32>(x_324.x, x_324.y) * vec2<f32>(x_328.x, x_328.y)) + vec2<f32>(x_332.z, x_332.w));
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_334.x, x_335.y, x_335.z, x_334.y);
  let x_341 : vec4<f32> = u_xlat1;
  let x_344 : f32 = x_25.x_GlobalMipBias.x;
  let x_345 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_341.x, x_341.w), x_344);
  u_xlat3 = vec3<f32>(x_345.x, x_345.y, x_345.z);
  let x_347 : vec3<f32> = u_xlat3;
  let x_350 : f32 = x_25.x_LensDirt_Intensity;
  u_xlat3 = (x_347 * vec3<f32>(x_350, x_350, x_350));
  let x_353 : vec3<f32> = u_xlat3;
  let x_354 : vec4<f32> = u_xlat2;
  let x_357 : vec4<f32> = u_xlat0;
  let x_359 : vec3<f32> = ((x_353 * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_365 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_365);
  let x_367 : bool = u_xlatb15;
  if (x_367) {
    let x_370 : vec3<f32> = u_xlat6;
    let x_373 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_376 : vec2<f32> = (vec2<f32>(x_370.x, x_370.y) + -(vec2<f32>(x_373.x, x_373.y)));
    let x_377 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
    let x_379 : vec4<f32> = u_xlat1;
    let x_383 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_385 : vec2<f32> = (abs(vec2<f32>(x_379.x, x_379.y)) * vec2<f32>(x_383.z, x_383.z));
    let x_386 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_386.x, x_385.x, x_385.y, x_386.w);
    let x_389 : f32 = u_xlat1.y;
    let x_392 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_389 * x_392);
    let x_396 : vec4<f32> = u_xlat1;
    let x_398 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_396.x, x_396.z), vec2<f32>(x_398.x, x_398.z));
    let x_401 : f32 = u_xlat15;
    u_xlat15 = (-(x_401) + 1.0f);
    let x_404 : f32 = u_xlat15;
    u_xlat15 = max(x_404, 0.0f);
    let x_406 : f32 = u_xlat15;
    u_xlat15 = log2(x_406);
    let x_408 : f32 = u_xlat15;
    let x_410 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_408 * x_410);
    let x_412 : f32 = u_xlat15;
    u_xlat15 = exp2(x_412);
    let x_415 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_419 : vec3<f32> = (-(vec3<f32>(x_415.x, x_415.y, x_415.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_420 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
    let x_422 : f32 = u_xlat15;
    let x_424 : vec4<f32> = u_xlat1;
    let x_428 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_430 : vec3<f32> = ((vec3<f32>(x_422, x_422, x_422) * vec3<f32>(x_424.x, x_424.y, x_424.z)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_431 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
    let x_433 : vec4<f32> = u_xlat0;
    let x_435 : vec4<f32> = u_xlat1;
    let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_435.x, x_435.y, x_435.z));
    let x_438 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  }
  let x_440 : vec4<f32> = u_xlat0;
  let x_444 : vec4<f32> = x_25.x_Lut_Params;
  let x_446 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_444.w, x_444.w, x_444.w));
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = clamp(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_458 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_458);
  let x_460 : bool = u_xlatb15;
  if (x_460) {
    let x_463 : vec4<f32> = u_xlat0;
    let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_468 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
    let x_470 : vec4<f32> = u_xlat0;
    let x_472 : vec3<f32> = log2(vec3<f32>(x_470.x, x_470.y, x_470.z));
    let x_473 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
    let x_475 : vec4<f32> = u_xlat2;
    let x_479 : vec3<f32> = (vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_480 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
    let x_482 : vec4<f32> = u_xlat2;
    let x_484 : vec3<f32> = exp2(vec3<f32>(x_482.x, x_482.y, x_482.z));
    let x_485 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
    let x_487 : vec4<f32> = u_xlat2;
    let x_494 : vec3<f32> = ((vec3<f32>(x_487.x, x_487.y, x_487.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_495 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
    let x_500 : vec4<f32> = u_xlat0;
    let x_503 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_500.x, x_500.y, x_500.z, x_500.x));
    u_xlatb3 = vec3<bool>(x_503.x, x_503.y, x_503.z);
    let x_506 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_506;
    let x_508 : bool = u_xlatb3.x;
    if (x_508) {
      let x_513 : f32 = u_xlat1.x;
      x_509 = x_513;
    } else {
      let x_516 : f32 = u_xlat2.x;
      x_509 = x_516;
    }
    let x_517 : f32 = x_509;
    hlslcc_movcTemp.x = x_517;
    let x_520 : bool = u_xlatb3.y;
    if (x_520) {
      let x_525 : f32 = u_xlat1.y;
      x_521 = x_525;
    } else {
      let x_528 : f32 = u_xlat2.y;
      x_521 = x_528;
    }
    let x_529 : f32 = x_521;
    hlslcc_movcTemp.y = x_529;
    let x_532 : bool = u_xlatb3.z;
    if (x_532) {
      let x_537 : f32 = u_xlat1.z;
      x_533 = x_537;
    } else {
      let x_540 : f32 = u_xlat2.z;
      x_533 = x_540;
    }
    let x_541 : f32 = x_533;
    hlslcc_movcTemp.z = x_541;
    let x_543 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_543;
    let x_544 : vec4<f32> = u_xlat1;
    let x_547 : vec4<f32> = x_25.x_UserLut_Params;
    let x_549 : vec3<f32> = (vec3<f32>(x_544.z, x_544.x, x_544.y) * vec3<f32>(x_547.z, x_547.z, x_547.z));
    let x_550 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
    let x_553 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_553);
    let x_556 : vec4<f32> = x_25.x_UserLut_Params;
    let x_558 : vec2<f32> = (vec2<f32>(x_556.x, x_556.y) * vec2<f32>(0.5f, 0.5f));
    let x_559 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_558.x, x_559.y, x_559.z, x_558.y);
    let x_561 : vec4<f32> = u_xlat2;
    let x_564 : vec4<f32> = x_25.x_UserLut_Params;
    let x_567 : vec4<f32> = u_xlat2;
    let x_569 : vec2<f32> = ((vec2<f32>(x_561.y, x_561.z) * vec2<f32>(x_564.x, x_564.y)) + vec2<f32>(x_567.x, x_567.w));
    let x_570 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_570.x, x_569.x, x_569.y, x_570.w);
    let x_572 : f32 = u_xlat15;
    let x_574 : f32 = x_25.x_UserLut_Params.y;
    let x_577 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_572 * x_574) + x_577);
    let x_584 : vec4<f32> = u_xlat2;
    let x_586 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_584.x, x_584.z), 0.0f);
    u_xlat3 = vec3<f32>(x_586.x, x_586.y, x_586.z);
    let x_590 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_590;
    u_xlat4.y = 0.0f;
    let x_593 : vec4<f32> = u_xlat2;
    let x_595 : vec2<f32> = u_xlat4;
    let x_596 : vec2<f32> = (vec2<f32>(x_593.x, x_593.z) + x_595);
    let x_597 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
    let x_602 : vec4<f32> = u_xlat2;
    let x_604 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_602.x, x_602.y), 0.0f);
    let x_605 : vec3<f32> = vec3<f32>(x_604.x, x_604.y, x_604.z);
    let x_606 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
    let x_609 : f32 = u_xlat1.z;
    let x_611 : f32 = x_25.x_UserLut_Params.z;
    let x_613 : f32 = u_xlat15;
    u_xlat15 = ((x_609 * x_611) + -(x_613));
    let x_616 : vec3<f32> = u_xlat3;
    let x_618 : vec4<f32> = u_xlat2;
    let x_620 : vec3<f32> = (-(x_616) + vec3<f32>(x_618.x, x_618.y, x_618.z));
    let x_621 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
    let x_623 : f32 = u_xlat15;
    let x_625 : vec4<f32> = u_xlat2;
    let x_628 : vec3<f32> = u_xlat3;
    let x_629 : vec3<f32> = ((vec3<f32>(x_623, x_623, x_623) * vec3<f32>(x_625.x, x_625.y, x_625.z)) + x_628);
    let x_630 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
    let x_632 : vec4<f32> = u_xlat1;
    let x_635 : vec4<f32> = u_xlat2;
    let x_637 : vec3<f32> = (-(vec3<f32>(x_632.x, x_632.y, x_632.z)) + vec3<f32>(x_635.x, x_635.y, x_635.z));
    let x_638 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
    let x_641 : vec4<f32> = x_25.x_UserLut_Params;
    let x_643 : vec4<f32> = u_xlat2;
    let x_646 : vec4<f32> = u_xlat1;
    let x_648 : vec3<f32> = ((vec3<f32>(x_641.w, x_641.w, x_641.w) * vec3<f32>(x_643.x, x_643.y, x_643.z)) + vec3<f32>(x_646.x, x_646.y, x_646.z));
    let x_649 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
    let x_651 : vec4<f32> = u_xlat1;
    let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_656 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
    let x_658 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_658.x, x_658.y, x_658.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_663 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_663 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_667 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_667));
    let x_670 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_670 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_674 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_674);
    let x_678 : vec4<f32> = u_xlat1;
    let x_680 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_678.x, x_678.y, x_678.z, x_678.x));
    u_xlatb1 = vec3<bool>(x_680.x, x_680.y, x_680.z);
    let x_683 : bool = u_xlatb1.x;
    if (x_683) {
      let x_688 : f32 = u_xlat2.x;
      x_684 = x_688;
    } else {
      let x_691 : f32 = u_xlat3.x;
      x_684 = x_691;
    }
    let x_692 : f32 = x_684;
    u_xlat0.x = x_692;
    let x_695 : bool = u_xlatb1.y;
    if (x_695) {
      let x_700 : f32 = u_xlat2.y;
      x_696 = x_700;
    } else {
      let x_703 : f32 = u_xlat3.y;
      x_696 = x_703;
    }
    let x_704 : f32 = x_696;
    u_xlat0.y = x_704;
    let x_707 : bool = u_xlatb1.z;
    if (x_707) {
      let x_712 : f32 = u_xlat2.z;
      x_708 = x_712;
    } else {
      let x_715 : f32 = u_xlat3.z;
      x_708 = x_715;
    }
    let x_716 : f32 = x_708;
    u_xlat0.z = x_716;
  }
  let x_718 : vec4<f32> = u_xlat0;
  let x_721 : vec4<f32> = x_25.x_Lut_Params;
  let x_723 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(x_721.z, x_721.z, x_721.z));
  let x_724 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_723.z);
  let x_727 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_727);
  let x_730 : vec4<f32> = x_25.x_Lut_Params;
  let x_732 : vec2<f32> = (vec2<f32>(x_730.x, x_730.y) * vec2<f32>(0.5f, 0.5f));
  let x_733 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_732.x, x_732.y, x_733.z, x_733.w);
  let x_735 : vec4<f32> = u_xlat0;
  let x_738 : vec4<f32> = x_25.x_Lut_Params;
  let x_741 : vec4<f32> = u_xlat1;
  let x_743 : vec2<f32> = ((vec2<f32>(x_735.x, x_735.y) * vec2<f32>(x_738.x, x_738.y)) + vec2<f32>(x_741.x, x_741.y));
  let x_744 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_744.x, x_743.x, x_743.y, x_744.w);
  let x_746 : f32 = u_xlat15;
  let x_748 : f32 = x_25.x_Lut_Params.y;
  let x_751 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_746 * x_748) + x_751);
  let x_758 : vec4<f32> = u_xlat1;
  let x_760 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_758.x, x_758.z), 0.0f);
  let x_761 : vec3<f32> = vec3<f32>(x_760.x, x_760.y, x_760.z);
  let x_762 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_765 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_765;
  u_xlat0.y = 0.0f;
  let x_768 : vec4<f32> = u_xlat0;
  let x_770 : vec4<f32> = u_xlat1;
  let x_772 : vec2<f32> = (vec2<f32>(x_768.x, x_768.y) + vec2<f32>(x_770.x, x_770.z));
  let x_773 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
  let x_778 : vec4<f32> = u_xlat0;
  let x_780 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_778.x, x_778.y), 0.0f);
  let x_781 : vec3<f32> = vec3<f32>(x_780.x, x_780.y, x_780.z);
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_785 : f32 = u_xlat0.z;
  let x_787 : f32 = x_25.x_Lut_Params.z;
  let x_789 : f32 = u_xlat15;
  u_xlat0.x = ((x_785 * x_787) + -(x_789));
  let x_794 : vec4<f32> = u_xlat2;
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_794.x, x_794.y, x_794.z)) + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat0;
  let x_802 : vec3<f32> = u_xlat5;
  let x_804 : vec4<f32> = u_xlat2;
  let x_806 : vec3<f32> = ((vec3<f32>(x_800.x, x_800.x, x_800.x) * x_802) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec2<f32> = vs_TEXCOORD0;
  let x_812 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_816 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_818 : vec2<f32> = ((x_809 * vec2<f32>(x_812.x, x_812.y)) + vec2<f32>(x_816.z, x_816.w));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_819.z, x_819.w);
  let x_826 : vec4<f32> = u_xlat1;
  let x_829 : f32 = x_25.x_GlobalMipBias.x;
  let x_830 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_826.x, x_826.y), x_829);
  u_xlat15 = x_830.w;
  let x_832 : f32 = u_xlat15;
  u_xlat15 = (x_832 + -0.5f);
  let x_834 : f32 = u_xlat15;
  let x_835 : f32 = u_xlat15;
  u_xlat15 = (x_834 + x_835);
  let x_837 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_837.x, x_837.y, x_837.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_846 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_846);
  let x_851 : f32 = x_25.x_Grain_Params.y;
  let x_853 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_851 * -(x_853)) + 1.0f);
  let x_858 : f32 = u_xlat15;
  let x_860 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_858, x_858, x_858) * vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec3<f32> = u_xlat6;
  let x_866 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_863 * vec3<f32>(x_866.x, x_866.x, x_866.x));
  let x_869 : vec3<f32> = u_xlat6;
  let x_870 : vec4<f32> = u_xlat1;
  let x_873 : vec4<f32> = u_xlat0;
  let x_875 : vec3<f32> = ((x_869 * vec3<f32>(x_870.x, x_870.x, x_870.x)) + vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_880 : vec4<f32> = u_xlat0;
  let x_882 : vec3<f32> = sqrt(vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
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

