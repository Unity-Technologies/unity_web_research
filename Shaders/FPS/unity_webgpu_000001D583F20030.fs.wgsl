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
  x_Lut2D_Params : vec3<f32>,
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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlatb3 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb36 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_519 : f32;
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
    let x_141 : f32 = u_xlat1.x;
    let x_143 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_141 * x_143);
    let x_148 : f32 = u_xlat1.x;
    u_xlat12 = min(abs(x_148), 1.0f);
    let x_153 : f32 = u_xlat1.x;
    u_xlat22.x = max(abs(x_153), 1.0f);
    let x_158 : f32 = u_xlat22.x;
    u_xlat22.x = (1.0f / x_158);
    let x_162 : f32 = u_xlat22.x;
    let x_163 : f32 = u_xlat12;
    u_xlat12 = (x_162 * x_163);
    let x_165 : f32 = u_xlat12;
    let x_166 : f32 = u_xlat12;
    u_xlat22.x = (x_165 * x_166);
    let x_171 : f32 = u_xlat22.x;
    u_xlat32 = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_177 : f32 = u_xlat22.x;
    let x_178 : f32 = u_xlat32;
    u_xlat32 = ((x_177 * x_178) + 0.180141002f);
    let x_183 : f32 = u_xlat22.x;
    let x_184 : f32 = u_xlat32;
    u_xlat32 = ((x_183 * x_184) + -0.330299497f);
    let x_189 : f32 = u_xlat22.x;
    let x_190 : f32 = u_xlat32;
    u_xlat22.x = ((x_189 * x_190) + 0.999866009f);
    let x_196 : f32 = u_xlat22.x;
    let x_197 : f32 = u_xlat12;
    u_xlat32 = (x_196 * x_197);
    let x_201 : f32 = u_xlat1.x;
    u_xlatb3 = (1.0f < abs(x_201));
    let x_204 : f32 = u_xlat32;
    u_xlat32 = ((x_204 * -2.0f) + 1.570796371f);
    let x_209 : bool = u_xlatb3;
    let x_210 : f32 = u_xlat32;
    u_xlat32 = select(0.0f, x_210, x_209);
    let x_212 : f32 = u_xlat12;
    let x_214 : f32 = u_xlat22.x;
    let x_216 : f32 = u_xlat32;
    u_xlat12 = ((x_212 * x_214) + x_216);
    let x_219 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_219, 1.0f);
    let x_224 : f32 = u_xlat1.x;
    let x_226 : f32 = u_xlat1.x;
    u_xlatb1 = (x_224 < -(x_226));
    let x_229 : bool = u_xlatb1;
    if (x_229) {
      let x_234 : f32 = u_xlat12;
      x_231 = -(x_234);
    } else {
      let x_237 : f32 = u_xlat12;
      x_231 = x_237;
    }
    let x_238 : f32 = x_231;
    u_xlat1.x = x_238;
    let x_241 : f32 = u_xlat2.x;
    let x_243 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_241 * x_243) + -1.0f);
    let x_247 : vec4<f32> = u_xlat0;
    let x_249 : vec4<f32> = u_xlat1;
    let x_252 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_249.x, x_249.x)) + x_252);
  }
  let x_264 : vec2<f32> = vs_TEXCOORD0;
  let x_265 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_264);
  u_xlat0.x = x_265.x;
  let x_269 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_269 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_276 : vec2<f32> = u_xlat10;
  let x_277 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_276, x_277);
  let x_279 : f32 = u_xlat30;
  let x_281 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_279, x_279) * x_281);
  let x_283 : vec2<f32> = u_xlat10;
  let x_286 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_288 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_289 : vec2<f32> = vec2<f32>(x_286, x_288);
  u_xlat10 = (x_283 * vec2<f32>(x_289.x, x_289.y));
  let x_294 : vec2<f32> = u_xlat10;
  let x_298 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_300 : vec2<f32> = (-(x_294) * vec2<f32>(x_298.z, x_298.w));
  let x_301 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_300.x, x_300.y, x_301.z);
  let x_303 : vec3<f32> = u_xlat2;
  let x_305 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) * vec2<f32>(0.5f, 0.5f));
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_305.x, x_305.y, x_306.z);
  let x_308 : vec3<f32> = u_xlat2;
  let x_310 : vec3<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_308.x, x_308.y), vec2<f32>(x_310.x, x_310.y));
  let x_313 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_313);
  let x_317 : f32 = u_xlat30;
  u_xlati30 = i32(x_317);
  let x_319 : i32 = u_xlati30;
  u_xlati30 = max(x_319, 3i);
  let x_321 : i32 = u_xlati30;
  u_xlati30 = min(x_321, 16i);
  let x_324 : i32 = u_xlati30;
  u_xlat1.x = f32(x_324);
  let x_327 : vec2<f32> = u_xlat10;
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_327) / vec2<f32>(x_329.x, x_329.x));
  u_xlat2.y = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_347 : vec2<f32> = vs_TEXCOORD0;
  u_xlat6 = x_347;
  u_xlati_loop_1 = 0i;
  loop {
    let x_356 : i32 = u_xlati_loop_1;
    let x_357 : i32 = u_xlati30;
    if ((x_356 < x_357)) {
    } else {
      break;
    }
    let x_360 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_360);
    let x_362 : f32 = u_xlat36;
    u_xlat36 = (x_362 + 0.5f);
    let x_364 : f32 = u_xlat36;
    let x_366 : f32 = u_xlat1.x;
    u_xlat2.x = (x_364 / x_366);
    let x_370 : vec2<f32> = u_xlat6;
    let x_371 : vec2<f32> = (x_370 + vec2<f32>(-0.5f, -0.5f));
    let x_372 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
    let x_375 : vec4<f32> = u_xlat7;
    let x_378 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_375.x, x_375.y) * vec2<f32>(x_378.z, x_378.z)) + vec2<f32>(0.5f, 0.5f));
    let x_382 : vec4<f32> = u_xlat7;
    let x_385 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_389 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_392 : vec2<f32> = ((vec2<f32>(x_382.x, x_382.y) * vec2<f32>(x_385.z, x_385.z)) + -(vec2<f32>(x_389.x, x_389.y)));
    let x_393 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_395 : vec4<f32> = u_xlat7;
    let x_398 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_400 : vec2<f32> = (vec2<f32>(x_395.x, x_395.y) * vec2<f32>(x_398.z, x_398.w));
    let x_401 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
    let x_403 : vec4<f32> = u_xlat7;
    let x_405 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_403.x, x_403.y), vec2<f32>(x_405.x, x_405.y));
    let x_408 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_408);
    let x_410 : bool = u_xlatb11;
    if (x_410) {
      let x_414 : f32 = u_xlat36;
      let x_417 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_414, x_414) * vec2<f32>(x_417.x, x_417.y));
      let x_422 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_422);
      let x_425 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_425);
      let x_429 : f32 = u_xlat8.x;
      let x_430 : f32 = u_xlat9;
      u_xlat8.x = (x_429 / x_430);
      let x_435 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_435);
      let x_438 : f32 = u_xlat8.x;
      let x_439 : f32 = u_xlat18;
      u_xlat8.x = ((x_438 * x_439) + -1.0f);
      let x_443 : vec4<f32> = u_xlat7;
      let x_445 : vec2<f32> = u_xlat8;
      let x_448 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_443.x, x_443.y) * vec2<f32>(x_445.x, x_445.x)) + x_448);
    } else {
      let x_452 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_452);
      let x_454 : f32 = u_xlat28;
      let x_456 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_454 * x_456);
      let x_458 : f32 = u_xlat36;
      let x_460 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_458 * x_460);
      let x_463 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_463), 1.0f);
      let x_466 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_466), 1.0f);
      let x_469 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_469);
      let x_471 : f32 = u_xlat38;
      let x_472 : f32 = u_xlat9;
      u_xlat38 = (x_471 * x_472);
      let x_474 : f32 = u_xlat38;
      let x_475 : f32 = u_xlat38;
      u_xlat9 = (x_474 * x_475);
      let x_478 : f32 = u_xlat9;
      u_xlat19 = ((x_478 * 0.0208351f) + -0.085133001f);
      let x_481 : f32 = u_xlat9;
      let x_482 : f32 = u_xlat19;
      u_xlat19 = ((x_481 * x_482) + 0.180141002f);
      let x_485 : f32 = u_xlat9;
      let x_486 : f32 = u_xlat19;
      u_xlat19 = ((x_485 * x_486) + -0.330299497f);
      let x_489 : f32 = u_xlat9;
      let x_490 : f32 = u_xlat19;
      u_xlat9 = ((x_489 * x_490) + 0.999866009f);
      let x_493 : f32 = u_xlat38;
      let x_494 : f32 = u_xlat9;
      u_xlat19 = (x_493 * x_494);
      let x_497 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_497));
      let x_500 : f32 = u_xlat19;
      u_xlat19 = ((x_500 * -2.0f) + 1.570796371f);
      let x_503 : bool = u_xlatb29;
      let x_504 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_504, x_503);
      let x_506 : f32 = u_xlat38;
      let x_507 : f32 = u_xlat9;
      let x_509 : f32 = u_xlat19;
      u_xlat38 = ((x_506 * x_507) + x_509);
      let x_511 : f32 = u_xlat36;
      u_xlat36 = min(x_511, 1.0f);
      let x_514 : f32 = u_xlat36;
      let x_515 : f32 = u_xlat36;
      u_xlatb36 = (x_514 < -(x_515));
      let x_518 : bool = u_xlatb36;
      if (x_518) {
        let x_522 : f32 = u_xlat38;
        x_519 = -(x_522);
      } else {
        let x_525 : f32 = u_xlat38;
        x_519 = x_525;
      }
      let x_526 : f32 = x_519;
      u_xlat36 = x_526;
      let x_527 : f32 = u_xlat28;
      let x_528 : f32 = u_xlat36;
      u_xlat36 = ((x_527 * x_528) + -1.0f);
      let x_531 : vec4<f32> = u_xlat7;
      let x_533 : f32 = u_xlat36;
      let x_536 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_531.x, x_531.y) * vec2<f32>(x_533, x_533)) + x_536);
    }
    let x_538 : vec2<f32> = u_xlat8;
    u_xlat8 = x_538;
    let x_539 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_539, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_543 : vec2<f32> = u_xlat8;
    let x_545 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_547 : vec2<f32> = (x_543 * vec2<f32>(x_545, x_545));
    let x_548 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_548.z, x_548.w);
    let x_555 : vec4<f32> = u_xlat7;
    let x_557 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_555.x, x_555.y), 0.0f);
    u_xlat7 = x_557;
    let x_563 : vec3<f32> = u_xlat2;
    let x_565 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_563.x, x_563.y), 0.0f);
    let x_566 : vec3<f32> = vec3<f32>(x_565.x, x_565.y, x_565.z);
    let x_567 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
    let x_569 : vec4<f32> = u_xlat7;
    let x_570 : vec4<f32> = u_xlat3;
    let x_572 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_569 * x_570) + x_572);
    let x_574 : vec4<f32> = u_xlat3;
    let x_575 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_574 + x_575);
    let x_577 : vec2<f32> = u_xlat10;
    let x_578 : vec2<f32> = u_xlat6;
    u_xlat6 = (x_577 + x_578);

    continuing {
      let x_580 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_580 + 1i);
    }
  }
  let x_582 : vec4<f32> = u_xlat4;
  let x_583 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_582 / x_583);
  let x_585 : vec4<f32> = u_xlat0;
  let x_587 : vec4<f32> = u_xlat3;
  let x_589 : vec3<f32> = (vec3<f32>(x_585.x, x_585.x, x_585.x) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_594 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_594.x, x_594.y, x_594.x, x_594.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_600 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_600 * 0.5f);
  let x_603 : vec4<f32> = u_xlat0;
  let x_605 : vec4<f32> = u_xlat1;
  let x_608 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_603.x, x_603.y, x_603.z, x_603.y) * vec4<f32>(x_605.x, x_605.x, x_605.x, x_605.x)) + vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y));
  let x_611 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_611, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_615 : vec4<f32> = u_xlat4;
  let x_617 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_615 * vec4<f32>(x_617, x_617, x_617, x_617));
  let x_625 : vec4<f32> = u_xlat4;
  let x_627 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_625.x, x_625.y));
  u_xlat5 = x_627;
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_631.z, x_631.w));
  u_xlat4 = x_633;
  let x_634 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_634 + x_635);
  let x_637 : vec4<f32> = u_xlat0;
  let x_639 : vec4<f32> = u_xlat1;
  let x_642 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_637.x, x_637.w, x_637.z, x_637.w) * vec4<f32>(x_639.x, x_639.x, x_639.x, x_639.x)) + vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y));
  let x_645 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_645, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_649 : vec4<f32> = u_xlat0;
  let x_651 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_649 * vec4<f32>(x_651, x_651, x_651, x_651));
  let x_657 : vec4<f32> = u_xlat0;
  let x_659 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_657.x, x_657.y));
  u_xlat5 = x_659;
  let x_660 : vec4<f32> = u_xlat4;
  let x_661 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_660 + x_661);
  let x_666 : vec4<f32> = u_xlat0;
  let x_668 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_666.z, x_666.w));
  u_xlat0 = x_668;
  let x_669 : vec4<f32> = u_xlat0;
  let x_670 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_669 + x_670);
  let x_672 : vec4<f32> = u_xlat0;
  let x_675 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_672 * vec4<f32>(x_675.y, x_675.y, x_675.y, x_675.y));
  let x_678 : vec2<f32> = u_xlat21;
  let x_681 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_685 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_687 : vec2<f32> = ((x_678 * vec2<f32>(x_681.x, x_681.y)) + vec2<f32>(x_685.z, x_685.w));
  let x_688 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
  let x_695 : vec4<f32> = u_xlat1;
  let x_697 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_695.x, x_695.y));
  let x_698 : vec3<f32> = vec3<f32>(x_697.x, x_697.y, x_697.z);
  let x_699 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat0;
  let x_705 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_706 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat1;
  let x_711 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_713 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(x_711.z, x_711.z, x_711.z));
  let x_714 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_716 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_716 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_719 : vec4<f32> = u_xlat0;
  let x_723 : vec3<f32> = x_26.x_Bloom_Color;
  let x_724 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) * x_723);
  let x_725 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_728 : f32 = u_xlat0.w;
  u_xlat5.w = (x_728 * 0.25f);
  let x_731 : vec4<f32> = u_xlat3;
  let x_732 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_731 + x_732);
  let x_734 : vec4<f32> = u_xlat4;
  let x_736 : vec4<f32> = u_xlat1;
  let x_738 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) * vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  u_xlat1.w = 0.0f;
  let x_742 : vec4<f32> = u_xlat0;
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_742 + x_743);
  let x_745 : vec4<f32> = u_xlat0;
  let x_748 : f32 = x_26.x_PostExposure;
  let x_750 : f32 = x_26.x_PostExposure;
  let x_752 : f32 = x_26.x_PostExposure;
  let x_754 : f32 = x_26.x_PostExposure;
  let x_755 : vec4<f32> = vec4<f32>(x_748, x_750, x_752, x_754);
  u_xlat0 = (x_745 * vec4<f32>(x_755.x, x_755.y, x_755.z, x_755.w));
  let x_762 : vec4<f32> = u_xlat0;
  let x_769 : vec3<f32> = ((vec3<f32>(x_762.z, x_762.x, x_762.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_770 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat1;
  let x_774 : vec3<f32> = log2(vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat1;
  let x_784 : vec3<f32> = ((vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : vec4<f32> = u_xlat1;
  let x_791 : vec3<f32> = clamp(vec3<f32>(x_787.x, x_787.y, x_787.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_792 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_795 : vec4<f32> = u_xlat1;
  let x_799 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_795.x, x_795.y, x_795.z) * vec3<f32>(x_799.z, x_799.z, x_799.z));
  let x_803 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_803);
  let x_807 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_809 : vec2<f32> = (vec2<f32>(x_807.x, x_807.y) * vec2<f32>(0.5f, 0.5f));
  let x_810 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_809.x, x_809.y, x_810.z);
  let x_812 : vec3<f32> = u_xlat11;
  let x_815 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_818 : vec3<f32> = u_xlat2;
  let x_820 : vec2<f32> = ((vec2<f32>(x_812.y, x_812.z) * vec2<f32>(x_815.x, x_815.y)) + vec2<f32>(x_818.x, x_818.y));
  let x_821 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_821.x, x_820.x, x_820.y, x_821.w);
  let x_824 : f32 = u_xlat11.x;
  let x_826 : f32 = x_26.x_Lut2D_Params.y;
  let x_829 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_824 * x_826) + x_829);
  let x_837 : vec4<f32> = u_xlat3;
  let x_839 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_837.x, x_837.z));
  let x_840 : vec3<f32> = vec3<f32>(x_839.x, x_839.y, x_839.z);
  let x_841 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_844 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_844;
  let x_846 : vec2<f32> = u_xlat22;
  let x_847 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_846 + vec2<f32>(x_847.x, x_847.z));
  let x_853 : vec2<f32> = u_xlat21;
  let x_854 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_853);
  u_xlat2 = vec3<f32>(x_854.x, x_854.y, x_854.z);
  let x_857 : f32 = u_xlat1.x;
  let x_859 : f32 = x_26.x_Lut2D_Params.z;
  let x_862 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_857 * x_859) + -(x_862));
  let x_866 : vec4<f32> = u_xlat4;
  let x_869 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_866.x, x_866.y, x_866.z)) + x_869);
  let x_871 : vec4<f32> = u_xlat1;
  let x_873 : vec3<f32> = u_xlat11;
  let x_875 : vec4<f32> = u_xlat4;
  let x_877 : vec3<f32> = ((vec3<f32>(x_871.x, x_871.x, x_871.x) * x_873) + vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_882 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_882);
  let x_884 : bool = u_xlatb1;
  if (x_884) {
    let x_887 : vec4<f32> = u_xlat0;
    let x_888 : vec3<f32> = vec3<f32>(x_887.x, x_887.y, x_887.z);
    let x_889 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
    let x_891 : vec4<f32> = u_xlat1;
    let x_895 : vec3<f32> = clamp(vec3<f32>(x_891.x, x_891.y, x_891.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_896 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
    let x_898 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_908 : vec4<f32> = u_xlat0;
  SV_Target0 = x_908;
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

