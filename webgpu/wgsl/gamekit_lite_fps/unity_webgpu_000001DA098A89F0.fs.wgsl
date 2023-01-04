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

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb14 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlat12 : f32;

var<private> u_xlat4 : f32;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_228 : f32;
  var x_594 : f32;
  var x_606 : f32;
  var x_618 : f32;
  var x_675 : f32;
  var x_688 : f32;
  var x_700 : f32;
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
      let x_232 : f32 = u_xlat2.x;
      x_228 = -(x_232);
    } else {
      let x_236 : f32 = u_xlat2.x;
      x_228 = x_236;
    }
    let x_237 : f32 = x_228;
    u_xlat1.x = x_237;
    let x_239 : f32 = u_xlat13;
    let x_241 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_239 * x_241) + -1.0f);
    let x_245 : vec4<f32> = u_xlat0;
    let x_247 : vec4<f32> = u_xlat1;
    let x_250 : vec2<f32> = u_xlat8;
    let x_251 : vec2<f32> = ((vec2<f32>(x_245.x, x_245.y) * vec2<f32>(x_247.x, x_247.x)) + x_250);
    let x_252 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_251.x, x_251.y, x_252.z);
  }
  let x_265 : vec2<f32> = vs_TEXCOORD0;
  let x_266 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_265);
  u_xlat0.x = x_266.x;
  let x_274 : vec3<f32> = u_xlat5;
  let x_276 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_274.x, x_274.y));
  u_xlat1 = x_276;
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec3<f32> = (vec3<f32>(x_277.x, x_277.x, x_277.x) * vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec2<f32> = vs_TEXCOORD1;
  let x_287 : vec4<f32> = x_26.x_Grain_Params2;
  let x_291 : vec4<f32> = x_26.x_Grain_Params2;
  let x_293 : vec2<f32> = ((x_284 * vec2<f32>(x_287.x, x_287.y)) + vec2<f32>(x_291.z, x_291.w));
  let x_294 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_293.x, x_293.y, x_294.z);
  let x_301 : vec3<f32> = u_xlat2;
  let x_303 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_301.x, x_301.y));
  u_xlat2 = vec3<f32>(x_303.x, x_303.y, x_303.z);
  let x_305 : vec4<f32> = u_xlat0;
  u_xlat3 = vec3<f32>(x_305.x, x_305.y, x_305.z);
  let x_307 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_307, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_312 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_312, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_318 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_318);
  let x_322 : f32 = x_26.x_Grain_Params1.x;
  let x_323 : f32 = u_xlat12;
  u_xlat12 = ((x_322 * -(x_323)) + 1.0f);
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_327.x, x_327.y, x_327.z) * x_329);
  let x_331 : vec3<f32> = u_xlat2;
  let x_333 : f32 = x_26.x_Grain_Params1.y;
  let x_335 : f32 = x_26.x_Grain_Params1.y;
  let x_337 : f32 = x_26.x_Grain_Params1.y;
  u_xlat2 = (x_331 * vec3<f32>(x_333, x_335, x_337));
  let x_340 : vec3<f32> = u_xlat2;
  let x_341 : f32 = u_xlat12;
  let x_344 : vec4<f32> = u_xlat0;
  let x_346 : vec3<f32> = ((x_340 * vec3<f32>(x_341, x_341, x_341)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat1;
  let x_352 : f32 = x_26.x_PostExposure;
  let x_354 : f32 = x_26.x_PostExposure;
  let x_356 : f32 = x_26.x_PostExposure;
  let x_358 : f32 = x_26.x_PostExposure;
  let x_359 : vec4<f32> = vec4<f32>(x_352, x_354, x_356, x_358);
  u_xlat0 = (x_349 * vec4<f32>(x_359.x, x_359.y, x_359.z, x_359.w));
  let x_366 : vec4<f32> = u_xlat0;
  let x_373 : vec3<f32> = ((vec3<f32>(x_366.z, x_366.x, x_366.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_374 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec4<f32> = u_xlat0;
  let x_378 : vec3<f32> = log2(vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat0;
  let x_395 : vec3<f32> = clamp(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat0;
  let x_403 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_405 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_403.z, x_403.z, x_403.z));
  let x_406 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_410 : f32 = u_xlat1.x;
  u_xlat4 = floor(x_410);
  let x_413 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_415 : vec2<f32> = (vec2<f32>(x_413.x, x_413.y) * vec2<f32>(0.5f, 0.5f));
  let x_416 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_415.x, x_416.y, x_416.z, x_415.y);
  let x_418 : vec4<f32> = u_xlat1;
  let x_421 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_424 : vec4<f32> = u_xlat1;
  let x_426 : vec2<f32> = ((vec2<f32>(x_418.y, x_418.z) * vec2<f32>(x_421.x, x_421.y)) + vec2<f32>(x_424.x, x_424.w));
  let x_427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_426.x, x_426.y, x_427.w);
  let x_429 : f32 = u_xlat4;
  let x_431 : f32 = x_26.x_Lut2D_Params.y;
  let x_434 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_429 * x_431) + x_434);
  let x_442 : vec4<f32> = u_xlat1;
  let x_444 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_442.x, x_442.z));
  u_xlat2 = vec3<f32>(x_444.x, x_444.y, x_444.z);
  let x_447 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_447;
  u_xlat3.y = 0.0f;
  let x_450 : vec4<f32> = u_xlat1;
  let x_452 : vec3<f32> = u_xlat3;
  let x_454 : vec2<f32> = (vec2<f32>(x_450.x, x_450.z) + vec2<f32>(x_452.x, x_452.y));
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
  let x_460 : vec4<f32> = u_xlat1;
  let x_462 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_460.x, x_460.y));
  let x_463 : vec3<f32> = vec3<f32>(x_462.x, x_462.y, x_462.z);
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : f32 = u_xlat0.x;
  let x_470 : f32 = x_26.x_Lut2D_Params.z;
  let x_472 : f32 = u_xlat4;
  u_xlat0.x = ((x_467 * x_470) + -(x_472));
  let x_476 : vec3<f32> = u_xlat2;
  let x_478 : vec4<f32> = u_xlat1;
  let x_480 : vec3<f32> = (-(x_476) + vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat0;
  let x_485 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = u_xlat2;
  let x_489 : vec3<f32> = ((vec3<f32>(x_483.x, x_483.x, x_483.x) * vec3<f32>(x_485.x, x_485.y, x_485.z)) + x_488);
  let x_490 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec2<f32> = vs_TEXCOORD0;
  let x_495 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_499 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_501 : vec2<f32> = ((x_492 * vec2<f32>(x_495.x, x_495.y)) + vec2<f32>(x_499.z, x_499.w));
  let x_502 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
  let x_509 : vec4<f32> = u_xlat1;
  let x_511 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_509.x, x_509.y));
  u_xlat1.x = x_511.w;
  let x_515 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_515 * 2.0f) + -1.0f);
  let x_521 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_521 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_527 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_527, 0.0f, 1.0f);
  let x_531 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_531 * 2.0f) + -1.0f);
  let x_536 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_536)) + 1.0f);
  let x_542 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_542);
  let x_546 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_546) + 1.0f);
  let x_551 : f32 = u_xlat1.x;
  let x_553 : f32 = u_xlat5.x;
  u_xlat1.x = (x_551 * x_553);
  let x_556 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_556.x, x_556.y, x_556.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_561 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_561.x, x_561.y, x_561.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_567 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_567);
  let x_569 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_569 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_573 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_573);
  let x_575 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_575 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_587 : vec4<f32> = u_xlat0;
  let x_590 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_587.x, x_587.y, x_587.z, x_587.x));
  u_xlatb0 = vec3<bool>(x_590.x, x_590.y, x_590.z);
  let x_593 : bool = u_xlatb0.x;
  if (x_593) {
    let x_598 : f32 = u_xlat5.x;
    x_594 = x_598;
  } else {
    let x_601 : f32 = u_xlat2.x;
    x_594 = x_601;
  }
  let x_602 : f32 = x_594;
  u_xlat0.x = x_602;
  let x_605 : bool = u_xlatb0.y;
  if (x_605) {
    let x_610 : f32 = u_xlat5.y;
    x_606 = x_610;
  } else {
    let x_613 : f32 = u_xlat2.y;
    x_606 = x_613;
  }
  let x_614 : f32 = x_606;
  u_xlat0.y = x_614;
  let x_617 : bool = u_xlatb0.z;
  if (x_617) {
    let x_622 : f32 = u_xlat5.z;
    x_618 = x_622;
  } else {
    let x_625 : f32 = u_xlat2.z;
    x_618 = x_625;
  }
  let x_626 : f32 = x_618;
  u_xlat0.z = x_626;
  let x_628 : vec4<f32> = u_xlat1;
  let x_633 : vec4<f32> = u_xlat0;
  let x_635 : vec3<f32> = ((vec3<f32>(x_628.x, x_628.x, x_628.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat0;
  let x_642 : vec3<f32> = (vec3<f32>(x_638.x, x_638.y, x_638.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_643 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_645.x, x_645.y, x_645.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_650 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_650 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_654 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_654), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_657 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_657);
  let x_659 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_659 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_663 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_663);
  let x_667 : vec4<f32> = u_xlat0;
  let x_669 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_667.x, x_667.y, x_667.z, x_667.x));
  u_xlatb0 = vec3<bool>(x_669.x, x_669.y, x_669.z);
  let x_674 : bool = u_xlatb0.x;
  if (x_674) {
    let x_679 : f32 = u_xlat1.x;
    x_675 = x_679;
  } else {
    let x_682 : f32 = u_xlat2.x;
    x_675 = x_682;
  }
  let x_683 : f32 = x_675;
  SV_Target0.x = x_683;
  let x_687 : bool = u_xlatb0.y;
  if (x_687) {
    let x_692 : f32 = u_xlat1.y;
    x_688 = x_692;
  } else {
    let x_695 : f32 = u_xlat2.y;
    x_688 = x_695;
  }
  let x_696 : f32 = x_688;
  SV_Target0.y = x_696;
  let x_699 : bool = u_xlatb0.z;
  if (x_699) {
    let x_704 : f32 = u_xlat1.z;
    x_700 = x_704;
  } else {
    let x_707 : f32 = u_xlat2.z;
    x_700 = x_707;
  }
  let x_708 : f32 = x_700;
  SV_Target0.z = x_708;
  let x_711 : f32 = u_xlat0.w;
  SV_Target0.w = x_711;
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

