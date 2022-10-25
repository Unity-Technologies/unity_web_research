struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
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
  var u_xlat5 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_546 : f32;
  var x_558 : f32;
  var x_570 : f32;
  var u_xlat4 : vec2<f32>;
  var x_715 : f32;
  var x_727 : f32;
  var x_739 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_827 : f32;
  var x_839 : f32;
  var x_851 : f32;
  var x_901 : f32;
  var x_913 : f32;
  var x_925 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Params2;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Params2;
  let x_45 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_60 : vec3<f32> = u_xlat0;
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_80);
  let x_82 : bool = u_xlatb6;
  if (x_82) {
    let x_86 : vec3<f32> = u_xlat1;
    let x_89 : vec4<f32> = x_26.x_Distortion_Params2;
    u_xlat6 = (vec2<f32>(x_86.x, x_86.x) * vec2<f32>(x_89.x, x_89.y));
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
    let x_136 : f32 = x_26.x_Distortion_Params2.x;
    u_xlat16 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_26.x_Distortion_Params2.y;
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
    let x_244 : vec3<f32> = u_xlat0;
    let x_246 : vec3<f32> = u_xlat1;
    let x_249 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_244.x, x_244.y) * vec2<f32>(x_246.x, x_246.x)) + x_249);
  }
  let x_261 : vec2<f32> = u_xlat6;
  let x_264 : f32 = x_26.x_GlobalMipBias.x;
  let x_265 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_261, x_264);
  u_xlat0 = vec3<f32>(x_265.x, x_265.y, x_265.z);
  let x_271 : vec2<f32> = u_xlat6;
  let x_273 : f32 = x_26.x_GlobalMipBias.x;
  let x_274 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_271, x_273);
  u_xlat2 = x_274;
  let x_278 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_278);
  let x_280 : bool = u_xlatb15;
  if (x_280) {
    let x_283 : vec4<f32> = u_xlat2;
    let x_285 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_283.w, x_283.w, x_283.w) * vec3<f32>(x_285.x, x_285.y, x_285.z));
    let x_288 : vec3<f32> = u_xlat3;
    let x_291 : vec3<f32> = (x_288 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_292 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  }
  let x_294 : vec4<f32> = u_xlat2;
  let x_298 : vec4<f32> = x_26.x_Bloom_Params;
  let x_300 : vec3<f32> = (vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_298.x, x_298.x, x_298.x));
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat2;
  let x_306 : vec4<f32> = x_26.x_Bloom_Params;
  let x_309 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_306.y, x_306.z, x_306.w)) + x_309);
  let x_314 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_314);
  let x_316 : bool = u_xlatb15;
  if (x_316) {
    let x_319 : vec2<f32> = u_xlat6;
    let x_321 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_324 : vec2<f32> = (x_319 + -(vec2<f32>(x_321.x, x_321.y)));
    let x_325 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_324.x, x_324.y, x_325.z);
    let x_327 : vec3<f32> = u_xlat1;
    let x_331 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_333 : vec2<f32> = (abs(vec2<f32>(x_327.x, x_327.y)) * vec2<f32>(x_331.z, x_331.z));
    let x_334 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_334.x, x_333.x, x_333.y);
    let x_337 : f32 = u_xlat1.y;
    let x_340 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_337 * x_340);
    let x_344 : vec3<f32> = u_xlat1;
    let x_346 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_344.x, x_344.z), vec2<f32>(x_346.x, x_346.z));
    let x_349 : f32 = u_xlat15;
    u_xlat15 = (-(x_349) + 1.0f);
    let x_352 : f32 = u_xlat15;
    u_xlat15 = max(x_352, 0.0f);
    let x_354 : f32 = u_xlat15;
    u_xlat15 = log2(x_354);
    let x_356 : f32 = u_xlat15;
    let x_358 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_356 * x_358);
    let x_360 : f32 = u_xlat15;
    u_xlat15 = exp2(x_360);
    let x_363 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_363.x, x_363.y, x_363.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_368 : f32 = u_xlat15;
    let x_370 : vec3<f32> = u_xlat1;
    let x_373 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_368, x_368, x_368) * x_370) + vec3<f32>(x_373.x, x_373.y, x_373.z));
    let x_376 : vec3<f32> = u_xlat0;
    let x_377 : vec3<f32> = u_xlat1;
    u_xlat0 = (x_376 * x_377);
  }
  let x_379 : vec3<f32> = u_xlat0;
  let x_383 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_379.z, x_379.x, x_379.y) * vec3<f32>(x_383.w, x_383.w, x_383.w));
  let x_386 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_386 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_393 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_393, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_396 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_396);
  let x_398 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_398 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_405 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_405, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_410 : vec3<f32> = u_xlat0;
  let x_412 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat5 = (x_410 * vec3<f32>(x_412.z, x_412.z, x_412.z));
  let x_416 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_416);
  let x_420 : vec4<f32> = x_26.x_Lut_Params;
  let x_422 : vec2<f32> = (vec2<f32>(x_420.x, x_420.y) * vec2<f32>(0.5f, 0.5f));
  let x_423 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_422.x, x_422.y, x_423.z);
  let x_425 : vec3<f32> = u_xlat5;
  let x_428 : vec4<f32> = x_26.x_Lut_Params;
  let x_431 : vec3<f32> = u_xlat1;
  let x_433 : vec2<f32> = ((vec2<f32>(x_425.y, x_425.z) * vec2<f32>(x_428.x, x_428.y)) + vec2<f32>(x_431.x, x_431.y));
  let x_434 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_434.x, x_433.x, x_433.y);
  let x_437 : f32 = u_xlat5.x;
  let x_439 : f32 = x_26.x_Lut_Params.y;
  let x_442 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_437 * x_439) + x_442);
  let x_449 : vec3<f32> = u_xlat1;
  let x_451 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_449.x, x_449.z), 0.0f);
  let x_452 : vec3<f32> = vec3<f32>(x_451.x, x_451.y, x_451.z);
  let x_453 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_456 : f32 = x_26.x_Lut_Params.y;
  u_xlat3.x = x_456;
  u_xlat3.y = 0.0f;
  let x_459 : vec3<f32> = u_xlat1;
  let x_461 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_459.x, x_459.z) + vec2<f32>(x_461.x, x_461.y));
  let x_467 : vec2<f32> = u_xlat10;
  let x_468 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_467, 0.0f);
  u_xlat1 = vec3<f32>(x_468.x, x_468.y, x_468.z);
  let x_471 : f32 = u_xlat0.x;
  let x_473 : f32 = x_26.x_Lut_Params.z;
  let x_476 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_471 * x_473) + -(x_476));
  let x_480 : vec4<f32> = u_xlat2;
  let x_483 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_480.x, x_480.y, x_480.z)) + x_483);
  let x_485 : vec3<f32> = u_xlat0;
  let x_487 : vec3<f32> = u_xlat5;
  let x_489 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_485.x, x_485.x, x_485.x) * x_487) + vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_494 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_494);
  let x_496 : bool = u_xlatb15;
  if (x_496) {
    let x_499 : vec3<f32> = u_xlat0;
    u_xlat0 = x_499;
    let x_500 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_500, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_504 : vec3<f32> = u_xlat0;
    u_xlat1 = (x_504 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_508 : vec3<f32> = u_xlat0;
    let x_509 : vec3<f32> = log2(x_508);
    let x_510 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
    let x_512 : vec4<f32> = u_xlat2;
    let x_516 : vec3<f32> = (vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_517 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
    let x_519 : vec4<f32> = u_xlat2;
    let x_521 : vec3<f32> = exp2(vec3<f32>(x_519.x, x_519.y, x_519.z));
    let x_522 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_524 : vec4<f32> = u_xlat2;
    let x_531 : vec3<f32> = ((vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_532 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
    let x_537 : vec3<f32> = u_xlat0;
    let x_540 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_537.x, x_537.y, x_537.z, x_537.x));
    u_xlatb3 = vec3<bool>(x_540.x, x_540.y, x_540.z);
    let x_543 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_543;
    let x_545 : bool = u_xlatb3.x;
    if (x_545) {
      let x_550 : f32 = u_xlat1.x;
      x_546 = x_550;
    } else {
      let x_553 : f32 = u_xlat2.x;
      x_546 = x_553;
    }
    let x_554 : f32 = x_546;
    hlslcc_movcTemp.x = x_554;
    let x_557 : bool = u_xlatb3.y;
    if (x_557) {
      let x_562 : f32 = u_xlat1.y;
      x_558 = x_562;
    } else {
      let x_565 : f32 = u_xlat2.y;
      x_558 = x_565;
    }
    let x_566 : f32 = x_558;
    hlslcc_movcTemp.y = x_566;
    let x_569 : bool = u_xlatb3.z;
    if (x_569) {
      let x_574 : f32 = u_xlat1.z;
      x_570 = x_574;
    } else {
      let x_577 : f32 = u_xlat2.z;
      x_570 = x_577;
    }
    let x_578 : f32 = x_570;
    hlslcc_movcTemp.z = x_578;
    let x_580 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_580;
    let x_581 : vec3<f32> = u_xlat1;
    let x_584 : vec4<f32> = x_26.x_UserLut_Params;
    let x_586 : vec3<f32> = (vec3<f32>(x_581.z, x_581.x, x_581.y) * vec3<f32>(x_584.z, x_584.z, x_584.z));
    let x_587 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
    let x_590 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_590);
    let x_593 : vec4<f32> = x_26.x_UserLut_Params;
    let x_595 : vec2<f32> = (vec2<f32>(x_593.x, x_593.y) * vec2<f32>(0.5f, 0.5f));
    let x_596 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_595.x, x_596.y, x_596.z, x_595.y);
    let x_598 : vec4<f32> = u_xlat2;
    let x_601 : vec4<f32> = x_26.x_UserLut_Params;
    let x_604 : vec4<f32> = u_xlat2;
    let x_606 : vec2<f32> = ((vec2<f32>(x_598.y, x_598.z) * vec2<f32>(x_601.x, x_601.y)) + vec2<f32>(x_604.x, x_604.w));
    let x_607 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_607.x, x_606.x, x_606.y, x_607.w);
    let x_609 : f32 = u_xlat15;
    let x_611 : f32 = x_26.x_UserLut_Params.y;
    let x_614 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_609 * x_611) + x_614);
    let x_621 : vec4<f32> = u_xlat2;
    let x_623 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_621.x, x_621.z), 0.0f);
    u_xlat3 = vec3<f32>(x_623.x, x_623.y, x_623.z);
    let x_627 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_627;
    u_xlat4.y = 0.0f;
    let x_630 : vec4<f32> = u_xlat2;
    let x_632 : vec2<f32> = u_xlat4;
    let x_633 : vec2<f32> = (vec2<f32>(x_630.x, x_630.z) + x_632);
    let x_634 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
    let x_639 : vec4<f32> = u_xlat2;
    let x_641 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_639.x, x_639.y), 0.0f);
    let x_642 : vec3<f32> = vec3<f32>(x_641.x, x_641.y, x_641.z);
    let x_643 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
    let x_646 : f32 = u_xlat1.z;
    let x_648 : f32 = x_26.x_UserLut_Params.z;
    let x_650 : f32 = u_xlat15;
    u_xlat15 = ((x_646 * x_648) + -(x_650));
    let x_653 : vec3<f32> = u_xlat3;
    let x_655 : vec4<f32> = u_xlat2;
    let x_657 : vec3<f32> = (-(x_653) + vec3<f32>(x_655.x, x_655.y, x_655.z));
    let x_658 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
    let x_660 : f32 = u_xlat15;
    let x_662 : vec4<f32> = u_xlat2;
    let x_665 : vec3<f32> = u_xlat3;
    let x_666 : vec3<f32> = ((vec3<f32>(x_660, x_660, x_660) * vec3<f32>(x_662.x, x_662.y, x_662.z)) + x_665);
    let x_667 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
    let x_669 : vec3<f32> = u_xlat1;
    let x_671 : vec4<f32> = u_xlat2;
    let x_673 : vec3<f32> = (-(x_669) + vec3<f32>(x_671.x, x_671.y, x_671.z));
    let x_674 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
    let x_677 : vec4<f32> = x_26.x_UserLut_Params;
    let x_679 : vec4<f32> = u_xlat2;
    let x_682 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_677.w, x_677.w, x_677.w) * vec3<f32>(x_679.x, x_679.y, x_679.z)) + x_682);
    let x_684 : vec3<f32> = u_xlat1;
    let x_687 : vec3<f32> = (x_684 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_688 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
    let x_690 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_690 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_694 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_694 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_698 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_698));
    let x_701 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_701 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_705 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_705);
    let x_709 : vec3<f32> = u_xlat1;
    let x_711 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_709.x, x_709.y, x_709.z, x_709.x));
    u_xlatb1 = vec3<bool>(x_711.x, x_711.y, x_711.z);
    let x_714 : bool = u_xlatb1.x;
    if (x_714) {
      let x_719 : f32 = u_xlat2.x;
      x_715 = x_719;
    } else {
      let x_722 : f32 = u_xlat3.x;
      x_715 = x_722;
    }
    let x_723 : f32 = x_715;
    u_xlat0.x = x_723;
    let x_726 : bool = u_xlatb1.y;
    if (x_726) {
      let x_731 : f32 = u_xlat2.y;
      x_727 = x_731;
    } else {
      let x_734 : f32 = u_xlat3.y;
      x_727 = x_734;
    }
    let x_735 : f32 = x_727;
    u_xlat0.y = x_735;
    let x_738 : bool = u_xlatb1.z;
    if (x_738) {
      let x_743 : f32 = u_xlat2.z;
      x_739 = x_743;
    } else {
      let x_746 : f32 = u_xlat3.z;
      x_739 = x_746;
    }
    let x_747 : f32 = x_739;
    u_xlat0.z = x_747;
  }
  let x_749 : vec3<f32> = u_xlat0;
  u_xlat0 = sqrt(x_749);
  let x_751 : vec2<f32> = vs_TEXCOORD0;
  let x_754 : vec4<f32> = x_26.x_Dithering_Params;
  let x_758 : vec4<f32> = x_26.x_Dithering_Params;
  let x_760 : vec2<f32> = ((x_751 * vec2<f32>(x_754.x, x_754.y)) + vec2<f32>(x_758.z, x_758.w));
  let x_761 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_760.x, x_760.y, x_761.z);
  let x_768 : vec3<f32> = u_xlat1;
  let x_771 : f32 = x_26.x_GlobalMipBias.x;
  let x_772 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_768.x, x_768.y), x_771);
  u_xlat15 = x_772.w;
  let x_774 : f32 = u_xlat15;
  u_xlat15 = ((x_774 * 2.0f) + -1.0f);
  let x_778 : f32 = u_xlat15;
  u_xlatb1.x = (x_778 >= 0.0f);
  let x_782 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_782);
  let x_785 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_785)) + 1.0f);
  let x_789 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_789);
  let x_791 : f32 = u_xlat15;
  u_xlat15 = (-(x_791) + 1.0f);
  let x_794 : f32 = u_xlat15;
  let x_796 : f32 = u_xlat1.x;
  u_xlat15 = (x_794 * x_796);
  let x_798 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_798 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_800 : vec3<f32> = u_xlat0;
  let x_801 : vec3<f32> = log2(x_800);
  let x_802 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat2;
  let x_806 : vec3<f32> = (vec3<f32>(x_804.x, x_804.y, x_804.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_807 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat2;
  let x_811 : vec3<f32> = exp2(vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat2;
  let x_817 : vec3<f32> = ((vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_818 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_821 : vec3<f32> = u_xlat0;
  let x_823 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_821.x, x_821.y, x_821.z, x_821.x));
  u_xlatb0 = vec3<bool>(x_823.x, x_823.y, x_823.z);
  let x_826 : bool = u_xlatb0.x;
  if (x_826) {
    let x_831 : f32 = u_xlat1.x;
    x_827 = x_831;
  } else {
    let x_834 : f32 = u_xlat2.x;
    x_827 = x_834;
  }
  let x_835 : f32 = x_827;
  u_xlat0.x = x_835;
  let x_838 : bool = u_xlatb0.y;
  if (x_838) {
    let x_843 : f32 = u_xlat1.y;
    x_839 = x_843;
  } else {
    let x_846 : f32 = u_xlat2.y;
    x_839 = x_846;
  }
  let x_847 : f32 = x_839;
  u_xlat0.y = x_847;
  let x_850 : bool = u_xlatb0.z;
  if (x_850) {
    let x_855 : f32 = u_xlat1.z;
    x_851 = x_855;
  } else {
    let x_858 : f32 = u_xlat2.z;
    x_851 = x_858;
  }
  let x_859 : f32 = x_851;
  u_xlat0.z = x_859;
  let x_861 : f32 = u_xlat15;
  let x_866 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_861, x_861, x_861) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_866);
  let x_868 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_868 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_870 : vec3<f32> = u_xlat0;
  let x_871 : vec3<f32> = (x_870 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat2;
  let x_876 : vec3<f32> = (vec3<f32>(x_874.x, x_874.y, x_874.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_877 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat2;
  let x_882 : vec3<f32> = log2(abs(vec3<f32>(x_879.x, x_879.y, x_879.z)));
  let x_883 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = u_xlat2;
  let x_887 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat2;
  let x_892 : vec3<f32> = exp2(vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_893 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec3<f32> = u_xlat0;
  let x_897 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_895.x, x_895.y, x_895.z, x_895.x));
  u_xlatb0 = vec3<bool>(x_897.x, x_897.y, x_897.z);
  let x_900 : bool = u_xlatb0.x;
  if (x_900) {
    let x_905 : f32 = u_xlat1.x;
    x_901 = x_905;
  } else {
    let x_908 : f32 = u_xlat2.x;
    x_901 = x_908;
  }
  let x_909 : f32 = x_901;
  u_xlat0.x = x_909;
  let x_912 : bool = u_xlatb0.y;
  if (x_912) {
    let x_917 : f32 = u_xlat1.y;
    x_913 = x_917;
  } else {
    let x_920 : f32 = u_xlat2.y;
    x_913 = x_920;
  }
  let x_921 : f32 = x_913;
  u_xlat0.y = x_921;
  let x_924 : bool = u_xlatb0.z;
  if (x_924) {
    let x_929 : f32 = u_xlat1.z;
    x_925 = x_929;
  } else {
    let x_932 : f32 = u_xlat2.z;
    x_925 = x_932;
  }
  let x_933 : f32 = x_925;
  u_xlat0.z = x_933;
  let x_937 : vec3<f32> = u_xlat0;
  let x_938 : vec3<f32> = max(x_937, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_939 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
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

