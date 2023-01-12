struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_58 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(6) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati30 : i32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat22 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlat8 : f32;
  var u_xlat9 : f32;
  var u_xlat37 : f32;
  var u_xlat18 : f32;
  var u_xlat28 : f32;
  var u_xlat38 : f32;
  var u_xlatb9 : bool;
  var u_xlatb36 : bool;
  var x_325 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_458 : f32;
  var x_470 : f32;
  var x_482 : f32;
  var u_xlat20 : vec2<f32>;
  var x_624 : f32;
  var x_636 : f32;
  var x_648 : f32;
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
  let x_106 : i32 = u_xlati30;
  u_xlati30 = min(x_106, 16i);
  let x_109 : i32 = u_xlati30;
  u_xlat1.x = f32(x_109);
  let x_112 : vec3<f32> = u_xlat10;
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec2<f32> = (-(vec2<f32>(x_112.x, x_112.y)) / vec2<f32>(x_115.x, x_115.x));
  let x_118 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_117.x, x_117.y, x_118.z);
  let x_127 : f32 = x_58.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_127);
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
  let x_150 : vec2<f32> = vs_TEXCOORD0;
  u_xlat21 = x_150;
  u_xlati_loop_1 = 0i;
  loop {
    let x_158 : i32 = u_xlati_loop_1;
    let x_159 : i32 = u_xlati30;
    if ((x_158 < x_159)) {
    } else {
      break;
    }
    let x_162 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_162);
    let x_166 : f32 = u_xlat16.x;
    u_xlat16.x = (x_166 + 0.5f);
    let x_170 : f32 = u_xlat16.x;
    let x_172 : f32 = u_xlat1.x;
    u_xlat2.x = (x_170 / x_172);
    let x_175 : vec2<f32> = u_xlat21;
    u_xlat16 = (x_175 + vec2<f32>(-0.5f, -0.5f));
    let x_180 : vec2<f32> = u_xlat16;
    let x_182 : vec4<f32> = x_58.x_Distortion_Amount;
    let x_185 : vec2<f32> = ((x_180 * vec2<f32>(x_182.z, x_182.z)) + vec2<f32>(0.5f, 0.5f));
    let x_186 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
    let x_188 : vec2<f32> = u_xlat16;
    let x_190 : vec4<f32> = x_58.x_Distortion_Amount;
    let x_195 : vec4<f32> = x_58.x_Distortion_CenterScale;
    u_xlat16 = ((x_188 * vec2<f32>(x_190.z, x_190.z)) + -(vec2<f32>(x_195.x, x_195.y)));
    let x_199 : vec2<f32> = u_xlat16;
    let x_201 : vec4<f32> = x_58.x_Distortion_CenterScale;
    u_xlat16 = (x_199 * vec2<f32>(x_201.z, x_201.w));
    let x_205 : vec2<f32> = u_xlat16;
    let x_206 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_205, x_206);
    let x_208 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_208);
    let x_210 : bool = u_xlatb11;
    if (x_210) {
      let x_214 : f32 = u_xlat36;
      let x_217 : vec4<f32> = x_58.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_214, x_214) * vec2<f32>(x_217.x, x_217.y));
      let x_222 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_222);
      let x_226 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_226);
      let x_228 : f32 = u_xlat8;
      let x_229 : f32 = u_xlat9;
      u_xlat27.x = (x_228 / x_229);
      let x_234 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_234);
      let x_237 : f32 = u_xlat27.x;
      let x_238 : f32 = u_xlat37;
      u_xlat27.x = ((x_237 * x_238) + -1.0f);
      let x_242 : vec2<f32> = u_xlat16;
      let x_243 : vec2<f32> = u_xlat27;
      let x_246 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_242 * vec2<f32>(x_243.x, x_243.x)) + vec2<f32>(x_246.x, x_246.y));
    } else {
      let x_250 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_250);
      let x_252 : f32 = u_xlat8;
      let x_254 : f32 = x_58.x_Distortion_Amount.x;
      u_xlat8 = (x_252 * x_254);
      let x_256 : f32 = u_xlat36;
      let x_258 : f32 = x_58.x_Distortion_Amount.y;
      u_xlat36 = (x_256 * x_258);
      let x_261 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_261), 1.0f);
      let x_265 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_265), 1.0f);
      let x_268 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_268);
      let x_270 : f32 = u_xlat28;
      let x_271 : f32 = u_xlat18;
      u_xlat18 = (x_270 * x_271);
      let x_273 : f32 = u_xlat18;
      let x_274 : f32 = u_xlat18;
      u_xlat28 = (x_273 * x_274);
      let x_277 : f32 = u_xlat28;
      u_xlat38 = ((x_277 * 0.0208351f) + -0.085133001f);
      let x_282 : f32 = u_xlat28;
      let x_283 : f32 = u_xlat38;
      u_xlat38 = ((x_282 * x_283) + 0.180141002f);
      let x_287 : f32 = u_xlat28;
      let x_288 : f32 = u_xlat38;
      u_xlat38 = ((x_287 * x_288) + -0.330299497f);
      let x_292 : f32 = u_xlat28;
      let x_293 : f32 = u_xlat38;
      u_xlat28 = ((x_292 * x_293) + 0.999866009f);
      let x_297 : f32 = u_xlat28;
      let x_298 : f32 = u_xlat18;
      u_xlat38 = (x_297 * x_298);
      let x_301 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_301));
      let x_304 : f32 = u_xlat38;
      u_xlat38 = ((x_304 * -2.0f) + 1.570796371f);
      let x_309 : bool = u_xlatb9;
      let x_310 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_310, x_309);
      let x_312 : f32 = u_xlat18;
      let x_313 : f32 = u_xlat28;
      let x_315 : f32 = u_xlat38;
      u_xlat18 = ((x_312 * x_313) + x_315);
      let x_317 : f32 = u_xlat36;
      u_xlat36 = min(x_317, 1.0f);
      let x_320 : f32 = u_xlat36;
      let x_321 : f32 = u_xlat36;
      u_xlatb36 = (x_320 < -(x_321));
      let x_324 : bool = u_xlatb36;
      if (x_324) {
        let x_328 : f32 = u_xlat18;
        x_325 = -(x_328);
      } else {
        let x_331 : f32 = u_xlat18;
        x_325 = x_331;
      }
      let x_332 : f32 = x_325;
      u_xlat36 = x_332;
      let x_333 : f32 = u_xlat8;
      let x_334 : f32 = u_xlat36;
      u_xlat36 = ((x_333 * x_334) + -1.0f);
      let x_337 : vec2<f32> = u_xlat16;
      let x_338 : f32 = u_xlat36;
      let x_341 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_337 * vec2<f32>(x_338, x_338)) + vec2<f32>(x_341.x, x_341.y));
    }
    let x_344 : vec2<f32> = u_xlat27;
    u_xlat27 = x_344;
    let x_345 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_345, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_349 : vec2<f32> = u_xlat27;
    let x_351 : f32 = x_58.x_RenderViewportScaleFactor;
    u_xlat16 = (x_349 * vec2<f32>(x_351, x_351));
    let x_359 : vec2<f32> = u_xlat16;
    let x_360 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_359, 0.0f);
    u_xlat7 = x_360;
    let x_366 : vec3<f32> = u_xlat2;
    let x_368 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_366.x, x_366.y), 0.0f);
    let x_369 : vec3<f32> = vec3<f32>(x_368.x, x_368.y, x_368.z);
    let x_370 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
    let x_372 : vec4<f32> = u_xlat7;
    let x_373 : vec4<f32> = u_xlat3;
    let x_375 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_372 * x_373) + x_375);
    let x_377 : vec4<f32> = u_xlat3;
    let x_378 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_377 + x_378);
    let x_380 : vec3<f32> = u_xlat10;
    let x_382 : vec2<f32> = u_xlat21;
    u_xlat21 = (vec2<f32>(x_380.x, x_380.y) + x_382);

    continuing {
      let x_384 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_384 + 1i);
    }
  }
  let x_386 : vec4<f32> = u_xlat4;
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_386 / x_387);
  let x_389 : vec3<f32> = u_xlat0;
  let x_391 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_389.x, x_389.x, x_389.x) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_394, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_399 : f32 = u_xlat1.w;
  u_xlat1.w = x_399;
  let x_402 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_402, 0.0f, 1.0f);
  let x_405 : vec3<f32> = u_xlat0;
  let x_409 : vec3<f32> = (vec3<f32>(x_405.z, x_405.x, x_405.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_410 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : vec3<f32> = u_xlat0;
  let x_416 : vec3<f32> = max(vec3<f32>(x_412.z, x_412.x, x_412.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat4;
  let x_421 : vec3<f32> = log2(vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat4;
  let x_428 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat4;
  let x_433 : vec3<f32> = exp2(vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat4;
  let x_443 : vec3<f32> = ((vec3<f32>(x_436.x, x_436.y, x_436.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_444 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_451 : vec3<f32> = u_xlat0;
  let x_454 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_451.z, x_451.x, x_451.y, x_451.z));
  u_xlatb0 = vec3<bool>(x_454.x, x_454.y, x_454.z);
  let x_457 : bool = u_xlatb0.x;
  if (x_457) {
    let x_462 : f32 = u_xlat3.x;
    x_458 = x_462;
  } else {
    let x_465 : f32 = u_xlat4.x;
    x_458 = x_465;
  }
  let x_466 : f32 = x_458;
  u_xlat0.x = x_466;
  let x_469 : bool = u_xlatb0.y;
  if (x_469) {
    let x_474 : f32 = u_xlat3.y;
    x_470 = x_474;
  } else {
    let x_477 : f32 = u_xlat4.y;
    x_470 = x_477;
  }
  let x_478 : f32 = x_470;
  u_xlat0.y = x_478;
  let x_481 : bool = u_xlatb0.z;
  if (x_481) {
    let x_486 : f32 = u_xlat3.z;
    x_482 = x_486;
  } else {
    let x_489 : f32 = u_xlat4.z;
    x_482 = x_489;
  }
  let x_490 : f32 = x_482;
  u_xlat0.z = x_490;
  let x_492 : vec3<f32> = u_xlat0;
  let x_496 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat10 = (x_492 * vec3<f32>(x_496.z, x_496.z, x_496.z));
  let x_500 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_500);
  let x_504 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_506 : vec2<f32> = (vec2<f32>(x_504.x, x_504.y) * vec2<f32>(0.5f, 0.5f));
  let x_507 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_506.x, x_506.y, x_507.z);
  let x_509 : vec3<f32> = u_xlat10;
  let x_512 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_515 : vec3<f32> = u_xlat2;
  let x_517 : vec2<f32> = ((vec2<f32>(x_509.y, x_509.z) * vec2<f32>(x_512.x, x_512.y)) + vec2<f32>(x_515.x, x_515.y));
  let x_518 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_518.x, x_517.x, x_517.y, x_518.w);
  let x_521 : f32 = u_xlat10.x;
  let x_523 : f32 = x_58.x_Lut2D_Params.y;
  let x_526 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_521 * x_523) + x_526);
  let x_534 : vec4<f32> = u_xlat3;
  let x_536 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_534.x, x_534.z));
  let x_537 : vec3<f32> = vec3<f32>(x_536.x, x_536.y, x_536.z);
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_541 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat22.x = x_541;
  let x_544 : vec2<f32> = u_xlat22;
  let x_545 : vec4<f32> = u_xlat3;
  u_xlat20 = (x_544 + vec2<f32>(x_545.x, x_545.z));
  let x_551 : vec2<f32> = u_xlat20;
  let x_552 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_551);
  u_xlat2 = vec3<f32>(x_552.x, x_552.y, x_552.z);
  let x_555 : f32 = u_xlat0.x;
  let x_557 : f32 = x_58.x_Lut2D_Params.z;
  let x_560 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_555 * x_557) + -(x_560));
  let x_564 : vec4<f32> = u_xlat4;
  let x_567 : vec3<f32> = u_xlat2;
  u_xlat10 = (-(vec3<f32>(x_564.x, x_564.y, x_564.z)) + x_567);
  let x_569 : vec3<f32> = u_xlat0;
  let x_571 : vec3<f32> = u_xlat10;
  let x_573 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_569.x, x_569.x, x_569.x) * x_571) + vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_576 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_580 : vec3<f32> = u_xlat0;
  let x_583 : vec3<f32> = (x_580 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_584 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat3;
  let x_590 : vec3<f32> = (vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_591 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec4<f32> = u_xlat3;
  let x_596 : vec3<f32> = max(abs(vec3<f32>(x_593.x, x_593.y, x_593.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_597 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec4<f32> = u_xlat3;
  let x_601 : vec3<f32> = log2(vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_602 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat3;
  let x_608 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_609 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat3;
  let x_613 : vec3<f32> = exp2(vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_618 : vec3<f32> = u_xlat0;
  let x_620 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_618.x, x_618.y, x_618.z, x_618.x));
  u_xlatb0 = vec3<bool>(x_620.x, x_620.y, x_620.z);
  let x_623 : bool = u_xlatb0.x;
  if (x_623) {
    let x_628 : f32 = u_xlat2.x;
    x_624 = x_628;
  } else {
    let x_631 : f32 = u_xlat3.x;
    x_624 = x_631;
  }
  let x_632 : f32 = x_624;
  u_xlat1.x = x_632;
  let x_635 : bool = u_xlatb0.y;
  if (x_635) {
    let x_640 : f32 = u_xlat2.y;
    x_636 = x_640;
  } else {
    let x_643 : f32 = u_xlat3.y;
    x_636 = x_643;
  }
  let x_644 : f32 = x_636;
  u_xlat1.y = x_644;
  let x_647 : bool = u_xlatb0.z;
  if (x_647) {
    let x_652 : f32 = u_xlat2.z;
    x_648 = x_652;
  } else {
    let x_655 : f32 = u_xlat3.z;
    x_648 = x_655;
  }
  let x_656 : f32 = x_648;
  u_xlat1.z = x_656;
  let x_660 : f32 = x_58.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_660);
  let x_664 : bool = u_xlatb0.x;
  if (x_664) {
    let x_667 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_667.x, x_667.y, x_667.z);
    let x_669 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_669, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_673 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_673, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_682 : vec4<f32> = u_xlat1;
  SV_Target0 = x_682;
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

