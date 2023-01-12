struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb11 : bool;
  var u_xlat21 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat12 : f32;
  var u_xlat22 : vec2<f32>;
  var u_xlat32 : f32;
  var u_xlatb3 : bool;
  var u_xlatb1 : bool;
  var x_229 : f32;
  var u_xlat10 : vec2<f32>;
  var u_xlat30 : f32;
  var u_xlati30 : i32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlat8 : f32;
  var u_xlat9 : f32;
  var u_xlat37 : f32;
  var u_xlat18 : f32;
  var u_xlat28 : f32;
  var u_xlat38 : f32;
  var u_xlatb9 : bool;
  var u_xlatb36 : bool;
  var x_508 : f32;
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
    let x_140 : f32 = u_xlat1.x;
    let x_142 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_140 * x_142);
    let x_147 : f32 = u_xlat1.x;
    u_xlat12 = min(abs(x_147), 1.0f);
    let x_152 : f32 = u_xlat1.x;
    u_xlat22.x = max(abs(x_152), 1.0f);
    let x_157 : f32 = u_xlat22.x;
    u_xlat22.x = (1.0f / x_157);
    let x_161 : f32 = u_xlat22.x;
    let x_162 : f32 = u_xlat12;
    u_xlat12 = (x_161 * x_162);
    let x_164 : f32 = u_xlat12;
    let x_165 : f32 = u_xlat12;
    u_xlat22.x = (x_164 * x_165);
    let x_170 : f32 = u_xlat22.x;
    u_xlat32 = ((x_170 * 0.0208351f) + -0.085133001f);
    let x_176 : f32 = u_xlat22.x;
    let x_177 : f32 = u_xlat32;
    u_xlat32 = ((x_176 * x_177) + 0.180141002f);
    let x_182 : f32 = u_xlat22.x;
    let x_183 : f32 = u_xlat32;
    u_xlat32 = ((x_182 * x_183) + -0.330299497f);
    let x_188 : f32 = u_xlat22.x;
    let x_189 : f32 = u_xlat32;
    u_xlat22.x = ((x_188 * x_189) + 0.999866009f);
    let x_195 : f32 = u_xlat22.x;
    let x_196 : f32 = u_xlat12;
    u_xlat32 = (x_195 * x_196);
    let x_200 : f32 = u_xlat1.x;
    u_xlatb3 = (1.0f < abs(x_200));
    let x_203 : f32 = u_xlat32;
    u_xlat32 = ((x_203 * -2.0f) + 1.570796371f);
    let x_208 : bool = u_xlatb3;
    let x_209 : f32 = u_xlat32;
    u_xlat32 = select(0.0f, x_209, x_208);
    let x_211 : f32 = u_xlat12;
    let x_213 : f32 = u_xlat22.x;
    let x_215 : f32 = u_xlat32;
    u_xlat12 = ((x_211 * x_213) + x_215);
    let x_218 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_218, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1 = (x_223 < -(x_225));
    let x_228 : bool = u_xlatb1;
    if (x_228) {
      let x_232 : f32 = u_xlat12;
      x_229 = -(x_232);
    } else {
      let x_235 : f32 = u_xlat12;
      x_229 = x_235;
    }
    let x_236 : f32 = x_229;
    u_xlat1.x = x_236;
    let x_239 : f32 = u_xlat2.x;
    let x_241 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_239 * x_241) + -1.0f);
    let x_245 : vec4<f32> = u_xlat0;
    let x_247 : vec4<f32> = u_xlat1;
    let x_250 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_245.x, x_245.y) * vec2<f32>(x_247.x, x_247.x)) + x_250);
  }
  let x_262 : vec2<f32> = vs_TEXCOORD0;
  let x_263 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_262);
  u_xlat0.x = x_263.x;
  let x_267 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_267 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_274 : vec2<f32> = u_xlat10;
  let x_275 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_274, x_275);
  let x_277 : f32 = u_xlat30;
  let x_279 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_277, x_277) * x_279);
  let x_281 : vec2<f32> = u_xlat10;
  let x_284 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_286 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_287 : vec2<f32> = vec2<f32>(x_284, x_286);
  u_xlat10 = (x_281 * vec2<f32>(x_287.x, x_287.y));
  let x_292 : vec2<f32> = u_xlat10;
  let x_296 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_298 : vec2<f32> = (-(x_292) * vec2<f32>(x_296.z, x_296.w));
  let x_299 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_298.x, x_298.y, x_299.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec2<f32> = (vec2<f32>(x_301.x, x_301.y) * vec2<f32>(0.5f, 0.5f));
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_304.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_306.x, x_306.y), vec2<f32>(x_308.x, x_308.y));
  let x_311 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_311);
  let x_315 : f32 = u_xlat30;
  u_xlati30 = i32(x_315);
  let x_317 : i32 = u_xlati30;
  u_xlati30 = max(x_317, 3i);
  let x_319 : i32 = u_xlati30;
  u_xlati30 = min(x_319, 16i);
  let x_322 : i32 = u_xlati30;
  u_xlat1.x = f32(x_322);
  let x_325 : vec2<f32> = u_xlat10;
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_325) / vec2<f32>(x_327.x, x_327.x));
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_343 : vec2<f32> = vs_TEXCOORD0;
  u_xlat22 = x_343;
  u_xlati_loop_1 = 0i;
  loop {
    let x_351 : i32 = u_xlati_loop_1;
    let x_352 : i32 = u_xlati30;
    if ((x_351 < x_352)) {
    } else {
      break;
    }
    let x_355 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_355);
    let x_359 : f32 = u_xlat16.x;
    u_xlat16.x = (x_359 + 0.5f);
    let x_363 : f32 = u_xlat16.x;
    let x_365 : f32 = u_xlat1.x;
    u_xlat2.x = (x_363 / x_365);
    let x_368 : vec2<f32> = u_xlat22;
    u_xlat16 = (x_368 + vec2<f32>(-0.5f, -0.5f));
    let x_371 : vec2<f32> = u_xlat16;
    let x_373 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_376 : vec2<f32> = ((x_371 * vec2<f32>(x_373.z, x_373.z)) + vec2<f32>(0.5f, 0.5f));
    let x_377 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
    let x_379 : vec2<f32> = u_xlat16;
    let x_381 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_385 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = ((x_379 * vec2<f32>(x_381.z, x_381.z)) + -(vec2<f32>(x_385.x, x_385.y)));
    let x_389 : vec2<f32> = u_xlat16;
    let x_391 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = (x_389 * vec2<f32>(x_391.z, x_391.w));
    let x_395 : vec2<f32> = u_xlat16;
    let x_396 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_395, x_396);
    let x_398 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_398);
    let x_400 : bool = u_xlatb11;
    if (x_400) {
      let x_404 : f32 = u_xlat36;
      let x_407 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_404, x_404) * vec2<f32>(x_407.x, x_407.y));
      let x_412 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_412);
      let x_416 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_416);
      let x_418 : f32 = u_xlat8;
      let x_419 : f32 = u_xlat9;
      u_xlat27.x = (x_418 / x_419);
      let x_424 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_424);
      let x_427 : f32 = u_xlat27.x;
      let x_428 : f32 = u_xlat37;
      u_xlat27.x = ((x_427 * x_428) + -1.0f);
      let x_432 : vec2<f32> = u_xlat16;
      let x_433 : vec2<f32> = u_xlat27;
      let x_436 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_432 * vec2<f32>(x_433.x, x_433.x)) + vec2<f32>(x_436.x, x_436.y));
    } else {
      let x_440 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_440);
      let x_442 : f32 = u_xlat8;
      let x_444 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat8 = (x_442 * x_444);
      let x_446 : f32 = u_xlat36;
      let x_448 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_446 * x_448);
      let x_451 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_451), 1.0f);
      let x_455 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_455), 1.0f);
      let x_458 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_458);
      let x_460 : f32 = u_xlat28;
      let x_461 : f32 = u_xlat18;
      u_xlat18 = (x_460 * x_461);
      let x_463 : f32 = u_xlat18;
      let x_464 : f32 = u_xlat18;
      u_xlat28 = (x_463 * x_464);
      let x_467 : f32 = u_xlat28;
      u_xlat38 = ((x_467 * 0.0208351f) + -0.085133001f);
      let x_470 : f32 = u_xlat28;
      let x_471 : f32 = u_xlat38;
      u_xlat38 = ((x_470 * x_471) + 0.180141002f);
      let x_474 : f32 = u_xlat28;
      let x_475 : f32 = u_xlat38;
      u_xlat38 = ((x_474 * x_475) + -0.330299497f);
      let x_478 : f32 = u_xlat28;
      let x_479 : f32 = u_xlat38;
      u_xlat28 = ((x_478 * x_479) + 0.999866009f);
      let x_482 : f32 = u_xlat28;
      let x_483 : f32 = u_xlat18;
      u_xlat38 = (x_482 * x_483);
      let x_486 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_486));
      let x_489 : f32 = u_xlat38;
      u_xlat38 = ((x_489 * -2.0f) + 1.570796371f);
      let x_492 : bool = u_xlatb9;
      let x_493 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_493, x_492);
      let x_495 : f32 = u_xlat18;
      let x_496 : f32 = u_xlat28;
      let x_498 : f32 = u_xlat38;
      u_xlat18 = ((x_495 * x_496) + x_498);
      let x_500 : f32 = u_xlat36;
      u_xlat36 = min(x_500, 1.0f);
      let x_503 : f32 = u_xlat36;
      let x_504 : f32 = u_xlat36;
      u_xlatb36 = (x_503 < -(x_504));
      let x_507 : bool = u_xlatb36;
      if (x_507) {
        let x_511 : f32 = u_xlat18;
        x_508 = -(x_511);
      } else {
        let x_514 : f32 = u_xlat18;
        x_508 = x_514;
      }
      let x_515 : f32 = x_508;
      u_xlat36 = x_515;
      let x_516 : f32 = u_xlat8;
      let x_517 : f32 = u_xlat36;
      u_xlat36 = ((x_516 * x_517) + -1.0f);
      let x_520 : vec2<f32> = u_xlat16;
      let x_521 : f32 = u_xlat36;
      let x_524 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_520 * vec2<f32>(x_521, x_521)) + vec2<f32>(x_524.x, x_524.y));
    }
    let x_527 : vec2<f32> = u_xlat27;
    u_xlat27 = x_527;
    let x_528 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_528, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_532 : vec2<f32> = u_xlat27;
    let x_534 : f32 = x_26.x_RenderViewportScaleFactor;
    u_xlat16 = (x_532 * vec2<f32>(x_534, x_534));
    let x_542 : vec2<f32> = u_xlat16;
    let x_543 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_542, 0.0f);
    u_xlat7 = x_543;
    let x_549 : vec4<f32> = u_xlat2;
    let x_551 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_549.x, x_549.y), 0.0f);
    let x_552 : vec3<f32> = vec3<f32>(x_551.x, x_551.y, x_551.z);
    let x_553 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
    let x_555 : vec4<f32> = u_xlat7;
    let x_556 : vec4<f32> = u_xlat3;
    let x_558 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_555 * x_556) + x_558);
    let x_560 : vec4<f32> = u_xlat3;
    let x_561 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_560 + x_561);
    let x_563 : vec2<f32> = u_xlat10;
    let x_564 : vec2<f32> = u_xlat22;
    u_xlat22 = (x_563 + x_564);

    continuing {
      let x_566 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_566 + 1i);
    }
  }
  let x_568 : vec4<f32> = u_xlat4;
  let x_569 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_568 / x_569);
  let x_571 : vec4<f32> = u_xlat0;
  let x_573 : vec4<f32> = u_xlat2;
  let x_575 : vec3<f32> = (vec3<f32>(x_571.x, x_571.x, x_571.x) * vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_580 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_584 : vec4<f32> = u_xlat0;
  let x_590 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_593 : vec2<f32> = u_xlat21;
  u_xlat3 = ((-(vec4<f32>(x_584.x, x_584.y, x_584.w, x_584.y)) * vec4<f32>(x_590.x, x_590.x, x_590.x, x_590.x)) + vec4<f32>(x_593.x, x_593.y, x_593.x, x_593.y));
  let x_596 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_596, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_600 : vec4<f32> = u_xlat3;
  let x_602 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_600 * vec4<f32>(x_602, x_602, x_602, x_602));
  let x_610 : vec4<f32> = u_xlat3;
  let x_612 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_610.x, x_610.y));
  u_xlat4 = x_612;
  let x_616 : vec4<f32> = u_xlat3;
  let x_618 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_616.z, x_616.w));
  u_xlat3 = x_618;
  let x_619 : vec4<f32> = u_xlat3;
  let x_622 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_619 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_622);
  let x_624 : vec4<f32> = u_xlat0;
  let x_628 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_631 : vec2<f32> = u_xlat21;
  let x_632 : vec2<f32> = ((-(vec2<f32>(x_624.z, x_624.y)) * vec2<f32>(x_628.x, x_628.x)) + x_631);
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat1;
  let x_639 : vec2<f32> = clamp(vec2<f32>(x_635.x, x_635.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_640 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_639.x, x_639.y, x_640.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat1;
  let x_645 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_647 : vec2<f32> = (vec2<f32>(x_642.x, x_642.y) * vec2<f32>(x_645, x_645));
  let x_648 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
  let x_653 : vec4<f32> = u_xlat1;
  let x_655 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_653.x, x_653.y));
  u_xlat4 = x_655;
  let x_656 : vec4<f32> = u_xlat3;
  let x_657 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_656 + x_657);
  let x_659 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_665 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_659.z, x_659.w, x_659.x, x_659.w) * vec4<f32>(x_662.x, x_662.x, x_662.x, x_662.x)) + vec4<f32>(x_665.x, x_665.y, x_665.x, x_665.y));
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_668, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_672 : vec4<f32> = u_xlat4;
  let x_674 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_672 * vec4<f32>(x_674, x_674, x_674, x_674));
  let x_680 : vec4<f32> = u_xlat4;
  let x_682 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_680.x, x_680.y));
  u_xlat5 = x_682;
  let x_683 : vec4<f32> = u_xlat5;
  let x_685 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_683 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_685);
  let x_687 : vec2<f32> = u_xlat21;
  let x_688 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat1;
  let x_694 : vec2<f32> = clamp(vec2<f32>(x_690.x, x_690.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_695 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_695.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat1;
  let x_700 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_702 : vec2<f32> = (vec2<f32>(x_697.x, x_697.y) * vec2<f32>(x_700, x_700));
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
  let x_708 : vec4<f32> = u_xlat1;
  let x_710 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_708.x, x_708.y));
  u_xlat5 = x_710;
  let x_711 : vec4<f32> = u_xlat5;
  let x_715 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_711 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_715);
  let x_720 : vec4<f32> = u_xlat4;
  let x_722 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_720.z, x_720.w));
  u_xlat4 = x_722;
  let x_723 : vec4<f32> = u_xlat4;
  let x_725 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_723 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_725);
  let x_727 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_733 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_727.z, x_727.y, x_727.w, x_727.y) * vec4<f32>(x_730.x, x_730.x, x_730.x, x_730.x)) + vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.y));
  let x_736 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_736, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_740 : vec4<f32> = u_xlat4;
  let x_742 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_740 * vec4<f32>(x_742, x_742, x_742, x_742));
  let x_748 : vec4<f32> = u_xlat4;
  let x_750 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_748.x, x_748.y));
  u_xlat5 = x_750;
  let x_751 : vec4<f32> = u_xlat3;
  let x_752 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_751 + x_752);
  let x_757 : vec4<f32> = u_xlat4;
  let x_759 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_757.z, x_757.w));
  u_xlat4 = x_759;
  let x_760 : vec4<f32> = u_xlat4;
  let x_762 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_760 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_762);
  let x_764 : vec4<f32> = u_xlat0;
  let x_767 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_770 : vec2<f32> = u_xlat21;
  let x_771 : vec2<f32> = ((vec2<f32>(x_764.x, x_764.y) * vec2<f32>(x_767.x, x_767.x)) + x_770);
  let x_772 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat0;
  let x_778 : vec2<f32> = clamp(vec2<f32>(x_774.x, x_774.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_779 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
  let x_781 : vec4<f32> = u_xlat0;
  let x_784 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_786 : vec2<f32> = (vec2<f32>(x_781.x, x_781.y) * vec2<f32>(x_784, x_784));
  let x_787 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
  let x_792 : vec4<f32> = u_xlat0;
  let x_794 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_792.x, x_792.y));
  u_xlat0 = x_794;
  let x_795 : vec4<f32> = u_xlat0;
  let x_796 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_795 + x_796);
  let x_798 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_798 * vec4<f32>(x_800.y, x_800.y, x_800.y, x_800.y));
  let x_803 : vec2<f32> = u_xlat21;
  let x_806 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_810 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_812 : vec2<f32> = ((x_803 * vec2<f32>(x_806.x, x_806.y)) + vec2<f32>(x_810.z, x_810.w));
  let x_813 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
  let x_820 : vec4<f32> = u_xlat1;
  let x_822 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_820.x, x_820.y));
  let x_823 : vec3<f32> = vec3<f32>(x_822.x, x_822.y, x_822.z);
  let x_824 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat0;
  let x_830 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_831 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat1;
  let x_836 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_838 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(x_836.z, x_836.z, x_836.z));
  let x_839 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_841 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_844 : vec4<f32> = u_xlat0;
  let x_848 : vec3<f32> = x_26.x_Bloom_Color;
  let x_849 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * x_848);
  let x_850 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_853 : f32 = u_xlat0.w;
  u_xlat4.w = (x_853 * 0.0625f);
  let x_856 : vec4<f32> = u_xlat2;
  let x_857 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_856 + x_857);
  let x_859 : vec4<f32> = u_xlat3;
  let x_861 : vec4<f32> = u_xlat1;
  let x_863 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) * vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  u_xlat1.w = 0.0f;
  let x_867 : vec4<f32> = u_xlat0;
  let x_868 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_867 + x_868);
  let x_871 : vec2<f32> = vs_TEXCOORD1;
  let x_874 : vec4<f32> = x_26.x_Grain_Params2;
  let x_878 : vec4<f32> = x_26.x_Grain_Params2;
  let x_880 : vec2<f32> = ((x_871 * vec2<f32>(x_874.x, x_874.y)) + vec2<f32>(x_878.z, x_878.w));
  let x_881 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
  let x_888 : vec4<f32> = u_xlat1;
  let x_890 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_888.x, x_888.y));
  let x_891 : vec3<f32> = vec3<f32>(x_890.x, x_890.y, x_890.z);
  let x_892 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat0;
  let x_895 : vec3<f32> = vec3<f32>(x_894.x, x_894.y, x_894.z);
  let x_896 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec4<f32> = u_xlat2;
  let x_902 : vec3<f32> = clamp(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_903 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_905.x, x_905.y, x_905.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_912 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_912);
  let x_916 : f32 = x_26.x_Grain_Params1.x;
  let x_917 : f32 = u_xlat31;
  u_xlat31 = ((x_916 * -(x_917)) + 1.0f);
  let x_921 : vec4<f32> = u_xlat0;
  let x_923 : vec4<f32> = u_xlat1;
  let x_925 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec4<f32> = u_xlat1;
  let x_931 : f32 = x_26.x_Grain_Params1.y;
  let x_933 : f32 = x_26.x_Grain_Params1.y;
  let x_935 : f32 = x_26.x_Grain_Params1.y;
  let x_937 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_931, x_933, x_935));
  let x_938 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat1;
  let x_942 : f32 = u_xlat31;
  let x_945 : vec4<f32> = u_xlat0;
  let x_947 : vec3<f32> = ((vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(x_942, x_942, x_942)) + vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_952 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_952);
  let x_954 : bool = u_xlatb1;
  if (x_954) {
    let x_957 : vec4<f32> = u_xlat0;
    let x_958 : vec3<f32> = vec3<f32>(x_957.x, x_957.y, x_957.z);
    let x_959 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
    let x_961 : vec4<f32> = u_xlat1;
    let x_965 : vec3<f32> = clamp(vec3<f32>(x_961.x, x_961.y, x_961.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_966 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
    let x_968 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_968.x, x_968.y, x_968.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_974 : vec4<f32> = u_xlat0;
  SV_Target0 = x_974;
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

