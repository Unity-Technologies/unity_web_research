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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
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

var<private> u_xlatb1 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat11 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlatb7 : bool;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(12) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_209 : f32;
  var x_235 : f32;
  var x_468 : f32;
  var x_693 : f32;
  var x_887 : f32;
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
    u_xlat11 = (x_776 / x_778);
    let x_781 : f32 = u_xlat12.y;
    u_xlat12.x = (1.0f / x_781);
    let x_784 : f32 = u_xlat11;
    let x_786 : f32 = u_xlat12.x;
    u_xlat11 = ((x_784 * x_786) + -1.0f);
    let x_789 : vec4<f32> = u_xlat3;
    let x_791 : f32 = u_xlat11;
    let x_794 : vec4<f32> = u_xlat7;
    let x_796 : vec2<f32> = ((vec2<f32>(x_789.z, x_789.w) * vec2<f32>(x_791, x_791)) + vec2<f32>(x_794.z, x_794.w));
    let x_797 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_796.x, x_796.y, x_797.z);
  } else {
    let x_801 : f32 = u_xlat1.x;
    u_xlat11 = (1.0f / x_801);
    let x_803 : f32 = u_xlat11;
    let x_805 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat11 = (x_803 * x_805);
    let x_808 : f32 = u_xlat1.x;
    let x_810 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_808 * x_810);
    let x_814 : f32 = u_xlat1.x;
    u_xlat32 = min(abs(x_814), 1.0f);
    let x_818 : f32 = u_xlat1.x;
    u_xlat3.x = max(abs(x_818), 1.0f);
    let x_823 : f32 = u_xlat3.x;
    u_xlat3.x = (1.0f / x_823);
    let x_826 : f32 = u_xlat32;
    let x_828 : f32 = u_xlat3.x;
    u_xlat32 = (x_826 * x_828);
    let x_830 : f32 = u_xlat32;
    let x_831 : f32 = u_xlat32;
    u_xlat3.x = (x_830 * x_831);
    let x_836 : f32 = u_xlat3.x;
    u_xlat13 = ((x_836 * 0.0208351f) + -0.085133001f);
    let x_840 : f32 = u_xlat3.x;
    let x_841 : f32 = u_xlat13;
    u_xlat13 = ((x_840 * x_841) + 0.180141002f);
    let x_845 : f32 = u_xlat3.x;
    let x_846 : f32 = u_xlat13;
    u_xlat13 = ((x_845 * x_846) + -0.330299497f);
    let x_850 : f32 = u_xlat3.x;
    let x_851 : f32 = u_xlat13;
    u_xlat3.x = ((x_850 * x_851) + 0.999866009f);
    let x_855 : f32 = u_xlat32;
    let x_857 : f32 = u_xlat3.x;
    u_xlat13 = (x_855 * x_857);
    let x_861 : f32 = u_xlat1.x;
    u_xlatb7 = (1.0f < abs(x_861));
    let x_864 : f32 = u_xlat13;
    u_xlat13 = ((x_864 * -2.0f) + 1.570796371f);
    let x_867 : bool = u_xlatb7;
    let x_868 : f32 = u_xlat13;
    u_xlat13 = select(0.0f, x_868, x_867);
    let x_870 : f32 = u_xlat32;
    let x_872 : f32 = u_xlat3.x;
    let x_874 : f32 = u_xlat13;
    u_xlat32 = ((x_870 * x_872) + x_874);
    let x_877 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_877, 1.0f);
    let x_881 : f32 = u_xlat1.x;
    let x_883 : f32 = u_xlat1.x;
    u_xlatb1 = (x_881 < -(x_883));
    let x_886 : bool = u_xlatb1;
    if (x_886) {
      let x_890 : f32 = u_xlat32;
      x_887 = -(x_890);
    } else {
      let x_893 : f32 = u_xlat32;
      x_887 = x_893;
    }
    let x_894 : f32 = x_887;
    u_xlat1.x = x_894;
    let x_896 : f32 = u_xlat11;
    let x_898 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_896 * x_898) + -1.0f);
    let x_902 : vec4<f32> = u_xlat3;
    let x_904 : vec4<f32> = u_xlat1;
    let x_907 : vec4<f32> = u_xlat7;
    let x_909 : vec2<f32> = ((vec2<f32>(x_902.z, x_902.w) * vec2<f32>(x_904.x, x_904.x)) + vec2<f32>(x_907.z, x_907.w));
    let x_910 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_909.x, x_909.y, x_910.z);
  }
  let x_912 : vec3<f32> = u_xlat12;
  let x_913 : vec2<f32> = vec2<f32>(x_912.x, x_912.y);
  let x_914 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_913.x, x_913.y, x_914.z);
  let x_916 : vec3<f32> = u_xlat12;
  let x_920 : vec2<f32> = clamp(vec2<f32>(x_916.x, x_916.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_921 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_920.x, x_920.y, x_921.z);
  let x_923 : vec3<f32> = u_xlat12;
  let x_926 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_928 : vec2<f32> = (vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_926, x_926));
  let x_929 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
  let x_934 : vec4<f32> = u_xlat1;
  let x_936 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_934.x, x_934.y), 0.0f);
  u_xlat3 = x_936;
  u_xlat4.w = 1.0f;
  u_xlat5.w = 1.0f;
  let x_939 : vec4<f32> = u_xlat5;
  let x_940 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_939 * x_940);
  let x_942 : vec4<f32> = u_xlat0;
  let x_943 : vec4<f32> = u_xlat4;
  let x_945 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_942 * x_943) + x_945);
  u_xlat6.w = 1.0f;
  let x_948 : vec4<f32> = u_xlat3;
  let x_949 : vec4<f32> = u_xlat6;
  let x_951 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_948 * x_949) + x_951);
  let x_953 : vec4<f32> = u_xlat4;
  let x_955 : vec4<f32> = u_xlat5;
  u_xlat12 = (vec3<f32>(x_953.x, x_953.y, x_953.z) + vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_958 : vec4<f32> = u_xlat6;
  let x_960 : vec3<f32> = u_xlat12;
  let x_961 : vec3<f32> = (vec3<f32>(x_958.x, x_958.y, x_958.z) + x_960);
  let x_962 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  u_xlat3.w = 3.0f;
  let x_966 : vec4<f32> = u_xlat0;
  let x_967 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_966 / x_967);
  let x_969 : vec4<f32> = u_xlat2;
  let x_971 : vec4<f32> = u_xlat0;
  let x_973 : vec3<f32> = (vec3<f32>(x_969.x, x_969.x, x_969.x) * vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_978 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat2 = (vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_984 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_984 * 0.5f);
  let x_987 : vec4<f32> = u_xlat2;
  let x_989 : vec4<f32> = u_xlat1;
  let x_992 : vec2<f32> = u_xlat21;
  u_xlat3 = ((vec4<f32>(x_987.x, x_987.y, x_987.z, x_987.y) * vec4<f32>(x_989.x, x_989.x, x_989.x, x_989.x)) + vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y));
  let x_995 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_995, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_999 : vec4<f32> = u_xlat3;
  let x_1001 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_999 * vec4<f32>(x_1001, x_1001, x_1001, x_1001));
  let x_1009 : vec4<f32> = u_xlat3;
  let x_1011 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1009.x, x_1009.y));
  u_xlat4 = x_1011;
  let x_1015 : vec4<f32> = u_xlat3;
  let x_1017 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1015.z, x_1015.w));
  u_xlat3 = x_1017;
  let x_1018 : vec4<f32> = u_xlat3;
  let x_1019 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1018 + x_1019);
  let x_1021 : vec4<f32> = u_xlat2;
  let x_1023 : vec4<f32> = u_xlat1;
  let x_1026 : vec2<f32> = u_xlat21;
  u_xlat2 = ((vec4<f32>(x_1021.x, x_1021.w, x_1021.z, x_1021.w) * vec4<f32>(x_1023.x, x_1023.x, x_1023.x, x_1023.x)) + vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y));
  let x_1029 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_1029, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1033 : vec4<f32> = u_xlat2;
  let x_1035 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat2 = (x_1033 * vec4<f32>(x_1035, x_1035, x_1035, x_1035));
  let x_1041 : vec4<f32> = u_xlat2;
  let x_1043 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1041.x, x_1041.y));
  u_xlat4 = x_1043;
  let x_1044 : vec4<f32> = u_xlat3;
  let x_1045 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1044 + x_1045);
  let x_1050 : vec4<f32> = u_xlat2;
  let x_1052 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1050.z, x_1050.w));
  u_xlat2 = x_1052;
  let x_1053 : vec4<f32> = u_xlat2;
  let x_1054 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_1053 + x_1054);
  let x_1056 : vec4<f32> = u_xlat2;
  let x_1059 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat2 = (x_1056 * vec4<f32>(x_1059.y, x_1059.y, x_1059.y, x_1059.y));
  let x_1062 : vec2<f32> = u_xlat21;
  let x_1065 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1069 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1071 : vec2<f32> = ((x_1062 * vec2<f32>(x_1065.x, x_1065.y)) + vec2<f32>(x_1069.z, x_1069.w));
  let x_1072 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
  let x_1079 : vec4<f32> = u_xlat1;
  let x_1081 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_1079.x, x_1079.y));
  let x_1082 : vec3<f32> = vec3<f32>(x_1081.x, x_1081.y, x_1081.z);
  let x_1083 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec4<f32> = u_xlat2;
  u_xlat3 = (x_1085 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_1089 : vec4<f32> = u_xlat1;
  let x_1092 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1094 : vec3<f32> = (vec3<f32>(x_1089.x, x_1089.y, x_1089.z) * vec3<f32>(x_1092.z, x_1092.z, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  u_xlat1.w = 0.0f;
  let x_1098 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1098 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_1101 : vec4<f32> = u_xlat2;
  let x_1105 : vec3<f32> = x_26.x_Bloom_Color;
  let x_1106 : vec3<f32> = (vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * x_1105);
  let x_1107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1110 : f32 = u_xlat2.w;
  u_xlat4.w = (x_1110 * 0.25f);
  let x_1113 : vec4<f32> = u_xlat0;
  let x_1114 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_1113 + x_1114);
  let x_1116 : vec4<f32> = u_xlat1;
  let x_1117 : vec4<f32> = u_xlat3;
  let x_1119 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_1116 * x_1117) + x_1119);
  let x_1121 : vec4<f32> = u_xlat0;
  let x_1125 : f32 = x_26.x_PostExposure;
  let x_1127 : f32 = x_26.x_PostExposure;
  let x_1129 : f32 = x_26.x_PostExposure;
  let x_1131 : f32 = x_26.x_PostExposure;
  let x_1132 : vec4<f32> = vec4<f32>(x_1125, x_1127, x_1129, x_1131);
  u_xlat0 = (vec4<f32>(x_1121.w, x_1121.x, x_1121.y, x_1121.z) * vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1132.w));
  let x_1139 : vec4<f32> = u_xlat0;
  let x_1146 : vec3<f32> = ((vec3<f32>(x_1139.y, x_1139.z, x_1139.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1149 : vec4<f32> = u_xlat1;
  let x_1151 : vec3<f32> = log2(vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
  let x_1152 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1154 : vec4<f32> = u_xlat1;
  let x_1161 : vec3<f32> = ((vec3<f32>(x_1154.x, x_1154.y, x_1154.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1162 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec4<f32> = u_xlat1;
  let x_1168 : vec3<f32> = clamp(vec3<f32>(x_1164.x, x_1164.y, x_1164.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1169 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : vec4<f32> = u_xlat1;
  let x_1176 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1171.x, x_1171.y, x_1171.z) * vec3<f32>(x_1176.y, x_1176.y, x_1176.y));
  let x_1179 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1182 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat31 = (x_1182 * 0.5f);
  let x_1184 : vec4<f32> = u_xlat1;
  let x_1187 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_1190 : f32 = u_xlat31;
  let x_1192 : vec3<f32> = ((vec3<f32>(x_1184.x, x_1184.y, x_1184.z) * vec3<f32>(x_1187.x, x_1187.x, x_1187.x)) + vec3<f32>(x_1190, x_1190, x_1190));
  let x_1193 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1203 : vec4<f32> = u_xlat1;
  let x_1205 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec3<f32> = vec3<f32>(x_1205.x, x_1205.y, x_1205.z);
  let x_1207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1207.x, x_1206.x, x_1206.y, x_1206.z);
  let x_1211 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1211);
  let x_1213 : bool = u_xlatb1;
  if (x_1213) {
    let x_1216 : vec4<f32> = u_xlat0;
    let x_1217 : vec3<f32> = vec3<f32>(x_1216.y, x_1216.z, x_1216.w);
    let x_1218 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
    let x_1220 : vec4<f32> = u_xlat1;
    let x_1224 : vec3<f32> = clamp(vec3<f32>(x_1220.x, x_1220.y, x_1220.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1225 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
    let x_1227 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_1227.x, x_1227.y, x_1227.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1237 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_1237.y, x_1237.z, x_1237.w, x_1237.x);
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

