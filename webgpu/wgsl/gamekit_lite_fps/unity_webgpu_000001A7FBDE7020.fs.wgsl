struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
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

var<private> u_xlat28 : f32;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_281 : f32;
  var x_303 : f32;
  var x_509 : f32;
  var x_535 : f32;
  var x_717 : f32;
  var x_858 : f32;
  var x_870 : f32;
  var x_883 : f32;
  var x_1031 : f32;
  var x_1043 : f32;
  var x_1055 : f32;
  var x_1152 : f32;
  var x_1164 : f32;
  var x_1176 : f32;
  var x_1235 : f32;
  var x_1248 : f32;
  var x_1260 : f32;
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
  let x_796 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_796, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_802 : f32 = u_xlat1.w;
  u_xlat28 = x_802;
  let x_803 : f32 = u_xlat28;
  u_xlat28 = clamp(x_803, 0.0f, 1.0f);
  let x_805 : vec3<f32> = u_xlat0;
  let x_809 : vec3<f32> = (vec3<f32>(x_805.z, x_805.x, x_805.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec3<f32> = u_xlat0;
  let x_816 : vec3<f32> = max(vec3<f32>(x_812.z, x_812.x, x_812.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_817 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat2;
  let x_821 : vec3<f32> = log2(vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : vec4<f32> = u_xlat2;
  let x_828 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_829 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat2;
  let x_833 : vec3<f32> = exp2(vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat2;
  let x_843 : vec3<f32> = ((vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_844 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_851 : vec3<f32> = u_xlat0;
  let x_854 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_851.z, x_851.x, x_851.y, x_851.z));
  u_xlatb0 = vec3<bool>(x_854.x, x_854.y, x_854.z);
  let x_857 : bool = u_xlatb0.x;
  if (x_857) {
    let x_862 : f32 = u_xlat1.x;
    x_858 = x_862;
  } else {
    let x_865 : f32 = u_xlat2.x;
    x_858 = x_865;
  }
  let x_866 : f32 = x_858;
  u_xlat0.x = x_866;
  let x_869 : bool = u_xlatb0.y;
  if (x_869) {
    let x_874 : f32 = u_xlat1.y;
    x_870 = x_874;
  } else {
    let x_877 : f32 = u_xlat2.y;
    x_870 = x_877;
  }
  let x_878 : f32 = x_870;
  u_xlat0.y = x_878;
  let x_882 : bool = u_xlatb0.z;
  if (x_882) {
    let x_887 : f32 = u_xlat1.z;
    x_883 = x_887;
  } else {
    let x_890 : f32 = u_xlat2.z;
    x_883 = x_890;
  }
  let x_891 : f32 = x_883;
  u_xlat0.z = x_891;
  let x_893 : vec3<f32> = u_xlat0;
  let x_897 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat9 = (x_893 * vec3<f32>(x_897.z, x_897.z, x_897.z));
  let x_901 : f32 = u_xlat9.x;
  u_xlat9.x = floor(x_901);
  let x_905 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_907 : vec2<f32> = (vec2<f32>(x_905.x, x_905.y) * vec2<f32>(0.5f, 0.5f));
  let x_908 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
  let x_910 : vec3<f32> = u_xlat9;
  let x_913 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_916 : vec4<f32> = u_xlat1;
  let x_918 : vec2<f32> = ((vec2<f32>(x_910.y, x_910.z) * vec2<f32>(x_913.x, x_913.y)) + vec2<f32>(x_916.x, x_916.y));
  let x_919 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_919.x, x_918.x, x_918.y, x_919.w);
  let x_922 : f32 = u_xlat9.x;
  let x_924 : f32 = x_55.x_Lut2D_Params.y;
  let x_927 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_922 * x_924) + x_927);
  let x_935 : vec4<f32> = u_xlat1;
  let x_937 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_935.x, x_935.z));
  let x_938 : vec3<f32> = vec3<f32>(x_937.x, x_937.y, x_937.z);
  let x_939 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_942 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_942;
  u_xlat3.y = 0.0f;
  let x_945 : vec4<f32> = u_xlat1;
  let x_947 : vec4<f32> = u_xlat3;
  u_xlat18 = (vec2<f32>(x_945.x, x_945.z) + vec2<f32>(x_947.x, x_947.y));
  let x_953 : vec2<f32> = u_xlat18;
  let x_954 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_953);
  let x_955 : vec3<f32> = vec3<f32>(x_954.x, x_954.y, x_954.z);
  let x_956 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_959 : f32 = u_xlat0.x;
  let x_961 : f32 = x_55.x_Lut2D_Params.z;
  let x_964 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_959 * x_961) + -(x_964));
  let x_968 : vec4<f32> = u_xlat2;
  let x_971 : vec4<f32> = u_xlat1;
  u_xlat9 = (-(vec3<f32>(x_968.x, x_968.y, x_968.z)) + vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec3<f32> = u_xlat0;
  let x_976 : vec3<f32> = u_xlat9;
  let x_978 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_974.x, x_974.x, x_974.x) * x_976) + vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : vec3<f32> = u_xlat0;
  let x_984 : vec3<f32> = (x_981 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_985 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec3<f32> = u_xlat0;
  let x_990 : vec3<f32> = (x_987 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_991 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_993 : vec4<f32> = u_xlat2;
  let x_997 : vec3<f32> = (vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_998 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1000 : vec4<f32> = u_xlat2;
  let x_1003 : vec3<f32> = max(abs(vec3<f32>(x_1000.x, x_1000.y, x_1000.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1004 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec4<f32> = u_xlat2;
  let x_1008 : vec3<f32> = log2(vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1015 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1016 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec4<f32> = u_xlat2;
  let x_1020 : vec3<f32> = exp2(vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1025 : vec3<f32> = u_xlat0;
  let x_1027 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1025.x));
  u_xlatb0 = vec3<bool>(x_1027.x, x_1027.y, x_1027.z);
  let x_1030 : bool = u_xlatb0.x;
  if (x_1030) {
    let x_1035 : f32 = u_xlat1.x;
    x_1031 = x_1035;
  } else {
    let x_1038 : f32 = u_xlat2.x;
    x_1031 = x_1038;
  }
  let x_1039 : f32 = x_1031;
  u_xlat0.x = x_1039;
  let x_1042 : bool = u_xlatb0.y;
  if (x_1042) {
    let x_1047 : f32 = u_xlat1.y;
    x_1043 = x_1047;
  } else {
    let x_1050 : f32 = u_xlat2.y;
    x_1043 = x_1050;
  }
  let x_1051 : f32 = x_1043;
  u_xlat0.y = x_1051;
  let x_1054 : bool = u_xlatb0.z;
  if (x_1054) {
    let x_1059 : f32 = u_xlat1.z;
    x_1055 = x_1059;
  } else {
    let x_1062 : f32 = u_xlat2.z;
    x_1055 = x_1062;
  }
  let x_1063 : f32 = x_1055;
  u_xlat0.z = x_1063;
  let x_1065 : vec2<f32> = vs_TEXCOORD0;
  let x_1068 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_1072 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_1074 : vec2<f32> = ((x_1065 * vec2<f32>(x_1068.x, x_1068.y)) + vec2<f32>(x_1072.z, x_1072.w));
  let x_1075 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
  let x_1082 : vec4<f32> = u_xlat1;
  let x_1084 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1082.x, x_1082.y));
  u_xlat27 = x_1084.w;
  let x_1086 : f32 = u_xlat27;
  u_xlat27 = ((x_1086 * 2.0f) + -1.0f);
  let x_1089 : f32 = u_xlat27;
  u_xlat1.x = ((x_1089 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1095 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1095, 0.0f, 1.0f);
  let x_1099 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1099 * 2.0f) + -1.0f);
  let x_1103 : f32 = u_xlat27;
  u_xlat27 = (-(abs(x_1103)) + 1.0f);
  let x_1107 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_1107);
  let x_1109 : f32 = u_xlat27;
  u_xlat27 = (-(x_1109) + 1.0f);
  let x_1112 : f32 = u_xlat27;
  let x_1114 : f32 = u_xlat1.x;
  u_xlat27 = (x_1112 * x_1114);
  let x_1116 : vec3<f32> = u_xlat0;
  let x_1117 : vec3<f32> = (x_1116 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1118 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : vec3<f32> = u_xlat0;
  let x_1122 : vec3<f32> = max(abs(x_1120), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1125 : vec4<f32> = u_xlat2;
  let x_1127 : vec3<f32> = log2(vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : vec4<f32> = u_xlat2;
  let x_1132 : vec3<f32> = (vec3<f32>(x_1130.x, x_1130.y, x_1130.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1133 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : vec4<f32> = u_xlat2;
  let x_1137 : vec3<f32> = exp2(vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : vec4<f32> = u_xlat2;
  let x_1143 : vec3<f32> = ((vec3<f32>(x_1140.x, x_1140.y, x_1140.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1144 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1146 : vec3<f32> = u_xlat0;
  let x_1148 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1146.x));
  u_xlatb0 = vec3<bool>(x_1148.x, x_1148.y, x_1148.z);
  let x_1151 : bool = u_xlatb0.x;
  if (x_1151) {
    let x_1156 : f32 = u_xlat1.x;
    x_1152 = x_1156;
  } else {
    let x_1159 : f32 = u_xlat2.x;
    x_1152 = x_1159;
  }
  let x_1160 : f32 = x_1152;
  u_xlat0.x = x_1160;
  let x_1163 : bool = u_xlatb0.y;
  if (x_1163) {
    let x_1168 : f32 = u_xlat1.y;
    x_1164 = x_1168;
  } else {
    let x_1171 : f32 = u_xlat2.y;
    x_1164 = x_1171;
  }
  let x_1172 : f32 = x_1164;
  u_xlat0.y = x_1172;
  let x_1175 : bool = u_xlatb0.z;
  if (x_1175) {
    let x_1180 : f32 = u_xlat1.z;
    x_1176 = x_1180;
  } else {
    let x_1183 : f32 = u_xlat2.z;
    x_1176 = x_1183;
  }
  let x_1184 : f32 = x_1176;
  u_xlat0.z = x_1184;
  let x_1186 : f32 = u_xlat27;
  let x_1191 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1186, x_1186, x_1186) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1191);
  let x_1193 : vec3<f32> = u_xlat0;
  let x_1194 : vec3<f32> = (x_1193 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1195 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1197 : vec3<f32> = u_xlat0;
  let x_1198 : vec3<f32> = (x_1197 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1199 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
  let x_1201 : vec4<f32> = u_xlat2;
  let x_1203 : vec3<f32> = (vec3<f32>(x_1201.x, x_1201.y, x_1201.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1204 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1206 : vec4<f32> = u_xlat2;
  let x_1209 : vec3<f32> = max(abs(vec3<f32>(x_1206.x, x_1206.y, x_1206.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1212 : vec4<f32> = u_xlat2;
  let x_1214 : vec3<f32> = log2(vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1215 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
  let x_1217 : vec4<f32> = u_xlat2;
  let x_1219 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  let x_1222 : vec4<f32> = u_xlat2;
  let x_1224 : vec3<f32> = exp2(vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1227 : vec3<f32> = u_xlat0;
  let x_1229 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1227.x));
  u_xlatb0 = vec3<bool>(x_1229.x, x_1229.y, x_1229.z);
  let x_1234 : bool = u_xlatb0.x;
  if (x_1234) {
    let x_1239 : f32 = u_xlat1.x;
    x_1235 = x_1239;
  } else {
    let x_1242 : f32 = u_xlat2.x;
    x_1235 = x_1242;
  }
  let x_1243 : f32 = x_1235;
  SV_Target0.x = x_1243;
  let x_1247 : bool = u_xlatb0.y;
  if (x_1247) {
    let x_1252 : f32 = u_xlat1.y;
    x_1248 = x_1252;
  } else {
    let x_1255 : f32 = u_xlat2.y;
    x_1248 = x_1255;
  }
  let x_1256 : f32 = x_1248;
  SV_Target0.y = x_1256;
  let x_1259 : bool = u_xlatb0.z;
  if (x_1259) {
    let x_1264 : f32 = u_xlat1.z;
    x_1260 = x_1264;
  } else {
    let x_1267 : f32 = u_xlat2.z;
    x_1260 = x_1267;
  }
  let x_1268 : f32 = x_1260;
  SV_Target0.z = x_1268;
  let x_1270 : f32 = u_xlat28;
  SV_Target0.w = x_1270;
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

