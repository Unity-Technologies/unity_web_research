struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

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

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatb37 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlatb7 : bool;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> u_xlat30 : f32;

var<private> u_xlatb2 : vec3<bool>;

var<private> u_xlat10 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_209 : f32;
  var x_235 : f32;
  var x_468 : f32;
  var x_693 : f32;
  var x_893 : f32;
  var x_1458 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1630 : f32;
  var x_1642 : f32;
  var x_1654 : f32;
  var x_1799 : f32;
  var x_1811 : f32;
  var x_1823 : f32;
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
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_81);
  let x_83 : bool = u_xlatb11;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat21 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat21.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat21.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat21.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat21.y;
    u_xlat31 = (1.0f / x_113);
    let x_116 : f32 = u_xlat21.x;
    let x_117 : f32 = u_xlat31;
    u_xlat21.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat21;
    let x_127 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_131 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_131);
    let x_135 : f32 = u_xlat2.x;
    let x_137 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat2.x = (x_135 * x_137);
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
    let x_340 : vec3<f32> = u_xlat1;
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
    let x_487 : vec3<f32> = u_xlat1;
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
    let x_568 : vec3<f32> = u_xlat1;
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
    let x_712 : vec3<f32> = u_xlat1;
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
    let x_758 : vec3<f32> = u_xlat1;
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
    let x_911 : vec3<f32> = u_xlat1;
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
  let x_936 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_935.x, x_935.y, x_936.z);
  let x_941 : vec3<f32> = u_xlat1;
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
  u_xlat2 = (vec4<f32>(x_985.x, x_985.y, x_985.x, x_985.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_989 : vec4<f32> = u_xlat2;
  let x_995 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_998 : vec2<f32> = u_xlat21;
  u_xlat3 = ((-(vec4<f32>(x_989.x, x_989.y, x_989.w, x_989.y)) * vec4<f32>(x_995.x, x_995.x, x_995.x, x_995.x)) + vec4<f32>(x_998.x, x_998.y, x_998.x, x_998.y));
  let x_1001 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1001, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1005 : vec4<f32> = u_xlat3;
  let x_1007 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_1005 * vec4<f32>(x_1007, x_1007, x_1007, x_1007));
  let x_1015 : vec4<f32> = u_xlat3;
  let x_1017 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1015.x, x_1015.y));
  u_xlat4 = x_1017;
  let x_1021 : vec4<f32> = u_xlat3;
  let x_1023 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1021.z, x_1021.w));
  u_xlat3 = x_1023;
  let x_1024 : vec4<f32> = u_xlat3;
  let x_1026 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_1024 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1026);
  let x_1028 : vec4<f32> = u_xlat2;
  let x_1032 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1035 : vec2<f32> = u_xlat21;
  let x_1036 : vec2<f32> = ((-(vec2<f32>(x_1028.z, x_1028.y)) * vec2<f32>(x_1032.x, x_1032.x)) + x_1035);
  let x_1037 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1036.x, x_1036.y, x_1037.z);
  let x_1039 : vec3<f32> = u_xlat1;
  let x_1043 : vec2<f32> = clamp(vec2<f32>(x_1039.x, x_1039.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1044 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1043.x, x_1043.y, x_1044.z);
  let x_1046 : vec3<f32> = u_xlat1;
  let x_1049 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1051 : vec2<f32> = (vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1049, x_1049));
  let x_1052 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1051.x, x_1051.y, x_1052.z);
  let x_1057 : vec3<f32> = u_xlat1;
  let x_1059 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1057.x, x_1057.y));
  u_xlat4 = x_1059;
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1061 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1060 + x_1061);
  let x_1063 : vec4<f32> = u_xlat2;
  let x_1066 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1069 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_1063.z, x_1063.w, x_1063.x, x_1063.w) * vec4<f32>(x_1066.x, x_1066.x, x_1066.x, x_1066.x)) + vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y));
  let x_1072 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_1072, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1076 : vec4<f32> = u_xlat4;
  let x_1078 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_1076 * vec4<f32>(x_1078, x_1078, x_1078, x_1078));
  let x_1084 : vec4<f32> = u_xlat4;
  let x_1086 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1084.x, x_1084.y));
  u_xlat5 = x_1086;
  let x_1087 : vec4<f32> = u_xlat5;
  let x_1089 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1087 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1089);
  let x_1091 : vec2<f32> = u_xlat21;
  let x_1092 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1091.x, x_1091.y, x_1092.z);
  let x_1094 : vec3<f32> = u_xlat1;
  let x_1098 : vec2<f32> = clamp(vec2<f32>(x_1094.x, x_1094.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1099 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1098.x, x_1098.y, x_1099.z);
  let x_1101 : vec3<f32> = u_xlat1;
  let x_1104 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1106 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(x_1104, x_1104));
  let x_1107 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1106.x, x_1106.y, x_1107.z);
  let x_1112 : vec3<f32> = u_xlat1;
  let x_1114 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1112.x, x_1112.y));
  u_xlat5 = x_1114;
  let x_1115 : vec4<f32> = u_xlat5;
  let x_1119 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1115 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_1119);
  let x_1124 : vec4<f32> = u_xlat4;
  let x_1126 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1124.z, x_1124.w));
  u_xlat4 = x_1126;
  let x_1127 : vec4<f32> = u_xlat4;
  let x_1129 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1127 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1129);
  let x_1131 : vec4<f32> = u_xlat2;
  let x_1134 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1137 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_1131.z, x_1131.y, x_1131.w, x_1131.y) * vec4<f32>(x_1134.x, x_1134.x, x_1134.x, x_1134.x)) + vec4<f32>(x_1137.x, x_1137.y, x_1137.x, x_1137.y));
  let x_1140 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_1140, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1144 : vec4<f32> = u_xlat4;
  let x_1146 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_1144 * vec4<f32>(x_1146, x_1146, x_1146, x_1146));
  let x_1152 : vec4<f32> = u_xlat4;
  let x_1154 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1152.x, x_1152.y));
  u_xlat5 = x_1154;
  let x_1155 : vec4<f32> = u_xlat3;
  let x_1156 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_1155 + x_1156);
  let x_1161 : vec4<f32> = u_xlat4;
  let x_1163 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1161.z, x_1161.w));
  u_xlat4 = x_1163;
  let x_1164 : vec4<f32> = u_xlat4;
  let x_1166 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1164 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1166);
  let x_1168 : vec4<f32> = u_xlat2;
  let x_1171 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1174 : vec2<f32> = u_xlat21;
  let x_1175 : vec2<f32> = ((vec2<f32>(x_1168.x, x_1168.y) * vec2<f32>(x_1171.x, x_1171.x)) + x_1174);
  let x_1176 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1175.x, x_1175.y, x_1176.z);
  let x_1178 : vec3<f32> = u_xlat1;
  let x_1182 : vec2<f32> = clamp(vec2<f32>(x_1178.x, x_1178.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1183 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1182.x, x_1182.y, x_1183.z);
  let x_1185 : vec3<f32> = u_xlat1;
  let x_1188 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1190 : vec2<f32> = (vec2<f32>(x_1185.x, x_1185.y) * vec2<f32>(x_1188, x_1188));
  let x_1191 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1190.x, x_1190.y, x_1191.z);
  let x_1196 : vec3<f32> = u_xlat1;
  let x_1198 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1196.x, x_1196.y));
  u_xlat2 = x_1198;
  let x_1199 : vec4<f32> = u_xlat2;
  let x_1200 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_1199 + x_1200);
  let x_1202 : vec4<f32> = u_xlat2;
  let x_1204 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat2 = (x_1202 * vec4<f32>(x_1204.y, x_1204.y, x_1204.y, x_1204.y));
  let x_1207 : vec2<f32> = u_xlat21;
  let x_1210 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1214 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1216 : vec2<f32> = ((x_1207 * vec2<f32>(x_1210.x, x_1210.y)) + vec2<f32>(x_1214.z, x_1214.w));
  let x_1217 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1216.x, x_1216.y, x_1217.z);
  let x_1224 : vec3<f32> = u_xlat1;
  let x_1226 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_1224.x, x_1224.y));
  let x_1227 : vec3<f32> = vec3<f32>(x_1226.x, x_1226.y, x_1226.z);
  let x_1228 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
  let x_1230 : vec4<f32> = u_xlat2;
  u_xlat4 = (x_1230 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_1234 : vec4<f32> = u_xlat3;
  let x_1237 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1239 : vec3<f32> = (vec3<f32>(x_1234.x, x_1234.y, x_1234.z) * vec3<f32>(x_1237.z, x_1237.z, x_1237.z));
  let x_1240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  u_xlat3.w = 0.0f;
  let x_1243 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1243 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_1246 : vec4<f32> = u_xlat2;
  let x_1250 : vec3<f32> = x_26.x_Bloom_Color;
  let x_1251 : vec3<f32> = (vec3<f32>(x_1246.x, x_1246.y, x_1246.z) * x_1250);
  let x_1252 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1255 : f32 = u_xlat2.w;
  u_xlat5.w = (x_1255 * 0.0625f);
  let x_1258 : vec4<f32> = u_xlat0;
  let x_1259 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_1258 + x_1259);
  let x_1261 : vec4<f32> = u_xlat3;
  let x_1262 : vec4<f32> = u_xlat4;
  let x_1264 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_1261 * x_1262) + x_1264);
  let x_1268 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_1268 < 0.5f);
  let x_1270 : bool = u_xlatb1;
  if (x_1270) {
    let x_1273 : vec2<f32> = u_xlat21;
    let x_1277 : vec2<f32> = x_26.x_Vignette_Center;
    let x_1279 : vec2<f32> = (x_1273 + -(x_1277));
    let x_1280 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1279.x, x_1279.y, x_1280.z);
    let x_1282 : vec3<f32> = u_xlat1;
    let x_1287 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1289 : vec2<f32> = (abs(vec2<f32>(x_1282.y, x_1282.x)) * vec2<f32>(x_1287.x, x_1287.x));
    let x_1290 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1290.x, x_1289.x, x_1289.y, x_1290.w);
    let x_1294 : f32 = x_26.x_ScreenParams.x;
    let x_1296 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_1294 / x_1296);
    let x_1300 : f32 = u_xlat1.x;
    u_xlat1.x = (x_1300 + -1.0f);
    let x_1304 : f32 = x_26.x_Vignette_Settings.w;
    let x_1306 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_1304 * x_1306) + 1.0f);
    let x_1311 : f32 = u_xlat1.x;
    let x_1314 : f32 = u_xlat2.z;
    u_xlat2.x = (x_1311 * x_1314);
    let x_1317 : vec4<f32> = u_xlat2;
    let x_1318 : vec2<f32> = vec2<f32>(x_1317.x, x_1317.y);
    let x_1319 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1318.x, x_1318.y, x_1319.z, x_1319.w);
    let x_1321 : vec4<f32> = u_xlat2;
    let x_1325 : vec2<f32> = clamp(vec2<f32>(x_1321.x, x_1321.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_1326 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1325.x, x_1325.y, x_1326.z, x_1326.w);
    let x_1328 : vec4<f32> = u_xlat2;
    let x_1330 : vec2<f32> = log2(vec2<f32>(x_1328.x, x_1328.y));
    let x_1331 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1330.x, x_1330.y, x_1331.z);
    let x_1333 : vec3<f32> = u_xlat1;
    let x_1336 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1338 : vec2<f32> = (vec2<f32>(x_1333.x, x_1333.y) * vec2<f32>(x_1336.z, x_1336.z));
    let x_1339 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1338.x, x_1338.y, x_1339.z);
    let x_1341 : vec3<f32> = u_xlat1;
    let x_1343 : vec2<f32> = exp2(vec2<f32>(x_1341.x, x_1341.y));
    let x_1344 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1343.x, x_1343.y, x_1344.z);
    let x_1346 : vec3<f32> = u_xlat1;
    let x_1348 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_1346.x, x_1346.y), vec2<f32>(x_1348.x, x_1348.y));
    let x_1353 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_1353) + 1.0f);
    let x_1358 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_1358, 0.0f);
    let x_1362 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_1362);
    let x_1366 : f32 = u_xlat1.x;
    let x_1368 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_1366 * x_1368);
    let x_1372 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_1372);
    let x_1377 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1380 : vec3<f32> = (-(x_1377) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1381 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
    let x_1383 : vec3<f32> = u_xlat1;
    let x_1385 : vec4<f32> = u_xlat2;
    let x_1389 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1390 : vec3<f32> = ((vec3<f32>(x_1383.x, x_1383.x, x_1383.x) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z)) + x_1389);
    let x_1391 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
    let x_1393 : vec4<f32> = u_xlat0;
    let x_1395 : vec4<f32> = u_xlat2;
    let x_1397 : vec3<f32> = (vec3<f32>(x_1393.x, x_1393.y, x_1393.z) * vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
    let x_1398 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
    let x_1401 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1401 + -1.0f);
    let x_1405 : f32 = u_xlat1.x;
    let x_1407 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_1405 * x_1407) + 1.0f);
  } else {
    let x_1417 : vec2<f32> = u_xlat21;
    let x_1418 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1417);
    u_xlat1.x = x_1418.w;
    let x_1422 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1422 + 0.055f);
    let x_1426 : vec3<f32> = u_xlat1;
    let x_1431 : vec2<f32> = (vec2<f32>(x_1426.x, x_1426.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1432 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1431.x, x_1431.y, x_1432.z);
    let x_1435 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1435), 1.1920929e-07f);
    let x_1441 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1441);
    let x_1445 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1445 * 2.400000095f);
    let x_1450 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1450);
    let x_1455 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1455);
    let x_1457 : bool = u_xlatb1;
    if (x_1457) {
      let x_1462 : f32 = u_xlat11.x;
      x_1458 = x_1462;
    } else {
      let x_1465 : f32 = u_xlat21.x;
      x_1458 = x_1465;
    }
    let x_1466 : f32 = x_1458;
    u_xlat1.x = x_1466;
    let x_1469 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1469) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1472 : vec3<f32> = u_xlat1;
    let x_1474 : vec3<f32> = u_xlat11;
    let x_1477 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1472.x, x_1472.x, x_1472.x) * x_1474) + x_1477);
    let x_1479 : vec4<f32> = u_xlat0;
    let x_1481 : vec3<f32> = u_xlat11;
    let x_1483 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1479.x, x_1479.y, x_1479.z) * x_1481) + -(vec3<f32>(x_1483.x, x_1483.y, x_1483.z)));
    let x_1489 : f32 = x_26.x_Vignette_Opacity;
    let x_1491 : vec3<f32> = u_xlat11;
    let x_1493 : vec4<f32> = u_xlat0;
    let x_1495 : vec3<f32> = ((vec3<f32>(x_1489, x_1489, x_1489) * x_1491) + vec3<f32>(x_1493.x, x_1493.y, x_1493.z));
    let x_1496 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
    let x_1499 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1499 + -1.0f);
    let x_1503 : f32 = u_xlat1.x;
    let x_1505 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_1503 * x_1505) + 1.0f);
  }
  let x_1510 : vec2<f32> = vs_TEXCOORD1;
  let x_1513 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1517 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1519 : vec2<f32> = ((x_1510 * vec2<f32>(x_1513.x, x_1513.y)) + vec2<f32>(x_1517.z, x_1517.w));
  let x_1520 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1519.x, x_1519.y, x_1520.z, x_1520.w);
  let x_1527 : vec4<f32> = u_xlat0;
  let x_1529 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1527.x, x_1527.y));
  let x_1530 : vec3<f32> = vec3<f32>(x_1529.x, x_1529.y, x_1529.z);
  let x_1531 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
  let x_1533 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_1533.x, x_1533.y, x_1533.z);
  let x_1535 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1535, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1540 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1540, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1546 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1546);
  let x_1550 : f32 = x_26.x_Grain_Params1.x;
  let x_1551 : f32 = u_xlat30;
  u_xlat30 = ((x_1550 * -(x_1551)) + 1.0f);
  let x_1555 : vec4<f32> = u_xlat0;
  let x_1557 : vec4<f32> = u_xlat2;
  let x_1559 : vec3<f32> = (vec3<f32>(x_1555.x, x_1555.y, x_1555.z) * vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
  let x_1560 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
  let x_1562 : vec4<f32> = u_xlat0;
  let x_1565 : f32 = x_26.x_Grain_Params1.y;
  let x_1567 : f32 = x_26.x_Grain_Params1.y;
  let x_1569 : f32 = x_26.x_Grain_Params1.y;
  let x_1571 : vec3<f32> = (vec3<f32>(x_1562.x, x_1562.y, x_1562.z) * vec3<f32>(x_1565, x_1567, x_1569));
  let x_1572 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
  let x_1574 : vec4<f32> = u_xlat0;
  let x_1576 : f32 = u_xlat30;
  let x_1579 : vec4<f32> = u_xlat2;
  let x_1581 : vec3<f32> = ((vec3<f32>(x_1574.x, x_1574.y, x_1574.z) * vec3<f32>(x_1576, x_1576, x_1576)) + vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
  let x_1582 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);
  let x_1584 : vec4<f32> = u_xlat3;
  u_xlat3 = x_1584;
  let x_1585 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1585, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1589 : vec4<f32> = u_xlat3;
  let x_1593 : vec3<f32> = (vec3<f32>(x_1589.z, x_1589.x, x_1589.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1594 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
  let x_1596 : vec4<f32> = u_xlat3;
  u_xlat1 = max(vec3<f32>(x_1596.z, x_1596.x, x_1596.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1600 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1600);
  let x_1602 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1602 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1606 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1606);
  let x_1608 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1608 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1620 : vec4<f32> = u_xlat3;
  let x_1623 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1620.z, x_1620.x, x_1620.y, x_1620.z));
  u_xlatb2 = vec3<bool>(x_1623.x, x_1623.y, x_1623.z);
  let x_1627 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1627;
  let x_1629 : bool = u_xlatb2.x;
  if (x_1629) {
    let x_1634 : f32 = u_xlat0.x;
    x_1630 = x_1634;
  } else {
    let x_1637 : f32 = u_xlat1.x;
    x_1630 = x_1637;
  }
  let x_1638 : f32 = x_1630;
  hlslcc_movcTemp.x = x_1638;
  let x_1641 : bool = u_xlatb2.y;
  if (x_1641) {
    let x_1646 : f32 = u_xlat0.y;
    x_1642 = x_1646;
  } else {
    let x_1649 : f32 = u_xlat1.y;
    x_1642 = x_1649;
  }
  let x_1650 : f32 = x_1642;
  hlslcc_movcTemp.y = x_1650;
  let x_1653 : bool = u_xlatb2.z;
  if (x_1653) {
    let x_1658 : f32 = u_xlat0.z;
    x_1654 = x_1658;
  } else {
    let x_1661 : f32 = u_xlat1.z;
    x_1654 = x_1661;
  }
  let x_1662 : f32 = x_1654;
  hlslcc_movcTemp.z = x_1662;
  let x_1664 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1664;
  let x_1666 : vec4<f32> = u_xlat0;
  let x_1670 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_1666.x, x_1666.y, x_1666.z) * vec3<f32>(x_1670.z, x_1670.z, x_1670.z));
  let x_1674 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_1674);
  let x_1678 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1680 : vec2<f32> = (vec2<f32>(x_1678.x, x_1678.y) * vec2<f32>(0.5f, 0.5f));
  let x_1681 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1680.x, x_1680.y, x_1681.z);
  let x_1683 : vec3<f32> = u_xlat10;
  let x_1686 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1689 : vec3<f32> = u_xlat1;
  let x_1691 : vec2<f32> = ((vec2<f32>(x_1683.y, x_1683.z) * vec2<f32>(x_1686.x, x_1686.y)) + vec2<f32>(x_1689.x, x_1689.y));
  let x_1692 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1692.x, x_1691.x, x_1691.y);
  let x_1695 : f32 = u_xlat10.x;
  let x_1697 : f32 = x_26.x_Lut2D_Params.y;
  let x_1700 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1695 * x_1697) + x_1700);
  let x_1708 : vec3<f32> = u_xlat1;
  let x_1710 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1708.x, x_1708.z));
  let x_1711 : vec3<f32> = vec3<f32>(x_1710.x, x_1710.y, x_1710.z);
  let x_1712 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
  let x_1715 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_1715;
  u_xlat4.y = 0.0f;
  let x_1718 : vec3<f32> = u_xlat1;
  let x_1720 : vec4<f32> = u_xlat4;
  u_xlat20 = (vec2<f32>(x_1718.x, x_1718.z) + vec2<f32>(x_1720.x, x_1720.y));
  let x_1726 : vec2<f32> = u_xlat20;
  let x_1727 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1726);
  u_xlat1 = vec3<f32>(x_1727.x, x_1727.y, x_1727.z);
  let x_1730 : f32 = u_xlat0.x;
  let x_1732 : f32 = x_26.x_Lut2D_Params.z;
  let x_1735 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1730 * x_1732) + -(x_1735));
  let x_1739 : vec4<f32> = u_xlat2;
  let x_1742 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_1739.x, x_1739.y, x_1739.z)) + x_1742);
  let x_1744 : vec4<f32> = u_xlat0;
  let x_1746 : vec3<f32> = u_xlat10;
  let x_1748 : vec4<f32> = u_xlat2;
  let x_1750 : vec3<f32> = ((vec3<f32>(x_1744.x, x_1744.x, x_1744.x) * x_1746) + vec3<f32>(x_1748.x, x_1748.y, x_1748.z));
  let x_1751 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1751.w);
  let x_1753 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1753.x, x_1753.y, x_1753.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1757 : vec4<f32> = u_xlat0;
  let x_1760 : vec3<f32> = (vec3<f32>(x_1757.x, x_1757.y, x_1757.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1761 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1761.w);
  let x_1763 : vec4<f32> = u_xlat2;
  let x_1766 : vec3<f32> = (vec3<f32>(x_1763.x, x_1763.y, x_1763.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1767 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
  let x_1769 : vec4<f32> = u_xlat2;
  let x_1772 : vec3<f32> = max(abs(vec3<f32>(x_1769.x, x_1769.y, x_1769.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1773 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
  let x_1775 : vec4<f32> = u_xlat2;
  let x_1777 : vec3<f32> = log2(vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
  let x_1778 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
  let x_1780 : vec4<f32> = u_xlat2;
  let x_1783 : vec3<f32> = (vec3<f32>(x_1780.x, x_1780.y, x_1780.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1784 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
  let x_1786 : vec4<f32> = u_xlat2;
  let x_1788 : vec3<f32> = exp2(vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
  let x_1789 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1788.x, x_1788.y, x_1788.z, x_1789.w);
  let x_1793 : vec4<f32> = u_xlat0;
  let x_1795 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1793.x));
  u_xlatb0 = vec3<bool>(x_1795.x, x_1795.y, x_1795.z);
  let x_1798 : bool = u_xlatb0.x;
  if (x_1798) {
    let x_1803 : f32 = u_xlat1.x;
    x_1799 = x_1803;
  } else {
    let x_1806 : f32 = u_xlat2.x;
    x_1799 = x_1806;
  }
  let x_1807 : f32 = x_1799;
  u_xlat3.x = x_1807;
  let x_1810 : bool = u_xlatb0.y;
  if (x_1810) {
    let x_1815 : f32 = u_xlat1.y;
    x_1811 = x_1815;
  } else {
    let x_1818 : f32 = u_xlat2.y;
    x_1811 = x_1818;
  }
  let x_1819 : f32 = x_1811;
  u_xlat3.y = x_1819;
  let x_1822 : bool = u_xlatb0.z;
  if (x_1822) {
    let x_1827 : f32 = u_xlat1.z;
    x_1823 = x_1827;
  } else {
    let x_1830 : f32 = u_xlat2.z;
    x_1823 = x_1830;
  }
  let x_1831 : f32 = x_1823;
  u_xlat3.z = x_1831;
  let x_1835 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1835);
  let x_1839 : bool = u_xlatb0.x;
  if (x_1839) {
    let x_1842 : vec4<f32> = u_xlat3;
    let x_1843 : vec3<f32> = vec3<f32>(x_1842.x, x_1842.y, x_1842.z);
    let x_1844 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
    let x_1846 : vec4<f32> = u_xlat0;
    let x_1850 : vec3<f32> = clamp(vec3<f32>(x_1846.x, x_1846.y, x_1846.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1851 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
    let x_1853 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1853.x, x_1853.y, x_1853.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1859 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1859;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

