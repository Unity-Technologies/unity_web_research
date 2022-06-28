struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlatb13 : bool;

var<private> u_xlatb12 : bool;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatb37 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlatb7 : bool;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_209 : f32;
  var x_235 : f32;
  var x_468 : f32;
  var x_693 : f32;
  var x_893 : f32;
  var x_1320 : f32;
  var x_1630 : f32;
  var x_1642 : f32;
  var x_1654 : f32;
  var x_1723 : f32;
  var x_1736 : f32;
  var x_1748 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat20 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
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
  u_xlatb11 = (0.0f < x_80);
  let x_82 : bool = u_xlatb11;
  if (x_82) {
    let x_86 : vec4<f32> = u_xlat1;
    let x_89 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat21 = (vec2<f32>(x_86.x, x_86.x) * vec2<f32>(x_89.x, x_89.y));
    let x_94 : f32 = u_xlat21.x;
    u_xlat2.x = sin(x_94);
    let x_99 : f32 = u_xlat21.x;
    u_xlat3.x = cos(x_99);
    let x_103 : f32 = u_xlat2.x;
    let x_105 : f32 = u_xlat3.x;
    u_xlat21.x = (x_103 / x_105);
    let x_112 : f32 = u_xlat21.y;
    u_xlat31 = (1.0f / x_112);
    let x_115 : f32 = u_xlat21.x;
    let x_116 : f32 = u_xlat31;
    u_xlat21.x = ((x_115 * x_116) + -1.0f);
    let x_121 : vec4<f32> = u_xlat0;
    let x_123 : vec2<f32> = u_xlat21;
    let x_126 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.x)) + x_126);
  } else {
    let x_130 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_130);
    let x_134 : f32 = u_xlat2.x;
    let x_136 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat2.x = (x_134 * x_136);
    let x_142 : f32 = u_xlat1.x;
    let x_144 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat12.x = (x_142 * x_144);
    let x_149 : f32 = u_xlat12.x;
    u_xlat22 = min(abs(x_149), 1.0f);
    let x_154 : f32 = u_xlat12.x;
    u_xlat32 = max(abs(x_154), 1.0f);
    let x_157 : f32 = u_xlat32;
    u_xlat32 = (1.0f / x_157);
    let x_159 : f32 = u_xlat32;
    let x_160 : f32 = u_xlat22;
    u_xlat22 = (x_159 * x_160);
    let x_162 : f32 = u_xlat22;
    let x_163 : f32 = u_xlat22;
    u_xlat32 = (x_162 * x_163);
    let x_165 : f32 = u_xlat32;
    u_xlat3.x = ((x_165 * 0.0208351f) + -0.085133001f);
    let x_171 : f32 = u_xlat32;
    let x_173 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_171 * x_173) + 0.180141002f);
    let x_178 : f32 = u_xlat32;
    let x_180 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_178 * x_180) + -0.330299497f);
    let x_185 : f32 = u_xlat32;
    let x_187 : f32 = u_xlat3.x;
    u_xlat32 = ((x_185 * x_187) + 0.999866009f);
    let x_191 : f32 = u_xlat32;
    let x_192 : f32 = u_xlat22;
    u_xlat3.x = (x_191 * x_192);
    let x_197 : f32 = u_xlat12.x;
    u_xlatb13 = (1.0f < abs(x_197));
    let x_201 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_201 * -2.0f) + 1.570796371f);
    let x_207 : bool = u_xlatb13;
    if (x_207) {
      let x_213 : f32 = u_xlat3.x;
      x_209 = x_213;
    } else {
      x_209 = 0.0f;
    }
    let x_215 : f32 = x_209;
    u_xlat3.x = x_215;
    let x_217 : f32 = u_xlat22;
    let x_218 : f32 = u_xlat32;
    let x_221 : f32 = u_xlat3.x;
    u_xlat22 = ((x_217 * x_218) + x_221);
    let x_224 : f32 = u_xlat12.x;
    u_xlat12.x = min(x_224, 1.0f);
    let x_229 : f32 = u_xlat12.x;
    let x_231 : f32 = u_xlat12.x;
    u_xlatb12 = (x_229 < -(x_231));
    let x_234 : bool = u_xlatb12;
    if (x_234) {
      let x_238 : f32 = u_xlat22;
      x_235 = -(x_238);
    } else {
      let x_241 : f32 = u_xlat22;
      x_235 = x_241;
    }
    let x_242 : f32 = x_235;
    u_xlat12.x = x_242;
    let x_245 : f32 = u_xlat2.x;
    let x_247 : f32 = u_xlat12.x;
    u_xlat2.x = ((x_245 * x_247) + -1.0f);
    let x_251 : vec4<f32> = u_xlat0;
    let x_253 : vec4<f32> = u_xlat2;
    let x_256 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_251.x, x_251.y) * vec2<f32>(x_253.x, x_253.x)) + x_256);
  }
  let x_268 : vec2<f32> = vs_TEXCOORD0;
  let x_269 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_268);
  u_xlat2.x = x_269.x;
  let x_272 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_272.x, x_272.y, x_272.x, x_272.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_279 : vec4<f32> = u_xlat3;
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat12.x = dot(vec2<f32>(x_279.z, x_279.w), vec2<f32>(x_281.z, x_281.w));
  let x_285 : vec3<f32> = u_xlat12;
  let x_287 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_285.x, x_285.x, x_285.x, x_285.x) * x_287);
  let x_289 : vec4<f32> = u_xlat3;
  let x_292 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_294 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_296 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_298 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_299 : vec4<f32> = vec4<f32>(x_292, x_294, x_296, x_298);
  u_xlat3 = (x_289 * vec4<f32>(x_299.x, x_299.y, x_299.z, x_299.w));
  let x_314 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.166666672f, 0.0f), 0.0f);
  let x_315 : vec3<f32> = vec3<f32>(x_314.x, x_314.y, x_314.z);
  let x_316 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_323 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_324 : vec3<f32> = vec3<f32>(x_323.x, x_323.y, x_323.z);
  let x_325 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_333 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.833333313f, 0.0f), 0.0f);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.y, x_333.z);
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : bool = u_xlatb11;
  if (x_337) {
    let x_340 : vec4<f32> = u_xlat1;
    let x_343 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_345 : vec2<f32> = (vec2<f32>(x_340.x, x_340.x) * vec2<f32>(x_343.x, x_343.y));
    let x_346 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_345.x, x_345.y, x_346.z);
    let x_350 : f32 = u_xlat12.x;
    u_xlat7.x = sin(x_350);
    let x_355 : f32 = u_xlat12.x;
    u_xlat8.x = cos(x_355);
    let x_359 : f32 = u_xlat7.x;
    let x_361 : f32 = u_xlat8.x;
    u_xlat12.x = (x_359 / x_361);
    let x_365 : f32 = u_xlat12.y;
    u_xlat22 = (1.0f / x_365);
    let x_368 : f32 = u_xlat12.x;
    let x_369 : f32 = u_xlat22;
    u_xlat12.x = ((x_368 * x_369) + -1.0f);
    let x_373 : vec4<f32> = u_xlat0;
    let x_375 : vec3<f32> = u_xlat12;
    let x_378 : vec2<f32> = u_xlat20;
    let x_379 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(x_375.x, x_375.x)) + x_378);
    let x_380 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_379.x, x_379.y, x_380.z);
  } else {
    let x_384 : f32 = u_xlat1.x;
    u_xlat32 = (1.0f / x_384);
    let x_386 : f32 = u_xlat32;
    let x_388 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat32 = (x_386 * x_388);
    let x_391 : f32 = u_xlat1.x;
    let x_393 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_391 * x_393);
    let x_397 : f32 = u_xlat1.x;
    u_xlat7.x = min(abs(x_397), 1.0f);
    let x_403 : f32 = u_xlat1.x;
    u_xlat17 = max(abs(x_403), 1.0f);
    let x_406 : f32 = u_xlat17;
    u_xlat17 = (1.0f / x_406);
    let x_408 : f32 = u_xlat17;
    let x_410 : f32 = u_xlat7.x;
    u_xlat7.x = (x_408 * x_410);
    let x_414 : f32 = u_xlat7.x;
    let x_416 : f32 = u_xlat7.x;
    u_xlat17 = (x_414 * x_416);
    let x_419 : f32 = u_xlat17;
    u_xlat27 = ((x_419 * 0.0208351f) + -0.085133001f);
    let x_422 : f32 = u_xlat17;
    let x_423 : f32 = u_xlat27;
    u_xlat27 = ((x_422 * x_423) + 0.180141002f);
    let x_426 : f32 = u_xlat17;
    let x_427 : f32 = u_xlat27;
    u_xlat27 = ((x_426 * x_427) + -0.330299497f);
    let x_430 : f32 = u_xlat17;
    let x_431 : f32 = u_xlat27;
    u_xlat17 = ((x_430 * x_431) + 0.999866009f);
    let x_434 : f32 = u_xlat17;
    let x_436 : f32 = u_xlat7.x;
    u_xlat27 = (x_434 * x_436);
    let x_440 : f32 = u_xlat1.x;
    u_xlatb37 = (1.0f < abs(x_440));
    let x_443 : f32 = u_xlat27;
    u_xlat27 = ((x_443 * -2.0f) + 1.570796371f);
    let x_446 : bool = u_xlatb37;
    let x_447 : f32 = u_xlat27;
    u_xlat27 = select(0.0f, x_447, x_446);
    let x_450 : f32 = u_xlat7.x;
    let x_451 : f32 = u_xlat17;
    let x_453 : f32 = u_xlat27;
    u_xlat7.x = ((x_450 * x_451) + x_453);
    let x_457 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_457, 1.0f);
    let x_462 : f32 = u_xlat1.x;
    let x_464 : f32 = u_xlat1.x;
    u_xlatb1 = (x_462 < -(x_464));
    let x_467 : bool = u_xlatb1;
    if (x_467) {
      let x_472 : f32 = u_xlat7.x;
      x_468 = -(x_472);
    } else {
      let x_476 : f32 = u_xlat7.x;
      x_468 = x_476;
    }
    let x_477 : f32 = x_468;
    u_xlat1.x = x_477;
    let x_479 : f32 = u_xlat32;
    let x_481 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_479 * x_481) + -1.0f);
    let x_485 : vec4<f32> = u_xlat0;
    let x_487 : vec4<f32> = u_xlat1;
    let x_490 : vec2<f32> = u_xlat20;
    let x_491 : vec2<f32> = ((vec2<f32>(x_485.x, x_485.y) * vec2<f32>(x_487.x, x_487.x)) + x_490);
    let x_492 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_491.x, x_491.y, x_492.z);
  }
  let x_494 : vec3<f32> = u_xlat12;
  let x_495 : vec2<f32> = vec2<f32>(x_494.x, x_494.y);
  let x_496 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_495.x, x_495.y, x_496.z);
  let x_498 : vec3<f32> = u_xlat12;
  let x_502 : vec2<f32> = clamp(vec2<f32>(x_498.x, x_498.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_503 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_502.x, x_502.y, x_503.z);
  let x_505 : vec3<f32> = u_xlat12;
  let x_509 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_511 : vec2<f32> = (vec2<f32>(x_505.x, x_505.y) * vec2<f32>(x_509, x_509));
  let x_512 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
  let x_519 : vec4<f32> = u_xlat0;
  let x_521 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_519.x, x_519.y), 0.0f);
  u_xlat0 = x_521;
  let x_522 : vec4<f32> = u_xlat3;
  let x_527 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((x_522 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_527.x, x_527.y, x_527.x, x_527.y));
  let x_530 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_530 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_533 : vec4<f32> = u_xlat3;
  let x_535 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat7 = ((x_533 * vec4<f32>(x_535.z, x_535.z, x_535.z, x_535.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_540 : vec4<f32> = u_xlat3;
  let x_542 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_546 : vec4<f32> = x_26.x_Distortion_CenterScale;
  u_xlat3 = ((x_540 * vec4<f32>(x_542.z, x_542.z, x_542.z, x_542.z)) + -(vec4<f32>(x_546.x, x_546.y, x_546.x, x_546.y)));
  let x_550 : vec4<f32> = u_xlat3;
  let x_552 : vec4<f32> = x_26.x_Distortion_CenterScale;
  u_xlat3 = (x_550 * vec4<f32>(x_552.z, x_552.w, x_552.z, x_552.w));
  let x_555 : vec4<f32> = u_xlat3;
  let x_557 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_555.x, x_555.y), vec2<f32>(x_557.x, x_557.y));
  let x_562 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_562);
  let x_565 : bool = u_xlatb11;
  if (x_565) {
    let x_568 : vec4<f32> = u_xlat1;
    let x_571 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_573 : vec2<f32> = (vec2<f32>(x_568.x, x_568.x) * vec2<f32>(x_571.x, x_571.y));
    let x_574 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_573.x, x_573.y, x_574.z);
    let x_577 : f32 = u_xlat12.x;
    u_xlat8.x = sin(x_577);
    let x_582 : f32 = u_xlat12.x;
    u_xlat9 = cos(x_582);
    let x_585 : f32 = u_xlat8.x;
    let x_586 : f32 = u_xlat9;
    u_xlat12.x = (x_585 / x_586);
    let x_590 : f32 = u_xlat12.y;
    u_xlat22 = (1.0f / x_590);
    let x_593 : f32 = u_xlat12.x;
    let x_594 : f32 = u_xlat22;
    u_xlat12.x = ((x_593 * x_594) + -1.0f);
    let x_598 : vec4<f32> = u_xlat3;
    let x_600 : vec3<f32> = u_xlat12;
    let x_603 : vec4<f32> = u_xlat7;
    let x_605 : vec2<f32> = ((vec2<f32>(x_598.x, x_598.y) * vec2<f32>(x_600.x, x_600.x)) + vec2<f32>(x_603.x, x_603.y));
    let x_606 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_605.x, x_605.y, x_606.z);
  } else {
    let x_610 : f32 = u_xlat1.x;
    u_xlat32 = (1.0f / x_610);
    let x_612 : f32 = u_xlat32;
    let x_614 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat32 = (x_612 * x_614);
    let x_617 : f32 = u_xlat1.x;
    let x_619 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_617 * x_619);
    let x_623 : f32 = u_xlat1.x;
    u_xlat8.x = min(abs(x_623), 1.0f);
    let x_629 : f32 = u_xlat1.x;
    u_xlat18 = max(abs(x_629), 1.0f);
    let x_632 : f32 = u_xlat18;
    u_xlat18 = (1.0f / x_632);
    let x_634 : f32 = u_xlat18;
    let x_636 : f32 = u_xlat8.x;
    u_xlat8.x = (x_634 * x_636);
    let x_640 : f32 = u_xlat8.x;
    let x_642 : f32 = u_xlat8.x;
    u_xlat18 = (x_640 * x_642);
    let x_645 : f32 = u_xlat18;
    u_xlat28 = ((x_645 * 0.0208351f) + -0.085133001f);
    let x_648 : f32 = u_xlat18;
    let x_649 : f32 = u_xlat28;
    u_xlat28 = ((x_648 * x_649) + 0.180141002f);
    let x_652 : f32 = u_xlat18;
    let x_653 : f32 = u_xlat28;
    u_xlat28 = ((x_652 * x_653) + -0.330299497f);
    let x_656 : f32 = u_xlat18;
    let x_657 : f32 = u_xlat28;
    u_xlat18 = ((x_656 * x_657) + 0.999866009f);
    let x_660 : f32 = u_xlat18;
    let x_662 : f32 = u_xlat8.x;
    u_xlat28 = (x_660 * x_662);
    let x_666 : f32 = u_xlat1.x;
    u_xlatb38 = (1.0f < abs(x_666));
    let x_669 : f32 = u_xlat28;
    u_xlat28 = ((x_669 * -2.0f) + 1.570796371f);
    let x_672 : bool = u_xlatb38;
    let x_673 : f32 = u_xlat28;
    u_xlat28 = select(0.0f, x_673, x_672);
    let x_676 : f32 = u_xlat8.x;
    let x_677 : f32 = u_xlat18;
    let x_679 : f32 = u_xlat28;
    u_xlat8.x = ((x_676 * x_677) + x_679);
    let x_683 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_683, 1.0f);
    let x_687 : f32 = u_xlat1.x;
    let x_689 : f32 = u_xlat1.x;
    u_xlatb1 = (x_687 < -(x_689));
    let x_692 : bool = u_xlatb1;
    if (x_692) {
      let x_697 : f32 = u_xlat8.x;
      x_693 = -(x_697);
    } else {
      let x_701 : f32 = u_xlat8.x;
      x_693 = x_701;
    }
    let x_702 : f32 = x_693;
    u_xlat1.x = x_702;
    let x_704 : f32 = u_xlat32;
    let x_706 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_704 * x_706) + -1.0f);
    let x_710 : vec4<f32> = u_xlat3;
    let x_712 : vec4<f32> = u_xlat1;
    let x_715 : vec4<f32> = u_xlat7;
    let x_717 : vec2<f32> = ((vec2<f32>(x_710.x, x_710.y) * vec2<f32>(x_712.x, x_712.x)) + vec2<f32>(x_715.x, x_715.y));
    let x_718 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_717.x, x_717.y, x_718.z);
  }
  let x_720 : vec3<f32> = u_xlat12;
  let x_721 : vec2<f32> = vec2<f32>(x_720.x, x_720.y);
  let x_722 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_721.x, x_721.y, x_722.z);
  let x_724 : vec3<f32> = u_xlat12;
  let x_728 : vec2<f32> = clamp(vec2<f32>(x_724.x, x_724.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_729 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_728.x, x_728.y, x_729.z);
  let x_731 : vec3<f32> = u_xlat12;
  let x_734 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_736 : vec2<f32> = (vec2<f32>(x_731.x, x_731.y) * vec2<f32>(x_734, x_734));
  let x_737 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_736.x, x_736.y, x_737.z);
  let x_742 : vec3<f32> = u_xlat12;
  let x_744 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_742.x, x_742.y), 0.0f);
  u_xlat8 = x_744;
  let x_745 : vec4<f32> = u_xlat3;
  let x_747 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_745.z, x_745.w), vec2<f32>(x_747.z, x_747.w));
  let x_752 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_752);
  let x_755 : bool = u_xlatb11;
  if (x_755) {
    let x_758 : vec4<f32> = u_xlat1;
    let x_761 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_763 : vec2<f32> = (vec2<f32>(x_758.x, x_758.x) * vec2<f32>(x_761.x, x_761.y));
    let x_764 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_763.x, x_763.y, x_764.z);
    let x_767 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_767);
    let x_771 : f32 = u_xlat12.x;
    u_xlat7.x = cos(x_771);
    let x_776 : f32 = u_xlat3.x;
    let x_778 : f32 = u_xlat7.x;
    u_xlat11.x = (x_776 / x_778);
    let x_782 : f32 = u_xlat12.y;
    u_xlat12.x = (1.0f / x_782);
    let x_786 : f32 = u_xlat11.x;
    let x_788 : f32 = u_xlat12.x;
    u_xlat11.x = ((x_786 * x_788) + -1.0f);
    let x_792 : vec4<f32> = u_xlat3;
    let x_794 : vec3<f32> = u_xlat11;
    let x_797 : vec4<f32> = u_xlat7;
    let x_799 : vec2<f32> = ((vec2<f32>(x_792.z, x_792.w) * vec2<f32>(x_794.x, x_794.x)) + vec2<f32>(x_797.z, x_797.w));
    let x_800 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_799.x, x_799.y, x_800.z);
  } else {
    let x_804 : f32 = u_xlat1.x;
    u_xlat11.x = (1.0f / x_804);
    let x_808 : f32 = u_xlat11.x;
    let x_810 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat11.x = (x_808 * x_810);
    let x_814 : f32 = u_xlat1.x;
    let x_816 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_814 * x_816);
    let x_820 : f32 = u_xlat1.x;
    u_xlat32 = min(abs(x_820), 1.0f);
    let x_824 : f32 = u_xlat1.x;
    u_xlat3.x = max(abs(x_824), 1.0f);
    let x_829 : f32 = u_xlat3.x;
    u_xlat3.x = (1.0f / x_829);
    let x_832 : f32 = u_xlat32;
    let x_834 : f32 = u_xlat3.x;
    u_xlat32 = (x_832 * x_834);
    let x_836 : f32 = u_xlat32;
    let x_837 : f32 = u_xlat32;
    u_xlat3.x = (x_836 * x_837);
    let x_842 : f32 = u_xlat3.x;
    u_xlat13 = ((x_842 * 0.0208351f) + -0.085133001f);
    let x_846 : f32 = u_xlat3.x;
    let x_847 : f32 = u_xlat13;
    u_xlat13 = ((x_846 * x_847) + 0.180141002f);
    let x_851 : f32 = u_xlat3.x;
    let x_852 : f32 = u_xlat13;
    u_xlat13 = ((x_851 * x_852) + -0.330299497f);
    let x_856 : f32 = u_xlat3.x;
    let x_857 : f32 = u_xlat13;
    u_xlat3.x = ((x_856 * x_857) + 0.999866009f);
    let x_861 : f32 = u_xlat32;
    let x_863 : f32 = u_xlat3.x;
    u_xlat13 = (x_861 * x_863);
    let x_867 : f32 = u_xlat1.x;
    u_xlatb7 = (1.0f < abs(x_867));
    let x_870 : f32 = u_xlat13;
    u_xlat13 = ((x_870 * -2.0f) + 1.570796371f);
    let x_873 : bool = u_xlatb7;
    let x_874 : f32 = u_xlat13;
    u_xlat13 = select(0.0f, x_874, x_873);
    let x_876 : f32 = u_xlat32;
    let x_878 : f32 = u_xlat3.x;
    let x_880 : f32 = u_xlat13;
    u_xlat32 = ((x_876 * x_878) + x_880);
    let x_883 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_883, 1.0f);
    let x_887 : f32 = u_xlat1.x;
    let x_889 : f32 = u_xlat1.x;
    u_xlatb1 = (x_887 < -(x_889));
    let x_892 : bool = u_xlatb1;
    if (x_892) {
      let x_896 : f32 = u_xlat32;
      x_893 = -(x_896);
    } else {
      let x_899 : f32 = u_xlat32;
      x_893 = x_899;
    }
    let x_900 : f32 = x_893;
    u_xlat1.x = x_900;
    let x_903 : f32 = u_xlat11.x;
    let x_905 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_903 * x_905) + -1.0f);
    let x_909 : vec4<f32> = u_xlat3;
    let x_911 : vec4<f32> = u_xlat1;
    let x_914 : vec4<f32> = u_xlat7;
    let x_916 : vec2<f32> = ((vec2<f32>(x_909.z, x_909.w) * vec2<f32>(x_911.x, x_911.x)) + vec2<f32>(x_914.z, x_914.w));
    let x_917 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_916.x, x_916.y, x_917.z);
  }
  let x_919 : vec3<f32> = u_xlat12;
  let x_920 : vec2<f32> = vec2<f32>(x_919.x, x_919.y);
  let x_921 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_920.x, x_920.y, x_921.z);
  let x_923 : vec3<f32> = u_xlat12;
  let x_927 : vec2<f32> = clamp(vec2<f32>(x_923.x, x_923.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_928 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_927.x, x_927.y, x_928.z);
  let x_930 : vec3<f32> = u_xlat12;
  let x_933 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_935 : vec2<f32> = (vec2<f32>(x_930.x, x_930.y) * vec2<f32>(x_933, x_933));
  let x_936 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
  let x_941 : vec4<f32> = u_xlat1;
  let x_943 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_941.x, x_941.y), 0.0f);
  u_xlat3 = x_943;
  u_xlat4.w = 1.0f;
  u_xlat5.w = 1.0f;
  let x_946 : vec4<f32> = u_xlat5;
  let x_947 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_946 * x_947);
  let x_949 : vec4<f32> = u_xlat0;
  let x_950 : vec4<f32> = u_xlat4;
  let x_952 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_949 * x_950) + x_952);
  u_xlat6.w = 1.0f;
  let x_955 : vec4<f32> = u_xlat3;
  let x_956 : vec4<f32> = u_xlat6;
  let x_958 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_955 * x_956) + x_958);
  let x_960 : vec4<f32> = u_xlat4;
  let x_962 : vec4<f32> = u_xlat5;
  u_xlat12 = (vec3<f32>(x_960.x, x_960.y, x_960.z) + vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat6;
  let x_967 : vec3<f32> = u_xlat12;
  let x_968 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) + x_967);
  let x_969 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  u_xlat3.w = 3.0f;
  let x_973 : vec4<f32> = u_xlat0;
  let x_974 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_973 / x_974);
  let x_976 : vec4<f32> = u_xlat2;
  let x_978 : vec4<f32> = u_xlat0;
  let x_980 : vec3<f32> = (vec3<f32>(x_976.x, x_976.x, x_976.x) * vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
  let x_985 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat2 = (vec4<f32>(x_985.x, x_985.y, x_985.x, x_985.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_991 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_991 * 0.5f);
  let x_994 : vec4<f32> = u_xlat2;
  let x_996 : vec4<f32> = u_xlat1;
  let x_999 : vec2<f32> = u_xlat21;
  u_xlat3 = ((vec4<f32>(x_994.x, x_994.y, x_994.z, x_994.y) * vec4<f32>(x_996.x, x_996.x, x_996.x, x_996.x)) + vec4<f32>(x_999.x, x_999.y, x_999.x, x_999.y));
  let x_1002 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1002, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1006 : vec4<f32> = u_xlat3;
  let x_1008 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_1006 * vec4<f32>(x_1008, x_1008, x_1008, x_1008));
  let x_1016 : vec4<f32> = u_xlat3;
  let x_1018 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1016.x, x_1016.y));
  u_xlat4 = x_1018;
  let x_1022 : vec4<f32> = u_xlat3;
  let x_1024 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1022.z, x_1022.w));
  u_xlat3 = x_1024;
  let x_1025 : vec4<f32> = u_xlat3;
  let x_1026 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1025 + x_1026);
  let x_1028 : vec4<f32> = u_xlat2;
  let x_1030 : vec4<f32> = u_xlat1;
  let x_1033 : vec2<f32> = u_xlat21;
  u_xlat2 = ((vec4<f32>(x_1028.x, x_1028.w, x_1028.z, x_1028.w) * vec4<f32>(x_1030.x, x_1030.x, x_1030.x, x_1030.x)) + vec4<f32>(x_1033.x, x_1033.y, x_1033.x, x_1033.y));
  let x_1036 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_1036, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1040 : vec4<f32> = u_xlat2;
  let x_1042 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat2 = (x_1040 * vec4<f32>(x_1042, x_1042, x_1042, x_1042));
  let x_1048 : vec4<f32> = u_xlat2;
  let x_1050 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1048.x, x_1048.y));
  u_xlat4 = x_1050;
  let x_1051 : vec4<f32> = u_xlat3;
  let x_1052 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1051 + x_1052);
  let x_1057 : vec4<f32> = u_xlat2;
  let x_1059 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1057.z, x_1057.w));
  u_xlat2 = x_1059;
  let x_1060 : vec4<f32> = u_xlat2;
  let x_1061 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_1060 + x_1061);
  let x_1063 : vec4<f32> = u_xlat2;
  let x_1066 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat2 = (x_1063 * vec4<f32>(x_1066.y, x_1066.y, x_1066.y, x_1066.y));
  let x_1069 : vec2<f32> = u_xlat21;
  let x_1072 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1076 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1078 : vec2<f32> = ((x_1069 * vec2<f32>(x_1072.x, x_1072.y)) + vec2<f32>(x_1076.z, x_1076.w));
  let x_1079 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1078.x, x_1078.y, x_1079.z, x_1079.w);
  let x_1086 : vec4<f32> = u_xlat1;
  let x_1088 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_1086.x, x_1086.y));
  let x_1089 : vec3<f32> = vec3<f32>(x_1088.x, x_1088.y, x_1088.z);
  let x_1090 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec4<f32> = u_xlat2;
  u_xlat4 = (x_1092 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_1096 : vec4<f32> = u_xlat3;
  let x_1099 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1101 : vec3<f32> = (vec3<f32>(x_1096.x, x_1096.y, x_1096.z) * vec3<f32>(x_1099.z, x_1099.z, x_1099.z));
  let x_1102 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  u_xlat3.w = 0.0f;
  let x_1105 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1105 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_1108 : vec4<f32> = u_xlat2;
  let x_1112 : vec3<f32> = x_26.x_Bloom_Color;
  let x_1113 : vec3<f32> = (vec3<f32>(x_1108.x, x_1108.y, x_1108.z) * x_1112);
  let x_1114 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1117 : f32 = u_xlat2.w;
  u_xlat5.w = (x_1117 * 0.25f);
  let x_1120 : vec4<f32> = u_xlat0;
  let x_1121 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_1120 + x_1121);
  let x_1123 : vec4<f32> = u_xlat3;
  let x_1124 : vec4<f32> = u_xlat4;
  let x_1126 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_1123 * x_1124) + x_1126);
  let x_1130 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_1130 < 0.5f);
  let x_1132 : bool = u_xlatb1;
  if (x_1132) {
    let x_1135 : vec2<f32> = u_xlat21;
    let x_1139 : vec2<f32> = x_26.x_Vignette_Center;
    let x_1141 : vec2<f32> = (x_1135 + -(x_1139));
    let x_1142 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
    let x_1144 : vec4<f32> = u_xlat1;
    let x_1149 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1151 : vec2<f32> = (abs(vec2<f32>(x_1144.y, x_1144.x)) * vec2<f32>(x_1149.x, x_1149.x));
    let x_1152 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1152.x, x_1151.x, x_1151.y, x_1152.w);
    let x_1156 : f32 = x_26.x_ScreenParams.x;
    let x_1158 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_1156 / x_1158);
    let x_1162 : f32 = u_xlat1.x;
    u_xlat1.x = (x_1162 + -1.0f);
    let x_1166 : f32 = x_26.x_Vignette_Settings.w;
    let x_1168 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_1166 * x_1168) + 1.0f);
    let x_1173 : f32 = u_xlat1.x;
    let x_1176 : f32 = u_xlat2.z;
    u_xlat2.x = (x_1173 * x_1176);
    let x_1179 : vec4<f32> = u_xlat2;
    let x_1180 : vec2<f32> = vec2<f32>(x_1179.x, x_1179.y);
    let x_1181 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1180.x, x_1180.y, x_1181.z, x_1181.w);
    let x_1183 : vec4<f32> = u_xlat2;
    let x_1187 : vec2<f32> = clamp(vec2<f32>(x_1183.x, x_1183.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_1188 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
    let x_1190 : vec4<f32> = u_xlat2;
    let x_1192 : vec2<f32> = log2(vec2<f32>(x_1190.x, x_1190.y));
    let x_1193 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1192.x, x_1192.y, x_1193.z, x_1193.w);
    let x_1195 : vec4<f32> = u_xlat1;
    let x_1198 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1200 : vec2<f32> = (vec2<f32>(x_1195.x, x_1195.y) * vec2<f32>(x_1198.z, x_1198.z));
    let x_1201 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
    let x_1203 : vec4<f32> = u_xlat1;
    let x_1205 : vec2<f32> = exp2(vec2<f32>(x_1203.x, x_1203.y));
    let x_1206 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
    let x_1208 : vec4<f32> = u_xlat1;
    let x_1210 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_1208.x, x_1208.y), vec2<f32>(x_1210.x, x_1210.y));
    let x_1215 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_1215) + 1.0f);
    let x_1220 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_1220, 0.0f);
    let x_1224 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_1224);
    let x_1228 : f32 = u_xlat1.x;
    let x_1230 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_1228 * x_1230);
    let x_1234 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_1234);
    let x_1239 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1242 : vec3<f32> = (-(x_1239) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1243 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
    let x_1245 : vec4<f32> = u_xlat1;
    let x_1247 : vec4<f32> = u_xlat2;
    let x_1251 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1252 : vec3<f32> = ((vec3<f32>(x_1245.x, x_1245.x, x_1245.x) * vec3<f32>(x_1247.x, x_1247.y, x_1247.z)) + x_1251);
    let x_1253 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
    let x_1255 : vec4<f32> = u_xlat0;
    let x_1257 : vec4<f32> = u_xlat2;
    let x_1259 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
    let x_1260 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
    let x_1263 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1263 + -1.0f);
    let x_1267 : f32 = u_xlat1.x;
    let x_1269 : f32 = u_xlat11.x;
    u_xlat2.w = ((x_1267 * x_1269) + 1.0f);
  } else {
    let x_1279 : vec2<f32> = u_xlat21;
    let x_1280 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1279);
    u_xlat1.x = x_1280.w;
    let x_1284 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1284 + 0.055f);
    let x_1288 : vec4<f32> = u_xlat1;
    let x_1293 : vec2<f32> = (vec2<f32>(x_1288.x, x_1288.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1294 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1293.x, x_1293.y, x_1294.z);
    let x_1297 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1297), 1.1920929e-07f);
    let x_1303 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1303);
    let x_1307 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1307 * 2.400000095f);
    let x_1312 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1312);
    let x_1317 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1317);
    let x_1319 : bool = u_xlatb1;
    if (x_1319) {
      let x_1324 : f32 = u_xlat11.x;
      x_1320 = x_1324;
    } else {
      let x_1327 : f32 = u_xlat21.x;
      x_1320 = x_1327;
    }
    let x_1328 : f32 = x_1320;
    u_xlat1.x = x_1328;
    let x_1331 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1331) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1334 : vec4<f32> = u_xlat1;
    let x_1336 : vec3<f32> = u_xlat11;
    let x_1339 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1334.x, x_1334.x, x_1334.x) * x_1336) + x_1339);
    let x_1341 : vec4<f32> = u_xlat0;
    let x_1343 : vec3<f32> = u_xlat11;
    let x_1345 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1341.x, x_1341.y, x_1341.z) * x_1343) + -(vec3<f32>(x_1345.x, x_1345.y, x_1345.z)));
    let x_1351 : f32 = x_26.x_Vignette_Opacity;
    let x_1353 : vec3<f32> = u_xlat11;
    let x_1355 : vec4<f32> = u_xlat0;
    let x_1357 : vec3<f32> = ((vec3<f32>(x_1351, x_1351, x_1351) * x_1353) + vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
    let x_1358 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
    let x_1361 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1361 + -1.0f);
    let x_1365 : f32 = u_xlat1.x;
    let x_1367 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_1365 * x_1367) + 1.0f);
  }
  let x_1371 : vec4<f32> = u_xlat2;
  let x_1374 : f32 = x_26.x_PostExposure;
  let x_1376 : f32 = x_26.x_PostExposure;
  let x_1378 : f32 = x_26.x_PostExposure;
  let x_1380 : f32 = x_26.x_PostExposure;
  let x_1381 : vec4<f32> = vec4<f32>(x_1374, x_1376, x_1378, x_1380);
  u_xlat0 = (x_1371 * vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1381.w));
  let x_1388 : vec4<f32> = u_xlat0;
  let x_1395 : vec3<f32> = ((vec3<f32>(x_1388.z, x_1388.x, x_1388.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1396 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
  let x_1398 : vec4<f32> = u_xlat0;
  let x_1400 : vec3<f32> = log2(vec3<f32>(x_1398.x, x_1398.y, x_1398.z));
  let x_1401 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
  let x_1403 : vec4<f32> = u_xlat0;
  let x_1410 : vec3<f32> = ((vec3<f32>(x_1403.x, x_1403.y, x_1403.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1411 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1411.w);
  let x_1413 : vec4<f32> = u_xlat0;
  let x_1417 : vec3<f32> = clamp(vec3<f32>(x_1413.x, x_1413.y, x_1413.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1418 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
  let x_1420 : vec4<f32> = u_xlat0;
  let x_1424 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1426 : vec3<f32> = (vec3<f32>(x_1420.x, x_1420.y, x_1420.z) * vec3<f32>(x_1424.z, x_1424.z, x_1424.z));
  let x_1427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
  let x_1431 : f32 = u_xlat1.x;
  u_xlat10 = floor(x_1431);
  let x_1434 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1436 : vec2<f32> = (vec2<f32>(x_1434.x, x_1434.y) * vec2<f32>(0.5f, 0.5f));
  let x_1437 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1436.x, x_1437.y, x_1437.z, x_1436.y);
  let x_1439 : vec4<f32> = u_xlat1;
  let x_1442 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1445 : vec4<f32> = u_xlat1;
  let x_1447 : vec2<f32> = ((vec2<f32>(x_1439.y, x_1439.z) * vec2<f32>(x_1442.x, x_1442.y)) + vec2<f32>(x_1445.x, x_1445.w));
  let x_1448 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1448.x, x_1447.x, x_1447.y, x_1448.w);
  let x_1450 : f32 = u_xlat10;
  let x_1452 : f32 = x_26.x_Lut2D_Params.y;
  let x_1455 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1450 * x_1452) + x_1455);
  let x_1463 : vec4<f32> = u_xlat1;
  let x_1465 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1463.x, x_1463.z));
  let x_1466 : vec3<f32> = vec3<f32>(x_1465.x, x_1465.y, x_1465.z);
  let x_1467 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
  let x_1470 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_1470;
  u_xlat3.y = 0.0f;
  let x_1473 : vec4<f32> = u_xlat1;
  let x_1475 : vec4<f32> = u_xlat3;
  let x_1477 : vec2<f32> = (vec2<f32>(x_1473.x, x_1473.z) + vec2<f32>(x_1475.x, x_1475.y));
  let x_1478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1477.x, x_1477.y, x_1478.z, x_1478.w);
  let x_1483 : vec4<f32> = u_xlat1;
  let x_1485 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1483.x, x_1483.y));
  let x_1486 : vec3<f32> = vec3<f32>(x_1485.x, x_1485.y, x_1485.z);
  let x_1487 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
  let x_1490 : f32 = u_xlat0.x;
  let x_1492 : f32 = x_26.x_Lut2D_Params.z;
  let x_1494 : f32 = u_xlat10;
  u_xlat0.x = ((x_1490 * x_1492) + -(x_1494));
  let x_1498 : vec4<f32> = u_xlat2;
  let x_1501 : vec4<f32> = u_xlat1;
  let x_1503 : vec3<f32> = (-(vec3<f32>(x_1498.x, x_1498.y, x_1498.z)) + vec3<f32>(x_1501.x, x_1501.y, x_1501.z));
  let x_1504 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
  let x_1506 : vec4<f32> = u_xlat0;
  let x_1508 : vec4<f32> = u_xlat1;
  let x_1511 : vec4<f32> = u_xlat2;
  let x_1513 : vec3<f32> = ((vec3<f32>(x_1506.x, x_1506.x, x_1506.x) * vec3<f32>(x_1508.x, x_1508.y, x_1508.z)) + vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
  let x_1514 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
  let x_1516 : vec2<f32> = vs_TEXCOORD0;
  let x_1519 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1523 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1525 : vec2<f32> = ((x_1516 * vec2<f32>(x_1519.x, x_1519.y)) + vec2<f32>(x_1523.z, x_1523.w));
  let x_1526 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
  let x_1533 : vec4<f32> = u_xlat1;
  let x_1535 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1533.x, x_1533.y));
  u_xlat1.x = x_1535.w;
  let x_1539 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1539 * 2.0f) + -1.0f);
  let x_1544 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1544 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1550 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1550, 0.0f, 1.0f);
  let x_1554 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1554 * 2.0f) + -1.0f);
  let x_1559 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1559)) + 1.0f);
  let x_1565 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1565);
  let x_1569 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1569) + 1.0f);
  let x_1574 : f32 = u_xlat1.x;
  let x_1576 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1574 * x_1576);
  let x_1579 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1579.x, x_1579.y, x_1579.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1584 : vec4<f32> = u_xlat0;
  let x_1588 : vec3<f32> = max(abs(vec3<f32>(x_1584.x, x_1584.y, x_1584.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1589 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1588.x, x_1588.y, x_1588.z, x_1589.w);
  let x_1591 : vec4<f32> = u_xlat2;
  let x_1593 : vec3<f32> = log2(vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
  let x_1594 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
  let x_1596 : vec4<f32> = u_xlat2;
  let x_1600 : vec3<f32> = (vec3<f32>(x_1596.x, x_1596.y, x_1596.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1601 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1603 : vec4<f32> = u_xlat2;
  let x_1605 : vec3<f32> = exp2(vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
  let x_1606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
  let x_1608 : vec4<f32> = u_xlat2;
  let x_1615 : vec3<f32> = ((vec3<f32>(x_1608.x, x_1608.y, x_1608.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1616 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  let x_1623 : vec4<f32> = u_xlat0;
  let x_1626 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1623.x));
  u_xlatb0 = vec3<bool>(x_1626.x, x_1626.y, x_1626.z);
  let x_1629 : bool = u_xlatb0.x;
  if (x_1629) {
    let x_1634 : f32 = u_xlat11.x;
    x_1630 = x_1634;
  } else {
    let x_1637 : f32 = u_xlat2.x;
    x_1630 = x_1637;
  }
  let x_1638 : f32 = x_1630;
  u_xlat0.x = x_1638;
  let x_1641 : bool = u_xlatb0.y;
  if (x_1641) {
    let x_1646 : f32 = u_xlat11.y;
    x_1642 = x_1646;
  } else {
    let x_1649 : f32 = u_xlat2.y;
    x_1642 = x_1649;
  }
  let x_1650 : f32 = x_1642;
  u_xlat0.y = x_1650;
  let x_1653 : bool = u_xlatb0.z;
  if (x_1653) {
    let x_1658 : f32 = u_xlat11.z;
    x_1654 = x_1658;
  } else {
    let x_1661 : f32 = u_xlat2.z;
    x_1654 = x_1661;
  }
  let x_1662 : f32 = x_1654;
  u_xlat0.z = x_1662;
  let x_1664 : vec4<f32> = u_xlat1;
  let x_1669 : vec4<f32> = u_xlat0;
  let x_1671 : vec3<f32> = ((vec3<f32>(x_1664.x, x_1664.x, x_1664.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1669.x, x_1669.y, x_1669.z));
  let x_1672 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
  let x_1674 : vec4<f32> = u_xlat0;
  let x_1677 : vec3<f32> = (vec3<f32>(x_1674.x, x_1674.y, x_1674.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1678 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
  let x_1680 : vec4<f32> = u_xlat0;
  let x_1683 : vec3<f32> = (vec3<f32>(x_1680.x, x_1680.y, x_1680.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1684 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
  let x_1686 : vec4<f32> = u_xlat2;
  let x_1689 : vec3<f32> = (vec3<f32>(x_1686.x, x_1686.y, x_1686.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1690 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  let x_1692 : vec4<f32> = u_xlat2;
  let x_1695 : vec3<f32> = max(abs(vec3<f32>(x_1692.x, x_1692.y, x_1692.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1696 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  let x_1698 : vec4<f32> = u_xlat2;
  let x_1700 : vec3<f32> = log2(vec3<f32>(x_1698.x, x_1698.y, x_1698.z));
  let x_1701 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1700.x, x_1700.y, x_1700.z, x_1701.w);
  let x_1703 : vec4<f32> = u_xlat2;
  let x_1706 : vec3<f32> = (vec3<f32>(x_1703.x, x_1703.y, x_1703.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1707 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1707.w);
  let x_1709 : vec4<f32> = u_xlat2;
  let x_1711 : vec3<f32> = exp2(vec3<f32>(x_1709.x, x_1709.y, x_1709.z));
  let x_1712 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
  let x_1715 : vec4<f32> = u_xlat0;
  let x_1717 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1715.x));
  u_xlatb0 = vec3<bool>(x_1717.x, x_1717.y, x_1717.z);
  let x_1722 : bool = u_xlatb0.x;
  if (x_1722) {
    let x_1727 : f32 = u_xlat1.x;
    x_1723 = x_1727;
  } else {
    let x_1730 : f32 = u_xlat2.x;
    x_1723 = x_1730;
  }
  let x_1731 : f32 = x_1723;
  SV_Target0.x = x_1731;
  let x_1735 : bool = u_xlatb0.y;
  if (x_1735) {
    let x_1740 : f32 = u_xlat1.y;
    x_1736 = x_1740;
  } else {
    let x_1743 : f32 = u_xlat2.y;
    x_1736 = x_1743;
  }
  let x_1744 : f32 = x_1736;
  SV_Target0.y = x_1744;
  let x_1747 : bool = u_xlatb0.z;
  if (x_1747) {
    let x_1752 : f32 = u_xlat1.z;
    x_1748 = x_1752;
  } else {
    let x_1755 : f32 = u_xlat2.z;
    x_1748 = x_1755;
  }
  let x_1756 : f32 = x_1748;
  SV_Target0.z = x_1756;
  let x_1759 : f32 = u_xlat0.w;
  SV_Target0.w = x_1759;
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

