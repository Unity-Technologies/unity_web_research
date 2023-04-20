diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Lut_Params : vec4<f32>,
  /* @offset(64) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(80) */
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(96) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(112) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(128) */
  x_Vignette_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatb10 : vec2<bool>;

var<private> u_xlatb8 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_230 : f32;
  var x_563 : f32;
  var x_572 : f32;
  var x_703 : f32;
  var x_754 : f32;
  var x_781 : f32;
  var x_805 : f32;
  var x_816 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1206 : f32;
  var x_1218 : f32;
  var x_1230 : f32;
  var x_1375 : f32;
  var x_1387 : f32;
  var x_1399 : f32;
  var x_1530 : f32;
  var x_1543 : f32;
  var x_1555 : f32;
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
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11.x = (1.0f / x_115);
    let x_119 : f32 = u_xlat6.x;
    let x_121 : f32 = u_xlat11.x;
    u_xlat6.x = ((x_119 * x_121) + -1.0f);
    let x_126 : vec3<f32> = u_xlat0;
    let x_128 : vec3<f32> = u_xlat6;
    let x_131 : vec2<f32> = u_xlat10;
    let x_132 : vec2<f32> = ((vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_128.x, x_128.x)) + x_131);
    let x_133 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  } else {
    let x_138 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_138);
    let x_140 : f32 = u_xlat16;
    let x_142 : f32 = x_26.x_Distortion_Params2.x;
    u_xlat16 = (x_140 * x_142);
    let x_145 : f32 = u_xlat1.x;
    let x_147 : f32 = x_26.x_Distortion_Params2.y;
    u_xlat1.x = (x_145 * x_147);
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_151), 1.0f);
    let x_157 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_157), 1.0f);
    let x_160 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_160);
    let x_162 : f32 = u_xlat7;
    let x_164 : f32 = u_xlat2.x;
    u_xlat2.x = (x_162 * x_164);
    let x_168 : f32 = u_xlat2.x;
    let x_170 : f32 = u_xlat2.x;
    u_xlat7 = (x_168 * x_170);
    let x_173 : f32 = u_xlat7;
    u_xlat12 = ((x_173 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_178 : f32 = u_xlat7;
    let x_179 : f32 = u_xlat12;
    u_xlat12 = ((x_178 * x_179) + 0.18014100193977355957f);
    let x_183 : f32 = u_xlat7;
    let x_184 : f32 = u_xlat12;
    u_xlat12 = ((x_183 * x_184) + -0.33029949665069580078f);
    let x_188 : f32 = u_xlat7;
    let x_189 : f32 = u_xlat12;
    u_xlat7 = ((x_188 * x_189) + 0.99986600875854492188f);
    let x_193 : f32 = u_xlat7;
    let x_195 : f32 = u_xlat2.x;
    u_xlat12 = (x_193 * x_195);
    let x_199 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_199));
    let x_202 : f32 = u_xlat12;
    u_xlat12 = ((x_202 * -2.0f) + 1.57079637050628662109f);
    let x_207 : bool = u_xlatb17;
    let x_208 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_208, x_207);
    let x_211 : f32 = u_xlat2.x;
    let x_212 : f32 = u_xlat7;
    let x_214 : f32 = u_xlat12;
    u_xlat2.x = ((x_211 * x_212) + x_214);
    let x_218 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_218, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1 = (x_223 < -(x_225));
    let x_228 : bool = u_xlatb1;
    if (x_228) {
      let x_234 : f32 = u_xlat2.x;
      x_230 = -(x_234);
    } else {
      let x_238 : f32 = u_xlat2.x;
      x_230 = x_238;
    }
    let x_239 : f32 = x_230;
    u_xlat1.x = x_239;
    let x_241 : f32 = u_xlat16;
    let x_243 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_241 * x_243) + -1.0f);
    let x_247 : vec3<f32> = u_xlat0;
    let x_249 : vec4<f32> = u_xlat1;
    let x_252 : vec2<f32> = u_xlat10;
    let x_253 : vec2<f32> = ((vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_249.x, x_249.x)) + x_252);
    let x_254 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_253.x, x_253.y, x_254.z);
  }
  let x_258 : vec4<f32> = x_26.x_BlitTexture_TexelSize;
  let x_264 : vec4<f32> = x_26.x_RTHandleScale;
  let x_266 : vec2<f32> = ((-(vec2<f32>(x_258.x, x_258.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_264.x, x_264.y));
  let x_267 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_266.x, x_266.y, x_267.z);
  let x_269 : vec3<f32> = u_xlat0;
  let x_271 : vec3<f32> = u_xlat6;
  let x_273 : vec2<f32> = min(vec2<f32>(x_269.x, x_269.y), vec2<f32>(x_271.x, x_271.y));
  let x_274 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_273.x, x_273.y, x_274.z);
  let x_286 : vec3<f32> = u_xlat0;
  let x_290 : f32 = x_26.x_GlobalMipBias.x;
  let x_291 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_286.x, x_286.y), x_290);
  u_xlat0 = vec3<f32>(x_291.x, x_291.y, x_291.z);
  let x_297 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_297);
  let x_299 : bool = u_xlatb15;
  if (x_299) {
    let x_302 : vec3<f32> = u_xlat6;
    let x_305 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_308 : vec2<f32> = (vec2<f32>(x_302.x, x_302.y) + -(vec2<f32>(x_305.x, x_305.y)));
    let x_309 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_309.z, x_309.w);
    let x_311 : vec4<f32> = u_xlat1;
    let x_315 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_317 : vec2<f32> = (abs(vec2<f32>(x_311.x, x_311.y)) * vec2<f32>(x_315.z, x_315.z));
    let x_318 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_318.x, x_317.x, x_317.y, x_318.w);
    let x_321 : f32 = u_xlat1.y;
    let x_324 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_321 * x_324);
    let x_328 : vec4<f32> = u_xlat1;
    let x_330 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_328.x, x_328.z), vec2<f32>(x_330.x, x_330.z));
    let x_333 : f32 = u_xlat15;
    u_xlat15 = (-(x_333) + 1.0f);
    let x_336 : f32 = u_xlat15;
    u_xlat15 = max(x_336, 0.0f);
    let x_338 : f32 = u_xlat15;
    u_xlat15 = log2(x_338);
    let x_340 : f32 = u_xlat15;
    let x_342 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_340 * x_342);
    let x_344 : f32 = u_xlat15;
    u_xlat15 = exp2(x_344);
    let x_347 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_351 : vec3<f32> = (-(vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_352 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
    let x_354 : f32 = u_xlat15;
    let x_356 : vec4<f32> = u_xlat1;
    let x_360 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_362 : vec3<f32> = ((vec3<f32>(x_354, x_354, x_354) * vec3<f32>(x_356.x, x_356.y, x_356.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
    let x_363 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
    let x_365 : vec3<f32> = u_xlat0;
    let x_366 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_365 * vec3<f32>(x_366.x, x_366.y, x_366.z));
  }
  let x_369 : vec3<f32> = u_xlat0;
  let x_372 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (x_369 * vec3<f32>(x_372.w, x_372.w, x_372.w));
  let x_379 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), x_379);
  let x_386 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), x_386);
  let x_393 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), x_393);
  let x_397 : f32 = u_xlat6.y;
  let x_399 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_397, x_399);
  let x_403 : f32 = u_xlat6.z;
  let x_405 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_403, x_405);
  let x_410 : f32 = u_xlat6.y;
  let x_412 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_410, x_412);
  let x_416 : f32 = u_xlat6.z;
  let x_418 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_416, x_418);
  let x_421 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_421.x, x_421.y, x_421.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_428 : f32 = u_xlat0.x;
  let x_431 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_428) + x_431);
  let x_435 : f32 = u_xlat0.x;
  let x_437 : f32 = u_xlat0.z;
  u_xlat0.x = (x_435 / x_437);
  let x_440 : vec3<f32> = u_xlat6;
  let x_443 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_440.y, x_440.x, x_440.z)) + vec3<f32>(x_443.z, x_443.y, x_443.x));
  let x_446 : vec3<f32> = u_xlat5;
  let x_448 : vec3<f32> = u_xlat6;
  let x_450 : vec2<f32> = (vec2<f32>(x_446.x, x_446.y) * vec2<f32>(x_448.z, x_448.y));
  let x_451 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_450.x, x_450.y, x_451.z);
  let x_454 : f32 = u_xlat5.y;
  let x_456 : f32 = u_xlat5.x;
  u_xlat5.x = (x_454 + x_456);
  let x_460 : f32 = u_xlat6.x;
  let x_462 : f32 = u_xlat5.z;
  let x_465 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_460 * x_462) + x_465);
  let x_469 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_469, 0.0f);
  let x_473 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_473);
  let x_477 : f32 = u_xlat6.y;
  let x_479 : f32 = u_xlat6.z;
  u_xlat10.x = (x_477 + x_479);
  let x_483 : f32 = u_xlat6.x;
  let x_485 : f32 = u_xlat10.x;
  u_xlat10.x = (x_483 + x_485);
  let x_489 : f32 = u_xlat5.x;
  let x_493 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_489 * 1.75f) + x_493);
  let x_497 : f32 = u_xlat0.x;
  u_xlat15 = (x_497 + -0.40000000596046447754f);
  let x_500 : f32 = u_xlat15;
  u_xlat1.x = (x_500 * 2.5f);
  let x_505 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_505)) + 1.0f);
  let x_511 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_511, 0.0f);
  let x_514 : f32 = u_xlat15;
  u_xlatb15 = (x_514 >= 0.0f);
  let x_516 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_516);
  let x_519 : f32 = u_xlat1.x;
  let x_522 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_519) * x_522) + 1.0f);
  let x_526 : f32 = u_xlat15;
  let x_528 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_526 * x_528) + 1.0f);
  let x_532 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_532.x, x_532.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_540 : f32 = u_xlat5.x;
  u_xlatb1 = (0.15999999642372131348f >= x_540);
  let x_544 : f32 = u_xlat5.x;
  u_xlatb5 = (x_544 >= 0.47999998927116394043f);
  let x_549 : f32 = u_xlat10.x;
  u_xlat10.x = (0.07999999821186065674f / x_549);
  let x_553 : f32 = u_xlat10.x;
  u_xlat10.x = (x_553 + -0.5f);
  let x_557 : f32 = u_xlat10.x;
  let x_559 : f32 = u_xlat10.y;
  u_xlat10.x = (x_557 * x_559);
  let x_562 : bool = u_xlatb5;
  if (x_562) {
    x_563 = 0.0f;
  } else {
    let x_568 : f32 = u_xlat10.x;
    x_563 = x_568;
  }
  let x_569 : f32 = x_563;
  u_xlat5.x = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat10.y;
    x_572 = x_576;
  } else {
    let x_579 : f32 = u_xlat5.x;
    x_572 = x_579;
  }
  let x_580 : f32 = x_572;
  u_xlat5.x = x_580;
  let x_583 : f32 = u_xlat5.x;
  u_xlat5.x = (x_583 + 1.0f);
  let x_586 : vec3<f32> = u_xlat5;
  let x_588 : vec3<f32> = u_xlat6;
  let x_589 : vec3<f32> = (vec3<f32>(x_586.x, x_586.x, x_586.x) * x_588);
  let x_590 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_590.x, x_589.x, x_589.y, x_589.z);
  let x_595 : vec4<f32> = u_xlat2;
  let x_597 : vec4<f32> = u_xlat2;
  let x_600 : vec4<bool> = (vec4<f32>(x_595.z, x_595.w, x_595.z, x_595.w) == vec4<f32>(x_597.y, x_597.z, x_597.y, x_597.z));
  u_xlatb10 = vec2<bool>(x_600.x, x_600.y);
  let x_603 : bool = u_xlatb10.y;
  let x_605 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_603 & x_605);
  let x_609 : f32 = u_xlat6.y;
  let x_611 : f32 = u_xlat5.x;
  let x_614 : f32 = u_xlat2.w;
  u_xlat15 = ((x_609 * x_611) + -(x_614));
  let x_617 : f32 = u_xlat15;
  u_xlat15 = (x_617 * 1.73205077648162841797f);
  let x_621 : f32 = u_xlat2.y;
  let x_625 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_621 * 2.0f) + -(x_625));
  let x_630 : f32 = u_xlat6.z;
  let x_633 : f32 = u_xlat5.x;
  let x_636 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_630) * x_633) + x_636);
  let x_639 : f32 = u_xlat15;
  let x_642 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_639), abs(x_642));
  let x_646 : f32 = u_xlat15;
  let x_649 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_646), abs(x_649));
  let x_652 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_652);
  let x_654 : f32 = u_xlat16;
  let x_656 : f32 = u_xlat11.x;
  u_xlat11.x = (x_654 * x_656);
  let x_660 : f32 = u_xlat11.x;
  let x_662 : f32 = u_xlat11.x;
  u_xlat16 = (x_660 * x_662);
  let x_664 : f32 = u_xlat16;
  u_xlat3.x = ((x_664 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_668 : f32 = u_xlat16;
  let x_670 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_668 * x_670) + 0.18014100193977355957f);
  let x_674 : f32 = u_xlat16;
  let x_676 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_674 * x_676) + -0.33029949665069580078f);
  let x_680 : f32 = u_xlat16;
  let x_682 : f32 = u_xlat3.x;
  u_xlat16 = ((x_680 * x_682) + 0.99986600875854492188f);
  let x_685 : f32 = u_xlat16;
  let x_687 : f32 = u_xlat11.x;
  u_xlat3.x = (x_685 * x_687);
  let x_692 : f32 = u_xlat1.x;
  let x_694 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_692) < abs(x_694));
  let x_698 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_698 * -2.0f) + 1.57079637050628662109f);
  let x_702 : bool = u_xlatb8;
  if (x_702) {
    let x_707 : f32 = u_xlat3.x;
    x_703 = x_707;
  } else {
    x_703 = 0.0f;
  }
  let x_709 : f32 = x_703;
  u_xlat3.x = x_709;
  let x_712 : f32 = u_xlat11.x;
  let x_713 : f32 = u_xlat16;
  let x_716 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_712 * x_713) + x_716);
  let x_721 : f32 = u_xlat1.x;
  let x_723 : f32 = u_xlat1.x;
  u_xlatb16 = (x_721 < -(x_723));
  let x_726 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.14159274101257324219f, x_726);
  let x_729 : f32 = u_xlat16;
  let x_731 : f32 = u_xlat11.x;
  u_xlat11.x = (x_729 + x_731);
  let x_734 : f32 = u_xlat15;
  let x_736 : f32 = u_xlat1.x;
  u_xlat16 = min(x_734, x_736);
  let x_738 : f32 = u_xlat15;
  let x_740 : f32 = u_xlat1.x;
  u_xlat15 = max(x_738, x_740);
  let x_742 : f32 = u_xlat16;
  let x_743 : f32 = u_xlat16;
  u_xlatb1 = (x_742 < -(x_743));
  let x_746 : f32 = u_xlat15;
  let x_747 : f32 = u_xlat15;
  u_xlatb15 = (x_746 >= -(x_747));
  let x_750 : bool = u_xlatb15;
  let x_751 : bool = u_xlatb1;
  u_xlatb15 = (x_750 & x_751);
  let x_753 : bool = u_xlatb15;
  if (x_753) {
    let x_758 : f32 = u_xlat11.x;
    x_754 = -(x_758);
  } else {
    let x_762 : f32 = u_xlat11.x;
    x_754 = x_762;
  }
  let x_763 : f32 = x_754;
  u_xlat15 = x_763;
  let x_764 : f32 = u_xlat15;
  u_xlat15 = (x_764 * 57.295780181884765625f);
  let x_768 : bool = u_xlatb10.x;
  let x_769 : f32 = u_xlat15;
  u_xlat10.x = select(x_769, 0.0f, x_768);
  let x_773 : f32 = u_xlat10.x;
  u_xlatb15 = (x_773 < 0.0f);
  let x_776 : f32 = u_xlat10.x;
  u_xlat1.x = (x_776 + 360.0f);
  let x_780 : bool = u_xlatb15;
  if (x_780) {
    let x_785 : f32 = u_xlat1.x;
    x_781 = x_785;
  } else {
    let x_788 : f32 = u_xlat10.x;
    x_781 = x_788;
  }
  let x_789 : f32 = x_781;
  u_xlat10.x = x_789;
  let x_792 : f32 = u_xlat10.x;
  u_xlatb15 = (x_792 < -180.0f);
  let x_797 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_797);
  let x_799 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_799.x, x_799.x) + vec2<f32>(360.0f, -360.0f));
  let x_804 : bool = u_xlatb1;
  if (x_804) {
    let x_809 : f32 = u_xlat11.y;
    x_805 = x_809;
  } else {
    let x_812 : f32 = u_xlat10.x;
    x_805 = x_812;
  }
  let x_813 : f32 = x_805;
  u_xlat10.x = x_813;
  let x_815 : bool = u_xlatb15;
  if (x_815) {
    let x_820 : f32 = u_xlat11.x;
    x_816 = x_820;
  } else {
    let x_823 : f32 = u_xlat10.x;
    x_816 = x_823;
  }
  let x_824 : f32 = x_816;
  u_xlat10.x = x_824;
  let x_827 : f32 = u_xlat10.x;
  u_xlat10.x = (x_827 * 0.01481481455266475677f);
  let x_832 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_832)) + 1.0f);
  let x_838 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_838, 0.0f);
  let x_842 : f32 = u_xlat10.x;
  u_xlat15 = ((x_842 * -2.0f) + 3.0f);
  let x_847 : f32 = u_xlat10.x;
  let x_849 : f32 = u_xlat10.x;
  u_xlat10.x = (x_847 * x_849);
  let x_853 : f32 = u_xlat10.x;
  let x_854 : f32 = u_xlat15;
  u_xlat10.x = (x_853 * x_854);
  let x_858 : f32 = u_xlat10.x;
  let x_860 : f32 = u_xlat10.x;
  u_xlat10.x = (x_858 * x_860);
  let x_864 : f32 = u_xlat0.x;
  let x_866 : f32 = u_xlat10.x;
  u_xlat0.x = (x_864 * x_866);
  let x_870 : f32 = u_xlat6.x;
  let x_873 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_870) * x_873) + 0.02999999932944774628f);
  let x_879 : f32 = u_xlat5.x;
  let x_881 : f32 = u_xlat0.x;
  u_xlat0.x = (x_879 * x_881);
  let x_885 : f32 = u_xlat0.x;
  let x_889 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_885 * 0.18000000715255737305f) + x_889);
  let x_896 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_896.x, x_896.z, x_896.w));
  let x_904 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_904.x, x_904.z, x_904.w));
  let x_912 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_912.x, x_912.z, x_912.w));
  let x_916 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_916, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_919 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_919, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_925 : f32 = u_xlat15;
  let x_928 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_925, x_925, x_925)) + x_928);
  let x_930 : vec3<f32> = u_xlat0;
  let x_934 : f32 = u_xlat15;
  u_xlat0 = ((x_930 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_934, x_934, x_934));
  let x_937 : vec3<f32> = u_xlat0;
  let x_940 : vec3<f32> = (x_937 + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_941 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec3<f32> = u_xlat0;
  let x_944 : vec4<f32> = u_xlat1;
  let x_949 : vec3<f32> = ((x_943 * vec3<f32>(x_944.x, x_944.y, x_944.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_950 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec3<f32> = u_xlat0;
  let x_958 : vec3<f32> = ((x_952 * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_959 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : vec3<f32> = u_xlat0;
  let x_962 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_961 * vec3<f32>(x_962.x, x_962.y, x_962.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_968 : vec4<f32> = u_xlat1;
  let x_970 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_968.x, x_968.y, x_968.z) / x_970);
  let x_976 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_976);
  let x_983 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_983);
  let x_990 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_990);
  let x_993 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_998 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_998, 0.00009999999747378752f);
  let x_1001 : vec4<f32> = u_xlat1;
  let x_1003 : vec3<f32> = u_xlat0;
  let x_1005 : vec2<f32> = (vec2<f32>(x_1001.x, x_1001.y) / vec2<f32>(x_1003.x, x_1003.x));
  let x_1006 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1005.x, x_1005.y, x_1006.z);
  let x_1009 : f32 = u_xlat1.y;
  u_xlat15 = max(x_1009, 0.0f);
  let x_1011 : f32 = u_xlat15;
  u_xlat15 = min(x_1011, 65504.0f);
  let x_1014 : f32 = u_xlat15;
  u_xlat15 = log2(x_1014);
  let x_1016 : f32 = u_xlat15;
  u_xlat15 = (x_1016 * 0.98110002279281616211f);
  let x_1019 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_1019);
  let x_1023 : f32 = u_xlat0.y;
  u_xlat15 = max(x_1023, 0.00009999999747378752f);
  let x_1026 : f32 = u_xlat1.y;
  let x_1027 : f32 = u_xlat15;
  u_xlat15 = (x_1026 / x_1027);
  let x_1030 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_1030) + 1.0f);
  let x_1034 : f32 = u_xlat0.y;
  let x_1036 : f32 = u_xlat16;
  u_xlat0.z = (-(x_1034) + x_1036);
  let x_1039 : f32 = u_xlat15;
  let x_1041 : vec3<f32> = u_xlat0;
  let x_1043 : vec2<f32> = (vec2<f32>(x_1039, x_1039) * vec2<f32>(x_1041.x, x_1041.z));
  let x_1044 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1043.x, x_1044.y, x_1043.y, x_1044.w);
  let x_1050 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1058 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1066 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1070 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_1070, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1072 : f32 = u_xlat15;
  let x_1075 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_1072, x_1072, x_1072)) + x_1075);
  let x_1077 : vec3<f32> = u_xlat0;
  let x_1081 : f32 = u_xlat15;
  u_xlat0 = ((x_1077 * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1081, x_1081, x_1081));
  let x_1084 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_1084);
  let x_1087 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_1087);
  let x_1090 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_1090);
  let x_1097 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1105 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1113 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1121 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), x_1121);
  let x_1125 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1125, 0.0f, 1.0f);
  let x_1132 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), x_1132);
  let x_1136 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1136, 0.0f, 1.0f);
  let x_1143 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), x_1143);
  let x_1147 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1147, 0.0f, 1.0f);
  let x_1155 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1155);
  let x_1159 : bool = u_xlatb0.x;
  if (x_1159) {
    let x_1162 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1162.x, x_1162.y, x_1162.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1167 : vec4<f32> = u_xlat1;
    let x_1169 : vec3<f32> = log2(vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
    let x_1170 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
    let x_1172 : vec4<f32> = u_xlat2;
    let x_1176 : vec3<f32> = (vec3<f32>(x_1172.x, x_1172.y, x_1172.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1177 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
    let x_1179 : vec4<f32> = u_xlat2;
    let x_1181 : vec3<f32> = exp2(vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
    let x_1182 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
    let x_1184 : vec4<f32> = u_xlat2;
    let x_1191 : vec3<f32> = ((vec3<f32>(x_1184.x, x_1184.y, x_1184.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1192 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
    let x_1197 : vec4<f32> = u_xlat1;
    let x_1199 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.x));
    u_xlatb3 = vec3<bool>(x_1199.x, x_1199.y, x_1199.z);
    let x_1203 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1203;
    let x_1205 : bool = u_xlatb3.x;
    if (x_1205) {
      let x_1210 : f32 = u_xlat0.x;
      x_1206 = x_1210;
    } else {
      let x_1213 : f32 = u_xlat2.x;
      x_1206 = x_1213;
    }
    let x_1214 : f32 = x_1206;
    hlslcc_movcTemp.x = x_1214;
    let x_1217 : bool = u_xlatb3.y;
    if (x_1217) {
      let x_1222 : f32 = u_xlat0.y;
      x_1218 = x_1222;
    } else {
      let x_1225 : f32 = u_xlat2.y;
      x_1218 = x_1225;
    }
    let x_1226 : f32 = x_1218;
    hlslcc_movcTemp.y = x_1226;
    let x_1229 : bool = u_xlatb3.z;
    if (x_1229) {
      let x_1234 : f32 = u_xlat0.z;
      x_1230 = x_1234;
    } else {
      let x_1237 : f32 = u_xlat2.z;
      x_1230 = x_1237;
    }
    let x_1238 : f32 = x_1230;
    hlslcc_movcTemp.z = x_1238;
    let x_1240 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1240;
    let x_1241 : vec3<f32> = u_xlat0;
    let x_1244 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1246 : vec3<f32> = (vec3<f32>(x_1241.z, x_1241.x, x_1241.y) * vec3<f32>(x_1244.z, x_1244.z, x_1244.z));
    let x_1247 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
    let x_1250 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1250);
    let x_1253 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1255 : vec2<f32> = (vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(0.5f, 0.5f));
    let x_1256 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1255.x, x_1256.y, x_1256.z, x_1255.y);
    let x_1258 : vec4<f32> = u_xlat2;
    let x_1261 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1264 : vec4<f32> = u_xlat2;
    let x_1266 : vec2<f32> = ((vec2<f32>(x_1258.y, x_1258.z) * vec2<f32>(x_1261.x, x_1261.y)) + vec2<f32>(x_1264.x, x_1264.w));
    let x_1267 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1267.x, x_1266.x, x_1266.y, x_1267.w);
    let x_1269 : f32 = u_xlat15;
    let x_1271 : f32 = x_26.x_UserLut_Params.y;
    let x_1274 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1269 * x_1271) + x_1274);
    let x_1281 : vec4<f32> = u_xlat2;
    let x_1283 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1281.x, x_1281.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1283.x, x_1283.y, x_1283.z);
    let x_1287 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_1287;
    u_xlat4.y = 0.0f;
    let x_1290 : vec4<f32> = u_xlat2;
    let x_1292 : vec2<f32> = u_xlat4;
    let x_1293 : vec2<f32> = (vec2<f32>(x_1290.x, x_1290.z) + x_1292);
    let x_1294 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1293.x, x_1293.y, x_1294.z, x_1294.w);
    let x_1299 : vec4<f32> = u_xlat2;
    let x_1301 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1299.x, x_1299.y), 0.0f);
    let x_1302 : vec3<f32> = vec3<f32>(x_1301.x, x_1301.y, x_1301.z);
    let x_1303 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
    let x_1306 : f32 = u_xlat0.z;
    let x_1308 : f32 = x_26.x_UserLut_Params.z;
    let x_1310 : f32 = u_xlat15;
    u_xlat15 = ((x_1306 * x_1308) + -(x_1310));
    let x_1313 : vec3<f32> = u_xlat3;
    let x_1315 : vec4<f32> = u_xlat2;
    let x_1317 : vec3<f32> = (-(x_1313) + vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
    let x_1318 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
    let x_1320 : f32 = u_xlat15;
    let x_1322 : vec4<f32> = u_xlat2;
    let x_1325 : vec3<f32> = u_xlat3;
    let x_1326 : vec3<f32> = ((vec3<f32>(x_1320, x_1320, x_1320) * vec3<f32>(x_1322.x, x_1322.y, x_1322.z)) + x_1325);
    let x_1327 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
    let x_1329 : vec3<f32> = u_xlat0;
    let x_1331 : vec4<f32> = u_xlat2;
    let x_1333 : vec3<f32> = (-(x_1329) + vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
    let x_1334 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
    let x_1337 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1339 : vec4<f32> = u_xlat2;
    let x_1342 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1337.w, x_1337.w, x_1337.w) * vec3<f32>(x_1339.x, x_1339.y, x_1339.z)) + x_1342);
    let x_1344 : vec3<f32> = u_xlat0;
    let x_1347 : vec3<f32> = (x_1344 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1348 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
    let x_1350 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1350 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1354 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1354 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1358 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1358));
    let x_1361 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1361 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1365 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1365);
    let x_1369 : vec3<f32> = u_xlat0;
    let x_1371 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1369.x));
    u_xlatb0 = vec3<bool>(x_1371.x, x_1371.y, x_1371.z);
    let x_1374 : bool = u_xlatb0.x;
    if (x_1374) {
      let x_1379 : f32 = u_xlat2.x;
      x_1375 = x_1379;
    } else {
      let x_1382 : f32 = u_xlat3.x;
      x_1375 = x_1382;
    }
    let x_1383 : f32 = x_1375;
    u_xlat1.x = x_1383;
    let x_1386 : bool = u_xlatb0.y;
    if (x_1386) {
      let x_1391 : f32 = u_xlat2.y;
      x_1387 = x_1391;
    } else {
      let x_1394 : f32 = u_xlat3.y;
      x_1387 = x_1394;
    }
    let x_1395 : f32 = x_1387;
    u_xlat1.y = x_1395;
    let x_1398 : bool = u_xlatb0.z;
    if (x_1398) {
      let x_1403 : f32 = u_xlat2.z;
      x_1399 = x_1403;
    } else {
      let x_1406 : f32 = u_xlat3.z;
      x_1399 = x_1406;
    }
    let x_1407 : f32 = x_1399;
    u_xlat1.z = x_1407;
  }
  let x_1409 : vec4<f32> = u_xlat1;
  let x_1412 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1409.z, x_1409.x, x_1409.y) * vec3<f32>(x_1412.z, x_1412.z, x_1412.z));
  let x_1416 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1416);
  let x_1420 : vec4<f32> = x_26.x_Lut_Params;
  let x_1422 : vec2<f32> = (vec2<f32>(x_1420.x, x_1420.y) * vec2<f32>(0.5f, 0.5f));
  let x_1423 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1422.x, x_1422.y, x_1423.z, x_1423.w);
  let x_1425 : vec3<f32> = u_xlat0;
  let x_1428 : vec4<f32> = x_26.x_Lut_Params;
  let x_1431 : vec4<f32> = u_xlat1;
  let x_1433 : vec2<f32> = ((vec2<f32>(x_1425.y, x_1425.z) * vec2<f32>(x_1428.x, x_1428.y)) + vec2<f32>(x_1431.x, x_1431.y));
  let x_1434 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1434.x, x_1433.x, x_1433.y, x_1434.w);
  let x_1437 : f32 = u_xlat0.x;
  let x_1439 : f32 = x_26.x_Lut_Params.y;
  let x_1442 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1437 * x_1439) + x_1442);
  let x_1449 : vec4<f32> = u_xlat2;
  let x_1451 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1449.x, x_1449.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1451.x, x_1451.y, x_1451.z);
  let x_1454 : f32 = x_26.x_Lut_Params.y;
  u_xlat1.x = x_1454;
  u_xlat1.y = 0.0f;
  let x_1457 : vec4<f32> = u_xlat1;
  let x_1459 : vec4<f32> = u_xlat2;
  let x_1461 : vec2<f32> = (vec2<f32>(x_1457.x, x_1457.y) + vec2<f32>(x_1459.x, x_1459.z));
  let x_1462 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1461.x, x_1461.y, x_1462.z, x_1462.w);
  let x_1467 : vec4<f32> = u_xlat1;
  let x_1469 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1467.x, x_1467.y), 0.0f);
  let x_1470 : vec3<f32> = vec3<f32>(x_1469.x, x_1469.y, x_1469.z);
  let x_1471 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1470.x, x_1470.y, x_1471.z, x_1470.z);
  let x_1474 : f32 = u_xlat1.z;
  let x_1476 : f32 = x_26.x_Lut_Params.z;
  let x_1479 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1474 * x_1476) + -(x_1479));
  let x_1483 : vec3<f32> = u_xlat5;
  let x_1485 : vec4<f32> = u_xlat1;
  let x_1487 : vec3<f32> = (-(x_1483) + vec3<f32>(x_1485.x, x_1485.y, x_1485.w));
  let x_1488 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1488.w);
  let x_1490 : vec3<f32> = u_xlat0;
  let x_1492 : vec4<f32> = u_xlat1;
  let x_1495 : vec3<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1490.x, x_1490.x, x_1490.x) * vec3<f32>(x_1492.x, x_1492.y, x_1492.z)) + x_1495);
  let x_1497 : vec3<f32> = u_xlat0;
  let x_1498 : vec3<f32> = (x_1497 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1499 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
  let x_1501 : vec3<f32> = u_xlat0;
  let x_1503 : vec3<f32> = log2(abs(x_1501));
  let x_1504 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
  let x_1506 : vec4<f32> = u_xlat2;
  let x_1508 : vec3<f32> = (vec3<f32>(x_1506.x, x_1506.y, x_1506.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1509 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
  let x_1511 : vec4<f32> = u_xlat2;
  let x_1513 : vec3<f32> = exp2(vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
  let x_1514 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
  let x_1516 : vec4<f32> = u_xlat2;
  let x_1519 : vec3<f32> = ((vec3<f32>(x_1516.x, x_1516.y, x_1516.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1520 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1520.w);
  let x_1522 : vec3<f32> = u_xlat0;
  let x_1524 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1522.x));
  u_xlatb0 = vec3<bool>(x_1524.x, x_1524.y, x_1524.z);
  let x_1529 : bool = u_xlatb0.x;
  if (x_1529) {
    let x_1534 : f32 = u_xlat1.x;
    x_1530 = x_1534;
  } else {
    let x_1537 : f32 = u_xlat2.x;
    x_1530 = x_1537;
  }
  let x_1538 : f32 = x_1530;
  SV_Target0.x = x_1538;
  let x_1542 : bool = u_xlatb0.y;
  if (x_1542) {
    let x_1547 : f32 = u_xlat1.y;
    x_1543 = x_1547;
  } else {
    let x_1550 : f32 = u_xlat2.y;
    x_1543 = x_1550;
  }
  let x_1551 : f32 = x_1543;
  SV_Target0.y = x_1551;
  let x_1554 : bool = u_xlatb0.z;
  if (x_1554) {
    let x_1559 : f32 = u_xlat1.z;
    x_1555 = x_1559;
  } else {
    let x_1562 : f32 = u_xlat2.z;
    x_1555 = x_1562;
  }
  let x_1563 : f32 = x_1555;
  SV_Target0.z = x_1563;
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


