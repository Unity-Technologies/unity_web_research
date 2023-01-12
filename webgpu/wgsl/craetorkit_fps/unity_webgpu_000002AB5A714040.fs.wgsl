struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb5 : bool;
  var u_xlat5 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat13 : f32;
  var u_xlat6 : f32;
  var u_xlat10 : f32;
  var u_xlatb14 : bool;
  var u_xlatb1 : bool;
  var x_227 : f32;
  var u_xlat12 : f32;
  var u_xlat4 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_593 : f32;
  var x_605 : f32;
  var x_617 : f32;
  var x_674 : f32;
  var x_687 : f32;
  var x_699 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_48.x, x_48.y, x_49.z, x_49.w);
  let x_51 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_57.z, x_57.w);
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_80);
  let x_82 : bool = u_xlatb5;
  if (x_82) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat5.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat5.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat5.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_115);
    let x_118 : f32 = u_xlat5.x;
    let x_119 : f32 = u_xlat9;
    u_xlat5.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat5;
    let x_129 : vec2<f32> = u_xlat8;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_136);
    let x_138 : f32 = u_xlat13;
    let x_140 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat13 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_158);
    let x_160 : f32 = u_xlat6;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat6 = (x_166 * x_168);
    let x_171 : f32 = u_xlat6;
    u_xlat10 = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_176 : f32 = u_xlat6;
    let x_177 : f32 = u_xlat10;
    u_xlat10 = ((x_176 * x_177) + 0.180141002f);
    let x_181 : f32 = u_xlat6;
    let x_182 : f32 = u_xlat10;
    u_xlat10 = ((x_181 * x_182) + -0.330299497f);
    let x_186 : f32 = u_xlat6;
    let x_187 : f32 = u_xlat10;
    u_xlat6 = ((x_186 * x_187) + 0.999866009f);
    let x_191 : f32 = u_xlat6;
    let x_193 : f32 = u_xlat2.x;
    u_xlat10 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat10;
    u_xlat10 = ((x_200 * -2.0f) + 1.570796371f);
    let x_205 : bool = u_xlatb14;
    let x_206 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_206, x_205);
    let x_209 : f32 = u_xlat2.x;
    let x_210 : f32 = u_xlat6;
    let x_212 : f32 = u_xlat10;
    u_xlat2.x = ((x_209 * x_210) + x_212);
    let x_216 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_216, 1.0f);
    let x_221 : f32 = u_xlat1.x;
    let x_223 : f32 = u_xlat1.x;
    u_xlatb1 = (x_221 < -(x_223));
    let x_226 : bool = u_xlatb1;
    if (x_226) {
      let x_231 : f32 = u_xlat2.x;
      x_227 = -(x_231);
    } else {
      let x_235 : f32 = u_xlat2.x;
      x_227 = x_235;
    }
    let x_236 : f32 = x_227;
    u_xlat1.x = x_236;
    let x_238 : f32 = u_xlat13;
    let x_240 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_238 * x_240) + -1.0f);
    let x_244 : vec4<f32> = u_xlat0;
    let x_246 : vec4<f32> = u_xlat1;
    let x_249 : vec2<f32> = u_xlat8;
    let x_250 : vec2<f32> = ((vec2<f32>(x_244.x, x_244.y) * vec2<f32>(x_246.x, x_246.x)) + x_249);
    let x_251 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_250.x, x_250.y, x_251.z);
  }
  let x_264 : vec2<f32> = vs_TEXCOORD0;
  let x_265 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_264);
  u_xlat0.x = x_265.x;
  let x_273 : vec3<f32> = u_xlat5;
  let x_275 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_273.x, x_273.y));
  u_xlat1 = x_275;
  let x_276 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec3<f32> = (vec3<f32>(x_276.x, x_276.x, x_276.x) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec2<f32> = vs_TEXCOORD1;
  let x_286 : vec4<f32> = x_26.x_Grain_Params2;
  let x_290 : vec4<f32> = x_26.x_Grain_Params2;
  let x_292 : vec2<f32> = ((x_283 * vec2<f32>(x_286.x, x_286.y)) + vec2<f32>(x_290.z, x_290.w));
  let x_293 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_292.x, x_292.y, x_293.z);
  let x_300 : vec3<f32> = u_xlat2;
  let x_302 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_300.x, x_300.y));
  u_xlat2 = vec3<f32>(x_302.x, x_302.y, x_302.z);
  let x_304 : vec4<f32> = u_xlat0;
  u_xlat3 = vec3<f32>(x_304.x, x_304.y, x_304.z);
  let x_306 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_306, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_311, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_317 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_317);
  let x_321 : f32 = x_26.x_Grain_Params1.x;
  let x_322 : f32 = u_xlat12;
  u_xlat12 = ((x_321 * -(x_322)) + 1.0f);
  let x_326 : vec4<f32> = u_xlat0;
  let x_328 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_326.x, x_326.y, x_326.z) * x_328);
  let x_330 : vec3<f32> = u_xlat2;
  let x_332 : f32 = x_26.x_Grain_Params1.y;
  let x_334 : f32 = x_26.x_Grain_Params1.y;
  let x_336 : f32 = x_26.x_Grain_Params1.y;
  u_xlat2 = (x_330 * vec3<f32>(x_332, x_334, x_336));
  let x_339 : vec3<f32> = u_xlat2;
  let x_340 : f32 = u_xlat12;
  let x_343 : vec4<f32> = u_xlat0;
  let x_345 : vec3<f32> = ((x_339 * vec3<f32>(x_340, x_340, x_340)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat1;
  let x_351 : f32 = x_26.x_PostExposure;
  let x_353 : f32 = x_26.x_PostExposure;
  let x_355 : f32 = x_26.x_PostExposure;
  let x_357 : f32 = x_26.x_PostExposure;
  let x_358 : vec4<f32> = vec4<f32>(x_351, x_353, x_355, x_357);
  u_xlat0 = (x_348 * vec4<f32>(x_358.x, x_358.y, x_358.z, x_358.w));
  let x_365 : vec4<f32> = u_xlat0;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.z, x_365.x, x_365.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat0;
  let x_377 : vec3<f32> = log2(vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat0;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec4<f32> = u_xlat0;
  let x_394 : vec3<f32> = clamp(vec3<f32>(x_390.x, x_390.y, x_390.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_395 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat0;
  let x_402 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_404 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_402.z, x_402.z, x_402.z));
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_409 : f32 = u_xlat1.x;
  u_xlat4 = floor(x_409);
  let x_412 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_414 : vec2<f32> = (vec2<f32>(x_412.x, x_412.y) * vec2<f32>(0.5f, 0.5f));
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_414.x, x_415.y, x_415.z, x_414.y);
  let x_417 : vec4<f32> = u_xlat1;
  let x_420 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_423 : vec4<f32> = u_xlat1;
  let x_425 : vec2<f32> = ((vec2<f32>(x_417.y, x_417.z) * vec2<f32>(x_420.x, x_420.y)) + vec2<f32>(x_423.x, x_423.w));
  let x_426 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_426.x, x_425.x, x_425.y, x_426.w);
  let x_428 : f32 = u_xlat4;
  let x_430 : f32 = x_26.x_Lut2D_Params.y;
  let x_433 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_428 * x_430) + x_433);
  let x_441 : vec4<f32> = u_xlat1;
  let x_443 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_441.x, x_441.z));
  u_xlat2 = vec3<f32>(x_443.x, x_443.y, x_443.z);
  let x_446 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_446;
  u_xlat3.y = 0.0f;
  let x_449 : vec4<f32> = u_xlat1;
  let x_451 : vec3<f32> = u_xlat3;
  let x_453 : vec2<f32> = (vec2<f32>(x_449.x, x_449.z) + vec2<f32>(x_451.x, x_451.y));
  let x_454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
  let x_459 : vec4<f32> = u_xlat1;
  let x_461 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_459.x, x_459.y));
  let x_462 : vec3<f32> = vec3<f32>(x_461.x, x_461.y, x_461.z);
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_466 : f32 = u_xlat0.x;
  let x_469 : f32 = x_26.x_Lut2D_Params.z;
  let x_471 : f32 = u_xlat4;
  u_xlat0.x = ((x_466 * x_469) + -(x_471));
  let x_475 : vec3<f32> = u_xlat2;
  let x_477 : vec4<f32> = u_xlat1;
  let x_479 : vec3<f32> = (-(x_475) + vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat0;
  let x_484 : vec4<f32> = u_xlat1;
  let x_487 : vec3<f32> = u_xlat2;
  let x_488 : vec3<f32> = ((vec3<f32>(x_482.x, x_482.x, x_482.x) * vec3<f32>(x_484.x, x_484.y, x_484.z)) + x_487);
  let x_489 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec2<f32> = vs_TEXCOORD0;
  let x_494 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_498 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_500 : vec2<f32> = ((x_491 * vec2<f32>(x_494.x, x_494.y)) + vec2<f32>(x_498.z, x_498.w));
  let x_501 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
  let x_508 : vec4<f32> = u_xlat1;
  let x_510 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_508.x, x_508.y));
  u_xlat1.x = x_510.w;
  let x_514 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_514 * 2.0f) + -1.0f);
  let x_520 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_520 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_526 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_526, 0.0f, 1.0f);
  let x_530 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_530 * 2.0f) + -1.0f);
  let x_535 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_535)) + 1.0f);
  let x_541 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_541);
  let x_545 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_545) + 1.0f);
  let x_550 : f32 = u_xlat1.x;
  let x_552 : f32 = u_xlat5.x;
  u_xlat1.x = (x_550 * x_552);
  let x_555 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_560 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_560.x, x_560.y, x_560.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_566 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_566);
  let x_568 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_568 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_572 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_572);
  let x_574 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_574 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_586 : vec4<f32> = u_xlat0;
  let x_589 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_586.x, x_586.y, x_586.z, x_586.x));
  u_xlatb0 = vec3<bool>(x_589.x, x_589.y, x_589.z);
  let x_592 : bool = u_xlatb0.x;
  if (x_592) {
    let x_597 : f32 = u_xlat5.x;
    x_593 = x_597;
  } else {
    let x_600 : f32 = u_xlat2.x;
    x_593 = x_600;
  }
  let x_601 : f32 = x_593;
  u_xlat0.x = x_601;
  let x_604 : bool = u_xlatb0.y;
  if (x_604) {
    let x_609 : f32 = u_xlat5.y;
    x_605 = x_609;
  } else {
    let x_612 : f32 = u_xlat2.y;
    x_605 = x_612;
  }
  let x_613 : f32 = x_605;
  u_xlat0.y = x_613;
  let x_616 : bool = u_xlatb0.z;
  if (x_616) {
    let x_621 : f32 = u_xlat5.z;
    x_617 = x_621;
  } else {
    let x_624 : f32 = u_xlat2.z;
    x_617 = x_624;
  }
  let x_625 : f32 = x_617;
  u_xlat0.z = x_625;
  let x_627 : vec4<f32> = u_xlat1;
  let x_632 : vec4<f32> = u_xlat0;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.x, x_627.x, x_627.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat0;
  let x_641 : vec3<f32> = (vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_644.x, x_644.y, x_644.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_649 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_649 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_653 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_653), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_656 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_656);
  let x_658 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_658 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_662 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_662);
  let x_666 : vec4<f32> = u_xlat0;
  let x_668 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_666.x, x_666.y, x_666.z, x_666.x));
  u_xlatb0 = vec3<bool>(x_668.x, x_668.y, x_668.z);
  let x_673 : bool = u_xlatb0.x;
  if (x_673) {
    let x_678 : f32 = u_xlat1.x;
    x_674 = x_678;
  } else {
    let x_681 : f32 = u_xlat2.x;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  SV_Target0.x = x_682;
  let x_686 : bool = u_xlatb0.y;
  if (x_686) {
    let x_691 : f32 = u_xlat1.y;
    x_687 = x_691;
  } else {
    let x_694 : f32 = u_xlat2.y;
    x_687 = x_694;
  }
  let x_695 : f32 = x_687;
  SV_Target0.y = x_695;
  let x_698 : bool = u_xlatb0.z;
  if (x_698) {
    let x_703 : f32 = u_xlat1.z;
    x_699 = x_703;
  } else {
    let x_706 : f32 = u_xlat2.z;
    x_699 = x_706;
  }
  let x_707 : f32 = x_699;
  SV_Target0.z = x_707;
  let x_710 : f32 = u_xlat0.w;
  SV_Target0.w = x_710;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

