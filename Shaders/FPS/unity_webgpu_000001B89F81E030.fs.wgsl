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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
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

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatb37 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlatb7 : bool;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_209 : f32;
  var x_235 : f32;
  var x_472 : f32;
  var x_699 : f32;
  var x_901 : f32;
  var x_1280 : f32;
  var x_1292 : f32;
  var x_1305 : f32;
  var x_1457 : f32;
  var x_1469 : f32;
  var x_1481 : f32;
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
  u_xlat2 = (vec4<f32>(x_993.x, x_993.y, x_993.x, x_993.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_999 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_999 * 0.5f);
  let x_1002 : vec4<f32> = u_xlat2;
  let x_1004 : vec4<f32> = u_xlat1;
  let x_1007 : vec2<f32> = u_xlat21;
  u_xlat3 = ((vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1002.y) * vec4<f32>(x_1004.x, x_1004.x, x_1004.x, x_1004.x)) + vec4<f32>(x_1007.x, x_1007.y, x_1007.x, x_1007.y));
  let x_1010 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1010, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1014 : vec4<f32> = u_xlat3;
  let x_1016 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_1014 * vec4<f32>(x_1016, x_1016, x_1016, x_1016));
  let x_1024 : vec4<f32> = u_xlat3;
  let x_1026 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1024.x, x_1024.y));
  u_xlat4 = x_1026;
  let x_1030 : vec4<f32> = u_xlat3;
  let x_1032 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1030.z, x_1030.w));
  u_xlat3 = x_1032;
  let x_1033 : vec4<f32> = u_xlat3;
  let x_1034 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1033 + x_1034);
  let x_1036 : vec4<f32> = u_xlat2;
  let x_1038 : vec4<f32> = u_xlat1;
  let x_1041 : vec2<f32> = u_xlat21;
  u_xlat2 = ((vec4<f32>(x_1036.x, x_1036.w, x_1036.z, x_1036.w) * vec4<f32>(x_1038.x, x_1038.x, x_1038.x, x_1038.x)) + vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y));
  let x_1044 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_1044, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1048 : vec4<f32> = u_xlat2;
  let x_1050 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat2 = (x_1048 * vec4<f32>(x_1050, x_1050, x_1050, x_1050));
  let x_1056 : vec4<f32> = u_xlat2;
  let x_1058 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1056.x, x_1056.y));
  u_xlat4 = x_1058;
  let x_1059 : vec4<f32> = u_xlat3;
  let x_1060 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1059 + x_1060);
  let x_1065 : vec4<f32> = u_xlat2;
  let x_1067 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1065.z, x_1065.w));
  u_xlat2 = x_1067;
  let x_1068 : vec4<f32> = u_xlat2;
  let x_1069 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_1068 + x_1069);
  let x_1071 : vec4<f32> = u_xlat2;
  let x_1074 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat2 = (x_1071 * vec4<f32>(x_1074.y, x_1074.y, x_1074.y, x_1074.y));
  let x_1077 : vec2<f32> = u_xlat21;
  let x_1080 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1084 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1086 : vec2<f32> = ((x_1077 * vec2<f32>(x_1080.x, x_1080.y)) + vec2<f32>(x_1084.z, x_1084.w));
  let x_1087 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
  let x_1094 : vec4<f32> = u_xlat1;
  let x_1096 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_1094.x, x_1094.y));
  let x_1097 : vec3<f32> = vec3<f32>(x_1096.x, x_1096.y, x_1096.z);
  let x_1098 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec4<f32> = u_xlat2;
  u_xlat3 = (x_1100 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_1104 : vec4<f32> = u_xlat1;
  let x_1107 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1109 : vec3<f32> = (vec3<f32>(x_1104.x, x_1104.y, x_1104.z) * vec3<f32>(x_1107.z, x_1107.z, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  u_xlat1.w = 0.0f;
  let x_1113 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1113 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_1116 : vec4<f32> = u_xlat2;
  let x_1120 : vec3<f32> = x_26.x_Bloom_Color;
  let x_1121 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) * x_1120);
  let x_1122 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  let x_1125 : f32 = u_xlat2.w;
  u_xlat4.w = (x_1125 * 0.25f);
  let x_1128 : vec4<f32> = u_xlat0;
  let x_1129 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_1128 + x_1129);
  let x_1131 : vec4<f32> = u_xlat1;
  let x_1132 : vec4<f32> = u_xlat3;
  let x_1134 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_1131 * x_1132) + x_1134);
  let x_1137 : vec2<f32> = vs_TEXCOORD1;
  let x_1140 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1144 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1146 : vec2<f32> = ((x_1137 * vec2<f32>(x_1140.x, x_1140.y)) + vec2<f32>(x_1144.z, x_1144.w));
  let x_1147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
  let x_1154 : vec4<f32> = u_xlat1;
  let x_1156 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1154.x, x_1154.y));
  let x_1157 : vec3<f32> = vec3<f32>(x_1156.x, x_1156.y, x_1156.z);
  let x_1158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : vec4<f32> = u_xlat0;
  let x_1161 : vec3<f32> = vec3<f32>(x_1160.x, x_1160.y, x_1160.z);
  let x_1162 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec4<f32> = u_xlat2;
  let x_1168 : vec3<f32> = clamp(vec3<f32>(x_1164.x, x_1164.y, x_1164.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1169 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1171.x, x_1171.y, x_1171.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1178 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_1178);
  let x_1182 : f32 = x_26.x_Grain_Params1.x;
  let x_1183 : f32 = u_xlat31;
  u_xlat31 = ((x_1182 * -(x_1183)) + 1.0f);
  let x_1187 : vec4<f32> = u_xlat0;
  let x_1189 : vec4<f32> = u_xlat1;
  let x_1191 : vec3<f32> = (vec3<f32>(x_1187.x, x_1187.y, x_1187.z) * vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
  let x_1192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
  let x_1194 : vec4<f32> = u_xlat1;
  let x_1197 : f32 = x_26.x_Grain_Params1.y;
  let x_1199 : f32 = x_26.x_Grain_Params1.y;
  let x_1201 : f32 = x_26.x_Grain_Params1.y;
  let x_1203 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.y, x_1194.z) * vec3<f32>(x_1197, x_1199, x_1201));
  let x_1204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1206 : vec4<f32> = u_xlat1;
  let x_1208 : f32 = u_xlat31;
  let x_1211 : vec4<f32> = u_xlat0;
  let x_1213 : vec3<f32> = ((vec3<f32>(x_1206.x, x_1206.y, x_1206.z) * vec3<f32>(x_1208, x_1208, x_1208)) + vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1216 : vec4<f32> = u_xlat1;
  let x_1220 : vec3<f32> = clamp(vec3<f32>(x_1216.x, x_1216.y, x_1216.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
  let x_1224 : f32 = u_xlat0.w;
  u_xlat0.w = x_1224;
  let x_1227 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_1227, 0.0f, 1.0f);
  let x_1230 : vec4<f32> = u_xlat1;
  let x_1234 : vec3<f32> = (vec3<f32>(x_1230.z, x_1230.x, x_1230.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1237 : vec4<f32> = u_xlat1;
  let x_1241 : vec3<f32> = max(vec3<f32>(x_1237.z, x_1237.x, x_1237.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1242 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec4<f32> = u_xlat3;
  let x_1246 : vec3<f32> = log2(vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  let x_1249 : vec4<f32> = u_xlat3;
  let x_1253 : vec3<f32> = (vec3<f32>(x_1249.x, x_1249.y, x_1249.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1254 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
  let x_1256 : vec4<f32> = u_xlat3;
  let x_1258 : vec3<f32> = exp2(vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
  let x_1259 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
  let x_1261 : vec4<f32> = u_xlat3;
  let x_1268 : vec3<f32> = ((vec3<f32>(x_1261.x, x_1261.y, x_1261.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1269 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
  let x_1273 : vec4<f32> = u_xlat1;
  let x_1276 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1273.z, x_1273.x, x_1273.y, x_1273.z));
  u_xlatb1 = vec3<bool>(x_1276.x, x_1276.y, x_1276.z);
  let x_1279 : bool = u_xlatb1.x;
  if (x_1279) {
    let x_1284 : f32 = u_xlat2.x;
    x_1280 = x_1284;
  } else {
    let x_1287 : f32 = u_xlat3.x;
    x_1280 = x_1287;
  }
  let x_1288 : f32 = x_1280;
  u_xlat1.x = x_1288;
  let x_1291 : bool = u_xlatb1.y;
  if (x_1291) {
    let x_1296 : f32 = u_xlat2.y;
    x_1292 = x_1296;
  } else {
    let x_1299 : f32 = u_xlat3.y;
    x_1292 = x_1299;
  }
  let x_1300 : f32 = x_1292;
  u_xlat1.y = x_1300;
  let x_1304 : bool = u_xlatb1.z;
  if (x_1304) {
    let x_1309 : f32 = u_xlat2.z;
    x_1305 = x_1309;
  } else {
    let x_1312 : f32 = u_xlat3.z;
    x_1305 = x_1312;
  }
  let x_1313 : f32 = x_1305;
  u_xlat1.z = x_1313;
  let x_1315 : vec4<f32> = u_xlat1;
  let x_1319 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1319.z, x_1319.z, x_1319.z));
  let x_1323 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_1323);
  let x_1327 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1329 : vec2<f32> = (vec2<f32>(x_1327.x, x_1327.y) * vec2<f32>(0.5f, 0.5f));
  let x_1330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
  let x_1332 : vec3<f32> = u_xlat11;
  let x_1335 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1338 : vec4<f32> = u_xlat2;
  let x_1340 : vec2<f32> = ((vec2<f32>(x_1332.y, x_1332.z) * vec2<f32>(x_1335.x, x_1335.y)) + vec2<f32>(x_1338.x, x_1338.y));
  let x_1341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1341.x, x_1340.x, x_1340.y, x_1341.w);
  let x_1344 : f32 = u_xlat11.x;
  let x_1346 : f32 = x_26.x_Lut2D_Params.y;
  let x_1349 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1344 * x_1346) + x_1349);
  let x_1357 : vec4<f32> = u_xlat2;
  let x_1359 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1357.x, x_1357.z));
  let x_1360 : vec3<f32> = vec3<f32>(x_1359.x, x_1359.y, x_1359.z);
  let x_1361 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  let x_1364 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_1364;
  u_xlat4.y = 0.0f;
  let x_1367 : vec4<f32> = u_xlat2;
  let x_1369 : vec4<f32> = u_xlat4;
  u_xlat21 = (vec2<f32>(x_1367.x, x_1367.z) + vec2<f32>(x_1369.x, x_1369.y));
  let x_1375 : vec2<f32> = u_xlat21;
  let x_1376 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1375);
  let x_1377 : vec3<f32> = vec3<f32>(x_1376.x, x_1376.y, x_1376.z);
  let x_1378 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1378.w);
  let x_1381 : f32 = u_xlat1.x;
  let x_1383 : f32 = x_26.x_Lut2D_Params.z;
  let x_1386 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_1381 * x_1383) + -(x_1386));
  let x_1390 : vec4<f32> = u_xlat3;
  let x_1393 : vec4<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_1390.x, x_1390.y, x_1390.z)) + vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
  let x_1396 : vec4<f32> = u_xlat1;
  let x_1398 : vec3<f32> = u_xlat11;
  let x_1400 : vec4<f32> = u_xlat3;
  let x_1402 : vec3<f32> = ((vec3<f32>(x_1396.x, x_1396.x, x_1396.x) * x_1398) + vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
  let x_1403 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
  let x_1405 : vec4<f32> = u_xlat1;
  let x_1409 : vec3<f32> = (vec3<f32>(x_1405.x, x_1405.y, x_1405.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1410 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
  let x_1412 : vec4<f32> = u_xlat1;
  let x_1416 : vec3<f32> = (vec3<f32>(x_1412.x, x_1412.y, x_1412.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1417 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
  let x_1419 : vec4<f32> = u_xlat3;
  let x_1423 : vec3<f32> = (vec3<f32>(x_1419.x, x_1419.y, x_1419.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1424 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);
  let x_1426 : vec4<f32> = u_xlat3;
  let x_1429 : vec3<f32> = max(abs(vec3<f32>(x_1426.x, x_1426.y, x_1426.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1430 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
  let x_1432 : vec4<f32> = u_xlat3;
  let x_1434 : vec3<f32> = log2(vec3<f32>(x_1432.x, x_1432.y, x_1432.z));
  let x_1435 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
  let x_1437 : vec4<f32> = u_xlat3;
  let x_1441 : vec3<f32> = (vec3<f32>(x_1437.x, x_1437.y, x_1437.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1442 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
  let x_1444 : vec4<f32> = u_xlat3;
  let x_1446 : vec3<f32> = exp2(vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
  let x_1447 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
  let x_1451 : vec4<f32> = u_xlat1;
  let x_1453 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1451.x));
  u_xlatb1 = vec3<bool>(x_1453.x, x_1453.y, x_1453.z);
  let x_1456 : bool = u_xlatb1.x;
  if (x_1456) {
    let x_1461 : f32 = u_xlat2.x;
    x_1457 = x_1461;
  } else {
    let x_1464 : f32 = u_xlat3.x;
    x_1457 = x_1464;
  }
  let x_1465 : f32 = x_1457;
  u_xlat0.x = x_1465;
  let x_1468 : bool = u_xlatb1.y;
  if (x_1468) {
    let x_1473 : f32 = u_xlat2.y;
    x_1469 = x_1473;
  } else {
    let x_1476 : f32 = u_xlat3.y;
    x_1469 = x_1476;
  }
  let x_1477 : f32 = x_1469;
  u_xlat0.y = x_1477;
  let x_1480 : bool = u_xlatb1.z;
  if (x_1480) {
    let x_1485 : f32 = u_xlat2.z;
    x_1481 = x_1485;
  } else {
    let x_1488 : f32 = u_xlat3.z;
    x_1481 = x_1488;
  }
  let x_1489 : f32 = x_1481;
  u_xlat0.z = x_1489;
  let x_1493 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_1493);
  let x_1497 : bool = u_xlatb1.x;
  if (x_1497) {
    let x_1500 : vec4<f32> = u_xlat0;
    let x_1501 : vec3<f32> = vec3<f32>(x_1500.x, x_1500.y, x_1500.z);
    let x_1502 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1501.x, x_1501.y, x_1501.z, x_1502.w);
    let x_1504 : vec4<f32> = u_xlat1;
    let x_1508 : vec3<f32> = clamp(vec3<f32>(x_1504.x, x_1504.y, x_1504.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1509 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
    let x_1511 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_1511.x, x_1511.y, x_1511.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1517 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1517;
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

