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

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

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
  var x_503 : f32;
  var x_515 : f32;
  var x_527 : f32;
  var u_xlat4 : vec2<f32>;
  var x_672 : f32;
  var x_684 : f32;
  var x_696 : f32;
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
  let x_271 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_271);
  let x_273 : bool = u_xlatb15;
  if (x_273) {
    let x_276 : vec2<f32> = u_xlat6;
    let x_278 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_281 : vec2<f32> = (x_276 + -(vec2<f32>(x_278.x, x_278.y)));
    let x_282 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_281.x, x_281.y, x_282.z);
    let x_284 : vec3<f32> = u_xlat1;
    let x_288 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_290 : vec2<f32> = (abs(vec2<f32>(x_284.x, x_284.y)) * vec2<f32>(x_288.z, x_288.z));
    let x_291 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_291.x, x_290.x, x_290.y);
    let x_294 : f32 = u_xlat1.y;
    let x_297 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_294 * x_297);
    let x_301 : vec3<f32> = u_xlat1;
    let x_303 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_301.x, x_301.z), vec2<f32>(x_303.x, x_303.z));
    let x_306 : f32 = u_xlat15;
    u_xlat15 = (-(x_306) + 1.0f);
    let x_309 : f32 = u_xlat15;
    u_xlat15 = max(x_309, 0.0f);
    let x_311 : f32 = u_xlat15;
    u_xlat15 = log2(x_311);
    let x_313 : f32 = u_xlat15;
    let x_315 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_313 * x_315);
    let x_317 : f32 = u_xlat15;
    u_xlat15 = exp2(x_317);
    let x_320 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_320.x, x_320.y, x_320.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_325 : f32 = u_xlat15;
    let x_327 : vec3<f32> = u_xlat1;
    let x_330 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_325, x_325, x_325) * x_327) + vec3<f32>(x_330.x, x_330.y, x_330.z));
    let x_333 : vec3<f32> = u_xlat0;
    let x_334 : vec3<f32> = u_xlat1;
    u_xlat0 = (x_333 * x_334);
  }
  let x_336 : vec3<f32> = u_xlat0;
  let x_340 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_336.z, x_336.x, x_336.y) * vec3<f32>(x_340.w, x_340.w, x_340.w));
  let x_343 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_343 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_350 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_350, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_353 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_353);
  let x_355 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_355 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_362 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_362, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_367 : vec3<f32> = u_xlat0;
  let x_369 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat5 = (x_367 * vec3<f32>(x_369.z, x_369.z, x_369.z));
  let x_373 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_373);
  let x_377 : vec4<f32> = x_26.x_Lut_Params;
  let x_379 : vec2<f32> = (vec2<f32>(x_377.x, x_377.y) * vec2<f32>(0.5f, 0.5f));
  let x_380 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_379.x, x_379.y, x_380.z);
  let x_382 : vec3<f32> = u_xlat5;
  let x_385 : vec4<f32> = x_26.x_Lut_Params;
  let x_388 : vec3<f32> = u_xlat1;
  let x_390 : vec2<f32> = ((vec2<f32>(x_382.y, x_382.z) * vec2<f32>(x_385.x, x_385.y)) + vec2<f32>(x_388.x, x_388.y));
  let x_391 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_391.x, x_390.x, x_390.y);
  let x_394 : f32 = u_xlat5.x;
  let x_396 : f32 = x_26.x_Lut_Params.y;
  let x_399 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_394 * x_396) + x_399);
  let x_406 : vec3<f32> = u_xlat1;
  let x_408 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_406.x, x_406.z), 0.0f);
  let x_409 : vec3<f32> = vec3<f32>(x_408.x, x_408.y, x_408.z);
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_413 : f32 = x_26.x_Lut_Params.y;
  u_xlat3.x = x_413;
  u_xlat3.y = 0.0f;
  let x_416 : vec3<f32> = u_xlat1;
  let x_418 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_416.x, x_416.z) + vec2<f32>(x_418.x, x_418.y));
  let x_424 : vec2<f32> = u_xlat10;
  let x_425 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_424, 0.0f);
  u_xlat1 = vec3<f32>(x_425.x, x_425.y, x_425.z);
  let x_428 : f32 = u_xlat0.x;
  let x_430 : f32 = x_26.x_Lut_Params.z;
  let x_433 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_428 * x_430) + -(x_433));
  let x_437 : vec4<f32> = u_xlat2;
  let x_440 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_437.x, x_437.y, x_437.z)) + x_440);
  let x_442 : vec3<f32> = u_xlat0;
  let x_444 : vec3<f32> = u_xlat5;
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_442.x, x_442.x, x_442.x) * x_444) + vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_451 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_451);
  let x_453 : bool = u_xlatb15;
  if (x_453) {
    let x_456 : vec3<f32> = u_xlat0;
    u_xlat0 = x_456;
    let x_457 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_457, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_461 : vec3<f32> = u_xlat0;
    u_xlat1 = (x_461 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_465 : vec3<f32> = u_xlat0;
    let x_466 : vec3<f32> = log2(x_465);
    let x_467 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
    let x_469 : vec4<f32> = u_xlat2;
    let x_473 : vec3<f32> = (vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_474 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
    let x_476 : vec4<f32> = u_xlat2;
    let x_478 : vec3<f32> = exp2(vec3<f32>(x_476.x, x_476.y, x_476.z));
    let x_479 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
    let x_481 : vec4<f32> = u_xlat2;
    let x_488 : vec3<f32> = ((vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_489 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
    let x_494 : vec3<f32> = u_xlat0;
    let x_497 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_494.x, x_494.y, x_494.z, x_494.x));
    u_xlatb3 = vec3<bool>(x_497.x, x_497.y, x_497.z);
    let x_500 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_500;
    let x_502 : bool = u_xlatb3.x;
    if (x_502) {
      let x_507 : f32 = u_xlat1.x;
      x_503 = x_507;
    } else {
      let x_510 : f32 = u_xlat2.x;
      x_503 = x_510;
    }
    let x_511 : f32 = x_503;
    hlslcc_movcTemp.x = x_511;
    let x_514 : bool = u_xlatb3.y;
    if (x_514) {
      let x_519 : f32 = u_xlat1.y;
      x_515 = x_519;
    } else {
      let x_522 : f32 = u_xlat2.y;
      x_515 = x_522;
    }
    let x_523 : f32 = x_515;
    hlslcc_movcTemp.y = x_523;
    let x_526 : bool = u_xlatb3.z;
    if (x_526) {
      let x_531 : f32 = u_xlat1.z;
      x_527 = x_531;
    } else {
      let x_534 : f32 = u_xlat2.z;
      x_527 = x_534;
    }
    let x_535 : f32 = x_527;
    hlslcc_movcTemp.z = x_535;
    let x_537 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_537;
    let x_538 : vec3<f32> = u_xlat1;
    let x_541 : vec4<f32> = x_26.x_UserLut_Params;
    let x_543 : vec3<f32> = (vec3<f32>(x_538.z, x_538.x, x_538.y) * vec3<f32>(x_541.z, x_541.z, x_541.z));
    let x_544 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
    let x_547 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_547);
    let x_550 : vec4<f32> = x_26.x_UserLut_Params;
    let x_552 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) * vec2<f32>(0.5f, 0.5f));
    let x_553 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_552.x, x_553.y, x_553.z, x_552.y);
    let x_555 : vec4<f32> = u_xlat2;
    let x_558 : vec4<f32> = x_26.x_UserLut_Params;
    let x_561 : vec4<f32> = u_xlat2;
    let x_563 : vec2<f32> = ((vec2<f32>(x_555.y, x_555.z) * vec2<f32>(x_558.x, x_558.y)) + vec2<f32>(x_561.x, x_561.w));
    let x_564 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_564.x, x_563.x, x_563.y, x_564.w);
    let x_566 : f32 = u_xlat15;
    let x_568 : f32 = x_26.x_UserLut_Params.y;
    let x_571 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_566 * x_568) + x_571);
    let x_578 : vec4<f32> = u_xlat2;
    let x_580 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_578.x, x_578.z), 0.0f);
    u_xlat3 = vec3<f32>(x_580.x, x_580.y, x_580.z);
    let x_584 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_584;
    u_xlat4.y = 0.0f;
    let x_587 : vec4<f32> = u_xlat2;
    let x_589 : vec2<f32> = u_xlat4;
    let x_590 : vec2<f32> = (vec2<f32>(x_587.x, x_587.z) + x_589);
    let x_591 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
    let x_596 : vec4<f32> = u_xlat2;
    let x_598 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_596.x, x_596.y), 0.0f);
    let x_599 : vec3<f32> = vec3<f32>(x_598.x, x_598.y, x_598.z);
    let x_600 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
    let x_603 : f32 = u_xlat1.z;
    let x_605 : f32 = x_26.x_UserLut_Params.z;
    let x_607 : f32 = u_xlat15;
    u_xlat15 = ((x_603 * x_605) + -(x_607));
    let x_610 : vec3<f32> = u_xlat3;
    let x_612 : vec4<f32> = u_xlat2;
    let x_614 : vec3<f32> = (-(x_610) + vec3<f32>(x_612.x, x_612.y, x_612.z));
    let x_615 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
    let x_617 : f32 = u_xlat15;
    let x_619 : vec4<f32> = u_xlat2;
    let x_622 : vec3<f32> = u_xlat3;
    let x_623 : vec3<f32> = ((vec3<f32>(x_617, x_617, x_617) * vec3<f32>(x_619.x, x_619.y, x_619.z)) + x_622);
    let x_624 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
    let x_626 : vec3<f32> = u_xlat1;
    let x_628 : vec4<f32> = u_xlat2;
    let x_630 : vec3<f32> = (-(x_626) + vec3<f32>(x_628.x, x_628.y, x_628.z));
    let x_631 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
    let x_634 : vec4<f32> = x_26.x_UserLut_Params;
    let x_636 : vec4<f32> = u_xlat2;
    let x_639 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_634.w, x_634.w, x_634.w) * vec3<f32>(x_636.x, x_636.y, x_636.z)) + x_639);
    let x_641 : vec3<f32> = u_xlat1;
    let x_644 : vec3<f32> = (x_641 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_645 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
    let x_647 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_647 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_651 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_651 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_655 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_655));
    let x_658 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_658 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_662 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_662);
    let x_666 : vec3<f32> = u_xlat1;
    let x_668 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_666.x, x_666.y, x_666.z, x_666.x));
    u_xlatb1 = vec3<bool>(x_668.x, x_668.y, x_668.z);
    let x_671 : bool = u_xlatb1.x;
    if (x_671) {
      let x_676 : f32 = u_xlat2.x;
      x_672 = x_676;
    } else {
      let x_679 : f32 = u_xlat3.x;
      x_672 = x_679;
    }
    let x_680 : f32 = x_672;
    u_xlat0.x = x_680;
    let x_683 : bool = u_xlatb1.y;
    if (x_683) {
      let x_688 : f32 = u_xlat2.y;
      x_684 = x_688;
    } else {
      let x_691 : f32 = u_xlat3.y;
      x_684 = x_691;
    }
    let x_692 : f32 = x_684;
    u_xlat0.y = x_692;
    let x_695 : bool = u_xlatb1.z;
    if (x_695) {
      let x_700 : f32 = u_xlat2.z;
      x_696 = x_700;
    } else {
      let x_703 : f32 = u_xlat3.z;
      x_696 = x_703;
    }
    let x_704 : f32 = x_696;
    u_xlat0.z = x_704;
  }
  let x_708 : vec3<f32> = u_xlat0;
  let x_709 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
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

