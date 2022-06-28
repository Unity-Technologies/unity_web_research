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

var<private> u_xlat6 : vec4<f32>;

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
  var x_522 : f32;
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
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_348.z, x_348.w);
  u_xlati_loop_1 = 0i;
  loop {
    let x_358 : i32 = u_xlati_loop_1;
    let x_359 : i32 = u_xlati30;
    if ((x_358 < x_359)) {
    } else {
      break;
    }
    let x_362 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_362);
    let x_364 : f32 = u_xlat36;
    u_xlat36 = (x_364 + 0.5f);
    let x_366 : f32 = u_xlat36;
    let x_368 : f32 = u_xlat1.x;
    u_xlat2.x = (x_366 / x_368);
    let x_372 : vec4<f32> = u_xlat6;
    let x_374 : vec2<f32> = (vec2<f32>(x_372.x, x_372.y) + vec2<f32>(-0.5f, -0.5f));
    let x_375 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
    let x_378 : vec4<f32> = u_xlat7;
    let x_381 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_378.x, x_378.y) * vec2<f32>(x_381.z, x_381.z)) + vec2<f32>(0.5f, 0.5f));
    let x_385 : vec4<f32> = u_xlat7;
    let x_388 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_392 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_395 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(x_388.z, x_388.z)) + -(vec2<f32>(x_392.x, x_392.y)));
    let x_396 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
    let x_398 : vec4<f32> = u_xlat7;
    let x_401 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_403 : vec2<f32> = (vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_401.z, x_401.w));
    let x_404 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
    let x_406 : vec4<f32> = u_xlat7;
    let x_408 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_406.x, x_406.y), vec2<f32>(x_408.x, x_408.y));
    let x_411 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_411);
    let x_413 : bool = u_xlatb11;
    if (x_413) {
      let x_417 : f32 = u_xlat36;
      let x_420 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_417, x_417) * vec2<f32>(x_420.x, x_420.y));
      let x_425 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_425);
      let x_428 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_428);
      let x_432 : f32 = u_xlat8.x;
      let x_433 : f32 = u_xlat9;
      u_xlat8.x = (x_432 / x_433);
      let x_438 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_438);
      let x_441 : f32 = u_xlat8.x;
      let x_442 : f32 = u_xlat18;
      u_xlat8.x = ((x_441 * x_442) + -1.0f);
      let x_446 : vec4<f32> = u_xlat7;
      let x_448 : vec2<f32> = u_xlat8;
      let x_451 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_446.x, x_446.y) * vec2<f32>(x_448.x, x_448.x)) + x_451);
    } else {
      let x_455 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_455);
      let x_457 : f32 = u_xlat28;
      let x_459 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_457 * x_459);
      let x_461 : f32 = u_xlat36;
      let x_463 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_461 * x_463);
      let x_466 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_466), 1.0f);
      let x_469 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_469), 1.0f);
      let x_472 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_472);
      let x_474 : f32 = u_xlat38;
      let x_475 : f32 = u_xlat9;
      u_xlat38 = (x_474 * x_475);
      let x_477 : f32 = u_xlat38;
      let x_478 : f32 = u_xlat38;
      u_xlat9 = (x_477 * x_478);
      let x_481 : f32 = u_xlat9;
      u_xlat19 = ((x_481 * 0.0208351f) + -0.085133001f);
      let x_484 : f32 = u_xlat9;
      let x_485 : f32 = u_xlat19;
      u_xlat19 = ((x_484 * x_485) + 0.180141002f);
      let x_488 : f32 = u_xlat9;
      let x_489 : f32 = u_xlat19;
      u_xlat19 = ((x_488 * x_489) + -0.330299497f);
      let x_492 : f32 = u_xlat9;
      let x_493 : f32 = u_xlat19;
      u_xlat9 = ((x_492 * x_493) + 0.999866009f);
      let x_496 : f32 = u_xlat38;
      let x_497 : f32 = u_xlat9;
      u_xlat19 = (x_496 * x_497);
      let x_500 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_500));
      let x_503 : f32 = u_xlat19;
      u_xlat19 = ((x_503 * -2.0f) + 1.570796371f);
      let x_506 : bool = u_xlatb29;
      let x_507 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_507, x_506);
      let x_509 : f32 = u_xlat38;
      let x_510 : f32 = u_xlat9;
      let x_512 : f32 = u_xlat19;
      u_xlat38 = ((x_509 * x_510) + x_512);
      let x_514 : f32 = u_xlat36;
      u_xlat36 = min(x_514, 1.0f);
      let x_517 : f32 = u_xlat36;
      let x_518 : f32 = u_xlat36;
      u_xlatb36 = (x_517 < -(x_518));
      let x_521 : bool = u_xlatb36;
      if (x_521) {
        let x_525 : f32 = u_xlat38;
        x_522 = -(x_525);
      } else {
        let x_528 : f32 = u_xlat38;
        x_522 = x_528;
      }
      let x_529 : f32 = x_522;
      u_xlat36 = x_529;
      let x_530 : f32 = u_xlat28;
      let x_531 : f32 = u_xlat36;
      u_xlat36 = ((x_530 * x_531) + -1.0f);
      let x_534 : vec4<f32> = u_xlat7;
      let x_536 : f32 = u_xlat36;
      let x_539 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_534.x, x_534.y) * vec2<f32>(x_536, x_536)) + x_539);
    }
    let x_541 : vec2<f32> = u_xlat8;
    u_xlat8 = x_541;
    let x_542 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_542, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_546 : vec2<f32> = u_xlat8;
    let x_548 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_550 : vec2<f32> = (x_546 * vec2<f32>(x_548, x_548));
    let x_551 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
    let x_558 : vec4<f32> = u_xlat7;
    let x_560 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_558.x, x_558.y), 0.0f);
    u_xlat7 = x_560;
    let x_566 : vec3<f32> = u_xlat2;
    let x_568 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_566.x, x_566.y), 0.0f);
    let x_569 : vec3<f32> = vec3<f32>(x_568.x, x_568.y, x_568.z);
    let x_570 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
    let x_572 : vec4<f32> = u_xlat7;
    let x_573 : vec4<f32> = u_xlat3;
    let x_575 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_572 * x_573) + x_575);
    let x_577 : vec4<f32> = u_xlat3;
    let x_578 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_577 + x_578);
    let x_580 : vec2<f32> = u_xlat10;
    let x_581 : vec4<f32> = u_xlat6;
    let x_583 : vec2<f32> = (x_580 + vec2<f32>(x_581.x, x_581.y));
    let x_584 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);

    continuing {
      let x_586 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_586 + 1i);
    }
  }
  let x_588 : vec4<f32> = u_xlat4;
  let x_589 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_588 / x_589);
  let x_591 : vec4<f32> = u_xlat0;
  let x_593 : vec4<f32> = u_xlat3;
  let x_595 : vec3<f32> = (vec3<f32>(x_591.x, x_591.x, x_591.x) * vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_600 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_600.x, x_600.y, x_600.x, x_600.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_604 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_613 : vec2<f32> = u_xlat21;
  u_xlat4 = ((-(vec4<f32>(x_604.x, x_604.y, x_604.w, x_604.y)) * vec4<f32>(x_610.x, x_610.x, x_610.x, x_610.x)) + vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_616, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_620 : vec4<f32> = u_xlat4;
  let x_622 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_620 * vec4<f32>(x_622, x_622, x_622, x_622));
  let x_630 : vec4<f32> = u_xlat4;
  let x_632 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_630.x, x_630.y));
  u_xlat5 = x_632;
  let x_636 : vec4<f32> = u_xlat4;
  let x_638 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_636.z, x_636.w));
  u_xlat4 = x_638;
  let x_639 : vec4<f32> = u_xlat4;
  let x_642 : vec4<f32> = u_xlat5;
  u_xlat4 = ((x_639 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_642);
  let x_644 : vec4<f32> = u_xlat0;
  let x_648 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_651 : vec2<f32> = u_xlat21;
  let x_652 : vec2<f32> = ((-(vec2<f32>(x_644.z, x_644.y)) * vec2<f32>(x_648.x, x_648.x)) + x_651);
  let x_653 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat1;
  let x_659 : vec2<f32> = clamp(vec2<f32>(x_655.x, x_655.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_660 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat1;
  let x_665 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_667 : vec2<f32> = (vec2<f32>(x_662.x, x_662.y) * vec2<f32>(x_665, x_665));
  let x_668 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
  let x_673 : vec4<f32> = u_xlat1;
  let x_675 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_673.x, x_673.y));
  u_xlat5 = x_675;
  let x_676 : vec4<f32> = u_xlat4;
  let x_677 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_676 + x_677);
  let x_679 : vec4<f32> = u_xlat0;
  let x_682 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_685 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_679.z, x_679.w, x_679.x, x_679.w) * vec4<f32>(x_682.x, x_682.x, x_682.x, x_682.x)) + vec4<f32>(x_685.x, x_685.y, x_685.x, x_685.y));
  let x_688 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_688, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_692 : vec4<f32> = u_xlat5;
  let x_694 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_692 * vec4<f32>(x_694, x_694, x_694, x_694));
  let x_700 : vec4<f32> = u_xlat5;
  let x_702 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_700.x, x_700.y));
  u_xlat6 = x_702;
  let x_703 : vec4<f32> = u_xlat6;
  let x_705 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_703 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_705);
  let x_707 : vec2<f32> = u_xlat21;
  let x_708 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_707.x, x_707.y, x_708.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat1;
  let x_714 : vec2<f32> = clamp(vec2<f32>(x_710.x, x_710.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_714.x, x_714.y, x_715.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat1;
  let x_720 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_722 : vec2<f32> = (vec2<f32>(x_717.x, x_717.y) * vec2<f32>(x_720, x_720));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_723.z, x_723.w);
  let x_728 : vec4<f32> = u_xlat1;
  let x_730 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_728.x, x_728.y));
  u_xlat6 = x_730;
  let x_731 : vec4<f32> = u_xlat6;
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_731 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_735);
  let x_740 : vec4<f32> = u_xlat5;
  let x_742 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_740.z, x_740.w));
  u_xlat5 = x_742;
  let x_743 : vec4<f32> = u_xlat5;
  let x_745 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_743 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_745);
  let x_747 : vec4<f32> = u_xlat0;
  let x_750 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_753 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_747.z, x_747.y, x_747.w, x_747.y) * vec4<f32>(x_750.x, x_750.x, x_750.x, x_750.x)) + vec4<f32>(x_753.x, x_753.y, x_753.x, x_753.y));
  let x_756 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_756, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_760 : vec4<f32> = u_xlat5;
  let x_762 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_760 * vec4<f32>(x_762, x_762, x_762, x_762));
  let x_768 : vec4<f32> = u_xlat5;
  let x_770 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_768.x, x_768.y));
  u_xlat6 = x_770;
  let x_771 : vec4<f32> = u_xlat4;
  let x_772 : vec4<f32> = u_xlat6;
  u_xlat4 = (x_771 + x_772);
  let x_777 : vec4<f32> = u_xlat5;
  let x_779 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_777.z, x_777.w));
  u_xlat5 = x_779;
  let x_780 : vec4<f32> = u_xlat5;
  let x_782 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_780 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_782);
  let x_784 : vec4<f32> = u_xlat0;
  let x_787 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_790 : vec2<f32> = u_xlat21;
  let x_791 : vec2<f32> = ((vec2<f32>(x_784.x, x_784.y) * vec2<f32>(x_787.x, x_787.x)) + x_790);
  let x_792 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_792.w);
  let x_794 : vec4<f32> = u_xlat0;
  let x_798 : vec2<f32> = clamp(vec2<f32>(x_794.x, x_794.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_799 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_798.x, x_798.y, x_799.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat0;
  let x_804 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_806 : vec2<f32> = (vec2<f32>(x_801.x, x_801.y) * vec2<f32>(x_804, x_804));
  let x_807 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
  let x_812 : vec4<f32> = u_xlat0;
  let x_814 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_812.x, x_812.y));
  u_xlat0 = x_814;
  let x_815 : vec4<f32> = u_xlat0;
  let x_816 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_815 + x_816);
  let x_818 : vec4<f32> = u_xlat0;
  let x_820 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_818 * vec4<f32>(x_820.y, x_820.y, x_820.y, x_820.y));
  let x_823 : vec2<f32> = u_xlat21;
  let x_826 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_830 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_832 : vec2<f32> = ((x_823 * vec2<f32>(x_826.x, x_826.y)) + vec2<f32>(x_830.z, x_830.w));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_833.z, x_833.w);
  let x_840 : vec4<f32> = u_xlat1;
  let x_842 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_840.x, x_840.y));
  let x_843 : vec3<f32> = vec3<f32>(x_842.x, x_842.y, x_842.z);
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = (vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_851 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat1;
  let x_856 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_858 : vec3<f32> = (vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_856.z, x_856.z, x_856.z));
  let x_859 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_861 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_864 : vec4<f32> = u_xlat0;
  let x_868 : vec3<f32> = x_26.x_Bloom_Color;
  let x_869 : vec3<f32> = (vec3<f32>(x_864.x, x_864.y, x_864.z) * x_868);
  let x_870 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_873 : f32 = u_xlat0.w;
  u_xlat5.w = (x_873 * 0.0625f);
  let x_876 : vec4<f32> = u_xlat3;
  let x_877 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_876 + x_877);
  let x_879 : vec4<f32> = u_xlat4;
  let x_881 : vec4<f32> = u_xlat1;
  let x_883 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) * vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  u_xlat1.w = 0.0f;
  let x_887 : vec4<f32> = u_xlat0;
  let x_888 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_887 + x_888);
  let x_890 : vec4<f32> = u_xlat0;
  let x_893 : f32 = x_26.x_PostExposure;
  let x_895 : f32 = x_26.x_PostExposure;
  let x_897 : f32 = x_26.x_PostExposure;
  let x_899 : f32 = x_26.x_PostExposure;
  let x_900 : vec4<f32> = vec4<f32>(x_893, x_895, x_897, x_899);
  u_xlat0 = (x_890 * vec4<f32>(x_900.x, x_900.y, x_900.z, x_900.w));
  let x_907 : vec4<f32> = u_xlat0;
  let x_914 : vec3<f32> = ((vec3<f32>(x_907.z, x_907.x, x_907.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_915 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat1;
  let x_919 : vec3<f32> = log2(vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : vec4<f32> = u_xlat1;
  let x_929 : vec3<f32> = ((vec3<f32>(x_922.x, x_922.y, x_922.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_930 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat1;
  let x_936 : vec3<f32> = clamp(vec3<f32>(x_932.x, x_932.y, x_932.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_937 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_940 : vec4<f32> = u_xlat1;
  let x_944 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(x_944.z, x_944.z, x_944.z));
  let x_948 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_948);
  let x_952 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_954 : vec2<f32> = (vec2<f32>(x_952.x, x_952.y) * vec2<f32>(0.5f, 0.5f));
  let x_955 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_954.x, x_954.y, x_955.z);
  let x_957 : vec3<f32> = u_xlat11;
  let x_960 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_963 : vec3<f32> = u_xlat2;
  let x_965 : vec2<f32> = ((vec2<f32>(x_957.y, x_957.z) * vec2<f32>(x_960.x, x_960.y)) + vec2<f32>(x_963.x, x_963.y));
  let x_966 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_966.x, x_965.x, x_965.y, x_966.w);
  let x_969 : f32 = u_xlat11.x;
  let x_971 : f32 = x_26.x_Lut2D_Params.y;
  let x_974 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_969 * x_971) + x_974);
  let x_982 : vec4<f32> = u_xlat3;
  let x_984 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_982.x, x_982.z));
  let x_985 : vec3<f32> = vec3<f32>(x_984.x, x_984.y, x_984.z);
  let x_986 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_989 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_989;
  let x_991 : vec2<f32> = u_xlat22;
  let x_992 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_991 + vec2<f32>(x_992.x, x_992.z));
  let x_998 : vec2<f32> = u_xlat21;
  let x_999 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_998);
  u_xlat2 = vec3<f32>(x_999.x, x_999.y, x_999.z);
  let x_1002 : f32 = u_xlat1.x;
  let x_1004 : f32 = x_26.x_Lut2D_Params.z;
  let x_1007 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_1002 * x_1004) + -(x_1007));
  let x_1011 : vec4<f32> = u_xlat4;
  let x_1014 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_1011.x, x_1011.y, x_1011.z)) + x_1014);
  let x_1016 : vec4<f32> = u_xlat1;
  let x_1018 : vec3<f32> = u_xlat11;
  let x_1020 : vec4<f32> = u_xlat4;
  let x_1022 : vec3<f32> = ((vec3<f32>(x_1016.x, x_1016.x, x_1016.x) * x_1018) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1027 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1027);
  let x_1029 : bool = u_xlatb1;
  if (x_1029) {
    let x_1032 : vec4<f32> = u_xlat0;
    let x_1033 : vec3<f32> = vec3<f32>(x_1032.x, x_1032.y, x_1032.z);
    let x_1034 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
    let x_1036 : vec4<f32> = u_xlat1;
    let x_1040 : vec3<f32> = clamp(vec3<f32>(x_1036.x, x_1036.y, x_1036.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1041 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
    let x_1043 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_1043.x, x_1043.y, x_1043.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1053 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1053;
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

