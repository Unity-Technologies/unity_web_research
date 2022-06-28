struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(6) var sampler_Lut2D : sampler;

var<private> u_xlat4 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_224 : f32;
  var x_323 : f32;
  var x_335 : f32;
  var x_348 : f32;
  var x_471 : f32;
  var x_483 : f32;
  var x_495 : f32;
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
      let x_228 : f32 = u_xlat2.x;
      x_224 = -(x_228);
    } else {
      let x_232 : f32 = u_xlat2.x;
      x_224 = x_232;
    }
    let x_233 : f32 = x_224;
    u_xlat1.x = x_233;
    let x_235 : f32 = u_xlat16;
    let x_237 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_235 * x_237) + -1.0f);
    let x_241 : vec3<f32> = u_xlat0;
    let x_243 : vec4<f32> = u_xlat1;
    let x_246 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_241.x, x_241.y) * vec2<f32>(x_243.x, x_243.x)) + x_246);
  }
  let x_259 : vec2<f32> = vs_TEXCOORD0;
  let x_260 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_259);
  u_xlat0.x = x_260.x;
  let x_268 : vec2<f32> = u_xlat6;
  let x_269 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_268);
  u_xlat1 = x_269;
  let x_270 : vec3<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_270.x, x_270.x, x_270.x) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_275, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_280 : f32 = u_xlat1.w;
  u_xlat1.w = x_280;
  let x_283 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_283, 0.0f, 1.0f);
  let x_286 : vec3<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_286.z, x_286.x, x_286.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_291 : vec3<f32> = u_xlat0;
  u_xlat3 = max(vec3<f32>(x_291.z, x_291.x, x_291.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_296 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_296);
  let x_298 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_298 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_302 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_302);
  let x_304 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_304 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_316 : vec3<f32> = u_xlat0;
  let x_319 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_316.z, x_316.x, x_316.y, x_316.z));
  u_xlatb0 = vec3<bool>(x_319.x, x_319.y, x_319.z);
  let x_322 : bool = u_xlatb0.x;
  if (x_322) {
    let x_327 : f32 = u_xlat2.x;
    x_323 = x_327;
  } else {
    let x_330 : f32 = u_xlat3.x;
    x_323 = x_330;
  }
  let x_331 : f32 = x_323;
  u_xlat0.x = x_331;
  let x_334 : bool = u_xlatb0.y;
  if (x_334) {
    let x_339 : f32 = u_xlat2.y;
    x_335 = x_339;
  } else {
    let x_342 : f32 = u_xlat3.y;
    x_335 = x_342;
  }
  let x_343 : f32 = x_335;
  u_xlat0.y = x_343;
  let x_347 : bool = u_xlatb0.z;
  if (x_347) {
    let x_352 : f32 = u_xlat2.z;
    x_348 = x_352;
  } else {
    let x_355 : f32 = u_xlat3.z;
    x_348 = x_355;
  }
  let x_356 : f32 = x_348;
  u_xlat0.z = x_356;
  let x_359 : vec3<f32> = u_xlat0;
  let x_363 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat5 = (x_359 * vec3<f32>(x_363.z, x_363.z, x_363.z));
  let x_367 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_367);
  let x_371 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_373 : vec2<f32> = (vec2<f32>(x_371.x, x_371.y) * vec2<f32>(0.5f, 0.5f));
  let x_374 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_373.x, x_373.y, x_374.z);
  let x_376 : vec3<f32> = u_xlat5;
  let x_379 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_382 : vec3<f32> = u_xlat2;
  let x_384 : vec2<f32> = ((vec2<f32>(x_376.y, x_376.z) * vec2<f32>(x_379.x, x_379.y)) + vec2<f32>(x_382.x, x_382.y));
  let x_385 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_385.x, x_384.x, x_384.y);
  let x_388 : f32 = u_xlat5.x;
  let x_390 : f32 = x_26.x_Lut2D_Params.y;
  let x_393 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_388 * x_390) + x_393);
  let x_401 : vec3<f32> = u_xlat2;
  let x_403 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_401.x, x_401.z));
  u_xlat3 = vec3<f32>(x_403.x, x_403.y, x_403.z);
  let x_407 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_407;
  u_xlat4.y = 0.0f;
  let x_410 : vec3<f32> = u_xlat2;
  let x_412 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_410.x, x_410.z) + x_412);
  let x_417 : vec2<f32> = u_xlat10;
  let x_418 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_417);
  u_xlat2 = vec3<f32>(x_418.x, x_418.y, x_418.z);
  let x_421 : f32 = u_xlat0.x;
  let x_423 : f32 = x_26.x_Lut2D_Params.z;
  let x_426 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_421 * x_423) + -(x_426));
  let x_430 : vec3<f32> = u_xlat3;
  let x_432 : vec3<f32> = u_xlat2;
  u_xlat5 = (-(x_430) + x_432);
  let x_434 : vec3<f32> = u_xlat0;
  let x_436 : vec3<f32> = u_xlat5;
  let x_438 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_434.x, x_434.x, x_434.x) * x_436) + x_438);
  let x_440 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_440 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_444 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_444 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_448 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_448 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_452 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_452), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_455 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_455);
  let x_457 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_457 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_461 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_461);
  let x_465 : vec3<f32> = u_xlat0;
  let x_467 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_465.x, x_465.y, x_465.z, x_465.x));
  u_xlatb0 = vec3<bool>(x_467.x, x_467.y, x_467.z);
  let x_470 : bool = u_xlatb0.x;
  if (x_470) {
    let x_475 : f32 = u_xlat2.x;
    x_471 = x_475;
  } else {
    let x_478 : f32 = u_xlat3.x;
    x_471 = x_478;
  }
  let x_479 : f32 = x_471;
  u_xlat1.x = x_479;
  let x_482 : bool = u_xlatb0.y;
  if (x_482) {
    let x_487 : f32 = u_xlat2.y;
    x_483 = x_487;
  } else {
    let x_490 : f32 = u_xlat3.y;
    x_483 = x_490;
  }
  let x_491 : f32 = x_483;
  u_xlat1.y = x_491;
  let x_494 : bool = u_xlatb0.z;
  if (x_494) {
    let x_499 : f32 = u_xlat2.z;
    x_495 = x_499;
  } else {
    let x_502 : f32 = u_xlat3.z;
    x_495 = x_502;
  }
  let x_503 : f32 = x_495;
  u_xlat1.z = x_503;
  let x_507 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_507);
  let x_511 : bool = u_xlatb0.x;
  if (x_511) {
    let x_514 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_514.x, x_514.y, x_514.z);
    let x_516 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_516, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_520 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_520, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_529 : vec4<f32> = u_xlat1;
  SV_Target0 = x_529;
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

