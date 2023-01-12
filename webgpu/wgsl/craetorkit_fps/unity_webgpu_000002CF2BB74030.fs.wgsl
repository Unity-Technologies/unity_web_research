struct PGlobals {
  x_Phase : f32,
  @size(12)
  padding : u32,
  x_NoiseParameters : vec3<f32>,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat16 : vec2<f32>;
  var u_xlat23 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat9 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat10 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = x_13.x_Phase;
  u_xlat0.y = fract(x_18);
  let x_28 : vec2<f32> = vs_TEXCOORD1;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec4<f32>(x_28.x, x_28.y, x_28.x, x_28.y) * vec4<f32>(128.0f, 128.0f, 128.0f, 128.0f)) + vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y));
  let x_37 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_37.z, x_37.w, x_37.z, x_37.w) + vec4<f32>(-2.0f, -2.0f, -1.0f, -2.0f));
  let x_43 : vec4<f32> = u_xlat2;
  let x_48 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat2.x = dot(vec2<f32>(x_43.x, x_43.y), vec2<f32>(x_48.x, x_48.y));
  let x_53 : vec4<f32> = u_xlat2;
  let x_56 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat2.y = dot(vec2<f32>(x_53.z, x_53.w), vec2<f32>(x_56.x, x_56.y));
  let x_60 : vec4<f32> = u_xlat2;
  let x_62 : vec2<f32> = sin(vec2<f32>(x_60.x, x_60.y));
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_62.x, x_62.y, x_63.z, x_63.w);
  let x_65 : vec4<f32> = u_xlat2;
  let x_69 : f32 = x_13.x_NoiseParameters.z;
  let x_71 : f32 = x_13.x_NoiseParameters.z;
  let x_73 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_71));
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat2;
  let x_78 : vec2<f32> = fract(vec2<f32>(x_76.x, x_76.y));
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_78.x, x_78.y, x_79.z, x_79.w);
  let x_82 : f32 = u_xlat2.y;
  let x_86 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_82 * 2.0f) + x_86);
  u_xlat0.x = 0.0f;
  u_xlat0.z = -2.0f;
  u_xlat0.w = -1.0f;
  let x_95 : vec2<f32> = vs_TEXCOORD1;
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat3 = ((vec4<f32>(x_95.x, x_95.y, x_95.x, x_95.y) * vec4<f32>(128.0f, 128.0f, 128.0f, 128.0f)) + vec4<f32>(x_98.x, x_98.y, x_98.y, x_98.x));
  let x_102 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_102.y, x_102.z, x_102.y, x_102.w) + vec4<f32>(x_104.x, x_104.y, x_104.x, x_104.y));
  let x_108 : vec4<f32> = u_xlat0;
  let x_110 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_108.z, x_108.y, x_108.w, x_108.y) + vec4<f32>(x_110.z, x_110.w, x_110.z, x_110.w));
  let x_114 : vec4<f32> = u_xlat4;
  let x_117 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat21 = dot(vec2<f32>(x_114.x, x_114.y), vec2<f32>(x_117.x, x_117.y));
  let x_122 : vec4<f32> = u_xlat4;
  let x_125 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat16.x = dot(vec2<f32>(x_122.z, x_122.w), vec2<f32>(x_125.x, x_125.y));
  let x_130 : f32 = u_xlat16.x;
  u_xlat16.x = sin(x_130);
  let x_134 : f32 = u_xlat16.x;
  let x_136 : f32 = x_13.x_NoiseParameters.z;
  u_xlat16.x = (x_134 * x_136);
  let x_139 : f32 = u_xlat21;
  u_xlat21 = sin(x_139);
  let x_141 : f32 = u_xlat21;
  let x_143 : f32 = x_13.x_NoiseParameters.z;
  u_xlat21 = (x_141 * x_143);
  let x_145 : f32 = u_xlat21;
  u_xlat21 = fract(x_145);
  let x_147 : f32 = u_xlat21;
  let x_149 : f32 = u_xlat2.x;
  u_xlat2.x = (x_147 + x_149);
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_152.z, x_152.w, x_152.z, x_152.w) + vec4<f32>(-2.0f, -1.0f, -1.0f, -1.0f));
  let x_157 : vec4<f32> = u_xlat4;
  let x_160 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat23 = dot(vec2<f32>(x_157.x, x_157.y), vec2<f32>(x_160.x, x_160.y));
  let x_163 : vec4<f32> = u_xlat4;
  let x_166 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat4.x = dot(vec2<f32>(x_163.z, x_163.w), vec2<f32>(x_166.x, x_166.y));
  let x_171 : f32 = u_xlat4.x;
  u_xlat4.x = sin(x_171);
  let x_175 : f32 = u_xlat4.x;
  let x_177 : f32 = x_13.x_NoiseParameters.z;
  u_xlat4.x = (x_175 * x_177);
  let x_181 : f32 = u_xlat4.x;
  u_xlat4.x = fract(x_181);
  let x_184 : f32 = u_xlat23;
  u_xlat23 = sin(x_184);
  let x_186 : f32 = u_xlat23;
  let x_188 : f32 = x_13.x_NoiseParameters.z;
  u_xlat16.y = (x_186 * x_188);
  let x_191 : vec2<f32> = u_xlat16;
  let x_192 : vec2<f32> = fract(x_191);
  let x_193 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_192.x, x_192.y);
  let x_196 : f32 = u_xlat2.w;
  let x_199 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_196 * 2.0f) + x_199);
  let x_203 : f32 = u_xlat4.x;
  let x_206 : f32 = u_xlat2.w;
  u_xlat2.w = ((x_203 * 2.0f) + x_206);
  let x_210 : f32 = u_xlat4.x;
  let x_214 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_210 * -12.0f) + x_214);
  let x_218 : f32 = u_xlat2.z;
  let x_221 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_218 * 2.0f) + x_221);
  let x_226 : vec4<f32> = u_xlat5;
  let x_229 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat11.x = dot(vec2<f32>(x_226.x, x_226.y), vec2<f32>(x_229.x, x_229.y));
  let x_233 : vec4<f32> = u_xlat5;
  let x_236 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat11.y = dot(vec2<f32>(x_233.z, x_233.w), vec2<f32>(x_236.x, x_236.y));
  let x_240 : vec3<f32> = u_xlat11;
  let x_242 : vec2<f32> = sin(vec2<f32>(x_240.x, x_240.y));
  let x_243 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_242.x, x_242.y, x_243.z);
  let x_245 : vec3<f32> = u_xlat11;
  let x_248 : f32 = x_13.x_NoiseParameters.z;
  let x_250 : f32 = x_13.x_NoiseParameters.z;
  let x_252 : vec2<f32> = (vec2<f32>(x_245.x, x_245.y) * vec2<f32>(x_248, x_250));
  let x_253 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_252.x, x_252.y, x_253.z);
  let x_255 : vec3<f32> = u_xlat11;
  let x_257 : vec2<f32> = fract(vec2<f32>(x_255.x, x_255.y));
  let x_258 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_257.x, x_257.y, x_258.z);
  let x_261 : f32 = u_xlat2.x;
  let x_263 : f32 = u_xlat11.x;
  u_xlat2.x = (x_261 + x_263);
  let x_267 : f32 = u_xlat11.y;
  let x_270 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_267 * 2.0f) + x_270);
  let x_274 : vec4<f32> = u_xlat1;
  let x_277 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat25 = dot(vec2<f32>(x_274.z, x_274.w), vec2<f32>(x_277.x, x_277.y));
  let x_280 : f32 = u_xlat25;
  u_xlat25 = sin(x_280);
  let x_282 : f32 = u_xlat25;
  let x_284 : f32 = x_13.x_NoiseParameters.z;
  u_xlat25 = (x_282 * x_284);
  let x_286 : f32 = u_xlat25;
  u_xlat11.z = fract(x_286);
  let x_290 : f32 = u_xlat21;
  let x_293 : f32 = u_xlat2.y;
  u_xlat9 = ((x_290 * 2.0f) + x_293);
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_295.z, x_295.w, x_295.z, x_295.w) + vec4<f32>(1.0f, -2.0f, 1.0f, -1.0f));
  let x_300 : vec4<f32> = u_xlat5;
  let x_303 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat5.x = dot(vec2<f32>(x_300.x, x_300.y), vec2<f32>(x_303.x, x_303.y));
  let x_307 : vec4<f32> = u_xlat5;
  let x_310 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat5.y = dot(vec2<f32>(x_307.z, x_307.w), vec2<f32>(x_310.x, x_310.y));
  let x_314 : vec4<f32> = u_xlat5;
  let x_316 : vec2<f32> = sin(vec2<f32>(x_314.x, x_314.y));
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_316.y, x_317.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_322 : f32 = x_13.x_NoiseParameters.z;
  let x_324 : f32 = x_13.x_NoiseParameters.z;
  let x_326 : vec2<f32> = (vec2<f32>(x_319.x, x_319.y) * vec2<f32>(x_322, x_324));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_327.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat5;
  let x_331 : vec2<f32> = fract(vec2<f32>(x_329.x, x_329.y));
  let x_332 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
  let x_334 : f32 = u_xlat9;
  let x_336 : f32 = u_xlat5.x;
  u_xlat9 = (x_334 + x_336);
  let x_339 : f32 = u_xlat5.x;
  let x_341 : f32 = u_xlat21;
  u_xlat21 = ((x_339 * 2.0f) + x_341);
  let x_344 : f32 = u_xlat4.x;
  let x_346 : f32 = u_xlat9;
  u_xlat9 = ((x_344 * 2.0f) + x_346);
  let x_349 : f32 = u_xlat2.z;
  let x_352 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_349 * 2.0f) + x_352);
  let x_356 : f32 = u_xlat5.y;
  let x_358 : f32 = u_xlat4.x;
  u_xlat4.x = (x_356 + x_358);
  let x_362 : f32 = u_xlat11.y;
  let x_365 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_362 * 2.0f) + x_365);
  let x_369 : f32 = u_xlat11.z;
  let x_372 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_369 * -12.0f) + x_372);
  let x_376 : f32 = u_xlat2.z;
  let x_378 : f32 = u_xlat9;
  u_xlat9 = ((x_376 * -12.0f) + x_378);
  let x_381 : f32 = u_xlat5.y;
  let x_383 : f32 = u_xlat9;
  u_xlat2.y = ((x_381 * 2.0f) + x_383);
  let x_386 : vec3<f32> = u_xlat11;
  let x_388 : vec4<f32> = u_xlat2;
  let x_390 : vec2<f32> = (vec2<f32>(x_386.z, x_386.y) + vec2<f32>(x_388.x, x_388.y));
  let x_391 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_394 : f32 = u_xlat11.z;
  let x_397 : f32 = u_xlat2.y;
  u_xlat9 = ((x_394 * 2.0f) + x_397);
  u_xlat0.x = 1.0f;
  u_xlat0.z = 2.0f;
  let x_402 : vec4<f32> = u_xlat0;
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_402.x, x_402.y, x_402.z, x_402.y) + vec4<f32>(x_404.z, x_404.w, x_404.z, x_404.w));
  let x_407 : vec4<f32> = u_xlat0;
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_407.y, x_407.x, x_407.y, x_407.z) + vec4<f32>(x_409.x, x_409.y, x_409.x, x_409.y));
  let x_412 : vec4<f32> = u_xlat6;
  let x_415 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat0.x = dot(vec2<f32>(x_412.x, x_412.y), vec2<f32>(x_415.x, x_415.y));
  let x_419 : vec4<f32> = u_xlat6;
  let x_422 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat0.y = dot(vec2<f32>(x_419.z, x_419.w), vec2<f32>(x_422.x, x_422.y));
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec2<f32> = sin(vec2<f32>(x_426.x, x_426.y));
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat0;
  let x_434 : f32 = x_13.x_NoiseParameters.z;
  let x_436 : f32 = x_13.x_NoiseParameters.z;
  let x_438 : vec2<f32> = (vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_434, x_436));
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat0;
  let x_443 : vec2<f32> = fract(vec2<f32>(x_441.x, x_441.y));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
  let x_448 : f32 = u_xlat0.x;
  let x_449 : f32 = u_xlat9;
  u_xlat14.x = (x_448 + x_449);
  let x_453 : f32 = u_xlat14.x;
  u_xlat14.x = (x_453 * 0.083333336f);
  let x_458 : f32 = u_xlat2.x;
  let x_462 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_458 * 0.041666668f) + x_462);
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_465.z, x_465.w, x_465.z, x_465.w) + vec4<f32>(2.0f, -2.0f, 2.0f, -1.0f));
  let x_469 : vec4<f32> = u_xlat6;
  let x_472 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat2.x = dot(vec2<f32>(x_469.x, x_469.y), vec2<f32>(x_472.x, x_472.y));
  let x_476 : vec4<f32> = u_xlat6;
  let x_479 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat2.y = dot(vec2<f32>(x_476.z, x_476.w), vec2<f32>(x_479.x, x_479.y));
  let x_483 : vec4<f32> = u_xlat2;
  let x_485 : vec2<f32> = sin(vec2<f32>(x_483.x, x_483.y));
  let x_486 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat2;
  let x_491 : f32 = x_13.x_NoiseParameters.z;
  let x_493 : f32 = x_13.x_NoiseParameters.z;
  let x_495 : vec2<f32> = (vec2<f32>(x_488.x, x_488.y) * vec2<f32>(x_491, x_493));
  let x_496 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat2;
  let x_500 : vec2<f32> = fract(vec2<f32>(x_498.x, x_498.y));
  let x_501 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
  let x_503 : f32 = u_xlat21;
  let x_505 : f32 = u_xlat2.x;
  u_xlat21 = (x_503 + x_505);
  let x_508 : f32 = u_xlat2.z;
  let x_510 : f32 = u_xlat21;
  u_xlat21 = ((x_508 * 2.0f) + x_510);
  let x_513 : f32 = u_xlat5.y;
  let x_516 : f32 = u_xlat2.z;
  u_xlat2.x = ((x_513 * 2.0f) + x_516);
  let x_520 : f32 = u_xlat5.y;
  let x_522 : f32 = u_xlat21;
  u_xlat21 = ((x_520 * -12.0f) + x_522);
  let x_525 : f32 = u_xlat2.y;
  let x_527 : f32 = u_xlat21;
  u_xlat21 = ((x_525 * 2.0f) + x_527);
  let x_529 : vec4<f32> = u_xlat2;
  let x_531 : vec4<f32> = u_xlat2;
  let x_533 : vec2<f32> = (vec2<f32>(x_529.y, x_529.z) + vec2<f32>(x_531.x, x_531.w));
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_533.x, x_534.y, x_534.z, x_533.y);
  let x_537 : f32 = u_xlat11.z;
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_537 * 2.0f) + x_540);
  let x_544 : f32 = u_xlat0.x;
  let x_547 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_544 * -12.0f) + x_547);
  let x_551 : f32 = u_xlat0.y;
  let x_554 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_551 * 2.0f) + x_554);
  let x_558 : f32 = u_xlat11.z;
  let x_559 : f32 = u_xlat21;
  u_xlat21 = (x_558 + x_559);
  let x_562 : f32 = u_xlat0.x;
  let x_564 : f32 = u_xlat21;
  u_xlat21 = ((x_562 * 2.0f) + x_564);
  let x_567 : f32 = u_xlat0.y;
  let x_568 : f32 = u_xlat21;
  u_xlat21 = (x_567 + x_568);
  let x_570 : f32 = u_xlat21;
  let x_573 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_570 * 0.041666668f) + x_573);
  let x_577 : f32 = u_xlat11.x;
  let x_580 : f32 = u_xlat2.w;
  u_xlat21 = ((x_577 * 2.0f) + x_580);
  let x_583 : f32 = u_xlat11.y;
  let x_586 : f32 = u_xlat11.x;
  u_xlat9 = ((x_583 * 2.0f) + x_586);
  let x_589 : f32 = u_xlat11.z;
  let x_590 : f32 = u_xlat9;
  u_xlat9 = (x_589 + x_590);
  let x_593 : f32 = u_xlat11.y;
  let x_595 : f32 = u_xlat21;
  u_xlat21 = ((x_593 * -12.0f) + x_595);
  let x_598 : f32 = u_xlat11.z;
  let x_601 : f32 = u_xlat11.y;
  u_xlat16.x = ((x_598 * 2.0f) + x_601);
  let x_605 : f32 = u_xlat0.x;
  let x_607 : f32 = u_xlat16.x;
  u_xlat16.x = (x_605 + x_607);
  let x_611 : f32 = u_xlat11.z;
  let x_613 : f32 = u_xlat21;
  u_xlat21 = ((x_611 * 2.0f) + x_613);
  let x_616 : f32 = u_xlat0.x;
  let x_619 : f32 = u_xlat11.z;
  u_xlat23 = ((x_616 * 2.0f) + x_619);
  let x_622 : f32 = u_xlat0.x;
  let x_625 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_622 * 2.0f) + x_625);
  let x_630 : f32 = u_xlat0.y;
  let x_631 : f32 = u_xlat23;
  u_xlat7.x = (x_630 + x_631);
  let x_634 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_634.z, x_634.w, x_634.z, x_634.w) + vec4<f32>(-2.0f, 1.0f, -1.0f, 1.0f));
  let x_638 : vec4<f32> = u_xlat4;
  let x_641 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat23 = dot(vec2<f32>(x_638.x, x_638.y), vec2<f32>(x_641.x, x_641.y));
  let x_644 : vec4<f32> = u_xlat4;
  let x_647 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat4.x = dot(vec2<f32>(x_644.z, x_644.w), vec2<f32>(x_647.x, x_647.y));
  let x_652 : f32 = u_xlat4.x;
  u_xlat4.x = sin(x_652);
  let x_656 : f32 = u_xlat4.x;
  let x_658 : f32 = x_13.x_NoiseParameters.z;
  u_xlat4.x = (x_656 * x_658);
  let x_662 : f32 = u_xlat4.x;
  u_xlat4.x = fract(x_662);
  let x_665 : f32 = u_xlat23;
  u_xlat23 = sin(x_665);
  let x_667 : f32 = u_xlat23;
  let x_669 : f32 = x_13.x_NoiseParameters.z;
  u_xlat23 = (x_667 * x_669);
  let x_671 : f32 = u_xlat23;
  u_xlat23 = fract(x_671);
  let x_673 : f32 = u_xlat21;
  let x_674 : f32 = u_xlat23;
  u_xlat21 = (x_673 + x_674);
  let x_676 : f32 = u_xlat23;
  let x_678 : f32 = u_xlat9;
  u_xlat9 = ((x_676 * 2.0f) + x_678);
  let x_681 : f32 = u_xlat4.x;
  let x_683 : f32 = u_xlat9;
  u_xlat9 = ((x_681 * -12.0f) + x_683);
  let x_686 : f32 = u_xlat4.x;
  let x_688 : f32 = u_xlat21;
  u_xlat21 = ((x_686 * 2.0f) + x_688);
  let x_690 : vec4<f32> = u_xlat3;
  let x_693 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat23 = dot(vec2<f32>(x_690.x, x_690.y), vec2<f32>(x_693.x, x_693.y));
  let x_696 : vec4<f32> = u_xlat3;
  let x_699 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat3.x = dot(vec2<f32>(x_696.z, x_696.w), vec2<f32>(x_699.x, x_699.y));
  let x_704 : f32 = u_xlat3.x;
  u_xlat3.x = sin(x_704);
  let x_708 : f32 = u_xlat3.x;
  let x_710 : f32 = x_13.x_NoiseParameters.z;
  u_xlat3.x = (x_708 * x_710);
  let x_713 : f32 = u_xlat23;
  u_xlat23 = sin(x_713);
  let x_715 : f32 = u_xlat23;
  let x_717 : f32 = x_13.x_NoiseParameters.z;
  u_xlat23 = (x_715 * x_717);
  let x_719 : f32 = u_xlat23;
  u_xlat23 = fract(x_719);
  let x_721 : f32 = u_xlat21;
  let x_722 : f32 = u_xlat23;
  u_xlat21 = (x_721 + x_722);
  let x_724 : f32 = u_xlat21;
  let x_727 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_724 * 0.083333336f) + x_727);
  let x_731 : f32 = u_xlat0.x;
  let x_733 : f32 = u_xlat4.x;
  u_xlat0.x = (x_731 + x_733);
  let x_737 : f32 = u_xlat4.x;
  let x_740 : f32 = u_xlat16.x;
  u_xlat21 = ((x_737 * 2.0f) + x_740);
  let x_742 : f32 = u_xlat23;
  let x_744 : f32 = u_xlat21;
  u_xlat21 = ((x_742 * -12.0f) + x_744);
  let x_746 : f32 = u_xlat23;
  let x_749 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_746 * 2.0f) + x_749);
  let x_752 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_752.z, x_752.w, x_752.z, x_752.w) + vec4<f32>(1.0f, 1.0f, 2.0f, 1.0f));
  let x_756 : vec4<f32> = u_xlat4;
  let x_759 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat16.x = dot(vec2<f32>(x_756.x, x_756.y), vec2<f32>(x_759.x, x_759.y));
  let x_764 : vec4<f32> = u_xlat4;
  let x_767 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat10 = dot(vec2<f32>(x_764.z, x_764.w), vec2<f32>(x_767.x, x_767.y));
  let x_770 : f32 = u_xlat10;
  u_xlat10 = sin(x_770);
  let x_772 : f32 = u_xlat10;
  let x_774 : f32 = x_13.x_NoiseParameters.z;
  u_xlat3.y = (x_772 * x_774);
  let x_777 : vec4<f32> = u_xlat3;
  let x_779 : vec2<f32> = fract(vec2<f32>(x_777.x, x_777.y));
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
  let x_783 : f32 = u_xlat16.x;
  u_xlat16.x = sin(x_783);
  let x_787 : f32 = u_xlat16.x;
  let x_789 : f32 = x_13.x_NoiseParameters.z;
  u_xlat16.x = (x_787 * x_789);
  let x_793 : f32 = u_xlat16.x;
  u_xlat16.x = fract(x_793);
  let x_797 : f32 = u_xlat0.x;
  let x_799 : f32 = u_xlat16.x;
  u_xlat0.x = (x_797 + x_799);
  let x_803 : f32 = u_xlat0.x;
  let x_807 : f32 = u_xlat14.x;
  u_xlat0.x = ((x_803 * 0.166666672f) + x_807);
  let x_810 : f32 = u_xlat23;
  let x_812 : f32 = u_xlat2.x;
  u_xlat14.x = (x_810 + x_812);
  let x_816 : f32 = u_xlat16.x;
  let x_819 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_816 * 2.0f) + x_819);
  let x_823 : f32 = u_xlat3.y;
  let x_825 : f32 = u_xlat14.x;
  u_xlat14.x = (x_823 + x_825);
  let x_829 : f32 = u_xlat14.x;
  let x_832 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_829 * 0.083333336f) + x_832);
  let x_835 : f32 = u_xlat23;
  let x_837 : f32 = u_xlat9;
  u_xlat14.x = ((x_835 * 2.0f) + x_837);
  let x_840 : f32 = u_xlat23;
  let x_843 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_840 * 2.0f) + x_843);
  let x_847 : f32 = u_xlat16.x;
  let x_850 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_847 * -12.0f) + x_850);
  let x_854 : f32 = u_xlat16.x;
  let x_856 : f32 = u_xlat21;
  u_xlat14.y = ((x_854 * 2.0f) + x_856);
  let x_860 : f32 = u_xlat3.y;
  let x_863 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_860 * 2.0f) + x_863);
  let x_866 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_866.z, x_866.w, x_866.z, x_866.w) + vec4<f32>(-2.0f, 2.0f, -1.0f, 2.0f));
  let x_870 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_870 + vec4<f32>(1.0f, 2.0f, 2.0f, 2.0f));
  let x_873 : vec4<f32> = u_xlat2;
  let x_876 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat2.x = dot(vec2<f32>(x_873.x, x_873.y), vec2<f32>(x_876.x, x_876.y));
  let x_880 : vec4<f32> = u_xlat2;
  let x_883 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat2.y = dot(vec2<f32>(x_880.z, x_880.w), vec2<f32>(x_883.x, x_883.y));
  let x_887 : vec4<f32> = u_xlat2;
  let x_889 : vec2<f32> = sin(vec2<f32>(x_887.x, x_887.y));
  let x_890 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_889.x, x_889.y, x_890.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat2;
  let x_895 : f32 = x_13.x_NoiseParameters.z;
  let x_897 : f32 = x_13.x_NoiseParameters.z;
  let x_899 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) * vec2<f32>(x_895, x_897));
  let x_900 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat2;
  let x_904 : vec2<f32> = fract(vec2<f32>(x_902.x, x_902.y));
  let x_905 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
  let x_907 : vec2<f32> = u_xlat14;
  let x_908 : vec4<f32> = u_xlat2;
  u_xlat14 = (x_907 + vec2<f32>(x_908.x, x_908.y));
  let x_912 : f32 = u_xlat2.y;
  let x_915 : f32 = u_xlat14.x;
  u_xlat7.y = ((x_912 * 2.0f) + x_915);
  let x_919 : f32 = u_xlat3.x;
  let x_922 : f32 = u_xlat14.y;
  u_xlat21 = ((x_919 * 2.0f) + x_922);
  let x_924 : vec4<f32> = u_xlat3;
  let x_926 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_924.x, x_924.x) + x_926);
  let x_929 : f32 = u_xlat7.y;
  let x_932 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_929 * 0.041666668f) + x_932);
  let x_935 : vec4<f32> = u_xlat1;
  let x_938 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat14.x = dot(vec2<f32>(x_935.x, x_935.y), vec2<f32>(x_938.x, x_938.y));
  let x_942 : vec4<f32> = u_xlat1;
  let x_945 : vec3<f32> = x_13.x_NoiseParameters;
  u_xlat1.x = dot(vec2<f32>(x_942.z, x_942.w), vec2<f32>(x_945.x, x_945.y));
  let x_950 : f32 = u_xlat1.x;
  u_xlat1.x = sin(x_950);
  let x_954 : f32 = u_xlat1.x;
  let x_956 : f32 = x_13.x_NoiseParameters.z;
  u_xlat1.x = (x_954 * x_956);
  let x_960 : f32 = u_xlat1.x;
  u_xlat1.x = fract(x_960);
  let x_964 : f32 = u_xlat14.x;
  u_xlat14.x = sin(x_964);
  let x_968 : f32 = u_xlat14.x;
  let x_970 : f32 = x_13.x_NoiseParameters.z;
  u_xlat14.x = (x_968 * x_970);
  let x_974 : f32 = u_xlat14.x;
  u_xlat14.x = fract(x_974);
  let x_978 : f32 = u_xlat14.x;
  let x_979 : f32 = u_xlat21;
  u_xlat21 = (x_978 + x_979);
  let x_982 : f32 = u_xlat14.x;
  let x_985 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_982 * 2.0f) + x_985);
  let x_989 : f32 = u_xlat1.x;
  let x_991 : f32 = u_xlat7.x;
  u_xlat7.x = (x_989 + x_991);
  let x_994 : f32 = u_xlat21;
  let x_997 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_994 * 0.083333336f) + x_997);
  let x_1001 : f32 = u_xlat7.x;
  let x_1004 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1001 * 0.041666668f) + x_1004);
  let x_1009 : vec4<f32> = u_xlat0;
  let x_1013 : vec3<f32> = (vec3<f32>(x_1009.x, x_1009.x, x_1009.x) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_1014 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}
