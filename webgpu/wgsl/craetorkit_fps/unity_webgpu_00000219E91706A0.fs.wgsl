struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(6) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(7) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati27 : i32;
  var u_xlatb10 : bool;
  var u_xlat2 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat19 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat29 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat25 : f32;
  var u_xlat34 : f32;
  var u_xlat17 : f32;
  var u_xlatb26 : bool;
  var u_xlatb29 : bool;
  var x_313 : f32;
  var u_xlat28 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat9 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat9;
  let x_41 : vec2<f32> = u_xlat9;
  u_xlat27 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat27;
  let x_45 : vec2<f32> = u_xlat9;
  u_xlat9 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat9;
  let x_55 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_57 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_58 : vec2<f32> = vec2<f32>(x_55, x_57);
  u_xlat9 = (x_47 * vec2<f32>(x_58.x, x_58.y));
  let x_64 : vec2<f32> = u_xlat9;
  let x_69 : vec4<f32> = x_50.x_MainTex_TexelSize;
  let x_71 : vec2<f32> = (-(x_64) * vec2<f32>(x_69.z, x_69.w));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_78 : vec2<f32> = (vec2<f32>(x_74.x, x_74.y) * vec2<f32>(0.5f, 0.5f));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_79.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat27 = dot(vec2<f32>(x_81.x, x_81.y), vec2<f32>(x_83.x, x_83.y));
  let x_86 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_86);
  let x_90 : f32 = u_xlat27;
  u_xlati27 = i32(x_90);
  let x_92 : i32 = u_xlati27;
  u_xlati27 = max(x_92, 3i);
  let x_94 : i32 = u_xlati27;
  u_xlati27 = min(x_94, 16i);
  let x_97 : i32 = u_xlati27;
  u_xlat1.x = f32(x_97);
  let x_100 : vec2<f32> = u_xlat9;
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat9 = (-(x_100) / vec2<f32>(x_102.x, x_102.x));
  let x_112 : f32 = x_50.x_Distortion_Amount.w;
  u_xlatb10 = (0.0f < x_112);
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_132 : vec2<f32> = vs_TEXCOORD0;
  u_xlat19 = x_132;
  u_xlati_loop_1 = 0i;
  loop {
    let x_140 : i32 = u_xlati_loop_1;
    let x_141 : i32 = u_xlati27;
    if ((x_140 < x_141)) {
    } else {
      break;
    }
    let x_144 : i32 = u_xlati_loop_1;
    u_xlat29 = f32(x_144);
    let x_146 : f32 = u_xlat29;
    u_xlat29 = (x_146 + 0.5f);
    let x_148 : f32 = u_xlat29;
    let x_150 : f32 = u_xlat1.x;
    u_xlat2.x = (x_148 / x_150);
    let x_154 : vec2<f32> = u_xlat19;
    let x_157 : vec2<f32> = (x_154 + vec2<f32>(-0.5f, -0.5f));
    let x_158 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_157.x, x_157.y, x_158.z, x_158.w);
    let x_161 : vec4<f32> = u_xlat6;
    let x_164 : vec4<f32> = x_50.x_Distortion_Amount;
    u_xlat24 = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(x_164.z, x_164.z)) + vec2<f32>(0.5f, 0.5f));
    let x_168 : vec4<f32> = u_xlat6;
    let x_171 : vec4<f32> = x_50.x_Distortion_Amount;
    let x_176 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_179 : vec2<f32> = ((vec2<f32>(x_168.x, x_168.y) * vec2<f32>(x_171.z, x_171.z)) + -(vec2<f32>(x_176.x, x_176.y)));
    let x_180 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_179.x, x_179.y, x_180.z, x_180.w);
    let x_182 : vec4<f32> = u_xlat6;
    let x_185 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_187 : vec2<f32> = (vec2<f32>(x_182.x, x_182.y) * vec2<f32>(x_185.z, x_185.w));
    let x_188 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_187.x, x_187.y, x_188.z, x_188.w);
    let x_190 : vec4<f32> = u_xlat6;
    let x_192 : vec4<f32> = u_xlat6;
    u_xlat29 = dot(vec2<f32>(x_190.x, x_190.y), vec2<f32>(x_192.x, x_192.y));
    let x_195 : f32 = u_xlat29;
    u_xlat29 = sqrt(x_195);
    let x_197 : bool = u_xlatb10;
    if (x_197) {
      let x_201 : f32 = u_xlat29;
      let x_204 : vec4<f32> = x_50.x_Distortion_Amount;
      u_xlat7 = (vec2<f32>(x_201, x_201) * vec2<f32>(x_204.x, x_204.y));
      let x_209 : f32 = u_xlat7.x;
      u_xlat8 = cos(x_209);
      let x_212 : f32 = u_xlat7.x;
      u_xlat7.x = sin(x_212);
      let x_216 : f32 = u_xlat7.x;
      let x_217 : f32 = u_xlat8;
      u_xlat7.x = (x_216 / x_217);
      let x_222 : f32 = u_xlat7.y;
      u_xlat16 = (1.0f / x_222);
      let x_225 : f32 = u_xlat7.x;
      let x_226 : f32 = u_xlat16;
      u_xlat7.x = ((x_225 * x_226) + -1.0f);
      let x_230 : vec4<f32> = u_xlat6;
      let x_232 : vec2<f32> = u_xlat7;
      let x_235 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_230.x, x_230.y) * vec2<f32>(x_232.x, x_232.x)) + x_235);
    } else {
      let x_239 : f32 = u_xlat29;
      u_xlat25 = (1.0f / x_239);
      let x_241 : f32 = u_xlat25;
      let x_243 : f32 = x_50.x_Distortion_Amount.x;
      u_xlat25 = (x_241 * x_243);
      let x_245 : f32 = u_xlat29;
      let x_247 : f32 = x_50.x_Distortion_Amount.y;
      u_xlat29 = (x_245 * x_247);
      let x_250 : f32 = u_xlat29;
      u_xlat34 = min(abs(x_250), 1.0f);
      let x_253 : f32 = u_xlat29;
      u_xlat8 = max(abs(x_253), 1.0f);
      let x_256 : f32 = u_xlat8;
      u_xlat8 = (1.0f / x_256);
      let x_258 : f32 = u_xlat34;
      let x_259 : f32 = u_xlat8;
      u_xlat34 = (x_258 * x_259);
      let x_261 : f32 = u_xlat34;
      let x_262 : f32 = u_xlat34;
      u_xlat8 = (x_261 * x_262);
      let x_265 : f32 = u_xlat8;
      u_xlat17 = ((x_265 * 0.0208351f) + -0.085133001f);
      let x_270 : f32 = u_xlat8;
      let x_271 : f32 = u_xlat17;
      u_xlat17 = ((x_270 * x_271) + 0.180141002f);
      let x_275 : f32 = u_xlat8;
      let x_276 : f32 = u_xlat17;
      u_xlat17 = ((x_275 * x_276) + -0.330299497f);
      let x_280 : f32 = u_xlat8;
      let x_281 : f32 = u_xlat17;
      u_xlat8 = ((x_280 * x_281) + 0.999866009f);
      let x_285 : f32 = u_xlat34;
      let x_286 : f32 = u_xlat8;
      u_xlat17 = (x_285 * x_286);
      let x_289 : f32 = u_xlat29;
      u_xlatb26 = (1.0f < abs(x_289));
      let x_292 : f32 = u_xlat17;
      u_xlat17 = ((x_292 * -2.0f) + 1.570796371f);
      let x_297 : bool = u_xlatb26;
      let x_298 : f32 = u_xlat17;
      u_xlat17 = select(0.0f, x_298, x_297);
      let x_300 : f32 = u_xlat34;
      let x_301 : f32 = u_xlat8;
      let x_303 : f32 = u_xlat17;
      u_xlat34 = ((x_300 * x_301) + x_303);
      let x_305 : f32 = u_xlat29;
      u_xlat29 = min(x_305, 1.0f);
      let x_308 : f32 = u_xlat29;
      let x_309 : f32 = u_xlat29;
      u_xlatb29 = (x_308 < -(x_309));
      let x_312 : bool = u_xlatb29;
      if (x_312) {
        let x_316 : f32 = u_xlat34;
        x_313 = -(x_316);
      } else {
        let x_319 : f32 = u_xlat34;
        x_313 = x_319;
      }
      let x_320 : f32 = x_313;
      u_xlat29 = x_320;
      let x_321 : f32 = u_xlat25;
      let x_322 : f32 = u_xlat29;
      u_xlat29 = ((x_321 * x_322) + -1.0f);
      let x_325 : vec4<f32> = u_xlat6;
      let x_327 : f32 = u_xlat29;
      let x_330 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_325.x, x_325.y) * vec2<f32>(x_327, x_327)) + x_330);
    }
    let x_332 : vec2<f32> = u_xlat7;
    u_xlat7 = x_332;
    let x_333 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_333, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_337 : vec2<f32> = u_xlat7;
    let x_339 : f32 = x_50.x_RenderViewportScaleFactor;
    let x_341 : vec2<f32> = (x_337 * vec2<f32>(x_339, x_339));
    let x_342 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_342.z, x_342.w);
    let x_349 : vec4<f32> = u_xlat6;
    let x_351 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_349.x, x_349.y), 0.0f);
    u_xlat6 = x_351;
    let x_357 : vec2<f32> = u_xlat2;
    let x_358 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, x_357, 0.0f);
    let x_360 : vec3<f32> = vec3<f32>(x_358.x, x_358.y, x_358.z);
    let x_361 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
    let x_363 : vec4<f32> = u_xlat6;
    let x_364 : vec4<f32> = u_xlat3;
    let x_366 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_363 * x_364) + x_366);
    let x_368 : vec4<f32> = u_xlat3;
    let x_369 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_368 + x_369);
    let x_371 : vec2<f32> = u_xlat9;
    let x_372 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_371 + x_372);

    continuing {
      let x_374 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_374 + 1i);
    }
  }
  let x_376 : vec4<f32> = u_xlat4;
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_376 / x_377);
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec3<f32> = (vec3<f32>(x_379.x, x_379.x, x_379.x) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_390 : f32 = x_50.x_PostExposure;
  let x_392 : f32 = x_50.x_PostExposure;
  let x_394 : f32 = x_50.x_PostExposure;
  let x_396 : f32 = x_50.x_PostExposure;
  let x_397 : vec4<f32> = vec4<f32>(x_390, x_392, x_394, x_396);
  u_xlat0 = (vec4<f32>(x_386.w, x_386.x, x_386.y, x_386.z) * vec4<f32>(x_397.x, x_397.y, x_397.z, x_397.w));
  let x_404 : vec4<f32> = u_xlat0;
  let x_411 : vec3<f32> = ((vec3<f32>(x_404.y, x_404.z, x_404.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat1;
  let x_416 : vec3<f32> = log2(vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat1;
  let x_426 : vec3<f32> = ((vec3<f32>(x_419.x, x_419.y, x_419.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat1;
  let x_433 : vec3<f32> = clamp(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_434 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat1;
  let x_441 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_443 : vec3<f32> = (vec3<f32>(x_436.x, x_436.y, x_436.z) * vec3<f32>(x_441.y, x_441.y, x_441.y));
  let x_444 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_448 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat28 = (x_448 * 0.5f);
  let x_450 : vec4<f32> = u_xlat1;
  let x_453 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_456 : f32 = u_xlat28;
  let x_458 : vec3<f32> = ((vec3<f32>(x_450.x, x_450.y, x_450.z) * vec3<f32>(x_453.x, x_453.x, x_453.x)) + vec3<f32>(x_456, x_456, x_456));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_469 : vec4<f32> = u_xlat1;
  let x_471 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec3<f32> = vec3<f32>(x_471.x, x_471.y, x_471.z);
  let x_473 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_473.x, x_472.x, x_472.y, x_472.z);
  let x_478 : f32 = x_50.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_478);
  let x_480 : bool = u_xlatb1;
  if (x_480) {
    let x_483 : vec4<f32> = u_xlat0;
    let x_484 : vec3<f32> = vec3<f32>(x_483.y, x_483.z, x_483.w);
    let x_485 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
    let x_487 : vec4<f32> = u_xlat1;
    let x_491 : vec3<f32> = clamp(vec3<f32>(x_487.x, x_487.y, x_487.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_492 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
    let x_494 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_494.x, x_494.y, x_494.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_504 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_504.y, x_504.z, x_504.w, x_504.x);
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

