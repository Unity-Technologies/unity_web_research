struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(8) var sampler_Lut3D : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_538 : f32;
  var x_550 : f32;
  var x_563 : f32;
  var x_620 : f32;
  var x_633 : f32;
  var x_645 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Amount;
  let x_44 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_79);
  let x_81 : bool = u_xlatb5;
  if (x_81) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Amount;
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
    let x_140 : f32 = x_25.x_Distortion_Amount.x;
    u_xlat13 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Amount.y;
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
  let x_286 : vec4<f32> = x_25.x_Grain_Params2;
  let x_290 : vec4<f32> = x_25.x_Grain_Params2;
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
  let x_321 : f32 = x_25.x_Grain_Params1.x;
  let x_322 : f32 = u_xlat12;
  u_xlat12 = ((x_321 * -(x_322)) + 1.0f);
  let x_326 : vec4<f32> = u_xlat0;
  let x_328 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_326.x, x_326.y, x_326.z) * x_328);
  let x_330 : vec3<f32> = u_xlat2;
  let x_332 : f32 = x_25.x_Grain_Params1.y;
  let x_334 : f32 = x_25.x_Grain_Params1.y;
  let x_336 : f32 = x_25.x_Grain_Params1.y;
  u_xlat2 = (x_330 * vec3<f32>(x_332, x_334, x_336));
  let x_339 : vec3<f32> = u_xlat2;
  let x_340 : f32 = u_xlat12;
  let x_343 : vec4<f32> = u_xlat0;
  let x_345 : vec3<f32> = ((x_339 * vec3<f32>(x_340, x_340, x_340)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat1;
  let x_351 : f32 = x_25.x_PostExposure;
  let x_353 : f32 = x_25.x_PostExposure;
  let x_355 : f32 = x_25.x_PostExposure;
  let x_357 : f32 = x_25.x_PostExposure;
  let x_358 : vec4<f32> = vec4<f32>(x_351, x_353, x_355, x_357);
  u_xlat0 = (x_348 * vec4<f32>(x_358.x, x_358.y, x_358.z, x_358.w));
  let x_365 : vec4<f32> = u_xlat0;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
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
  let x_402 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_404 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_402.y, x_402.y, x_402.y));
  let x_405 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : f32 = x_25.x_Lut3D_Params.x;
  u_xlat1.x = (x_408 * 0.5f);
  let x_411 : vec4<f32> = u_xlat0;
  let x_414 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_417 : vec4<f32> = u_xlat1;
  let x_419 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_414.x, x_414.x, x_414.x)) + vec3<f32>(x_417.x, x_417.x, x_417.x));
  let x_420 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_430 : vec4<f32> = u_xlat0;
  let x_432 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec3<f32> = vec3<f32>(x_432.x, x_432.y, x_432.z);
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec2<f32> = vs_TEXCOORD0;
  let x_439 : vec4<f32> = x_25.x_Dithering_Coords;
  let x_443 : vec4<f32> = x_25.x_Dithering_Coords;
  let x_445 : vec2<f32> = ((x_436 * vec2<f32>(x_439.x, x_439.y)) + vec2<f32>(x_443.z, x_443.w));
  let x_446 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
  let x_453 : vec4<f32> = u_xlat1;
  let x_455 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_453.x, x_453.y));
  u_xlat1.x = x_455.w;
  let x_459 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_459 * 2.0f) + -1.0f);
  let x_465 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_465 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_471 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_471, 0.0f, 1.0f);
  let x_475 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_475 * 2.0f) + -1.0f);
  let x_480 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_480)) + 1.0f);
  let x_486 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_486);
  let x_490 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_490) + 1.0f);
  let x_495 : f32 = u_xlat1.x;
  let x_497 : f32 = u_xlat5.x;
  u_xlat1.x = (x_495 * x_497);
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_500.x, x_500.y, x_500.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_505 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_505.x, x_505.y, x_505.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_511 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_511);
  let x_513 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_513 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_517 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_517);
  let x_519 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_519 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_531 : vec4<f32> = u_xlat0;
  let x_534 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_531.x, x_531.y, x_531.z, x_531.x));
  u_xlatb0 = vec3<bool>(x_534.x, x_534.y, x_534.z);
  let x_537 : bool = u_xlatb0.x;
  if (x_537) {
    let x_542 : f32 = u_xlat5.x;
    x_538 = x_542;
  } else {
    let x_545 : f32 = u_xlat2.x;
    x_538 = x_545;
  }
  let x_546 : f32 = x_538;
  u_xlat0.x = x_546;
  let x_549 : bool = u_xlatb0.y;
  if (x_549) {
    let x_554 : f32 = u_xlat5.y;
    x_550 = x_554;
  } else {
    let x_557 : f32 = u_xlat2.y;
    x_550 = x_557;
  }
  let x_558 : f32 = x_550;
  u_xlat0.y = x_558;
  let x_562 : bool = u_xlatb0.z;
  if (x_562) {
    let x_567 : f32 = u_xlat5.z;
    x_563 = x_567;
  } else {
    let x_570 : f32 = u_xlat2.z;
    x_563 = x_570;
  }
  let x_571 : f32 = x_563;
  u_xlat0.z = x_571;
  let x_573 : vec4<f32> = u_xlat1;
  let x_578 : vec4<f32> = u_xlat0;
  let x_580 : vec3<f32> = ((vec3<f32>(x_573.x, x_573.x, x_573.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat0;
  let x_587 : vec3<f32> = (vec3<f32>(x_583.x, x_583.y, x_583.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_588 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_590.x, x_590.y, x_590.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_595 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_595 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_599 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_599), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_602 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_602);
  let x_604 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_604 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_608 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_608);
  let x_612 : vec4<f32> = u_xlat0;
  let x_614 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_612.x, x_612.y, x_612.z, x_612.x));
  u_xlatb0 = vec3<bool>(x_614.x, x_614.y, x_614.z);
  let x_619 : bool = u_xlatb0.x;
  if (x_619) {
    let x_624 : f32 = u_xlat1.x;
    x_620 = x_624;
  } else {
    let x_627 : f32 = u_xlat2.x;
    x_620 = x_627;
  }
  let x_628 : f32 = x_620;
  SV_Target0.x = x_628;
  let x_632 : bool = u_xlatb0.y;
  if (x_632) {
    let x_637 : f32 = u_xlat1.y;
    x_633 = x_637;
  } else {
    let x_640 : f32 = u_xlat2.y;
    x_633 = x_640;
  }
  let x_641 : f32 = x_633;
  SV_Target0.y = x_641;
  let x_644 : bool = u_xlatb0.z;
  if (x_644) {
    let x_649 : f32 = u_xlat1.z;
    x_645 = x_649;
  } else {
    let x_652 : f32 = u_xlat2.z;
    x_645 = x_652;
  }
  let x_653 : f32 = x_645;
  SV_Target0.z = x_653;
  let x_656 : f32 = u_xlat0.w;
  SV_Target0.w = x_656;
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

