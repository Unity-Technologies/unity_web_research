struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(5) var sampler_Lut2D : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_322 : f32;
  var x_334 : f32;
  var x_347 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var x_470 : f32;
  var x_482 : f32;
  var x_494 : f32;
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
  let x_274 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_274, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_279 : f32 = u_xlat1.w;
  u_xlat1.w = x_279;
  let x_282 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_282, 0.0f, 1.0f);
  let x_285 : vec3<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_285.z, x_285.x, x_285.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_290 : vec3<f32> = u_xlat0;
  u_xlat3 = max(vec3<f32>(x_290.z, x_290.x, x_290.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_295 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_295);
  let x_297 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_297 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_301 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_301);
  let x_303 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_303 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_315 : vec3<f32> = u_xlat0;
  let x_318 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_315.z, x_315.x, x_315.y, x_315.z));
  u_xlatb0 = vec3<bool>(x_318.x, x_318.y, x_318.z);
  let x_321 : bool = u_xlatb0.x;
  if (x_321) {
    let x_326 : f32 = u_xlat2.x;
    x_322 = x_326;
  } else {
    let x_329 : f32 = u_xlat3.x;
    x_322 = x_329;
  }
  let x_330 : f32 = x_322;
  u_xlat0.x = x_330;
  let x_333 : bool = u_xlatb0.y;
  if (x_333) {
    let x_338 : f32 = u_xlat2.y;
    x_334 = x_338;
  } else {
    let x_341 : f32 = u_xlat3.y;
    x_334 = x_341;
  }
  let x_342 : f32 = x_334;
  u_xlat0.y = x_342;
  let x_346 : bool = u_xlatb0.z;
  if (x_346) {
    let x_351 : f32 = u_xlat2.z;
    x_347 = x_351;
  } else {
    let x_354 : f32 = u_xlat3.z;
    x_347 = x_354;
  }
  let x_355 : f32 = x_347;
  u_xlat0.z = x_355;
  let x_358 : vec3<f32> = u_xlat0;
  let x_362 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat5 = (x_358 * vec3<f32>(x_362.z, x_362.z, x_362.z));
  let x_366 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_366);
  let x_370 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_372 : vec2<f32> = (vec2<f32>(x_370.x, x_370.y) * vec2<f32>(0.5f, 0.5f));
  let x_373 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_372.x, x_372.y, x_373.z);
  let x_375 : vec3<f32> = u_xlat5;
  let x_378 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_381 : vec3<f32> = u_xlat2;
  let x_383 : vec2<f32> = ((vec2<f32>(x_375.y, x_375.z) * vec2<f32>(x_378.x, x_378.y)) + vec2<f32>(x_381.x, x_381.y));
  let x_384 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_384.x, x_383.x, x_383.y);
  let x_387 : f32 = u_xlat5.x;
  let x_389 : f32 = x_26.x_Lut2D_Params.y;
  let x_392 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_387 * x_389) + x_392);
  let x_400 : vec3<f32> = u_xlat2;
  let x_402 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_400.x, x_400.z));
  u_xlat3 = vec3<f32>(x_402.x, x_402.y, x_402.z);
  let x_406 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_406;
  u_xlat4.y = 0.0f;
  let x_409 : vec3<f32> = u_xlat2;
  let x_411 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_409.x, x_409.z) + x_411);
  let x_416 : vec2<f32> = u_xlat10;
  let x_417 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_416);
  u_xlat2 = vec3<f32>(x_417.x, x_417.y, x_417.z);
  let x_420 : f32 = u_xlat0.x;
  let x_422 : f32 = x_26.x_Lut2D_Params.z;
  let x_425 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_420 * x_422) + -(x_425));
  let x_429 : vec3<f32> = u_xlat3;
  let x_431 : vec3<f32> = u_xlat2;
  u_xlat5 = (-(x_429) + x_431);
  let x_433 : vec3<f32> = u_xlat0;
  let x_435 : vec3<f32> = u_xlat5;
  let x_437 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_433.x, x_433.x, x_433.x) * x_435) + x_437);
  let x_439 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_439 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_443 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_443 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_447 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_447 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_451 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_451), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_454 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_454);
  let x_456 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_456 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_460 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_460);
  let x_464 : vec3<f32> = u_xlat0;
  let x_466 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_464.x, x_464.y, x_464.z, x_464.x));
  u_xlatb0 = vec3<bool>(x_466.x, x_466.y, x_466.z);
  let x_469 : bool = u_xlatb0.x;
  if (x_469) {
    let x_474 : f32 = u_xlat2.x;
    x_470 = x_474;
  } else {
    let x_477 : f32 = u_xlat3.x;
    x_470 = x_477;
  }
  let x_478 : f32 = x_470;
  u_xlat1.x = x_478;
  let x_481 : bool = u_xlatb0.y;
  if (x_481) {
    let x_486 : f32 = u_xlat2.y;
    x_482 = x_486;
  } else {
    let x_489 : f32 = u_xlat3.y;
    x_482 = x_489;
  }
  let x_490 : f32 = x_482;
  u_xlat1.y = x_490;
  let x_493 : bool = u_xlatb0.z;
  if (x_493) {
    let x_498 : f32 = u_xlat2.z;
    x_494 = x_498;
  } else {
    let x_501 : f32 = u_xlat3.z;
    x_494 = x_501;
  }
  let x_502 : f32 = x_494;
  u_xlat1.z = x_502;
  let x_506 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_506);
  let x_510 : bool = u_xlatb0.x;
  if (x_510) {
    let x_513 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_513.x, x_513.y, x_513.z);
    let x_515 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_515, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_519 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_519, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_528 : vec4<f32> = u_xlat1;
  SV_Target0 = x_528;
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

