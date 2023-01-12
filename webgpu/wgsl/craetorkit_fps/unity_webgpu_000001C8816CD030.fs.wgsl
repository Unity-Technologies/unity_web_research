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
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(6) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat27 : f32;
  var u_xlatb23 : bool;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat32 : f32;
  var u_xlat24 : f32;
  var u_xlat33 : f32;
  var u_xlatb16 : bool;
  var x_280 : f32;
  var u_xlatb27 : bool;
  var x_302 : f32;
  var u_xlat18 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat14 : f32;
  var u_xlatb17 : bool;
  var x_508 : f32;
  var u_xlatb9 : bool;
  var x_534 : f32;
  var u_xlat10 : f32;
  var x_716 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_859 : f32;
  var x_871 : f32;
  var x_884 : f32;
  var x_1032 : f32;
  var x_1044 : f32;
  var x_1056 : f32;
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
      let x_284 : f32 = u_xlat7.x;
      x_280 = x_284;
    } else {
      x_280 = 0.0f;
    }
    let x_286 : f32 = x_280;
    u_xlat7.x = x_286;
    let x_288 : f32 = u_xlat24;
    let x_289 : f32 = u_xlat33;
    let x_292 : f32 = u_xlat7.x;
    u_xlat24 = ((x_288 * x_289) + x_292);
    let x_294 : f32 = u_xlat27;
    u_xlat27 = min(x_294, 1.0f);
    let x_297 : f32 = u_xlat27;
    let x_298 : f32 = u_xlat27;
    u_xlatb27 = (x_297 < -(x_298));
    let x_301 : bool = u_xlatb27;
    if (x_301) {
      let x_305 : f32 = u_xlat24;
      x_302 = -(x_305);
    } else {
      let x_308 : f32 = u_xlat24;
      x_302 = x_308;
    }
    let x_309 : f32 = x_302;
    u_xlat27 = x_309;
    let x_310 : f32 = u_xlat32;
    let x_311 : f32 = u_xlat27;
    u_xlat27 = ((x_310 * x_311) + -1.0f);
    let x_314 : vec3<f32> = u_xlat9;
    let x_316 : f32 = u_xlat27;
    let x_319 : vec4<f32> = u_xlat5;
    let x_321 : vec2<f32> = ((vec2<f32>(x_314.x, x_314.y) * vec2<f32>(x_316, x_316)) + vec2<f32>(x_319.x, x_319.y));
    let x_322 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_321.x, x_321.y, x_322.z, x_322.w);
  }
  let x_324 : vec4<f32> = u_xlat6;
  let x_325 : vec2<f32> = vec2<f32>(x_324.x, x_324.y);
  let x_326 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_325.x, x_325.y, x_326.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat6;
  let x_332 : vec2<f32> = clamp(vec2<f32>(x_328.x, x_328.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_333 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_332.x, x_332.y, x_333.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat6;
  let x_339 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_341 : vec2<f32> = (vec2<f32>(x_335.x, x_335.y) * vec2<f32>(x_339, x_339));
  let x_342 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_341.x, x_341.y, x_342.z);
  let x_349 : vec3<f32> = u_xlat9;
  let x_351 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_349.x, x_349.y), 0.0f);
  u_xlat6 = x_351;
  let x_352 : vec4<f32> = u_xlat1;
  let x_357 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_352 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_357.x, x_357.y, x_357.x, x_357.y));
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_360 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_363 : vec4<f32> = u_xlat1;
  let x_365 : vec4<f32> = x_55.x_Distortion_Amount;
  u_xlat7 = ((x_363 * vec4<f32>(x_365.z, x_365.z, x_365.z, x_365.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_370 : vec4<f32> = u_xlat1;
  let x_372 : vec4<f32> = x_55.x_Distortion_Amount;
  let x_376 : vec4<f32> = x_55.x_Distortion_CenterScale;
  u_xlat1 = ((x_370 * vec4<f32>(x_372.z, x_372.z, x_372.z, x_372.z)) + -(vec4<f32>(x_376.x, x_376.y, x_376.x, x_376.y)));
  let x_380 : vec4<f32> = u_xlat1;
  let x_382 : vec4<f32> = x_55.x_Distortion_CenterScale;
  u_xlat1 = (x_380 * vec4<f32>(x_382.z, x_382.w, x_382.z, x_382.w));
  let x_385 : vec4<f32> = u_xlat1;
  let x_387 : vec4<f32> = u_xlat1;
  u_xlat9.x = dot(vec2<f32>(x_385.x, x_385.y), vec2<f32>(x_387.x, x_387.y));
  let x_392 : f32 = u_xlat9.x;
  u_xlat9.x = sqrt(x_392);
  let x_395 : bool = u_xlatb23;
  if (x_395) {
    let x_400 : vec3<f32> = u_xlat9;
    let x_403 : vec4<f32> = x_55.x_Distortion_Amount;
    u_xlat18 = (vec2<f32>(x_400.x, x_400.x) * vec2<f32>(x_403.x, x_403.y));
    let x_407 : f32 = u_xlat18.x;
    u_xlat5.x = sin(x_407);
    let x_412 : f32 = u_xlat18.x;
    u_xlat8.x = cos(x_412);
    let x_416 : f32 = u_xlat5.x;
    let x_418 : f32 = u_xlat8.x;
    u_xlat18.x = (x_416 / x_418);
    let x_422 : f32 = u_xlat18.y;
    u_xlat27 = (1.0f / x_422);
    let x_425 : f32 = u_xlat18.x;
    let x_426 : f32 = u_xlat27;
    u_xlat18.x = ((x_425 * x_426) + -1.0f);
    let x_430 : vec4<f32> = u_xlat1;
    let x_432 : vec2<f32> = u_xlat18;
    let x_435 : vec4<f32> = u_xlat7;
    u_xlat18 = ((vec2<f32>(x_430.x, x_430.y) * vec2<f32>(x_432.x, x_432.x)) + vec2<f32>(x_435.x, x_435.y));
  } else {
    let x_440 : f32 = u_xlat9.x;
    u_xlat5.x = (1.0f / x_440);
    let x_444 : f32 = u_xlat5.x;
    let x_446 : f32 = x_55.x_Distortion_Amount.x;
    u_xlat5.x = (x_444 * x_446);
    let x_450 : f32 = u_xlat9.x;
    let x_452 : f32 = x_55.x_Distortion_Amount.y;
    u_xlat9.x = (x_450 * x_452);
    let x_457 : f32 = u_xlat9.x;
    u_xlat14 = min(abs(x_457), 1.0f);
    let x_461 : f32 = u_xlat9.x;
    u_xlat32 = max(abs(x_461), 1.0f);
    let x_464 : f32 = u_xlat32;
    u_xlat32 = (1.0f / x_464);
    let x_466 : f32 = u_xlat32;
    let x_467 : f32 = u_xlat14;
    u_xlat14 = (x_466 * x_467);
    let x_469 : f32 = u_xlat14;
    let x_470 : f32 = u_xlat14;
    u_xlat32 = (x_469 * x_470);
    let x_472 : f32 = u_xlat32;
    u_xlat8.x = ((x_472 * 0.0208351f) + -0.085133001f);
    let x_476 : f32 = u_xlat32;
    let x_478 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_476 * x_478) + 0.180141002f);
    let x_482 : f32 = u_xlat32;
    let x_484 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_482 * x_484) + -0.330299497f);
    let x_488 : f32 = u_xlat32;
    let x_490 : f32 = u_xlat8.x;
    u_xlat32 = ((x_488 * x_490) + 0.999866009f);
    let x_493 : f32 = u_xlat32;
    let x_494 : f32 = u_xlat14;
    u_xlat8.x = (x_493 * x_494);
    let x_499 : f32 = u_xlat9.x;
    u_xlatb17 = (1.0f < abs(x_499));
    let x_503 : f32 = u_xlat8.x;
    u_xlat8.x = ((x_503 * -2.0f) + 1.570796371f);
    let x_507 : bool = u_xlatb17;
    if (x_507) {
      let x_512 : f32 = u_xlat8.x;
      x_508 = x_512;
    } else {
      x_508 = 0.0f;
    }
    let x_514 : f32 = x_508;
    u_xlat8.x = x_514;
    let x_516 : f32 = u_xlat14;
    let x_517 : f32 = u_xlat32;
    let x_520 : f32 = u_xlat8.x;
    u_xlat14 = ((x_516 * x_517) + x_520);
    let x_523 : f32 = u_xlat9.x;
    u_xlat9.x = min(x_523, 1.0f);
    let x_528 : f32 = u_xlat9.x;
    let x_530 : f32 = u_xlat9.x;
    u_xlatb9 = (x_528 < -(x_530));
    let x_533 : bool = u_xlatb9;
    if (x_533) {
      let x_537 : f32 = u_xlat14;
      x_534 = -(x_537);
    } else {
      let x_540 : f32 = u_xlat14;
      x_534 = x_540;
    }
    let x_541 : f32 = x_534;
    u_xlat9.x = x_541;
    let x_544 : f32 = u_xlat5.x;
    let x_546 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_544 * x_546) + -1.0f);
    let x_550 : vec4<f32> = u_xlat1;
    let x_552 : vec3<f32> = u_xlat9;
    let x_555 : vec4<f32> = u_xlat7;
    u_xlat18 = ((vec2<f32>(x_550.x, x_550.y) * vec2<f32>(x_552.x, x_552.x)) + vec2<f32>(x_555.x, x_555.y));
  }
  let x_558 : vec2<f32> = u_xlat18;
  u_xlat18 = x_558;
  let x_559 : vec2<f32> = u_xlat18;
  u_xlat18 = clamp(x_559, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_563 : vec2<f32> = u_xlat18;
  let x_565 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_567 : vec2<f32> = (x_563 * vec2<f32>(x_565, x_565));
  let x_568 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_567.x, x_567.y, x_568.z);
  let x_573 : vec3<f32> = u_xlat9;
  let x_575 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_573.x, x_573.y), 0.0f);
  u_xlat8 = x_575;
  let x_576 : vec4<f32> = u_xlat1;
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat9.x = dot(vec2<f32>(x_576.z, x_576.w), vec2<f32>(x_578.z, x_578.w));
  let x_583 : f32 = u_xlat9.x;
  u_xlat9.x = sqrt(x_583);
  let x_586 : bool = u_xlatb23;
  if (x_586) {
    let x_589 : vec3<f32> = u_xlat9;
    let x_592 : vec4<f32> = x_55.x_Distortion_Amount;
    u_xlat18 = (vec2<f32>(x_589.x, x_589.x) * vec2<f32>(x_592.x, x_592.y));
    let x_596 : f32 = u_xlat18.x;
    u_xlat1.x = sin(x_596);
    let x_600 : f32 = u_xlat18.x;
    u_xlat5.x = cos(x_600);
    let x_604 : f32 = u_xlat1.x;
    let x_606 : f32 = u_xlat5.x;
    u_xlat18.x = (x_604 / x_606);
    let x_610 : f32 = u_xlat18.y;
    u_xlat27 = (1.0f / x_610);
    let x_613 : f32 = u_xlat18.x;
    let x_614 : f32 = u_xlat27;
    u_xlat18.x = ((x_613 * x_614) + -1.0f);
    let x_618 : vec4<f32> = u_xlat1;
    let x_620 : vec2<f32> = u_xlat18;
    let x_623 : vec4<f32> = u_xlat7;
    u_xlat18 = ((vec2<f32>(x_618.z, x_618.w) * vec2<f32>(x_620.x, x_620.x)) + vec2<f32>(x_623.z, x_623.w));
  } else {
    let x_628 : f32 = u_xlat9.x;
    u_xlat1.x = (1.0f / x_628);
    let x_632 : f32 = u_xlat1.x;
    let x_634 : f32 = x_55.x_Distortion_Amount.x;
    u_xlat1.x = (x_632 * x_634);
    let x_638 : f32 = u_xlat9.x;
    let x_640 : f32 = x_55.x_Distortion_Amount.y;
    u_xlat9.x = (x_638 * x_640);
    let x_645 : f32 = u_xlat9.x;
    u_xlat10 = min(abs(x_645), 1.0f);
    let x_649 : f32 = u_xlat9.x;
    u_xlat5.x = max(abs(x_649), 1.0f);
    let x_654 : f32 = u_xlat5.x;
    u_xlat5.x = (1.0f / x_654);
    let x_657 : f32 = u_xlat10;
    let x_659 : f32 = u_xlat5.x;
    u_xlat10 = (x_657 * x_659);
    let x_661 : f32 = u_xlat10;
    let x_662 : f32 = u_xlat10;
    u_xlat5.x = (x_661 * x_662);
    let x_666 : f32 = u_xlat5.x;
    u_xlat14 = ((x_666 * 0.0208351f) + -0.085133001f);
    let x_670 : f32 = u_xlat5.x;
    let x_671 : f32 = u_xlat14;
    u_xlat14 = ((x_670 * x_671) + 0.180141002f);
    let x_675 : f32 = u_xlat5.x;
    let x_676 : f32 = u_xlat14;
    u_xlat14 = ((x_675 * x_676) + -0.330299497f);
    let x_680 : f32 = u_xlat5.x;
    let x_681 : f32 = u_xlat14;
    u_xlat5.x = ((x_680 * x_681) + 0.999866009f);
    let x_685 : f32 = u_xlat10;
    let x_687 : f32 = u_xlat5.x;
    u_xlat14 = (x_685 * x_687);
    let x_690 : f32 = u_xlat9.x;
    u_xlatb23 = (1.0f < abs(x_690));
    let x_693 : f32 = u_xlat14;
    u_xlat14 = ((x_693 * -2.0f) + 1.570796371f);
    let x_696 : bool = u_xlatb23;
    let x_697 : f32 = u_xlat14;
    u_xlat14 = select(0.0f, x_697, x_696);
    let x_699 : f32 = u_xlat10;
    let x_701 : f32 = u_xlat5.x;
    let x_703 : f32 = u_xlat14;
    u_xlat10 = ((x_699 * x_701) + x_703);
    let x_706 : f32 = u_xlat9.x;
    u_xlat9.x = min(x_706, 1.0f);
    let x_710 : f32 = u_xlat9.x;
    let x_712 : f32 = u_xlat9.x;
    u_xlatb9 = (x_710 < -(x_712));
    let x_715 : bool = u_xlatb9;
    if (x_715) {
      let x_719 : f32 = u_xlat10;
      x_716 = -(x_719);
    } else {
      let x_722 : f32 = u_xlat10;
      x_716 = x_722;
    }
    let x_723 : f32 = x_716;
    u_xlat9.x = x_723;
    let x_726 : f32 = u_xlat1.x;
    let x_728 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_726 * x_728) + -1.0f);
    let x_732 : vec4<f32> = u_xlat1;
    let x_734 : vec3<f32> = u_xlat9;
    let x_737 : vec4<f32> = u_xlat7;
    u_xlat18 = ((vec2<f32>(x_732.z, x_732.w) * vec2<f32>(x_734.x, x_734.x)) + vec2<f32>(x_737.z, x_737.w));
  }
  let x_740 : vec2<f32> = u_xlat18;
  u_xlat18 = x_740;
  let x_741 : vec2<f32> = u_xlat18;
  u_xlat18 = clamp(x_741, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_745 : vec2<f32> = u_xlat18;
  let x_747 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_749 : vec2<f32> = (x_745 * vec2<f32>(x_747, x_747));
  let x_750 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_749.x, x_749.y, x_750.z);
  let x_755 : vec3<f32> = u_xlat9;
  let x_757 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_755.x, x_755.y), 0.0f);
  u_xlat1 = x_757;
  u_xlat2.w = 1.0f;
  u_xlat3.w = 1.0f;
  let x_760 : vec4<f32> = u_xlat3;
  let x_761 : vec4<f32> = u_xlat8;
  u_xlat5 = (x_760 * x_761);
  let x_763 : vec4<f32> = u_xlat6;
  let x_764 : vec4<f32> = u_xlat2;
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_763 * x_764) + x_766);
  u_xlat4.w = 1.0f;
  let x_769 : vec4<f32> = u_xlat1;
  let x_770 : vec4<f32> = u_xlat4;
  let x_772 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_769 * x_770) + x_772);
  let x_774 : vec4<f32> = u_xlat2;
  let x_776 : vec4<f32> = u_xlat3;
  u_xlat9 = (vec3<f32>(x_774.x, x_774.y, x_774.z) + vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = u_xlat4;
  let x_781 : vec3<f32> = u_xlat9;
  let x_782 : vec3<f32> = (vec3<f32>(x_779.x, x_779.y, x_779.z) + x_781);
  let x_783 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  u_xlat2.w = 3.0f;
  let x_787 : vec4<f32> = u_xlat1;
  let x_788 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_787 / x_788);
  let x_790 : vec3<f32> = u_xlat0;
  let x_792 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_790.x, x_790.x, x_790.x) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_795, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_800 : f32 = u_xlat1.w;
  u_xlat1.w = x_800;
  let x_803 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_803, 0.0f, 1.0f);
  let x_806 : vec3<f32> = u_xlat0;
  let x_810 : vec3<f32> = (vec3<f32>(x_806.z, x_806.x, x_806.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_811 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec3<f32> = u_xlat0;
  let x_817 : vec3<f32> = max(vec3<f32>(x_813.z, x_813.x, x_813.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_818 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat3;
  let x_822 : vec3<f32> = log2(vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat3;
  let x_829 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_830 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat3;
  let x_834 : vec3<f32> = exp2(vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat3;
  let x_844 : vec3<f32> = ((vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_845 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_852 : vec3<f32> = u_xlat0;
  let x_855 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_852.z, x_852.x, x_852.y, x_852.z));
  u_xlatb0 = vec3<bool>(x_855.x, x_855.y, x_855.z);
  let x_858 : bool = u_xlatb0.x;
  if (x_858) {
    let x_863 : f32 = u_xlat2.x;
    x_859 = x_863;
  } else {
    let x_866 : f32 = u_xlat3.x;
    x_859 = x_866;
  }
  let x_867 : f32 = x_859;
  u_xlat0.x = x_867;
  let x_870 : bool = u_xlatb0.y;
  if (x_870) {
    let x_875 : f32 = u_xlat2.y;
    x_871 = x_875;
  } else {
    let x_878 : f32 = u_xlat3.y;
    x_871 = x_878;
  }
  let x_879 : f32 = x_871;
  u_xlat0.y = x_879;
  let x_883 : bool = u_xlatb0.z;
  if (x_883) {
    let x_888 : f32 = u_xlat2.z;
    x_884 = x_888;
  } else {
    let x_891 : f32 = u_xlat3.z;
    x_884 = x_891;
  }
  let x_892 : f32 = x_884;
  u_xlat0.z = x_892;
  let x_894 : vec3<f32> = u_xlat0;
  let x_898 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat9 = (x_894 * vec3<f32>(x_898.z, x_898.z, x_898.z));
  let x_902 : f32 = u_xlat9.x;
  u_xlat9.x = floor(x_902);
  let x_906 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_908 : vec2<f32> = (vec2<f32>(x_906.x, x_906.y) * vec2<f32>(0.5f, 0.5f));
  let x_909 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
  let x_911 : vec3<f32> = u_xlat9;
  let x_914 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_917 : vec4<f32> = u_xlat2;
  let x_919 : vec2<f32> = ((vec2<f32>(x_911.y, x_911.z) * vec2<f32>(x_914.x, x_914.y)) + vec2<f32>(x_917.x, x_917.y));
  let x_920 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_920.x, x_919.x, x_919.y, x_920.w);
  let x_923 : f32 = u_xlat9.x;
  let x_925 : f32 = x_55.x_Lut2D_Params.y;
  let x_928 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_923 * x_925) + x_928);
  let x_936 : vec4<f32> = u_xlat2;
  let x_938 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_936.x, x_936.z));
  let x_939 : vec3<f32> = vec3<f32>(x_938.x, x_938.y, x_938.z);
  let x_940 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_943 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_943;
  u_xlat4.y = 0.0f;
  let x_946 : vec4<f32> = u_xlat2;
  let x_948 : vec4<f32> = u_xlat4;
  u_xlat18 = (vec2<f32>(x_946.x, x_946.z) + vec2<f32>(x_948.x, x_948.y));
  let x_954 : vec2<f32> = u_xlat18;
  let x_955 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_954);
  let x_956 : vec3<f32> = vec3<f32>(x_955.x, x_955.y, x_955.z);
  let x_957 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_960 : f32 = u_xlat0.x;
  let x_962 : f32 = x_55.x_Lut2D_Params.z;
  let x_965 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_960 * x_962) + -(x_965));
  let x_969 : vec4<f32> = u_xlat3;
  let x_972 : vec4<f32> = u_xlat2;
  u_xlat9 = (-(vec3<f32>(x_969.x, x_969.y, x_969.z)) + vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : vec3<f32> = u_xlat0;
  let x_977 : vec3<f32> = u_xlat9;
  let x_979 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_975.x, x_975.x, x_975.x) * x_977) + vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : vec3<f32> = u_xlat0;
  let x_985 : vec3<f32> = (x_982 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_986 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec3<f32> = u_xlat0;
  let x_991 : vec3<f32> = (x_988 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_992 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec4<f32> = u_xlat3;
  let x_998 : vec3<f32> = (vec3<f32>(x_994.x, x_994.y, x_994.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_999 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat3;
  let x_1004 : vec3<f32> = max(abs(vec3<f32>(x_1001.x, x_1001.y, x_1001.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1005 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec4<f32> = u_xlat3;
  let x_1009 : vec3<f32> = log2(vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1012 : vec4<f32> = u_xlat3;
  let x_1016 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.y, x_1012.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1017 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  let x_1019 : vec4<f32> = u_xlat3;
  let x_1021 : vec3<f32> = exp2(vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1022 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1026 : vec3<f32> = u_xlat0;
  let x_1028 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1026.x));
  u_xlatb0 = vec3<bool>(x_1028.x, x_1028.y, x_1028.z);
  let x_1031 : bool = u_xlatb0.x;
  if (x_1031) {
    let x_1036 : f32 = u_xlat2.x;
    x_1032 = x_1036;
  } else {
    let x_1039 : f32 = u_xlat3.x;
    x_1032 = x_1039;
  }
  let x_1040 : f32 = x_1032;
  u_xlat1.x = x_1040;
  let x_1043 : bool = u_xlatb0.y;
  if (x_1043) {
    let x_1048 : f32 = u_xlat2.y;
    x_1044 = x_1048;
  } else {
    let x_1051 : f32 = u_xlat3.y;
    x_1044 = x_1051;
  }
  let x_1052 : f32 = x_1044;
  u_xlat1.y = x_1052;
  let x_1055 : bool = u_xlatb0.z;
  if (x_1055) {
    let x_1060 : f32 = u_xlat2.z;
    x_1056 = x_1060;
  } else {
    let x_1063 : f32 = u_xlat3.z;
    x_1056 = x_1063;
  }
  let x_1064 : f32 = x_1056;
  u_xlat1.z = x_1064;
  let x_1068 : f32 = x_55.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1068);
  let x_1072 : bool = u_xlatb0.x;
  if (x_1072) {
    let x_1075 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_1075.x, x_1075.y, x_1075.z);
    let x_1077 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_1077, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1081 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_1081, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1090 : vec4<f32> = u_xlat1;
  SV_Target0 = x_1090;
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
