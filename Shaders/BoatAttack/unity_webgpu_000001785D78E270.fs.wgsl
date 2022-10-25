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
  var x_468 : f32;
  var x_480 : f32;
  var x_492 : f32;
  var u_xlat4 : vec2<f32>;
  var x_637 : f32;
  var x_649 : f32;
  var x_661 : f32;
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
  u_xlat1 = (vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_355 : vec4<f32> = u_xlat0;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_363 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : vec3<f32> = u_xlat1;
  let x_366 : vec4<f32> = u_xlat2;
  let x_371 : vec3<f32> = ((x_365 * vec3<f32>(x_366.x, x_366.y, x_366.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_372 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat0;
  let x_379 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec3<f32> = u_xlat1;
  let x_383 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = ((x_382 * vec3<f32>(x_383.x, x_383.y, x_383.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat2;
  let x_393 : vec4<f32> = u_xlat0;
  let x_395 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) / vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat0;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat0;
  let x_407 : vec3<f32> = (vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_408 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat0;
  let x_414 : vec3<f32> = clamp(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_415 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_419 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_419);
  let x_421 : bool = u_xlatb15;
  if (x_421) {
    let x_424 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_429 : vec4<f32> = u_xlat0;
    let x_431 : vec3<f32> = log2(vec3<f32>(x_429.x, x_429.y, x_429.z));
    let x_432 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
    let x_434 : vec4<f32> = u_xlat2;
    let x_438 : vec3<f32> = (vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_439 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
    let x_441 : vec4<f32> = u_xlat2;
    let x_443 : vec3<f32> = exp2(vec3<f32>(x_441.x, x_441.y, x_441.z));
    let x_444 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
    let x_446 : vec4<f32> = u_xlat2;
    let x_453 : vec3<f32> = ((vec3<f32>(x_446.x, x_446.y, x_446.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_454 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
    let x_459 : vec4<f32> = u_xlat0;
    let x_462 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_459.x, x_459.y, x_459.z, x_459.x));
    u_xlatb3 = vec3<bool>(x_462.x, x_462.y, x_462.z);
    let x_465 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_465;
    let x_467 : bool = u_xlatb3.x;
    if (x_467) {
      let x_472 : f32 = u_xlat1.x;
      x_468 = x_472;
    } else {
      let x_475 : f32 = u_xlat2.x;
      x_468 = x_475;
    }
    let x_476 : f32 = x_468;
    hlslcc_movcTemp.x = x_476;
    let x_479 : bool = u_xlatb3.y;
    if (x_479) {
      let x_484 : f32 = u_xlat1.y;
      x_480 = x_484;
    } else {
      let x_487 : f32 = u_xlat2.y;
      x_480 = x_487;
    }
    let x_488 : f32 = x_480;
    hlslcc_movcTemp.y = x_488;
    let x_491 : bool = u_xlatb3.z;
    if (x_491) {
      let x_496 : f32 = u_xlat1.z;
      x_492 = x_496;
    } else {
      let x_499 : f32 = u_xlat2.z;
      x_492 = x_499;
    }
    let x_500 : f32 = x_492;
    hlslcc_movcTemp.z = x_500;
    let x_502 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_502;
    let x_503 : vec3<f32> = u_xlat1;
    let x_506 : vec4<f32> = x_25.x_UserLut_Params;
    let x_508 : vec3<f32> = (vec3<f32>(x_503.z, x_503.x, x_503.y) * vec3<f32>(x_506.z, x_506.z, x_506.z));
    let x_509 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
    let x_512 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_512);
    let x_515 : vec4<f32> = x_25.x_UserLut_Params;
    let x_517 : vec2<f32> = (vec2<f32>(x_515.x, x_515.y) * vec2<f32>(0.5f, 0.5f));
    let x_518 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_517.x, x_518.y, x_518.z, x_517.y);
    let x_520 : vec4<f32> = u_xlat2;
    let x_523 : vec4<f32> = x_25.x_UserLut_Params;
    let x_526 : vec4<f32> = u_xlat2;
    let x_528 : vec2<f32> = ((vec2<f32>(x_520.y, x_520.z) * vec2<f32>(x_523.x, x_523.y)) + vec2<f32>(x_526.x, x_526.w));
    let x_529 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_529.x, x_528.x, x_528.y, x_529.w);
    let x_531 : f32 = u_xlat15;
    let x_533 : f32 = x_25.x_UserLut_Params.y;
    let x_536 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_531 * x_533) + x_536);
    let x_543 : vec4<f32> = u_xlat2;
    let x_545 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_543.x, x_543.z), 0.0f);
    u_xlat3 = vec3<f32>(x_545.x, x_545.y, x_545.z);
    let x_549 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_549;
    u_xlat4.y = 0.0f;
    let x_552 : vec4<f32> = u_xlat2;
    let x_554 : vec2<f32> = u_xlat4;
    let x_555 : vec2<f32> = (vec2<f32>(x_552.x, x_552.z) + x_554);
    let x_556 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
    let x_561 : vec4<f32> = u_xlat2;
    let x_563 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_561.x, x_561.y), 0.0f);
    let x_564 : vec3<f32> = vec3<f32>(x_563.x, x_563.y, x_563.z);
    let x_565 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
    let x_568 : f32 = u_xlat1.z;
    let x_570 : f32 = x_25.x_UserLut_Params.z;
    let x_572 : f32 = u_xlat15;
    u_xlat15 = ((x_568 * x_570) + -(x_572));
    let x_575 : vec3<f32> = u_xlat3;
    let x_577 : vec4<f32> = u_xlat2;
    let x_579 : vec3<f32> = (-(x_575) + vec3<f32>(x_577.x, x_577.y, x_577.z));
    let x_580 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
    let x_582 : f32 = u_xlat15;
    let x_584 : vec4<f32> = u_xlat2;
    let x_587 : vec3<f32> = u_xlat3;
    let x_588 : vec3<f32> = ((vec3<f32>(x_582, x_582, x_582) * vec3<f32>(x_584.x, x_584.y, x_584.z)) + x_587);
    let x_589 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
    let x_591 : vec3<f32> = u_xlat1;
    let x_593 : vec4<f32> = u_xlat2;
    let x_595 : vec3<f32> = (-(x_591) + vec3<f32>(x_593.x, x_593.y, x_593.z));
    let x_596 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
    let x_599 : vec4<f32> = x_25.x_UserLut_Params;
    let x_601 : vec4<f32> = u_xlat2;
    let x_604 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_599.w, x_599.w, x_599.w) * vec3<f32>(x_601.x, x_601.y, x_601.z)) + x_604);
    let x_606 : vec3<f32> = u_xlat1;
    let x_609 : vec3<f32> = (x_606 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_610 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
    let x_612 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_612 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_616 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_616 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_620 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_620));
    let x_623 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_623 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_627 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_627);
    let x_631 : vec3<f32> = u_xlat1;
    let x_633 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.x));
    u_xlatb1 = vec3<bool>(x_633.x, x_633.y, x_633.z);
    let x_636 : bool = u_xlatb1.x;
    if (x_636) {
      let x_641 : f32 = u_xlat2.x;
      x_637 = x_641;
    } else {
      let x_644 : f32 = u_xlat3.x;
      x_637 = x_644;
    }
    let x_645 : f32 = x_637;
    u_xlat0.x = x_645;
    let x_648 : bool = u_xlatb1.y;
    if (x_648) {
      let x_653 : f32 = u_xlat2.y;
      x_649 = x_653;
    } else {
      let x_656 : f32 = u_xlat3.y;
      x_649 = x_656;
    }
    let x_657 : f32 = x_649;
    u_xlat0.y = x_657;
    let x_660 : bool = u_xlatb1.z;
    if (x_660) {
      let x_665 : f32 = u_xlat2.z;
      x_661 = x_665;
    } else {
      let x_668 : f32 = u_xlat3.z;
      x_661 = x_668;
    }
    let x_669 : f32 = x_661;
    u_xlat0.z = x_669;
  }
  let x_671 : vec4<f32> = u_xlat0;
  let x_674 : vec4<f32> = x_25.x_Lut_Params;
  let x_676 : vec3<f32> = (vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(x_674.z, x_674.z, x_674.z));
  let x_677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_676.z);
  let x_680 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_680);
  let x_683 : vec4<f32> = x_25.x_Lut_Params;
  let x_685 : vec2<f32> = (vec2<f32>(x_683.x, x_683.y) * vec2<f32>(0.5f, 0.5f));
  let x_686 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_685.x, x_685.y, x_686.z);
  let x_688 : vec4<f32> = u_xlat0;
  let x_691 : vec4<f32> = x_25.x_Lut_Params;
  let x_694 : vec3<f32> = u_xlat1;
  let x_696 : vec2<f32> = ((vec2<f32>(x_688.x, x_688.y) * vec2<f32>(x_691.x, x_691.y)) + vec2<f32>(x_694.x, x_694.y));
  let x_697 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_697.x, x_696.x, x_696.y);
  let x_699 : f32 = u_xlat15;
  let x_701 : f32 = x_25.x_Lut_Params.y;
  let x_704 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_699 * x_701) + x_704);
  let x_711 : vec3<f32> = u_xlat1;
  let x_713 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_711.x, x_711.z), 0.0f);
  let x_714 : vec3<f32> = vec3<f32>(x_713.x, x_713.y, x_713.z);
  let x_715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_718 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_718;
  u_xlat0.y = 0.0f;
  let x_721 : vec4<f32> = u_xlat0;
  let x_723 : vec3<f32> = u_xlat1;
  let x_725 : vec2<f32> = (vec2<f32>(x_721.x, x_721.y) + vec2<f32>(x_723.x, x_723.z));
  let x_726 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
  let x_731 : vec4<f32> = u_xlat0;
  let x_733 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_731.x, x_731.y), 0.0f);
  u_xlat1 = vec3<f32>(x_733.x, x_733.y, x_733.z);
  let x_736 : f32 = u_xlat0.z;
  let x_738 : f32 = x_25.x_Lut_Params.z;
  let x_740 : f32 = u_xlat15;
  u_xlat0.x = ((x_736 * x_738) + -(x_740));
  let x_745 : vec4<f32> = u_xlat2;
  let x_748 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_745.x, x_745.y, x_745.z)) + x_748);
  let x_750 : vec4<f32> = u_xlat0;
  let x_752 : vec3<f32> = u_xlat5;
  let x_754 : vec4<f32> = u_xlat2;
  let x_756 : vec3<f32> = ((vec3<f32>(x_750.x, x_750.x, x_750.x) * x_752) + vec3<f32>(x_754.x, x_754.y, x_754.z));
  let x_757 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_761 : vec4<f32> = u_xlat0;
  let x_763 : vec3<f32> = sqrt(vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
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

