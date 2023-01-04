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
  var x_573 : f32;
  var x_585 : f32;
  var x_597 : f32;
  var u_xlat4 : vec2<f32>;
  var x_748 : f32;
  var x_760 : f32;
  var x_772 : f32;
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
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.y, x_449.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat0;
  let x_463 : vec3<f32> = ((vec3<f32>(x_456.x, x_456.y, x_456.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat1;
  let x_468 : vec4<f32> = u_xlat2;
  let x_473 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(x_468.x, x_468.y, x_468.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_474 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat0;
  let x_481 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat1;
  let x_486 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = ((vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(x_486.x, x_486.y, x_486.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat2;
  let x_496 : vec4<f32> = u_xlat0;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) / vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat0;
  let x_505 : vec3<f32> = (vec3<f32>(x_501.x, x_501.y, x_501.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_506 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat0;
  let x_510 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_511 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat0;
  let x_517 : vec3<f32> = clamp(vec3<f32>(x_513.x, x_513.y, x_513.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_518 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_522 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_522);
  let x_524 : bool = u_xlatb15;
  if (x_524) {
    let x_527 : vec4<f32> = u_xlat0;
    let x_531 : vec3<f32> = (vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_532 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
    let x_534 : vec4<f32> = u_xlat0;
    let x_536 : vec3<f32> = log2(vec3<f32>(x_534.x, x_534.y, x_534.z));
    let x_537 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_539 : vec4<f32> = u_xlat2;
    let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_544 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
    let x_546 : vec4<f32> = u_xlat2;
    let x_548 : vec3<f32> = exp2(vec3<f32>(x_546.x, x_546.y, x_546.z));
    let x_549 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
    let x_551 : vec4<f32> = u_xlat2;
    let x_558 : vec3<f32> = ((vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_559 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
    let x_564 : vec4<f32> = u_xlat0;
    let x_567 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_564.x, x_564.y, x_564.z, x_564.x));
    u_xlatb3 = vec3<bool>(x_567.x, x_567.y, x_567.z);
    let x_570 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_570;
    let x_572 : bool = u_xlatb3.x;
    if (x_572) {
      let x_577 : f32 = u_xlat1.x;
      x_573 = x_577;
    } else {
      let x_580 : f32 = u_xlat2.x;
      x_573 = x_580;
    }
    let x_581 : f32 = x_573;
    hlslcc_movcTemp.x = x_581;
    let x_584 : bool = u_xlatb3.y;
    if (x_584) {
      let x_589 : f32 = u_xlat1.y;
      x_585 = x_589;
    } else {
      let x_592 : f32 = u_xlat2.y;
      x_585 = x_592;
    }
    let x_593 : f32 = x_585;
    hlslcc_movcTemp.y = x_593;
    let x_596 : bool = u_xlatb3.z;
    if (x_596) {
      let x_601 : f32 = u_xlat1.z;
      x_597 = x_601;
    } else {
      let x_604 : f32 = u_xlat2.z;
      x_597 = x_604;
    }
    let x_605 : f32 = x_597;
    hlslcc_movcTemp.z = x_605;
    let x_607 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_607;
    let x_608 : vec4<f32> = u_xlat1;
    let x_611 : vec4<f32> = x_25.x_UserLut_Params;
    let x_613 : vec3<f32> = (vec3<f32>(x_608.z, x_608.x, x_608.y) * vec3<f32>(x_611.z, x_611.z, x_611.z));
    let x_614 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
    let x_617 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_617);
    let x_620 : vec4<f32> = x_25.x_UserLut_Params;
    let x_622 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) * vec2<f32>(0.5f, 0.5f));
    let x_623 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_622.x, x_623.y, x_623.z, x_622.y);
    let x_625 : vec4<f32> = u_xlat2;
    let x_628 : vec4<f32> = x_25.x_UserLut_Params;
    let x_631 : vec4<f32> = u_xlat2;
    let x_633 : vec2<f32> = ((vec2<f32>(x_625.y, x_625.z) * vec2<f32>(x_628.x, x_628.y)) + vec2<f32>(x_631.x, x_631.w));
    let x_634 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_634.x, x_633.x, x_633.y, x_634.w);
    let x_636 : f32 = u_xlat15;
    let x_638 : f32 = x_25.x_UserLut_Params.y;
    let x_641 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_636 * x_638) + x_641);
    let x_648 : vec4<f32> = u_xlat2;
    let x_650 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_648.x, x_648.z), 0.0f);
    u_xlat3 = vec3<f32>(x_650.x, x_650.y, x_650.z);
    let x_654 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_654;
    u_xlat4.y = 0.0f;
    let x_657 : vec4<f32> = u_xlat2;
    let x_659 : vec2<f32> = u_xlat4;
    let x_660 : vec2<f32> = (vec2<f32>(x_657.x, x_657.z) + x_659);
    let x_661 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
    let x_666 : vec4<f32> = u_xlat2;
    let x_668 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_666.x, x_666.y), 0.0f);
    let x_669 : vec3<f32> = vec3<f32>(x_668.x, x_668.y, x_668.z);
    let x_670 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
    let x_673 : f32 = u_xlat1.z;
    let x_675 : f32 = x_25.x_UserLut_Params.z;
    let x_677 : f32 = u_xlat15;
    u_xlat15 = ((x_673 * x_675) + -(x_677));
    let x_680 : vec3<f32> = u_xlat3;
    let x_682 : vec4<f32> = u_xlat2;
    let x_684 : vec3<f32> = (-(x_680) + vec3<f32>(x_682.x, x_682.y, x_682.z));
    let x_685 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
    let x_687 : f32 = u_xlat15;
    let x_689 : vec4<f32> = u_xlat2;
    let x_692 : vec3<f32> = u_xlat3;
    let x_693 : vec3<f32> = ((vec3<f32>(x_687, x_687, x_687) * vec3<f32>(x_689.x, x_689.y, x_689.z)) + x_692);
    let x_694 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
    let x_696 : vec4<f32> = u_xlat1;
    let x_699 : vec4<f32> = u_xlat2;
    let x_701 : vec3<f32> = (-(vec3<f32>(x_696.x, x_696.y, x_696.z)) + vec3<f32>(x_699.x, x_699.y, x_699.z));
    let x_702 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
    let x_705 : vec4<f32> = x_25.x_UserLut_Params;
    let x_707 : vec4<f32> = u_xlat2;
    let x_710 : vec4<f32> = u_xlat1;
    let x_712 : vec3<f32> = ((vec3<f32>(x_705.w, x_705.w, x_705.w) * vec3<f32>(x_707.x, x_707.y, x_707.z)) + vec3<f32>(x_710.x, x_710.y, x_710.z));
    let x_713 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
    let x_715 : vec4<f32> = u_xlat1;
    let x_719 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_720 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
    let x_722 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_722.x, x_722.y, x_722.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_727 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_727 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_731 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_731));
    let x_734 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_734 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_738 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_738);
    let x_742 : vec4<f32> = u_xlat1;
    let x_744 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_742.x, x_742.y, x_742.z, x_742.x));
    u_xlatb1 = vec3<bool>(x_744.x, x_744.y, x_744.z);
    let x_747 : bool = u_xlatb1.x;
    if (x_747) {
      let x_752 : f32 = u_xlat2.x;
      x_748 = x_752;
    } else {
      let x_755 : f32 = u_xlat3.x;
      x_748 = x_755;
    }
    let x_756 : f32 = x_748;
    u_xlat0.x = x_756;
    let x_759 : bool = u_xlatb1.y;
    if (x_759) {
      let x_764 : f32 = u_xlat2.y;
      x_760 = x_764;
    } else {
      let x_767 : f32 = u_xlat3.y;
      x_760 = x_767;
    }
    let x_768 : f32 = x_760;
    u_xlat0.y = x_768;
    let x_771 : bool = u_xlatb1.z;
    if (x_771) {
      let x_776 : f32 = u_xlat2.z;
      x_772 = x_776;
    } else {
      let x_779 : f32 = u_xlat3.z;
      x_772 = x_779;
    }
    let x_780 : f32 = x_772;
    u_xlat0.z = x_780;
  }
  let x_782 : vec4<f32> = u_xlat0;
  let x_785 : vec4<f32> = x_25.x_Lut_Params;
  let x_787 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) * vec3<f32>(x_785.z, x_785.z, x_785.z));
  let x_788 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_787.z);
  let x_791 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_791);
  let x_794 : vec4<f32> = x_25.x_Lut_Params;
  let x_796 : vec2<f32> = (vec2<f32>(x_794.x, x_794.y) * vec2<f32>(0.5f, 0.5f));
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_796.x, x_796.y, x_797.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat0;
  let x_802 : vec4<f32> = x_25.x_Lut_Params;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec2<f32> = ((vec2<f32>(x_799.x, x_799.y) * vec2<f32>(x_802.x, x_802.y)) + vec2<f32>(x_805.x, x_805.y));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_808.x, x_807.x, x_807.y, x_808.w);
  let x_810 : f32 = u_xlat15;
  let x_812 : f32 = x_25.x_Lut_Params.y;
  let x_815 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_810 * x_812) + x_815);
  let x_822 : vec4<f32> = u_xlat1;
  let x_824 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_822.x, x_822.z), 0.0f);
  let x_825 : vec3<f32> = vec3<f32>(x_824.x, x_824.y, x_824.z);
  let x_826 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_829 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_829;
  u_xlat0.y = 0.0f;
  let x_832 : vec4<f32> = u_xlat0;
  let x_834 : vec4<f32> = u_xlat1;
  let x_836 : vec2<f32> = (vec2<f32>(x_832.x, x_832.y) + vec2<f32>(x_834.x, x_834.z));
  let x_837 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_836.x, x_836.y, x_837.z, x_837.w);
  let x_842 : vec4<f32> = u_xlat0;
  let x_844 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_842.x, x_842.y), 0.0f);
  let x_845 : vec3<f32> = vec3<f32>(x_844.x, x_844.y, x_844.z);
  let x_846 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_849 : f32 = u_xlat0.z;
  let x_851 : f32 = x_25.x_Lut_Params.z;
  let x_853 : f32 = u_xlat15;
  u_xlat0.x = ((x_849 * x_851) + -(x_853));
  let x_858 : vec4<f32> = u_xlat2;
  let x_861 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_858.x, x_858.y, x_858.z)) + vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec4<f32> = u_xlat0;
  let x_866 : vec3<f32> = u_xlat5;
  let x_868 : vec4<f32> = u_xlat2;
  let x_870 : vec3<f32> = ((vec3<f32>(x_864.x, x_864.x, x_864.x) * x_866) + vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec2<f32> = vs_TEXCOORD0;
  let x_876 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_880 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_882 : vec2<f32> = ((x_873 * vec2<f32>(x_876.x, x_876.y)) + vec2<f32>(x_880.z, x_880.w));
  let x_883 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
  let x_890 : vec4<f32> = u_xlat1;
  let x_893 : f32 = x_25.x_GlobalMipBias.x;
  let x_894 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_890.x, x_890.y), x_893);
  u_xlat15 = x_894.w;
  let x_896 : f32 = u_xlat15;
  u_xlat15 = (x_896 + -0.5f);
  let x_898 : f32 = u_xlat15;
  let x_899 : f32 = u_xlat15;
  u_xlat15 = (x_898 + x_899);
  let x_901 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_901.x, x_901.y, x_901.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_910 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_910);
  let x_915 : f32 = x_25.x_Grain_Params.y;
  let x_917 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_915 * -(x_917)) + 1.0f);
  let x_922 : f32 = u_xlat15;
  let x_924 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_922, x_922, x_922) * vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec3<f32> = u_xlat6;
  let x_930 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_927 * vec3<f32>(x_930.x, x_930.x, x_930.x));
  let x_935 : vec3<f32> = u_xlat6;
  let x_936 : vec4<f32> = u_xlat1;
  let x_939 : vec4<f32> = u_xlat0;
  let x_941 : vec3<f32> = ((x_935 * vec3<f32>(x_936.x, x_936.x, x_936.x)) + vec3<f32>(x_939.x, x_939.y, x_939.z));
  let x_942 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
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

