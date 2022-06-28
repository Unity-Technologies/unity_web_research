struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb9 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_281 : f32;
  var x_303 : f32;
  var x_509 : f32;
  var x_535 : f32;
  var x_725 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_31 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_31.x, x_31.y, x_31.x, x_31.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
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
    u_xlat10.x = min(abs(x_646), 1.0f);
    let x_651 : f32 = u_xlat9.x;
    u_xlat5.x = max(abs(x_651), 1.0f);
    let x_656 : f32 = u_xlat5.x;
    u_xlat5.x = (1.0f / x_656);
    let x_660 : f32 = u_xlat10.x;
    let x_662 : f32 = u_xlat5.x;
    u_xlat10.x = (x_660 * x_662);
    let x_666 : f32 = u_xlat10.x;
    let x_668 : f32 = u_xlat10.x;
    u_xlat5.x = (x_666 * x_668);
    let x_672 : f32 = u_xlat5.x;
    u_xlat14 = ((x_672 * 0.0208351f) + -0.085133001f);
    let x_676 : f32 = u_xlat5.x;
    let x_677 : f32 = u_xlat14;
    u_xlat14 = ((x_676 * x_677) + 0.180141002f);
    let x_681 : f32 = u_xlat5.x;
    let x_682 : f32 = u_xlat14;
    u_xlat14 = ((x_681 * x_682) + -0.330299497f);
    let x_686 : f32 = u_xlat5.x;
    let x_687 : f32 = u_xlat14;
    u_xlat5.x = ((x_686 * x_687) + 0.999866009f);
    let x_692 : f32 = u_xlat10.x;
    let x_694 : f32 = u_xlat5.x;
    u_xlat14 = (x_692 * x_694);
    let x_697 : f32 = u_xlat9.x;
    u_xlatb23 = (1.0f < abs(x_697));
    let x_700 : f32 = u_xlat14;
    u_xlat14 = ((x_700 * -2.0f) + 1.570796371f);
    let x_703 : bool = u_xlatb23;
    let x_704 : f32 = u_xlat14;
    u_xlat14 = select(0.0f, x_704, x_703);
    let x_707 : f32 = u_xlat10.x;
    let x_709 : f32 = u_xlat5.x;
    let x_711 : f32 = u_xlat14;
    u_xlat10.x = ((x_707 * x_709) + x_711);
    let x_715 : f32 = u_xlat9.x;
    u_xlat9.x = min(x_715, 1.0f);
    let x_719 : f32 = u_xlat9.x;
    let x_721 : f32 = u_xlat9.x;
    u_xlatb9 = (x_719 < -(x_721));
    let x_724 : bool = u_xlatb9;
    if (x_724) {
      let x_729 : f32 = u_xlat10.x;
      x_725 = -(x_729);
    } else {
      let x_733 : f32 = u_xlat10.x;
      x_725 = x_733;
    }
    let x_734 : f32 = x_725;
    u_xlat9.x = x_734;
    let x_737 : f32 = u_xlat1.x;
    let x_739 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_737 * x_739) + -1.0f);
    let x_743 : vec4<f32> = u_xlat1;
    let x_745 : vec3<f32> = u_xlat9;
    let x_748 : vec4<f32> = u_xlat7;
    u_xlat18 = ((vec2<f32>(x_743.z, x_743.w) * vec2<f32>(x_745.x, x_745.x)) + vec2<f32>(x_748.z, x_748.w));
  }
  let x_751 : vec2<f32> = u_xlat18;
  u_xlat18 = x_751;
  let x_752 : vec2<f32> = u_xlat18;
  u_xlat18 = clamp(x_752, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_756 : vec2<f32> = u_xlat18;
  let x_758 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_760 : vec2<f32> = (x_756 * vec2<f32>(x_758, x_758));
  let x_761 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_760.x, x_760.y, x_761.z);
  let x_766 : vec3<f32> = u_xlat9;
  let x_768 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_766.x, x_766.y), 0.0f);
  u_xlat1 = x_768;
  u_xlat2.w = 1.0f;
  u_xlat3.w = 1.0f;
  let x_771 : vec4<f32> = u_xlat3;
  let x_772 : vec4<f32> = u_xlat8;
  u_xlat5 = (x_771 * x_772);
  let x_774 : vec4<f32> = u_xlat6;
  let x_775 : vec4<f32> = u_xlat2;
  let x_777 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_774 * x_775) + x_777);
  u_xlat4.w = 1.0f;
  let x_780 : vec4<f32> = u_xlat1;
  let x_781 : vec4<f32> = u_xlat4;
  let x_783 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_780 * x_781) + x_783);
  let x_785 : vec4<f32> = u_xlat2;
  let x_787 : vec4<f32> = u_xlat3;
  u_xlat9 = (vec3<f32>(x_785.x, x_785.y, x_785.z) + vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : vec4<f32> = u_xlat4;
  let x_792 : vec3<f32> = u_xlat9;
  let x_793 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) + x_792);
  let x_794 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  u_xlat2.w = 3.0f;
  let x_798 : vec4<f32> = u_xlat1;
  let x_799 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_798 / x_799);
  let x_801 : vec4<f32> = u_xlat0;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = (vec3<f32>(x_801.x, x_801.x, x_801.x) * vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_809 : vec2<f32> = vs_TEXCOORD1;
  let x_812 : vec4<f32> = x_55.x_Grain_Params2;
  let x_816 : vec4<f32> = x_55.x_Grain_Params2;
  let x_818 : vec2<f32> = ((x_809 * vec2<f32>(x_812.x, x_812.y)) + vec2<f32>(x_816.z, x_816.w));
  let x_819 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_818.x, x_818.y, x_819.z, x_819.w);
  let x_826 : vec4<f32> = u_xlat2;
  let x_828 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_826.x, x_826.y));
  let x_829 : vec3<f32> = vec3<f32>(x_828.x, x_828.y, x_828.z);
  let x_830 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat0;
  let x_833 : vec3<f32> = vec3<f32>(x_832.x, x_832.y, x_832.z);
  let x_834 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat3;
  let x_840 : vec3<f32> = clamp(vec3<f32>(x_836.x, x_836.y, x_836.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_841 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_850 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_850);
  let x_854 : f32 = x_55.x_Grain_Params1.x;
  let x_855 : f32 = u_xlat27;
  u_xlat27 = ((x_854 * -(x_855)) + 1.0f);
  let x_859 : vec4<f32> = u_xlat0;
  let x_861 : vec4<f32> = u_xlat2;
  let x_863 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) * vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec4<f32> = u_xlat2;
  let x_869 : f32 = x_55.x_Grain_Params1.y;
  let x_871 : f32 = x_55.x_Grain_Params1.y;
  let x_873 : f32 = x_55.x_Grain_Params1.y;
  let x_875 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(x_869, x_871, x_873));
  let x_876 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = u_xlat2;
  let x_880 : f32 = u_xlat27;
  let x_883 : vec4<f32> = u_xlat0;
  let x_885 : vec3<f32> = ((vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(x_880, x_880, x_880)) + vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec4<f32> = u_xlat1;
  let x_891 : f32 = x_55.x_PostExposure;
  let x_893 : f32 = x_55.x_PostExposure;
  let x_895 : f32 = x_55.x_PostExposure;
  let x_897 : f32 = x_55.x_PostExposure;
  let x_898 : vec4<f32> = vec4<f32>(x_891, x_893, x_895, x_897);
  u_xlat0 = (x_888 * vec4<f32>(x_898.x, x_898.y, x_898.z, x_898.w));
  let x_905 : vec4<f32> = u_xlat0;
  let x_912 : vec3<f32> = ((vec3<f32>(x_905.z, x_905.x, x_905.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_913 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_915 : vec4<f32> = u_xlat1;
  let x_917 : vec3<f32> = log2(vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat1;
  let x_927 : vec3<f32> = ((vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_928 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : vec4<f32> = u_xlat1;
  let x_934 : vec3<f32> = clamp(vec3<f32>(x_930.x, x_930.y, x_930.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_935 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat1;
  let x_942 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_937.x, x_937.y, x_937.z) * vec3<f32>(x_942.z, x_942.z, x_942.z));
  let x_946 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_946);
  let x_950 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_952 : vec2<f32> = (vec2<f32>(x_950.x, x_950.y) * vec2<f32>(0.5f, 0.5f));
  let x_953 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
  let x_955 : vec3<f32> = u_xlat10;
  let x_958 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_961 : vec4<f32> = u_xlat2;
  let x_963 : vec2<f32> = ((vec2<f32>(x_955.y, x_955.z) * vec2<f32>(x_958.x, x_958.y)) + vec2<f32>(x_961.x, x_961.y));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_964.x, x_963.x, x_963.y, x_964.w);
  let x_967 : f32 = u_xlat10.x;
  let x_969 : f32 = x_55.x_Lut2D_Params.y;
  let x_972 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_967 * x_969) + x_972);
  let x_980 : vec4<f32> = u_xlat2;
  let x_982 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_980.x, x_980.z));
  let x_983 : vec3<f32> = vec3<f32>(x_982.x, x_982.y, x_982.z);
  let x_984 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_987 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_987;
  u_xlat4.y = 0.0f;
  let x_991 : vec4<f32> = u_xlat2;
  let x_993 : vec4<f32> = u_xlat4;
  u_xlat19 = (vec2<f32>(x_991.x, x_991.z) + vec2<f32>(x_993.x, x_993.y));
  let x_999 : vec2<f32> = u_xlat19;
  let x_1000 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_999);
  let x_1001 : vec3<f32> = vec3<f32>(x_1000.x, x_1000.y, x_1000.z);
  let x_1002 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1005 : f32 = u_xlat1.x;
  let x_1008 : f32 = x_55.x_Lut2D_Params.z;
  let x_1011 : f32 = u_xlat10.x;
  u_xlat1.x = ((x_1005 * x_1008) + -(x_1011));
  let x_1015 : vec4<f32> = u_xlat3;
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat10 = (-(vec3<f32>(x_1015.x, x_1015.y, x_1015.z)) + vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat1;
  let x_1023 : vec3<f32> = u_xlat10;
  let x_1025 : vec4<f32> = u_xlat3;
  let x_1027 : vec3<f32> = ((vec3<f32>(x_1021.x, x_1021.x, x_1021.x) * x_1023) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1033 : f32 = x_55.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1033);
  let x_1035 : bool = u_xlatb1;
  if (x_1035) {
    let x_1038 : vec4<f32> = u_xlat0;
    let x_1039 : vec3<f32> = vec3<f32>(x_1038.x, x_1038.y, x_1038.z);
    let x_1040 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
    let x_1042 : vec4<f32> = u_xlat1;
    let x_1046 : vec3<f32> = clamp(vec3<f32>(x_1042.x, x_1042.y, x_1042.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1047 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
    let x_1049 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_1049.x, x_1049.y, x_1049.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1055 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1055;
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

