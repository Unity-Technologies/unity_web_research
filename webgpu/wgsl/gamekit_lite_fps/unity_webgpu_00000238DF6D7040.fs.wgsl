struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(0) var<uniform> x_58 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati30 : i32;

var<private> u_xlatb11 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb36 : bool;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat31 : f32;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_328 : f32;
  var x_459 : f32;
  var x_471 : f32;
  var x_483 : f32;
  var x_613 : f32;
  var x_625 : f32;
  var x_637 : f32;
  var x_719 : f32;
  var x_731 : f32;
  var x_743 : f32;
  var x_785 : f32;
  var x_798 : f32;
  var x_810 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  let x_38 : vec2<f32> = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_39 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_38.x, x_38.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat10;
  let x_44 : vec3<f32> = u_xlat10;
  u_xlat30 = dot(vec2<f32>(x_42.x, x_42.y), vec2<f32>(x_44.x, x_44.y));
  let x_47 : f32 = u_xlat30;
  let x_49 : vec3<f32> = u_xlat10;
  let x_51 : vec2<f32> = (vec2<f32>(x_47, x_47) * vec2<f32>(x_49.x, x_49.y));
  let x_52 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_51.x, x_51.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat10;
  let x_63 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_65 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_66 : vec2<f32> = vec2<f32>(x_63, x_65);
  let x_70 : vec2<f32> = (vec2<f32>(x_54.x, x_54.y) * vec2<f32>(x_66.x, x_66.y));
  let x_71 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_75 : vec3<f32> = u_xlat10;
  let x_81 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_75.x, x_75.y)) * vec2<f32>(x_81.z, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat1;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(0.5f, 0.5f));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec2<f32>(x_93.x, x_93.y), vec2<f32>(x_95.x, x_95.y));
  let x_98 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_98);
  let x_102 : f32 = u_xlat30;
  u_xlati30 = i32(x_102);
  let x_104 : i32 = u_xlati30;
  u_xlati30 = max(x_104, 3i);
  let x_107 : i32 = u_xlati30;
  u_xlati30 = min(x_107, 16i);
  let x_110 : i32 = u_xlati30;
  u_xlat1.x = f32(x_110);
  let x_113 : vec3<f32> = u_xlat10;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec2<f32> = (-(vec2<f32>(x_113.x, x_113.y)) / vec2<f32>(x_116.x, x_116.x));
  let x_119 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_118.x, x_118.y, x_119.z);
  let x_128 : f32 = x_58.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_128);
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
  let x_151 : vec2<f32> = vs_TEXCOORD0;
  u_xlat21 = x_151;
  u_xlati_loop_1 = 0i;
  loop {
    let x_160 : i32 = u_xlati_loop_1;
    let x_161 : i32 = u_xlati30;
    if ((x_160 < x_161)) {
    } else {
      break;
    }
    let x_164 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_164);
    let x_168 : f32 = u_xlat16.x;
    u_xlat16.x = (x_168 + 0.5f);
    let x_172 : f32 = u_xlat16.x;
    let x_174 : f32 = u_xlat1.x;
    u_xlat2.x = (x_172 / x_174);
    let x_177 : vec2<f32> = u_xlat21;
    u_xlat16 = (x_177 + vec2<f32>(-0.5f, -0.5f));
    let x_182 : vec2<f32> = u_xlat16;
    let x_184 : vec4<f32> = x_58.x_Distortion_Amount;
    let x_187 : vec2<f32> = ((x_182 * vec2<f32>(x_184.z, x_184.z)) + vec2<f32>(0.5f, 0.5f));
    let x_188 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_187.x, x_187.y, x_188.z, x_188.w);
    let x_190 : vec2<f32> = u_xlat16;
    let x_192 : vec4<f32> = x_58.x_Distortion_Amount;
    let x_197 : vec4<f32> = x_58.x_Distortion_CenterScale;
    u_xlat16 = ((x_190 * vec2<f32>(x_192.z, x_192.z)) + -(vec2<f32>(x_197.x, x_197.y)));
    let x_201 : vec2<f32> = u_xlat16;
    let x_203 : vec4<f32> = x_58.x_Distortion_CenterScale;
    u_xlat16 = (x_201 * vec2<f32>(x_203.z, x_203.w));
    let x_207 : vec2<f32> = u_xlat16;
    let x_208 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_207, x_208);
    let x_210 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_210);
    let x_212 : bool = u_xlatb11;
    if (x_212) {
      let x_216 : f32 = u_xlat36;
      let x_219 : vec4<f32> = x_58.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_216, x_216) * vec2<f32>(x_219.x, x_219.y));
      let x_224 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_224);
      let x_228 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_228);
      let x_230 : f32 = u_xlat8;
      let x_231 : f32 = u_xlat9;
      u_xlat27.x = (x_230 / x_231);
      let x_236 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_236);
      let x_239 : f32 = u_xlat27.x;
      let x_240 : f32 = u_xlat37;
      u_xlat27.x = ((x_239 * x_240) + -1.0f);
      let x_244 : vec2<f32> = u_xlat16;
      let x_245 : vec2<f32> = u_xlat27;
      let x_248 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_244 * vec2<f32>(x_245.x, x_245.x)) + vec2<f32>(x_248.x, x_248.y));
    } else {
      let x_252 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_252);
      let x_254 : f32 = u_xlat8;
      let x_256 : f32 = x_58.x_Distortion_Amount.x;
      u_xlat8 = (x_254 * x_256);
      let x_258 : f32 = u_xlat36;
      let x_260 : f32 = x_58.x_Distortion_Amount.y;
      u_xlat36 = (x_258 * x_260);
      let x_263 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_263), 1.0f);
      let x_267 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_267), 1.0f);
      let x_270 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_270);
      let x_272 : f32 = u_xlat28;
      let x_273 : f32 = u_xlat18;
      u_xlat18 = (x_272 * x_273);
      let x_275 : f32 = u_xlat18;
      let x_276 : f32 = u_xlat18;
      u_xlat28 = (x_275 * x_276);
      let x_279 : f32 = u_xlat28;
      u_xlat38 = ((x_279 * 0.0208351f) + -0.085133001f);
      let x_284 : f32 = u_xlat28;
      let x_285 : f32 = u_xlat38;
      u_xlat38 = ((x_284 * x_285) + 0.180141002f);
      let x_289 : f32 = u_xlat28;
      let x_290 : f32 = u_xlat38;
      u_xlat38 = ((x_289 * x_290) + -0.330299497f);
      let x_294 : f32 = u_xlat28;
      let x_295 : f32 = u_xlat38;
      u_xlat28 = ((x_294 * x_295) + 0.999866009f);
      let x_299 : f32 = u_xlat28;
      let x_300 : f32 = u_xlat18;
      u_xlat38 = (x_299 * x_300);
      let x_303 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_303));
      let x_306 : f32 = u_xlat38;
      u_xlat38 = ((x_306 * -2.0f) + 1.570796371f);
      let x_311 : bool = u_xlatb9;
      let x_312 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_312, x_311);
      let x_314 : f32 = u_xlat18;
      let x_315 : f32 = u_xlat28;
      let x_317 : f32 = u_xlat38;
      u_xlat18 = ((x_314 * x_315) + x_317);
      let x_319 : f32 = u_xlat36;
      u_xlat36 = min(x_319, 1.0f);
      let x_322 : f32 = u_xlat36;
      let x_323 : f32 = u_xlat36;
      u_xlatb36 = (x_322 < -(x_323));
      let x_326 : bool = u_xlatb36;
      if (x_326) {
        let x_331 : f32 = u_xlat18;
        x_328 = -(x_331);
      } else {
        let x_334 : f32 = u_xlat18;
        x_328 = x_334;
      }
      let x_335 : f32 = x_328;
      u_xlat36 = x_335;
      let x_336 : f32 = u_xlat8;
      let x_337 : f32 = u_xlat36;
      u_xlat36 = ((x_336 * x_337) + -1.0f);
      let x_340 : vec2<f32> = u_xlat16;
      let x_341 : f32 = u_xlat36;
      let x_344 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_340 * vec2<f32>(x_341, x_341)) + vec2<f32>(x_344.x, x_344.y));
    }
    let x_347 : vec2<f32> = u_xlat27;
    u_xlat27 = x_347;
    let x_348 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_348, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_352 : vec2<f32> = u_xlat27;
    let x_354 : f32 = x_58.x_RenderViewportScaleFactor;
    u_xlat16 = (x_352 * vec2<f32>(x_354, x_354));
    let x_362 : vec2<f32> = u_xlat16;
    let x_363 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_362, 0.0f);
    u_xlat7 = x_363;
    let x_369 : vec3<f32> = u_xlat2;
    let x_371 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_369.x, x_369.y), 0.0f);
    let x_372 : vec3<f32> = vec3<f32>(x_371.x, x_371.y, x_371.z);
    let x_373 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
    let x_375 : vec4<f32> = u_xlat7;
    let x_376 : vec4<f32> = u_xlat3;
    let x_378 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_375 * x_376) + x_378);
    let x_380 : vec4<f32> = u_xlat3;
    let x_381 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_380 + x_381);
    let x_383 : vec3<f32> = u_xlat10;
    let x_385 : vec2<f32> = u_xlat21;
    u_xlat21 = (vec2<f32>(x_383.x, x_383.y) + x_385);

    continuing {
      let x_387 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_387 + 1i);
    }
  }
  let x_389 : vec4<f32> = u_xlat4;
  let x_390 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_389 / x_390);
  let x_392 : vec3<f32> = u_xlat0;
  let x_394 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_392.x, x_392.x, x_392.x) * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_397, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_403 : f32 = u_xlat1.w;
  u_xlat31 = x_403;
  let x_404 : f32 = u_xlat31;
  u_xlat31 = clamp(x_404, 0.0f, 1.0f);
  let x_406 : vec3<f32> = u_xlat0;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.z, x_406.x, x_406.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_411 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : vec3<f32> = u_xlat0;
  let x_417 : vec3<f32> = max(vec3<f32>(x_413.z, x_413.x, x_413.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat3;
  let x_422 : vec3<f32> = log2(vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat3;
  let x_429 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_430 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat3;
  let x_434 : vec3<f32> = exp2(vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat3;
  let x_444 : vec3<f32> = ((vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_445 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_452 : vec3<f32> = u_xlat0;
  let x_455 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_452.z, x_452.x, x_452.y, x_452.z));
  u_xlatb0 = vec3<bool>(x_455.x, x_455.y, x_455.z);
  let x_458 : bool = u_xlatb0.x;
  if (x_458) {
    let x_463 : f32 = u_xlat1.x;
    x_459 = x_463;
  } else {
    let x_466 : f32 = u_xlat3.x;
    x_459 = x_466;
  }
  let x_467 : f32 = x_459;
  u_xlat0.x = x_467;
  let x_470 : bool = u_xlatb0.y;
  if (x_470) {
    let x_475 : f32 = u_xlat1.y;
    x_471 = x_475;
  } else {
    let x_478 : f32 = u_xlat3.y;
    x_471 = x_478;
  }
  let x_479 : f32 = x_471;
  u_xlat0.y = x_479;
  let x_482 : bool = u_xlatb0.z;
  if (x_482) {
    let x_487 : f32 = u_xlat1.z;
    x_483 = x_487;
  } else {
    let x_490 : f32 = u_xlat3.z;
    x_483 = x_490;
  }
  let x_491 : f32 = x_483;
  u_xlat0.z = x_491;
  let x_493 : vec3<f32> = u_xlat0;
  let x_497 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat10 = (x_493 * vec3<f32>(x_497.z, x_497.z, x_497.z));
  let x_501 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_501);
  let x_505 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_507 : vec2<f32> = (vec2<f32>(x_505.x, x_505.y) * vec2<f32>(0.5f, 0.5f));
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec3<f32> = u_xlat10;
  let x_513 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec2<f32> = ((vec2<f32>(x_510.y, x_510.z) * vec2<f32>(x_513.x, x_513.y)) + vec2<f32>(x_516.x, x_516.y));
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_519.x, x_518.x, x_518.y, x_519.w);
  let x_522 : f32 = u_xlat10.x;
  let x_524 : f32 = x_58.x_Lut2D_Params.y;
  let x_527 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_522 * x_524) + x_527);
  let x_535 : vec4<f32> = u_xlat1;
  let x_537 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_535.x, x_535.z));
  let x_538 : vec3<f32> = vec3<f32>(x_537.x, x_537.y, x_537.z);
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_542 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat22.x = x_542;
  let x_545 : vec2<f32> = u_xlat22;
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat20 = (x_545 + vec2<f32>(x_546.x, x_546.z));
  let x_552 : vec2<f32> = u_xlat20;
  let x_553 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_552);
  let x_554 : vec3<f32> = vec3<f32>(x_553.x, x_553.y, x_553.z);
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : f32 = u_xlat0.x;
  let x_560 : f32 = x_58.x_Lut2D_Params.z;
  let x_563 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_558 * x_560) + -(x_563));
  let x_567 : vec4<f32> = u_xlat3;
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_567.x, x_567.y, x_567.z)) + vec3<f32>(x_570.x, x_570.y, x_570.z));
  let x_573 : vec3<f32> = u_xlat0;
  let x_575 : vec3<f32> = u_xlat10;
  let x_577 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_573.x, x_573.x, x_573.x) * x_575) + vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec3<f32> = u_xlat0;
  let x_583 : vec3<f32> = (x_580 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_586 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_590 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_590 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_594 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_594), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_597 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_597);
  let x_599 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_599 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_603 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_603);
  let x_607 : vec3<f32> = u_xlat0;
  let x_609 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_607.x, x_607.y, x_607.z, x_607.x));
  u_xlatb0 = vec3<bool>(x_609.x, x_609.y, x_609.z);
  let x_612 : bool = u_xlatb0.x;
  if (x_612) {
    let x_617 : f32 = u_xlat1.x;
    x_613 = x_617;
  } else {
    let x_620 : f32 = u_xlat2.x;
    x_613 = x_620;
  }
  let x_621 : f32 = x_613;
  u_xlat0.x = x_621;
  let x_624 : bool = u_xlatb0.y;
  if (x_624) {
    let x_629 : f32 = u_xlat1.y;
    x_625 = x_629;
  } else {
    let x_632 : f32 = u_xlat2.y;
    x_625 = x_632;
  }
  let x_633 : f32 = x_625;
  u_xlat0.y = x_633;
  let x_636 : bool = u_xlatb0.z;
  if (x_636) {
    let x_641 : f32 = u_xlat1.z;
    x_637 = x_641;
  } else {
    let x_644 : f32 = u_xlat2.z;
    x_637 = x_644;
  }
  let x_645 : f32 = x_637;
  u_xlat0.z = x_645;
  let x_647 : vec2<f32> = vs_TEXCOORD0;
  let x_649 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_653 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_655 : vec2<f32> = ((x_647 * vec2<f32>(x_649.x, x_649.y)) + vec2<f32>(x_653.z, x_653.w));
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
  let x_663 : vec4<f32> = u_xlat1;
  let x_665 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_663.x, x_663.y));
  u_xlat30 = x_665.w;
  let x_667 : f32 = u_xlat30;
  u_xlat30 = ((x_667 * 2.0f) + -1.0f);
  let x_670 : f32 = u_xlat30;
  u_xlat1.x = ((x_670 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_676 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_676, 0.0f, 1.0f);
  let x_680 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_680 * 2.0f) + -1.0f);
  let x_684 : f32 = u_xlat30;
  u_xlat30 = (-(abs(x_684)) + 1.0f);
  let x_688 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_688);
  let x_690 : f32 = u_xlat30;
  u_xlat30 = (-(x_690) + 1.0f);
  let x_693 : f32 = u_xlat30;
  let x_695 : f32 = u_xlat1.x;
  u_xlat30 = (x_693 * x_695);
  let x_697 : vec3<f32> = u_xlat0;
  let x_698 : vec3<f32> = (x_697 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_699 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_701), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_704 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_704);
  let x_706 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_706 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_708 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_708);
  let x_710 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_710 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_713 : vec3<f32> = u_xlat0;
  let x_715 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_713.x, x_713.y, x_713.z, x_713.x));
  u_xlatb0 = vec3<bool>(x_715.x, x_715.y, x_715.z);
  let x_718 : bool = u_xlatb0.x;
  if (x_718) {
    let x_723 : f32 = u_xlat1.x;
    x_719 = x_723;
  } else {
    let x_726 : f32 = u_xlat2.x;
    x_719 = x_726;
  }
  let x_727 : f32 = x_719;
  u_xlat0.x = x_727;
  let x_730 : bool = u_xlatb0.y;
  if (x_730) {
    let x_735 : f32 = u_xlat1.y;
    x_731 = x_735;
  } else {
    let x_738 : f32 = u_xlat2.y;
    x_731 = x_738;
  }
  let x_739 : f32 = x_731;
  u_xlat0.y = x_739;
  let x_742 : bool = u_xlatb0.z;
  if (x_742) {
    let x_747 : f32 = u_xlat1.z;
    x_743 = x_747;
  } else {
    let x_750 : f32 = u_xlat2.z;
    x_743 = x_750;
  }
  let x_751 : f32 = x_743;
  u_xlat0.z = x_751;
  let x_753 : f32 = u_xlat30;
  let x_758 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_753, x_753, x_753) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_758);
  let x_760 : vec3<f32> = u_xlat0;
  let x_761 : vec3<f32> = (x_760 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_762 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_764 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_766 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_766 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_768 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_768), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_771 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_771);
  let x_773 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_773 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_775 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_775);
  let x_777 : vec3<f32> = u_xlat0;
  let x_779 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_777.x, x_777.y, x_777.z, x_777.x));
  u_xlatb0 = vec3<bool>(x_779.x, x_779.y, x_779.z);
  let x_784 : bool = u_xlatb0.x;
  if (x_784) {
    let x_789 : f32 = u_xlat1.x;
    x_785 = x_789;
  } else {
    let x_792 : f32 = u_xlat2.x;
    x_785 = x_792;
  }
  let x_793 : f32 = x_785;
  SV_Target0.x = x_793;
  let x_797 : bool = u_xlatb0.y;
  if (x_797) {
    let x_802 : f32 = u_xlat1.y;
    x_798 = x_802;
  } else {
    let x_805 : f32 = u_xlat2.y;
    x_798 = x_805;
  }
  let x_806 : f32 = x_798;
  SV_Target0.y = x_806;
  let x_809 : bool = u_xlatb0.z;
  if (x_809) {
    let x_814 : f32 = u_xlat1.z;
    x_810 = x_814;
  } else {
    let x_817 : f32 = u_xlat2.z;
    x_810 = x_817;
  }
  let x_818 : f32 = x_810;
  SV_Target0.z = x_818;
  let x_820 : f32 = u_xlat31;
  SV_Target0.w = x_820;
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

