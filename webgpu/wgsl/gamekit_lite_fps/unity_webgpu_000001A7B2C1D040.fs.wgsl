struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlatb23 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb27 : bool;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb9 : bool;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_281 : f32;
  var x_303 : f32;
  var x_509 : f32;
  var x_535 : f32;
  var x_717 : f32;
  var x_974 : f32;
  var x_986 : f32;
  var x_999 : f32;
  var x_1068 : f32;
  var x_1081 : f32;
  var x_1093 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_33.x, x_33.y, x_33.x, x_33.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec4<f32> = u_xlat1;
  u_xlat9.x = dot(vec2<f32>(x_42.z, x_42.w), vec2<f32>(x_44.z, x_44.w));
  let x_48 : vec3<f32> = u_xlat9;
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_48.x, x_48.x, x_48.x, x_48.x) * x_50);
  let x_52 : vec4<f32> = u_xlat1;
  let x_60 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_62 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_64 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_66 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_67 : vec4<f32> = vec4<f32>(x_60, x_62, x_64, x_66);
  u_xlat1 = (x_52 * vec4<f32>(x_67.x, x_67.y, x_67.z, x_67.w));
  let x_83 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.166666672f, 0.0f), 0.0f);
  let x_84 : vec3<f32> = vec3<f32>(x_83.x, x_83.y, x_83.z);
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_93 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_94 : vec3<f32> = vec3<f32>(x_93.x, x_93.y, x_93.z);
  let x_95 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_103 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.833333313f, 0.0f), 0.0f);
  let x_104 : vec3<f32> = vec3<f32>(x_103.x, x_103.y, x_103.z);
  let x_105 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_107 : vec2<f32> = vs_TEXCOORD0;
  let x_110 : vec2<f32> = (x_107 + vec2<f32>(-0.5f, -0.5f));
  let x_111 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_110.x, x_110.y, x_111.z);
  let x_114 : vec3<f32> = u_xlat9;
  let x_119 : vec4<f32> = x_55.x_Distortion_Amount;
  let x_123 : vec2<f32> = ((vec2<f32>(x_114.x, x_114.y) * vec2<f32>(x_119.z, x_119.z)) + vec2<f32>(0.5f, 0.5f));
  let x_124 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_126 : vec3<f32> = u_xlat9;
  let x_129 : vec4<f32> = x_55.x_Distortion_Amount;
  let x_134 : vec4<f32> = x_55.x_Distortion_CenterScale;
  let x_137 : vec2<f32> = ((vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_129.z, x_129.z)) + -(vec2<f32>(x_134.x, x_134.y)));
  let x_138 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_137.x, x_137.y, x_138.z);
  let x_140 : vec3<f32> = u_xlat9;
  let x_143 : vec4<f32> = x_55.x_Distortion_CenterScale;
  let x_145 : vec2<f32> = (vec2<f32>(x_140.x, x_140.y) * vec2<f32>(x_143.z, x_143.w));
  let x_146 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_145.x, x_145.y, x_146.z);
  let x_149 : vec3<f32> = u_xlat9;
  let x_151 : vec3<f32> = u_xlat9;
  u_xlat27 = dot(vec2<f32>(x_149.x, x_149.y), vec2<f32>(x_151.x, x_151.y));
  let x_154 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_154);
  let x_161 : f32 = x_55.x_Distortion_Amount.w;
  u_xlatb23 = (0.0f < x_161);
  let x_163 : bool = u_xlatb23;
  if (x_163) {
    let x_167 : f32 = u_xlat27;
    let x_170 : vec4<f32> = x_55.x_Distortion_Amount;
    let x_172 : vec2<f32> = (vec2<f32>(x_167, x_167) * vec2<f32>(x_170.x, x_170.y));
    let x_173 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_172.x, x_172.y, x_173.z, x_173.w);
    let x_177 : f32 = u_xlat6.x;
    u_xlat7.x = cos(x_177);
    let x_181 : f32 = u_xlat6.x;
    u_xlat6.x = sin(x_181);
    let x_186 : f32 = u_xlat6.x;
    let x_188 : f32 = u_xlat7.x;
    u_xlat32 = (x_186 / x_188);
    let x_193 : f32 = u_xlat6.y;
    u_xlat6.x = (1.0f / x_193);
    let x_196 : f32 = u_xlat32;
    let x_198 : f32 = u_xlat6.x;
    u_xlat32 = ((x_196 * x_198) + -1.0f);
    let x_201 : vec3<f32> = u_xlat9;
    let x_203 : f32 = u_xlat32;
    let x_206 : vec4<f32> = u_xlat5;
    let x_208 : vec2<f32> = ((vec2<f32>(x_201.x, x_201.y) * vec2<f32>(x_203, x_203)) + vec2<f32>(x_206.x, x_206.y));
    let x_209 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_209.w);
  } else {
    let x_212 : f32 = u_xlat27;
    u_xlat32 = (1.0f / x_212);
    let x_214 : f32 = u_xlat32;
    let x_216 : f32 = x_55.x_Distortion_Amount.x;
    u_xlat32 = (x_214 * x_216);
    let x_218 : f32 = u_xlat27;
    let x_220 : f32 = x_55.x_Distortion_Amount.y;
    u_xlat27 = (x_218 * x_220);
    let x_223 : f32 = u_xlat27;
    u_xlat24 = min(abs(x_223), 1.0f);
    let x_227 : f32 = u_xlat27;
    u_xlat33 = max(abs(x_227), 1.0f);
    let x_230 : f32 = u_xlat33;
    u_xlat33 = (1.0f / x_230);
    let x_232 : f32 = u_xlat33;
    let x_233 : f32 = u_xlat24;
    u_xlat24 = (x_232 * x_233);
    let x_235 : f32 = u_xlat24;
    let x_236 : f32 = u_xlat24;
    u_xlat33 = (x_235 * x_236);
    let x_238 : f32 = u_xlat33;
    u_xlat7.x = ((x_238 * 0.0208351f) + -0.085133001f);
    let x_244 : f32 = u_xlat33;
    let x_246 : f32 = u_xlat7.x;
    u_xlat7.x = ((x_244 * x_246) + 0.180141002f);
    let x_251 : f32 = u_xlat33;
    let x_253 : f32 = u_xlat7.x;
    u_xlat7.x = ((x_251 * x_253) + -0.330299497f);
    let x_258 : f32 = u_xlat33;
    let x_260 : f32 = u_xlat7.x;
    u_xlat33 = ((x_258 * x_260) + 0.999866009f);
    let x_264 : f32 = u_xlat33;
    let x_265 : f32 = u_xlat24;
    u_xlat7.x = (x_264 * x_265);
    let x_269 : f32 = u_xlat27;
    u_xlatb16 = (1.0f < abs(x_269));
    let x_273 : f32 = u_xlat7.x;
    u_xlat7.x = ((x_273 * -2.0f) + 1.570796371f);
    let x_279 : bool = u_xlatb16;
    if (x_279) {
      let x_285 : f32 = u_xlat7.x;
      x_281 = x_285;
    } else {
      x_281 = 0.0f;
    }
    let x_287 : f32 = x_281;
    u_xlat7.x = x_287;
    let x_289 : f32 = u_xlat24;
    let x_290 : f32 = u_xlat33;
    let x_293 : f32 = u_xlat7.x;
    u_xlat24 = ((x_289 * x_290) + x_293);
    let x_295 : f32 = u_xlat27;
    u_xlat27 = min(x_295, 1.0f);
    let x_298 : f32 = u_xlat27;
    let x_299 : f32 = u_xlat27;
    u_xlatb27 = (x_298 < -(x_299));
    let x_302 : bool = u_xlatb27;
    if (x_302) {
      let x_306 : f32 = u_xlat24;
      x_303 = -(x_306);
    } else {
      let x_309 : f32 = u_xlat24;
      x_303 = x_309;
    }
    let x_310 : f32 = x_303;
    u_xlat27 = x_310;
    let x_311 : f32 = u_xlat32;
    let x_312 : f32 = u_xlat27;
    u_xlat27 = ((x_311 * x_312) + -1.0f);
    let x_315 : vec3<f32> = u_xlat9;
    let x_317 : f32 = u_xlat27;
    let x_320 : vec4<f32> = u_xlat5;
    let x_322 : vec2<f32> = ((vec2<f32>(x_315.x, x_315.y) * vec2<f32>(x_317, x_317)) + vec2<f32>(x_320.x, x_320.y));
    let x_323 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_322.x, x_322.y, x_323.z, x_323.w);
  }
  let x_325 : vec4<f32> = u_xlat6;
  let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
  let x_327 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_326.x, x_326.y, x_327.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat6;
  let x_333 : vec2<f32> = clamp(vec2<f32>(x_329.x, x_329.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_333.x, x_333.y, x_334.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat6;
  let x_340 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_342 : vec2<f32> = (vec2<f32>(x_336.x, x_336.y) * vec2<f32>(x_340, x_340));
  let x_343 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_342.x, x_342.y, x_343.z);
  let x_350 : vec3<f32> = u_xlat9;
  let x_352 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_350.x, x_350.y), 0.0f);
  u_xlat6 = x_352;
  let x_353 : vec4<f32> = u_xlat1;
  let x_358 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_353 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_358.x, x_358.y, x_358.x, x_358.y));
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_361 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_364 : vec4<f32> = u_xlat1;
  let x_366 : vec4<f32> = x_55.x_Distortion_Amount;
  u_xlat7 = ((x_364 * vec4<f32>(x_366.z, x_366.z, x_366.z, x_366.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_371 : vec4<f32> = u_xlat1;
  let x_373 : vec4<f32> = x_55.x_Distortion_Amount;
  let x_377 : vec4<f32> = x_55.x_Distortion_CenterScale;
  u_xlat1 = ((x_371 * vec4<f32>(x_373.z, x_373.z, x_373.z, x_373.z)) + -(vec4<f32>(x_377.x, x_377.y, x_377.x, x_377.y)));
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec4<f32> = x_55.x_Distortion_CenterScale;
  u_xlat1 = (x_381 * vec4<f32>(x_383.z, x_383.w, x_383.z, x_383.w));
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat9.x = dot(vec2<f32>(x_386.x, x_386.y), vec2<f32>(x_388.x, x_388.y));
  let x_393 : f32 = u_xlat9.x;
  u_xlat9.x = sqrt(x_393);
  let x_396 : bool = u_xlatb23;
  if (x_396) {
    let x_401 : vec3<f32> = u_xlat9;
    let x_404 : vec4<f32> = x_55.x_Distortion_Amount;
    u_xlat18 = (vec2<f32>(x_401.x, x_401.x) * vec2<f32>(x_404.x, x_404.y));
    let x_408 : f32 = u_xlat18.x;
    u_xlat5.x = sin(x_408);
    let x_413 : f32 = u_xlat18.x;
    u_xlat8.x = cos(x_413);
    let x_417 : f32 = u_xlat5.x;
    let x_419 : f32 = u_xlat8.x;
    u_xlat18.x = (x_417 / x_419);
    let x_423 : f32 = u_xlat18.y;
    u_xlat27 = (1.0f / x_423);
    let x_426 : f32 = u_xlat18.x;
    let x_427 : f32 = u_xlat27;
    u_xlat18.x = ((x_426 * x_427) + -1.0f);
    let x_431 : vec4<f32> = u_xlat1;
    let x_433 : vec2<f32> = u_xlat18;
    let x_436 : vec4<f32> = u_xlat7;
    u_xlat18 = ((vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_433.x, x_433.x)) + vec2<f32>(x_436.x, x_436.y));
  } else {
    let x_441 : f32 = u_xlat9.x;
    u_xlat5.x = (1.0f / x_441);
    let x_445 : f32 = u_xlat5.x;
    let x_447 : f32 = x_55.x_Distortion_Amount.x;
    u_xlat5.x = (x_445 * x_447);
    let x_451 : f32 = u_xlat9.x;
    let x_453 : f32 = x_55.x_Distortion_Amount.y;
    u_xlat9.x = (x_451 * x_453);
    let x_458 : f32 = u_xlat9.x;
    u_xlat14 = min(abs(x_458), 1.0f);
    let x_462 : f32 = u_xlat9.x;
    u_xlat32 = max(abs(x_462), 1.0f);
    let x_465 : f32 = u_xlat32;
    u_xlat32 = (1.0f / x_465);
    let x_467 : f32 = u_xlat32;
    let x_468 : f32 = u_xlat14;
    u_xlat14 = (x_467 * x_468);
    let x_470 : f32 = u_xlat14;
    let x_471 : f32 = u_xlat14;
    u_xlat32 = (x_470 * x_471);
    let x_473 : f32 = u_xlat32;
    u_xlat8.x = ((x_473 * 0.0208351f) + -0.085133001f);
    let x_477 : f32 = u_xlat32;
    let x_479 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_477 * x_479) + 0.180141002f);
    let x_483 : f32 = u_xlat32;
    let x_485 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_483 * x_485) + -0.330299497f);
    let x_489 : f32 = u_xlat32;
    let x_491 : f32 = u_xlat8.x;
    u_xlat32 = ((x_489 * x_491) + 0.999866009f);
    let x_494 : f32 = u_xlat32;
    let x_495 : f32 = u_xlat14;
    u_xlat8.x = (x_494 * x_495);
    let x_500 : f32 = u_xlat9.x;
    u_xlatb17 = (1.0f < abs(x_500));
    let x_504 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_504 * -2.0f) + 1.570796371f);
    let x_508 : bool = u_xlatb17;
    if (x_508) {
      let x_513 : f32 = u_xlat8.x;
      x_509 = x_513;
    } else {
      x_509 = 0.0f;
    }
    let x_515 : f32 = x_509;
    u_xlat8.x = x_515;
    let x_517 : f32 = u_xlat14;
    let x_518 : f32 = u_xlat32;
    let x_521 : f32 = u_xlat8.x;
    u_xlat14 = ((x_517 * x_518) + x_521);
    let x_524 : f32 = u_xlat9.x;
    u_xlat9.x = min(x_524, 1.0f);
    let x_529 : f32 = u_xlat9.x;
    let x_531 : f32 = u_xlat9.x;
    u_xlatb9 = (x_529 < -(x_531));
    let x_534 : bool = u_xlatb9;
    if (x_534) {
      let x_538 : f32 = u_xlat14;
      x_535 = -(x_538);
    } else {
      let x_541 : f32 = u_xlat14;
      x_535 = x_541;
    }
    let x_542 : f32 = x_535;
    u_xlat9.x = x_542;
    let x_545 : f32 = u_xlat5.x;
    let x_547 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_545 * x_547) + -1.0f);
    let x_551 : vec4<f32> = u_xlat1;
    let x_553 : vec3<f32> = u_xlat9;
    let x_556 : vec4<f32> = u_xlat7;
    u_xlat18 = ((vec2<f32>(x_551.x, x_551.y) * vec2<f32>(x_553.x, x_553.x)) + vec2<f32>(x_556.x, x_556.y));
  }
  let x_559 : vec2<f32> = u_xlat18;
  u_xlat18 = x_559;
  let x_560 : vec2<f32> = u_xlat18;
  u_xlat18 = clamp(x_560, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_564 : vec2<f32> = u_xlat18;
  let x_566 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_568 : vec2<f32> = (x_564 * vec2<f32>(x_566, x_566));
  let x_569 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_568.x, x_568.y, x_569.z);
  let x_574 : vec3<f32> = u_xlat9;
  let x_576 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_574.x, x_574.y), 0.0f);
  u_xlat8 = x_576;
  let x_577 : vec4<f32> = u_xlat1;
  let x_579 : vec4<f32> = u_xlat1;
  u_xlat9.x = dot(vec2<f32>(x_577.z, x_577.w), vec2<f32>(x_579.z, x_579.w));
  let x_584 : f32 = u_xlat9.x;
  u_xlat9.x = sqrt(x_584);
  let x_587 : bool = u_xlatb23;
  if (x_587) {
    let x_590 : vec3<f32> = u_xlat9;
    let x_593 : vec4<f32> = x_55.x_Distortion_Amount;
    u_xlat18 = (vec2<f32>(x_590.x, x_590.x) * vec2<f32>(x_593.x, x_593.y));
    let x_597 : f32 = u_xlat18.x;
    u_xlat1.x = sin(x_597);
    let x_601 : f32 = u_xlat18.x;
    u_xlat5.x = cos(x_601);
    let x_605 : f32 = u_xlat1.x;
    let x_607 : f32 = u_xlat5.x;
    u_xlat18.x = (x_605 / x_607);
    let x_611 : f32 = u_xlat18.y;
    u_xlat27 = (1.0f / x_611);
    let x_614 : f32 = u_xlat18.x;
    let x_615 : f32 = u_xlat27;
    u_xlat18.x = ((x_614 * x_615) + -1.0f);
    let x_619 : vec4<f32> = u_xlat1;
    let x_621 : vec2<f32> = u_xlat18;
    let x_624 : vec4<f32> = u_xlat7;
    u_xlat18 = ((vec2<f32>(x_619.z, x_619.w) * vec2<f32>(x_621.x, x_621.x)) + vec2<f32>(x_624.z, x_624.w));
  } else {
    let x_629 : f32 = u_xlat9.x;
    u_xlat1.x = (1.0f / x_629);
    let x_633 : f32 = u_xlat1.x;
    let x_635 : f32 = x_55.x_Distortion_Amount.x;
    u_xlat1.x = (x_633 * x_635);
    let x_639 : f32 = u_xlat9.x;
    let x_641 : f32 = x_55.x_Distortion_Amount.y;
    u_xlat9.x = (x_639 * x_641);
    let x_646 : f32 = u_xlat9.x;
    u_xlat10 = min(abs(x_646), 1.0f);
    let x_650 : f32 = u_xlat9.x;
    u_xlat5.x = max(abs(x_650), 1.0f);
    let x_655 : f32 = u_xlat5.x;
    u_xlat5.x = (1.0f / x_655);
    let x_658 : f32 = u_xlat10;
    let x_660 : f32 = u_xlat5.x;
    u_xlat10 = (x_658 * x_660);
    let x_662 : f32 = u_xlat10;
    let x_663 : f32 = u_xlat10;
    u_xlat5.x = (x_662 * x_663);
    let x_667 : f32 = u_xlat5.x;
    u_xlat14 = ((x_667 * 0.0208351f) + -0.085133001f);
    let x_671 : f32 = u_xlat5.x;
    let x_672 : f32 = u_xlat14;
    u_xlat14 = ((x_671 * x_672) + 0.180141002f);
    let x_676 : f32 = u_xlat5.x;
    let x_677 : f32 = u_xlat14;
    u_xlat14 = ((x_676 * x_677) + -0.330299497f);
    let x_681 : f32 = u_xlat5.x;
    let x_682 : f32 = u_xlat14;
    u_xlat5.x = ((x_681 * x_682) + 0.999866009f);
    let x_686 : f32 = u_xlat10;
    let x_688 : f32 = u_xlat5.x;
    u_xlat14 = (x_686 * x_688);
    let x_691 : f32 = u_xlat9.x;
    u_xlatb23 = (1.0f < abs(x_691));
    let x_694 : f32 = u_xlat14;
    u_xlat14 = ((x_694 * -2.0f) + 1.570796371f);
    let x_697 : bool = u_xlatb23;
    let x_698 : f32 = u_xlat14;
    u_xlat14 = select(0.0f, x_698, x_697);
    let x_700 : f32 = u_xlat10;
    let x_702 : f32 = u_xlat5.x;
    let x_704 : f32 = u_xlat14;
    u_xlat10 = ((x_700 * x_702) + x_704);
    let x_707 : f32 = u_xlat9.x;
    u_xlat9.x = min(x_707, 1.0f);
    let x_711 : f32 = u_xlat9.x;
    let x_713 : f32 = u_xlat9.x;
    u_xlatb9 = (x_711 < -(x_713));
    let x_716 : bool = u_xlatb9;
    if (x_716) {
      let x_720 : f32 = u_xlat10;
      x_717 = -(x_720);
    } else {
      let x_723 : f32 = u_xlat10;
      x_717 = x_723;
    }
    let x_724 : f32 = x_717;
    u_xlat9.x = x_724;
    let x_727 : f32 = u_xlat1.x;
    let x_729 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_727 * x_729) + -1.0f);
    let x_733 : vec4<f32> = u_xlat1;
    let x_735 : vec3<f32> = u_xlat9;
    let x_738 : vec4<f32> = u_xlat7;
    u_xlat18 = ((vec2<f32>(x_733.z, x_733.w) * vec2<f32>(x_735.x, x_735.x)) + vec2<f32>(x_738.z, x_738.w));
  }
  let x_741 : vec2<f32> = u_xlat18;
  u_xlat18 = x_741;
  let x_742 : vec2<f32> = u_xlat18;
  u_xlat18 = clamp(x_742, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_746 : vec2<f32> = u_xlat18;
  let x_748 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_750 : vec2<f32> = (x_746 * vec2<f32>(x_748, x_748));
  let x_751 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_750.x, x_750.y, x_751.z);
  let x_756 : vec3<f32> = u_xlat9;
  let x_758 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_756.x, x_756.y), 0.0f);
  u_xlat1 = x_758;
  u_xlat2.w = 1.0f;
  u_xlat3.w = 1.0f;
  let x_761 : vec4<f32> = u_xlat3;
  let x_762 : vec4<f32> = u_xlat8;
  u_xlat5 = (x_761 * x_762);
  let x_764 : vec4<f32> = u_xlat6;
  let x_765 : vec4<f32> = u_xlat2;
  let x_767 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_764 * x_765) + x_767);
  u_xlat4.w = 1.0f;
  let x_770 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = u_xlat4;
  let x_773 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_770 * x_771) + x_773);
  let x_775 : vec4<f32> = u_xlat2;
  let x_777 : vec4<f32> = u_xlat3;
  u_xlat9 = (vec3<f32>(x_775.x, x_775.y, x_775.z) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat4;
  let x_782 : vec3<f32> = u_xlat9;
  let x_783 : vec3<f32> = (vec3<f32>(x_780.x, x_780.y, x_780.z) + x_782);
  let x_784 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  u_xlat2.w = 3.0f;
  let x_788 : vec4<f32> = u_xlat1;
  let x_789 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_788 / x_789);
  let x_791 : vec3<f32> = u_xlat0;
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_791.x, x_791.x, x_791.x) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_797 : vec2<f32> = vs_TEXCOORD1;
  let x_800 : vec4<f32> = x_55.x_Grain_Params2;
  let x_804 : vec4<f32> = x_55.x_Grain_Params2;
  let x_806 : vec2<f32> = ((x_797 * vec2<f32>(x_800.x, x_800.y)) + vec2<f32>(x_804.z, x_804.w));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_814.x, x_814.y));
  let x_817 : vec3<f32> = vec3<f32>(x_816.x, x_816.y, x_816.z);
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec3<f32> = u_xlat0;
  let x_821 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat2;
  let x_827 : vec3<f32> = clamp(vec3<f32>(x_823.x, x_823.y, x_823.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_828 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat2;
  u_xlat27 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_837 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_837);
  let x_841 : f32 = x_55.x_Grain_Params1.x;
  let x_842 : f32 = u_xlat27;
  u_xlat27 = ((x_841 * -(x_842)) + 1.0f);
  let x_846 : vec3<f32> = u_xlat0;
  let x_847 : vec4<f32> = u_xlat1;
  let x_849 : vec3<f32> = (x_846 * vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_850 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat1;
  let x_855 : f32 = x_55.x_Grain_Params1.y;
  let x_857 : f32 = x_55.x_Grain_Params1.y;
  let x_859 : f32 = x_55.x_Grain_Params1.y;
  let x_861 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) * vec3<f32>(x_855, x_857, x_859));
  let x_862 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec4<f32> = u_xlat1;
  let x_866 : f32 = u_xlat27;
  let x_869 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_864.x, x_864.y, x_864.z) * vec3<f32>(x_866, x_866, x_866)) + x_869);
  let x_871 : vec2<f32> = vs_TEXCOORD0;
  let x_874 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_878 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_880 : vec2<f32> = ((x_871 * vec2<f32>(x_874.x, x_874.y)) + vec2<f32>(x_878.z, x_878.w));
  let x_881 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
  let x_888 : vec4<f32> = u_xlat1;
  let x_890 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_888.x, x_888.y));
  u_xlat27 = x_890.w;
  let x_892 : f32 = u_xlat27;
  u_xlat27 = ((x_892 * 2.0f) + -1.0f);
  let x_895 : f32 = u_xlat27;
  u_xlat1.x = ((x_895 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_901 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_901, 0.0f, 1.0f);
  let x_905 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_905 * 2.0f) + -1.0f);
  let x_909 : f32 = u_xlat27;
  u_xlat27 = (-(abs(x_909)) + 1.0f);
  let x_913 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_913);
  let x_915 : f32 = u_xlat27;
  u_xlat27 = (-(x_915) + 1.0f);
  let x_918 : f32 = u_xlat27;
  let x_920 : f32 = u_xlat1.x;
  u_xlat27 = (x_918 * x_920);
  let x_922 : vec3<f32> = u_xlat0;
  let x_925 : vec3<f32> = (x_922 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_926 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec3<f32> = u_xlat0;
  let x_932 : vec3<f32> = max(abs(x_928), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_933 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec4<f32> = u_xlat2;
  let x_937 : vec3<f32> = log2(vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat2;
  let x_944 : vec3<f32> = (vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_945 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : vec4<f32> = u_xlat2;
  let x_949 : vec3<f32> = exp2(vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat2;
  let x_959 : vec3<f32> = ((vec3<f32>(x_952.x, x_952.y, x_952.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_960 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_967 : vec3<f32> = u_xlat0;
  let x_970 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_967.x, x_967.y, x_967.z, x_967.x));
  u_xlatb0 = vec3<bool>(x_970.x, x_970.y, x_970.z);
  let x_973 : bool = u_xlatb0.x;
  if (x_973) {
    let x_978 : f32 = u_xlat1.x;
    x_974 = x_978;
  } else {
    let x_981 : f32 = u_xlat2.x;
    x_974 = x_981;
  }
  let x_982 : f32 = x_974;
  u_xlat0.x = x_982;
  let x_985 : bool = u_xlatb0.y;
  if (x_985) {
    let x_990 : f32 = u_xlat1.y;
    x_986 = x_990;
  } else {
    let x_993 : f32 = u_xlat2.y;
    x_986 = x_993;
  }
  let x_994 : f32 = x_986;
  u_xlat0.y = x_994;
  let x_998 : bool = u_xlatb0.z;
  if (x_998) {
    let x_1003 : f32 = u_xlat1.z;
    x_999 = x_1003;
  } else {
    let x_1006 : f32 = u_xlat2.z;
    x_999 = x_1006;
  }
  let x_1007 : f32 = x_999;
  u_xlat0.z = x_1007;
  let x_1009 : f32 = u_xlat27;
  let x_1014 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1009, x_1009, x_1009) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1014);
  let x_1016 : vec3<f32> = u_xlat0;
  let x_1019 : vec3<f32> = (x_1016 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1020 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1022 : vec3<f32> = u_xlat0;
  let x_1025 : vec3<f32> = (x_1022 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1026 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat2;
  let x_1032 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1033 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec4<f32> = u_xlat2;
  let x_1038 : vec3<f32> = max(abs(vec3<f32>(x_1035.x, x_1035.y, x_1035.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1039 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : vec4<f32> = u_xlat2;
  let x_1043 : vec3<f32> = log2(vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1044 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : vec4<f32> = u_xlat2;
  let x_1050 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1051 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1053 : vec4<f32> = u_xlat2;
  let x_1055 : vec3<f32> = exp2(vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
  let x_1056 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
  let x_1060 : vec3<f32> = u_xlat0;
  let x_1062 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1060.x));
  u_xlatb0 = vec3<bool>(x_1062.x, x_1062.y, x_1062.z);
  let x_1067 : bool = u_xlatb0.x;
  if (x_1067) {
    let x_1072 : f32 = u_xlat1.x;
    x_1068 = x_1072;
  } else {
    let x_1075 : f32 = u_xlat2.x;
    x_1068 = x_1075;
  }
  let x_1076 : f32 = x_1068;
  SV_Target0.x = x_1076;
  let x_1080 : bool = u_xlatb0.y;
  if (x_1080) {
    let x_1085 : f32 = u_xlat1.y;
    x_1081 = x_1085;
  } else {
    let x_1088 : f32 = u_xlat2.y;
    x_1081 = x_1088;
  }
  let x_1089 : f32 = x_1081;
  SV_Target0.y = x_1089;
  let x_1092 : bool = u_xlatb0.z;
  if (x_1092) {
    let x_1097 : f32 = u_xlat1.z;
    x_1093 = x_1097;
  } else {
    let x_1100 : f32 = u_xlat2.z;
    x_1093 = x_1100;
  }
  let x_1101 : f32 = x_1093;
  SV_Target0.z = x_1101;
  let x_1104 : f32 = u_xlat1.w;
  SV_Target0.w = x_1104;
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
