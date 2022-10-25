struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : vec3<bool>;
  var x_227 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_408 : f32;
  var x_420 : f32;
  var x_432 : f32;
  var u_xlat4 : vec2<f32>;
  var x_577 : f32;
  var x_589 : f32;
  var x_601 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_44 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
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
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat6;
    let x_127 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_132);
    let x_134 : f32 = u_xlat16;
    let x_136 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_25.x_Distortion_Params2.y;
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
    let x_219 : f32 = u_xlat1.x;
    let x_221 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_219 < -(x_221));
    let x_226 : bool = u_xlatb1.x;
    if (x_226) {
      let x_231 : f32 = u_xlat2.x;
      x_227 = -(x_231);
    } else {
      let x_235 : f32 = u_xlat2.x;
      x_227 = x_235;
    }
    let x_236 : f32 = x_227;
    u_xlat1.x = x_236;
    let x_238 : f32 = u_xlat16;
    let x_240 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_238 * x_240) + -1.0f);
    let x_244 : vec4<f32> = u_xlat0;
    let x_246 : vec3<f32> = u_xlat1;
    let x_249 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_244.x, x_244.y) * vec2<f32>(x_246.x, x_246.x)) + x_249);
  }
  let x_261 : vec2<f32> = u_xlat6;
  let x_264 : f32 = x_25.x_GlobalMipBias.x;
  let x_265 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_261, x_264);
  let x_266 : vec3<f32> = vec3<f32>(x_265.x, x_265.y, x_265.z);
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_273 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_273);
  let x_275 : bool = u_xlatb15;
  if (x_275) {
    let x_278 : vec2<f32> = u_xlat6;
    let x_280 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_283 : vec2<f32> = (x_278 + -(vec2<f32>(x_280.x, x_280.y)));
    let x_284 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_283.x, x_283.y, x_284.z);
    let x_286 : vec3<f32> = u_xlat1;
    let x_290 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_292 : vec2<f32> = (abs(vec2<f32>(x_286.x, x_286.y)) * vec2<f32>(x_290.z, x_290.z));
    let x_293 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_293.x, x_292.x, x_292.y);
    let x_296 : f32 = u_xlat1.y;
    let x_299 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_296 * x_299);
    let x_303 : vec3<f32> = u_xlat1;
    let x_305 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_303.x, x_303.z), vec2<f32>(x_305.x, x_305.z));
    let x_308 : f32 = u_xlat15;
    u_xlat15 = (-(x_308) + 1.0f);
    let x_311 : f32 = u_xlat15;
    u_xlat15 = max(x_311, 0.0f);
    let x_313 : f32 = u_xlat15;
    u_xlat15 = log2(x_313);
    let x_315 : f32 = u_xlat15;
    let x_317 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_315 * x_317);
    let x_319 : f32 = u_xlat15;
    u_xlat15 = exp2(x_319);
    let x_322 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_327 : f32 = u_xlat15;
    let x_329 : vec3<f32> = u_xlat1;
    let x_332 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_327, x_327, x_327) * x_329) + vec3<f32>(x_332.x, x_332.y, x_332.z));
    let x_335 : vec4<f32> = u_xlat0;
    let x_337 : vec3<f32> = u_xlat1;
    let x_338 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * x_337);
    let x_339 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  }
  let x_341 : vec4<f32> = u_xlat0;
  let x_345 : vec4<f32> = x_25.x_Lut_Params;
  let x_347 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_345.w, x_345.w, x_345.w));
  let x_348 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat0;
  let x_354 : vec3<f32> = clamp(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_355 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_359 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_359);
  let x_361 : bool = u_xlatb15;
  if (x_361) {
    let x_364 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_369 : vec4<f32> = u_xlat0;
    let x_371 : vec3<f32> = log2(vec3<f32>(x_369.x, x_369.y, x_369.z));
    let x_372 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_374 : vec4<f32> = u_xlat2;
    let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_379 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
    let x_381 : vec4<f32> = u_xlat2;
    let x_383 : vec3<f32> = exp2(vec3<f32>(x_381.x, x_381.y, x_381.z));
    let x_384 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
    let x_386 : vec4<f32> = u_xlat2;
    let x_393 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_394 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
    let x_399 : vec4<f32> = u_xlat0;
    let x_402 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_399.x, x_399.y, x_399.z, x_399.x));
    u_xlatb3 = vec3<bool>(x_402.x, x_402.y, x_402.z);
    let x_405 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_405;
    let x_407 : bool = u_xlatb3.x;
    if (x_407) {
      let x_412 : f32 = u_xlat1.x;
      x_408 = x_412;
    } else {
      let x_415 : f32 = u_xlat2.x;
      x_408 = x_415;
    }
    let x_416 : f32 = x_408;
    hlslcc_movcTemp.x = x_416;
    let x_419 : bool = u_xlatb3.y;
    if (x_419) {
      let x_424 : f32 = u_xlat1.y;
      x_420 = x_424;
    } else {
      let x_427 : f32 = u_xlat2.y;
      x_420 = x_427;
    }
    let x_428 : f32 = x_420;
    hlslcc_movcTemp.y = x_428;
    let x_431 : bool = u_xlatb3.z;
    if (x_431) {
      let x_436 : f32 = u_xlat1.z;
      x_432 = x_436;
    } else {
      let x_439 : f32 = u_xlat2.z;
      x_432 = x_439;
    }
    let x_440 : f32 = x_432;
    hlslcc_movcTemp.z = x_440;
    let x_442 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_442;
    let x_443 : vec3<f32> = u_xlat1;
    let x_446 : vec4<f32> = x_25.x_UserLut_Params;
    let x_448 : vec3<f32> = (vec3<f32>(x_443.z, x_443.x, x_443.y) * vec3<f32>(x_446.z, x_446.z, x_446.z));
    let x_449 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_452 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_452);
    let x_455 : vec4<f32> = x_25.x_UserLut_Params;
    let x_457 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) * vec2<f32>(0.5f, 0.5f));
    let x_458 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_457.x, x_458.y, x_458.z, x_457.y);
    let x_460 : vec4<f32> = u_xlat2;
    let x_463 : vec4<f32> = x_25.x_UserLut_Params;
    let x_466 : vec4<f32> = u_xlat2;
    let x_468 : vec2<f32> = ((vec2<f32>(x_460.y, x_460.z) * vec2<f32>(x_463.x, x_463.y)) + vec2<f32>(x_466.x, x_466.w));
    let x_469 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_469.x, x_468.x, x_468.y, x_469.w);
    let x_471 : f32 = u_xlat15;
    let x_473 : f32 = x_25.x_UserLut_Params.y;
    let x_476 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_471 * x_473) + x_476);
    let x_483 : vec4<f32> = u_xlat2;
    let x_485 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_483.x, x_483.z), 0.0f);
    u_xlat3 = vec3<f32>(x_485.x, x_485.y, x_485.z);
    let x_489 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_489;
    u_xlat4.y = 0.0f;
    let x_492 : vec4<f32> = u_xlat2;
    let x_494 : vec2<f32> = u_xlat4;
    let x_495 : vec2<f32> = (vec2<f32>(x_492.x, x_492.z) + x_494);
    let x_496 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
    let x_501 : vec4<f32> = u_xlat2;
    let x_503 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_501.x, x_501.y), 0.0f);
    let x_504 : vec3<f32> = vec3<f32>(x_503.x, x_503.y, x_503.z);
    let x_505 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
    let x_508 : f32 = u_xlat1.z;
    let x_510 : f32 = x_25.x_UserLut_Params.z;
    let x_512 : f32 = u_xlat15;
    u_xlat15 = ((x_508 * x_510) + -(x_512));
    let x_515 : vec3<f32> = u_xlat3;
    let x_517 : vec4<f32> = u_xlat2;
    let x_519 : vec3<f32> = (-(x_515) + vec3<f32>(x_517.x, x_517.y, x_517.z));
    let x_520 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
    let x_522 : f32 = u_xlat15;
    let x_524 : vec4<f32> = u_xlat2;
    let x_527 : vec3<f32> = u_xlat3;
    let x_528 : vec3<f32> = ((vec3<f32>(x_522, x_522, x_522) * vec3<f32>(x_524.x, x_524.y, x_524.z)) + x_527);
    let x_529 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
    let x_531 : vec3<f32> = u_xlat1;
    let x_533 : vec4<f32> = u_xlat2;
    let x_535 : vec3<f32> = (-(x_531) + vec3<f32>(x_533.x, x_533.y, x_533.z));
    let x_536 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
    let x_539 : vec4<f32> = x_25.x_UserLut_Params;
    let x_541 : vec4<f32> = u_xlat2;
    let x_544 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_539.w, x_539.w, x_539.w) * vec3<f32>(x_541.x, x_541.y, x_541.z)) + x_544);
    let x_546 : vec3<f32> = u_xlat1;
    let x_549 : vec3<f32> = (x_546 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_550 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
    let x_552 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_552 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_556 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_556 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_560 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_560));
    let x_563 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_563 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_567 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_567);
    let x_571 : vec3<f32> = u_xlat1;
    let x_573 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_571.x, x_571.y, x_571.z, x_571.x));
    u_xlatb1 = vec3<bool>(x_573.x, x_573.y, x_573.z);
    let x_576 : bool = u_xlatb1.x;
    if (x_576) {
      let x_581 : f32 = u_xlat2.x;
      x_577 = x_581;
    } else {
      let x_584 : f32 = u_xlat3.x;
      x_577 = x_584;
    }
    let x_585 : f32 = x_577;
    u_xlat0.x = x_585;
    let x_588 : bool = u_xlatb1.y;
    if (x_588) {
      let x_593 : f32 = u_xlat2.y;
      x_589 = x_593;
    } else {
      let x_596 : f32 = u_xlat3.y;
      x_589 = x_596;
    }
    let x_597 : f32 = x_589;
    u_xlat0.y = x_597;
    let x_600 : bool = u_xlatb1.z;
    if (x_600) {
      let x_605 : f32 = u_xlat2.z;
      x_601 = x_605;
    } else {
      let x_608 : f32 = u_xlat3.z;
      x_601 = x_608;
    }
    let x_609 : f32 = x_601;
    u_xlat0.z = x_609;
  }
  let x_611 : vec4<f32> = u_xlat0;
  let x_614 : vec4<f32> = x_25.x_Lut_Params;
  let x_616 : vec3<f32> = (vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_614.z, x_614.z, x_614.z));
  let x_617 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_616.z);
  let x_620 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_620);
  let x_623 : vec4<f32> = x_25.x_Lut_Params;
  let x_625 : vec2<f32> = (vec2<f32>(x_623.x, x_623.y) * vec2<f32>(0.5f, 0.5f));
  let x_626 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_625.x, x_625.y, x_626.z);
  let x_628 : vec4<f32> = u_xlat0;
  let x_631 : vec4<f32> = x_25.x_Lut_Params;
  let x_634 : vec3<f32> = u_xlat1;
  let x_636 : vec2<f32> = ((vec2<f32>(x_628.x, x_628.y) * vec2<f32>(x_631.x, x_631.y)) + vec2<f32>(x_634.x, x_634.y));
  let x_637 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_637.x, x_636.x, x_636.y);
  let x_639 : f32 = u_xlat15;
  let x_641 : f32 = x_25.x_Lut_Params.y;
  let x_644 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_639 * x_641) + x_644);
  let x_651 : vec3<f32> = u_xlat1;
  let x_653 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_651.x, x_651.z), 0.0f);
  let x_654 : vec3<f32> = vec3<f32>(x_653.x, x_653.y, x_653.z);
  let x_655 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_658 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_658;
  u_xlat0.y = 0.0f;
  let x_661 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = u_xlat1;
  let x_665 : vec2<f32> = (vec2<f32>(x_661.x, x_661.y) + vec2<f32>(x_663.x, x_663.z));
  let x_666 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
  let x_671 : vec4<f32> = u_xlat0;
  let x_673 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_671.x, x_671.y), 0.0f);
  u_xlat1 = vec3<f32>(x_673.x, x_673.y, x_673.z);
  let x_676 : f32 = u_xlat0.z;
  let x_678 : f32 = x_25.x_Lut_Params.z;
  let x_680 : f32 = u_xlat15;
  u_xlat0.x = ((x_676 * x_678) + -(x_680));
  let x_685 : vec4<f32> = u_xlat2;
  let x_688 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_685.x, x_685.y, x_685.z)) + x_688);
  let x_690 : vec4<f32> = u_xlat0;
  let x_692 : vec3<f32> = u_xlat5;
  let x_694 : vec4<f32> = u_xlat2;
  let x_696 : vec3<f32> = ((vec3<f32>(x_690.x, x_690.x, x_690.x) * x_692) + vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_701 : vec4<f32> = u_xlat0;
  let x_703 : vec3<f32> = sqrt(vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  SV_Target0.w = 1.0f;
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

