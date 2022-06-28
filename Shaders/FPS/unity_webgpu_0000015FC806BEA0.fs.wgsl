struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_Params : vec4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_CameraMotionVectorsTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraMotionVectorsTexture : sampler;

var<private> u_xlat10 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatb10 : bool;

var<private> u_xlat6 : f32;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat16 : f32;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlatb11 : bool;

var<private> u_xlat7 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_219 : f32;
  var x_313 : f32;
  var x_325 : f32;
  var x_338 : f32;
  var x_417 : f32;
  var x_429 : f32;
  var x_441 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_31 : vec2<f32> = vs_TEXCOORD0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_31.x, x_31.y, x_32.z);
  let x_34 : vec3<f32> = u_xlat0;
  let x_39 : vec2<f32> = clamp(vec2<f32>(x_34.x, x_34.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_40 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_39.x, x_39.y, x_40.z);
  let x_42 : vec3<f32> = u_xlat0;
  let x_51 : f32 = x_46.x_RenderViewportScaleFactor;
  let x_53 : vec2<f32> = (vec2<f32>(x_42.x, x_42.y) * vec2<f32>(x_51, x_51));
  let x_54 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_53.x, x_53.y, x_54.z);
  let x_66 : vec3<f32> = u_xlat0;
  let x_68 : vec4<f32> = textureSample(x_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture, vec2<f32>(x_66.x, x_66.y));
  let x_69 : vec2<f32> = vec2<f32>(x_68.x, x_68.y);
  let x_70 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_69.x, x_69.y, x_70.z);
  let x_76 : f32 = u_xlat0.y;
  u_xlat10 = abs(x_76);
  let x_79 : f32 = u_xlat10;
  let x_82 : f32 = u_xlat0.x;
  u_xlat15 = max(x_79, abs(x_82));
  let x_85 : f32 = u_xlat15;
  u_xlat15 = (1.0f / x_85);
  let x_88 : f32 = u_xlat10;
  let x_90 : f32 = u_xlat0.x;
  u_xlat1.x = min(x_88, abs(x_90));
  let x_97 : f32 = u_xlat10;
  let x_99 : f32 = u_xlat0.x;
  u_xlatb10 = (x_97 < abs(x_99));
  let x_102 : f32 = u_xlat15;
  let x_104 : f32 = u_xlat1.x;
  u_xlat15 = (x_102 * x_104);
  let x_106 : f32 = u_xlat15;
  let x_107 : f32 = u_xlat15;
  u_xlat1.x = (x_106 * x_107);
  let x_112 : f32 = u_xlat1.x;
  u_xlat6 = ((x_112 * 0.0208351f) + -0.085133001f);
  let x_118 : f32 = u_xlat1.x;
  let x_119 : f32 = u_xlat6;
  u_xlat6 = ((x_118 * x_119) + 0.180141002f);
  let x_124 : f32 = u_xlat1.x;
  let x_125 : f32 = u_xlat6;
  u_xlat6 = ((x_124 * x_125) + -0.330299497f);
  let x_130 : f32 = u_xlat1.x;
  let x_131 : f32 = u_xlat6;
  u_xlat1.x = ((x_130 * x_131) + 0.999866009f);
  let x_136 : f32 = u_xlat15;
  let x_138 : f32 = u_xlat1.x;
  u_xlat6 = (x_136 * x_138);
  let x_140 : f32 = u_xlat6;
  u_xlat6 = ((x_140 * -2.0f) + 1.570796371f);
  let x_145 : bool = u_xlatb10;
  let x_146 : f32 = u_xlat6;
  u_xlat10 = select(0.0f, x_146, x_145);
  let x_148 : f32 = u_xlat15;
  let x_150 : f32 = u_xlat1.x;
  let x_152 : f32 = u_xlat10;
  u_xlat10 = ((x_148 * x_150) + x_152);
  let x_156 : f32 = u_xlat0.y;
  let x_159 : f32 = u_xlat0.y;
  u_xlatb15 = (-(x_156) < x_159);
  let x_161 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, -3.141592741f, x_161);
  let x_164 : f32 = u_xlat15;
  let x_165 : f32 = u_xlat10;
  u_xlat10 = (x_164 + x_165);
  let x_168 : f32 = u_xlat0.y;
  let x_171 : f32 = u_xlat0.x;
  u_xlat15 = min(-(x_168), x_171);
  let x_173 : f32 = u_xlat15;
  let x_174 : f32 = u_xlat15;
  u_xlatb15 = (x_173 < -(x_174));
  let x_178 : f32 = u_xlat0.y;
  let x_181 : f32 = u_xlat0.x;
  u_xlat1.x = max(-(x_178), x_181);
  let x_184 : vec3<f32> = u_xlat0;
  let x_188 : vec2<f32> = (vec2<f32>(x_184.x, x_184.y) * vec2<f32>(1.0f, -1.0f));
  let x_189 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_188.x, x_188.y, x_189.z);
  let x_193 : vec3<f32> = u_xlat0;
  let x_198 : vec4<f32> = x_46.x_Params;
  u_xlat2 = (vec4<f32>(x_193.x, x_193.y, x_193.x, x_193.y) * vec4<f32>(x_198.x, x_198.x, x_198.y, x_198.y));
  let x_205 : f32 = u_xlat1.x;
  let x_207 : f32 = u_xlat1.x;
  u_xlatb0.x = (x_205 >= -(x_207));
  let x_212 : bool = u_xlatb0.x;
  let x_213 : bool = u_xlatb15;
  u_xlatb0.x = (x_212 & x_213);
  let x_217 : bool = u_xlatb0.x;
  if (x_217) {
    let x_222 : f32 = u_xlat10;
    x_219 = -(x_222);
  } else {
    let x_225 : f32 = u_xlat10;
    x_219 = x_225;
  }
  let x_226 : f32 = x_219;
  u_xlat0.x = x_226;
  let x_229 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_229 * 0.318309873f) + 1.0f);
  let x_234 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_234.x, x_234.x, x_234.x) * vec3<f32>(3.0f, 3.0f, 3.0f)) + vec3<f32>(-3.0f, -2.0f, -4.0f));
  let x_243 : vec3<f32> = u_xlat0;
  u_xlat0 = ((abs(x_243) * vec3<f32>(1.0f, -1.0f, -1.0f)) + vec3<f32>(-1.0f, 2.0f, 2.0f));
  let x_250 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_250, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_260 : vec2<f32> = vs_TEXCOORD1;
  let x_261 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_260);
  u_xlat1 = vec3<f32>(x_261.x, x_261.y, x_261.z);
  let x_264 : vec3<f32> = u_xlat1;
  let x_268 : vec3<f32> = max(abs(x_264), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_269 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat3;
  let x_273 : vec3<f32> = log2(vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat3;
  let x_280 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat3;
  let x_285 : vec3<f32> = exp2(vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat3;
  let x_295 : vec3<f32> = ((vec3<f32>(x_288.x, x_288.y, x_288.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : vec3<f32> = u_xlat1;
  u_xlat4 = (x_299 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_306 : vec3<f32> = u_xlat1;
  let x_309 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_306.x, x_306.y, x_306.z, x_306.x));
  u_xlatb1 = vec3<bool>(x_309.x, x_309.y, x_309.z);
  let x_312 : bool = u_xlatb1.x;
  if (x_312) {
    let x_317 : f32 = u_xlat4.x;
    x_313 = x_317;
  } else {
    let x_320 : f32 = u_xlat3.x;
    x_313 = x_320;
  }
  let x_321 : f32 = x_313;
  u_xlat1.x = x_321;
  let x_324 : bool = u_xlatb1.y;
  if (x_324) {
    let x_329 : f32 = u_xlat4.y;
    x_325 = x_329;
  } else {
    let x_332 : f32 = u_xlat3.y;
    x_325 = x_332;
  }
  let x_333 : f32 = x_325;
  u_xlat1.y = x_333;
  let x_337 : bool = u_xlatb1.z;
  if (x_337) {
    let x_342 : f32 = u_xlat4.z;
    x_338 = x_342;
  } else {
    let x_345 : f32 = u_xlat3.z;
    x_338 = x_345;
  }
  let x_346 : f32 = x_338;
  u_xlat1.z = x_346;
  let x_348 : vec3<f32> = u_xlat0;
  let x_349 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_348 + -(x_349));
  let x_352 : vec4<f32> = u_xlat2;
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_352.x, x_352.y), vec2<f32>(x_354.x, x_354.y));
  let x_357 : vec4<f32> = u_xlat2;
  let x_361 : vec2<f32> = (vec2<f32>(x_357.z, x_357.w) * vec2<f32>(0.25f, 0.25f));
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
  let x_365 : vec4<f32> = u_xlat2;
  let x_367 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec2<f32>(x_365.x, x_365.y), vec2<f32>(x_367.x, x_367.y));
  let x_370 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_370);
  let x_372 : f32 = u_xlat16;
  u_xlat16 = min(x_372, 1.0f);
  let x_374 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_374);
  let x_376 : f32 = u_xlat15;
  u_xlat15 = clamp(x_376, 0.0f, 1.0f);
  let x_378 : f32 = u_xlat15;
  let x_380 : vec3<f32> = u_xlat0;
  let x_382 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_378, x_378, x_378) * x_380) + x_382);
  let x_384 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_384 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_388 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_388 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_392 : vec3<f32> = u_xlat1;
  u_xlat1 = max(abs(x_392), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_395 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_395);
  let x_397 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_397 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_401 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_401);
  let x_403 : vec3<f32> = u_xlat0;
  let x_406 : vec3<f32> = (x_403 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_411 : vec3<f32> = u_xlat0;
  let x_413 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_411.x, x_411.y, x_411.z, x_411.x));
  u_xlatb0 = vec3<bool>(x_413.x, x_413.y, x_413.z);
  let x_416 : bool = u_xlatb0.x;
  if (x_416) {
    let x_421 : f32 = u_xlat2.x;
    x_417 = x_421;
  } else {
    let x_424 : f32 = u_xlat1.x;
    x_417 = x_424;
  }
  let x_425 : f32 = x_417;
  u_xlat0.x = x_425;
  let x_428 : bool = u_xlatb0.y;
  if (x_428) {
    let x_433 : f32 = u_xlat2.y;
    x_429 = x_433;
  } else {
    let x_436 : f32 = u_xlat1.y;
    x_429 = x_436;
  }
  let x_437 : f32 = x_429;
  u_xlat0.y = x_437;
  let x_440 : bool = u_xlatb0.z;
  if (x_440) {
    let x_445 : f32 = u_xlat2.z;
    x_441 = x_445;
  } else {
    let x_448 : f32 = u_xlat1.z;
    x_441 = x_448;
  }
  let x_449 : f32 = x_441;
  u_xlat0.z = x_449;
  let x_453 : f32 = x_46.x_MainTex_TexelSize.w;
  let x_455 : f32 = x_46.x_Params.y;
  u_xlat15 = (x_453 * x_455);
  let x_457 : f32 = u_xlat15;
  let x_459 : f32 = x_46.x_MainTex_TexelSize.z;
  u_xlat15 = (x_457 / x_459);
  let x_461 : f32 = u_xlat15;
  u_xlat1.y = floor(x_461);
  let x_465 : f32 = x_46.x_Params.y;
  u_xlat1.x = x_465;
  let x_468 : vec4<f32> = x_46.x_MainTex_TexelSize;
  let x_470 : vec3<f32> = u_xlat1;
  let x_472 : vec2<f32> = (vec2<f32>(x_468.z, x_468.w) / vec2<f32>(x_470.x, x_470.y));
  let x_473 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_472.x, x_472.y, x_473.z);
  let x_475 : vec4<f32> = hlslcc_FragCoord;
  let x_477 : vec3<f32> = u_xlat1;
  let x_479 : vec2<f32> = (vec2<f32>(x_475.x, x_475.y) / vec2<f32>(x_477.x, x_477.y));
  let x_480 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat2;
  let x_484 : vec2<f32> = floor(vec2<f32>(x_482.x, x_482.y));
  let x_485 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat2;
  let x_491 : vec2<f32> = (vec2<f32>(x_487.x, x_487.y) + vec2<f32>(0.5f, 0.5f));
  let x_492 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
  let x_496 : vec3<f32> = u_xlat1;
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat12 = (vec2<f32>(x_496.x, x_496.y) * vec2<f32>(x_498.x, x_498.y));
  let x_501 : vec4<f32> = u_xlat2;
  let x_504 : vec3<f32> = u_xlat1;
  let x_507 : vec4<f32> = hlslcc_FragCoord;
  let x_509 : vec2<f32> = ((-(vec2<f32>(x_501.x, x_501.y)) * vec2<f32>(x_504.x, x_504.y)) + vec2<f32>(x_507.x, x_507.y));
  let x_510 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_513 : f32 = u_xlat1.y;
  let x_515 : f32 = u_xlat1.x;
  u_xlat15 = min(x_513, x_515);
  let x_517 : f32 = u_xlat15;
  u_xlat15 = (x_517 * 0.707106769f);
  let x_520 : vec2<f32> = u_xlat12;
  let x_522 : vec4<f32> = x_46.x_MainTex_TexelSize;
  let x_524 : vec2<f32> = (x_520 / vec2<f32>(x_522.z, x_522.w));
  let x_525 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_524.x, x_524.y, x_525.z);
  let x_527 : vec3<f32> = u_xlat1;
  let x_531 : vec2<f32> = clamp(vec2<f32>(x_527.x, x_527.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_532 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_531.x, x_531.y, x_532.z);
  let x_534 : vec3<f32> = u_xlat1;
  let x_537 : f32 = x_46.x_RenderViewportScaleFactor;
  let x_539 : vec2<f32> = (vec2<f32>(x_534.x, x_534.y) * vec2<f32>(x_537, x_537));
  let x_540 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_539.x, x_539.y, x_540.z);
  let x_545 : vec3<f32> = u_xlat1;
  let x_547 : vec4<f32> = textureSample(x_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture, vec2<f32>(x_545.x, x_545.y));
  let x_548 : vec2<f32> = vec2<f32>(x_547.x, x_547.y);
  let x_549 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_548.x, x_548.y, x_549.z);
  let x_551 : vec3<f32> = u_xlat1;
  let x_553 : vec2<f32> = (vec2<f32>(x_551.x, x_551.y) * vec2<f32>(1.0f, -1.0f));
  let x_554 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_553.x, x_553.y, x_554.z);
  let x_557 : vec3<f32> = u_xlat1;
  let x_559 : vec3<f32> = u_xlat1;
  u_xlat11 = dot(vec2<f32>(x_557.x, x_557.y), vec2<f32>(x_559.x, x_559.y));
  let x_562 : f32 = u_xlat11;
  u_xlat12.x = inverseSqrt(x_562);
  let x_566 : f32 = u_xlat11;
  u_xlatb11 = !((x_566 == 0.0f));
  let x_568 : vec3<f32> = u_xlat1;
  let x_570 : vec2<f32> = u_xlat12;
  let x_572 : vec2<f32> = (vec2<f32>(x_568.x, x_568.y) * vec2<f32>(x_570.x, x_570.x));
  let x_573 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_576 : f32 = u_xlat3.y;
  u_xlat3.z = -(x_576);
  let x_579 : vec4<f32> = u_xlat3;
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec2<f32>(x_579.x, x_579.z), vec2<f32>(x_581.x, x_581.y));
  let x_585 : vec4<f32> = u_xlat3;
  let x_587 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(vec2<f32>(x_585.y, x_585.x), vec2<f32>(x_587.x, x_587.y));
  let x_591 : f32 = u_xlat16;
  let x_592 : f32 = u_xlat15;
  u_xlat2.x = (x_591 * x_592);
  let x_595 : f32 = u_xlat15;
  let x_596 : f32 = u_xlat16;
  u_xlat15 = ((x_595 * x_596) + -2.0f);
  let x_600 : vec4<f32> = u_xlat2;
  let x_607 : vec3<f32> = u_xlat1;
  u_xlat7 = ((-(vec2<f32>(x_600.x, x_600.x)) * vec2<f32>(0.375f, -0.0625f)) + vec2<f32>(x_607.x, x_607.y));
  let x_610 : vec4<f32> = u_xlat2;
  let x_614 : vec3<f32> = (vec3<f32>(x_610.x, x_610.x, x_610.x) * vec3<f32>(0.5f, 0.25f, -0.125f));
  let x_615 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_618 : f32 = u_xlat3.x;
  u_xlat4.x = x_618;
  u_xlat4.y = 0.0f;
  let x_621 : vec4<f32> = u_xlat2;
  let x_627 : vec3<f32> = u_xlat4;
  let x_629 : vec2<f32> = ((-(vec2<f32>(x_621.x, x_621.x)) * vec2<f32>(0.25f, 0.125f)) + vec2<f32>(x_627.x, x_627.y));
  let x_630 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_629.x, x_630.y, x_630.z, x_629.y);
  let x_632 : vec4<f32> = u_xlat3;
  let x_635 : vec3<f32> = u_xlat4;
  let x_637 : vec2<f32> = (-(vec2<f32>(x_632.x, x_632.w)) + vec2<f32>(x_635.x, x_635.y));
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_637.x, x_638.y, x_638.z, x_637.y);
  let x_640 : vec4<f32> = u_xlat3;
  let x_642 : vec4<f32> = u_xlat3;
  u_xlat16 = dot(vec2<f32>(x_640.x, x_640.w), vec2<f32>(x_642.x, x_642.w));
  let x_645 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_645);
  let x_647 : vec4<f32> = u_xlat3;
  let x_649 : f32 = u_xlat16;
  let x_651 : vec2<f32> = (vec2<f32>(x_647.x, x_647.w) / vec2<f32>(x_649, x_649));
  let x_652 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_651.x, x_651.y, x_652.z);
  let x_655 : f32 = u_xlat4.x;
  u_xlat4.z = -(x_655);
  let x_658 : vec2<f32> = u_xlat7;
  let x_659 : vec3<f32> = u_xlat4;
  u_xlat16 = dot(x_658, vec2<f32>(x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat2;
  let x_668 : vec3<f32> = u_xlat1;
  u_xlat7 = ((-(vec2<f32>(x_662.x, x_662.x)) * vec2<f32>(0.375f, 0.0625f)) + vec2<f32>(x_668.x, x_668.y));
  let x_671 : vec3<f32> = u_xlat1;
  let x_675 : vec2<f32> = (vec2<f32>(x_671.x, x_671.y) + vec2<f32>(1.0f, -0.0f));
  let x_676 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_675.x, x_676.y, x_676.z, x_675.y);
  let x_679 : f32 = u_xlat2.x;
  let x_683 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_679 * -0.25f) + x_683);
  let x_686 : vec4<f32> = u_xlat3;
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat6 = dot(-(vec2<f32>(x_686.y, x_686.z)), -(vec2<f32>(x_689.y, x_689.z)));
  let x_693 : f32 = u_xlat6;
  u_xlat6 = sqrt(x_693);
  let x_695 : vec4<f32> = u_xlat3;
  let x_698 : f32 = u_xlat6;
  let x_700 : vec2<f32> = (-(vec2<f32>(x_695.y, x_695.z)) / vec2<f32>(x_698, x_698));
  let x_701 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_700.x, x_700.y, x_701.z);
  let x_704 : f32 = u_xlat4.x;
  u_xlat4.z = -(x_704);
  let x_707 : vec2<f32> = u_xlat7;
  let x_708 : vec3<f32> = u_xlat4;
  u_xlat6 = dot(x_707, vec2<f32>(x_708.y, x_708.z));
  let x_711 : f32 = u_xlat16;
  let x_712 : f32 = u_xlat6;
  u_xlat6 = max(x_711, x_712);
  let x_715 : f32 = u_xlat1.x;
  let x_717 : f32 = u_xlat6;
  u_xlat1.x = max(-(x_715), x_717);
  let x_720 : f32 = u_xlat15;
  let x_721 : f32 = u_xlat15;
  u_xlat6 = (x_720 / abs(x_721));
  let x_724 : f32 = u_xlat6;
  let x_726 : f32 = u_xlat3.x;
  u_xlat16 = (x_724 * x_726);
  let x_728 : f32 = u_xlat6;
  let x_731 : f32 = u_xlat3.w;
  u_xlat6 = (-(x_728) * x_731);
  let x_733 : f32 = u_xlat15;
  let x_737 : f32 = u_xlat16;
  u_xlat15 = ((-(abs(x_733)) * 0.5f) + abs(x_737));
  let x_740 : f32 = u_xlat15;
  let x_741 : f32 = u_xlat6;
  u_xlat15 = max(x_740, abs(x_741));
  let x_744 : f32 = u_xlat15;
  let x_746 : f32 = u_xlat1.x;
  u_xlat15 = min(x_744, x_746);
  let x_748 : f32 = u_xlat15;
  u_xlat15 = clamp(x_748, 0.0f, 1.0f);
  let x_750 : f32 = u_xlat15;
  u_xlat15 = (-(x_750) + 1.0f);
  let x_753 : bool = u_xlatb11;
  let x_754 : f32 = u_xlat15;
  u_xlat15 = select(0.0f, x_754, x_753);
  let x_758 : f32 = u_xlat15;
  let x_760 : vec3<f32> = u_xlat0;
  let x_761 : vec3<f32> = (vec3<f32>(x_758, x_758, x_758) + x_760);
  let x_762 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

