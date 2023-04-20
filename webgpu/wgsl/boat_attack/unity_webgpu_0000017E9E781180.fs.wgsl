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
  x_Chroma_Params : f32,
  /* @offset(96) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(112) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(128) */
  x_Grain_Params : vec2<f32>,
  /* @offset(144) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(160) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlatb15 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlatb10 : vec2<bool>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_423 : f32;
  var x_432 : f32;
  var x_572 : f32;
  var x_623 : f32;
  var x_650 : f32;
  var x_674 : f32;
  var x_685 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1109 : f32;
  var x_1121 : f32;
  var x_1133 : f32;
  var x_1285 : f32;
  var x_1297 : f32;
  var x_1309 : f32;
  var x_1561 : f32;
  var x_1573 : f32;
  var x_1585 : f32;
  var x_1642 : f32;
  var x_1654 : f32;
  var x_1666 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_22 : vec4<f32> = u_xlat0;
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_22.z, x_22.w), vec2<f32>(x_24.z, x_24.w));
  let x_31 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x));
  let x_35 : vec4<f32> = u_xlat0;
  let x_43 : f32 = x_38.x_Chroma_Params;
  u_xlat0 = (x_35 * vec4<f32>(x_43, x_43, x_43, x_43));
  let x_49 : vec4<f32> = x_38.x_BlitTexture_TexelSize;
  let x_57 : vec4<f32> = x_38.x_RTHandleScale;
  u_xlat1 = ((-(vec4<f32>(x_49.x, x_49.y, x_49.x, x_49.y)) * vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y));
  let x_61 : vec4<f32> = u_xlat1;
  let x_63 : vec2<f32> = vs_TEXCOORD0;
  let x_64 : vec2<f32> = min(vec2<f32>(x_61.z, x_61.w), x_63);
  let x_65 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_64.x, x_64.y, x_65.z, x_65.w);
  let x_77 : vec4<f32> = u_xlat2;
  let x_81 : f32 = x_38.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_77.x, x_77.y), x_81);
  u_xlat2.x = x_82.x;
  let x_85 : vec4<f32> = u_xlat0;
  let x_90 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_85 * vec4<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.6666666865348815918f, -0.6666666865348815918f)) + vec4<f32>(x_90.x, x_90.y, x_90.x, x_90.y));
  let x_93 : vec4<f32> = u_xlat1;
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_93, x_94);
  let x_99 : vec4<f32> = u_xlat0;
  let x_102 : f32 = x_38.x_GlobalMipBias.x;
  let x_103 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_99.x, x_99.y), x_102);
  u_xlat2.y = x_103.y;
  let x_110 : vec4<f32> = u_xlat0;
  let x_113 : f32 = x_38.x_GlobalMipBias.x;
  let x_114 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_110.z, x_110.w), x_113);
  u_xlat2.z = x_114.z;
  let x_125 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb0.x = (0.0f < x_125);
  let x_130 : bool = u_xlatb0.x;
  if (x_130) {
    let x_133 : vec2<f32> = vs_TEXCOORD0;
    let x_135 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_138 : vec2<f32> = (x_133 + -(vec2<f32>(x_135.x, x_135.y)));
    let x_139 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
    let x_141 : vec4<f32> = u_xlat0;
    let x_145 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_147 : vec2<f32> = (abs(vec2<f32>(x_141.x, x_141.y)) * vec2<f32>(x_145.z, x_145.z));
    let x_148 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_148.x, x_147.x, x_147.y, x_148.w);
    let x_151 : f32 = u_xlat0.y;
    let x_155 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat0.x = (x_151 * x_155);
    let x_158 : vec4<f32> = u_xlat0;
    let x_160 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_158.x, x_158.z), vec2<f32>(x_160.x, x_160.z));
    let x_165 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_165) + 1.0f);
    let x_171 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_171, 0.0f);
    let x_175 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_175);
    let x_179 : f32 = u_xlat0.x;
    let x_181 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat0.x = (x_179 * x_181);
    let x_185 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_185);
    let x_192 : vec4<f32> = x_38.x_Vignette_Params1;
    u_xlat5 = (-(vec3<f32>(x_192.x, x_192.y, x_192.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_197 : vec4<f32> = u_xlat0;
    let x_199 : vec3<f32> = u_xlat5;
    let x_202 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_204 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.x, x_197.x) * x_199) + vec3<f32>(x_202.x, x_202.y, x_202.z));
    let x_205 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat0;
    let x_209 : vec4<f32> = u_xlat2;
    let x_211 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.x, x_209.y, x_209.z));
    let x_212 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  }
  let x_214 : vec4<f32> = u_xlat2;
  let x_218 : vec4<f32> = x_38.x_Lut_Params;
  let x_220 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_218.w, x_218.w, x_218.w));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_236 : vec4<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_249 : f32 = u_xlat6.y;
  let x_251 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_249, x_251);
  let x_255 : f32 = u_xlat6.z;
  let x_257 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_255, x_257);
  let x_261 : f32 = u_xlat6.y;
  let x_263 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_261, x_263);
  let x_267 : f32 = u_xlat6.z;
  let x_269 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_267, x_269);
  let x_272 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = max(vec3<f32>(x_272.x, x_272.y, x_272.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : f32 = u_xlat0.x;
  let x_284 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_281) + x_284);
  let x_288 : f32 = u_xlat0.x;
  let x_290 : f32 = u_xlat0.z;
  u_xlat0.x = (x_288 / x_290);
  let x_293 : vec3<f32> = u_xlat6;
  let x_296 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_293.y, x_293.x, x_293.z)) + vec3<f32>(x_296.z, x_296.y, x_296.x));
  let x_299 : vec3<f32> = u_xlat5;
  let x_301 : vec3<f32> = u_xlat6;
  let x_303 : vec2<f32> = (vec2<f32>(x_299.x, x_299.y) * vec2<f32>(x_301.z, x_301.y));
  let x_304 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_303.x, x_303.y, x_304.z);
  let x_307 : f32 = u_xlat5.y;
  let x_309 : f32 = u_xlat5.x;
  u_xlat5.x = (x_307 + x_309);
  let x_313 : f32 = u_xlat6.x;
  let x_315 : f32 = u_xlat5.z;
  let x_318 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_313 * x_315) + x_318);
  let x_322 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_322, 0.0f);
  let x_326 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_326);
  let x_332 : f32 = u_xlat6.y;
  let x_334 : f32 = u_xlat6.z;
  u_xlat10.x = (x_332 + x_334);
  let x_338 : f32 = u_xlat6.x;
  let x_340 : f32 = u_xlat10.x;
  u_xlat10.x = (x_338 + x_340);
  let x_344 : f32 = u_xlat5.x;
  let x_348 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_344 * 1.75f) + x_348);
  let x_353 : f32 = u_xlat0.x;
  u_xlat15 = (x_353 + -0.40000000596046447754f);
  let x_356 : f32 = u_xlat15;
  u_xlat1.x = (x_356 * 2.5f);
  let x_361 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_361)) + 1.0f);
  let x_367 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_367, 0.0f);
  let x_371 : f32 = u_xlat15;
  u_xlatb15 = (x_371 >= 0.0f);
  let x_373 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_373);
  let x_376 : f32 = u_xlat1.x;
  let x_379 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_376) * x_379) + 1.0f);
  let x_383 : f32 = u_xlat15;
  let x_385 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_383 * x_385) + 1.0f);
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_389.x, x_389.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_398 : f32 = u_xlat5.x;
  u_xlatb1 = (0.15999999642372131348f >= x_398);
  let x_402 : f32 = u_xlat5.x;
  u_xlatb5 = (x_402 >= 0.47999998927116394043f);
  let x_407 : f32 = u_xlat10.x;
  u_xlat10.x = (0.07999999821186065674f / x_407);
  let x_411 : f32 = u_xlat10.x;
  u_xlat10.x = (x_411 + -0.5f);
  let x_416 : f32 = u_xlat10.x;
  let x_418 : f32 = u_xlat10.y;
  u_xlat10.x = (x_416 * x_418);
  let x_421 : bool = u_xlatb5;
  if (x_421) {
    x_423 = 0.0f;
  } else {
    let x_428 : f32 = u_xlat10.x;
    x_423 = x_428;
  }
  let x_429 : f32 = x_423;
  u_xlat5.x = x_429;
  let x_431 : bool = u_xlatb1;
  if (x_431) {
    let x_436 : f32 = u_xlat10.y;
    x_432 = x_436;
  } else {
    let x_439 : f32 = u_xlat5.x;
    x_432 = x_439;
  }
  let x_440 : f32 = x_432;
  u_xlat5.x = x_440;
  let x_443 : f32 = u_xlat5.x;
  u_xlat5.x = (x_443 + 1.0f);
  let x_446 : vec3<f32> = u_xlat5;
  let x_448 : vec3<f32> = u_xlat6;
  let x_449 : vec3<f32> = (vec3<f32>(x_446.x, x_446.x, x_446.x) * x_448);
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_450.x, x_449.x, x_449.y, x_449.z);
  let x_455 : vec4<f32> = u_xlat2;
  let x_457 : vec4<f32> = u_xlat2;
  let x_460 : vec4<bool> = (vec4<f32>(x_455.z, x_455.w, x_455.z, x_455.w) == vec4<f32>(x_457.y, x_457.z, x_457.y, x_457.z));
  u_xlatb10 = vec2<bool>(x_460.x, x_460.y);
  let x_463 : bool = u_xlatb10.y;
  let x_465 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_463 & x_465);
  let x_469 : f32 = u_xlat6.y;
  let x_471 : f32 = u_xlat5.x;
  let x_474 : f32 = u_xlat2.w;
  u_xlat15 = ((x_469 * x_471) + -(x_474));
  let x_477 : f32 = u_xlat15;
  u_xlat15 = (x_477 * 1.73205077648162841797f);
  let x_481 : f32 = u_xlat2.y;
  let x_484 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_481 * 2.0f) + -(x_484));
  let x_489 : f32 = u_xlat6.z;
  let x_492 : f32 = u_xlat5.x;
  let x_495 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_489) * x_492) + x_495);
  let x_499 : f32 = u_xlat15;
  let x_502 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_499), abs(x_502));
  let x_507 : f32 = u_xlat15;
  let x_510 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_507), abs(x_510));
  let x_513 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_513);
  let x_515 : f32 = u_xlat16;
  let x_517 : f32 = u_xlat11.x;
  u_xlat11.x = (x_515 * x_517);
  let x_521 : f32 = u_xlat11.x;
  let x_523 : f32 = u_xlat11.x;
  u_xlat16 = (x_521 * x_523);
  let x_526 : f32 = u_xlat16;
  u_xlat3.x = ((x_526 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_532 : f32 = u_xlat16;
  let x_534 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_532 * x_534) + 0.18014100193977355957f);
  let x_539 : f32 = u_xlat16;
  let x_541 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_539 * x_541) + -0.33029949665069580078f);
  let x_546 : f32 = u_xlat16;
  let x_548 : f32 = u_xlat3.x;
  u_xlat16 = ((x_546 * x_548) + 0.99986600875854492188f);
  let x_552 : f32 = u_xlat16;
  let x_554 : f32 = u_xlat11.x;
  u_xlat3.x = (x_552 * x_554);
  let x_559 : f32 = u_xlat1.x;
  let x_561 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_559) < abs(x_561));
  let x_565 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_565 * -2.0f) + 1.57079637050628662109f);
  let x_571 : bool = u_xlatb8;
  if (x_571) {
    let x_576 : f32 = u_xlat3.x;
    x_572 = x_576;
  } else {
    x_572 = 0.0f;
  }
  let x_578 : f32 = x_572;
  u_xlat3.x = x_578;
  let x_581 : f32 = u_xlat11.x;
  let x_582 : f32 = u_xlat16;
  let x_585 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_581 * x_582) + x_585);
  let x_590 : f32 = u_xlat1.x;
  let x_592 : f32 = u_xlat1.x;
  u_xlatb16 = (x_590 < -(x_592));
  let x_595 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.14159274101257324219f, x_595);
  let x_598 : f32 = u_xlat16;
  let x_600 : f32 = u_xlat11.x;
  u_xlat11.x = (x_598 + x_600);
  let x_603 : f32 = u_xlat15;
  let x_605 : f32 = u_xlat1.x;
  u_xlat16 = min(x_603, x_605);
  let x_607 : f32 = u_xlat15;
  let x_609 : f32 = u_xlat1.x;
  u_xlat15 = max(x_607, x_609);
  let x_611 : f32 = u_xlat16;
  let x_612 : f32 = u_xlat16;
  u_xlatb1 = (x_611 < -(x_612));
  let x_615 : f32 = u_xlat15;
  let x_616 : f32 = u_xlat15;
  u_xlatb15 = (x_615 >= -(x_616));
  let x_619 : bool = u_xlatb15;
  let x_620 : bool = u_xlatb1;
  u_xlatb15 = (x_619 & x_620);
  let x_622 : bool = u_xlatb15;
  if (x_622) {
    let x_627 : f32 = u_xlat11.x;
    x_623 = -(x_627);
  } else {
    let x_631 : f32 = u_xlat11.x;
    x_623 = x_631;
  }
  let x_632 : f32 = x_623;
  u_xlat15 = x_632;
  let x_633 : f32 = u_xlat15;
  u_xlat15 = (x_633 * 57.295780181884765625f);
  let x_637 : bool = u_xlatb10.x;
  let x_638 : f32 = u_xlat15;
  u_xlat10.x = select(x_638, 0.0f, x_637);
  let x_642 : f32 = u_xlat10.x;
  u_xlatb15 = (x_642 < 0.0f);
  let x_645 : f32 = u_xlat10.x;
  u_xlat1.x = (x_645 + 360.0f);
  let x_649 : bool = u_xlatb15;
  if (x_649) {
    let x_654 : f32 = u_xlat1.x;
    x_650 = x_654;
  } else {
    let x_657 : f32 = u_xlat10.x;
    x_650 = x_657;
  }
  let x_658 : f32 = x_650;
  u_xlat10.x = x_658;
  let x_661 : f32 = u_xlat10.x;
  u_xlatb15 = (x_661 < -180.0f);
  let x_666 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_666);
  let x_668 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_668.x, x_668.x) + vec2<f32>(360.0f, -360.0f));
  let x_673 : bool = u_xlatb1;
  if (x_673) {
    let x_678 : f32 = u_xlat11.y;
    x_674 = x_678;
  } else {
    let x_681 : f32 = u_xlat10.x;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  u_xlat10.x = x_682;
  let x_684 : bool = u_xlatb15;
  if (x_684) {
    let x_689 : f32 = u_xlat11.x;
    x_685 = x_689;
  } else {
    let x_692 : f32 = u_xlat10.x;
    x_685 = x_692;
  }
  let x_693 : f32 = x_685;
  u_xlat10.x = x_693;
  let x_696 : f32 = u_xlat10.x;
  u_xlat10.x = (x_696 * 0.01481481455266475677f);
  let x_701 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_701)) + 1.0f);
  let x_707 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_707, 0.0f);
  let x_711 : f32 = u_xlat10.x;
  u_xlat15 = ((x_711 * -2.0f) + 3.0f);
  let x_716 : f32 = u_xlat10.x;
  let x_718 : f32 = u_xlat10.x;
  u_xlat10.x = (x_716 * x_718);
  let x_722 : f32 = u_xlat10.x;
  let x_723 : f32 = u_xlat15;
  u_xlat10.x = (x_722 * x_723);
  let x_727 : f32 = u_xlat10.x;
  let x_729 : f32 = u_xlat10.x;
  u_xlat10.x = (x_727 * x_729);
  let x_733 : f32 = u_xlat0.x;
  let x_735 : f32 = u_xlat10.x;
  u_xlat0.x = (x_733 * x_735);
  let x_739 : f32 = u_xlat6.x;
  let x_742 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_739) * x_742) + 0.02999999932944774628f);
  let x_748 : f32 = u_xlat5.x;
  let x_750 : f32 = u_xlat0.x;
  u_xlat0.x = (x_748 * x_750);
  let x_754 : f32 = u_xlat0.x;
  let x_758 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_754 * 0.18000000715255737305f) + x_758);
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_765.x, x_765.z, x_765.w));
  let x_773 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_773.x, x_773.z, x_773.w));
  let x_781 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_781.x, x_781.z, x_781.w));
  let x_785 : vec4<f32> = u_xlat0;
  let x_788 : vec3<f32> = max(vec3<f32>(x_785.x, x_785.y, x_785.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_789 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_791 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_791.x, x_791.y, x_791.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_798 : f32 = u_xlat15;
  let x_801 : vec4<f32> = u_xlat0;
  let x_803 : vec3<f32> = (-(vec3<f32>(x_798, x_798, x_798)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat0;
  let x_811 : f32 = u_xlat15;
  let x_813 : vec3<f32> = ((vec3<f32>(x_806.x, x_806.y, x_806.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_811, x_811, x_811));
  let x_814 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_816 : vec4<f32> = u_xlat0;
  let x_820 : vec3<f32> = (vec3<f32>(x_816.x, x_816.y, x_816.z) + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat0;
  let x_825 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = ((vec3<f32>(x_823.x, x_823.y, x_823.z) * vec3<f32>(x_825.x, x_825.y, x_825.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat0;
  let x_840 : vec3<f32> = ((vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_841 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat0;
  let x_845 : vec4<f32> = u_xlat2;
  let x_850 : vec3<f32> = ((vec3<f32>(x_843.x, x_843.y, x_843.z) * vec3<f32>(x_845.x, x_845.y, x_845.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_851 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec4<f32> = u_xlat0;
  let x_857 : vec3<f32> = (vec3<f32>(x_853.x, x_853.y, x_853.z) / vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_864 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_872 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_880 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_884 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_884.x, x_884.y, x_884.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_889 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_889, 0.00009999999747378752f);
  let x_892 : vec4<f32> = u_xlat1;
  let x_894 : vec4<f32> = u_xlat0;
  let x_896 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) / vec2<f32>(x_894.x, x_894.x));
  let x_897 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
  let x_900 : f32 = u_xlat1.y;
  u_xlat15 = max(x_900, 0.0f);
  let x_902 : f32 = u_xlat15;
  u_xlat15 = min(x_902, 65504.0f);
  let x_905 : f32 = u_xlat15;
  u_xlat15 = log2(x_905);
  let x_907 : f32 = u_xlat15;
  u_xlat15 = (x_907 * 0.98110002279281616211f);
  let x_910 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_910);
  let x_914 : f32 = u_xlat0.y;
  u_xlat15 = max(x_914, 0.00009999999747378752f);
  let x_917 : f32 = u_xlat1.y;
  let x_918 : f32 = u_xlat15;
  u_xlat15 = (x_917 / x_918);
  let x_921 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_921) + 1.0f);
  let x_925 : f32 = u_xlat0.y;
  let x_927 : f32 = u_xlat16;
  u_xlat0.z = (-(x_925) + x_927);
  let x_930 : f32 = u_xlat15;
  let x_932 : vec4<f32> = u_xlat0;
  let x_934 : vec2<f32> = (vec2<f32>(x_930, x_930) * vec2<f32>(x_932.x, x_932.z));
  let x_935 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_934.x, x_935.y, x_934.y, x_935.w);
  let x_941 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_949 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_957 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_961 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_961.x, x_961.y, x_961.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_964 : f32 = u_xlat15;
  let x_967 : vec4<f32> = u_xlat0;
  let x_969 : vec3<f32> = (-(vec3<f32>(x_964, x_964, x_964)) + vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_972 : vec4<f32> = u_xlat0;
  let x_977 : f32 = u_xlat15;
  let x_979 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.y, x_972.z) * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_977, x_977, x_977));
  let x_980 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_986 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_990 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_998 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1006 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1014 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1022 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1027 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1027, 0.0f, 1.0f);
  let x_1034 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1039 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1039, 0.0f, 1.0f);
  let x_1046 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1051 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1051, 0.0f, 1.0f);
  let x_1056 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1056);
  let x_1060 : bool = u_xlatb0.x;
  if (x_1060) {
    let x_1063 : vec4<f32> = u_xlat1;
    let x_1067 : vec3<f32> = (vec3<f32>(x_1063.x, x_1063.y, x_1063.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1068 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
    let x_1070 : vec4<f32> = u_xlat1;
    let x_1072 : vec3<f32> = log2(vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
    let x_1073 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
    let x_1075 : vec4<f32> = u_xlat2;
    let x_1079 : vec3<f32> = (vec3<f32>(x_1075.x, x_1075.y, x_1075.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1080 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
    let x_1082 : vec4<f32> = u_xlat2;
    let x_1084 : vec3<f32> = exp2(vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
    let x_1085 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
    let x_1087 : vec4<f32> = u_xlat2;
    let x_1094 : vec3<f32> = ((vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1095 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
    let x_1100 : vec4<f32> = u_xlat1;
    let x_1102 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1100.x));
    u_xlatb3 = vec3<bool>(x_1102.x, x_1102.y, x_1102.z);
    let x_1106 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1106;
    let x_1108 : bool = u_xlatb3.x;
    if (x_1108) {
      let x_1113 : f32 = u_xlat0.x;
      x_1109 = x_1113;
    } else {
      let x_1116 : f32 = u_xlat2.x;
      x_1109 = x_1116;
    }
    let x_1117 : f32 = x_1109;
    hlslcc_movcTemp.x = x_1117;
    let x_1120 : bool = u_xlatb3.y;
    if (x_1120) {
      let x_1125 : f32 = u_xlat0.y;
      x_1121 = x_1125;
    } else {
      let x_1128 : f32 = u_xlat2.y;
      x_1121 = x_1128;
    }
    let x_1129 : f32 = x_1121;
    hlslcc_movcTemp.y = x_1129;
    let x_1132 : bool = u_xlatb3.z;
    if (x_1132) {
      let x_1137 : f32 = u_xlat0.z;
      x_1133 = x_1137;
    } else {
      let x_1140 : f32 = u_xlat2.z;
      x_1133 = x_1140;
    }
    let x_1141 : f32 = x_1133;
    hlslcc_movcTemp.z = x_1141;
    let x_1143 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1143;
    let x_1144 : vec4<f32> = u_xlat0;
    let x_1147 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1149 : vec3<f32> = (vec3<f32>(x_1144.z, x_1144.x, x_1144.y) * vec3<f32>(x_1147.z, x_1147.z, x_1147.z));
    let x_1150 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
    let x_1153 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1153);
    let x_1156 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1159 : vec2<f32> = (vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(0.5f, 0.5f));
    let x_1160 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1159.x, x_1160.y, x_1160.z, x_1159.y);
    let x_1162 : vec4<f32> = u_xlat2;
    let x_1165 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1168 : vec4<f32> = u_xlat2;
    let x_1170 : vec2<f32> = ((vec2<f32>(x_1162.y, x_1162.z) * vec2<f32>(x_1165.x, x_1165.y)) + vec2<f32>(x_1168.x, x_1168.w));
    let x_1171 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1171.x, x_1170.x, x_1170.y, x_1171.w);
    let x_1173 : f32 = u_xlat15;
    let x_1175 : f32 = x_38.x_UserLut_Params.y;
    let x_1178 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1173 * x_1175) + x_1178);
    let x_1185 : vec4<f32> = u_xlat2;
    let x_1187 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1185.x, x_1185.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1187.x, x_1187.y, x_1187.z);
    let x_1191 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_1191;
    u_xlat4.y = 0.0f;
    let x_1194 : vec4<f32> = u_xlat2;
    let x_1196 : vec2<f32> = u_xlat4;
    let x_1197 : vec2<f32> = (vec2<f32>(x_1194.x, x_1194.z) + x_1196);
    let x_1198 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1197.x, x_1197.y, x_1198.z, x_1198.w);
    let x_1203 : vec4<f32> = u_xlat2;
    let x_1205 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1203.x, x_1203.y), 0.0f);
    let x_1206 : vec3<f32> = vec3<f32>(x_1205.x, x_1205.y, x_1205.z);
    let x_1207 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
    let x_1210 : f32 = u_xlat0.z;
    let x_1212 : f32 = x_38.x_UserLut_Params.z;
    let x_1214 : f32 = u_xlat15;
    u_xlat15 = ((x_1210 * x_1212) + -(x_1214));
    let x_1217 : vec3<f32> = u_xlat3;
    let x_1219 : vec4<f32> = u_xlat2;
    let x_1221 : vec3<f32> = (-(x_1217) + vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
    let x_1222 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
    let x_1224 : f32 = u_xlat15;
    let x_1226 : vec4<f32> = u_xlat2;
    let x_1229 : vec3<f32> = u_xlat3;
    let x_1230 : vec3<f32> = ((vec3<f32>(x_1224, x_1224, x_1224) * vec3<f32>(x_1226.x, x_1226.y, x_1226.z)) + x_1229);
    let x_1231 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
    let x_1233 : vec4<f32> = u_xlat0;
    let x_1236 : vec4<f32> = u_xlat2;
    let x_1238 : vec3<f32> = (-(vec3<f32>(x_1233.x, x_1233.y, x_1233.z)) + vec3<f32>(x_1236.x, x_1236.y, x_1236.z));
    let x_1239 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
    let x_1242 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1244 : vec4<f32> = u_xlat2;
    let x_1247 : vec4<f32> = u_xlat0;
    let x_1249 : vec3<f32> = ((vec3<f32>(x_1242.w, x_1242.w, x_1242.w) * vec3<f32>(x_1244.x, x_1244.y, x_1244.z)) + vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
    let x_1250 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
    let x_1252 : vec4<f32> = u_xlat0;
    let x_1256 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1257 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
    let x_1259 : vec4<f32> = u_xlat0;
    u_xlat3 = (vec3<f32>(x_1259.x, x_1259.y, x_1259.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1264 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1264 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1268 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1268));
    let x_1271 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1271 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1275 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1275);
    let x_1279 : vec4<f32> = u_xlat0;
    let x_1281 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1279.x));
    u_xlatb0 = vec3<bool>(x_1281.x, x_1281.y, x_1281.z);
    let x_1284 : bool = u_xlatb0.x;
    if (x_1284) {
      let x_1289 : f32 = u_xlat2.x;
      x_1285 = x_1289;
    } else {
      let x_1292 : f32 = u_xlat3.x;
      x_1285 = x_1292;
    }
    let x_1293 : f32 = x_1285;
    u_xlat1.x = x_1293;
    let x_1296 : bool = u_xlatb0.y;
    if (x_1296) {
      let x_1301 : f32 = u_xlat2.y;
      x_1297 = x_1301;
    } else {
      let x_1304 : f32 = u_xlat3.y;
      x_1297 = x_1304;
    }
    let x_1305 : f32 = x_1297;
    u_xlat1.y = x_1305;
    let x_1308 : bool = u_xlatb0.z;
    if (x_1308) {
      let x_1313 : f32 = u_xlat2.z;
      x_1309 = x_1313;
    } else {
      let x_1316 : f32 = u_xlat3.z;
      x_1309 = x_1316;
    }
    let x_1317 : f32 = x_1309;
    u_xlat1.z = x_1317;
  }
  let x_1319 : vec4<f32> = u_xlat1;
  let x_1322 : vec4<f32> = x_38.x_Lut_Params;
  let x_1324 : vec3<f32> = (vec3<f32>(x_1319.z, x_1319.x, x_1319.y) * vec3<f32>(x_1322.z, x_1322.z, x_1322.z));
  let x_1325 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
  let x_1328 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1328);
  let x_1332 : vec4<f32> = x_38.x_Lut_Params;
  let x_1334 : vec2<f32> = (vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(0.5f, 0.5f));
  let x_1335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1334.x, x_1334.y, x_1335.z, x_1335.w);
  let x_1337 : vec4<f32> = u_xlat0;
  let x_1340 : vec4<f32> = x_38.x_Lut_Params;
  let x_1343 : vec4<f32> = u_xlat1;
  let x_1345 : vec2<f32> = ((vec2<f32>(x_1337.y, x_1337.z) * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.x, x_1343.y));
  let x_1346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1346.x, x_1345.x, x_1345.y, x_1346.w);
  let x_1349 : f32 = u_xlat0.x;
  let x_1351 : f32 = x_38.x_Lut_Params.y;
  let x_1354 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1349 * x_1351) + x_1354);
  let x_1361 : vec4<f32> = u_xlat2;
  let x_1363 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1361.x, x_1361.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1363.x, x_1363.y, x_1363.z);
  let x_1366 : f32 = x_38.x_Lut_Params.y;
  u_xlat1.x = x_1366;
  u_xlat1.y = 0.0f;
  let x_1369 : vec4<f32> = u_xlat1;
  let x_1371 : vec4<f32> = u_xlat2;
  let x_1373 : vec2<f32> = (vec2<f32>(x_1369.x, x_1369.y) + vec2<f32>(x_1371.x, x_1371.z));
  let x_1374 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1373.x, x_1373.y, x_1374.z, x_1374.w);
  let x_1379 : vec4<f32> = u_xlat1;
  let x_1381 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1379.x, x_1379.y), 0.0f);
  let x_1382 : vec3<f32> = vec3<f32>(x_1381.x, x_1381.y, x_1381.z);
  let x_1383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1382.x, x_1382.y, x_1383.z, x_1382.z);
  let x_1386 : f32 = u_xlat1.z;
  let x_1388 : f32 = x_38.x_Lut_Params.z;
  let x_1391 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1386 * x_1388) + -(x_1391));
  let x_1395 : vec3<f32> = u_xlat5;
  let x_1397 : vec4<f32> = u_xlat1;
  let x_1399 : vec3<f32> = (-(x_1395) + vec3<f32>(x_1397.x, x_1397.y, x_1397.w));
  let x_1400 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec4<f32> = u_xlat0;
  let x_1404 : vec4<f32> = u_xlat1;
  let x_1407 : vec3<f32> = u_xlat5;
  let x_1408 : vec3<f32> = ((vec3<f32>(x_1402.x, x_1402.x, x_1402.x) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z)) + x_1407);
  let x_1409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
  let x_1411 : vec2<f32> = vs_TEXCOORD0;
  let x_1414 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_1418 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_1420 : vec2<f32> = ((x_1411 * vec2<f32>(x_1414.x, x_1414.y)) + vec2<f32>(x_1418.z, x_1418.w));
  let x_1421 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1420.x, x_1420.y, x_1421.z, x_1421.w);
  let x_1428 : vec4<f32> = u_xlat1;
  let x_1431 : f32 = x_38.x_GlobalMipBias.x;
  let x_1432 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1428.x, x_1428.y), x_1431);
  u_xlat15 = x_1432.w;
  let x_1434 : f32 = u_xlat15;
  u_xlat15 = (x_1434 + -0.5f);
  let x_1436 : f32 = u_xlat15;
  let x_1437 : f32 = u_xlat15;
  u_xlat15 = (x_1436 + x_1437);
  let x_1439 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1439.x, x_1439.y, x_1439.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1448 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1448);
  let x_1453 : f32 = x_38.x_Grain_Params.y;
  let x_1455 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1453 * -(x_1455)) + 1.0f);
  let x_1460 : f32 = u_xlat15;
  let x_1462 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_1460, x_1460, x_1460) * vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
  let x_1465 : vec3<f32> = u_xlat6;
  let x_1468 : vec2<f32> = x_38.x_Grain_Params;
  u_xlat6 = (x_1465 * vec3<f32>(x_1468.x, x_1468.x, x_1468.x));
  let x_1471 : vec3<f32> = u_xlat6;
  let x_1472 : vec4<f32> = u_xlat1;
  let x_1475 : vec4<f32> = u_xlat0;
  let x_1477 : vec3<f32> = ((x_1471 * vec3<f32>(x_1472.x, x_1472.x, x_1472.x)) + vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
  let x_1478 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1478.w);
  let x_1480 : vec4<f32> = u_xlat0;
  let x_1482 : vec3<f32> = sqrt(vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
  let x_1483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
  let x_1485 : vec2<f32> = vs_TEXCOORD0;
  let x_1488 : vec4<f32> = x_38.x_Dithering_Params;
  let x_1492 : vec4<f32> = x_38.x_Dithering_Params;
  let x_1494 : vec2<f32> = ((x_1485 * vec2<f32>(x_1488.x, x_1488.y)) + vec2<f32>(x_1492.z, x_1492.w));
  let x_1495 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1494.x, x_1494.y, x_1495.z, x_1495.w);
  let x_1502 : vec4<f32> = u_xlat1;
  let x_1505 : f32 = x_38.x_GlobalMipBias.x;
  let x_1506 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1502.x, x_1502.y), x_1505);
  u_xlat15 = x_1506.w;
  let x_1508 : f32 = u_xlat15;
  u_xlat15 = ((x_1508 * 2.0f) + -1.0f);
  let x_1511 : f32 = u_xlat15;
  u_xlatb1 = (x_1511 >= 0.0f);
  let x_1513 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1513);
  let x_1516 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1516)) + 1.0f);
  let x_1520 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1520);
  let x_1522 : f32 = u_xlat15;
  u_xlat15 = (-(x_1522) + 1.0f);
  let x_1525 : f32 = u_xlat15;
  let x_1527 : f32 = u_xlat1.x;
  u_xlat15 = (x_1525 * x_1527);
  let x_1529 : vec4<f32> = u_xlat0;
  let x_1531 : vec3<f32> = (vec3<f32>(x_1529.x, x_1529.y, x_1529.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1532 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
  let x_1534 : vec4<f32> = u_xlat0;
  let x_1536 : vec3<f32> = log2(vec3<f32>(x_1534.x, x_1534.y, x_1534.z));
  let x_1537 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
  let x_1539 : vec4<f32> = u_xlat2;
  let x_1541 : vec3<f32> = (vec3<f32>(x_1539.x, x_1539.y, x_1539.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1542 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1541.x, x_1541.y, x_1541.z, x_1542.w);
  let x_1544 : vec4<f32> = u_xlat2;
  let x_1546 : vec3<f32> = exp2(vec3<f32>(x_1544.x, x_1544.y, x_1544.z));
  let x_1547 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1547.w);
  let x_1549 : vec4<f32> = u_xlat2;
  let x_1552 : vec3<f32> = ((vec3<f32>(x_1549.x, x_1549.y, x_1549.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1553 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1553.w);
  let x_1555 : vec4<f32> = u_xlat0;
  let x_1557 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1555.x));
  u_xlatb0 = vec3<bool>(x_1557.x, x_1557.y, x_1557.z);
  let x_1560 : bool = u_xlatb0.x;
  if (x_1560) {
    let x_1565 : f32 = u_xlat1.x;
    x_1561 = x_1565;
  } else {
    let x_1568 : f32 = u_xlat2.x;
    x_1561 = x_1568;
  }
  let x_1569 : f32 = x_1561;
  u_xlat0.x = x_1569;
  let x_1572 : bool = u_xlatb0.y;
  if (x_1572) {
    let x_1577 : f32 = u_xlat1.y;
    x_1573 = x_1577;
  } else {
    let x_1580 : f32 = u_xlat2.y;
    x_1573 = x_1580;
  }
  let x_1581 : f32 = x_1573;
  u_xlat0.y = x_1581;
  let x_1584 : bool = u_xlatb0.z;
  if (x_1584) {
    let x_1589 : f32 = u_xlat1.z;
    x_1585 = x_1589;
  } else {
    let x_1592 : f32 = u_xlat2.z;
    x_1585 = x_1592;
  }
  let x_1593 : f32 = x_1585;
  u_xlat0.z = x_1593;
  let x_1595 : f32 = u_xlat15;
  let x_1600 : vec4<f32> = u_xlat0;
  let x_1602 : vec3<f32> = ((vec3<f32>(x_1595, x_1595, x_1595) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1600.x, x_1600.y, x_1600.z));
  let x_1603 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
  let x_1605 : vec4<f32> = u_xlat0;
  let x_1607 : vec3<f32> = (vec3<f32>(x_1605.x, x_1605.y, x_1605.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1608 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
  let x_1610 : vec4<f32> = u_xlat0;
  let x_1612 : vec3<f32> = (vec3<f32>(x_1610.x, x_1610.y, x_1610.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
  let x_1615 : vec4<f32> = u_xlat2;
  let x_1617 : vec3<f32> = (vec3<f32>(x_1615.x, x_1615.y, x_1615.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1618 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
  let x_1620 : vec4<f32> = u_xlat2;
  let x_1623 : vec3<f32> = log2(abs(vec3<f32>(x_1620.x, x_1620.y, x_1620.z)));
  let x_1624 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1624.w);
  let x_1626 : vec4<f32> = u_xlat2;
  let x_1628 : vec3<f32> = (vec3<f32>(x_1626.x, x_1626.y, x_1626.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1629 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
  let x_1631 : vec4<f32> = u_xlat2;
  let x_1633 : vec3<f32> = exp2(vec3<f32>(x_1631.x, x_1631.y, x_1631.z));
  let x_1634 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1633.x, x_1633.y, x_1633.z, x_1634.w);
  let x_1636 : vec4<f32> = u_xlat0;
  let x_1638 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1636.x, x_1636.y, x_1636.z, x_1636.x));
  u_xlatb0 = vec3<bool>(x_1638.x, x_1638.y, x_1638.z);
  let x_1641 : bool = u_xlatb0.x;
  if (x_1641) {
    let x_1646 : f32 = u_xlat1.x;
    x_1642 = x_1646;
  } else {
    let x_1649 : f32 = u_xlat2.x;
    x_1642 = x_1649;
  }
  let x_1650 : f32 = x_1642;
  u_xlat0.x = x_1650;
  let x_1653 : bool = u_xlatb0.y;
  if (x_1653) {
    let x_1658 : f32 = u_xlat1.y;
    x_1654 = x_1658;
  } else {
    let x_1661 : f32 = u_xlat2.y;
    x_1654 = x_1661;
  }
  let x_1662 : f32 = x_1654;
  u_xlat0.y = x_1662;
  let x_1665 : bool = u_xlatb0.z;
  if (x_1665) {
    let x_1670 : f32 = u_xlat1.z;
    x_1666 = x_1670;
  } else {
    let x_1673 : f32 = u_xlat2.z;
    x_1666 = x_1673;
  }
  let x_1674 : f32 = x_1666;
  u_xlat0.z = x_1674;
  let x_1678 : vec4<f32> = u_xlat0;
  let x_1680 : vec3<f32> = max(vec3<f32>(x_1678.x, x_1678.y, x_1678.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1681 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1680.x, x_1680.y, x_1680.z, x_1681.w);
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


