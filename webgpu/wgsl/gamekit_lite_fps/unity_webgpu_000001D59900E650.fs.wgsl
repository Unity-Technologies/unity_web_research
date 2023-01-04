struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
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
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
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

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(15) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(17) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(9) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_GrainTex : sampler;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(16) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_522 : f32;
  var x_1082 : f32;
  var x_1457 : f32;
  var x_1469 : f32;
  var x_1481 : f32;
  var x_1533 : f32;
  var x_1546 : f32;
  var x_1558 : f32;
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
    let x_549 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_551 : vec2<f32> = (x_546 * vec2<f32>(x_549, x_549));
    let x_552 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
    let x_559 : vec4<f32> = u_xlat7;
    let x_561 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_559.x, x_559.y), 0.0f);
    u_xlat7 = x_561;
    let x_567 : vec3<f32> = u_xlat2;
    let x_569 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_567.x, x_567.y), 0.0f);
    let x_570 : vec3<f32> = vec3<f32>(x_569.x, x_569.y, x_569.z);
    let x_571 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
    let x_573 : vec4<f32> = u_xlat7;
    let x_574 : vec4<f32> = u_xlat3;
    let x_576 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_573 * x_574) + x_576);
    let x_578 : vec4<f32> = u_xlat3;
    let x_579 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_578 + x_579);
    let x_581 : vec2<f32> = u_xlat10;
    let x_582 : vec4<f32> = u_xlat6;
    let x_584 : vec2<f32> = (x_581 + vec2<f32>(x_582.x, x_582.y));
    let x_585 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);

    continuing {
      let x_587 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_587 + 1i);
    }
  }
  let x_589 : vec4<f32> = u_xlat4;
  let x_590 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_589 / x_590);
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : vec4<f32> = u_xlat3;
  let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_601 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_601.x, x_601.y, x_601.x, x_601.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_605 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_614 : vec2<f32> = u_xlat21;
  u_xlat4 = ((-(vec4<f32>(x_605.x, x_605.y, x_605.w, x_605.y)) * vec4<f32>(x_611.x, x_611.x, x_611.x, x_611.x)) + vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y));
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_617, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_621 : vec4<f32> = u_xlat4;
  let x_623 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_621 * vec4<f32>(x_623, x_623, x_623, x_623));
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_631.x, x_631.y));
  u_xlat5 = x_633;
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_637.z, x_637.w));
  u_xlat4 = x_639;
  let x_640 : vec4<f32> = u_xlat4;
  let x_643 : vec4<f32> = u_xlat5;
  u_xlat4 = ((x_640 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_643);
  let x_645 : vec4<f32> = u_xlat0;
  let x_649 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_652 : vec2<f32> = u_xlat21;
  let x_653 : vec2<f32> = ((-(vec2<f32>(x_645.z, x_645.y)) * vec2<f32>(x_649.x, x_649.x)) + x_652);
  let x_654 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
  let x_656 : vec4<f32> = u_xlat1;
  let x_660 : vec2<f32> = clamp(vec2<f32>(x_656.x, x_656.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_661 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat1;
  let x_666 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_668 : vec2<f32> = (vec2<f32>(x_663.x, x_663.y) * vec2<f32>(x_666, x_666));
  let x_669 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
  let x_674 : vec4<f32> = u_xlat1;
  let x_676 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_674.x, x_674.y));
  u_xlat5 = x_676;
  let x_677 : vec4<f32> = u_xlat4;
  let x_678 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_677 + x_678);
  let x_680 : vec4<f32> = u_xlat0;
  let x_683 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_686 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_680.z, x_680.w, x_680.x, x_680.w) * vec4<f32>(x_683.x, x_683.x, x_683.x, x_683.x)) + vec4<f32>(x_686.x, x_686.y, x_686.x, x_686.y));
  let x_689 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_689, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_693 : vec4<f32> = u_xlat5;
  let x_695 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_693 * vec4<f32>(x_695, x_695, x_695, x_695));
  let x_701 : vec4<f32> = u_xlat5;
  let x_703 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_701.x, x_701.y));
  u_xlat6 = x_703;
  let x_704 : vec4<f32> = u_xlat6;
  let x_706 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_704 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_706);
  let x_708 : vec2<f32> = u_xlat21;
  let x_709 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat1;
  let x_715 : vec2<f32> = clamp(vec2<f32>(x_711.x, x_711.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_716 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat1;
  let x_721 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_723 : vec2<f32> = (vec2<f32>(x_718.x, x_718.y) * vec2<f32>(x_721, x_721));
  let x_724 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
  let x_729 : vec4<f32> = u_xlat1;
  let x_731 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_729.x, x_729.y));
  u_xlat6 = x_731;
  let x_732 : vec4<f32> = u_xlat6;
  let x_736 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_732 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_736);
  let x_741 : vec4<f32> = u_xlat5;
  let x_743 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_741.z, x_741.w));
  u_xlat5 = x_743;
  let x_744 : vec4<f32> = u_xlat5;
  let x_746 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_744 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_746);
  let x_748 : vec4<f32> = u_xlat0;
  let x_751 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_754 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_748.z, x_748.y, x_748.w, x_748.y) * vec4<f32>(x_751.x, x_751.x, x_751.x, x_751.x)) + vec4<f32>(x_754.x, x_754.y, x_754.x, x_754.y));
  let x_757 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_757, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_761 : vec4<f32> = u_xlat5;
  let x_763 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_761 * vec4<f32>(x_763, x_763, x_763, x_763));
  let x_769 : vec4<f32> = u_xlat5;
  let x_771 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_769.x, x_769.y));
  u_xlat6 = x_771;
  let x_772 : vec4<f32> = u_xlat4;
  let x_773 : vec4<f32> = u_xlat6;
  u_xlat4 = (x_772 + x_773);
  let x_778 : vec4<f32> = u_xlat5;
  let x_780 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_778.z, x_778.w));
  u_xlat5 = x_780;
  let x_781 : vec4<f32> = u_xlat5;
  let x_783 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_781 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_783);
  let x_785 : vec4<f32> = u_xlat0;
  let x_788 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_791 : vec2<f32> = u_xlat21;
  let x_792 : vec2<f32> = ((vec2<f32>(x_785.x, x_785.y) * vec2<f32>(x_788.x, x_788.x)) + x_791);
  let x_793 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat0;
  let x_799 : vec2<f32> = clamp(vec2<f32>(x_795.x, x_795.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_800 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat0;
  let x_805 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_807 : vec2<f32> = (vec2<f32>(x_802.x, x_802.y) * vec2<f32>(x_805, x_805));
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
  let x_813 : vec4<f32> = u_xlat0;
  let x_815 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_813.x, x_813.y));
  u_xlat0 = x_815;
  let x_816 : vec4<f32> = u_xlat0;
  let x_817 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_816 + x_817);
  let x_819 : vec4<f32> = u_xlat0;
  let x_821 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_819 * vec4<f32>(x_821.y, x_821.y, x_821.y, x_821.y));
  let x_824 : vec2<f32> = u_xlat21;
  let x_827 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_831 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_833 : vec2<f32> = ((x_824 * vec2<f32>(x_827.x, x_827.y)) + vec2<f32>(x_831.z, x_831.w));
  let x_834 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_833.x, x_833.y, x_834.z, x_834.w);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_841.x, x_841.y));
  let x_844 : vec3<f32> = vec3<f32>(x_843.x, x_843.y, x_843.z);
  let x_845 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat0;
  let x_851 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_852 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat4;
  let x_857 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_859 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(x_857.z, x_857.z, x_857.z));
  let x_860 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_862 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_865 : vec4<f32> = u_xlat0;
  let x_869 : vec3<f32> = x_26.x_Bloom_Color;
  let x_870 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) * x_869);
  let x_871 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_874 : f32 = u_xlat0.w;
  u_xlat6.w = (x_874 * 0.0625f);
  let x_877 : vec4<f32> = u_xlat3;
  let x_878 : vec4<f32> = u_xlat6;
  u_xlat0 = (x_877 + x_878);
  let x_880 : vec4<f32> = u_xlat5;
  let x_882 : vec4<f32> = u_xlat4;
  let x_884 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_885 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  u_xlat3.w = 0.0f;
  let x_888 : vec4<f32> = u_xlat0;
  let x_889 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_888 + x_889);
  let x_893 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_893 < 0.5f);
  let x_895 : bool = u_xlatb1;
  if (x_895) {
    let x_898 : vec2<f32> = u_xlat21;
    let x_902 : vec2<f32> = x_26.x_Vignette_Center;
    let x_904 : vec2<f32> = (x_898 + -(x_902));
    let x_905 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
    let x_907 : vec4<f32> = u_xlat1;
    let x_912 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_914 : vec2<f32> = (abs(vec2<f32>(x_907.y, x_907.x)) * vec2<f32>(x_912.x, x_912.x));
    let x_915 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_915.x, x_914.x, x_914.y, x_915.w);
    let x_918 : f32 = x_26.x_ScreenParams.x;
    let x_920 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_918 / x_920);
    let x_924 : f32 = u_xlat1.x;
    u_xlat1.x = (x_924 + -1.0f);
    let x_928 : f32 = x_26.x_Vignette_Settings.w;
    let x_930 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_928 * x_930) + 1.0f);
    let x_935 : f32 = u_xlat1.x;
    let x_937 : f32 = u_xlat3.z;
    u_xlat3.x = (x_935 * x_937);
    let x_940 : vec4<f32> = u_xlat3;
    let x_941 : vec2<f32> = vec2<f32>(x_940.x, x_940.y);
    let x_942 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
    let x_944 : vec4<f32> = u_xlat3;
    let x_948 : vec2<f32> = clamp(vec2<f32>(x_944.x, x_944.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_949 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_948.x, x_948.y, x_949.z, x_949.w);
    let x_951 : vec4<f32> = u_xlat3;
    let x_953 : vec2<f32> = log2(vec2<f32>(x_951.x, x_951.y));
    let x_954 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
    let x_956 : vec4<f32> = u_xlat1;
    let x_959 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_961 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) * vec2<f32>(x_959.z, x_959.z));
    let x_962 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
    let x_964 : vec4<f32> = u_xlat1;
    let x_966 : vec2<f32> = exp2(vec2<f32>(x_964.x, x_964.y));
    let x_967 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
    let x_969 : vec4<f32> = u_xlat1;
    let x_971 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_969.x, x_969.y), vec2<f32>(x_971.x, x_971.y));
    let x_976 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_976) + 1.0f);
    let x_981 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_981, 0.0f);
    let x_985 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_985);
    let x_989 : f32 = u_xlat1.x;
    let x_991 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_989 * x_991);
    let x_995 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_995);
    let x_1000 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1003 : vec3<f32> = (-(x_1000) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1004 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
    let x_1006 : vec4<f32> = u_xlat1;
    let x_1008 : vec4<f32> = u_xlat3;
    let x_1012 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1013 : vec3<f32> = ((vec3<f32>(x_1006.x, x_1006.x, x_1006.x) * vec3<f32>(x_1008.x, x_1008.y, x_1008.z)) + x_1012);
    let x_1014 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
    let x_1016 : vec4<f32> = u_xlat0;
    let x_1018 : vec4<f32> = u_xlat3;
    let x_1020 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.y, x_1016.z) * vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
    let x_1021 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
    let x_1025 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1025 + -1.0f);
    let x_1029 : f32 = u_xlat1.x;
    let x_1031 : f32 = u_xlat11.x;
    u_xlat4.w = ((x_1029 * x_1031) + 1.0f);
  } else {
    let x_1041 : vec2<f32> = u_xlat21;
    let x_1042 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1041);
    u_xlat1.x = x_1042.w;
    let x_1046 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1046 + 0.055f);
    let x_1050 : vec4<f32> = u_xlat1;
    let x_1055 : vec2<f32> = (vec2<f32>(x_1050.x, x_1050.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1056 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1055.x, x_1055.y, x_1056.z);
    let x_1059 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1059), 1.1920929e-07f);
    let x_1065 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1065);
    let x_1069 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1069 * 2.400000095f);
    let x_1074 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1074);
    let x_1079 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1079);
    let x_1081 : bool = u_xlatb1;
    if (x_1081) {
      let x_1086 : f32 = u_xlat11.x;
      x_1082 = x_1086;
    } else {
      let x_1089 : f32 = u_xlat21.x;
      x_1082 = x_1089;
    }
    let x_1090 : f32 = x_1082;
    u_xlat1.x = x_1090;
    let x_1093 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1093) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1096 : vec4<f32> = u_xlat1;
    let x_1098 : vec3<f32> = u_xlat11;
    let x_1101 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1096.x, x_1096.x, x_1096.x) * x_1098) + x_1101);
    let x_1103 : vec4<f32> = u_xlat0;
    let x_1105 : vec3<f32> = u_xlat11;
    let x_1107 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1103.x, x_1103.y, x_1103.z) * x_1105) + -(vec3<f32>(x_1107.x, x_1107.y, x_1107.z)));
    let x_1112 : f32 = x_26.x_Vignette_Opacity;
    let x_1114 : vec3<f32> = u_xlat11;
    let x_1116 : vec4<f32> = u_xlat0;
    let x_1118 : vec3<f32> = ((vec3<f32>(x_1112, x_1112, x_1112) * x_1114) + vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
    let x_1119 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
    let x_1122 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1122 + -1.0f);
    let x_1126 : f32 = u_xlat1.x;
    let x_1128 : f32 = u_xlat0.x;
    u_xlat4.w = ((x_1126 * x_1128) + 1.0f);
  }
  let x_1133 : vec2<f32> = vs_TEXCOORD1;
  let x_1136 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1140 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1142 : vec2<f32> = ((x_1133 * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1140.z, x_1140.w));
  let x_1143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
  let x_1150 : vec4<f32> = u_xlat0;
  let x_1152 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1150.x, x_1150.y));
  let x_1153 : vec3<f32> = vec3<f32>(x_1152.x, x_1152.y, x_1152.z);
  let x_1154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
  let x_1156 : vec4<f32> = u_xlat3;
  let x_1157 : vec3<f32> = vec3<f32>(x_1156.x, x_1156.y, x_1156.z);
  let x_1158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : vec4<f32> = u_xlat1;
  let x_1164 : vec3<f32> = clamp(vec3<f32>(x_1160.x, x_1160.y, x_1160.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1165 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1167 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_1167.x, x_1167.y, x_1167.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1174 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1174);
  let x_1178 : f32 = x_26.x_Grain_Params1.x;
  let x_1179 : f32 = u_xlat30;
  u_xlat30 = ((x_1178 * -(x_1179)) + 1.0f);
  let x_1183 : vec4<f32> = u_xlat0;
  let x_1185 : vec4<f32> = u_xlat3;
  let x_1187 : vec3<f32> = (vec3<f32>(x_1183.x, x_1183.y, x_1183.z) * vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
  let x_1188 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1190 : vec4<f32> = u_xlat0;
  let x_1193 : f32 = x_26.x_Grain_Params1.y;
  let x_1195 : f32 = x_26.x_Grain_Params1.y;
  let x_1197 : f32 = x_26.x_Grain_Params1.y;
  let x_1199 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) * vec3<f32>(x_1193, x_1195, x_1197));
  let x_1200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  let x_1202 : vec4<f32> = u_xlat0;
  let x_1204 : f32 = u_xlat30;
  let x_1207 : vec4<f32> = u_xlat3;
  let x_1209 : vec3<f32> = ((vec3<f32>(x_1202.x, x_1202.y, x_1202.z) * vec3<f32>(x_1204, x_1204, x_1204)) + vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1210 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec4<f32> = u_xlat4;
  let x_1215 : f32 = x_26.x_PostExposure;
  let x_1217 : f32 = x_26.x_PostExposure;
  let x_1219 : f32 = x_26.x_PostExposure;
  let x_1221 : f32 = x_26.x_PostExposure;
  let x_1222 : vec4<f32> = vec4<f32>(x_1215, x_1217, x_1219, x_1221);
  u_xlat0 = (x_1212 * vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1222.w));
  let x_1229 : vec4<f32> = u_xlat0;
  let x_1236 : vec3<f32> = ((vec3<f32>(x_1229.z, x_1229.x, x_1229.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
  let x_1239 : vec4<f32> = u_xlat0;
  let x_1241 : vec3<f32> = log2(vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec4<f32> = u_xlat0;
  let x_1251 : vec3<f32> = ((vec3<f32>(x_1244.x, x_1244.y, x_1244.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
  let x_1254 : vec4<f32> = u_xlat0;
  let x_1258 : vec3<f32> = clamp(vec3<f32>(x_1254.x, x_1254.y, x_1254.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
  let x_1261 : vec4<f32> = u_xlat0;
  let x_1265 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1267 : vec3<f32> = (vec3<f32>(x_1261.x, x_1261.y, x_1261.z) * vec3<f32>(x_1265.z, x_1265.z, x_1265.z));
  let x_1268 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
  let x_1271 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_1271);
  let x_1275 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1277 : vec2<f32> = (vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(0.5f, 0.5f));
  let x_1278 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1277.x, x_1278.y, x_1278.z, x_1277.y);
  let x_1280 : vec4<f32> = u_xlat1;
  let x_1283 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1286 : vec4<f32> = u_xlat1;
  let x_1288 : vec2<f32> = ((vec2<f32>(x_1280.y, x_1280.z) * vec2<f32>(x_1283.x, x_1283.y)) + vec2<f32>(x_1286.x, x_1286.w));
  let x_1289 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1289.x, x_1288.x, x_1288.y, x_1289.w);
  let x_1292 : f32 = u_xlat10.x;
  let x_1294 : f32 = x_26.x_Lut2D_Params.y;
  let x_1297 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1292 * x_1294) + x_1297);
  let x_1305 : vec4<f32> = u_xlat1;
  let x_1307 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1305.x, x_1305.z));
  let x_1308 : vec3<f32> = vec3<f32>(x_1307.x, x_1307.y, x_1307.z);
  let x_1309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1312 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1312;
  let x_1314 : vec2<f32> = u_xlat22;
  let x_1315 : vec4<f32> = u_xlat1;
  let x_1317 : vec2<f32> = (x_1314 + vec2<f32>(x_1315.x, x_1315.z));
  let x_1318 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
  let x_1323 : vec4<f32> = u_xlat1;
  let x_1325 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1323.x, x_1323.y));
  let x_1326 : vec3<f32> = vec3<f32>(x_1325.x, x_1325.y, x_1325.z);
  let x_1327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1330 : f32 = u_xlat0.x;
  let x_1332 : f32 = x_26.x_Lut2D_Params.z;
  let x_1335 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1330 * x_1332) + -(x_1335));
  let x_1339 : vec4<f32> = u_xlat3;
  let x_1342 : vec4<f32> = u_xlat1;
  let x_1344 : vec3<f32> = (-(vec3<f32>(x_1339.x, x_1339.y, x_1339.z)) + vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
  let x_1345 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
  let x_1347 : vec4<f32> = u_xlat0;
  let x_1349 : vec4<f32> = u_xlat1;
  let x_1352 : vec4<f32> = u_xlat3;
  let x_1354 : vec3<f32> = ((vec3<f32>(x_1347.x, x_1347.x, x_1347.x) * vec3<f32>(x_1349.x, x_1349.y, x_1349.z)) + vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1357 : vec2<f32> = vs_TEXCOORD0;
  let x_1360 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1364 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1366 : vec2<f32> = ((x_1357 * vec2<f32>(x_1360.x, x_1360.y)) + vec2<f32>(x_1364.z, x_1364.w));
  let x_1367 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
  let x_1374 : vec4<f32> = u_xlat1;
  let x_1376 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1374.x, x_1374.y));
  u_xlat1.x = x_1376.w;
  let x_1380 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1380 * 2.0f) + -1.0f);
  let x_1385 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1385 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1391 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1391, 0.0f, 1.0f);
  let x_1395 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1395 * 2.0f) + -1.0f);
  let x_1400 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1400)) + 1.0f);
  let x_1406 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1406);
  let x_1410 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1410) + 1.0f);
  let x_1415 : f32 = u_xlat1.x;
  let x_1417 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1415 * x_1417);
  let x_1420 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1420.x, x_1420.y, x_1420.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1425 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1425.x, x_1425.y, x_1425.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1430 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1430);
  let x_1432 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1432 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1436 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1436);
  let x_1438 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1438 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1450 : vec4<f32> = u_xlat0;
  let x_1453 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1450.x));
  u_xlatb0 = vec3<bool>(x_1453.x, x_1453.y, x_1453.z);
  let x_1456 : bool = u_xlatb0.x;
  if (x_1456) {
    let x_1461 : f32 = u_xlat11.x;
    x_1457 = x_1461;
  } else {
    let x_1464 : f32 = u_xlat2.x;
    x_1457 = x_1464;
  }
  let x_1465 : f32 = x_1457;
  u_xlat0.x = x_1465;
  let x_1468 : bool = u_xlatb0.y;
  if (x_1468) {
    let x_1473 : f32 = u_xlat11.y;
    x_1469 = x_1473;
  } else {
    let x_1476 : f32 = u_xlat2.y;
    x_1469 = x_1476;
  }
  let x_1477 : f32 = x_1469;
  u_xlat0.y = x_1477;
  let x_1480 : bool = u_xlatb0.z;
  if (x_1480) {
    let x_1485 : f32 = u_xlat11.z;
    x_1481 = x_1485;
  } else {
    let x_1488 : f32 = u_xlat2.z;
    x_1481 = x_1488;
  }
  let x_1489 : f32 = x_1481;
  u_xlat0.z = x_1489;
  let x_1491 : vec4<f32> = u_xlat1;
  let x_1496 : vec4<f32> = u_xlat0;
  let x_1498 : vec3<f32> = ((vec3<f32>(x_1491.x, x_1491.x, x_1491.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
  let x_1499 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
  let x_1501 : vec4<f32> = u_xlat0;
  let x_1504 : vec3<f32> = (vec3<f32>(x_1501.x, x_1501.y, x_1501.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1505 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
  let x_1507 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1507.x, x_1507.y, x_1507.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1511 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1511 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1514 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1514), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1517 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1517);
  let x_1519 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1519 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1522 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1522);
  let x_1525 : vec4<f32> = u_xlat0;
  let x_1527 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1525.x));
  u_xlatb0 = vec3<bool>(x_1527.x, x_1527.y, x_1527.z);
  let x_1532 : bool = u_xlatb0.x;
  if (x_1532) {
    let x_1537 : f32 = u_xlat1.x;
    x_1533 = x_1537;
  } else {
    let x_1540 : f32 = u_xlat2.x;
    x_1533 = x_1540;
  }
  let x_1541 : f32 = x_1533;
  SV_Target0.x = x_1541;
  let x_1545 : bool = u_xlatb0.y;
  if (x_1545) {
    let x_1550 : f32 = u_xlat1.y;
    x_1546 = x_1550;
  } else {
    let x_1553 : f32 = u_xlat2.y;
    x_1546 = x_1553;
  }
  let x_1554 : f32 = x_1546;
  SV_Target0.y = x_1554;
  let x_1557 : bool = u_xlatb0.z;
  if (x_1557) {
    let x_1562 : f32 = u_xlat1.z;
    x_1558 = x_1562;
  } else {
    let x_1565 : f32 = u_xlat2.z;
    x_1558 = x_1565;
  }
  let x_1566 : f32 = x_1558;
  SV_Target0.z = x_1566;
  let x_1569 : f32 = u_xlat0.w;
  SV_Target0.w = x_1569;
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

