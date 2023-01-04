struct PGlobals {
  unity_CameraProjection : mat4x4<f32>,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_AOParams : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_CameraDepthNormalsTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraDepthNormalsTexture : sampler;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlatb18 : vec2<bool>;

var<private> u_xlati18 : vec2<i32>;

var<private> u_xlatb3 : vec2<bool>;

var<private> u_xlatb27 : bool;

var<private> u_xlat27 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlati0 : i32;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlatb14 : vec2<bool>;

var<private> u_xlatb30 : bool;

var<private> u_xlati30 : i32;

var<private> u_xlati14 : i32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati1 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_430 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_13.x, x_13.y, x_14.z);
  let x_16 : vec3<f32> = u_xlat0;
  let x_22 : vec2<f32> = clamp(vec2<f32>(x_16.x, x_16.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_23 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_22.x, x_22.y, x_23.z);
  let x_25 : vec3<f32> = u_xlat0;
  let x_36 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_38 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_36, x_36));
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_38.x, x_38.y, x_39.z);
  let x_52 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = textureSample(x_CameraDepthNormalsTexture, sampler_CameraDepthNormalsTexture, vec2<f32>(x_52.x, x_52.y));
  u_xlat1 = vec3<f32>(x_54.x, x_54.y, x_54.z);
  let x_56 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_56 * vec3<f32>(3.555399895f, 3.555399895f, 0.0f)) + vec3<f32>(-1.777699947f, -1.777699947f, 1.0f));
  let x_65 : vec3<f32> = u_xlat1;
  let x_66 : vec3<f32> = u_xlat1;
  u_xlat18.x = dot(x_65, x_66);
  let x_74 : f32 = u_xlat18.x;
  u_xlat18.x = (2.0f / x_74);
  let x_78 : vec3<f32> = u_xlat1;
  let x_80 : vec2<f32> = u_xlat18;
  let x_82 : vec2<f32> = (vec2<f32>(x_78.x, x_78.y) * vec2<f32>(x_80.x, x_80.x));
  let x_83 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_82.x, x_82.y, x_83.z);
  let x_86 : f32 = u_xlat18.x;
  u_xlat10.z = (x_86 + -1.0f);
  let x_92 : vec3<f32> = u_xlat10;
  u_xlat2 = (x_92 * vec3<f32>(1.0f, 1.0f, -1.0f));
  let x_100 : vec3<f32> = u_xlat0;
  let x_102 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_100.x, x_100.y), 0.0f);
  u_xlat0.x = x_102.x;
  let x_109 : f32 = x_31.unity_OrthoParams.w;
  u_xlat9 = (-(x_109) + 1.0f);
  let x_113 : f32 = u_xlat0.x;
  let x_116 : f32 = x_31.x_ZBufferParams.x;
  u_xlat0.x = (x_113 * x_116);
  let x_120 : f32 = x_31.unity_OrthoParams.w;
  let x_123 : f32 = u_xlat0.x;
  u_xlat18.x = ((-(x_120) * x_123) + 1.0f);
  let x_127 : f32 = u_xlat9;
  let x_129 : f32 = u_xlat0.x;
  let x_133 : f32 = x_31.x_ZBufferParams.y;
  u_xlat0.x = ((x_127 * x_129) + x_133);
  let x_137 : f32 = u_xlat18.x;
  let x_139 : f32 = u_xlat0.x;
  u_xlat0.x = (x_137 / x_139);
  let x_146 : vec2<f32> = vs_TEXCOORD0;
  let x_150 : vec4<bool> = (vec4<f32>(x_146.x, x_146.y, x_146.x, x_146.y) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb18 = vec2<bool>(x_150.x, x_150.y);
  let x_157 : bool = u_xlatb18.y;
  let x_162 : bool = u_xlatb18.x;
  u_xlati18.x = bitcast<i32>(((select(0u, 1u, x_157) * 4294967295u) | (select(0u, 1u, x_162) * 4294967295u)));
  let x_171 : vec2<f32> = vs_TEXCOORD0;
  let x_173 : vec4<bool> = (vec4<f32>(1.0f, 1.0f, 0.0f, 0.0f) < vec4<f32>(x_171.x, x_171.y, x_171.x, x_171.x));
  u_xlatb3 = vec2<bool>(x_173.x, x_173.y);
  let x_176 : bool = u_xlatb3.y;
  let x_180 : bool = u_xlatb3.x;
  u_xlati18.y = bitcast<i32>(((select(0u, 1u, x_176) * 4294967295u) | (select(0u, 1u, x_180) * 4294967295u)));
  let x_186 : vec2<i32> = u_xlati18;
  u_xlati18 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_186) & vec2<u32>(1u, 1u)));
  let x_193 : i32 = u_xlati18.y;
  let x_195 : i32 = u_xlati18.x;
  u_xlati18.x = (x_193 + x_195);
  let x_199 : i32 = u_xlati18.x;
  u_xlat18.x = f32(x_199);
  let x_205 : f32 = u_xlat0.x;
  u_xlatb27 = (0.00001f >= x_205);
  let x_208 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_208);
  let x_210 : f32 = u_xlat27;
  let x_212 : f32 = u_xlat18.x;
  u_xlat18.x = (x_210 + x_212);
  let x_216 : f32 = u_xlat18.x;
  u_xlat18.x = (x_216 * 100000000.0f);
  let x_222 : f32 = u_xlat0.x;
  let x_225 : f32 = x_31.x_ProjectionParams.z;
  let x_228 : f32 = u_xlat18.x;
  u_xlat3.z = ((x_222 * x_225) + x_228);
  let x_231 : vec2<f32> = vs_TEXCOORD0;
  let x_235 : vec2<f32> = ((x_231 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_236 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_235.x, x_236.y, x_235.y);
  let x_238 : vec3<f32> = u_xlat0;
  let x_243 : vec4<f32> = x_31.unity_CameraProjection[2i];
  let x_246 : vec2<f32> = (vec2<f32>(x_238.x, x_238.z) + -(vec2<f32>(x_243.x, x_243.y)));
  let x_247 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_246.x, x_247.y, x_246.y);
  let x_251 : f32 = x_31.unity_CameraProjection[0i].x;
  u_xlat4.x = x_251;
  let x_254 : f32 = x_31.unity_CameraProjection[1i].y;
  u_xlat4.y = x_254;
  let x_256 : vec3<f32> = u_xlat0;
  let x_258 : vec2<f32> = u_xlat4;
  let x_259 : vec2<f32> = (vec2<f32>(x_256.x, x_256.z) / x_258);
  let x_260 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_259.x, x_260.y, x_259.y);
  let x_263 : f32 = u_xlat3.z;
  u_xlat27 = (-(x_263) + 1.0f);
  let x_267 : f32 = x_31.unity_OrthoParams.w;
  let x_268 : f32 = u_xlat27;
  let x_271 : f32 = u_xlat3.z;
  u_xlat27 = ((x_267 * x_268) + x_271);
  let x_273 : f32 = u_xlat27;
  let x_275 : vec3<f32> = u_xlat0;
  let x_277 : vec2<f32> = (vec2<f32>(x_273, x_273) * vec2<f32>(x_275.x, x_275.z));
  let x_278 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_277.x, x_277.y, x_278.z);
  let x_283 : f32 = x_31.x_AOParams.w;
  u_xlati0 = i32(x_283);
  let x_285 : vec2<f32> = vs_TEXCOORD0;
  let x_287 : vec4<f32> = x_31.x_AOParams;
  u_xlat18 = (x_285 * vec2<f32>(x_287.z, x_287.z));
  let x_290 : vec2<f32> = u_xlat18;
  let x_293 : vec4<f32> = x_31.x_ScreenParams;
  u_xlat18 = (x_290 * vec2<f32>(x_293.x, x_293.y));
  let x_296 : vec2<f32> = u_xlat18;
  u_xlat18 = floor(x_296);
  let x_301 : vec2<f32> = u_xlat18;
  u_xlat18.x = dot(vec2<f32>(0.067110561f, 0.00583715f), x_301);
  let x_305 : f32 = u_xlat18.x;
  u_xlat18.x = fract(x_305);
  let x_309 : f32 = u_xlat18.x;
  u_xlat18.x = (x_309 * 52.982917786f);
  let x_314 : f32 = u_xlat18.x;
  u_xlat18.x = fract(x_314);
  u_xlat5.x = 12.989800453f;
  u_xlat27 = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_327 : i32 = u_xlati_loop_1;
    let x_328 : i32 = u_xlati0;
    if ((x_327 < x_328)) {
    } else {
      break;
    }
    let x_331 : i32 = u_xlati_loop_1;
    u_xlat29 = f32(x_331);
    let x_335 : f32 = vs_TEXCOORD0.x;
    let x_338 : f32 = u_xlat29;
    u_xlat5.y = ((x_335 * 1.00000001e-10f) + x_338);
    let x_343 : f32 = u_xlat5.y;
    u_xlat30 = (x_343 * 78.233001709f);
    let x_346 : f32 = u_xlat30;
    u_xlat30 = sin(x_346);
    let x_348 : f32 = u_xlat30;
    u_xlat30 = (x_348 * 43758.546875f);
    let x_351 : f32 = u_xlat30;
    u_xlat30 = fract(x_351);
    let x_354 : f32 = u_xlat18.x;
    let x_355 : f32 = u_xlat30;
    u_xlat30 = (x_354 + x_355);
    let x_357 : f32 = u_xlat30;
    u_xlat30 = fract(x_357);
    let x_360 : f32 = u_xlat30;
    u_xlat6.z = ((x_360 * 2.0f) + -1.0f);
    let x_364 : vec2<f32> = u_xlat5;
    u_xlat30 = dot(x_364, vec2<f32>(1.0f, 78.233001709f));
    let x_367 : f32 = u_xlat30;
    u_xlat30 = sin(x_367);
    let x_369 : f32 = u_xlat30;
    u_xlat30 = (x_369 * 43758.546875f);
    let x_371 : f32 = u_xlat30;
    u_xlat30 = fract(x_371);
    let x_374 : f32 = u_xlat18.x;
    let x_375 : f32 = u_xlat30;
    u_xlat30 = (x_374 + x_375);
    let x_377 : f32 = u_xlat30;
    u_xlat30 = (x_377 * 6.283185482f);
    let x_381 : f32 = u_xlat30;
    u_xlat7 = sin(x_381);
    let x_384 : f32 = u_xlat30;
    u_xlat8.x = cos(x_384);
    let x_388 : f32 = u_xlat6.z;
    let x_391 : f32 = u_xlat6.z;
    u_xlat30 = ((-(x_388) * x_391) + 1.0f);
    let x_394 : f32 = u_xlat30;
    u_xlat30 = sqrt(x_394);
    let x_396 : f32 = u_xlat7;
    u_xlat8.y = x_396;
    let x_398 : f32 = u_xlat30;
    let x_400 : vec2<f32> = u_xlat8;
    let x_401 : vec2<f32> = (vec2<f32>(x_398, x_398) * x_400);
    let x_402 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_401.x, x_401.y, x_402.z);
    let x_404 : f32 = u_xlat29;
    u_xlat29 = (x_404 + 1.0f);
    let x_406 : f32 = u_xlat29;
    let x_408 : f32 = x_31.x_AOParams.w;
    u_xlat29 = (x_406 / x_408);
    let x_410 : f32 = u_xlat29;
    u_xlat29 = sqrt(x_410);
    let x_412 : f32 = u_xlat29;
    let x_414 : f32 = x_31.x_AOParams.y;
    u_xlat29 = (x_412 * x_414);
    let x_417 : f32 = u_xlat29;
    let x_419 : vec3<f32> = u_xlat6;
    u_xlat14 = (vec3<f32>(x_417, x_417, x_417) * x_419);
    let x_421 : vec3<f32> = u_xlat2;
    let x_423 : vec3<f32> = u_xlat14;
    u_xlat29 = dot(-(x_421), x_423);
    let x_426 : f32 = u_xlat29;
    u_xlatb29 = (x_426 >= 0.0f);
    let x_428 : bool = u_xlatb29;
    if (x_428) {
      let x_433 : vec3<f32> = u_xlat14;
      x_430 = -(x_433);
    } else {
      let x_436 : vec3<f32> = u_xlat14;
      x_430 = x_436;
    }
    let x_437 : vec3<f32> = x_430;
    u_xlat14 = x_437;
    let x_438 : vec3<f32> = u_xlat3;
    let x_439 : vec3<f32> = u_xlat14;
    u_xlat14 = (x_438 + x_439);
    let x_442 : vec3<f32> = u_xlat14;
    let x_445 : vec4<f32> = x_31.unity_CameraProjection[1i];
    u_xlat22 = (vec2<f32>(x_442.y, x_442.y) * vec2<f32>(x_445.x, x_445.y));
    let x_449 : vec4<f32> = x_31.unity_CameraProjection[0i];
    let x_451 : vec3<f32> = u_xlat14;
    let x_454 : vec2<f32> = u_xlat22;
    u_xlat22 = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_451.x, x_451.x)) + x_454);
    let x_457 : vec4<f32> = x_31.unity_CameraProjection[2i];
    let x_459 : vec3<f32> = u_xlat14;
    let x_462 : vec2<f32> = u_xlat22;
    u_xlat22 = ((vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_459.z, x_459.z)) + x_462);
    let x_465 : f32 = u_xlat14.z;
    u_xlat29 = (-(x_465) + 1.0f);
    let x_469 : f32 = x_31.unity_OrthoParams.w;
    let x_470 : f32 = u_xlat29;
    let x_473 : f32 = u_xlat14.z;
    u_xlat29 = ((x_469 * x_470) + x_473);
    let x_475 : vec2<f32> = u_xlat22;
    let x_476 : f32 = u_xlat29;
    u_xlat22 = (x_475 / vec2<f32>(x_476, x_476));
    let x_479 : vec2<f32> = u_xlat22;
    u_xlat22 = (x_479 + vec2<f32>(1.0f, 1.0f));
    let x_482 : vec2<f32> = u_xlat22;
    let x_485 : vec2<f32> = (x_482 * vec2<f32>(0.5f, 0.5f));
    let x_486 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_485.x, x_485.y, x_486.z);
    let x_488 : vec3<f32> = u_xlat14;
    let x_492 : vec2<f32> = clamp(vec2<f32>(x_488.x, x_488.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_493 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_492.x, x_492.y, x_493.z);
    let x_495 : vec3<f32> = u_xlat14;
    let x_498 : f32 = x_31.x_RenderViewportScaleFactor;
    let x_500 : vec2<f32> = (vec2<f32>(x_495.x, x_495.y) * vec2<f32>(x_498, x_498));
    let x_501 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_500.x, x_500.y, x_501.z);
    let x_506 : vec3<f32> = u_xlat14;
    let x_508 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_506.x, x_506.y), 0.0f);
    u_xlat29 = x_508.x;
    let x_510 : f32 = u_xlat29;
    let x_512 : f32 = x_31.x_ZBufferParams.x;
    u_xlat29 = (x_510 * x_512);
    let x_515 : f32 = x_31.unity_OrthoParams.w;
    let x_517 : f32 = u_xlat29;
    u_xlat30 = ((-(x_515) * x_517) + 1.0f);
    let x_520 : f32 = u_xlat9;
    let x_521 : f32 = u_xlat29;
    let x_524 : f32 = x_31.x_ZBufferParams.y;
    u_xlat29 = ((x_520 * x_521) + x_524);
    let x_526 : f32 = u_xlat30;
    let x_527 : f32 = u_xlat29;
    u_xlat29 = (x_526 / x_527);
    let x_530 : vec2<f32> = u_xlat22;
    let x_532 : vec4<bool> = (vec4<f32>(x_530.x, x_530.y, x_530.x, x_530.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlatb14 = vec2<bool>(x_532.x, x_532.y);
    let x_536 : bool = u_xlatb14.y;
    let x_538 : bool = u_xlatb14.x;
    u_xlatb30 = (x_536 | x_538);
    let x_541 : bool = u_xlatb30;
    u_xlati30 = select(0i, 1i, x_541);
    let x_544 : vec2<f32> = u_xlat22;
    let x_546 : vec4<bool> = (vec4<f32>(2.0f, 2.0f, 0.0f, 0.0f) < vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.x));
    u_xlatb14 = vec2<bool>(x_546.x, x_546.y);
    let x_549 : bool = u_xlatb14.y;
    let x_551 : bool = u_xlatb14.x;
    u_xlatb14.x = (x_549 | x_551);
    let x_556 : bool = u_xlatb14.x;
    u_xlati14 = select(0i, 1i, x_556);
    let x_558 : i32 = u_xlati30;
    let x_559 : i32 = u_xlati14;
    u_xlati30 = (x_558 + x_559);
    let x_561 : i32 = u_xlati30;
    u_xlat30 = f32(x_561);
    let x_563 : f32 = u_xlat29;
    u_xlatb14.x = (0.00001f >= x_563);
    let x_567 : bool = u_xlatb14.x;
    u_xlat14.x = select(0.0f, 1.0f, x_567);
    let x_570 : f32 = u_xlat30;
    let x_572 : f32 = u_xlat14.x;
    u_xlat30 = (x_570 + x_572);
    let x_574 : f32 = u_xlat30;
    u_xlat30 = (x_574 * 100000000.0f);
    let x_576 : f32 = u_xlat29;
    let x_578 : f32 = x_31.x_ProjectionParams.z;
    let x_580 : f32 = u_xlat30;
    u_xlat6.z = ((x_576 * x_578) + x_580);
    let x_583 : vec2<f32> = u_xlat22;
    let x_585 : vec4<f32> = x_31.unity_CameraProjection[2i];
    u_xlat22 = (x_583 + -(vec2<f32>(x_585.x, x_585.y)));
    let x_589 : vec2<f32> = u_xlat22;
    u_xlat22 = (x_589 + vec2<f32>(-1.0f, -1.0f));
    let x_591 : vec2<f32> = u_xlat22;
    let x_592 : vec2<f32> = u_xlat4;
    u_xlat22 = (x_591 / x_592);
    let x_595 : f32 = u_xlat6.z;
    u_xlat29 = (-(x_595) + 1.0f);
    let x_599 : f32 = x_31.unity_OrthoParams.w;
    let x_600 : f32 = u_xlat29;
    let x_603 : f32 = u_xlat6.z;
    u_xlat29 = ((x_599 * x_600) + x_603);
    let x_605 : f32 = u_xlat29;
    let x_607 : vec2<f32> = u_xlat22;
    let x_608 : vec2<f32> = (vec2<f32>(x_605, x_605) * x_607);
    let x_609 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_608.x, x_608.y, x_609.z);
    let x_611 : vec3<f32> = u_xlat3;
    let x_613 : vec3<f32> = u_xlat6;
    u_xlat14 = (-(x_611) + x_613);
    let x_615 : vec3<f32> = u_xlat14;
    let x_616 : vec3<f32> = u_xlat2;
    u_xlat29 = dot(x_615, x_616);
    let x_619 : f32 = u_xlat3.z;
    let x_623 : f32 = u_xlat29;
    u_xlat29 = ((-(x_619) * 0.002f) + x_623);
    let x_625 : f32 = u_xlat29;
    u_xlat29 = max(x_625, 0.0f);
    let x_627 : vec3<f32> = u_xlat14;
    let x_628 : vec3<f32> = u_xlat14;
    u_xlat30 = dot(x_627, x_628);
    let x_630 : f32 = u_xlat30;
    u_xlat30 = (x_630 + 0.0001f);
    let x_633 : f32 = u_xlat29;
    let x_634 : f32 = u_xlat30;
    u_xlat29 = (x_633 / x_634);
    let x_636 : f32 = u_xlat27;
    let x_637 : f32 = u_xlat29;
    u_xlat27 = (x_636 + x_637);

    continuing {
      let x_639 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_639 + 1i);
    }
  }
  let x_641 : f32 = u_xlat27;
  let x_643 : f32 = x_31.x_AOParams.y;
  u_xlat0.x = (x_641 * x_643);
  let x_647 : f32 = u_xlat0.x;
  let x_649 : f32 = x_31.x_AOParams.x;
  u_xlat0.x = (x_647 * x_649);
  let x_653 : f32 = u_xlat0.x;
  let x_655 : f32 = x_31.x_AOParams.w;
  u_xlat0.x = (x_653 / x_655);
  let x_659 : f32 = u_xlat0.x;
  u_xlat0.x = max(abs(x_659), 1.1920929e-07f);
  let x_665 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_665);
  let x_669 : f32 = u_xlat0.x;
  u_xlat0.x = (x_669 * 0.600000024f);
  let x_676 : f32 = u_xlat0.x;
  SV_Target0.x = exp2(x_676);
  let x_680 : vec3<f32> = u_xlat10;
  let x_685 : vec3<f32> = ((x_680 * vec3<f32>(0.5f, 0.5f, -0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_686 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_686.x, x_685.x, x_685.y, x_685.z);
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

