diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_BloomTexture_TexelSize : vec4<f32>,
  /* @offset(64) */
  x_Lut_Params : vec4<f32>,
  /* @offset(80) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(96) */
  x_Bloom_Params : vec4<f32>,
  /* @offset(112) */
  x_Bloom_RGBM : f32,
  /* @offset(128) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(144) */
  x_Vignette_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlatb10 : vec2<bool>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_411 : f32;
  var x_420 : f32;
  var x_561 : f32;
  var x_612 : f32;
  var x_639 : f32;
  var x_663 : f32;
  var x_674 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1064 : f32;
  var x_1076 : f32;
  var x_1088 : f32;
  var x_1233 : f32;
  var x_1245 : f32;
  var x_1257 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_14.x_BlitTexture_TexelSize;
  let x_27 : vec4<f32> = x_14.x_RTHandleScale;
  let x_29 : vec2<f32> = ((-(vec2<f32>(x_19.x, x_19.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_27.x, x_27.y));
  let x_30 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_29.x, x_29.y, x_30.z);
  let x_32 : vec3<f32> = u_xlat0;
  let x_36 : vec2<f32> = vs_TEXCOORD0;
  let x_37 : vec2<f32> = min(vec2<f32>(x_32.x, x_32.y), x_36);
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_38.z);
  let x_50 : vec3<f32> = u_xlat0;
  let x_57 : f32 = x_14.x_GlobalMipBias.x;
  let x_58 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_50.x, x_50.y), x_57);
  u_xlat0 = vec3<f32>(x_58.x, x_58.y, x_58.z);
  let x_64 : vec4<f32> = x_14.x_BloomTexture_TexelSize;
  let x_69 : vec4<f32> = x_14.x_RTHandleScale;
  let x_71 : vec2<f32> = ((-(vec2<f32>(x_64.x, x_64.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_69.x, x_69.y));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_76 : vec2<f32> = vs_TEXCOORD0;
  let x_77 : vec2<f32> = min(vec2<f32>(x_74.x, x_74.y), x_76);
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_77.y, x_78.z, x_78.w);
  let x_84 : vec4<f32> = u_xlat1;
  let x_87 : f32 = x_14.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_84.x, x_84.y), x_87);
  u_xlat1 = x_88;
  let x_95 : f32 = x_14.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_95);
  let x_97 : bool = u_xlatb15;
  if (x_97) {
    let x_101 : vec4<f32> = u_xlat1;
    let x_103 : vec4<f32> = u_xlat1;
    let x_105 : vec3<f32> = (vec3<f32>(x_101.w, x_101.w, x_101.w) * vec3<f32>(x_103.x, x_103.y, x_103.z));
    let x_106 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
    let x_108 : vec4<f32> = u_xlat2;
    let x_112 : vec3<f32> = (vec3<f32>(x_108.x, x_108.y, x_108.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_113 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  }
  let x_115 : vec4<f32> = u_xlat1;
  let x_119 : vec4<f32> = x_14.x_Bloom_Params;
  let x_121 : vec3<f32> = (vec3<f32>(x_115.x, x_115.y, x_115.z) * vec3<f32>(x_119.x, x_119.x, x_119.x));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat1;
  let x_127 : vec4<f32> = x_14.x_Bloom_Params;
  let x_130 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_124.x, x_124.y, x_124.z) * vec3<f32>(x_127.y, x_127.z, x_127.w)) + x_130);
  let x_135 : f32 = x_14.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_135);
  let x_137 : bool = u_xlatb15;
  if (x_137) {
    let x_140 : vec2<f32> = vs_TEXCOORD0;
    let x_142 : vec4<f32> = x_14.x_Vignette_Params2;
    let x_145 : vec2<f32> = (x_140 + -(vec2<f32>(x_142.x, x_142.y)));
    let x_146 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_146.z, x_146.w);
    let x_148 : vec4<f32> = u_xlat1;
    let x_152 : vec4<f32> = x_14.x_Vignette_Params2;
    let x_154 : vec2<f32> = (abs(vec2<f32>(x_148.x, x_148.y)) * vec2<f32>(x_152.z, x_152.z));
    let x_155 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_155.x, x_154.x, x_154.y, x_155.w);
    let x_160 : f32 = u_xlat1.y;
    let x_164 : f32 = x_14.x_Vignette_Params1.w;
    u_xlat1.x = (x_160 * x_164);
    let x_168 : vec4<f32> = u_xlat1;
    let x_170 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_168.x, x_168.z), vec2<f32>(x_170.x, x_170.z));
    let x_173 : f32 = u_xlat15;
    u_xlat15 = (-(x_173) + 1.0f);
    let x_177 : f32 = u_xlat15;
    u_xlat15 = max(x_177, 0.0f);
    let x_179 : f32 = u_xlat15;
    u_xlat15 = log2(x_179);
    let x_181 : f32 = u_xlat15;
    let x_183 : f32 = x_14.x_Vignette_Params2.w;
    u_xlat15 = (x_181 * x_183);
    let x_185 : f32 = u_xlat15;
    u_xlat15 = exp2(x_185);
    let x_188 : vec4<f32> = x_14.x_Vignette_Params1;
    let x_192 : vec3<f32> = (-(vec3<f32>(x_188.x, x_188.y, x_188.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_193 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_195 : f32 = u_xlat15;
    let x_197 : vec4<f32> = u_xlat1;
    let x_201 : vec4<f32> = x_14.x_Vignette_Params1;
    let x_203 : vec3<f32> = ((vec3<f32>(x_195, x_195, x_195) * vec3<f32>(x_197.x, x_197.y, x_197.z)) + vec3<f32>(x_201.x, x_201.y, x_201.z));
    let x_204 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
    let x_206 : vec3<f32> = u_xlat0;
    let x_207 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_206 * vec3<f32>(x_207.x, x_207.y, x_207.z));
  }
  let x_210 : vec3<f32> = u_xlat0;
  let x_213 : vec4<f32> = x_14.x_Lut_Params;
  u_xlat0 = (x_210 * vec3<f32>(x_213.w, x_213.w, x_213.w));
  let x_221 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), x_221);
  let x_228 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), x_228);
  let x_235 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), x_235);
  let x_239 : f32 = u_xlat6.y;
  let x_241 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_239, x_241);
  let x_245 : f32 = u_xlat6.z;
  let x_247 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_245, x_247);
  let x_252 : f32 = u_xlat6.y;
  let x_254 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_252, x_254);
  let x_258 : f32 = u_xlat6.z;
  let x_260 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_258, x_260);
  let x_263 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_263.x, x_263.y, x_263.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_270 : f32 = u_xlat0.x;
  let x_273 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_270) + x_273);
  let x_277 : f32 = u_xlat0.x;
  let x_279 : f32 = u_xlat0.z;
  u_xlat0.x = (x_277 / x_279);
  let x_282 : vec3<f32> = u_xlat6;
  let x_285 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_282.y, x_282.x, x_282.z)) + vec3<f32>(x_285.z, x_285.y, x_285.x));
  let x_288 : vec3<f32> = u_xlat5;
  let x_290 : vec3<f32> = u_xlat6;
  let x_292 : vec2<f32> = (vec2<f32>(x_288.x, x_288.y) * vec2<f32>(x_290.z, x_290.y));
  let x_293 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_292.x, x_292.y, x_293.z);
  let x_296 : f32 = u_xlat5.y;
  let x_298 : f32 = u_xlat5.x;
  u_xlat5.x = (x_296 + x_298);
  let x_302 : f32 = u_xlat6.x;
  let x_304 : f32 = u_xlat5.z;
  let x_307 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_302 * x_304) + x_307);
  let x_311 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_311, 0.0f);
  let x_315 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_315);
  let x_321 : f32 = u_xlat6.y;
  let x_323 : f32 = u_xlat6.z;
  u_xlat10.x = (x_321 + x_323);
  let x_327 : f32 = u_xlat6.x;
  let x_329 : f32 = u_xlat10.x;
  u_xlat10.x = (x_327 + x_329);
  let x_333 : f32 = u_xlat5.x;
  let x_337 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_333 * 1.75f) + x_337);
  let x_341 : f32 = u_xlat0.x;
  u_xlat15 = (x_341 + -0.40000000596046447754f);
  let x_344 : f32 = u_xlat15;
  u_xlat1.x = (x_344 * 2.5f);
  let x_349 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_349)) + 1.0f);
  let x_355 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_355, 0.0f);
  let x_358 : f32 = u_xlat15;
  u_xlatb15 = (x_358 >= 0.0f);
  let x_360 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_360);
  let x_364 : f32 = u_xlat1.x;
  let x_367 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_364) * x_367) + 1.0f);
  let x_371 : f32 = u_xlat15;
  let x_373 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_371 * x_373) + 1.0f);
  let x_377 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_377.x, x_377.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_386 : f32 = u_xlat5.x;
  u_xlatb1 = (0.15999999642372131348f >= x_386);
  let x_390 : f32 = u_xlat5.x;
  u_xlatb5 = (x_390 >= 0.47999998927116394043f);
  let x_395 : f32 = u_xlat10.x;
  u_xlat10.x = (0.07999999821186065674f / x_395);
  let x_399 : f32 = u_xlat10.x;
  u_xlat10.x = (x_399 + -0.5f);
  let x_404 : f32 = u_xlat10.x;
  let x_406 : f32 = u_xlat10.y;
  u_xlat10.x = (x_404 * x_406);
  let x_409 : bool = u_xlatb5;
  if (x_409) {
    x_411 = 0.0f;
  } else {
    let x_416 : f32 = u_xlat10.x;
    x_411 = x_416;
  }
  let x_417 : f32 = x_411;
  u_xlat5.x = x_417;
  let x_419 : bool = u_xlatb1;
  if (x_419) {
    let x_424 : f32 = u_xlat10.y;
    x_420 = x_424;
  } else {
    let x_427 : f32 = u_xlat5.x;
    x_420 = x_427;
  }
  let x_428 : f32 = x_420;
  u_xlat5.x = x_428;
  let x_431 : f32 = u_xlat5.x;
  u_xlat5.x = (x_431 + 1.0f);
  let x_434 : vec3<f32> = u_xlat5;
  let x_436 : vec3<f32> = u_xlat6;
  let x_437 : vec3<f32> = (vec3<f32>(x_434.x, x_434.x, x_434.x) * x_436);
  let x_438 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_438.x, x_437.x, x_437.y, x_437.z);
  let x_443 : vec4<f32> = u_xlat2;
  let x_445 : vec4<f32> = u_xlat2;
  let x_448 : vec4<bool> = (vec4<f32>(x_443.z, x_443.w, x_443.z, x_443.w) == vec4<f32>(x_445.y, x_445.z, x_445.y, x_445.z));
  u_xlatb10 = vec2<bool>(x_448.x, x_448.y);
  let x_451 : bool = u_xlatb10.y;
  let x_453 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_451 & x_453);
  let x_457 : f32 = u_xlat6.y;
  let x_459 : f32 = u_xlat5.x;
  let x_462 : f32 = u_xlat2.w;
  u_xlat15 = ((x_457 * x_459) + -(x_462));
  let x_465 : f32 = u_xlat15;
  u_xlat15 = (x_465 * 1.73205077648162841797f);
  let x_469 : f32 = u_xlat2.y;
  let x_473 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_469 * 2.0f) + -(x_473));
  let x_478 : f32 = u_xlat6.z;
  let x_481 : f32 = u_xlat5.x;
  let x_484 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_478) * x_481) + x_484);
  let x_488 : f32 = u_xlat15;
  let x_491 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_488), abs(x_491));
  let x_496 : f32 = u_xlat15;
  let x_499 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_496), abs(x_499));
  let x_502 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_502);
  let x_504 : f32 = u_xlat16;
  let x_506 : f32 = u_xlat11.x;
  u_xlat11.x = (x_504 * x_506);
  let x_510 : f32 = u_xlat11.x;
  let x_512 : f32 = u_xlat11.x;
  u_xlat16 = (x_510 * x_512);
  let x_515 : f32 = u_xlat16;
  u_xlat3.x = ((x_515 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_521 : f32 = u_xlat16;
  let x_523 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_521 * x_523) + 0.18014100193977355957f);
  let x_528 : f32 = u_xlat16;
  let x_530 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_528 * x_530) + -0.33029949665069580078f);
  let x_535 : f32 = u_xlat16;
  let x_537 : f32 = u_xlat3.x;
  u_xlat16 = ((x_535 * x_537) + 0.99986600875854492188f);
  let x_541 : f32 = u_xlat16;
  let x_543 : f32 = u_xlat11.x;
  u_xlat3.x = (x_541 * x_543);
  let x_548 : f32 = u_xlat1.x;
  let x_550 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_548) < abs(x_550));
  let x_554 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_554 * -2.0f) + 1.57079637050628662109f);
  let x_560 : bool = u_xlatb8;
  if (x_560) {
    let x_565 : f32 = u_xlat3.x;
    x_561 = x_565;
  } else {
    x_561 = 0.0f;
  }
  let x_567 : f32 = x_561;
  u_xlat3.x = x_567;
  let x_570 : f32 = u_xlat11.x;
  let x_571 : f32 = u_xlat16;
  let x_574 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_570 * x_571) + x_574);
  let x_579 : f32 = u_xlat1.x;
  let x_581 : f32 = u_xlat1.x;
  u_xlatb16 = (x_579 < -(x_581));
  let x_584 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.14159274101257324219f, x_584);
  let x_587 : f32 = u_xlat16;
  let x_589 : f32 = u_xlat11.x;
  u_xlat11.x = (x_587 + x_589);
  let x_592 : f32 = u_xlat15;
  let x_594 : f32 = u_xlat1.x;
  u_xlat16 = min(x_592, x_594);
  let x_596 : f32 = u_xlat15;
  let x_598 : f32 = u_xlat1.x;
  u_xlat15 = max(x_596, x_598);
  let x_600 : f32 = u_xlat16;
  let x_601 : f32 = u_xlat16;
  u_xlatb1 = (x_600 < -(x_601));
  let x_604 : f32 = u_xlat15;
  let x_605 : f32 = u_xlat15;
  u_xlatb15 = (x_604 >= -(x_605));
  let x_608 : bool = u_xlatb15;
  let x_609 : bool = u_xlatb1;
  u_xlatb15 = (x_608 & x_609);
  let x_611 : bool = u_xlatb15;
  if (x_611) {
    let x_616 : f32 = u_xlat11.x;
    x_612 = -(x_616);
  } else {
    let x_620 : f32 = u_xlat11.x;
    x_612 = x_620;
  }
  let x_621 : f32 = x_612;
  u_xlat15 = x_621;
  let x_622 : f32 = u_xlat15;
  u_xlat15 = (x_622 * 57.295780181884765625f);
  let x_626 : bool = u_xlatb10.x;
  let x_627 : f32 = u_xlat15;
  u_xlat10.x = select(x_627, 0.0f, x_626);
  let x_631 : f32 = u_xlat10.x;
  u_xlatb15 = (x_631 < 0.0f);
  let x_634 : f32 = u_xlat10.x;
  u_xlat1.x = (x_634 + 360.0f);
  let x_638 : bool = u_xlatb15;
  if (x_638) {
    let x_643 : f32 = u_xlat1.x;
    x_639 = x_643;
  } else {
    let x_646 : f32 = u_xlat10.x;
    x_639 = x_646;
  }
  let x_647 : f32 = x_639;
  u_xlat10.x = x_647;
  let x_650 : f32 = u_xlat10.x;
  u_xlatb15 = (x_650 < -180.0f);
  let x_655 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_655);
  let x_657 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_657.x, x_657.x) + vec2<f32>(360.0f, -360.0f));
  let x_662 : bool = u_xlatb1;
  if (x_662) {
    let x_667 : f32 = u_xlat11.y;
    x_663 = x_667;
  } else {
    let x_670 : f32 = u_xlat10.x;
    x_663 = x_670;
  }
  let x_671 : f32 = x_663;
  u_xlat10.x = x_671;
  let x_673 : bool = u_xlatb15;
  if (x_673) {
    let x_678 : f32 = u_xlat11.x;
    x_674 = x_678;
  } else {
    let x_681 : f32 = u_xlat10.x;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  u_xlat10.x = x_682;
  let x_685 : f32 = u_xlat10.x;
  u_xlat10.x = (x_685 * 0.01481481455266475677f);
  let x_690 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_690)) + 1.0f);
  let x_696 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_696, 0.0f);
  let x_700 : f32 = u_xlat10.x;
  u_xlat15 = ((x_700 * -2.0f) + 3.0f);
  let x_705 : f32 = u_xlat10.x;
  let x_707 : f32 = u_xlat10.x;
  u_xlat10.x = (x_705 * x_707);
  let x_711 : f32 = u_xlat10.x;
  let x_712 : f32 = u_xlat15;
  u_xlat10.x = (x_711 * x_712);
  let x_716 : f32 = u_xlat10.x;
  let x_718 : f32 = u_xlat10.x;
  u_xlat10.x = (x_716 * x_718);
  let x_722 : f32 = u_xlat0.x;
  let x_724 : f32 = u_xlat10.x;
  u_xlat0.x = (x_722 * x_724);
  let x_728 : f32 = u_xlat6.x;
  let x_731 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_728) * x_731) + 0.02999999932944774628f);
  let x_737 : f32 = u_xlat5.x;
  let x_739 : f32 = u_xlat0.x;
  u_xlat0.x = (x_737 * x_739);
  let x_743 : f32 = u_xlat0.x;
  let x_747 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_743 * 0.18000000715255737305f) + x_747);
  let x_754 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_754.x, x_754.z, x_754.w));
  let x_762 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_762.x, x_762.z, x_762.w));
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_770.x, x_770.z, x_770.w));
  let x_774 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_774, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_777 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_777, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_783 : f32 = u_xlat15;
  let x_786 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_783, x_783, x_783)) + x_786);
  let x_788 : vec3<f32> = u_xlat0;
  let x_792 : f32 = u_xlat15;
  u_xlat0 = ((x_788 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_792, x_792, x_792));
  let x_795 : vec3<f32> = u_xlat0;
  let x_798 : vec3<f32> = (x_795 + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec3<f32> = u_xlat0;
  let x_802 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((x_801 * vec3<f32>(x_802.x, x_802.y, x_802.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec3<f32> = u_xlat0;
  let x_816 : vec3<f32> = ((x_810 * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_817 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec3<f32> = u_xlat0;
  let x_820 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_819 * vec3<f32>(x_820.x, x_820.y, x_820.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_826.x, x_826.y, x_826.z) / x_828);
  let x_834 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_834);
  let x_841 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_841);
  let x_848 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_848);
  let x_851 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_851.x, x_851.y, x_851.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_856 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_856, 0.00009999999747378752f);
  let x_859 : vec4<f32> = u_xlat1;
  let x_861 : vec3<f32> = u_xlat0;
  let x_863 : vec2<f32> = (vec2<f32>(x_859.x, x_859.y) / vec2<f32>(x_861.x, x_861.x));
  let x_864 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_863.x, x_863.y, x_864.z);
  let x_867 : f32 = u_xlat1.y;
  u_xlat15 = max(x_867, 0.0f);
  let x_869 : f32 = u_xlat15;
  u_xlat15 = min(x_869, 65504.0f);
  let x_872 : f32 = u_xlat15;
  u_xlat15 = log2(x_872);
  let x_874 : f32 = u_xlat15;
  u_xlat15 = (x_874 * 0.98110002279281616211f);
  let x_877 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_877);
  let x_881 : f32 = u_xlat0.y;
  u_xlat15 = max(x_881, 0.00009999999747378752f);
  let x_884 : f32 = u_xlat1.y;
  let x_885 : f32 = u_xlat15;
  u_xlat15 = (x_884 / x_885);
  let x_888 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_888) + 1.0f);
  let x_892 : f32 = u_xlat0.y;
  let x_894 : f32 = u_xlat16;
  u_xlat0.z = (-(x_892) + x_894);
  let x_897 : f32 = u_xlat15;
  let x_899 : vec3<f32> = u_xlat0;
  let x_901 : vec2<f32> = (vec2<f32>(x_897, x_897) * vec2<f32>(x_899.x, x_899.z));
  let x_902 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_901.x, x_902.y, x_901.y, x_902.w);
  let x_908 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_916 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_924 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_928 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_928, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_930 : f32 = u_xlat15;
  let x_933 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_930, x_930, x_930)) + x_933);
  let x_935 : vec3<f32> = u_xlat0;
  let x_939 : f32 = u_xlat15;
  u_xlat0 = ((x_935 * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_939, x_939, x_939));
  let x_942 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_942);
  let x_945 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_945);
  let x_948 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_948);
  let x_955 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_963 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_971 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_979 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), x_979);
  let x_983 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_983, 0.0f, 1.0f);
  let x_990 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), x_990);
  let x_994 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_994, 0.0f, 1.0f);
  let x_1001 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), x_1001);
  let x_1005 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1005, 0.0f, 1.0f);
  let x_1013 : f32 = x_14.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1013);
  let x_1017 : bool = u_xlatb0.x;
  if (x_1017) {
    let x_1020 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1025 : vec4<f32> = u_xlat1;
    let x_1027 : vec3<f32> = log2(vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
    let x_1028 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
    let x_1030 : vec4<f32> = u_xlat2;
    let x_1034 : vec3<f32> = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1035 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
    let x_1037 : vec4<f32> = u_xlat2;
    let x_1039 : vec3<f32> = exp2(vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
    let x_1040 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
    let x_1042 : vec4<f32> = u_xlat2;
    let x_1049 : vec3<f32> = ((vec3<f32>(x_1042.x, x_1042.y, x_1042.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1050 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
    let x_1055 : vec4<f32> = u_xlat1;
    let x_1057 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.x));
    u_xlatb3 = vec3<bool>(x_1057.x, x_1057.y, x_1057.z);
    let x_1061 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1061;
    let x_1063 : bool = u_xlatb3.x;
    if (x_1063) {
      let x_1068 : f32 = u_xlat0.x;
      x_1064 = x_1068;
    } else {
      let x_1071 : f32 = u_xlat2.x;
      x_1064 = x_1071;
    }
    let x_1072 : f32 = x_1064;
    hlslcc_movcTemp.x = x_1072;
    let x_1075 : bool = u_xlatb3.y;
    if (x_1075) {
      let x_1080 : f32 = u_xlat0.y;
      x_1076 = x_1080;
    } else {
      let x_1083 : f32 = u_xlat2.y;
      x_1076 = x_1083;
    }
    let x_1084 : f32 = x_1076;
    hlslcc_movcTemp.y = x_1084;
    let x_1087 : bool = u_xlatb3.z;
    if (x_1087) {
      let x_1092 : f32 = u_xlat0.z;
      x_1088 = x_1092;
    } else {
      let x_1095 : f32 = u_xlat2.z;
      x_1088 = x_1095;
    }
    let x_1096 : f32 = x_1088;
    hlslcc_movcTemp.z = x_1096;
    let x_1098 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1098;
    let x_1099 : vec3<f32> = u_xlat0;
    let x_1102 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1104 : vec3<f32> = (vec3<f32>(x_1099.z, x_1099.x, x_1099.y) * vec3<f32>(x_1102.z, x_1102.z, x_1102.z));
    let x_1105 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
    let x_1108 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1108);
    let x_1111 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1113 : vec2<f32> = (vec2<f32>(x_1111.x, x_1111.y) * vec2<f32>(0.5f, 0.5f));
    let x_1114 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1113.x, x_1114.y, x_1114.z, x_1113.y);
    let x_1116 : vec4<f32> = u_xlat2;
    let x_1119 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1122 : vec4<f32> = u_xlat2;
    let x_1124 : vec2<f32> = ((vec2<f32>(x_1116.y, x_1116.z) * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1122.x, x_1122.w));
    let x_1125 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1125.x, x_1124.x, x_1124.y, x_1125.w);
    let x_1127 : f32 = u_xlat15;
    let x_1129 : f32 = x_14.x_UserLut_Params.y;
    let x_1132 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1127 * x_1129) + x_1132);
    let x_1139 : vec4<f32> = u_xlat2;
    let x_1141 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1139.x, x_1139.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1141.x, x_1141.y, x_1141.z);
    let x_1145 : f32 = x_14.x_UserLut_Params.y;
    u_xlat4.x = x_1145;
    u_xlat4.y = 0.0f;
    let x_1148 : vec4<f32> = u_xlat2;
    let x_1150 : vec2<f32> = u_xlat4;
    let x_1151 : vec2<f32> = (vec2<f32>(x_1148.x, x_1148.z) + x_1150);
    let x_1152 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
    let x_1157 : vec4<f32> = u_xlat2;
    let x_1159 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1157.x, x_1157.y), 0.0f);
    let x_1160 : vec3<f32> = vec3<f32>(x_1159.x, x_1159.y, x_1159.z);
    let x_1161 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
    let x_1164 : f32 = u_xlat0.z;
    let x_1166 : f32 = x_14.x_UserLut_Params.z;
    let x_1168 : f32 = u_xlat15;
    u_xlat15 = ((x_1164 * x_1166) + -(x_1168));
    let x_1171 : vec3<f32> = u_xlat3;
    let x_1173 : vec4<f32> = u_xlat2;
    let x_1175 : vec3<f32> = (-(x_1171) + vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
    let x_1176 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1176.w);
    let x_1178 : f32 = u_xlat15;
    let x_1180 : vec4<f32> = u_xlat2;
    let x_1183 : vec3<f32> = u_xlat3;
    let x_1184 : vec3<f32> = ((vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z)) + x_1183);
    let x_1185 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
    let x_1187 : vec3<f32> = u_xlat0;
    let x_1189 : vec4<f32> = u_xlat2;
    let x_1191 : vec3<f32> = (-(x_1187) + vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
    let x_1192 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
    let x_1195 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1197 : vec4<f32> = u_xlat2;
    let x_1200 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1195.w, x_1195.w, x_1195.w) * vec3<f32>(x_1197.x, x_1197.y, x_1197.z)) + x_1200);
    let x_1202 : vec3<f32> = u_xlat0;
    let x_1205 : vec3<f32> = (x_1202 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1206 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
    let x_1208 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1208 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1212 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1212 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1216 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1216));
    let x_1219 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1219 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1223 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1223);
    let x_1227 : vec3<f32> = u_xlat0;
    let x_1229 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1227.x));
    u_xlatb0 = vec3<bool>(x_1229.x, x_1229.y, x_1229.z);
    let x_1232 : bool = u_xlatb0.x;
    if (x_1232) {
      let x_1237 : f32 = u_xlat2.x;
      x_1233 = x_1237;
    } else {
      let x_1240 : f32 = u_xlat3.x;
      x_1233 = x_1240;
    }
    let x_1241 : f32 = x_1233;
    u_xlat1.x = x_1241;
    let x_1244 : bool = u_xlatb0.y;
    if (x_1244) {
      let x_1249 : f32 = u_xlat2.y;
      x_1245 = x_1249;
    } else {
      let x_1252 : f32 = u_xlat3.y;
      x_1245 = x_1252;
    }
    let x_1253 : f32 = x_1245;
    u_xlat1.y = x_1253;
    let x_1256 : bool = u_xlatb0.z;
    if (x_1256) {
      let x_1261 : f32 = u_xlat2.z;
      x_1257 = x_1261;
    } else {
      let x_1264 : f32 = u_xlat3.z;
      x_1257 = x_1264;
    }
    let x_1265 : f32 = x_1257;
    u_xlat1.z = x_1265;
  }
  let x_1267 : vec4<f32> = u_xlat1;
  let x_1270 : vec4<f32> = x_14.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1267.z, x_1267.x, x_1267.y) * vec3<f32>(x_1270.z, x_1270.z, x_1270.z));
  let x_1274 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1274);
  let x_1278 : vec4<f32> = x_14.x_Lut_Params;
  let x_1280 : vec2<f32> = (vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(0.5f, 0.5f));
  let x_1281 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1280.x, x_1280.y, x_1281.z, x_1281.w);
  let x_1283 : vec3<f32> = u_xlat0;
  let x_1286 : vec4<f32> = x_14.x_Lut_Params;
  let x_1289 : vec4<f32> = u_xlat1;
  let x_1291 : vec2<f32> = ((vec2<f32>(x_1283.y, x_1283.z) * vec2<f32>(x_1286.x, x_1286.y)) + vec2<f32>(x_1289.x, x_1289.y));
  let x_1292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1292.x, x_1291.x, x_1291.y, x_1292.w);
  let x_1295 : f32 = u_xlat0.x;
  let x_1297 : f32 = x_14.x_Lut_Params.y;
  let x_1300 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1295 * x_1297) + x_1300);
  let x_1307 : vec4<f32> = u_xlat2;
  let x_1309 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1307.x, x_1307.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1309.x, x_1309.y, x_1309.z);
  let x_1312 : f32 = x_14.x_Lut_Params.y;
  u_xlat1.x = x_1312;
  u_xlat1.y = 0.0f;
  let x_1315 : vec4<f32> = u_xlat1;
  let x_1317 : vec4<f32> = u_xlat2;
  let x_1319 : vec2<f32> = (vec2<f32>(x_1315.x, x_1315.y) + vec2<f32>(x_1317.x, x_1317.z));
  let x_1320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1319.x, x_1319.y, x_1320.z, x_1320.w);
  let x_1325 : vec4<f32> = u_xlat1;
  let x_1327 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1325.x, x_1325.y), 0.0f);
  let x_1328 : vec3<f32> = vec3<f32>(x_1327.x, x_1327.y, x_1327.z);
  let x_1329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1328.x, x_1328.y, x_1329.z, x_1328.z);
  let x_1332 : f32 = u_xlat1.z;
  let x_1334 : f32 = x_14.x_Lut_Params.z;
  let x_1337 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1332 * x_1334) + -(x_1337));
  let x_1341 : vec3<f32> = u_xlat5;
  let x_1343 : vec4<f32> = u_xlat1;
  let x_1345 : vec3<f32> = (-(x_1341) + vec3<f32>(x_1343.x, x_1343.y, x_1343.w));
  let x_1346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
  let x_1348 : vec3<f32> = u_xlat0;
  let x_1350 : vec4<f32> = u_xlat1;
  let x_1353 : vec3<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1348.x, x_1348.x, x_1348.x) * vec3<f32>(x_1350.x, x_1350.y, x_1350.z)) + x_1353);
  let x_1357 : vec3<f32> = u_xlat0;
  let x_1358 : vec3<f32> = sqrt(x_1357);
  let x_1359 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
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


