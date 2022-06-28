struct PGlobals {
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
  x_LumaInAlpha : f32,
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

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatb37 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlatb7 : bool;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_209 : f32;
  var x_235 : f32;
  var x_472 : f32;
  var x_699 : f32;
  var x_901 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1332 : f32;
  var x_1344 : f32;
  var x_1357 : f32;
  var x_1510 : f32;
  var x_1522 : f32;
  var x_1534 : f32;
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
    let x_464 : f32 = u_xlat1.x;
    let x_466 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_464 < -(x_466));
    let x_471 : bool = u_xlatb1.x;
    if (x_471) {
      let x_476 : f32 = u_xlat7.x;
      x_472 = -(x_476);
    } else {
      let x_480 : f32 = u_xlat7.x;
      x_472 = x_480;
    }
    let x_481 : f32 = x_472;
    u_xlat1.x = x_481;
    let x_483 : f32 = u_xlat32;
    let x_485 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_483 * x_485) + -1.0f);
    let x_489 : vec4<f32> = u_xlat0;
    let x_491 : vec4<f32> = u_xlat1;
    let x_494 : vec2<f32> = u_xlat20;
    let x_495 : vec2<f32> = ((vec2<f32>(x_489.x, x_489.y) * vec2<f32>(x_491.x, x_491.x)) + x_494);
    let x_496 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_495.x, x_495.y, x_496.z);
  }
  let x_498 : vec3<f32> = u_xlat12;
  let x_499 : vec2<f32> = vec2<f32>(x_498.x, x_498.y);
  let x_500 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_499.x, x_499.y, x_500.z);
  let x_502 : vec3<f32> = u_xlat12;
  let x_506 : vec2<f32> = clamp(vec2<f32>(x_502.x, x_502.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_507 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_506.x, x_506.y, x_507.z);
  let x_509 : vec3<f32> = u_xlat12;
  let x_513 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_515 : vec2<f32> = (vec2<f32>(x_509.x, x_509.y) * vec2<f32>(x_513, x_513));
  let x_516 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
  let x_523 : vec4<f32> = u_xlat0;
  let x_525 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_523.x, x_523.y), 0.0f);
  u_xlat0 = x_525;
  let x_526 : vec4<f32> = u_xlat3;
  let x_531 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((x_526 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_531.x, x_531.y, x_531.x, x_531.y));
  let x_534 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_534 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_537 : vec4<f32> = u_xlat3;
  let x_539 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat7 = ((x_537 * vec4<f32>(x_539.z, x_539.z, x_539.z, x_539.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_544 : vec4<f32> = u_xlat3;
  let x_546 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_550 : vec4<f32> = x_26.x_Distortion_CenterScale;
  u_xlat3 = ((x_544 * vec4<f32>(x_546.z, x_546.z, x_546.z, x_546.z)) + -(vec4<f32>(x_550.x, x_550.y, x_550.x, x_550.y)));
  let x_554 : vec4<f32> = u_xlat3;
  let x_556 : vec4<f32> = x_26.x_Distortion_CenterScale;
  u_xlat3 = (x_554 * vec4<f32>(x_556.z, x_556.w, x_556.z, x_556.w));
  let x_559 : vec4<f32> = u_xlat3;
  let x_561 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_559.x, x_559.y), vec2<f32>(x_561.x, x_561.y));
  let x_566 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_566);
  let x_569 : bool = u_xlatb11;
  if (x_569) {
    let x_572 : vec4<f32> = u_xlat1;
    let x_575 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_577 : vec2<f32> = (vec2<f32>(x_572.x, x_572.x) * vec2<f32>(x_575.x, x_575.y));
    let x_578 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_577.x, x_577.y, x_578.z);
    let x_581 : f32 = u_xlat12.x;
    u_xlat8.x = sin(x_581);
    let x_586 : f32 = u_xlat12.x;
    u_xlat9 = cos(x_586);
    let x_589 : f32 = u_xlat8.x;
    let x_590 : f32 = u_xlat9;
    u_xlat12.x = (x_589 / x_590);
    let x_594 : f32 = u_xlat12.y;
    u_xlat22 = (1.0f / x_594);
    let x_597 : f32 = u_xlat12.x;
    let x_598 : f32 = u_xlat22;
    u_xlat12.x = ((x_597 * x_598) + -1.0f);
    let x_602 : vec4<f32> = u_xlat3;
    let x_604 : vec3<f32> = u_xlat12;
    let x_607 : vec4<f32> = u_xlat7;
    let x_609 : vec2<f32> = ((vec2<f32>(x_602.x, x_602.y) * vec2<f32>(x_604.x, x_604.x)) + vec2<f32>(x_607.x, x_607.y));
    let x_610 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_609.x, x_609.y, x_610.z);
  } else {
    let x_614 : f32 = u_xlat1.x;
    u_xlat32 = (1.0f / x_614);
    let x_616 : f32 = u_xlat32;
    let x_618 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat32 = (x_616 * x_618);
    let x_621 : f32 = u_xlat1.x;
    let x_623 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_621 * x_623);
    let x_627 : f32 = u_xlat1.x;
    u_xlat8.x = min(abs(x_627), 1.0f);
    let x_633 : f32 = u_xlat1.x;
    u_xlat18 = max(abs(x_633), 1.0f);
    let x_636 : f32 = u_xlat18;
    u_xlat18 = (1.0f / x_636);
    let x_638 : f32 = u_xlat18;
    let x_640 : f32 = u_xlat8.x;
    u_xlat8.x = (x_638 * x_640);
    let x_644 : f32 = u_xlat8.x;
    let x_646 : f32 = u_xlat8.x;
    u_xlat18 = (x_644 * x_646);
    let x_649 : f32 = u_xlat18;
    u_xlat28 = ((x_649 * 0.0208351f) + -0.085133001f);
    let x_652 : f32 = u_xlat18;
    let x_653 : f32 = u_xlat28;
    u_xlat28 = ((x_652 * x_653) + 0.180141002f);
    let x_656 : f32 = u_xlat18;
    let x_657 : f32 = u_xlat28;
    u_xlat28 = ((x_656 * x_657) + -0.330299497f);
    let x_660 : f32 = u_xlat18;
    let x_661 : f32 = u_xlat28;
    u_xlat18 = ((x_660 * x_661) + 0.999866009f);
    let x_664 : f32 = u_xlat18;
    let x_666 : f32 = u_xlat8.x;
    u_xlat28 = (x_664 * x_666);
    let x_670 : f32 = u_xlat1.x;
    u_xlatb38 = (1.0f < abs(x_670));
    let x_673 : f32 = u_xlat28;
    u_xlat28 = ((x_673 * -2.0f) + 1.570796371f);
    let x_676 : bool = u_xlatb38;
    let x_677 : f32 = u_xlat28;
    u_xlat28 = select(0.0f, x_677, x_676);
    let x_680 : f32 = u_xlat8.x;
    let x_681 : f32 = u_xlat18;
    let x_683 : f32 = u_xlat28;
    u_xlat8.x = ((x_680 * x_681) + x_683);
    let x_687 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_687, 1.0f);
    let x_691 : f32 = u_xlat1.x;
    let x_693 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_691 < -(x_693));
    let x_698 : bool = u_xlatb1.x;
    if (x_698) {
      let x_703 : f32 = u_xlat8.x;
      x_699 = -(x_703);
    } else {
      let x_707 : f32 = u_xlat8.x;
      x_699 = x_707;
    }
    let x_708 : f32 = x_699;
    u_xlat1.x = x_708;
    let x_710 : f32 = u_xlat32;
    let x_712 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_710 * x_712) + -1.0f);
    let x_716 : vec4<f32> = u_xlat3;
    let x_718 : vec4<f32> = u_xlat1;
    let x_721 : vec4<f32> = u_xlat7;
    let x_723 : vec2<f32> = ((vec2<f32>(x_716.x, x_716.y) * vec2<f32>(x_718.x, x_718.x)) + vec2<f32>(x_721.x, x_721.y));
    let x_724 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_723.x, x_723.y, x_724.z);
  }
  let x_726 : vec3<f32> = u_xlat12;
  let x_727 : vec2<f32> = vec2<f32>(x_726.x, x_726.y);
  let x_728 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_727.x, x_727.y, x_728.z);
  let x_730 : vec3<f32> = u_xlat12;
  let x_734 : vec2<f32> = clamp(vec2<f32>(x_730.x, x_730.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_735 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_734.x, x_734.y, x_735.z);
  let x_737 : vec3<f32> = u_xlat12;
  let x_740 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_742 : vec2<f32> = (vec2<f32>(x_737.x, x_737.y) * vec2<f32>(x_740, x_740));
  let x_743 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_742.x, x_742.y, x_743.z);
  let x_748 : vec3<f32> = u_xlat12;
  let x_750 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_748.x, x_748.y), 0.0f);
  u_xlat8 = x_750;
  let x_751 : vec4<f32> = u_xlat3;
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_751.z, x_751.w), vec2<f32>(x_753.z, x_753.w));
  let x_758 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_758);
  let x_761 : bool = u_xlatb11;
  if (x_761) {
    let x_764 : vec4<f32> = u_xlat1;
    let x_767 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_769 : vec2<f32> = (vec2<f32>(x_764.x, x_764.x) * vec2<f32>(x_767.x, x_767.y));
    let x_770 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_769.x, x_769.y, x_770.z);
    let x_773 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_773);
    let x_777 : f32 = u_xlat12.x;
    u_xlat7.x = cos(x_777);
    let x_782 : f32 = u_xlat3.x;
    let x_784 : f32 = u_xlat7.x;
    u_xlat11.x = (x_782 / x_784);
    let x_788 : f32 = u_xlat12.y;
    u_xlat12.x = (1.0f / x_788);
    let x_792 : f32 = u_xlat11.x;
    let x_794 : f32 = u_xlat12.x;
    u_xlat11.x = ((x_792 * x_794) + -1.0f);
    let x_798 : vec4<f32> = u_xlat3;
    let x_800 : vec3<f32> = u_xlat11;
    let x_803 : vec4<f32> = u_xlat7;
    let x_805 : vec2<f32> = ((vec2<f32>(x_798.z, x_798.w) * vec2<f32>(x_800.x, x_800.x)) + vec2<f32>(x_803.z, x_803.w));
    let x_806 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_805.x, x_805.y, x_806.z);
  } else {
    let x_810 : f32 = u_xlat1.x;
    u_xlat11.x = (1.0f / x_810);
    let x_814 : f32 = u_xlat11.x;
    let x_816 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat11.x = (x_814 * x_816);
    let x_820 : f32 = u_xlat1.x;
    let x_822 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_820 * x_822);
    let x_826 : f32 = u_xlat1.x;
    u_xlat32 = min(abs(x_826), 1.0f);
    let x_830 : f32 = u_xlat1.x;
    u_xlat3.x = max(abs(x_830), 1.0f);
    let x_835 : f32 = u_xlat3.x;
    u_xlat3.x = (1.0f / x_835);
    let x_838 : f32 = u_xlat32;
    let x_840 : f32 = u_xlat3.x;
    u_xlat32 = (x_838 * x_840);
    let x_842 : f32 = u_xlat32;
    let x_843 : f32 = u_xlat32;
    u_xlat3.x = (x_842 * x_843);
    let x_848 : f32 = u_xlat3.x;
    u_xlat13 = ((x_848 * 0.0208351f) + -0.085133001f);
    let x_852 : f32 = u_xlat3.x;
    let x_853 : f32 = u_xlat13;
    u_xlat13 = ((x_852 * x_853) + 0.180141002f);
    let x_857 : f32 = u_xlat3.x;
    let x_858 : f32 = u_xlat13;
    u_xlat13 = ((x_857 * x_858) + -0.330299497f);
    let x_862 : f32 = u_xlat3.x;
    let x_863 : f32 = u_xlat13;
    u_xlat3.x = ((x_862 * x_863) + 0.999866009f);
    let x_867 : f32 = u_xlat32;
    let x_869 : f32 = u_xlat3.x;
    u_xlat13 = (x_867 * x_869);
    let x_873 : f32 = u_xlat1.x;
    u_xlatb7 = (1.0f < abs(x_873));
    let x_876 : f32 = u_xlat13;
    u_xlat13 = ((x_876 * -2.0f) + 1.570796371f);
    let x_879 : bool = u_xlatb7;
    let x_880 : f32 = u_xlat13;
    u_xlat13 = select(0.0f, x_880, x_879);
    let x_882 : f32 = u_xlat32;
    let x_884 : f32 = u_xlat3.x;
    let x_886 : f32 = u_xlat13;
    u_xlat32 = ((x_882 * x_884) + x_886);
    let x_889 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_889, 1.0f);
    let x_893 : f32 = u_xlat1.x;
    let x_895 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_893 < -(x_895));
    let x_900 : bool = u_xlatb1.x;
    if (x_900) {
      let x_904 : f32 = u_xlat32;
      x_901 = -(x_904);
    } else {
      let x_907 : f32 = u_xlat32;
      x_901 = x_907;
    }
    let x_908 : f32 = x_901;
    u_xlat1.x = x_908;
    let x_911 : f32 = u_xlat11.x;
    let x_913 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_911 * x_913) + -1.0f);
    let x_917 : vec4<f32> = u_xlat3;
    let x_919 : vec4<f32> = u_xlat1;
    let x_922 : vec4<f32> = u_xlat7;
    let x_924 : vec2<f32> = ((vec2<f32>(x_917.z, x_917.w) * vec2<f32>(x_919.x, x_919.x)) + vec2<f32>(x_922.z, x_922.w));
    let x_925 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_924.x, x_924.y, x_925.z);
  }
  let x_927 : vec3<f32> = u_xlat12;
  let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
  let x_929 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_928.x, x_928.y, x_929.z);
  let x_931 : vec3<f32> = u_xlat12;
  let x_935 : vec2<f32> = clamp(vec2<f32>(x_931.x, x_931.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_936 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_935.x, x_935.y, x_936.z);
  let x_938 : vec3<f32> = u_xlat12;
  let x_941 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_943 : vec2<f32> = (vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941, x_941));
  let x_944 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
  let x_949 : vec4<f32> = u_xlat1;
  let x_951 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_949.x, x_949.y), 0.0f);
  u_xlat3 = x_951;
  u_xlat4.w = 1.0f;
  u_xlat5.w = 1.0f;
  let x_954 : vec4<f32> = u_xlat5;
  let x_955 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_954 * x_955);
  let x_957 : vec4<f32> = u_xlat0;
  let x_958 : vec4<f32> = u_xlat4;
  let x_960 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_957 * x_958) + x_960);
  u_xlat6.w = 1.0f;
  let x_963 : vec4<f32> = u_xlat3;
  let x_964 : vec4<f32> = u_xlat6;
  let x_966 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_963 * x_964) + x_966);
  let x_968 : vec4<f32> = u_xlat4;
  let x_970 : vec4<f32> = u_xlat5;
  u_xlat12 = (vec3<f32>(x_968.x, x_968.y, x_968.z) + vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_973 : vec4<f32> = u_xlat6;
  let x_975 : vec3<f32> = u_xlat12;
  let x_976 : vec3<f32> = (vec3<f32>(x_973.x, x_973.y, x_973.z) + x_975);
  let x_977 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  u_xlat3.w = 3.0f;
  let x_981 : vec4<f32> = u_xlat0;
  let x_982 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_981 / x_982);
  let x_984 : vec4<f32> = u_xlat2;
  let x_986 : vec4<f32> = u_xlat0;
  let x_988 : vec3<f32> = (vec3<f32>(x_984.x, x_984.x, x_984.x) * vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_989 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_993 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat2 = (vec4<f32>(x_993.x, x_993.y, x_993.x, x_993.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_997 : vec4<f32> = u_xlat2;
  let x_1003 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1006 : vec2<f32> = u_xlat21;
  u_xlat3 = ((-(vec4<f32>(x_997.x, x_997.y, x_997.w, x_997.y)) * vec4<f32>(x_1003.x, x_1003.x, x_1003.x, x_1003.x)) + vec4<f32>(x_1006.x, x_1006.y, x_1006.x, x_1006.y));
  let x_1009 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1009, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1013 : vec4<f32> = u_xlat3;
  let x_1015 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_1013 * vec4<f32>(x_1015, x_1015, x_1015, x_1015));
  let x_1023 : vec4<f32> = u_xlat3;
  let x_1025 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1023.x, x_1023.y));
  u_xlat4 = x_1025;
  let x_1029 : vec4<f32> = u_xlat3;
  let x_1031 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1029.z, x_1029.w));
  u_xlat3 = x_1031;
  let x_1032 : vec4<f32> = u_xlat3;
  let x_1034 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_1032 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1034);
  let x_1036 : vec4<f32> = u_xlat2;
  let x_1040 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1043 : vec2<f32> = u_xlat21;
  let x_1044 : vec2<f32> = ((-(vec2<f32>(x_1036.z, x_1036.y)) * vec2<f32>(x_1040.x, x_1040.x)) + x_1043);
  let x_1045 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat1;
  let x_1051 : vec2<f32> = clamp(vec2<f32>(x_1047.x, x_1047.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1052 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat1;
  let x_1057 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1059 : vec2<f32> = (vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(x_1057, x_1057));
  let x_1060 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
  let x_1065 : vec4<f32> = u_xlat1;
  let x_1067 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1065.x, x_1065.y));
  u_xlat4 = x_1067;
  let x_1068 : vec4<f32> = u_xlat3;
  let x_1069 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1068 + x_1069);
  let x_1071 : vec4<f32> = u_xlat2;
  let x_1074 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1077 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_1071.z, x_1071.w, x_1071.x, x_1071.w) * vec4<f32>(x_1074.x, x_1074.x, x_1074.x, x_1074.x)) + vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y));
  let x_1080 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_1080, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1084 : vec4<f32> = u_xlat4;
  let x_1086 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_1084 * vec4<f32>(x_1086, x_1086, x_1086, x_1086));
  let x_1092 : vec4<f32> = u_xlat4;
  let x_1094 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1092.x, x_1092.y));
  u_xlat5 = x_1094;
  let x_1095 : vec4<f32> = u_xlat5;
  let x_1097 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1095 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1097);
  let x_1099 : vec2<f32> = u_xlat21;
  let x_1100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
  let x_1102 : vec4<f32> = u_xlat1;
  let x_1106 : vec2<f32> = clamp(vec2<f32>(x_1102.x, x_1102.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
  let x_1109 : vec4<f32> = u_xlat1;
  let x_1112 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1114 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112, x_1112));
  let x_1115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
  let x_1120 : vec4<f32> = u_xlat1;
  let x_1122 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1120.x, x_1120.y));
  u_xlat5 = x_1122;
  let x_1123 : vec4<f32> = u_xlat5;
  let x_1127 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1123 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_1127);
  let x_1132 : vec4<f32> = u_xlat4;
  let x_1134 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1132.z, x_1132.w));
  u_xlat4 = x_1134;
  let x_1135 : vec4<f32> = u_xlat4;
  let x_1137 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1135 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1137);
  let x_1139 : vec4<f32> = u_xlat2;
  let x_1142 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1145 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_1139.z, x_1139.y, x_1139.w, x_1139.y) * vec4<f32>(x_1142.x, x_1142.x, x_1142.x, x_1142.x)) + vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y));
  let x_1148 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_1148, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1152 : vec4<f32> = u_xlat4;
  let x_1154 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_1152 * vec4<f32>(x_1154, x_1154, x_1154, x_1154));
  let x_1160 : vec4<f32> = u_xlat4;
  let x_1162 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1160.x, x_1160.y));
  u_xlat5 = x_1162;
  let x_1163 : vec4<f32> = u_xlat3;
  let x_1164 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_1163 + x_1164);
  let x_1169 : vec4<f32> = u_xlat4;
  let x_1171 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1169.z, x_1169.w));
  u_xlat4 = x_1171;
  let x_1172 : vec4<f32> = u_xlat4;
  let x_1174 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1172 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1174);
  let x_1176 : vec4<f32> = u_xlat2;
  let x_1179 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1182 : vec2<f32> = u_xlat21;
  let x_1183 : vec2<f32> = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(x_1179.x, x_1179.x)) + x_1182);
  let x_1184 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
  let x_1186 : vec4<f32> = u_xlat1;
  let x_1190 : vec2<f32> = clamp(vec2<f32>(x_1186.x, x_1186.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1191 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
  let x_1193 : vec4<f32> = u_xlat1;
  let x_1196 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1198 : vec2<f32> = (vec2<f32>(x_1193.x, x_1193.y) * vec2<f32>(x_1196, x_1196));
  let x_1199 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1198.x, x_1198.y, x_1199.z, x_1199.w);
  let x_1204 : vec4<f32> = u_xlat1;
  let x_1206 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1204.x, x_1204.y));
  u_xlat2 = x_1206;
  let x_1207 : vec4<f32> = u_xlat2;
  let x_1208 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_1207 + x_1208);
  let x_1210 : vec4<f32> = u_xlat2;
  let x_1212 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat2 = (x_1210 * vec4<f32>(x_1212.y, x_1212.y, x_1212.y, x_1212.y));
  let x_1215 : vec2<f32> = u_xlat21;
  let x_1218 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1222 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1224 : vec2<f32> = ((x_1215 * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1222.z, x_1222.w));
  let x_1225 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
  let x_1232 : vec4<f32> = u_xlat1;
  let x_1234 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_1232.x, x_1232.y));
  let x_1235 : vec3<f32> = vec3<f32>(x_1234.x, x_1234.y, x_1234.z);
  let x_1236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec4<f32> = u_xlat2;
  u_xlat3 = (x_1238 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_1242 : vec4<f32> = u_xlat1;
  let x_1245 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1247 : vec3<f32> = (vec3<f32>(x_1242.x, x_1242.y, x_1242.z) * vec3<f32>(x_1245.z, x_1245.z, x_1245.z));
  let x_1248 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
  u_xlat1.w = 0.0f;
  let x_1251 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1251 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_1254 : vec4<f32> = u_xlat2;
  let x_1258 : vec3<f32> = x_26.x_Bloom_Color;
  let x_1259 : vec3<f32> = (vec3<f32>(x_1254.x, x_1254.y, x_1254.z) * x_1258);
  let x_1260 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
  let x_1263 : f32 = u_xlat2.w;
  u_xlat4.w = (x_1263 * 0.0625f);
  let x_1266 : vec4<f32> = u_xlat0;
  let x_1267 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_1266 + x_1267);
  let x_1269 : vec4<f32> = u_xlat1;
  let x_1270 : vec4<f32> = u_xlat3;
  let x_1272 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_1269 * x_1270) + x_1272);
  let x_1274 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_1274, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1278 : vec4<f32> = u_xlat0;
  let x_1282 : vec3<f32> = (vec3<f32>(x_1278.z, x_1278.x, x_1278.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1283 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
  let x_1285 : vec4<f32> = u_xlat0;
  let x_1289 : vec3<f32> = max(vec3<f32>(x_1285.z, x_1285.x, x_1285.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1290 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
  let x_1292 : vec4<f32> = u_xlat2;
  let x_1294 : vec3<f32> = log2(vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
  let x_1295 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1295.w);
  let x_1297 : vec4<f32> = u_xlat2;
  let x_1301 : vec3<f32> = (vec3<f32>(x_1297.x, x_1297.y, x_1297.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
  let x_1304 : vec4<f32> = u_xlat2;
  let x_1306 : vec3<f32> = exp2(vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
  let x_1309 : vec4<f32> = u_xlat2;
  let x_1316 : vec3<f32> = ((vec3<f32>(x_1309.x, x_1309.y, x_1309.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1317 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
  let x_1322 : vec4<f32> = u_xlat0;
  let x_1325 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1322.z, x_1322.x, x_1322.y, x_1322.z));
  u_xlatb3 = vec3<bool>(x_1325.x, x_1325.y, x_1325.z);
  let x_1329 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_1329;
  let x_1331 : bool = u_xlatb3.x;
  if (x_1331) {
    let x_1336 : f32 = u_xlat1.x;
    x_1332 = x_1336;
  } else {
    let x_1339 : f32 = u_xlat2.x;
    x_1332 = x_1339;
  }
  let x_1340 : f32 = x_1332;
  hlslcc_movcTemp.x = x_1340;
  let x_1343 : bool = u_xlatb3.y;
  if (x_1343) {
    let x_1348 : f32 = u_xlat1.y;
    x_1344 = x_1348;
  } else {
    let x_1351 : f32 = u_xlat2.y;
    x_1344 = x_1351;
  }
  let x_1352 : f32 = x_1344;
  hlslcc_movcTemp.y = x_1352;
  let x_1356 : bool = u_xlatb3.z;
  if (x_1356) {
    let x_1361 : f32 = u_xlat1.z;
    x_1357 = x_1361;
  } else {
    let x_1364 : f32 = u_xlat2.z;
    x_1357 = x_1364;
  }
  let x_1365 : f32 = x_1357;
  hlslcc_movcTemp.z = x_1365;
  let x_1367 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_1367;
  let x_1368 : vec4<f32> = u_xlat1;
  let x_1372 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_1368.x, x_1368.y, x_1368.z) * vec3<f32>(x_1372.z, x_1372.z, x_1372.z));
  let x_1376 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_1376);
  let x_1380 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1382 : vec2<f32> = (vec2<f32>(x_1380.x, x_1380.y) * vec2<f32>(0.5f, 0.5f));
  let x_1383 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1382.x, x_1382.y, x_1383.z, x_1383.w);
  let x_1385 : vec3<f32> = u_xlat11;
  let x_1388 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1391 : vec4<f32> = u_xlat2;
  let x_1393 : vec2<f32> = ((vec2<f32>(x_1385.y, x_1385.z) * vec2<f32>(x_1388.x, x_1388.y)) + vec2<f32>(x_1391.x, x_1391.y));
  let x_1394 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1394.x, x_1393.x, x_1393.y, x_1394.w);
  let x_1397 : f32 = u_xlat11.x;
  let x_1399 : f32 = x_26.x_Lut2D_Params.y;
  let x_1402 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1397 * x_1399) + x_1402);
  let x_1410 : vec4<f32> = u_xlat2;
  let x_1412 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1410.x, x_1410.z));
  let x_1413 : vec3<f32> = vec3<f32>(x_1412.x, x_1412.y, x_1412.z);
  let x_1414 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
  let x_1417 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_1417;
  u_xlat4.y = 0.0f;
  let x_1420 : vec4<f32> = u_xlat2;
  let x_1422 : vec4<f32> = u_xlat4;
  u_xlat21 = (vec2<f32>(x_1420.x, x_1420.z) + vec2<f32>(x_1422.x, x_1422.y));
  let x_1428 : vec2<f32> = u_xlat21;
  let x_1429 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1428);
  let x_1430 : vec3<f32> = vec3<f32>(x_1429.x, x_1429.y, x_1429.z);
  let x_1431 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
  let x_1434 : f32 = u_xlat1.x;
  let x_1436 : f32 = x_26.x_Lut2D_Params.z;
  let x_1439 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_1434 * x_1436) + -(x_1439));
  let x_1443 : vec4<f32> = u_xlat3;
  let x_1446 : vec4<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_1443.x, x_1443.y, x_1443.z)) + vec3<f32>(x_1446.x, x_1446.y, x_1446.z));
  let x_1449 : vec4<f32> = u_xlat1;
  let x_1451 : vec3<f32> = u_xlat11;
  let x_1453 : vec4<f32> = u_xlat3;
  let x_1455 : vec3<f32> = ((vec3<f32>(x_1449.x, x_1449.x, x_1449.x) * x_1451) + vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1456 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
  let x_1458 : vec4<f32> = u_xlat1;
  let x_1462 : vec3<f32> = (vec3<f32>(x_1458.x, x_1458.y, x_1458.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1463 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
  let x_1465 : vec4<f32> = u_xlat1;
  let x_1469 : vec3<f32> = (vec3<f32>(x_1465.x, x_1465.y, x_1465.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1470 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
  let x_1472 : vec4<f32> = u_xlat3;
  let x_1476 : vec3<f32> = (vec3<f32>(x_1472.x, x_1472.y, x_1472.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1477 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
  let x_1479 : vec4<f32> = u_xlat3;
  let x_1482 : vec3<f32> = max(abs(vec3<f32>(x_1479.x, x_1479.y, x_1479.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1483 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
  let x_1485 : vec4<f32> = u_xlat3;
  let x_1487 : vec3<f32> = log2(vec3<f32>(x_1485.x, x_1485.y, x_1485.z));
  let x_1488 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1488.w);
  let x_1490 : vec4<f32> = u_xlat3;
  let x_1494 : vec3<f32> = (vec3<f32>(x_1490.x, x_1490.y, x_1490.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1495 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
  let x_1497 : vec4<f32> = u_xlat3;
  let x_1499 : vec3<f32> = exp2(vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
  let x_1500 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
  let x_1504 : vec4<f32> = u_xlat1;
  let x_1506 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1504.x));
  u_xlatb1 = vec3<bool>(x_1506.x, x_1506.y, x_1506.z);
  let x_1509 : bool = u_xlatb1.x;
  if (x_1509) {
    let x_1514 : f32 = u_xlat2.x;
    x_1510 = x_1514;
  } else {
    let x_1517 : f32 = u_xlat3.x;
    x_1510 = x_1517;
  }
  let x_1518 : f32 = x_1510;
  u_xlat0.x = x_1518;
  let x_1521 : bool = u_xlatb1.y;
  if (x_1521) {
    let x_1526 : f32 = u_xlat2.y;
    x_1522 = x_1526;
  } else {
    let x_1529 : f32 = u_xlat3.y;
    x_1522 = x_1529;
  }
  let x_1530 : f32 = x_1522;
  u_xlat0.y = x_1530;
  let x_1533 : bool = u_xlatb1.z;
  if (x_1533) {
    let x_1538 : f32 = u_xlat2.z;
    x_1534 = x_1538;
  } else {
    let x_1541 : f32 = u_xlat3.z;
    x_1534 = x_1541;
  }
  let x_1542 : f32 = x_1534;
  u_xlat0.z = x_1542;
  let x_1546 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_1546);
  let x_1550 : bool = u_xlatb1.x;
  if (x_1550) {
    let x_1553 : vec4<f32> = u_xlat0;
    let x_1554 : vec3<f32> = vec3<f32>(x_1553.x, x_1553.y, x_1553.z);
    let x_1555 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1554.x, x_1554.y, x_1554.z, x_1555.w);
    let x_1557 : vec4<f32> = u_xlat1;
    let x_1561 : vec3<f32> = clamp(vec3<f32>(x_1557.x, x_1557.y, x_1557.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1562 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);
    let x_1564 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_1564.x, x_1564.y, x_1564.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1574 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1574;
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

