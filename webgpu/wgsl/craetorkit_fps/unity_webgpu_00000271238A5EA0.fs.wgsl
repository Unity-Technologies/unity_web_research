struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_Params : vec4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(1) var x_CameraMotionVectorsTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraMotionVectorsTexture : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlat15 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlat6 : f32;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_217 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_311 : f32;
  var x_323 : f32;
  var x_336 : f32;
  var u_xlat16 : f32;
  var x_415 : f32;
  var x_427 : f32;
  var x_439 : f32;
  var u_xlat12 : vec2<f32>;
  var u_xlat11 : f32;
  var u_xlatb11 : bool;
  var u_xlat7 : vec2<f32>;
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
  let x_192 : vec3<f32> = u_xlat0;
  let x_197 : vec4<f32> = x_46.x_Params;
  u_xlat2 = (vec4<f32>(x_192.x, x_192.y, x_192.x, x_192.y) * vec4<f32>(x_197.x, x_197.x, x_197.y, x_197.y));
  let x_204 : f32 = u_xlat1.x;
  let x_206 : f32 = u_xlat1.x;
  u_xlatb0.x = (x_204 >= -(x_206));
  let x_211 : bool = u_xlatb0.x;
  let x_212 : bool = u_xlatb15;
  u_xlatb0.x = (x_211 & x_212);
  let x_216 : bool = u_xlatb0.x;
  if (x_216) {
    let x_220 : f32 = u_xlat10;
    x_217 = -(x_220);
  } else {
    let x_223 : f32 = u_xlat10;
    x_217 = x_223;
  }
  let x_224 : f32 = x_217;
  u_xlat0.x = x_224;
  let x_227 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_227 * 0.318309873f) + 1.0f);
  let x_232 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_232.x, x_232.x, x_232.x) * vec3<f32>(3.0f, 3.0f, 3.0f)) + vec3<f32>(-3.0f, -2.0f, -4.0f));
  let x_241 : vec3<f32> = u_xlat0;
  u_xlat0 = ((abs(x_241) * vec3<f32>(1.0f, -1.0f, -1.0f)) + vec3<f32>(-1.0f, 2.0f, 2.0f));
  let x_248 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_248, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_258 : vec2<f32> = vs_TEXCOORD1;
  let x_259 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_258);
  u_xlat1 = vec3<f32>(x_259.x, x_259.y, x_259.z);
  let x_262 : vec3<f32> = u_xlat1;
  let x_266 : vec3<f32> = max(abs(x_262), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_267 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat3;
  let x_271 : vec3<f32> = log2(vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat3;
  let x_278 : vec3<f32> = (vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat3;
  let x_283 : vec3<f32> = exp2(vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat3;
  let x_293 : vec3<f32> = ((vec3<f32>(x_286.x, x_286.y, x_286.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : vec3<f32> = u_xlat1;
  u_xlat4 = (x_297 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_304 : vec3<f32> = u_xlat1;
  let x_307 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_304.x, x_304.y, x_304.z, x_304.x));
  u_xlatb1 = vec3<bool>(x_307.x, x_307.y, x_307.z);
  let x_310 : bool = u_xlatb1.x;
  if (x_310) {
    let x_315 : f32 = u_xlat4.x;
    x_311 = x_315;
  } else {
    let x_318 : f32 = u_xlat3.x;
    x_311 = x_318;
  }
  let x_319 : f32 = x_311;
  u_xlat1.x = x_319;
  let x_322 : bool = u_xlatb1.y;
  if (x_322) {
    let x_327 : f32 = u_xlat4.y;
    x_323 = x_327;
  } else {
    let x_330 : f32 = u_xlat3.y;
    x_323 = x_330;
  }
  let x_331 : f32 = x_323;
  u_xlat1.y = x_331;
  let x_335 : bool = u_xlatb1.z;
  if (x_335) {
    let x_340 : f32 = u_xlat4.z;
    x_336 = x_340;
  } else {
    let x_343 : f32 = u_xlat3.z;
    x_336 = x_343;
  }
  let x_344 : f32 = x_336;
  u_xlat1.z = x_344;
  let x_346 : vec3<f32> = u_xlat0;
  let x_347 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_346 + -(x_347));
  let x_350 : vec4<f32> = u_xlat2;
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_350.x, x_350.y), vec2<f32>(x_352.x, x_352.y));
  let x_355 : vec4<f32> = u_xlat2;
  let x_359 : vec2<f32> = (vec2<f32>(x_355.z, x_355.w) * vec2<f32>(0.25f, 0.25f));
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_359.x, x_359.y, x_360.z, x_360.w);
  let x_363 : vec4<f32> = u_xlat2;
  let x_365 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec2<f32>(x_363.x, x_363.y), vec2<f32>(x_365.x, x_365.y));
  let x_368 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_368);
  let x_370 : f32 = u_xlat16;
  u_xlat16 = min(x_370, 1.0f);
  let x_372 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_372);
  let x_374 : f32 = u_xlat15;
  u_xlat15 = clamp(x_374, 0.0f, 1.0f);
  let x_376 : f32 = u_xlat15;
  let x_378 : vec3<f32> = u_xlat0;
  let x_380 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_376, x_376, x_376) * x_378) + x_380);
  let x_382 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_382 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_386 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_386 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_390 : vec3<f32> = u_xlat1;
  u_xlat1 = max(abs(x_390), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_393 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_393);
  let x_395 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_395 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_399 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_399);
  let x_401 : vec3<f32> = u_xlat0;
  let x_404 : vec3<f32> = (x_401 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_409 : vec3<f32> = u_xlat0;
  let x_411 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_409.x, x_409.y, x_409.z, x_409.x));
  u_xlatb0 = vec3<bool>(x_411.x, x_411.y, x_411.z);
  let x_414 : bool = u_xlatb0.x;
  if (x_414) {
    let x_419 : f32 = u_xlat2.x;
    x_415 = x_419;
  } else {
    let x_422 : f32 = u_xlat1.x;
    x_415 = x_422;
  }
  let x_423 : f32 = x_415;
  u_xlat0.x = x_423;
  let x_426 : bool = u_xlatb0.y;
  if (x_426) {
    let x_431 : f32 = u_xlat2.y;
    x_427 = x_431;
  } else {
    let x_434 : f32 = u_xlat1.y;
    x_427 = x_434;
  }
  let x_435 : f32 = x_427;
  u_xlat0.y = x_435;
  let x_438 : bool = u_xlatb0.z;
  if (x_438) {
    let x_443 : f32 = u_xlat2.z;
    x_439 = x_443;
  } else {
    let x_446 : f32 = u_xlat1.z;
    x_439 = x_446;
  }
  let x_447 : f32 = x_439;
  u_xlat0.z = x_447;
  let x_451 : f32 = x_46.x_MainTex_TexelSize.w;
  let x_453 : f32 = x_46.x_Params.y;
  u_xlat15 = (x_451 * x_453);
  let x_455 : f32 = u_xlat15;
  let x_457 : f32 = x_46.x_MainTex_TexelSize.z;
  u_xlat15 = (x_455 / x_457);
  let x_459 : f32 = u_xlat15;
  u_xlat1.y = floor(x_459);
  let x_463 : f32 = x_46.x_Params.y;
  u_xlat1.x = x_463;
  let x_466 : vec4<f32> = x_46.x_MainTex_TexelSize;
  let x_468 : vec3<f32> = u_xlat1;
  let x_470 : vec2<f32> = (vec2<f32>(x_466.z, x_466.w) / vec2<f32>(x_468.x, x_468.y));
  let x_471 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_470.x, x_470.y, x_471.z);
  let x_473 : vec4<f32> = hlslcc_FragCoord;
  let x_475 : vec3<f32> = u_xlat1;
  let x_477 : vec2<f32> = (vec2<f32>(x_473.x, x_473.y) / vec2<f32>(x_475.x, x_475.y));
  let x_478 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat2;
  let x_482 : vec2<f32> = floor(vec2<f32>(x_480.x, x_480.y));
  let x_483 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat2;
  let x_489 : vec2<f32> = (vec2<f32>(x_485.x, x_485.y) + vec2<f32>(0.5f, 0.5f));
  let x_490 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
  let x_494 : vec3<f32> = u_xlat1;
  let x_496 : vec4<f32> = u_xlat2;
  u_xlat12 = (vec2<f32>(x_494.x, x_494.y) * vec2<f32>(x_496.x, x_496.y));
  let x_499 : vec4<f32> = u_xlat2;
  let x_502 : vec3<f32> = u_xlat1;
  let x_505 : vec4<f32> = hlslcc_FragCoord;
  let x_507 : vec2<f32> = ((-(vec2<f32>(x_499.x, x_499.y)) * vec2<f32>(x_502.x, x_502.y)) + vec2<f32>(x_505.x, x_505.y));
  let x_508 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_511 : f32 = u_xlat1.y;
  let x_513 : f32 = u_xlat1.x;
  u_xlat15 = min(x_511, x_513);
  let x_515 : f32 = u_xlat15;
  u_xlat15 = (x_515 * 0.707106769f);
  let x_518 : vec2<f32> = u_xlat12;
  let x_520 : vec4<f32> = x_46.x_MainTex_TexelSize;
  let x_522 : vec2<f32> = (x_518 / vec2<f32>(x_520.z, x_520.w));
  let x_523 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_522.x, x_522.y, x_523.z);
  let x_525 : vec3<f32> = u_xlat1;
  let x_529 : vec2<f32> = clamp(vec2<f32>(x_525.x, x_525.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_530 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_529.x, x_529.y, x_530.z);
  let x_532 : vec3<f32> = u_xlat1;
  let x_535 : f32 = x_46.x_RenderViewportScaleFactor;
  let x_537 : vec2<f32> = (vec2<f32>(x_532.x, x_532.y) * vec2<f32>(x_535, x_535));
  let x_538 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_537.x, x_537.y, x_538.z);
  let x_543 : vec3<f32> = u_xlat1;
  let x_545 : vec4<f32> = textureSample(x_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture, vec2<f32>(x_543.x, x_543.y));
  let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
  let x_547 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_546.x, x_546.y, x_547.z);
  let x_549 : vec3<f32> = u_xlat1;
  let x_551 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) * vec2<f32>(1.0f, -1.0f));
  let x_552 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_551.x, x_551.y, x_552.z);
  let x_555 : vec3<f32> = u_xlat1;
  let x_557 : vec3<f32> = u_xlat1;
  u_xlat11 = dot(vec2<f32>(x_555.x, x_555.y), vec2<f32>(x_557.x, x_557.y));
  let x_560 : f32 = u_xlat11;
  u_xlat12.x = inverseSqrt(x_560);
  let x_564 : f32 = u_xlat11;
  u_xlatb11 = !((x_564 == 0.0f));
  let x_566 : vec3<f32> = u_xlat1;
  let x_568 : vec2<f32> = u_xlat12;
  let x_570 : vec2<f32> = (vec2<f32>(x_566.x, x_566.y) * vec2<f32>(x_568.x, x_568.x));
  let x_571 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
  let x_574 : f32 = u_xlat3.y;
  u_xlat3.z = -(x_574);
  let x_577 : vec4<f32> = u_xlat3;
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec2<f32>(x_577.x, x_577.z), vec2<f32>(x_579.x, x_579.y));
  let x_583 : vec4<f32> = u_xlat3;
  let x_585 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(vec2<f32>(x_583.y, x_583.x), vec2<f32>(x_585.x, x_585.y));
  let x_589 : f32 = u_xlat16;
  let x_590 : f32 = u_xlat15;
  u_xlat2.x = (x_589 * x_590);
  let x_593 : f32 = u_xlat15;
  let x_594 : f32 = u_xlat16;
  u_xlat15 = ((x_593 * x_594) + -2.0f);
  let x_598 : vec4<f32> = u_xlat2;
  let x_605 : vec3<f32> = u_xlat1;
  u_xlat7 = ((-(vec2<f32>(x_598.x, x_598.x)) * vec2<f32>(0.375f, -0.0625f)) + vec2<f32>(x_605.x, x_605.y));
  let x_608 : vec4<f32> = u_xlat2;
  let x_612 : vec3<f32> = (vec3<f32>(x_608.x, x_608.x, x_608.x) * vec3<f32>(0.5f, 0.25f, -0.125f));
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_616 : f32 = u_xlat3.x;
  u_xlat4.x = x_616;
  u_xlat4.y = 0.0f;
  let x_619 : vec4<f32> = u_xlat2;
  let x_625 : vec3<f32> = u_xlat4;
  let x_627 : vec2<f32> = ((-(vec2<f32>(x_619.x, x_619.x)) * vec2<f32>(0.25f, 0.125f)) + vec2<f32>(x_625.x, x_625.y));
  let x_628 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_627.x, x_628.y, x_628.z, x_627.y);
  let x_630 : vec4<f32> = u_xlat3;
  let x_633 : vec3<f32> = u_xlat4;
  let x_635 : vec2<f32> = (-(vec2<f32>(x_630.x, x_630.w)) + vec2<f32>(x_633.x, x_633.y));
  let x_636 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_635.x, x_636.y, x_636.z, x_635.y);
  let x_638 : vec4<f32> = u_xlat3;
  let x_640 : vec4<f32> = u_xlat3;
  u_xlat16 = dot(vec2<f32>(x_638.x, x_638.w), vec2<f32>(x_640.x, x_640.w));
  let x_643 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_643);
  let x_645 : vec4<f32> = u_xlat3;
  let x_647 : f32 = u_xlat16;
  let x_649 : vec2<f32> = (vec2<f32>(x_645.x, x_645.w) / vec2<f32>(x_647, x_647));
  let x_650 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_649.x, x_649.y, x_650.z);
  let x_653 : f32 = u_xlat4.x;
  u_xlat4.z = -(x_653);
  let x_656 : vec2<f32> = u_xlat7;
  let x_657 : vec3<f32> = u_xlat4;
  u_xlat16 = dot(x_656, vec2<f32>(x_657.y, x_657.z));
  let x_660 : vec4<f32> = u_xlat2;
  let x_666 : vec3<f32> = u_xlat1;
  u_xlat7 = ((-(vec2<f32>(x_660.x, x_660.x)) * vec2<f32>(0.375f, 0.0625f)) + vec2<f32>(x_666.x, x_666.y));
  let x_669 : vec3<f32> = u_xlat1;
  let x_673 : vec2<f32> = (vec2<f32>(x_669.x, x_669.y) + vec2<f32>(1.0f, -0.0f));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_674.y, x_674.z, x_673.y);
  let x_677 : f32 = u_xlat2.x;
  let x_681 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_677 * -0.25f) + x_681);
  let x_684 : vec4<f32> = u_xlat3;
  let x_687 : vec4<f32> = u_xlat3;
  u_xlat6 = dot(-(vec2<f32>(x_684.y, x_684.z)), -(vec2<f32>(x_687.y, x_687.z)));
  let x_691 : f32 = u_xlat6;
  u_xlat6 = sqrt(x_691);
  let x_693 : vec4<f32> = u_xlat3;
  let x_696 : f32 = u_xlat6;
  let x_698 : vec2<f32> = (-(vec2<f32>(x_693.y, x_693.z)) / vec2<f32>(x_696, x_696));
  let x_699 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_698.x, x_698.y, x_699.z);
  let x_702 : f32 = u_xlat4.x;
  u_xlat4.z = -(x_702);
  let x_705 : vec2<f32> = u_xlat7;
  let x_706 : vec3<f32> = u_xlat4;
  u_xlat6 = dot(x_705, vec2<f32>(x_706.y, x_706.z));
  let x_709 : f32 = u_xlat16;
  let x_710 : f32 = u_xlat6;
  u_xlat6 = max(x_709, x_710);
  let x_713 : f32 = u_xlat1.x;
  let x_715 : f32 = u_xlat6;
  u_xlat1.x = max(-(x_713), x_715);
  let x_718 : f32 = u_xlat15;
  let x_719 : f32 = u_xlat15;
  u_xlat6 = (x_718 / abs(x_719));
  let x_722 : f32 = u_xlat6;
  let x_724 : f32 = u_xlat3.x;
  u_xlat16 = (x_722 * x_724);
  let x_726 : f32 = u_xlat6;
  let x_729 : f32 = u_xlat3.w;
  u_xlat6 = (-(x_726) * x_729);
  let x_731 : f32 = u_xlat15;
  let x_735 : f32 = u_xlat16;
  u_xlat15 = ((-(abs(x_731)) * 0.5f) + abs(x_735));
  let x_738 : f32 = u_xlat15;
  let x_739 : f32 = u_xlat6;
  u_xlat15 = max(x_738, abs(x_739));
  let x_742 : f32 = u_xlat15;
  let x_744 : f32 = u_xlat1.x;
  u_xlat15 = min(x_742, x_744);
  let x_746 : f32 = u_xlat15;
  u_xlat15 = clamp(x_746, 0.0f, 1.0f);
  let x_748 : f32 = u_xlat15;
  u_xlat15 = (-(x_748) + 1.0f);
  let x_751 : bool = u_xlatb11;
  let x_752 : f32 = u_xlat15;
  u_xlat15 = select(0.0f, x_752, x_751);
  let x_756 : f32 = u_xlat15;
  let x_758 : vec3<f32> = u_xlat0;
  let x_759 : vec3<f32> = (vec3<f32>(x_756, x_756, x_756) + x_758);
  let x_760 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
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

