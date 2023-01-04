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
  var x_943 : f32;
  var x_1318 : f32;
  var x_1330 : f32;
  var x_1342 : f32;
  var x_1394 : f32;
  var x_1407 : f32;
  var x_1419 : f32;
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
  u_xlat0 = (vec4<f32>(x_601.x, x_601.y, x_601.x, x_601.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_607 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_607 * 0.5f);
  let x_610 : vec4<f32> = u_xlat0;
  let x_612 : vec4<f32> = u_xlat1;
  let x_615 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_610.x, x_610.y, x_610.z, x_610.y) * vec4<f32>(x_612.x, x_612.x, x_612.x, x_612.x)) + vec4<f32>(x_615.x, x_615.y, x_615.x, x_615.y));
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_618, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_622 : vec4<f32> = u_xlat4;
  let x_624 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_622 * vec4<f32>(x_624, x_624, x_624, x_624));
  let x_632 : vec4<f32> = u_xlat4;
  let x_634 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_632.x, x_632.y));
  u_xlat5 = x_634;
  let x_638 : vec4<f32> = u_xlat4;
  let x_640 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_638.z, x_638.w));
  u_xlat4 = x_640;
  let x_641 : vec4<f32> = u_xlat4;
  let x_642 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_641 + x_642);
  let x_644 : vec4<f32> = u_xlat0;
  let x_646 : vec4<f32> = u_xlat1;
  let x_649 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_644.x, x_644.w, x_644.z, x_644.w) * vec4<f32>(x_646.x, x_646.x, x_646.x, x_646.x)) + vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y));
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_652, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_656 : vec4<f32> = u_xlat0;
  let x_658 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_656 * vec4<f32>(x_658, x_658, x_658, x_658));
  let x_664 : vec4<f32> = u_xlat0;
  let x_666 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_664.x, x_664.y));
  u_xlat5 = x_666;
  let x_667 : vec4<f32> = u_xlat4;
  let x_668 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_667 + x_668);
  let x_673 : vec4<f32> = u_xlat0;
  let x_675 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_673.z, x_673.w));
  u_xlat0 = x_675;
  let x_676 : vec4<f32> = u_xlat0;
  let x_677 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_676 + x_677);
  let x_679 : vec4<f32> = u_xlat0;
  let x_682 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_679 * vec4<f32>(x_682.y, x_682.y, x_682.y, x_682.y));
  let x_685 : vec2<f32> = u_xlat21;
  let x_688 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_692 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_694 : vec2<f32> = ((x_685 * vec2<f32>(x_688.x, x_688.y)) + vec2<f32>(x_692.z, x_692.w));
  let x_695 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_695.z, x_695.w);
  let x_702 : vec4<f32> = u_xlat1;
  let x_704 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_702.x, x_702.y));
  let x_705 : vec3<f32> = vec3<f32>(x_704.x, x_704.y, x_704.z);
  let x_706 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat0;
  let x_712 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_713 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat4;
  let x_718 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_720 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(x_718.z, x_718.z, x_718.z));
  let x_721 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_723 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_726 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = x_26.x_Bloom_Color;
  let x_731 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * x_730);
  let x_732 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_735 : f32 = u_xlat0.w;
  u_xlat6.w = (x_735 * 0.25f);
  let x_738 : vec4<f32> = u_xlat3;
  let x_739 : vec4<f32> = u_xlat6;
  u_xlat0 = (x_738 + x_739);
  let x_741 : vec4<f32> = u_xlat5;
  let x_743 : vec4<f32> = u_xlat4;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  u_xlat3.w = 0.0f;
  let x_749 : vec4<f32> = u_xlat0;
  let x_750 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_749 + x_750);
  let x_754 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_754 < 0.5f);
  let x_756 : bool = u_xlatb1;
  if (x_756) {
    let x_759 : vec2<f32> = u_xlat21;
    let x_763 : vec2<f32> = x_26.x_Vignette_Center;
    let x_765 : vec2<f32> = (x_759 + -(x_763));
    let x_766 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
    let x_768 : vec4<f32> = u_xlat1;
    let x_773 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_775 : vec2<f32> = (abs(vec2<f32>(x_768.y, x_768.x)) * vec2<f32>(x_773.x, x_773.x));
    let x_776 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_776.x, x_775.x, x_775.y, x_776.w);
    let x_779 : f32 = x_26.x_ScreenParams.x;
    let x_781 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_779 / x_781);
    let x_785 : f32 = u_xlat1.x;
    u_xlat1.x = (x_785 + -1.0f);
    let x_789 : f32 = x_26.x_Vignette_Settings.w;
    let x_791 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_789 * x_791) + 1.0f);
    let x_796 : f32 = u_xlat1.x;
    let x_798 : f32 = u_xlat3.z;
    u_xlat3.x = (x_796 * x_798);
    let x_801 : vec4<f32> = u_xlat3;
    let x_802 : vec2<f32> = vec2<f32>(x_801.x, x_801.y);
    let x_803 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
    let x_805 : vec4<f32> = u_xlat3;
    let x_809 : vec2<f32> = clamp(vec2<f32>(x_805.x, x_805.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_810 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_809.x, x_809.y, x_810.z, x_810.w);
    let x_812 : vec4<f32> = u_xlat3;
    let x_814 : vec2<f32> = log2(vec2<f32>(x_812.x, x_812.y));
    let x_815 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_814.x, x_814.y, x_815.z, x_815.w);
    let x_817 : vec4<f32> = u_xlat1;
    let x_820 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_822 : vec2<f32> = (vec2<f32>(x_817.x, x_817.y) * vec2<f32>(x_820.z, x_820.z));
    let x_823 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
    let x_825 : vec4<f32> = u_xlat1;
    let x_827 : vec2<f32> = exp2(vec2<f32>(x_825.x, x_825.y));
    let x_828 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
    let x_830 : vec4<f32> = u_xlat1;
    let x_832 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_830.x, x_830.y), vec2<f32>(x_832.x, x_832.y));
    let x_837 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_837) + 1.0f);
    let x_842 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_842, 0.0f);
    let x_846 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_846);
    let x_850 : f32 = u_xlat1.x;
    let x_852 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_850 * x_852);
    let x_856 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_856);
    let x_861 : vec3<f32> = x_26.x_Vignette_Color;
    let x_864 : vec3<f32> = (-(x_861) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_865 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
    let x_867 : vec4<f32> = u_xlat1;
    let x_869 : vec4<f32> = u_xlat3;
    let x_873 : vec3<f32> = x_26.x_Vignette_Color;
    let x_874 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.x, x_867.x) * vec3<f32>(x_869.x, x_869.y, x_869.z)) + x_873);
    let x_875 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
    let x_877 : vec4<f32> = u_xlat0;
    let x_879 : vec4<f32> = u_xlat3;
    let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) * vec3<f32>(x_879.x, x_879.y, x_879.z));
    let x_882 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
    let x_886 : f32 = u_xlat0.w;
    u_xlat11.x = (x_886 + -1.0f);
    let x_890 : f32 = u_xlat1.x;
    let x_892 : f32 = u_xlat11.x;
    u_xlat4.w = ((x_890 * x_892) + 1.0f);
  } else {
    let x_902 : vec2<f32> = u_xlat21;
    let x_903 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_902);
    u_xlat1.x = x_903.w;
    let x_907 : f32 = u_xlat1.x;
    u_xlat1.z = (x_907 + 0.055f);
    let x_911 : vec4<f32> = u_xlat1;
    let x_916 : vec2<f32> = (vec2<f32>(x_911.x, x_911.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_917 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_916.x, x_916.y, x_917.z);
    let x_920 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_920), 1.1920929e-07f);
    let x_926 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_926);
    let x_930 : f32 = u_xlat21.x;
    u_xlat21.x = (x_930 * 2.400000095f);
    let x_935 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_935);
    let x_940 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_940);
    let x_942 : bool = u_xlatb1;
    if (x_942) {
      let x_947 : f32 = u_xlat11.x;
      x_943 = x_947;
    } else {
      let x_950 : f32 = u_xlat21.x;
      x_943 = x_950;
    }
    let x_951 : f32 = x_943;
    u_xlat1.x = x_951;
    let x_954 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_954) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_957 : vec4<f32> = u_xlat1;
    let x_959 : vec3<f32> = u_xlat11;
    let x_962 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_957.x, x_957.x, x_957.x) * x_959) + x_962);
    let x_964 : vec4<f32> = u_xlat0;
    let x_966 : vec3<f32> = u_xlat11;
    let x_968 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_964.x, x_964.y, x_964.z) * x_966) + -(vec3<f32>(x_968.x, x_968.y, x_968.z)));
    let x_973 : f32 = x_26.x_Vignette_Opacity;
    let x_975 : vec3<f32> = u_xlat11;
    let x_977 : vec4<f32> = u_xlat0;
    let x_979 : vec3<f32> = ((vec3<f32>(x_973, x_973, x_973) * x_975) + vec3<f32>(x_977.x, x_977.y, x_977.z));
    let x_980 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
    let x_983 : f32 = u_xlat0.w;
    u_xlat0.x = (x_983 + -1.0f);
    let x_987 : f32 = u_xlat1.x;
    let x_989 : f32 = u_xlat0.x;
    u_xlat4.w = ((x_987 * x_989) + 1.0f);
  }
  let x_994 : vec2<f32> = vs_TEXCOORD1;
  let x_997 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1001 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1003 : vec2<f32> = ((x_994 * vec2<f32>(x_997.x, x_997.y)) + vec2<f32>(x_1001.z, x_1001.w));
  let x_1004 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1003.x, x_1003.y, x_1004.z, x_1004.w);
  let x_1011 : vec4<f32> = u_xlat0;
  let x_1013 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1011.x, x_1011.y));
  let x_1014 : vec3<f32> = vec3<f32>(x_1013.x, x_1013.y, x_1013.z);
  let x_1015 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : vec4<f32> = u_xlat3;
  let x_1018 : vec3<f32> = vec3<f32>(x_1017.x, x_1017.y, x_1017.z);
  let x_1019 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat1;
  let x_1025 : vec3<f32> = clamp(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1026 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1035 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1035);
  let x_1039 : f32 = x_26.x_Grain_Params1.x;
  let x_1040 : f32 = u_xlat30;
  u_xlat30 = ((x_1039 * -(x_1040)) + 1.0f);
  let x_1044 : vec4<f32> = u_xlat0;
  let x_1046 : vec4<f32> = u_xlat3;
  let x_1048 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.y, x_1044.z) * vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
  let x_1051 : vec4<f32> = u_xlat0;
  let x_1054 : f32 = x_26.x_Grain_Params1.y;
  let x_1056 : f32 = x_26.x_Grain_Params1.y;
  let x_1058 : f32 = x_26.x_Grain_Params1.y;
  let x_1060 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) * vec3<f32>(x_1054, x_1056, x_1058));
  let x_1061 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec4<f32> = u_xlat0;
  let x_1065 : f32 = u_xlat30;
  let x_1068 : vec4<f32> = u_xlat3;
  let x_1070 : vec3<f32> = ((vec3<f32>(x_1063.x, x_1063.y, x_1063.z) * vec3<f32>(x_1065, x_1065, x_1065)) + vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec4<f32> = u_xlat4;
  let x_1076 : f32 = x_26.x_PostExposure;
  let x_1078 : f32 = x_26.x_PostExposure;
  let x_1080 : f32 = x_26.x_PostExposure;
  let x_1082 : f32 = x_26.x_PostExposure;
  let x_1083 : vec4<f32> = vec4<f32>(x_1076, x_1078, x_1080, x_1082);
  u_xlat0 = (x_1073 * vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.w));
  let x_1090 : vec4<f32> = u_xlat0;
  let x_1097 : vec3<f32> = ((vec3<f32>(x_1090.z, x_1090.x, x_1090.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1098 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec4<f32> = u_xlat0;
  let x_1102 : vec3<f32> = log2(vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : vec4<f32> = u_xlat0;
  let x_1112 : vec3<f32> = ((vec3<f32>(x_1105.x, x_1105.y, x_1105.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec4<f32> = u_xlat0;
  let x_1119 : vec3<f32> = clamp(vec3<f32>(x_1115.x, x_1115.y, x_1115.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1120 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat0;
  let x_1126 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1128 : vec3<f32> = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(x_1126.z, x_1126.z, x_1126.z));
  let x_1129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1132 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_1132);
  let x_1136 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1138 : vec2<f32> = (vec2<f32>(x_1136.x, x_1136.y) * vec2<f32>(0.5f, 0.5f));
  let x_1139 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1138.x, x_1139.y, x_1139.z, x_1138.y);
  let x_1141 : vec4<f32> = u_xlat1;
  let x_1144 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1147 : vec4<f32> = u_xlat1;
  let x_1149 : vec2<f32> = ((vec2<f32>(x_1141.y, x_1141.z) * vec2<f32>(x_1144.x, x_1144.y)) + vec2<f32>(x_1147.x, x_1147.w));
  let x_1150 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1150.x, x_1149.x, x_1149.y, x_1150.w);
  let x_1153 : f32 = u_xlat10.x;
  let x_1155 : f32 = x_26.x_Lut2D_Params.y;
  let x_1158 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1153 * x_1155) + x_1158);
  let x_1166 : vec4<f32> = u_xlat1;
  let x_1168 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1166.x, x_1166.z));
  let x_1169 : vec3<f32> = vec3<f32>(x_1168.x, x_1168.y, x_1168.z);
  let x_1170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
  let x_1173 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1173;
  let x_1175 : vec2<f32> = u_xlat22;
  let x_1176 : vec4<f32> = u_xlat1;
  let x_1178 : vec2<f32> = (x_1175 + vec2<f32>(x_1176.x, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
  let x_1184 : vec4<f32> = u_xlat1;
  let x_1186 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1184.x, x_1184.y));
  let x_1187 : vec3<f32> = vec3<f32>(x_1186.x, x_1186.y, x_1186.z);
  let x_1188 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1191 : f32 = u_xlat0.x;
  let x_1193 : f32 = x_26.x_Lut2D_Params.z;
  let x_1196 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1191 * x_1193) + -(x_1196));
  let x_1200 : vec4<f32> = u_xlat3;
  let x_1203 : vec4<f32> = u_xlat1;
  let x_1205 : vec3<f32> = (-(vec3<f32>(x_1200.x, x_1200.y, x_1200.z)) + vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1208 : vec4<f32> = u_xlat0;
  let x_1210 : vec4<f32> = u_xlat1;
  let x_1213 : vec4<f32> = u_xlat3;
  let x_1215 : vec3<f32> = ((vec3<f32>(x_1208.x, x_1208.x, x_1208.x) * vec3<f32>(x_1210.x, x_1210.y, x_1210.z)) + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1218 : vec2<f32> = vs_TEXCOORD0;
  let x_1221 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1225 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1227 : vec2<f32> = ((x_1218 * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1225.z, x_1225.w));
  let x_1228 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1227.x, x_1227.y, x_1228.z, x_1228.w);
  let x_1235 : vec4<f32> = u_xlat1;
  let x_1237 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1235.x, x_1235.y));
  u_xlat1.x = x_1237.w;
  let x_1241 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1241 * 2.0f) + -1.0f);
  let x_1246 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1246 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1252 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1252, 0.0f, 1.0f);
  let x_1256 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1256 * 2.0f) + -1.0f);
  let x_1261 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1261)) + 1.0f);
  let x_1267 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1267);
  let x_1271 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1271) + 1.0f);
  let x_1276 : f32 = u_xlat1.x;
  let x_1278 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1276 * x_1278);
  let x_1281 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1281.x, x_1281.y, x_1281.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1286 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1286.x, x_1286.y, x_1286.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1291 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1291);
  let x_1293 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1293 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1297 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1297);
  let x_1299 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1299 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1311 : vec4<f32> = u_xlat0;
  let x_1314 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1311.x));
  u_xlatb0 = vec3<bool>(x_1314.x, x_1314.y, x_1314.z);
  let x_1317 : bool = u_xlatb0.x;
  if (x_1317) {
    let x_1322 : f32 = u_xlat11.x;
    x_1318 = x_1322;
  } else {
    let x_1325 : f32 = u_xlat2.x;
    x_1318 = x_1325;
  }
  let x_1326 : f32 = x_1318;
  u_xlat0.x = x_1326;
  let x_1329 : bool = u_xlatb0.y;
  if (x_1329) {
    let x_1334 : f32 = u_xlat11.y;
    x_1330 = x_1334;
  } else {
    let x_1337 : f32 = u_xlat2.y;
    x_1330 = x_1337;
  }
  let x_1338 : f32 = x_1330;
  u_xlat0.y = x_1338;
  let x_1341 : bool = u_xlatb0.z;
  if (x_1341) {
    let x_1346 : f32 = u_xlat11.z;
    x_1342 = x_1346;
  } else {
    let x_1349 : f32 = u_xlat2.z;
    x_1342 = x_1349;
  }
  let x_1350 : f32 = x_1342;
  u_xlat0.z = x_1350;
  let x_1352 : vec4<f32> = u_xlat1;
  let x_1357 : vec4<f32> = u_xlat0;
  let x_1359 : vec3<f32> = ((vec3<f32>(x_1352.x, x_1352.x, x_1352.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
  let x_1360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
  let x_1362 : vec4<f32> = u_xlat0;
  let x_1365 : vec3<f32> = (vec3<f32>(x_1362.x, x_1362.y, x_1362.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  let x_1368 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1368.x, x_1368.y, x_1368.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1372 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1372 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1375 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1375), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1378 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1378);
  let x_1380 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1380 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1383 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1383);
  let x_1386 : vec4<f32> = u_xlat0;
  let x_1388 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1386.x));
  u_xlatb0 = vec3<bool>(x_1388.x, x_1388.y, x_1388.z);
  let x_1393 : bool = u_xlatb0.x;
  if (x_1393) {
    let x_1398 : f32 = u_xlat1.x;
    x_1394 = x_1398;
  } else {
    let x_1401 : f32 = u_xlat2.x;
    x_1394 = x_1401;
  }
  let x_1402 : f32 = x_1394;
  SV_Target0.x = x_1402;
  let x_1406 : bool = u_xlatb0.y;
  if (x_1406) {
    let x_1411 : f32 = u_xlat1.y;
    x_1407 = x_1411;
  } else {
    let x_1414 : f32 = u_xlat2.y;
    x_1407 = x_1414;
  }
  let x_1415 : f32 = x_1407;
  SV_Target0.y = x_1415;
  let x_1418 : bool = u_xlatb0.z;
  if (x_1418) {
    let x_1423 : f32 = u_xlat1.z;
    x_1419 = x_1423;
  } else {
    let x_1426 : f32 = u_xlat2.z;
    x_1419 = x_1426;
  }
  let x_1427 : f32 = x_1419;
  SV_Target0.z = x_1427;
  let x_1430 : f32 = u_xlat0.w;
  SV_Target0.w = x_1430;
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

