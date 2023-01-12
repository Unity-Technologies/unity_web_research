struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_GrainTex : sampler;

@group(0) @binding(2) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(6) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : bool;
  var x_223 : f32;
  var u_xlat15 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_382 : f32;
  var x_394 : f32;
  var x_407 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var x_530 : f32;
  var x_542 : f32;
  var x_554 : f32;
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
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
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
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat6 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat6.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat6.y;
    u_xlat11 = (1.0f / x_113);
    let x_116 : f32 = u_xlat6.x;
    let x_117 : f32 = u_xlat11;
    u_xlat6.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec3<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat6;
    let x_127 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_132);
    let x_134 : f32 = u_xlat16;
    let x_136 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat16 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_139 * x_141);
    let x_145 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_145), 1.0f);
    let x_151 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_151), 1.0f);
    let x_154 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_154);
    let x_156 : f32 = u_xlat7;
    let x_158 : f32 = u_xlat2.x;
    u_xlat2.x = (x_156 * x_158);
    let x_162 : f32 = u_xlat2.x;
    let x_164 : f32 = u_xlat2.x;
    u_xlat7 = (x_162 * x_164);
    let x_167 : f32 = u_xlat7;
    u_xlat12 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat7;
    let x_173 : f32 = u_xlat12;
    u_xlat12 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat7;
    let x_178 : f32 = u_xlat12;
    u_xlat12 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat7;
    let x_183 : f32 = u_xlat12;
    u_xlat7 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat7;
    let x_189 : f32 = u_xlat2.x;
    u_xlat12 = (x_187 * x_189);
    let x_193 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_193));
    let x_196 : f32 = u_xlat12;
    u_xlat12 = ((x_196 * -2.0f) + 1.570796371f);
    let x_201 : bool = u_xlatb17;
    let x_202 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_202, x_201);
    let x_205 : f32 = u_xlat2.x;
    let x_206 : f32 = u_xlat7;
    let x_208 : f32 = u_xlat12;
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
    let x_234 : f32 = u_xlat16;
    let x_236 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_234 * x_236) + -1.0f);
    let x_240 : vec3<f32> = u_xlat0;
    let x_242 : vec4<f32> = u_xlat1;
    let x_245 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_240.x, x_240.y) * vec2<f32>(x_242.x, x_242.x)) + x_245);
  }
  let x_258 : vec2<f32> = vs_TEXCOORD0;
  let x_259 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_258);
  u_xlat0.x = x_259.x;
  let x_267 : vec2<f32> = u_xlat6;
  let x_268 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_267);
  u_xlat1 = x_268;
  let x_269 : vec3<f32> = u_xlat0;
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_269.x, x_269.x, x_269.x) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec2<f32> = vs_TEXCOORD1;
  let x_277 : vec4<f32> = x_26.x_Grain_Params2;
  let x_281 : vec4<f32> = x_26.x_Grain_Params2;
  let x_283 : vec2<f32> = ((x_274 * vec2<f32>(x_277.x, x_277.y)) + vec2<f32>(x_281.z, x_281.w));
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_283.x, x_283.y, x_284.z);
  let x_291 : vec3<f32> = u_xlat2;
  let x_293 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_291.x, x_291.y));
  u_xlat2 = vec3<f32>(x_293.x, x_293.y, x_293.z);
  let x_295 : vec3<f32> = u_xlat0;
  u_xlat3 = x_295;
  let x_296 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_296, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_301 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(x_301, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_307 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_307);
  let x_311 : f32 = x_26.x_Grain_Params1.x;
  let x_312 : f32 = u_xlat15;
  u_xlat15 = ((x_311 * -(x_312)) + 1.0f);
  let x_316 : vec3<f32> = u_xlat0;
  let x_317 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_316 * x_317);
  let x_319 : vec3<f32> = u_xlat2;
  let x_321 : f32 = x_26.x_Grain_Params1.y;
  let x_323 : f32 = x_26.x_Grain_Params1.y;
  let x_325 : f32 = x_26.x_Grain_Params1.y;
  u_xlat2 = (x_319 * vec3<f32>(x_321, x_323, x_325));
  let x_328 : vec3<f32> = u_xlat2;
  let x_329 : f32 = u_xlat15;
  let x_332 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_328 * vec3<f32>(x_329, x_329, x_329)) + x_332);
  let x_334 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_334, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_339 : f32 = u_xlat1.w;
  u_xlat1.w = x_339;
  let x_342 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_342, 0.0f, 1.0f);
  let x_345 : vec3<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_345.z, x_345.x, x_345.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_350 : vec3<f32> = u_xlat0;
  u_xlat3 = max(vec3<f32>(x_350.z, x_350.x, x_350.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_355 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_355);
  let x_357 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_357 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_361 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_361);
  let x_363 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_363 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_375 : vec3<f32> = u_xlat0;
  let x_378 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_375.z, x_375.x, x_375.y, x_375.z));
  u_xlatb0 = vec3<bool>(x_378.x, x_378.y, x_378.z);
  let x_381 : bool = u_xlatb0.x;
  if (x_381) {
    let x_386 : f32 = u_xlat2.x;
    x_382 = x_386;
  } else {
    let x_389 : f32 = u_xlat3.x;
    x_382 = x_389;
  }
  let x_390 : f32 = x_382;
  u_xlat0.x = x_390;
  let x_393 : bool = u_xlatb0.y;
  if (x_393) {
    let x_398 : f32 = u_xlat2.y;
    x_394 = x_398;
  } else {
    let x_401 : f32 = u_xlat3.y;
    x_394 = x_401;
  }
  let x_402 : f32 = x_394;
  u_xlat0.y = x_402;
  let x_406 : bool = u_xlatb0.z;
  if (x_406) {
    let x_411 : f32 = u_xlat2.z;
    x_407 = x_411;
  } else {
    let x_414 : f32 = u_xlat3.z;
    x_407 = x_414;
  }
  let x_415 : f32 = x_407;
  u_xlat0.z = x_415;
  let x_418 : vec3<f32> = u_xlat0;
  let x_422 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat5 = (x_418 * vec3<f32>(x_422.z, x_422.z, x_422.z));
  let x_426 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_426);
  let x_430 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_432 : vec2<f32> = (vec2<f32>(x_430.x, x_430.y) * vec2<f32>(0.5f, 0.5f));
  let x_433 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_432.x, x_432.y, x_433.z);
  let x_435 : vec3<f32> = u_xlat5;
  let x_438 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_441 : vec3<f32> = u_xlat2;
  let x_443 : vec2<f32> = ((vec2<f32>(x_435.y, x_435.z) * vec2<f32>(x_438.x, x_438.y)) + vec2<f32>(x_441.x, x_441.y));
  let x_444 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_444.x, x_443.x, x_443.y);
  let x_447 : f32 = u_xlat5.x;
  let x_449 : f32 = x_26.x_Lut2D_Params.y;
  let x_452 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_447 * x_449) + x_452);
  let x_460 : vec3<f32> = u_xlat2;
  let x_462 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_460.x, x_460.z));
  u_xlat3 = vec3<f32>(x_462.x, x_462.y, x_462.z);
  let x_466 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_466;
  u_xlat4.y = 0.0f;
  let x_469 : vec3<f32> = u_xlat2;
  let x_471 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_469.x, x_469.z) + x_471);
  let x_476 : vec2<f32> = u_xlat10;
  let x_477 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_476);
  u_xlat2 = vec3<f32>(x_477.x, x_477.y, x_477.z);
  let x_480 : f32 = u_xlat0.x;
  let x_482 : f32 = x_26.x_Lut2D_Params.z;
  let x_485 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_480 * x_482) + -(x_485));
  let x_489 : vec3<f32> = u_xlat3;
  let x_491 : vec3<f32> = u_xlat2;
  u_xlat5 = (-(x_489) + x_491);
  let x_493 : vec3<f32> = u_xlat0;
  let x_495 : vec3<f32> = u_xlat5;
  let x_497 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_493.x, x_493.x, x_493.x) * x_495) + x_497);
  let x_499 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_499 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_503 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_503 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_507 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_507 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_511 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_511), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_514 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_514);
  let x_516 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_516 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_520 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_520);
  let x_524 : vec3<f32> = u_xlat0;
  let x_526 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_524.x, x_524.y, x_524.z, x_524.x));
  u_xlatb0 = vec3<bool>(x_526.x, x_526.y, x_526.z);
  let x_529 : bool = u_xlatb0.x;
  if (x_529) {
    let x_534 : f32 = u_xlat2.x;
    x_530 = x_534;
  } else {
    let x_537 : f32 = u_xlat3.x;
    x_530 = x_537;
  }
  let x_538 : f32 = x_530;
  u_xlat1.x = x_538;
  let x_541 : bool = u_xlatb0.y;
  if (x_541) {
    let x_546 : f32 = u_xlat2.y;
    x_542 = x_546;
  } else {
    let x_549 : f32 = u_xlat3.y;
    x_542 = x_549;
  }
  let x_550 : f32 = x_542;
  u_xlat1.y = x_550;
  let x_553 : bool = u_xlatb0.z;
  if (x_553) {
    let x_558 : f32 = u_xlat2.z;
    x_554 = x_558;
  } else {
    let x_561 : f32 = u_xlat3.z;
    x_554 = x_561;
  }
  let x_562 : f32 = x_554;
  u_xlat1.z = x_562;
  let x_566 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_566);
  let x_570 : bool = u_xlatb0.x;
  if (x_570) {
    let x_573 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_573.x, x_573.y, x_573.z);
    let x_575 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_575, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_579 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_579, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_584 : vec4<f32> = u_xlat1;
  SV_Target0 = x_584;
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

