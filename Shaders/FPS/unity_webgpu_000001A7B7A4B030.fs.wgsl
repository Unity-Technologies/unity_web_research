struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(12)
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

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatb37 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlatb7 : bool;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(11) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_209 : f32;
  var x_235 : f32;
  var x_468 : f32;
  var x_693 : f32;
  var x_893 : f32;
  var x_1176 : f32;
  var x_1428 : f32;
  var x_1440 : f32;
  var x_1452 : f32;
  var x_1519 : f32;
  var x_1532 : f32;
  var x_1544 : f32;
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
  let x_985 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_985 < 0.5f);
  let x_987 : bool = u_xlatb1;
  if (x_987) {
    let x_990 : vec2<f32> = u_xlat21;
    let x_994 : vec2<f32> = x_26.x_Vignette_Center;
    let x_996 : vec2<f32> = (x_990 + -(x_994));
    let x_997 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_996.x, x_996.y, x_997.z);
    let x_999 : vec3<f32> = u_xlat1;
    let x_1004 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1006 : vec2<f32> = (abs(vec2<f32>(x_999.y, x_999.x)) * vec2<f32>(x_1004.x, x_1004.x));
    let x_1007 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1007.x, x_1006.x, x_1006.y, x_1007.w);
    let x_1011 : f32 = x_26.x_ScreenParams.x;
    let x_1013 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_1011 / x_1013);
    let x_1017 : f32 = u_xlat1.x;
    u_xlat1.x = (x_1017 + -1.0f);
    let x_1021 : f32 = x_26.x_Vignette_Settings.w;
    let x_1023 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_1021 * x_1023) + 1.0f);
    let x_1028 : f32 = u_xlat1.x;
    let x_1031 : f32 = u_xlat2.z;
    u_xlat2.x = (x_1028 * x_1031);
    let x_1034 : vec4<f32> = u_xlat2;
    let x_1035 : vec2<f32> = vec2<f32>(x_1034.x, x_1034.y);
    let x_1036 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
    let x_1038 : vec4<f32> = u_xlat2;
    let x_1042 : vec2<f32> = clamp(vec2<f32>(x_1038.x, x_1038.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_1043 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
    let x_1045 : vec4<f32> = u_xlat2;
    let x_1047 : vec2<f32> = log2(vec2<f32>(x_1045.x, x_1045.y));
    let x_1048 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1047.x, x_1047.y, x_1048.z);
    let x_1050 : vec3<f32> = u_xlat1;
    let x_1053 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1055 : vec2<f32> = (vec2<f32>(x_1050.x, x_1050.y) * vec2<f32>(x_1053.z, x_1053.z));
    let x_1056 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1055.x, x_1055.y, x_1056.z);
    let x_1058 : vec3<f32> = u_xlat1;
    let x_1060 : vec2<f32> = exp2(vec2<f32>(x_1058.x, x_1058.y));
    let x_1061 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1060.x, x_1060.y, x_1061.z);
    let x_1063 : vec3<f32> = u_xlat1;
    let x_1065 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_1063.x, x_1063.y), vec2<f32>(x_1065.x, x_1065.y));
    let x_1070 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_1070) + 1.0f);
    let x_1075 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_1075, 0.0f);
    let x_1079 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_1079);
    let x_1083 : f32 = u_xlat1.x;
    let x_1085 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_1083 * x_1085);
    let x_1089 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_1089);
    let x_1095 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1098 : vec3<f32> = (-(x_1095) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1099 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
    let x_1101 : vec3<f32> = u_xlat1;
    let x_1103 : vec4<f32> = u_xlat2;
    let x_1107 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1108 : vec3<f32> = ((vec3<f32>(x_1101.x, x_1101.x, x_1101.x) * vec3<f32>(x_1103.x, x_1103.y, x_1103.z)) + x_1107);
    let x_1109 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
    let x_1111 : vec4<f32> = u_xlat0;
    let x_1113 : vec4<f32> = u_xlat2;
    let x_1115 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.z) * vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
    let x_1116 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
    let x_1119 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1119 + -1.0f);
    let x_1123 : f32 = u_xlat1.x;
    let x_1125 : f32 = u_xlat11.x;
    u_xlat2.w = ((x_1123 * x_1125) + 1.0f);
  } else {
    let x_1135 : vec2<f32> = u_xlat21;
    let x_1136 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1135);
    u_xlat1.x = x_1136.w;
    let x_1140 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1140 + 0.055f);
    let x_1144 : vec3<f32> = u_xlat1;
    let x_1149 : vec2<f32> = (vec2<f32>(x_1144.x, x_1144.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1150 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1149.x, x_1149.y, x_1150.z);
    let x_1153 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1153), 1.1920929e-07f);
    let x_1159 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1159);
    let x_1163 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1163 * 2.400000095f);
    let x_1168 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1168);
    let x_1173 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1173);
    let x_1175 : bool = u_xlatb1;
    if (x_1175) {
      let x_1180 : f32 = u_xlat11.x;
      x_1176 = x_1180;
    } else {
      let x_1183 : f32 = u_xlat21.x;
      x_1176 = x_1183;
    }
    let x_1184 : f32 = x_1176;
    u_xlat1.x = x_1184;
    let x_1187 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1187) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1190 : vec3<f32> = u_xlat1;
    let x_1192 : vec3<f32> = u_xlat11;
    let x_1195 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1190.x, x_1190.x, x_1190.x) * x_1192) + x_1195);
    let x_1197 : vec4<f32> = u_xlat0;
    let x_1199 : vec3<f32> = u_xlat11;
    let x_1201 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1197.x, x_1197.y, x_1197.z) * x_1199) + -(vec3<f32>(x_1201.x, x_1201.y, x_1201.z)));
    let x_1207 : f32 = x_26.x_Vignette_Opacity;
    let x_1209 : vec3<f32> = u_xlat11;
    let x_1211 : vec4<f32> = u_xlat0;
    let x_1213 : vec3<f32> = ((vec3<f32>(x_1207, x_1207, x_1207) * x_1209) + vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
    let x_1214 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
    let x_1217 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1217 + -1.0f);
    let x_1221 : f32 = u_xlat1.x;
    let x_1223 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_1221 * x_1223) + 1.0f);
  }
  let x_1227 : vec4<f32> = u_xlat2;
  let x_1230 : f32 = x_26.x_PostExposure;
  let x_1232 : f32 = x_26.x_PostExposure;
  let x_1234 : f32 = x_26.x_PostExposure;
  let x_1236 : f32 = x_26.x_PostExposure;
  let x_1237 : vec4<f32> = vec4<f32>(x_1230, x_1232, x_1234, x_1236);
  u_xlat0 = (x_1227 * vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1237.w));
  let x_1244 : vec4<f32> = u_xlat0;
  let x_1251 : vec3<f32> = ((vec3<f32>(x_1244.x, x_1244.y, x_1244.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec4<f32> = u_xlat0;
  let x_1256 : vec3<f32> = log2(vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1257 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : vec4<f32> = u_xlat0;
  let x_1266 : vec3<f32> = ((vec3<f32>(x_1259.x, x_1259.y, x_1259.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
  let x_1269 : vec4<f32> = u_xlat0;
  let x_1273 : vec3<f32> = clamp(vec3<f32>(x_1269.x, x_1269.y, x_1269.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1276 : vec4<f32> = u_xlat0;
  let x_1280 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_1282 : vec3<f32> = (vec3<f32>(x_1276.x, x_1276.y, x_1276.z) * vec3<f32>(x_1280.y, x_1280.y, x_1280.y));
  let x_1283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
  let x_1286 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat1.x = (x_1286 * 0.5f);
  let x_1289 : vec4<f32> = u_xlat0;
  let x_1292 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_1295 : vec3<f32> = u_xlat1;
  let x_1297 : vec3<f32> = ((vec3<f32>(x_1289.x, x_1289.y, x_1289.z) * vec3<f32>(x_1292.x, x_1292.x, x_1292.x)) + vec3<f32>(x_1295.x, x_1295.x, x_1295.x));
  let x_1298 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
  let x_1308 : vec4<f32> = u_xlat0;
  let x_1310 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1311 : vec3<f32> = vec3<f32>(x_1310.x, x_1310.y, x_1310.z);
  let x_1312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
  let x_1314 : vec2<f32> = vs_TEXCOORD0;
  let x_1317 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1321 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1323 : vec2<f32> = ((x_1314 * vec2<f32>(x_1317.x, x_1317.y)) + vec2<f32>(x_1321.z, x_1321.w));
  let x_1324 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1323.x, x_1323.y, x_1324.z);
  let x_1331 : vec3<f32> = u_xlat1;
  let x_1333 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1331.x, x_1331.y));
  u_xlat1.x = x_1333.w;
  let x_1337 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1337 * 2.0f) + -1.0f);
  let x_1342 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1342 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1348 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1348, 0.0f, 1.0f);
  let x_1352 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1352 * 2.0f) + -1.0f);
  let x_1357 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1357)) + 1.0f);
  let x_1363 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1363);
  let x_1367 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1367) + 1.0f);
  let x_1372 : f32 = u_xlat1.x;
  let x_1374 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1372 * x_1374);
  let x_1377 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1377.x, x_1377.y, x_1377.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1382 : vec4<f32> = u_xlat0;
  let x_1386 : vec3<f32> = max(abs(vec3<f32>(x_1382.x, x_1382.y, x_1382.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1387 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
  let x_1389 : vec4<f32> = u_xlat2;
  let x_1391 : vec3<f32> = log2(vec3<f32>(x_1389.x, x_1389.y, x_1389.z));
  let x_1392 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1392.w);
  let x_1394 : vec4<f32> = u_xlat2;
  let x_1398 : vec3<f32> = (vec3<f32>(x_1394.x, x_1394.y, x_1394.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1399 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
  let x_1401 : vec4<f32> = u_xlat2;
  let x_1403 : vec3<f32> = exp2(vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
  let x_1404 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
  let x_1406 : vec4<f32> = u_xlat2;
  let x_1413 : vec3<f32> = ((vec3<f32>(x_1406.x, x_1406.y, x_1406.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1414 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
  let x_1421 : vec4<f32> = u_xlat0;
  let x_1424 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1421.x));
  u_xlatb0 = vec3<bool>(x_1424.x, x_1424.y, x_1424.z);
  let x_1427 : bool = u_xlatb0.x;
  if (x_1427) {
    let x_1432 : f32 = u_xlat11.x;
    x_1428 = x_1432;
  } else {
    let x_1435 : f32 = u_xlat2.x;
    x_1428 = x_1435;
  }
  let x_1436 : f32 = x_1428;
  u_xlat0.x = x_1436;
  let x_1439 : bool = u_xlatb0.y;
  if (x_1439) {
    let x_1444 : f32 = u_xlat11.y;
    x_1440 = x_1444;
  } else {
    let x_1447 : f32 = u_xlat2.y;
    x_1440 = x_1447;
  }
  let x_1448 : f32 = x_1440;
  u_xlat0.y = x_1448;
  let x_1451 : bool = u_xlatb0.z;
  if (x_1451) {
    let x_1456 : f32 = u_xlat11.z;
    x_1452 = x_1456;
  } else {
    let x_1459 : f32 = u_xlat2.z;
    x_1452 = x_1459;
  }
  let x_1460 : f32 = x_1452;
  u_xlat0.z = x_1460;
  let x_1462 : vec3<f32> = u_xlat1;
  let x_1467 : vec4<f32> = u_xlat0;
  let x_1469 : vec3<f32> = ((vec3<f32>(x_1462.x, x_1462.x, x_1462.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1467.x, x_1467.y, x_1467.z));
  let x_1470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
  let x_1472 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1472.x, x_1472.y, x_1472.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1476 : vec4<f32> = u_xlat0;
  let x_1479 : vec3<f32> = (vec3<f32>(x_1476.x, x_1476.y, x_1476.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1480 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
  let x_1482 : vec4<f32> = u_xlat2;
  let x_1485 : vec3<f32> = (vec3<f32>(x_1482.x, x_1482.y, x_1482.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1486 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1486.w);
  let x_1488 : vec4<f32> = u_xlat2;
  let x_1491 : vec3<f32> = max(abs(vec3<f32>(x_1488.x, x_1488.y, x_1488.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1492 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1491.x, x_1491.y, x_1491.z, x_1492.w);
  let x_1494 : vec4<f32> = u_xlat2;
  let x_1496 : vec3<f32> = log2(vec3<f32>(x_1494.x, x_1494.y, x_1494.z));
  let x_1497 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
  let x_1499 : vec4<f32> = u_xlat2;
  let x_1502 : vec3<f32> = (vec3<f32>(x_1499.x, x_1499.y, x_1499.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1503 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
  let x_1505 : vec4<f32> = u_xlat2;
  let x_1507 : vec3<f32> = exp2(vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
  let x_1508 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1507.x, x_1507.y, x_1507.z, x_1508.w);
  let x_1511 : vec4<f32> = u_xlat0;
  let x_1513 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1511.x));
  u_xlatb0 = vec3<bool>(x_1513.x, x_1513.y, x_1513.z);
  let x_1518 : bool = u_xlatb0.x;
  if (x_1518) {
    let x_1523 : f32 = u_xlat1.x;
    x_1519 = x_1523;
  } else {
    let x_1526 : f32 = u_xlat2.x;
    x_1519 = x_1526;
  }
  let x_1527 : f32 = x_1519;
  SV_Target0.x = x_1527;
  let x_1531 : bool = u_xlatb0.y;
  if (x_1531) {
    let x_1536 : f32 = u_xlat1.y;
    x_1532 = x_1536;
  } else {
    let x_1539 : f32 = u_xlat2.y;
    x_1532 = x_1539;
  }
  let x_1540 : f32 = x_1532;
  SV_Target0.y = x_1540;
  let x_1543 : bool = u_xlatb0.z;
  if (x_1543) {
    let x_1548 : f32 = u_xlat1.z;
    x_1544 = x_1548;
  } else {
    let x_1551 : f32 = u_xlat2.z;
    x_1544 = x_1551;
  }
  let x_1552 : f32 = x_1544;
  SV_Target0.z = x_1552;
  let x_1555 : f32 = u_xlat0.w;
  SV_Target0.w = x_1555;
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

