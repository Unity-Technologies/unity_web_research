struct PGlobals {
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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
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

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> u_xlat30 : f32;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat10 : f32;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_209 : f32;
  var x_235 : f32;
  var x_468 : f32;
  var x_693 : f32;
  var x_893 : f32;
  var x_1411 : f32;
  var x_1423 : f32;
  var x_1436 : f32;
  var x_1594 : f32;
  var x_1606 : f32;
  var x_1618 : f32;
  var x_1727 : f32;
  var x_1739 : f32;
  var x_1751 : f32;
  var x_1815 : f32;
  var x_1828 : f32;
  var x_1840 : f32;
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
  let x_1037 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
  let x_1039 : vec4<f32> = u_xlat1;
  let x_1043 : vec2<f32> = clamp(vec2<f32>(x_1039.x, x_1039.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1044 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
  let x_1046 : vec4<f32> = u_xlat1;
  let x_1049 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1051 : vec2<f32> = (vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1049, x_1049));
  let x_1052 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
  let x_1057 : vec4<f32> = u_xlat1;
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
  let x_1092 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1092.w);
  let x_1094 : vec4<f32> = u_xlat1;
  let x_1098 : vec2<f32> = clamp(vec2<f32>(x_1094.x, x_1094.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1099 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
  let x_1101 : vec4<f32> = u_xlat1;
  let x_1104 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1106 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(x_1104, x_1104));
  let x_1107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
  let x_1112 : vec4<f32> = u_xlat1;
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
  let x_1176 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
  let x_1178 : vec4<f32> = u_xlat1;
  let x_1182 : vec2<f32> = clamp(vec2<f32>(x_1178.x, x_1178.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
  let x_1185 : vec4<f32> = u_xlat1;
  let x_1188 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1190 : vec2<f32> = (vec2<f32>(x_1185.x, x_1185.y) * vec2<f32>(x_1188, x_1188));
  let x_1191 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
  let x_1196 : vec4<f32> = u_xlat1;
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
  let x_1217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1216.x, x_1216.y, x_1217.z, x_1217.w);
  let x_1224 : vec4<f32> = u_xlat1;
  let x_1226 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_1224.x, x_1224.y));
  let x_1227 : vec3<f32> = vec3<f32>(x_1226.x, x_1226.y, x_1226.z);
  let x_1228 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
  let x_1230 : vec4<f32> = u_xlat2;
  u_xlat3 = (x_1230 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_1234 : vec4<f32> = u_xlat1;
  let x_1237 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1239 : vec3<f32> = (vec3<f32>(x_1234.x, x_1234.y, x_1234.z) * vec3<f32>(x_1237.z, x_1237.z, x_1237.z));
  let x_1240 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  u_xlat1.w = 0.0f;
  let x_1243 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1243 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_1246 : vec4<f32> = u_xlat2;
  let x_1250 : vec3<f32> = x_26.x_Bloom_Color;
  let x_1251 : vec3<f32> = (vec3<f32>(x_1246.x, x_1246.y, x_1246.z) * x_1250);
  let x_1252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1255 : f32 = u_xlat2.w;
  u_xlat4.w = (x_1255 * 0.0625f);
  let x_1258 : vec4<f32> = u_xlat0;
  let x_1259 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_1258 + x_1259);
  let x_1261 : vec4<f32> = u_xlat1;
  let x_1262 : vec4<f32> = u_xlat3;
  let x_1264 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_1261 * x_1262) + x_1264);
  let x_1267 : vec2<f32> = vs_TEXCOORD1;
  let x_1270 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1274 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1276 : vec2<f32> = ((x_1267 * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1274.z, x_1274.w));
  let x_1277 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1276.x, x_1276.y, x_1277.z, x_1277.w);
  let x_1284 : vec4<f32> = u_xlat1;
  let x_1286 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1284.x, x_1284.y));
  let x_1287 : vec3<f32> = vec3<f32>(x_1286.x, x_1286.y, x_1286.z);
  let x_1288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
  let x_1290 : vec4<f32> = u_xlat0;
  let x_1291 : vec3<f32> = vec3<f32>(x_1290.x, x_1290.y, x_1290.z);
  let x_1292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  let x_1294 : vec4<f32> = u_xlat2;
  let x_1298 : vec3<f32> = clamp(vec3<f32>(x_1294.x, x_1294.y, x_1294.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1299 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
  let x_1301 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1301.x, x_1301.y, x_1301.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1308 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_1308);
  let x_1312 : f32 = x_26.x_Grain_Params1.x;
  let x_1313 : f32 = u_xlat31;
  u_xlat31 = ((x_1312 * -(x_1313)) + 1.0f);
  let x_1317 : vec4<f32> = u_xlat0;
  let x_1319 : vec4<f32> = u_xlat1;
  let x_1321 : vec3<f32> = (vec3<f32>(x_1317.x, x_1317.y, x_1317.z) * vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
  let x_1322 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
  let x_1324 : vec4<f32> = u_xlat1;
  let x_1327 : f32 = x_26.x_Grain_Params1.y;
  let x_1329 : f32 = x_26.x_Grain_Params1.y;
  let x_1331 : f32 = x_26.x_Grain_Params1.y;
  let x_1333 : vec3<f32> = (vec3<f32>(x_1324.x, x_1324.y, x_1324.z) * vec3<f32>(x_1327, x_1329, x_1331));
  let x_1334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
  let x_1336 : vec4<f32> = u_xlat1;
  let x_1338 : f32 = u_xlat31;
  let x_1341 : vec4<f32> = u_xlat0;
  let x_1343 : vec3<f32> = ((vec3<f32>(x_1336.x, x_1336.y, x_1336.z) * vec3<f32>(x_1338, x_1338, x_1338)) + vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : vec4<f32> = u_xlat0;
  let x_1350 : vec3<f32> = clamp(vec3<f32>(x_1346.x, x_1346.y, x_1346.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1351 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
  let x_1355 : f32 = u_xlat0.w;
  u_xlat30 = x_1355;
  let x_1356 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1356, 0.0f, 1.0f);
  let x_1358 : vec4<f32> = u_xlat0;
  let x_1362 : vec3<f32> = (vec3<f32>(x_1358.z, x_1358.x, x_1358.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1363 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1363.w);
  let x_1365 : vec4<f32> = u_xlat0;
  let x_1369 : vec3<f32> = max(vec3<f32>(x_1365.z, x_1365.x, x_1365.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1370 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
  let x_1372 : vec4<f32> = u_xlat2;
  let x_1374 : vec3<f32> = log2(vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1375 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
  let x_1377 : vec4<f32> = u_xlat2;
  let x_1381 : vec3<f32> = (vec3<f32>(x_1377.x, x_1377.y, x_1377.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1382 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
  let x_1384 : vec4<f32> = u_xlat2;
  let x_1386 : vec3<f32> = exp2(vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
  let x_1389 : vec4<f32> = u_xlat2;
  let x_1396 : vec3<f32> = ((vec3<f32>(x_1389.x, x_1389.y, x_1389.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1397 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
  let x_1404 : vec4<f32> = u_xlat0;
  let x_1407 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1404.z, x_1404.x, x_1404.y, x_1404.z));
  u_xlatb0 = vec3<bool>(x_1407.x, x_1407.y, x_1407.z);
  let x_1410 : bool = u_xlatb0.x;
  if (x_1410) {
    let x_1415 : f32 = u_xlat1.x;
    x_1411 = x_1415;
  } else {
    let x_1418 : f32 = u_xlat2.x;
    x_1411 = x_1418;
  }
  let x_1419 : f32 = x_1411;
  u_xlat0.x = x_1419;
  let x_1422 : bool = u_xlatb0.y;
  if (x_1422) {
    let x_1427 : f32 = u_xlat1.y;
    x_1423 = x_1427;
  } else {
    let x_1430 : f32 = u_xlat2.y;
    x_1423 = x_1430;
  }
  let x_1431 : f32 = x_1423;
  u_xlat0.y = x_1431;
  let x_1435 : bool = u_xlatb0.z;
  if (x_1435) {
    let x_1440 : f32 = u_xlat1.z;
    x_1436 = x_1440;
  } else {
    let x_1443 : f32 = u_xlat2.z;
    x_1436 = x_1443;
  }
  let x_1444 : f32 = x_1436;
  u_xlat0.z = x_1444;
  let x_1446 : vec4<f32> = u_xlat0;
  let x_1450 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1452 : vec3<f32> = (vec3<f32>(x_1446.x, x_1446.y, x_1446.z) * vec3<f32>(x_1450.z, x_1450.z, x_1450.z));
  let x_1453 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
  let x_1457 : f32 = u_xlat1.x;
  u_xlat10 = floor(x_1457);
  let x_1460 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1462 : vec2<f32> = (vec2<f32>(x_1460.x, x_1460.y) * vec2<f32>(0.5f, 0.5f));
  let x_1463 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1462.x, x_1463.y, x_1463.z, x_1462.y);
  let x_1465 : vec4<f32> = u_xlat1;
  let x_1468 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1471 : vec4<f32> = u_xlat1;
  let x_1473 : vec2<f32> = ((vec2<f32>(x_1465.y, x_1465.z) * vec2<f32>(x_1468.x, x_1468.y)) + vec2<f32>(x_1471.x, x_1471.w));
  let x_1474 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1474.x, x_1473.x, x_1473.y, x_1474.w);
  let x_1476 : f32 = u_xlat10;
  let x_1478 : f32 = x_26.x_Lut2D_Params.y;
  let x_1481 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1476 * x_1478) + x_1481);
  let x_1489 : vec4<f32> = u_xlat1;
  let x_1491 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1489.x, x_1489.z));
  let x_1492 : vec3<f32> = vec3<f32>(x_1491.x, x_1491.y, x_1491.z);
  let x_1493 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1493.w);
  let x_1496 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_1496;
  u_xlat3.y = 0.0f;
  let x_1499 : vec4<f32> = u_xlat1;
  let x_1501 : vec4<f32> = u_xlat3;
  let x_1503 : vec2<f32> = (vec2<f32>(x_1499.x, x_1499.z) + vec2<f32>(x_1501.x, x_1501.y));
  let x_1504 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1503.x, x_1503.y, x_1504.z, x_1504.w);
  let x_1509 : vec4<f32> = u_xlat1;
  let x_1511 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1509.x, x_1509.y));
  let x_1512 : vec3<f32> = vec3<f32>(x_1511.x, x_1511.y, x_1511.z);
  let x_1513 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
  let x_1516 : f32 = u_xlat0.x;
  let x_1518 : f32 = x_26.x_Lut2D_Params.z;
  let x_1520 : f32 = u_xlat10;
  u_xlat0.x = ((x_1516 * x_1518) + -(x_1520));
  let x_1524 : vec4<f32> = u_xlat2;
  let x_1527 : vec4<f32> = u_xlat1;
  let x_1529 : vec3<f32> = (-(vec3<f32>(x_1524.x, x_1524.y, x_1524.z)) + vec3<f32>(x_1527.x, x_1527.y, x_1527.z));
  let x_1530 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1529.x, x_1529.y, x_1529.z, x_1530.w);
  let x_1532 : vec4<f32> = u_xlat0;
  let x_1534 : vec4<f32> = u_xlat1;
  let x_1537 : vec4<f32> = u_xlat2;
  let x_1539 : vec3<f32> = ((vec3<f32>(x_1532.x, x_1532.x, x_1532.x) * vec3<f32>(x_1534.x, x_1534.y, x_1534.z)) + vec3<f32>(x_1537.x, x_1537.y, x_1537.z));
  let x_1540 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1540.w);
  let x_1542 : vec4<f32> = u_xlat0;
  let x_1546 : vec3<f32> = (vec3<f32>(x_1542.x, x_1542.y, x_1542.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1547 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1547.w);
  let x_1549 : vec4<f32> = u_xlat0;
  let x_1553 : vec3<f32> = (vec3<f32>(x_1549.x, x_1549.y, x_1549.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1554 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1554.w);
  let x_1556 : vec4<f32> = u_xlat2;
  let x_1560 : vec3<f32> = (vec3<f32>(x_1556.x, x_1556.y, x_1556.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1561 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1561.w);
  let x_1563 : vec4<f32> = u_xlat2;
  let x_1566 : vec3<f32> = max(abs(vec3<f32>(x_1563.x, x_1563.y, x_1563.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1567 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
  let x_1569 : vec4<f32> = u_xlat2;
  let x_1571 : vec3<f32> = log2(vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
  let x_1572 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
  let x_1574 : vec4<f32> = u_xlat2;
  let x_1578 : vec3<f32> = (vec3<f32>(x_1574.x, x_1574.y, x_1574.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1579 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
  let x_1581 : vec4<f32> = u_xlat2;
  let x_1583 : vec3<f32> = exp2(vec3<f32>(x_1581.x, x_1581.y, x_1581.z));
  let x_1584 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1584.w);
  let x_1588 : vec4<f32> = u_xlat0;
  let x_1590 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1588.x, x_1588.y, x_1588.z, x_1588.x));
  u_xlatb0 = vec3<bool>(x_1590.x, x_1590.y, x_1590.z);
  let x_1593 : bool = u_xlatb0.x;
  if (x_1593) {
    let x_1598 : f32 = u_xlat1.x;
    x_1594 = x_1598;
  } else {
    let x_1601 : f32 = u_xlat2.x;
    x_1594 = x_1601;
  }
  let x_1602 : f32 = x_1594;
  u_xlat0.x = x_1602;
  let x_1605 : bool = u_xlatb0.y;
  if (x_1605) {
    let x_1610 : f32 = u_xlat1.y;
    x_1606 = x_1610;
  } else {
    let x_1613 : f32 = u_xlat2.y;
    x_1606 = x_1613;
  }
  let x_1614 : f32 = x_1606;
  u_xlat0.y = x_1614;
  let x_1617 : bool = u_xlatb0.z;
  if (x_1617) {
    let x_1622 : f32 = u_xlat1.z;
    x_1618 = x_1622;
  } else {
    let x_1625 : f32 = u_xlat2.z;
    x_1618 = x_1625;
  }
  let x_1626 : f32 = x_1618;
  u_xlat0.z = x_1626;
  let x_1628 : vec2<f32> = vs_TEXCOORD0;
  let x_1631 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1635 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1637 : vec2<f32> = ((x_1628 * vec2<f32>(x_1631.x, x_1631.y)) + vec2<f32>(x_1635.z, x_1635.w));
  let x_1638 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1637.x, x_1637.y, x_1638.z, x_1638.w);
  let x_1645 : vec4<f32> = u_xlat1;
  let x_1647 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1645.x, x_1645.y));
  u_xlat1.x = x_1647.w;
  let x_1651 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1651 * 2.0f) + -1.0f);
  let x_1656 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1656 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1662 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1662, 0.0f, 1.0f);
  let x_1666 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1666 * 2.0f) + -1.0f);
  let x_1671 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1671)) + 1.0f);
  let x_1677 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1677);
  let x_1681 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1681) + 1.0f);
  let x_1686 : f32 = u_xlat1.x;
  let x_1688 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1686 * x_1688);
  let x_1691 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1691.x, x_1691.y, x_1691.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1694 : vec4<f32> = u_xlat0;
  let x_1697 : vec3<f32> = max(abs(vec3<f32>(x_1694.x, x_1694.y, x_1694.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1698 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1698.w);
  let x_1700 : vec4<f32> = u_xlat2;
  let x_1702 : vec3<f32> = log2(vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
  let x_1705 : vec4<f32> = u_xlat2;
  let x_1707 : vec3<f32> = (vec3<f32>(x_1705.x, x_1705.y, x_1705.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1708 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
  let x_1710 : vec4<f32> = u_xlat2;
  let x_1712 : vec3<f32> = exp2(vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
  let x_1713 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
  let x_1715 : vec4<f32> = u_xlat2;
  let x_1718 : vec3<f32> = ((vec3<f32>(x_1715.x, x_1715.y, x_1715.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1719 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1719.w);
  let x_1721 : vec4<f32> = u_xlat0;
  let x_1723 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1721.x, x_1721.y, x_1721.z, x_1721.x));
  u_xlatb0 = vec3<bool>(x_1723.x, x_1723.y, x_1723.z);
  let x_1726 : bool = u_xlatb0.x;
  if (x_1726) {
    let x_1731 : f32 = u_xlat11.x;
    x_1727 = x_1731;
  } else {
    let x_1734 : f32 = u_xlat2.x;
    x_1727 = x_1734;
  }
  let x_1735 : f32 = x_1727;
  u_xlat0.x = x_1735;
  let x_1738 : bool = u_xlatb0.y;
  if (x_1738) {
    let x_1743 : f32 = u_xlat11.y;
    x_1739 = x_1743;
  } else {
    let x_1746 : f32 = u_xlat2.y;
    x_1739 = x_1746;
  }
  let x_1747 : f32 = x_1739;
  u_xlat0.y = x_1747;
  let x_1750 : bool = u_xlatb0.z;
  if (x_1750) {
    let x_1755 : f32 = u_xlat11.z;
    x_1751 = x_1755;
  } else {
    let x_1758 : f32 = u_xlat2.z;
    x_1751 = x_1758;
  }
  let x_1759 : f32 = x_1751;
  u_xlat0.z = x_1759;
  let x_1761 : vec4<f32> = u_xlat1;
  let x_1766 : vec4<f32> = u_xlat0;
  let x_1768 : vec3<f32> = ((vec3<f32>(x_1761.x, x_1761.x, x_1761.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1766.x, x_1766.y, x_1766.z));
  let x_1769 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
  let x_1771 : vec4<f32> = u_xlat0;
  let x_1773 : vec3<f32> = (vec3<f32>(x_1771.x, x_1771.y, x_1771.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
  let x_1776 : vec4<f32> = u_xlat0;
  let x_1778 : vec3<f32> = (vec3<f32>(x_1776.x, x_1776.y, x_1776.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1779 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
  let x_1781 : vec4<f32> = u_xlat2;
  let x_1783 : vec3<f32> = (vec3<f32>(x_1781.x, x_1781.y, x_1781.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1784 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
  let x_1786 : vec4<f32> = u_xlat2;
  let x_1789 : vec3<f32> = max(abs(vec3<f32>(x_1786.x, x_1786.y, x_1786.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1790 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1789.x, x_1789.y, x_1789.z, x_1790.w);
  let x_1792 : vec4<f32> = u_xlat2;
  let x_1794 : vec3<f32> = log2(vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
  let x_1795 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1795.w);
  let x_1797 : vec4<f32> = u_xlat2;
  let x_1799 : vec3<f32> = (vec3<f32>(x_1797.x, x_1797.y, x_1797.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1800 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
  let x_1802 : vec4<f32> = u_xlat2;
  let x_1804 : vec3<f32> = exp2(vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
  let x_1807 : vec4<f32> = u_xlat0;
  let x_1809 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1807.x));
  u_xlatb0 = vec3<bool>(x_1809.x, x_1809.y, x_1809.z);
  let x_1814 : bool = u_xlatb0.x;
  if (x_1814) {
    let x_1819 : f32 = u_xlat1.x;
    x_1815 = x_1819;
  } else {
    let x_1822 : f32 = u_xlat2.x;
    x_1815 = x_1822;
  }
  let x_1823 : f32 = x_1815;
  SV_Target0.x = x_1823;
  let x_1827 : bool = u_xlatb0.y;
  if (x_1827) {
    let x_1832 : f32 = u_xlat1.y;
    x_1828 = x_1832;
  } else {
    let x_1835 : f32 = u_xlat2.y;
    x_1828 = x_1835;
  }
  let x_1836 : f32 = x_1828;
  SV_Target0.y = x_1836;
  let x_1839 : bool = u_xlatb0.z;
  if (x_1839) {
    let x_1844 : f32 = u_xlat1.z;
    x_1840 = x_1844;
  } else {
    let x_1847 : f32 = u_xlat2.z;
    x_1840 = x_1847;
  }
  let x_1848 : f32 = x_1840;
  SV_Target0.z = x_1848;
  let x_1850 : f32 = u_xlat30;
  SV_Target0.w = x_1850;
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

