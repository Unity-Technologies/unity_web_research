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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati27 : i32;

var<private> u_xlatb10 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat24 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlatb29 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_GrainTex : sampler;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati20 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_317 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat9 = ((x_33 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_41 : vec2<f32> = u_xlat9;
  let x_42 : vec2<f32> = u_xlat9;
  u_xlat27 = dot(x_41, x_42);
  let x_44 : f32 = u_xlat27;
  let x_46 : vec2<f32> = u_xlat9;
  u_xlat9 = (vec2<f32>(x_44, x_44) * x_46);
  let x_48 : vec2<f32> = u_xlat9;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat9 = (x_48 * vec2<f32>(x_59.x, x_59.y));
  let x_66 : vec2<f32> = u_xlat9;
  let x_71 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_73 : vec2<f32> = (-(x_66) * vec2<f32>(x_71.z, x_71.w));
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_80 : vec2<f32> = (vec2<f32>(x_76.x, x_76.y) * vec2<f32>(0.5f, 0.5f));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_81.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat27 = dot(vec2<f32>(x_83.x, x_83.y), vec2<f32>(x_85.x, x_85.y));
  let x_88 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_88);
  let x_92 : f32 = u_xlat27;
  u_xlati27 = i32(x_92);
  let x_94 : i32 = u_xlati27;
  u_xlati27 = max(x_94, 3i);
  let x_96 : i32 = u_xlati27;
  u_xlati27 = min(x_96, 16i);
  let x_99 : i32 = u_xlati27;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat9;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat9 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
  let x_114 : f32 = x_51.x_Distortion_Amount.w;
  u_xlatb10 = (0.0f < x_114);
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
  let x_134 : vec2<f32> = vs_TEXCOORD0;
  u_xlat19 = x_134;
  u_xlati_loop_1 = 0i;
  loop {
    let x_143 : i32 = u_xlati_loop_1;
    let x_144 : i32 = u_xlati27;
    if ((x_143 < x_144)) {
    } else {
      break;
    }
    let x_147 : i32 = u_xlati_loop_1;
    u_xlat29 = f32(x_147);
    let x_149 : f32 = u_xlat29;
    u_xlat29 = (x_149 + 0.5f);
    let x_151 : f32 = u_xlat29;
    let x_153 : f32 = u_xlat1.x;
    u_xlat2.x = (x_151 / x_153);
    let x_157 : vec2<f32> = u_xlat19;
    let x_160 : vec2<f32> = (x_157 + vec2<f32>(-0.5f, -0.5f));
    let x_161 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_161.z, x_161.w);
    let x_164 : vec4<f32> = u_xlat6;
    let x_167 : vec4<f32> = x_51.x_Distortion_Amount;
    u_xlat24 = ((vec2<f32>(x_164.x, x_164.y) * vec2<f32>(x_167.z, x_167.z)) + vec2<f32>(0.5f, 0.5f));
    let x_171 : vec4<f32> = u_xlat6;
    let x_174 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_179 : vec4<f32> = x_51.x_Distortion_CenterScale;
    let x_182 : vec2<f32> = ((vec2<f32>(x_171.x, x_171.y) * vec2<f32>(x_174.z, x_174.z)) + -(vec2<f32>(x_179.x, x_179.y)));
    let x_183 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_183.w);
    let x_185 : vec4<f32> = u_xlat6;
    let x_188 : vec4<f32> = x_51.x_Distortion_CenterScale;
    let x_190 : vec2<f32> = (vec2<f32>(x_185.x, x_185.y) * vec2<f32>(x_188.z, x_188.w));
    let x_191 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_190.x, x_190.y, x_191.z, x_191.w);
    let x_193 : vec4<f32> = u_xlat6;
    let x_195 : vec4<f32> = u_xlat6;
    u_xlat29 = dot(vec2<f32>(x_193.x, x_193.y), vec2<f32>(x_195.x, x_195.y));
    let x_198 : f32 = u_xlat29;
    u_xlat29 = sqrt(x_198);
    let x_200 : bool = u_xlatb10;
    if (x_200) {
      let x_204 : f32 = u_xlat29;
      let x_207 : vec4<f32> = x_51.x_Distortion_Amount;
      u_xlat7 = (vec2<f32>(x_204, x_204) * vec2<f32>(x_207.x, x_207.y));
      let x_212 : f32 = u_xlat7.x;
      u_xlat8 = cos(x_212);
      let x_215 : f32 = u_xlat7.x;
      u_xlat7.x = sin(x_215);
      let x_219 : f32 = u_xlat7.x;
      let x_220 : f32 = u_xlat8;
      u_xlat7.x = (x_219 / x_220);
      let x_225 : f32 = u_xlat7.y;
      u_xlat16 = (1.0f / x_225);
      let x_228 : f32 = u_xlat7.x;
      let x_229 : f32 = u_xlat16;
      u_xlat7.x = ((x_228 * x_229) + -1.0f);
      let x_233 : vec4<f32> = u_xlat6;
      let x_235 : vec2<f32> = u_xlat7;
      let x_238 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_233.x, x_233.y) * vec2<f32>(x_235.x, x_235.x)) + x_238);
    } else {
      let x_242 : f32 = u_xlat29;
      u_xlat25 = (1.0f / x_242);
      let x_244 : f32 = u_xlat25;
      let x_246 : f32 = x_51.x_Distortion_Amount.x;
      u_xlat25 = (x_244 * x_246);
      let x_248 : f32 = u_xlat29;
      let x_250 : f32 = x_51.x_Distortion_Amount.y;
      u_xlat29 = (x_248 * x_250);
      let x_253 : f32 = u_xlat29;
      u_xlat34 = min(abs(x_253), 1.0f);
      let x_256 : f32 = u_xlat29;
      u_xlat8 = max(abs(x_256), 1.0f);
      let x_259 : f32 = u_xlat8;
      u_xlat8 = (1.0f / x_259);
      let x_261 : f32 = u_xlat34;
      let x_262 : f32 = u_xlat8;
      u_xlat34 = (x_261 * x_262);
      let x_264 : f32 = u_xlat34;
      let x_265 : f32 = u_xlat34;
      u_xlat8 = (x_264 * x_265);
      let x_268 : f32 = u_xlat8;
      u_xlat17 = ((x_268 * 0.0208351f) + -0.085133001f);
      let x_273 : f32 = u_xlat8;
      let x_274 : f32 = u_xlat17;
      u_xlat17 = ((x_273 * x_274) + 0.180141002f);
      let x_278 : f32 = u_xlat8;
      let x_279 : f32 = u_xlat17;
      u_xlat17 = ((x_278 * x_279) + -0.330299497f);
      let x_283 : f32 = u_xlat8;
      let x_284 : f32 = u_xlat17;
      u_xlat8 = ((x_283 * x_284) + 0.999866009f);
      let x_288 : f32 = u_xlat34;
      let x_289 : f32 = u_xlat8;
      u_xlat17 = (x_288 * x_289);
      let x_292 : f32 = u_xlat29;
      u_xlatb26 = (1.0f < abs(x_292));
      let x_295 : f32 = u_xlat17;
      u_xlat17 = ((x_295 * -2.0f) + 1.570796371f);
      let x_300 : bool = u_xlatb26;
      let x_301 : f32 = u_xlat17;
      u_xlat17 = select(0.0f, x_301, x_300);
      let x_303 : f32 = u_xlat34;
      let x_304 : f32 = u_xlat8;
      let x_306 : f32 = u_xlat17;
      u_xlat34 = ((x_303 * x_304) + x_306);
      let x_308 : f32 = u_xlat29;
      u_xlat29 = min(x_308, 1.0f);
      let x_311 : f32 = u_xlat29;
      let x_312 : f32 = u_xlat29;
      u_xlatb29 = (x_311 < -(x_312));
      let x_315 : bool = u_xlatb29;
      if (x_315) {
        let x_320 : f32 = u_xlat34;
        x_317 = -(x_320);
      } else {
        let x_323 : f32 = u_xlat34;
        x_317 = x_323;
      }
      let x_324 : f32 = x_317;
      u_xlat29 = x_324;
      let x_325 : f32 = u_xlat25;
      let x_326 : f32 = u_xlat29;
      u_xlat29 = ((x_325 * x_326) + -1.0f);
      let x_329 : vec4<f32> = u_xlat6;
      let x_331 : f32 = u_xlat29;
      let x_334 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_329.x, x_329.y) * vec2<f32>(x_331, x_331)) + x_334);
    }
    let x_336 : vec2<f32> = u_xlat7;
    u_xlat7 = x_336;
    let x_337 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_337, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_341 : vec2<f32> = u_xlat7;
    let x_343 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_345 : vec2<f32> = (x_341 * vec2<f32>(x_343, x_343));
    let x_346 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
    let x_353 : vec4<f32> = u_xlat6;
    let x_355 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_353.x, x_353.y), 0.0f);
    u_xlat6 = x_355;
    let x_361 : vec3<f32> = u_xlat2;
    let x_363 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_361.x, x_361.y), 0.0f);
    let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.z);
    let x_365 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_367 : vec4<f32> = u_xlat6;
    let x_368 : vec4<f32> = u_xlat3;
    let x_370 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_367 * x_368) + x_370);
    let x_372 : vec4<f32> = u_xlat3;
    let x_373 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_372 + x_373);
    let x_375 : vec2<f32> = u_xlat9;
    let x_376 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_375 + x_376);

    continuing {
      let x_378 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_378 + 1i);
    }
  }
  let x_380 : vec4<f32> = u_xlat4;
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_380 / x_381);
  let x_383 : vec3<f32> = u_xlat0;
  let x_385 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_383.x, x_383.x, x_383.x) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_389 : vec2<f32> = vs_TEXCOORD1;
  let x_392 : vec4<f32> = x_51.x_Grain_Params2;
  let x_396 : vec4<f32> = x_51.x_Grain_Params2;
  let x_398 : vec2<f32> = ((x_389 * vec2<f32>(x_392.x, x_392.y)) + vec2<f32>(x_396.z, x_396.w));
  let x_399 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_398.x, x_398.y, x_399.z);
  let x_406 : vec3<f32> = u_xlat2;
  let x_408 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_406.x, x_406.y));
  u_xlat2 = vec3<f32>(x_408.x, x_408.y, x_408.z);
  let x_410 : vec3<f32> = u_xlat0;
  let x_411 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : vec4<f32> = u_xlat3;
  let x_417 : vec3<f32> = clamp(vec3<f32>(x_413.x, x_413.y, x_413.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_427 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_427);
  let x_431 : f32 = x_51.x_Grain_Params1.x;
  let x_432 : f32 = u_xlat27;
  u_xlat27 = ((x_431 * -(x_432)) + 1.0f);
  let x_436 : vec3<f32> = u_xlat0;
  let x_437 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_436 * x_437);
  let x_439 : vec3<f32> = u_xlat2;
  let x_441 : f32 = x_51.x_Grain_Params1.y;
  let x_443 : f32 = x_51.x_Grain_Params1.y;
  let x_445 : f32 = x_51.x_Grain_Params1.y;
  u_xlat2 = (x_439 * vec3<f32>(x_441, x_443, x_445));
  let x_448 : vec3<f32> = u_xlat2;
  let x_449 : f32 = u_xlat27;
  let x_452 : vec3<f32> = u_xlat0;
  let x_453 : vec3<f32> = ((x_448 * vec3<f32>(x_449, x_449, x_449)) + x_452);
  let x_454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_459 : f32 = x_51.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_459);
  let x_461 : bool = u_xlatb0;
  if (x_461) {
    let x_464 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_464.x, x_464.y, x_464.z);
    let x_466 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_466, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_470 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_470, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_475 : vec4<f32> = u_xlat1;
  SV_Target0 = x_475;
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

