struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb5 : bool;
  var u_xlat5 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlat13 : f32;
  var u_xlat6 : f32;
  var u_xlat10 : f32;
  var u_xlatb14 : bool;
  var u_xlatb1 : bool;
  var x_223 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_321 : f32;
  var x_333 : f32;
  var x_346 : f32;
  var u_xlat4 : vec3<f32>;
  var x_473 : f32;
  var x_485 : f32;
  var x_497 : f32;
  var u_xlat12 : f32;
  var x_582 : f32;
  var x_594 : f32;
  var x_606 : f32;
  var x_648 : f32;
  var x_661 : f32;
  var x_673 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_81);
  let x_83 : bool = u_xlatb5;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat5 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat5.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat5.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat5.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_113);
    let x_116 : f32 = u_xlat5.x;
    let x_117 : f32 = u_xlat9;
    u_xlat5.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec3<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat5;
    let x_127 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_132);
    let x_134 : f32 = u_xlat13;
    let x_136 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat13 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_139 * x_141);
    let x_145 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_145), 1.0f);
    let x_151 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_151), 1.0f);
    let x_154 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_154);
    let x_156 : f32 = u_xlat6;
    let x_158 : f32 = u_xlat2.x;
    u_xlat2.x = (x_156 * x_158);
    let x_162 : f32 = u_xlat2.x;
    let x_164 : f32 = u_xlat2.x;
    u_xlat6 = (x_162 * x_164);
    let x_167 : f32 = u_xlat6;
    u_xlat10 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat6;
    let x_173 : f32 = u_xlat10;
    u_xlat10 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat6;
    let x_178 : f32 = u_xlat10;
    u_xlat10 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat6;
    let x_183 : f32 = u_xlat10;
    u_xlat6 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat6;
    let x_189 : f32 = u_xlat2.x;
    u_xlat10 = (x_187 * x_189);
    let x_193 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_193));
    let x_196 : f32 = u_xlat10;
    u_xlat10 = ((x_196 * -2.0f) + 1.570796371f);
    let x_201 : bool = u_xlatb14;
    let x_202 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_202, x_201);
    let x_205 : f32 = u_xlat2.x;
    let x_206 : f32 = u_xlat6;
    let x_208 : f32 = u_xlat10;
    u_xlat2.x = ((x_205 * x_206) + x_208);
    let x_212 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_212, 1.0f);
    let x_217 : f32 = u_xlat1.x;
    let x_219 : f32 = u_xlat1.x;
    u_xlatb1 = (x_217 < -(x_219));
    let x_222 : bool = u_xlatb1;
    if (x_222) {
      let x_227 : f32 = u_xlat2.x;
      x_223 = -(x_227);
    } else {
      let x_231 : f32 = u_xlat2.x;
      x_223 = x_231;
    }
    let x_232 : f32 = x_223;
    u_xlat1.x = x_232;
    let x_234 : f32 = u_xlat13;
    let x_236 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_234 * x_236) + -1.0f);
    let x_240 : vec3<f32> = u_xlat0;
    let x_242 : vec4<f32> = u_xlat1;
    let x_245 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_240.x, x_240.y) * vec2<f32>(x_242.x, x_242.x)) + x_245);
  }
  let x_258 : vec2<f32> = vs_TEXCOORD0;
  let x_259 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_258);
  u_xlat0.x = x_259.x;
  let x_267 : vec2<f32> = u_xlat5;
  let x_268 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_267);
  u_xlat1 = x_268;
  let x_269 : vec3<f32> = u_xlat0;
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_269.x, x_269.x, x_269.x) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_274, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_279 : f32 = u_xlat1.w;
  u_xlat13 = x_279;
  let x_280 : f32 = u_xlat13;
  u_xlat13 = clamp(x_280, 0.0f, 1.0f);
  let x_282 : vec3<f32> = u_xlat0;
  let x_286 : vec3<f32> = (vec3<f32>(x_282.z, x_282.x, x_282.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec3<f32> = u_xlat0;
  u_xlat2 = max(vec3<f32>(x_289.z, x_289.x, x_289.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_294 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_294);
  let x_296 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_296 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_300 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_300);
  let x_302 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_302 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_314 : vec3<f32> = u_xlat0;
  let x_317 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_314.z, x_314.x, x_314.y, x_314.z));
  u_xlatb0 = vec3<bool>(x_317.x, x_317.y, x_317.z);
  let x_320 : bool = u_xlatb0.x;
  if (x_320) {
    let x_325 : f32 = u_xlat1.x;
    x_321 = x_325;
  } else {
    let x_328 : f32 = u_xlat2.x;
    x_321 = x_328;
  }
  let x_329 : f32 = x_321;
  u_xlat0.x = x_329;
  let x_332 : bool = u_xlatb0.y;
  if (x_332) {
    let x_337 : f32 = u_xlat1.y;
    x_333 = x_337;
  } else {
    let x_340 : f32 = u_xlat2.y;
    x_333 = x_340;
  }
  let x_341 : f32 = x_333;
  u_xlat0.y = x_341;
  let x_345 : bool = u_xlatb0.z;
  if (x_345) {
    let x_350 : f32 = u_xlat1.z;
    x_346 = x_350;
  } else {
    let x_353 : f32 = u_xlat2.z;
    x_346 = x_353;
  }
  let x_354 : f32 = x_346;
  u_xlat0.z = x_354;
  let x_357 : vec3<f32> = u_xlat0;
  let x_361 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat4 = (x_357 * vec3<f32>(x_361.z, x_361.z, x_361.z));
  let x_365 : f32 = u_xlat4.x;
  u_xlat4.x = floor(x_365);
  let x_369 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_371 : vec2<f32> = (vec2<f32>(x_369.x, x_369.y) * vec2<f32>(0.5f, 0.5f));
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
  let x_374 : vec3<f32> = u_xlat4;
  let x_377 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_380 : vec4<f32> = u_xlat1;
  let x_382 : vec2<f32> = ((vec2<f32>(x_374.y, x_374.z) * vec2<f32>(x_377.x, x_377.y)) + vec2<f32>(x_380.x, x_380.y));
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_382.x, x_382.y, x_383.w);
  let x_386 : f32 = u_xlat4.x;
  let x_388 : f32 = x_26.x_Lut2D_Params.y;
  let x_391 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_386 * x_388) + x_391);
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_399.x, x_399.z));
  u_xlat2 = vec3<f32>(x_401.x, x_401.y, x_401.z);
  let x_404 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_404;
  u_xlat3.y = 0.0f;
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec2<f32> = u_xlat3;
  u_xlat8 = (vec2<f32>(x_407.x, x_407.z) + x_409);
  let x_414 : vec2<f32> = u_xlat8;
  let x_415 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_414);
  let x_416 : vec3<f32> = vec3<f32>(x_415.x, x_415.y, x_415.z);
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_420 : f32 = u_xlat0.x;
  let x_422 : f32 = x_26.x_Lut2D_Params.z;
  let x_425 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_420 * x_422) + -(x_425));
  let x_429 : vec3<f32> = u_xlat2;
  let x_431 : vec4<f32> = u_xlat1;
  u_xlat4 = (-(x_429) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec3<f32> = u_xlat0;
  let x_436 : vec3<f32> = u_xlat4;
  let x_438 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_434.x, x_434.x, x_434.x) * x_436) + x_438);
  let x_440 : vec3<f32> = u_xlat0;
  let x_443 : vec3<f32> = (x_440 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_444 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_446 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_450 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_450 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_454 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_454), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_457 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_457);
  let x_459 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_459 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_463 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_463);
  let x_467 : vec3<f32> = u_xlat0;
  let x_469 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_467.x, x_467.y, x_467.z, x_467.x));
  u_xlatb0 = vec3<bool>(x_469.x, x_469.y, x_469.z);
  let x_472 : bool = u_xlatb0.x;
  if (x_472) {
    let x_477 : f32 = u_xlat1.x;
    x_473 = x_477;
  } else {
    let x_480 : f32 = u_xlat2.x;
    x_473 = x_480;
  }
  let x_481 : f32 = x_473;
  u_xlat0.x = x_481;
  let x_484 : bool = u_xlatb0.y;
  if (x_484) {
    let x_489 : f32 = u_xlat1.y;
    x_485 = x_489;
  } else {
    let x_492 : f32 = u_xlat2.y;
    x_485 = x_492;
  }
  let x_493 : f32 = x_485;
  u_xlat0.y = x_493;
  let x_496 : bool = u_xlatb0.z;
  if (x_496) {
    let x_501 : f32 = u_xlat1.z;
    x_497 = x_501;
  } else {
    let x_504 : f32 = u_xlat2.z;
    x_497 = x_504;
  }
  let x_505 : f32 = x_497;
  u_xlat0.z = x_505;
  let x_507 : vec2<f32> = vs_TEXCOORD0;
  let x_510 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_514 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_516 : vec2<f32> = ((x_507 * vec2<f32>(x_510.x, x_510.y)) + vec2<f32>(x_514.z, x_514.w));
  let x_517 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
  let x_525 : vec4<f32> = u_xlat1;
  let x_527 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_525.x, x_525.y));
  u_xlat12 = x_527.w;
  let x_529 : f32 = u_xlat12;
  u_xlat12 = ((x_529 * 2.0f) + -1.0f);
  let x_533 : f32 = u_xlat12;
  u_xlat1.x = ((x_533 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_539 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_539, 0.0f, 1.0f);
  let x_543 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_543 * 2.0f) + -1.0f);
  let x_547 : f32 = u_xlat12;
  u_xlat12 = (-(abs(x_547)) + 1.0f);
  let x_551 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_551);
  let x_553 : f32 = u_xlat12;
  u_xlat12 = (-(x_553) + 1.0f);
  let x_556 : f32 = u_xlat12;
  let x_558 : f32 = u_xlat1.x;
  u_xlat12 = (x_556 * x_558);
  let x_560 : vec3<f32> = u_xlat0;
  let x_561 : vec3<f32> = (x_560 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_562 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_564), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_567 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_567);
  let x_569 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_569 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_571 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_571);
  let x_573 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_573 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_576 : vec3<f32> = u_xlat0;
  let x_578 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_576.x, x_576.y, x_576.z, x_576.x));
  u_xlatb0 = vec3<bool>(x_578.x, x_578.y, x_578.z);
  let x_581 : bool = u_xlatb0.x;
  if (x_581) {
    let x_586 : f32 = u_xlat1.x;
    x_582 = x_586;
  } else {
    let x_589 : f32 = u_xlat2.x;
    x_582 = x_589;
  }
  let x_590 : f32 = x_582;
  u_xlat0.x = x_590;
  let x_593 : bool = u_xlatb0.y;
  if (x_593) {
    let x_598 : f32 = u_xlat1.y;
    x_594 = x_598;
  } else {
    let x_601 : f32 = u_xlat2.y;
    x_594 = x_601;
  }
  let x_602 : f32 = x_594;
  u_xlat0.y = x_602;
  let x_605 : bool = u_xlatb0.z;
  if (x_605) {
    let x_610 : f32 = u_xlat1.z;
    x_606 = x_610;
  } else {
    let x_613 : f32 = u_xlat2.z;
    x_606 = x_613;
  }
  let x_614 : f32 = x_606;
  u_xlat0.z = x_614;
  let x_616 : f32 = u_xlat12;
  let x_621 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_616, x_616, x_616) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_621);
  let x_623 : vec3<f32> = u_xlat0;
  let x_624 : vec3<f32> = (x_623 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_627 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_629 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_629 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_631 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_631), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_634 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_634);
  let x_636 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_636 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_638 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_638);
  let x_640 : vec3<f32> = u_xlat0;
  let x_642 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_640.x, x_640.y, x_640.z, x_640.x));
  u_xlatb0 = vec3<bool>(x_642.x, x_642.y, x_642.z);
  let x_647 : bool = u_xlatb0.x;
  if (x_647) {
    let x_652 : f32 = u_xlat1.x;
    x_648 = x_652;
  } else {
    let x_655 : f32 = u_xlat2.x;
    x_648 = x_655;
  }
  let x_656 : f32 = x_648;
  SV_Target0.x = x_656;
  let x_660 : bool = u_xlatb0.y;
  if (x_660) {
    let x_665 : f32 = u_xlat1.y;
    x_661 = x_665;
  } else {
    let x_668 : f32 = u_xlat2.y;
    x_661 = x_668;
  }
  let x_669 : f32 = x_661;
  SV_Target0.y = x_669;
  let x_672 : bool = u_xlatb0.z;
  if (x_672) {
    let x_677 : f32 = u_xlat1.z;
    x_673 = x_677;
  } else {
    let x_680 : f32 = u_xlat2.z;
    x_673 = x_680;
  }
  let x_681 : f32 = x_673;
  SV_Target0.z = x_681;
  let x_683 : f32 = u_xlat13;
  SV_Target0.w = x_683;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

