struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb5 : bool;
  var u_xlat5 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlat13 : f32;
  var u_xlat6 : f32;
  var u_xlat10 : f32;
  var u_xlatb14 : bool;
  var u_xlatb1 : bool;
  var x_227 : f32;
  var u_xlat4 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_527 : f32;
  var x_539 : f32;
  var x_551 : f32;
  var x_608 : f32;
  var x_621 : f32;
  var x_633 : f32;
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
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat1;
  let x_286 : f32 = x_26.x_PostExposure;
  let x_288 : f32 = x_26.x_PostExposure;
  let x_290 : f32 = x_26.x_PostExposure;
  let x_292 : f32 = x_26.x_PostExposure;
  let x_293 : vec4<f32> = vec4<f32>(x_286, x_288, x_290, x_292);
  u_xlat0 = (x_283 * vec4<f32>(x_293.x, x_293.y, x_293.z, x_293.w));
  let x_300 : vec4<f32> = u_xlat0;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.z, x_300.x, x_300.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat0;
  let x_312 : vec3<f32> = log2(vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = clamp(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat0;
  let x_337 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_339 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_337.z, x_337.z, x_337.z));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_344 : f32 = u_xlat1.x;
  u_xlat4 = floor(x_344);
  let x_347 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_349 : vec2<f32> = (vec2<f32>(x_347.x, x_347.y) * vec2<f32>(0.5f, 0.5f));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_350.y, x_350.z, x_349.y);
  let x_352 : vec4<f32> = u_xlat1;
  let x_355 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec2<f32> = ((vec2<f32>(x_352.y, x_352.z) * vec2<f32>(x_355.x, x_355.y)) + vec2<f32>(x_358.x, x_358.w));
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_360.x, x_360.y, x_361.w);
  let x_363 : f32 = u_xlat4;
  let x_365 : f32 = x_26.x_Lut2D_Params.y;
  let x_368 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_363 * x_365) + x_368);
  let x_376 : vec4<f32> = u_xlat1;
  let x_378 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_376.x, x_376.z));
  u_xlat2 = vec3<f32>(x_378.x, x_378.y, x_378.z);
  let x_381 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_381;
  u_xlat3.y = 0.0f;
  let x_384 : vec4<f32> = u_xlat1;
  let x_386 : vec2<f32> = u_xlat3;
  let x_387 : vec2<f32> = (vec2<f32>(x_384.x, x_384.z) + x_386);
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_393.x, x_393.y));
  let x_396 : vec3<f32> = vec3<f32>(x_395.x, x_395.y, x_395.z);
  let x_397 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_400 : f32 = u_xlat0.x;
  let x_403 : f32 = x_26.x_Lut2D_Params.z;
  let x_405 : f32 = u_xlat4;
  u_xlat0.x = ((x_400 * x_403) + -(x_405));
  let x_409 : vec3<f32> = u_xlat2;
  let x_411 : vec4<f32> = u_xlat1;
  let x_413 : vec3<f32> = (-(x_409) + vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = u_xlat1;
  let x_421 : vec3<f32> = u_xlat2;
  let x_422 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.x, x_416.x) * vec3<f32>(x_418.x, x_418.y, x_418.z)) + x_421);
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec2<f32> = vs_TEXCOORD0;
  let x_428 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_432 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_434 : vec2<f32> = ((x_425 * vec2<f32>(x_428.x, x_428.y)) + vec2<f32>(x_432.z, x_432.w));
  let x_435 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
  let x_442 : vec4<f32> = u_xlat1;
  let x_444 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_442.x, x_442.y));
  u_xlat1.x = x_444.w;
  let x_448 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_448 * 2.0f) + -1.0f);
  let x_454 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_454 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_460 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_460, 0.0f, 1.0f);
  let x_464 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_464 * 2.0f) + -1.0f);
  let x_469 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_469)) + 1.0f);
  let x_475 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_475);
  let x_479 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_479) + 1.0f);
  let x_484 : f32 = u_xlat1.x;
  let x_486 : f32 = u_xlat5.x;
  u_xlat1.x = (x_484 * x_486);
  let x_489 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_494.x, x_494.y, x_494.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_500 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_500);
  let x_502 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_502 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_506 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_506);
  let x_508 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_508 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_520 : vec4<f32> = u_xlat0;
  let x_523 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_520.x, x_520.y, x_520.z, x_520.x));
  u_xlatb0 = vec3<bool>(x_523.x, x_523.y, x_523.z);
  let x_526 : bool = u_xlatb0.x;
  if (x_526) {
    let x_531 : f32 = u_xlat5.x;
    x_527 = x_531;
  } else {
    let x_534 : f32 = u_xlat2.x;
    x_527 = x_534;
  }
  let x_535 : f32 = x_527;
  u_xlat0.x = x_535;
  let x_538 : bool = u_xlatb0.y;
  if (x_538) {
    let x_543 : f32 = u_xlat5.y;
    x_539 = x_543;
  } else {
    let x_546 : f32 = u_xlat2.y;
    x_539 = x_546;
  }
  let x_547 : f32 = x_539;
  u_xlat0.y = x_547;
  let x_550 : bool = u_xlatb0.z;
  if (x_550) {
    let x_555 : f32 = u_xlat5.z;
    x_551 = x_555;
  } else {
    let x_558 : f32 = u_xlat2.z;
    x_551 = x_558;
  }
  let x_559 : f32 = x_551;
  u_xlat0.z = x_559;
  let x_561 : vec4<f32> = u_xlat1;
  let x_566 : vec4<f32> = u_xlat0;
  let x_568 : vec3<f32> = ((vec3<f32>(x_561.x, x_561.x, x_561.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat0;
  let x_575 : vec3<f32> = (vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_576 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_578.x, x_578.y, x_578.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_583 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_583 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_587 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_587), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_590 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_590);
  let x_592 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_592 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_596 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_596);
  let x_600 : vec4<f32> = u_xlat0;
  let x_602 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_600.x, x_600.y, x_600.z, x_600.x));
  u_xlatb0 = vec3<bool>(x_602.x, x_602.y, x_602.z);
  let x_607 : bool = u_xlatb0.x;
  if (x_607) {
    let x_612 : f32 = u_xlat1.x;
    x_608 = x_612;
  } else {
    let x_615 : f32 = u_xlat2.x;
    x_608 = x_615;
  }
  let x_616 : f32 = x_608;
  SV_Target0.x = x_616;
  let x_620 : bool = u_xlatb0.y;
  if (x_620) {
    let x_625 : f32 = u_xlat1.y;
    x_621 = x_625;
  } else {
    let x_628 : f32 = u_xlat2.y;
    x_621 = x_628;
  }
  let x_629 : f32 = x_621;
  SV_Target0.y = x_629;
  let x_632 : bool = u_xlatb0.z;
  if (x_632) {
    let x_637 : f32 = u_xlat1.z;
    x_633 = x_637;
  } else {
    let x_640 : f32 = u_xlat2.z;
    x_633 = x_640;
  }
  let x_641 : f32 = x_633;
  SV_Target0.z = x_641;
  let x_644 : f32 = u_xlat0.w;
  SV_Target0.w = x_644;
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

