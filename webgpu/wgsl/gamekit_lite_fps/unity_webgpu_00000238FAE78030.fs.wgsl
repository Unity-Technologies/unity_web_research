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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

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

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlat28 : f32;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(9) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

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
    let x_167 : vec4<f32> = x_50.x_Distortion_Amount;
    u_xlat24 = ((vec2<f32>(x_164.x, x_164.y) * vec2<f32>(x_167.z, x_167.z)) + vec2<f32>(0.5f, 0.5f));
    let x_171 : vec4<f32> = u_xlat6;
    let x_174 : vec4<f32> = x_50.x_Distortion_Amount;
    let x_179 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_182 : vec2<f32> = ((vec2<f32>(x_171.x, x_171.y) * vec2<f32>(x_174.z, x_174.z)) + -(vec2<f32>(x_179.x, x_179.y)));
    let x_183 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_183.w);
    let x_185 : vec4<f32> = u_xlat6;
    let x_188 : vec4<f32> = x_50.x_Distortion_CenterScale;
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
      let x_207 : vec4<f32> = x_50.x_Distortion_Amount;
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
      let x_246 : f32 = x_50.x_Distortion_Amount.x;
      u_xlat25 = (x_244 * x_246);
      let x_248 : f32 = u_xlat29;
      let x_250 : f32 = x_50.x_Distortion_Amount.y;
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
    let x_343 : f32 = x_50.x_RenderViewportScaleFactor;
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
  let x_383 : vec4<f32> = u_xlat0;
  let x_385 : vec4<f32> = u_xlat1;
  let x_387 : vec3<f32> = (vec3<f32>(x_383.x, x_383.x, x_383.x) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : vec2<f32> = vs_TEXCOORD1;
  let x_394 : vec4<f32> = x_50.x_Grain_Params2;
  let x_398 : vec4<f32> = x_50.x_Grain_Params2;
  let x_400 : vec2<f32> = ((x_391 * vec2<f32>(x_394.x, x_394.y)) + vec2<f32>(x_398.z, x_398.w));
  let x_401 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_400.x, x_400.y, x_401.z);
  let x_408 : vec3<f32> = u_xlat2;
  let x_410 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_408.x, x_408.y));
  u_xlat2 = vec3<f32>(x_410.x, x_410.y, x_410.z);
  let x_412 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = vec3<f32>(x_412.x, x_412.y, x_412.z);
  let x_414 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat3;
  let x_420 : vec3<f32> = clamp(vec3<f32>(x_416.x, x_416.y, x_416.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_423.x, x_423.y, x_423.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_430 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_430);
  let x_434 : f32 = x_50.x_Grain_Params1.x;
  let x_435 : f32 = u_xlat27;
  u_xlat27 = ((x_434 * -(x_435)) + 1.0f);
  let x_439 : vec4<f32> = u_xlat0;
  let x_441 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_439.x, x_439.y, x_439.z) * x_441);
  let x_443 : vec3<f32> = u_xlat2;
  let x_445 : f32 = x_50.x_Grain_Params1.y;
  let x_447 : f32 = x_50.x_Grain_Params1.y;
  let x_449 : f32 = x_50.x_Grain_Params1.y;
  u_xlat2 = (x_443 * vec3<f32>(x_445, x_447, x_449));
  let x_452 : vec3<f32> = u_xlat2;
  let x_453 : f32 = u_xlat27;
  let x_456 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = ((x_452 * vec3<f32>(x_453, x_453, x_453)) + vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat1;
  let x_465 : f32 = x_50.x_PostExposure;
  let x_467 : f32 = x_50.x_PostExposure;
  let x_469 : f32 = x_50.x_PostExposure;
  let x_471 : f32 = x_50.x_PostExposure;
  let x_472 : vec4<f32> = vec4<f32>(x_465, x_467, x_469, x_471);
  u_xlat0 = (vec4<f32>(x_461.w, x_461.x, x_461.y, x_461.z) * vec4<f32>(x_472.x, x_472.y, x_472.z, x_472.w));
  let x_479 : vec4<f32> = u_xlat0;
  let x_486 : vec3<f32> = ((vec3<f32>(x_479.y, x_479.z, x_479.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_487 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat1;
  let x_491 : vec3<f32> = log2(vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat1;
  let x_501 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_502 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec4<f32> = u_xlat1;
  let x_508 : vec3<f32> = clamp(vec3<f32>(x_504.x, x_504.y, x_504.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_509 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat1;
  let x_516 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_518 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(x_516.y, x_516.y, x_516.y));
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_523 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat28 = (x_523 * 0.5f);
  let x_525 : vec4<f32> = u_xlat1;
  let x_528 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_531 : f32 = u_xlat28;
  let x_533 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_528.x, x_528.x, x_528.x)) + vec3<f32>(x_531, x_531, x_531));
  let x_534 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_544 : vec4<f32> = u_xlat1;
  let x_546 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec3<f32> = vec3<f32>(x_546.x, x_546.y, x_546.z);
  let x_548 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_548.x, x_547.x, x_547.y, x_547.z);
  let x_553 : f32 = x_50.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_553);
  let x_555 : bool = u_xlatb1;
  if (x_555) {
    let x_558 : vec4<f32> = u_xlat0;
    let x_559 : vec3<f32> = vec3<f32>(x_558.y, x_558.z, x_558.w);
    let x_560 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
    let x_562 : vec4<f32> = u_xlat1;
    let x_566 : vec3<f32> = clamp(vec3<f32>(x_562.x, x_562.y, x_562.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_567 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
    let x_569 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_569.x, x_569.y, x_569.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_575 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_575.y, x_575.z, x_575.w, x_575.x);
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

