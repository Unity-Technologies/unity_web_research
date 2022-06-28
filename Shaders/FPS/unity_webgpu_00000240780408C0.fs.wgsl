struct PGlobals {
  unity_CameraProjection : mat4x4<f32>,
  unity_WorldToCamera : mat4x4<f32>,
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

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlatb16 : vec2<bool>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat8 : f32;

var<private> u_xlati16 : vec2<i32>;

var<private> u_xlatb2 : vec2<bool>;

var<private> u_xlatb24 : bool;

var<private> u_xlat24 : f32;

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlati0 : i32;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb26 : bool;

var<private> u_xlatb12 : vec2<bool>;

var<private> u_xlati12 : vec2<i32>;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati25 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_483 : vec3<f32>;
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
  let x_53 : vec3<f32> = u_xlat0;
  let x_55 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_53.x, x_53.y));
  let x_56 : vec3<f32> = vec3<f32>(x_55.x, x_55.y, x_55.z);
  let x_57 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_61 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(vec3<f32>(x_61.x, x_61.y, x_61.z), vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_75 : f32 = u_xlat16.x;
  u_xlatb16.x = !((x_75 == 0.0f));
  let x_80 : bool = u_xlatb16.x;
  u_xlat16.x = select(-0.0f, -1.0f, x_80);
  let x_85 : vec4<f32> = u_xlat1;
  let x_90 : vec2<f32> = u_xlat16;
  let x_92 : vec3<f32> = ((vec3<f32>(x_85.x, x_85.y, x_85.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(x_90.x, x_90.x, x_90.x));
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : vec4<f32> = u_xlat1;
  let x_101 : vec4<f32> = x_31.unity_WorldToCamera[1i];
  u_xlat2 = (vec3<f32>(x_96.y, x_96.y, x_96.y) * vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_106 : vec4<f32> = x_31.unity_WorldToCamera[0i];
  let x_108 : vec4<f32> = u_xlat1;
  let x_111 : vec3<f32> = u_xlat2;
  let x_112 : vec3<f32> = ((vec3<f32>(x_106.x, x_106.y, x_106.z) * vec3<f32>(x_108.x, x_108.x, x_108.x)) + x_111);
  let x_113 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_112.z);
  let x_117 : vec4<f32> = x_31.unity_WorldToCamera[2i];
  let x_119 : vec4<f32> = u_xlat1;
  let x_122 : vec4<f32> = u_xlat1;
  let x_124 : vec3<f32> = ((vec3<f32>(x_117.x, x_117.y, x_117.z) * vec3<f32>(x_119.z, x_119.z, x_119.z)) + vec3<f32>(x_122.x, x_122.y, x_122.w));
  let x_125 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_132 : vec3<f32> = u_xlat0;
  let x_134 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_132.x, x_132.y), 0.0f);
  u_xlat0.x = x_134.x;
  let x_141 : f32 = x_31.unity_OrthoParams.w;
  u_xlat8 = (-(x_141) + 1.0f);
  let x_145 : f32 = u_xlat0.x;
  let x_148 : f32 = x_31.x_ZBufferParams.x;
  u_xlat0.x = (x_145 * x_148);
  let x_152 : f32 = x_31.unity_OrthoParams.w;
  let x_155 : f32 = u_xlat0.x;
  u_xlat16.x = ((-(x_152) * x_155) + 1.0f);
  let x_159 : f32 = u_xlat8;
  let x_161 : f32 = u_xlat0.x;
  let x_165 : f32 = x_31.x_ZBufferParams.y;
  u_xlat0.x = ((x_159 * x_161) + x_165);
  let x_169 : f32 = u_xlat16.x;
  let x_171 : f32 = u_xlat0.x;
  u_xlat0.x = (x_169 / x_171);
  let x_174 : vec2<f32> = vs_TEXCOORD0;
  let x_178 : vec4<bool> = (vec4<f32>(x_174.x, x_174.y, x_174.x, x_174.y) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  u_xlatb16 = vec2<bool>(x_178.x, x_178.y);
  let x_184 : bool = u_xlatb16.y;
  let x_189 : bool = u_xlatb16.x;
  u_xlati16.x = bitcast<i32>(((select(0u, 1u, x_184) * 4294967295u) | (select(0u, 1u, x_189) * 4294967295u)));
  let x_198 : vec2<f32> = vs_TEXCOORD0;
  let x_200 : vec4<bool> = (vec4<f32>(1.0f, 1.0f, 0.0f, 0.0f) < vec4<f32>(x_198.x, x_198.y, x_198.x, x_198.x));
  u_xlatb2 = vec2<bool>(x_200.x, x_200.y);
  let x_203 : bool = u_xlatb2.y;
  let x_207 : bool = u_xlatb2.x;
  u_xlati16.y = bitcast<i32>(((select(0u, 1u, x_203) * 4294967295u) | (select(0u, 1u, x_207) * 4294967295u)));
  let x_213 : vec2<i32> = u_xlati16;
  u_xlati16 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_213) & vec2<u32>(1u, 1u)));
  let x_220 : i32 = u_xlati16.y;
  let x_222 : i32 = u_xlati16.x;
  u_xlati16.x = (x_220 + x_222);
  let x_226 : i32 = u_xlati16.x;
  u_xlat16.x = f32(x_226);
  let x_232 : f32 = u_xlat0.x;
  u_xlatb24 = (0.00001f >= x_232);
  let x_235 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_235);
  let x_237 : f32 = u_xlat24;
  let x_239 : f32 = u_xlat16.x;
  u_xlat16.x = (x_237 + x_239);
  let x_243 : f32 = u_xlat16.x;
  u_xlat16.x = (x_243 * 100000000.0f);
  let x_248 : f32 = u_xlat0.x;
  let x_251 : f32 = x_31.x_ProjectionParams.z;
  let x_254 : f32 = u_xlat16.x;
  u_xlat2.z = ((x_248 * x_251) + x_254);
  let x_257 : vec2<f32> = vs_TEXCOORD0;
  let x_261 : vec2<f32> = ((x_257 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_262 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_261.x, x_262.y, x_261.y);
  let x_264 : vec3<f32> = u_xlat0;
  let x_267 : vec4<f32> = x_31.unity_CameraProjection[2i];
  let x_270 : vec2<f32> = (vec2<f32>(x_264.x, x_264.z) + -(vec2<f32>(x_267.x, x_267.y)));
  let x_271 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_270.x, x_271.y, x_270.y);
  let x_275 : f32 = x_31.unity_CameraProjection[0i].x;
  u_xlat3.x = x_275;
  let x_278 : f32 = x_31.unity_CameraProjection[1i].y;
  u_xlat3.y = x_278;
  let x_280 : vec3<f32> = u_xlat0;
  let x_282 : vec2<f32> = u_xlat3;
  let x_283 : vec2<f32> = (vec2<f32>(x_280.x, x_280.z) / x_282);
  let x_284 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_283.x, x_284.y, x_283.y);
  let x_287 : f32 = u_xlat2.z;
  u_xlat24 = (-(x_287) + 1.0f);
  let x_291 : f32 = x_31.unity_OrthoParams.w;
  let x_292 : f32 = u_xlat24;
  let x_295 : f32 = u_xlat2.z;
  u_xlat24 = ((x_291 * x_292) + x_295);
  let x_297 : f32 = u_xlat24;
  let x_299 : vec3<f32> = u_xlat0;
  let x_301 : vec2<f32> = (vec2<f32>(x_297, x_297) * vec2<f32>(x_299.x, x_299.z));
  let x_302 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_301.x, x_301.y, x_302.z);
  let x_307 : f32 = x_31.x_AOParams.w;
  u_xlati0 = i32(x_307);
  let x_309 : vec2<f32> = vs_TEXCOORD0;
  let x_311 : vec4<f32> = x_31.x_AOParams;
  u_xlat16 = (x_309 * vec2<f32>(x_311.z, x_311.z));
  let x_314 : vec2<f32> = u_xlat16;
  let x_317 : vec4<f32> = x_31.x_ScreenParams;
  u_xlat16 = (x_314 * vec2<f32>(x_317.x, x_317.y));
  let x_320 : vec2<f32> = u_xlat16;
  u_xlat16 = floor(x_320);
  let x_325 : vec2<f32> = u_xlat16;
  u_xlat16.x = dot(vec2<f32>(0.067110561f, 0.00583715f), x_325);
  let x_329 : f32 = u_xlat16.x;
  u_xlat16.x = fract(x_329);
  let x_333 : f32 = u_xlat16.x;
  u_xlat16.x = (x_333 * 52.982917786f);
  let x_338 : f32 = u_xlat16.x;
  u_xlat16.x = fract(x_338);
  u_xlat4.x = 12.989800453f;
  u_xlat24 = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_351 : i32 = u_xlati_loop_1;
    let x_352 : i32 = u_xlati0;
    if ((x_351 < x_352)) {
    } else {
      break;
    }
    let x_355 : i32 = u_xlati_loop_1;
    u_xlat26 = f32(x_355);
    let x_359 : f32 = vs_TEXCOORD0.x;
    let x_362 : f32 = u_xlat26;
    u_xlat4.y = ((x_359 * 1.00000001e-10f) + x_362);
    let x_367 : f32 = u_xlat4.y;
    u_xlat19.x = (x_367 * 78.233001709f);
    let x_372 : f32 = u_xlat19.x;
    u_xlat19.x = sin(x_372);
    let x_376 : f32 = u_xlat19.x;
    u_xlat19.x = (x_376 * 43758.546875f);
    let x_381 : f32 = u_xlat19.x;
    u_xlat19.x = fract(x_381);
    let x_385 : f32 = u_xlat16.x;
    let x_387 : f32 = u_xlat19.x;
    u_xlat19.x = (x_385 + x_387);
    let x_391 : f32 = u_xlat19.x;
    u_xlat19.x = fract(x_391);
    let x_396 : f32 = u_xlat19.x;
    u_xlat5.z = ((x_396 * 2.0f) + -1.0f);
    let x_400 : vec2<f32> = u_xlat4;
    u_xlat19.x = dot(x_400, vec2<f32>(1.0f, 78.233001709f));
    let x_405 : f32 = u_xlat19.x;
    u_xlat19.x = sin(x_405);
    let x_409 : f32 = u_xlat19.x;
    u_xlat19.x = (x_409 * 43758.546875f);
    let x_413 : f32 = u_xlat19.x;
    u_xlat19.x = fract(x_413);
    let x_417 : f32 = u_xlat16.x;
    let x_419 : f32 = u_xlat19.x;
    u_xlat19.x = (x_417 + x_419);
    let x_423 : f32 = u_xlat19.x;
    u_xlat19.x = (x_423 * 6.283185482f);
    let x_429 : f32 = u_xlat19.x;
    u_xlat6 = sin(x_429);
    let x_433 : f32 = u_xlat19.x;
    u_xlat7.x = cos(x_433);
    let x_437 : f32 = u_xlat5.z;
    let x_440 : f32 = u_xlat5.z;
    u_xlat19.x = ((-(x_437) * x_440) + 1.0f);
    let x_445 : f32 = u_xlat19.x;
    u_xlat19.x = sqrt(x_445);
    let x_448 : f32 = u_xlat6;
    u_xlat7.y = x_448;
    let x_450 : vec2<f32> = u_xlat19;
    let x_452 : vec2<f32> = u_xlat7;
    let x_453 : vec2<f32> = (vec2<f32>(x_450.x, x_450.x) * x_452);
    let x_454 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_453.x, x_453.y, x_454.z);
    let x_456 : f32 = u_xlat26;
    u_xlat26 = (x_456 + 1.0f);
    let x_458 : f32 = u_xlat26;
    let x_460 : f32 = x_31.x_AOParams.w;
    u_xlat26 = (x_458 / x_460);
    let x_462 : f32 = u_xlat26;
    u_xlat26 = sqrt(x_462);
    let x_464 : f32 = u_xlat26;
    let x_466 : f32 = x_31.x_AOParams.y;
    u_xlat26 = (x_464 * x_466);
    let x_469 : f32 = u_xlat26;
    let x_471 : vec3<f32> = u_xlat5;
    u_xlat12 = (vec3<f32>(x_469, x_469, x_469) * x_471);
    let x_473 : vec4<f32> = u_xlat1;
    let x_476 : vec3<f32> = u_xlat12;
    u_xlat26 = dot(-(vec3<f32>(x_473.x, x_473.y, x_473.z)), x_476);
    let x_479 : f32 = u_xlat26;
    u_xlatb26 = (x_479 >= 0.0f);
    let x_481 : bool = u_xlatb26;
    if (x_481) {
      let x_486 : vec3<f32> = u_xlat12;
      x_483 = -(x_486);
    } else {
      let x_489 : vec3<f32> = u_xlat12;
      x_483 = x_489;
    }
    let x_490 : vec3<f32> = x_483;
    u_xlat12 = x_490;
    let x_491 : vec3<f32> = u_xlat2;
    let x_492 : vec3<f32> = u_xlat12;
    u_xlat12 = (x_491 + x_492);
    let x_494 : vec3<f32> = u_xlat12;
    let x_497 : vec4<f32> = x_31.unity_CameraProjection[1i];
    u_xlat19 = (vec2<f32>(x_494.y, x_494.y) * vec2<f32>(x_497.x, x_497.y));
    let x_501 : vec4<f32> = x_31.unity_CameraProjection[0i];
    let x_503 : vec3<f32> = u_xlat12;
    let x_506 : vec2<f32> = u_xlat19;
    u_xlat19 = ((vec2<f32>(x_501.x, x_501.y) * vec2<f32>(x_503.x, x_503.x)) + x_506);
    let x_509 : vec4<f32> = x_31.unity_CameraProjection[2i];
    let x_511 : vec3<f32> = u_xlat12;
    let x_514 : vec2<f32> = u_xlat19;
    u_xlat19 = ((vec2<f32>(x_509.x, x_509.y) * vec2<f32>(x_511.z, x_511.z)) + x_514);
    let x_517 : f32 = u_xlat12.z;
    u_xlat26 = (-(x_517) + 1.0f);
    let x_521 : f32 = x_31.unity_OrthoParams.w;
    let x_522 : f32 = u_xlat26;
    let x_525 : f32 = u_xlat12.z;
    u_xlat26 = ((x_521 * x_522) + x_525);
    let x_527 : vec2<f32> = u_xlat19;
    let x_528 : f32 = u_xlat26;
    u_xlat19 = (x_527 / vec2<f32>(x_528, x_528));
    let x_531 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_531 + vec2<f32>(1.0f, 1.0f));
    let x_534 : vec2<f32> = u_xlat19;
    let x_537 : vec2<f32> = (x_534 * vec2<f32>(0.5f, 0.5f));
    let x_538 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_537.x, x_537.y, x_538.z);
    let x_540 : vec3<f32> = u_xlat12;
    let x_544 : vec2<f32> = clamp(vec2<f32>(x_540.x, x_540.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_545 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_544.x, x_544.y, x_545.z);
    let x_547 : vec3<f32> = u_xlat12;
    let x_550 : f32 = x_31.x_RenderViewportScaleFactor;
    let x_552 : vec2<f32> = (vec2<f32>(x_547.x, x_547.y) * vec2<f32>(x_550, x_550));
    let x_553 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_552.x, x_552.y, x_553.z);
    let x_558 : vec3<f32> = u_xlat12;
    let x_560 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_558.x, x_558.y), 0.0f);
    u_xlat26 = x_560.x;
    let x_562 : f32 = u_xlat26;
    let x_564 : f32 = x_31.x_ZBufferParams.x;
    u_xlat26 = (x_562 * x_564);
    let x_567 : f32 = x_31.unity_OrthoParams.w;
    let x_569 : f32 = u_xlat26;
    u_xlat12.x = ((-(x_567) * x_569) + 1.0f);
    let x_573 : f32 = u_xlat8;
    let x_574 : f32 = u_xlat26;
    let x_577 : f32 = x_31.x_ZBufferParams.y;
    u_xlat26 = ((x_573 * x_574) + x_577);
    let x_580 : f32 = u_xlat12.x;
    let x_581 : f32 = u_xlat26;
    u_xlat26 = (x_580 / x_581);
    let x_584 : vec2<f32> = u_xlat19;
    let x_586 : vec4<bool> = (vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlatb12 = vec2<bool>(x_586.x, x_586.y);
    let x_590 : bool = u_xlatb12.y;
    let x_594 : bool = u_xlatb12.x;
    u_xlati12.x = bitcast<i32>(((select(0u, 1u, x_590) * 4294967295u) | (select(0u, 1u, x_594) * 4294967295u)));
    let x_602 : vec2<f32> = u_xlat19;
    let x_604 : vec4<bool> = (vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f) < vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y));
    u_xlatb20 = vec2<bool>(x_604.x, x_604.y);
    let x_607 : bool = u_xlatb20.y;
    let x_611 : bool = u_xlatb20.x;
    u_xlati12.y = bitcast<i32>(((select(0u, 1u, x_607) * 4294967295u) | (select(0u, 1u, x_611) * 4294967295u)));
    let x_617 : vec2<i32> = u_xlati12;
    u_xlati12 = bitcast<vec2<i32>>((bitcast<vec2<u32>>(x_617) & vec2<u32>(1u, 1u)));
    let x_622 : i32 = u_xlati12.y;
    let x_624 : i32 = u_xlati12.x;
    u_xlati12.x = (x_622 + x_624);
    let x_628 : i32 = u_xlati12.x;
    u_xlat12.x = f32(x_628);
    let x_631 : f32 = u_xlat26;
    u_xlatb20.x = (0.00001f >= x_631);
    let x_636 : bool = u_xlatb20.x;
    u_xlat20 = select(0.0f, 1.0f, x_636);
    let x_638 : f32 = u_xlat20;
    let x_640 : f32 = u_xlat12.x;
    u_xlat12.x = (x_638 + x_640);
    let x_644 : f32 = u_xlat12.x;
    u_xlat12.x = (x_644 * 100000000.0f);
    let x_647 : f32 = u_xlat26;
    let x_649 : f32 = x_31.x_ProjectionParams.z;
    let x_652 : f32 = u_xlat12.x;
    u_xlat5.z = ((x_647 * x_649) + x_652);
    let x_655 : vec2<f32> = u_xlat19;
    let x_657 : vec4<f32> = x_31.unity_CameraProjection[2i];
    u_xlat19 = (x_655 + -(vec2<f32>(x_657.x, x_657.y)));
    let x_661 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_661 + vec2<f32>(-1.0f, -1.0f));
    let x_663 : vec2<f32> = u_xlat19;
    let x_664 : vec2<f32> = u_xlat3;
    u_xlat19 = (x_663 / x_664);
    let x_667 : f32 = u_xlat5.z;
    u_xlat26 = (-(x_667) + 1.0f);
    let x_671 : f32 = x_31.unity_OrthoParams.w;
    let x_672 : f32 = u_xlat26;
    let x_675 : f32 = u_xlat5.z;
    u_xlat26 = ((x_671 * x_672) + x_675);
    let x_677 : f32 = u_xlat26;
    let x_679 : vec2<f32> = u_xlat19;
    let x_680 : vec2<f32> = (vec2<f32>(x_677, x_677) * x_679);
    let x_681 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_680.x, x_680.y, x_681.z);
    let x_683 : vec3<f32> = u_xlat2;
    let x_685 : vec3<f32> = u_xlat5;
    u_xlat12 = (-(x_683) + x_685);
    let x_687 : vec3<f32> = u_xlat12;
    let x_688 : vec4<f32> = u_xlat1;
    u_xlat26 = dot(x_687, vec3<f32>(x_688.x, x_688.y, x_688.z));
    let x_692 : f32 = u_xlat2.z;
    let x_696 : f32 = u_xlat26;
    u_xlat26 = ((-(x_692) * 0.002f) + x_696);
    let x_698 : f32 = u_xlat26;
    u_xlat26 = max(x_698, 0.0f);
    let x_700 : vec3<f32> = u_xlat12;
    let x_701 : vec3<f32> = u_xlat12;
    u_xlat19.x = dot(x_700, x_701);
    let x_705 : f32 = u_xlat19.x;
    u_xlat19.x = (x_705 + 0.0001f);
    let x_709 : f32 = u_xlat26;
    let x_711 : f32 = u_xlat19.x;
    u_xlat26 = (x_709 / x_711);
    let x_713 : f32 = u_xlat24;
    let x_714 : f32 = u_xlat26;
    u_xlat24 = (x_713 + x_714);

    continuing {
      let x_716 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_716 + 1i);
    }
  }
  let x_718 : f32 = u_xlat24;
  let x_720 : f32 = x_31.x_AOParams.y;
  u_xlat0.x = (x_718 * x_720);
  let x_724 : f32 = u_xlat0.x;
  let x_726 : f32 = x_31.x_AOParams.x;
  u_xlat0.x = (x_724 * x_726);
  let x_730 : f32 = u_xlat0.x;
  let x_732 : f32 = x_31.x_AOParams.w;
  u_xlat0.x = (x_730 / x_732);
  let x_736 : f32 = u_xlat0.x;
  u_xlat0.x = max(abs(x_736), 1.1920929e-07f);
  let x_742 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_742);
  let x_746 : f32 = u_xlat0.x;
  u_xlat0.x = (x_746 * 0.600000024f);
  let x_753 : f32 = u_xlat0.x;
  SV_Target0.x = exp2(x_753);
  let x_757 : vec4<f32> = u_xlat1;
  let x_761 : vec3<f32> = ((vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_762 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_762.x, x_761.x, x_761.y, x_761.z);
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

