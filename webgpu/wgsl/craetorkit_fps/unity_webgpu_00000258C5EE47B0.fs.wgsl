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
  var u_xlat0 : vec4<f32>;
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
  var u_xlat10 : vec3<f32>;
  var x_724 : f32;
  var u_xlat19 : vec2<f32>;
  var u_xlatb1 : bool;
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
    u_xlat10.x = min(abs(x_645), 1.0f);
    let x_650 : f32 = u_xlat9.x;
    u_xlat5.x = max(abs(x_650), 1.0f);
    let x_655 : f32 = u_xlat5.x;
    u_xlat5.x = (1.0f / x_655);
    let x_659 : f32 = u_xlat10.x;
    let x_661 : f32 = u_xlat5.x;
    u_xlat10.x = (x_659 * x_661);
    let x_665 : f32 = u_xlat10.x;
    let x_667 : f32 = u_xlat10.x;
    u_xlat5.x = (x_665 * x_667);
    let x_671 : f32 = u_xlat5.x;
    u_xlat14 = ((x_671 * 0.0208351f) + -0.085133001f);
    let x_675 : f32 = u_xlat5.x;
    let x_676 : f32 = u_xlat14;
    u_xlat14 = ((x_675 * x_676) + 0.180141002f);
    let x_680 : f32 = u_xlat5.x;
    let x_681 : f32 = u_xlat14;
    u_xlat14 = ((x_680 * x_681) + -0.330299497f);
    let x_685 : f32 = u_xlat5.x;
    let x_686 : f32 = u_xlat14;
    u_xlat5.x = ((x_685 * x_686) + 0.999866009f);
    let x_691 : f32 = u_xlat10.x;
    let x_693 : f32 = u_xlat5.x;
    u_xlat14 = (x_691 * x_693);
    let x_696 : f32 = u_xlat9.x;
    u_xlatb23 = (1.0f < abs(x_696));
    let x_699 : f32 = u_xlat14;
    u_xlat14 = ((x_699 * -2.0f) + 1.570796371f);
    let x_702 : bool = u_xlatb23;
    let x_703 : f32 = u_xlat14;
    u_xlat14 = select(0.0f, x_703, x_702);
    let x_706 : f32 = u_xlat10.x;
    let x_708 : f32 = u_xlat5.x;
    let x_710 : f32 = u_xlat14;
    u_xlat10.x = ((x_706 * x_708) + x_710);
    let x_714 : f32 = u_xlat9.x;
    u_xlat9.x = min(x_714, 1.0f);
    let x_718 : f32 = u_xlat9.x;
    let x_720 : f32 = u_xlat9.x;
    u_xlatb9 = (x_718 < -(x_720));
    let x_723 : bool = u_xlatb9;
    if (x_723) {
      let x_728 : f32 = u_xlat10.x;
      x_724 = -(x_728);
    } else {
      let x_732 : f32 = u_xlat10.x;
      x_724 = x_732;
    }
    let x_733 : f32 = x_724;
    u_xlat9.x = x_733;
    let x_736 : f32 = u_xlat1.x;
    let x_738 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_736 * x_738) + -1.0f);
    let x_742 : vec4<f32> = u_xlat1;
    let x_744 : vec3<f32> = u_xlat9;
    let x_747 : vec4<f32> = u_xlat7;
    u_xlat18 = ((vec2<f32>(x_742.z, x_742.w) * vec2<f32>(x_744.x, x_744.x)) + vec2<f32>(x_747.z, x_747.w));
  }
  let x_750 : vec2<f32> = u_xlat18;
  u_xlat18 = x_750;
  let x_751 : vec2<f32> = u_xlat18;
  u_xlat18 = clamp(x_751, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_755 : vec2<f32> = u_xlat18;
  let x_757 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_759 : vec2<f32> = (x_755 * vec2<f32>(x_757, x_757));
  let x_760 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_759.x, x_759.y, x_760.z);
  let x_765 : vec3<f32> = u_xlat9;
  let x_767 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_765.x, x_765.y), 0.0f);
  u_xlat1 = x_767;
  u_xlat2.w = 1.0f;
  u_xlat3.w = 1.0f;
  let x_770 : vec4<f32> = u_xlat3;
  let x_771 : vec4<f32> = u_xlat8;
  u_xlat5 = (x_770 * x_771);
  let x_773 : vec4<f32> = u_xlat6;
  let x_774 : vec4<f32> = u_xlat2;
  let x_776 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_773 * x_774) + x_776);
  u_xlat4.w = 1.0f;
  let x_779 : vec4<f32> = u_xlat1;
  let x_780 : vec4<f32> = u_xlat4;
  let x_782 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_779 * x_780) + x_782);
  let x_784 : vec4<f32> = u_xlat2;
  let x_786 : vec4<f32> = u_xlat3;
  u_xlat9 = (vec3<f32>(x_784.x, x_784.y, x_784.z) + vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec4<f32> = u_xlat4;
  let x_791 : vec3<f32> = u_xlat9;
  let x_792 : vec3<f32> = (vec3<f32>(x_789.x, x_789.y, x_789.z) + x_791);
  let x_793 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  u_xlat2.w = 3.0f;
  let x_797 : vec4<f32> = u_xlat1;
  let x_798 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_797 / x_798);
  let x_800 : vec4<f32> = u_xlat0;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec3<f32> = (vec3<f32>(x_800.x, x_800.x, x_800.x) * vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat1;
  let x_810 : f32 = x_55.x_PostExposure;
  let x_812 : f32 = x_55.x_PostExposure;
  let x_814 : f32 = x_55.x_PostExposure;
  let x_816 : f32 = x_55.x_PostExposure;
  let x_817 : vec4<f32> = vec4<f32>(x_810, x_812, x_814, x_816);
  u_xlat0 = (x_807 * vec4<f32>(x_817.x, x_817.y, x_817.z, x_817.w));
  let x_824 : vec4<f32> = u_xlat0;
  let x_831 : vec3<f32> = ((vec3<f32>(x_824.z, x_824.x, x_824.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat1;
  let x_836 : vec3<f32> = log2(vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat1;
  let x_846 : vec3<f32> = ((vec3<f32>(x_839.x, x_839.y, x_839.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_847 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec4<f32> = u_xlat1;
  let x_853 : vec3<f32> = clamp(vec3<f32>(x_849.x, x_849.y, x_849.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_854 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat1;
  let x_861 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(x_861.z, x_861.z, x_861.z));
  let x_865 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_865);
  let x_869 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_871 : vec2<f32> = (vec2<f32>(x_869.x, x_869.y) * vec2<f32>(0.5f, 0.5f));
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
  let x_874 : vec3<f32> = u_xlat10;
  let x_877 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_880 : vec4<f32> = u_xlat2;
  let x_882 : vec2<f32> = ((vec2<f32>(x_874.y, x_874.z) * vec2<f32>(x_877.x, x_877.y)) + vec2<f32>(x_880.x, x_880.y));
  let x_883 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_883.x, x_882.x, x_882.y, x_883.w);
  let x_886 : f32 = u_xlat10.x;
  let x_888 : f32 = x_55.x_Lut2D_Params.y;
  let x_891 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_886 * x_888) + x_891);
  let x_899 : vec4<f32> = u_xlat2;
  let x_901 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_899.x, x_899.z));
  let x_902 : vec3<f32> = vec3<f32>(x_901.x, x_901.y, x_901.z);
  let x_903 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_906 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_906;
  u_xlat4.y = 0.0f;
  let x_910 : vec4<f32> = u_xlat2;
  let x_912 : vec4<f32> = u_xlat4;
  u_xlat19 = (vec2<f32>(x_910.x, x_910.z) + vec2<f32>(x_912.x, x_912.y));
  let x_918 : vec2<f32> = u_xlat19;
  let x_919 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_918);
  let x_920 : vec3<f32> = vec3<f32>(x_919.x, x_919.y, x_919.z);
  let x_921 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_924 : f32 = u_xlat1.x;
  let x_927 : f32 = x_55.x_Lut2D_Params.z;
  let x_930 : f32 = u_xlat10.x;
  u_xlat1.x = ((x_924 * x_927) + -(x_930));
  let x_934 : vec4<f32> = u_xlat3;
  let x_937 : vec4<f32> = u_xlat2;
  u_xlat10 = (-(vec3<f32>(x_934.x, x_934.y, x_934.z)) + vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec4<f32> = u_xlat1;
  let x_942 : vec3<f32> = u_xlat10;
  let x_944 : vec4<f32> = u_xlat3;
  let x_946 : vec3<f32> = ((vec3<f32>(x_940.x, x_940.x, x_940.x) * x_942) + vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
  let x_952 : f32 = x_55.x_LumaInAlpha;
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
  let x_978 : vec4<f32> = u_xlat0;
  SV_Target0 = x_978;
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

