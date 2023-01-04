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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati27 : i32;

var<private> u_xlatb10 : bool;

var<private> u_xlat2 : vec2<f32>;

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

var<private> u_xlat28 : f32;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(8) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati20 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_315 : f32;
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
    let x_141 : i32 = u_xlati_loop_1;
    let x_142 : i32 = u_xlati27;
    if ((x_141 < x_142)) {
    } else {
      break;
    }
    let x_145 : i32 = u_xlati_loop_1;
    u_xlat29 = f32(x_145);
    let x_147 : f32 = u_xlat29;
    u_xlat29 = (x_147 + 0.5f);
    let x_149 : f32 = u_xlat29;
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = (x_149 / x_151);
    let x_155 : vec2<f32> = u_xlat19;
    let x_158 : vec2<f32> = (x_155 + vec2<f32>(-0.5f, -0.5f));
    let x_159 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_158.x, x_158.y, x_159.z, x_159.w);
    let x_162 : vec4<f32> = u_xlat6;
    let x_165 : vec4<f32> = x_50.x_Distortion_Amount;
    u_xlat24 = ((vec2<f32>(x_162.x, x_162.y) * vec2<f32>(x_165.z, x_165.z)) + vec2<f32>(0.5f, 0.5f));
    let x_169 : vec4<f32> = u_xlat6;
    let x_172 : vec4<f32> = x_50.x_Distortion_Amount;
    let x_177 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_180 : vec2<f32> = ((vec2<f32>(x_169.x, x_169.y) * vec2<f32>(x_172.z, x_172.z)) + -(vec2<f32>(x_177.x, x_177.y)));
    let x_181 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_180.x, x_180.y, x_181.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_186 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_188 : vec2<f32> = (vec2<f32>(x_183.x, x_183.y) * vec2<f32>(x_186.z, x_186.w));
    let x_189 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_188.x, x_188.y, x_189.z, x_189.w);
    let x_191 : vec4<f32> = u_xlat6;
    let x_193 : vec4<f32> = u_xlat6;
    u_xlat29 = dot(vec2<f32>(x_191.x, x_191.y), vec2<f32>(x_193.x, x_193.y));
    let x_196 : f32 = u_xlat29;
    u_xlat29 = sqrt(x_196);
    let x_198 : bool = u_xlatb10;
    if (x_198) {
      let x_202 : f32 = u_xlat29;
      let x_205 : vec4<f32> = x_50.x_Distortion_Amount;
      u_xlat7 = (vec2<f32>(x_202, x_202) * vec2<f32>(x_205.x, x_205.y));
      let x_210 : f32 = u_xlat7.x;
      u_xlat8 = cos(x_210);
      let x_213 : f32 = u_xlat7.x;
      u_xlat7.x = sin(x_213);
      let x_217 : f32 = u_xlat7.x;
      let x_218 : f32 = u_xlat8;
      u_xlat7.x = (x_217 / x_218);
      let x_223 : f32 = u_xlat7.y;
      u_xlat16 = (1.0f / x_223);
      let x_226 : f32 = u_xlat7.x;
      let x_227 : f32 = u_xlat16;
      u_xlat7.x = ((x_226 * x_227) + -1.0f);
      let x_231 : vec4<f32> = u_xlat6;
      let x_233 : vec2<f32> = u_xlat7;
      let x_236 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_231.x, x_231.y) * vec2<f32>(x_233.x, x_233.x)) + x_236);
    } else {
      let x_240 : f32 = u_xlat29;
      u_xlat25 = (1.0f / x_240);
      let x_242 : f32 = u_xlat25;
      let x_244 : f32 = x_50.x_Distortion_Amount.x;
      u_xlat25 = (x_242 * x_244);
      let x_246 : f32 = u_xlat29;
      let x_248 : f32 = x_50.x_Distortion_Amount.y;
      u_xlat29 = (x_246 * x_248);
      let x_251 : f32 = u_xlat29;
      u_xlat34 = min(abs(x_251), 1.0f);
      let x_254 : f32 = u_xlat29;
      u_xlat8 = max(abs(x_254), 1.0f);
      let x_257 : f32 = u_xlat8;
      u_xlat8 = (1.0f / x_257);
      let x_259 : f32 = u_xlat34;
      let x_260 : f32 = u_xlat8;
      u_xlat34 = (x_259 * x_260);
      let x_262 : f32 = u_xlat34;
      let x_263 : f32 = u_xlat34;
      u_xlat8 = (x_262 * x_263);
      let x_266 : f32 = u_xlat8;
      u_xlat17 = ((x_266 * 0.0208351f) + -0.085133001f);
      let x_271 : f32 = u_xlat8;
      let x_272 : f32 = u_xlat17;
      u_xlat17 = ((x_271 * x_272) + 0.180141002f);
      let x_276 : f32 = u_xlat8;
      let x_277 : f32 = u_xlat17;
      u_xlat17 = ((x_276 * x_277) + -0.330299497f);
      let x_281 : f32 = u_xlat8;
      let x_282 : f32 = u_xlat17;
      u_xlat8 = ((x_281 * x_282) + 0.999866009f);
      let x_286 : f32 = u_xlat34;
      let x_287 : f32 = u_xlat8;
      u_xlat17 = (x_286 * x_287);
      let x_290 : f32 = u_xlat29;
      u_xlatb26 = (1.0f < abs(x_290));
      let x_293 : f32 = u_xlat17;
      u_xlat17 = ((x_293 * -2.0f) + 1.570796371f);
      let x_298 : bool = u_xlatb26;
      let x_299 : f32 = u_xlat17;
      u_xlat17 = select(0.0f, x_299, x_298);
      let x_301 : f32 = u_xlat34;
      let x_302 : f32 = u_xlat8;
      let x_304 : f32 = u_xlat17;
      u_xlat34 = ((x_301 * x_302) + x_304);
      let x_306 : f32 = u_xlat29;
      u_xlat29 = min(x_306, 1.0f);
      let x_309 : f32 = u_xlat29;
      let x_310 : f32 = u_xlat29;
      u_xlatb29 = (x_309 < -(x_310));
      let x_313 : bool = u_xlatb29;
      if (x_313) {
        let x_318 : f32 = u_xlat34;
        x_315 = -(x_318);
      } else {
        let x_321 : f32 = u_xlat34;
        x_315 = x_321;
      }
      let x_322 : f32 = x_315;
      u_xlat29 = x_322;
      let x_323 : f32 = u_xlat25;
      let x_324 : f32 = u_xlat29;
      u_xlat29 = ((x_323 * x_324) + -1.0f);
      let x_327 : vec4<f32> = u_xlat6;
      let x_329 : f32 = u_xlat29;
      let x_332 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_327.x, x_327.y) * vec2<f32>(x_329, x_329)) + x_332);
    }
    let x_334 : vec2<f32> = u_xlat7;
    u_xlat7 = x_334;
    let x_335 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_335, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_339 : vec2<f32> = u_xlat7;
    let x_341 : f32 = x_50.x_RenderViewportScaleFactor;
    let x_343 : vec2<f32> = (x_339 * vec2<f32>(x_341, x_341));
    let x_344 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_343.x, x_343.y, x_344.z, x_344.w);
    let x_351 : vec4<f32> = u_xlat6;
    let x_353 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_351.x, x_351.y), 0.0f);
    u_xlat6 = x_353;
    let x_359 : vec2<f32> = u_xlat2;
    let x_360 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, x_359, 0.0f);
    let x_362 : vec3<f32> = vec3<f32>(x_360.x, x_360.y, x_360.z);
    let x_363 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
    let x_365 : vec4<f32> = u_xlat6;
    let x_366 : vec4<f32> = u_xlat3;
    let x_368 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_365 * x_366) + x_368);
    let x_370 : vec4<f32> = u_xlat3;
    let x_371 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_370 + x_371);
    let x_373 : vec2<f32> = u_xlat9;
    let x_374 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_373 + x_374);

    continuing {
      let x_376 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_376 + 1i);
    }
  }
  let x_378 : vec4<f32> = u_xlat4;
  let x_379 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_378 / x_379);
  let x_381 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = u_xlat1;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.x, x_381.x) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat1;
  let x_392 : f32 = x_50.x_PostExposure;
  let x_394 : f32 = x_50.x_PostExposure;
  let x_396 : f32 = x_50.x_PostExposure;
  let x_398 : f32 = x_50.x_PostExposure;
  let x_399 : vec4<f32> = vec4<f32>(x_392, x_394, x_396, x_398);
  u_xlat0 = (vec4<f32>(x_388.w, x_388.x, x_388.y, x_388.z) * vec4<f32>(x_399.x, x_399.y, x_399.z, x_399.w));
  let x_406 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = ((vec3<f32>(x_406.y, x_406.z, x_406.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat1;
  let x_418 : vec3<f32> = log2(vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat1;
  let x_428 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat1;
  let x_435 : vec3<f32> = clamp(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_436 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat1;
  let x_443 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_445 : vec3<f32> = (vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(x_443.y, x_443.y, x_443.y));
  let x_446 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_450 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat28 = (x_450 * 0.5f);
  let x_452 : vec4<f32> = u_xlat1;
  let x_455 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_458 : f32 = u_xlat28;
  let x_460 : vec3<f32> = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_455.x, x_455.x, x_455.x)) + vec3<f32>(x_458, x_458, x_458));
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_471 : vec4<f32> = u_xlat1;
  let x_473 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec3<f32> = vec3<f32>(x_473.x, x_473.y, x_473.z);
  let x_475 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_475.x, x_474.x, x_474.y, x_474.z);
  let x_480 : f32 = x_50.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_480);
  let x_482 : bool = u_xlatb1;
  if (x_482) {
    let x_485 : vec4<f32> = u_xlat0;
    let x_486 : vec3<f32> = vec3<f32>(x_485.y, x_485.z, x_485.w);
    let x_487 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
    let x_489 : vec4<f32> = u_xlat1;
    let x_493 : vec3<f32> = clamp(vec3<f32>(x_489.x, x_489.y, x_489.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_494 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
    let x_496 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_496.x, x_496.y, x_496.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_506 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_506.y, x_506.z, x_506.w, x_506.x);
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

