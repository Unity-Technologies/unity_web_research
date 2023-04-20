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
  /* @offset(116) */
  x_Chroma_Params : f32,
  /* @offset(128) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(144) */
  x_Vignette_Params2 : vec4<f32>,
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

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat10 : vec2<f32>;

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

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_479 : f32;
  var x_488 : f32;
  var x_628 : f32;
  var x_679 : f32;
  var x_706 : f32;
  var x_730 : f32;
  var x_741 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1168 : f32;
  var x_1180 : f32;
  var x_1192 : f32;
  var x_1343 : f32;
  var x_1355 : f32;
  var x_1367 : f32;
  var x_1546 : f32;
  var x_1558 : f32;
  var x_1570 : f32;
  var x_1627 : f32;
  var x_1639 : f32;
  var x_1651 : f32;
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
  let x_120 : vec4<f32> = x_38.x_BloomTexture_TexelSize;
  let x_126 : vec4<f32> = x_38.x_RTHandleScale;
  let x_128 : vec2<f32> = ((-(vec2<f32>(x_120.x, x_120.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_126.x, x_126.y));
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec2<f32> = vs_TEXCOORD0;
  let x_134 : vec2<f32> = min(vec2<f32>(x_131.x, x_131.y), x_133);
  let x_135 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : f32 = x_38.x_GlobalMipBias.x;
  let x_145 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_141.x, x_141.y), x_144);
  u_xlat0 = x_145;
  let x_152 : f32 = x_38.x_Bloom_RGBM;
  u_xlatb1 = (0.0f < x_152);
  let x_154 : bool = u_xlatb1;
  if (x_154) {
    let x_158 : vec4<f32> = u_xlat0;
    let x_160 : vec4<f32> = u_xlat0;
    let x_162 : vec3<f32> = (vec3<f32>(x_158.w, x_158.w, x_158.w) * vec3<f32>(x_160.x, x_160.y, x_160.z));
    let x_163 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
    let x_165 : vec4<f32> = u_xlat1;
    let x_169 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_170 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  }
  let x_172 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = x_38.x_Bloom_Params;
  let x_178 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_176.x, x_176.x, x_176.x));
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = x_38.x_Bloom_Params;
  let x_187 : vec4<f32> = u_xlat2;
  let x_189 : vec3<f32> = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_184.y, x_184.z, x_184.w)) + vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_195 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_195);
  let x_197 : bool = u_xlatb15;
  if (x_197) {
    let x_200 : vec2<f32> = vs_TEXCOORD0;
    let x_202 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_205 : vec2<f32> = (x_200 + -(vec2<f32>(x_202.x, x_202.y)));
    let x_206 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_205.x, x_205.y, x_206.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat1;
    let x_212 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_214 : vec2<f32> = (abs(vec2<f32>(x_208.x, x_208.y)) * vec2<f32>(x_212.z, x_212.z));
    let x_215 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_215.x, x_214.x, x_214.y, x_215.w);
    let x_218 : f32 = u_xlat1.y;
    let x_222 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat1.x = (x_218 * x_222);
    let x_226 : vec4<f32> = u_xlat1;
    let x_228 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_226.x, x_226.z), vec2<f32>(x_228.x, x_228.z));
    let x_231 : f32 = u_xlat15;
    u_xlat15 = (-(x_231) + 1.0f);
    let x_235 : f32 = u_xlat15;
    u_xlat15 = max(x_235, 0.0f);
    let x_237 : f32 = u_xlat15;
    u_xlat15 = log2(x_237);
    let x_239 : f32 = u_xlat15;
    let x_241 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat15 = (x_239 * x_241);
    let x_243 : f32 = u_xlat15;
    u_xlat15 = exp2(x_243);
    let x_246 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_250 : vec3<f32> = (-(vec3<f32>(x_246.x, x_246.y, x_246.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_251 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
    let x_253 : f32 = u_xlat15;
    let x_255 : vec4<f32> = u_xlat1;
    let x_259 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_261 : vec3<f32> = ((vec3<f32>(x_253, x_253, x_253) * vec3<f32>(x_255.x, x_255.y, x_255.z)) + vec3<f32>(x_259.x, x_259.y, x_259.z));
    let x_262 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_264 : vec4<f32> = u_xlat0;
    let x_266 : vec4<f32> = u_xlat1;
    let x_268 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.x, x_266.y, x_266.z));
    let x_269 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  }
  let x_271 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = x_38.x_Lut_Params;
  let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_275.w, x_275.w, x_275.w));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_286 : vec4<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_294 : vec4<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_302 : vec4<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_307 : f32 = u_xlat6.y;
  let x_309 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_307, x_309);
  let x_313 : f32 = u_xlat6.z;
  let x_315 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_313, x_315);
  let x_320 : f32 = u_xlat6.y;
  let x_322 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_320, x_322);
  let x_326 : f32 = u_xlat6.z;
  let x_328 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_326, x_328);
  let x_331 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = max(vec3<f32>(x_331.x, x_331.y, x_331.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_337 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_340 : f32 = u_xlat0.x;
  let x_343 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_340) + x_343);
  let x_347 : f32 = u_xlat0.x;
  let x_349 : f32 = u_xlat0.z;
  u_xlat0.x = (x_347 / x_349);
  let x_352 : vec3<f32> = u_xlat6;
  let x_355 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_352.y, x_352.x, x_352.z)) + vec3<f32>(x_355.z, x_355.y, x_355.x));
  let x_358 : vec3<f32> = u_xlat5;
  let x_360 : vec3<f32> = u_xlat6;
  let x_362 : vec2<f32> = (vec2<f32>(x_358.x, x_358.y) * vec2<f32>(x_360.z, x_360.y));
  let x_363 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_362.x, x_362.y, x_363.z);
  let x_366 : f32 = u_xlat5.y;
  let x_368 : f32 = u_xlat5.x;
  u_xlat5.x = (x_366 + x_368);
  let x_372 : f32 = u_xlat6.x;
  let x_374 : f32 = u_xlat5.z;
  let x_377 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_372 * x_374) + x_377);
  let x_381 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_381, 0.0f);
  let x_385 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_385);
  let x_391 : f32 = u_xlat6.y;
  let x_393 : f32 = u_xlat6.z;
  u_xlat10.x = (x_391 + x_393);
  let x_397 : f32 = u_xlat6.x;
  let x_399 : f32 = u_xlat10.x;
  u_xlat10.x = (x_397 + x_399);
  let x_403 : f32 = u_xlat5.x;
  let x_407 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_403 * 1.75f) + x_407);
  let x_411 : f32 = u_xlat0.x;
  u_xlat15 = (x_411 + -0.40000000596046447754f);
  let x_414 : f32 = u_xlat15;
  u_xlat1.x = (x_414 * 2.5f);
  let x_419 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_419)) + 1.0f);
  let x_425 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_425, 0.0f);
  let x_428 : f32 = u_xlat15;
  u_xlatb15 = (x_428 >= 0.0f);
  let x_430 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_430);
  let x_433 : f32 = u_xlat1.x;
  let x_436 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_433) * x_436) + 1.0f);
  let x_440 : f32 = u_xlat15;
  let x_442 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_440 * x_442) + 1.0f);
  let x_446 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_446.x, x_446.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_454 : f32 = u_xlat5.x;
  u_xlatb1 = (0.15999999642372131348f >= x_454);
  let x_458 : f32 = u_xlat5.x;
  u_xlatb5 = (x_458 >= 0.47999998927116394043f);
  let x_463 : f32 = u_xlat10.x;
  u_xlat10.x = (0.07999999821186065674f / x_463);
  let x_467 : f32 = u_xlat10.x;
  u_xlat10.x = (x_467 + -0.5f);
  let x_472 : f32 = u_xlat10.x;
  let x_474 : f32 = u_xlat10.y;
  u_xlat10.x = (x_472 * x_474);
  let x_477 : bool = u_xlatb5;
  if (x_477) {
    x_479 = 0.0f;
  } else {
    let x_484 : f32 = u_xlat10.x;
    x_479 = x_484;
  }
  let x_485 : f32 = x_479;
  u_xlat5.x = x_485;
  let x_487 : bool = u_xlatb1;
  if (x_487) {
    let x_492 : f32 = u_xlat10.y;
    x_488 = x_492;
  } else {
    let x_495 : f32 = u_xlat5.x;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat5.x = x_496;
  let x_499 : f32 = u_xlat5.x;
  u_xlat5.x = (x_499 + 1.0f);
  let x_502 : vec3<f32> = u_xlat5;
  let x_504 : vec3<f32> = u_xlat6;
  let x_505 : vec3<f32> = (vec3<f32>(x_502.x, x_502.x, x_502.x) * x_504);
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_506.x, x_505.x, x_505.y, x_505.z);
  let x_511 : vec4<f32> = u_xlat2;
  let x_513 : vec4<f32> = u_xlat2;
  let x_516 : vec4<bool> = (vec4<f32>(x_511.z, x_511.w, x_511.z, x_511.w) == vec4<f32>(x_513.y, x_513.z, x_513.y, x_513.z));
  u_xlatb10 = vec2<bool>(x_516.x, x_516.y);
  let x_519 : bool = u_xlatb10.y;
  let x_521 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_519 & x_521);
  let x_525 : f32 = u_xlat6.y;
  let x_527 : f32 = u_xlat5.x;
  let x_530 : f32 = u_xlat2.w;
  u_xlat15 = ((x_525 * x_527) + -(x_530));
  let x_533 : f32 = u_xlat15;
  u_xlat15 = (x_533 * 1.73205077648162841797f);
  let x_537 : f32 = u_xlat2.y;
  let x_540 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_537 * 2.0f) + -(x_540));
  let x_545 : f32 = u_xlat6.z;
  let x_548 : f32 = u_xlat5.x;
  let x_551 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_545) * x_548) + x_551);
  let x_555 : f32 = u_xlat15;
  let x_558 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_555), abs(x_558));
  let x_563 : f32 = u_xlat15;
  let x_566 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_563), abs(x_566));
  let x_569 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_569);
  let x_571 : f32 = u_xlat16;
  let x_573 : f32 = u_xlat11.x;
  u_xlat11.x = (x_571 * x_573);
  let x_577 : f32 = u_xlat11.x;
  let x_579 : f32 = u_xlat11.x;
  u_xlat16 = (x_577 * x_579);
  let x_582 : f32 = u_xlat16;
  u_xlat3.x = ((x_582 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_588 : f32 = u_xlat16;
  let x_590 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_588 * x_590) + 0.18014100193977355957f);
  let x_595 : f32 = u_xlat16;
  let x_597 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_595 * x_597) + -0.33029949665069580078f);
  let x_602 : f32 = u_xlat16;
  let x_604 : f32 = u_xlat3.x;
  u_xlat16 = ((x_602 * x_604) + 0.99986600875854492188f);
  let x_608 : f32 = u_xlat16;
  let x_610 : f32 = u_xlat11.x;
  u_xlat3.x = (x_608 * x_610);
  let x_615 : f32 = u_xlat1.x;
  let x_617 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_615) < abs(x_617));
  let x_621 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_621 * -2.0f) + 1.57079637050628662109f);
  let x_627 : bool = u_xlatb8;
  if (x_627) {
    let x_632 : f32 = u_xlat3.x;
    x_628 = x_632;
  } else {
    x_628 = 0.0f;
  }
  let x_634 : f32 = x_628;
  u_xlat3.x = x_634;
  let x_637 : f32 = u_xlat11.x;
  let x_638 : f32 = u_xlat16;
  let x_641 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_637 * x_638) + x_641);
  let x_646 : f32 = u_xlat1.x;
  let x_648 : f32 = u_xlat1.x;
  u_xlatb16 = (x_646 < -(x_648));
  let x_651 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.14159274101257324219f, x_651);
  let x_654 : f32 = u_xlat16;
  let x_656 : f32 = u_xlat11.x;
  u_xlat11.x = (x_654 + x_656);
  let x_659 : f32 = u_xlat15;
  let x_661 : f32 = u_xlat1.x;
  u_xlat16 = min(x_659, x_661);
  let x_663 : f32 = u_xlat15;
  let x_665 : f32 = u_xlat1.x;
  u_xlat15 = max(x_663, x_665);
  let x_667 : f32 = u_xlat16;
  let x_668 : f32 = u_xlat16;
  u_xlatb1 = (x_667 < -(x_668));
  let x_671 : f32 = u_xlat15;
  let x_672 : f32 = u_xlat15;
  u_xlatb15 = (x_671 >= -(x_672));
  let x_675 : bool = u_xlatb15;
  let x_676 : bool = u_xlatb1;
  u_xlatb15 = (x_675 & x_676);
  let x_678 : bool = u_xlatb15;
  if (x_678) {
    let x_683 : f32 = u_xlat11.x;
    x_679 = -(x_683);
  } else {
    let x_687 : f32 = u_xlat11.x;
    x_679 = x_687;
  }
  let x_688 : f32 = x_679;
  u_xlat15 = x_688;
  let x_689 : f32 = u_xlat15;
  u_xlat15 = (x_689 * 57.295780181884765625f);
  let x_693 : bool = u_xlatb10.x;
  let x_694 : f32 = u_xlat15;
  u_xlat10.x = select(x_694, 0.0f, x_693);
  let x_698 : f32 = u_xlat10.x;
  u_xlatb15 = (x_698 < 0.0f);
  let x_701 : f32 = u_xlat10.x;
  u_xlat1.x = (x_701 + 360.0f);
  let x_705 : bool = u_xlatb15;
  if (x_705) {
    let x_710 : f32 = u_xlat1.x;
    x_706 = x_710;
  } else {
    let x_713 : f32 = u_xlat10.x;
    x_706 = x_713;
  }
  let x_714 : f32 = x_706;
  u_xlat10.x = x_714;
  let x_717 : f32 = u_xlat10.x;
  u_xlatb15 = (x_717 < -180.0f);
  let x_722 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_722);
  let x_724 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_724.x, x_724.x) + vec2<f32>(360.0f, -360.0f));
  let x_729 : bool = u_xlatb1;
  if (x_729) {
    let x_734 : f32 = u_xlat11.y;
    x_730 = x_734;
  } else {
    let x_737 : f32 = u_xlat10.x;
    x_730 = x_737;
  }
  let x_738 : f32 = x_730;
  u_xlat10.x = x_738;
  let x_740 : bool = u_xlatb15;
  if (x_740) {
    let x_745 : f32 = u_xlat11.x;
    x_741 = x_745;
  } else {
    let x_748 : f32 = u_xlat10.x;
    x_741 = x_748;
  }
  let x_749 : f32 = x_741;
  u_xlat10.x = x_749;
  let x_752 : f32 = u_xlat10.x;
  u_xlat10.x = (x_752 * 0.01481481455266475677f);
  let x_757 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_757)) + 1.0f);
  let x_763 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_763, 0.0f);
  let x_767 : f32 = u_xlat10.x;
  u_xlat15 = ((x_767 * -2.0f) + 3.0f);
  let x_772 : f32 = u_xlat10.x;
  let x_774 : f32 = u_xlat10.x;
  u_xlat10.x = (x_772 * x_774);
  let x_778 : f32 = u_xlat10.x;
  let x_779 : f32 = u_xlat15;
  u_xlat10.x = (x_778 * x_779);
  let x_783 : f32 = u_xlat10.x;
  let x_785 : f32 = u_xlat10.x;
  u_xlat10.x = (x_783 * x_785);
  let x_789 : f32 = u_xlat0.x;
  let x_791 : f32 = u_xlat10.x;
  u_xlat0.x = (x_789 * x_791);
  let x_795 : f32 = u_xlat6.x;
  let x_798 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_795) * x_798) + 0.02999999932944774628f);
  let x_804 : f32 = u_xlat5.x;
  let x_806 : f32 = u_xlat0.x;
  u_xlat0.x = (x_804 * x_806);
  let x_810 : f32 = u_xlat0.x;
  let x_814 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_810 * 0.18000000715255737305f) + x_814);
  let x_821 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_821.x, x_821.z, x_821.w));
  let x_829 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_829.x, x_829.z, x_829.w));
  let x_837 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_837.x, x_837.z, x_837.w));
  let x_841 : vec4<f32> = u_xlat0;
  let x_844 : vec3<f32> = max(vec3<f32>(x_841.x, x_841.y, x_841.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_847.x, x_847.y, x_847.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_854 : f32 = u_xlat15;
  let x_857 : vec4<f32> = u_xlat0;
  let x_859 : vec3<f32> = (-(vec3<f32>(x_854, x_854, x_854)) + vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_860 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat0;
  let x_867 : f32 = u_xlat15;
  let x_869 : vec3<f32> = ((vec3<f32>(x_862.x, x_862.y, x_862.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_867, x_867, x_867));
  let x_870 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec4<f32> = u_xlat0;
  let x_876 : vec3<f32> = (vec3<f32>(x_872.x, x_872.y, x_872.z) + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_877 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat0;
  let x_881 : vec4<f32> = u_xlat1;
  let x_886 : vec3<f32> = ((vec3<f32>(x_879.x, x_879.y, x_879.z) * vec3<f32>(x_881.x, x_881.y, x_881.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_887 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : vec4<f32> = u_xlat0;
  let x_896 : vec3<f32> = ((vec3<f32>(x_889.x, x_889.y, x_889.z) * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_897 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat0;
  let x_901 : vec4<f32> = u_xlat2;
  let x_906 : vec3<f32> = ((vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_901.x, x_901.y, x_901.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_907 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec4<f32> = u_xlat1;
  let x_911 : vec4<f32> = u_xlat0;
  let x_913 : vec3<f32> = (vec3<f32>(x_909.x, x_909.y, x_909.z) / vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_920 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_928 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_936 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_940 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_940.x, x_940.y, x_940.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_945 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_945, 0.00009999999747378752f);
  let x_948 : vec4<f32> = u_xlat1;
  let x_950 : vec4<f32> = u_xlat0;
  let x_952 : vec2<f32> = (vec2<f32>(x_948.x, x_948.y) / vec2<f32>(x_950.x, x_950.x));
  let x_953 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
  let x_956 : f32 = u_xlat1.y;
  u_xlat15 = max(x_956, 0.0f);
  let x_958 : f32 = u_xlat15;
  u_xlat15 = min(x_958, 65504.0f);
  let x_961 : f32 = u_xlat15;
  u_xlat15 = log2(x_961);
  let x_963 : f32 = u_xlat15;
  u_xlat15 = (x_963 * 0.98110002279281616211f);
  let x_966 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_966);
  let x_970 : f32 = u_xlat0.y;
  u_xlat15 = max(x_970, 0.00009999999747378752f);
  let x_973 : f32 = u_xlat1.y;
  let x_974 : f32 = u_xlat15;
  u_xlat15 = (x_973 / x_974);
  let x_977 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_977) + 1.0f);
  let x_981 : f32 = u_xlat0.y;
  let x_983 : f32 = u_xlat16;
  u_xlat0.z = (-(x_981) + x_983);
  let x_986 : f32 = u_xlat15;
  let x_988 : vec4<f32> = u_xlat0;
  let x_990 : vec2<f32> = (vec2<f32>(x_986, x_986) * vec2<f32>(x_988.x, x_988.z));
  let x_991 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_990.x, x_991.y, x_990.y, x_991.w);
  let x_997 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1005 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1013 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1017 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1020 : f32 = u_xlat15;
  let x_1023 : vec4<f32> = u_xlat0;
  let x_1025 : vec3<f32> = (-(vec3<f32>(x_1020, x_1020, x_1020)) + vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1033 : f32 = u_xlat15;
  let x_1035 : vec3<f32> = ((vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1033, x_1033, x_1033));
  let x_1036 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1042 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
  let x_1046 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1054 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1062 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
  let x_1070 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1078 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1083 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1083, 0.0f, 1.0f);
  let x_1090 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1095 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1095, 0.0f, 1.0f);
  let x_1102 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1107 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1107, 0.0f, 1.0f);
  let x_1115 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1115);
  let x_1119 : bool = u_xlatb0.x;
  if (x_1119) {
    let x_1122 : vec4<f32> = u_xlat1;
    let x_1126 : vec3<f32> = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1127 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
    let x_1129 : vec4<f32> = u_xlat1;
    let x_1131 : vec3<f32> = log2(vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
    let x_1132 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
    let x_1134 : vec4<f32> = u_xlat2;
    let x_1138 : vec3<f32> = (vec3<f32>(x_1134.x, x_1134.y, x_1134.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1139 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
    let x_1141 : vec4<f32> = u_xlat2;
    let x_1143 : vec3<f32> = exp2(vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
    let x_1144 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
    let x_1146 : vec4<f32> = u_xlat2;
    let x_1153 : vec3<f32> = ((vec3<f32>(x_1146.x, x_1146.y, x_1146.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1154 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
    let x_1159 : vec4<f32> = u_xlat1;
    let x_1161 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1159.x));
    u_xlatb3 = vec3<bool>(x_1161.x, x_1161.y, x_1161.z);
    let x_1165 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1165;
    let x_1167 : bool = u_xlatb3.x;
    if (x_1167) {
      let x_1172 : f32 = u_xlat0.x;
      x_1168 = x_1172;
    } else {
      let x_1175 : f32 = u_xlat2.x;
      x_1168 = x_1175;
    }
    let x_1176 : f32 = x_1168;
    hlslcc_movcTemp.x = x_1176;
    let x_1179 : bool = u_xlatb3.y;
    if (x_1179) {
      let x_1184 : f32 = u_xlat0.y;
      x_1180 = x_1184;
    } else {
      let x_1187 : f32 = u_xlat2.y;
      x_1180 = x_1187;
    }
    let x_1188 : f32 = x_1180;
    hlslcc_movcTemp.y = x_1188;
    let x_1191 : bool = u_xlatb3.z;
    if (x_1191) {
      let x_1196 : f32 = u_xlat0.z;
      x_1192 = x_1196;
    } else {
      let x_1199 : f32 = u_xlat2.z;
      x_1192 = x_1199;
    }
    let x_1200 : f32 = x_1192;
    hlslcc_movcTemp.z = x_1200;
    let x_1202 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1202;
    let x_1203 : vec4<f32> = u_xlat0;
    let x_1206 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1208 : vec3<f32> = (vec3<f32>(x_1203.z, x_1203.x, x_1203.y) * vec3<f32>(x_1206.z, x_1206.z, x_1206.z));
    let x_1209 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
    let x_1212 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1212);
    let x_1215 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1217 : vec2<f32> = (vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(0.5f, 0.5f));
    let x_1218 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1217.x, x_1218.y, x_1218.z, x_1217.y);
    let x_1220 : vec4<f32> = u_xlat2;
    let x_1223 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1226 : vec4<f32> = u_xlat2;
    let x_1228 : vec2<f32> = ((vec2<f32>(x_1220.y, x_1220.z) * vec2<f32>(x_1223.x, x_1223.y)) + vec2<f32>(x_1226.x, x_1226.w));
    let x_1229 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1229.x, x_1228.x, x_1228.y, x_1229.w);
    let x_1231 : f32 = u_xlat15;
    let x_1233 : f32 = x_38.x_UserLut_Params.y;
    let x_1236 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1231 * x_1233) + x_1236);
    let x_1243 : vec4<f32> = u_xlat2;
    let x_1245 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1243.x, x_1243.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1245.x, x_1245.y, x_1245.z);
    let x_1249 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_1249;
    u_xlat4.y = 0.0f;
    let x_1252 : vec4<f32> = u_xlat2;
    let x_1254 : vec2<f32> = u_xlat4;
    let x_1255 : vec2<f32> = (vec2<f32>(x_1252.x, x_1252.z) + x_1254);
    let x_1256 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1255.x, x_1255.y, x_1256.z, x_1256.w);
    let x_1261 : vec4<f32> = u_xlat2;
    let x_1263 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1261.x, x_1261.y), 0.0f);
    let x_1264 : vec3<f32> = vec3<f32>(x_1263.x, x_1263.y, x_1263.z);
    let x_1265 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
    let x_1268 : f32 = u_xlat0.z;
    let x_1270 : f32 = x_38.x_UserLut_Params.z;
    let x_1272 : f32 = u_xlat15;
    u_xlat15 = ((x_1268 * x_1270) + -(x_1272));
    let x_1275 : vec3<f32> = u_xlat3;
    let x_1277 : vec4<f32> = u_xlat2;
    let x_1279 : vec3<f32> = (-(x_1275) + vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
    let x_1280 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
    let x_1282 : f32 = u_xlat15;
    let x_1284 : vec4<f32> = u_xlat2;
    let x_1287 : vec3<f32> = u_xlat3;
    let x_1288 : vec3<f32> = ((vec3<f32>(x_1282, x_1282, x_1282) * vec3<f32>(x_1284.x, x_1284.y, x_1284.z)) + x_1287);
    let x_1289 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
    let x_1291 : vec4<f32> = u_xlat0;
    let x_1294 : vec4<f32> = u_xlat2;
    let x_1296 : vec3<f32> = (-(vec3<f32>(x_1291.x, x_1291.y, x_1291.z)) + vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
    let x_1297 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
    let x_1300 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1302 : vec4<f32> = u_xlat2;
    let x_1305 : vec4<f32> = u_xlat0;
    let x_1307 : vec3<f32> = ((vec3<f32>(x_1300.w, x_1300.w, x_1300.w) * vec3<f32>(x_1302.x, x_1302.y, x_1302.z)) + vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
    let x_1308 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
    let x_1310 : vec4<f32> = u_xlat0;
    let x_1314 : vec3<f32> = (vec3<f32>(x_1310.x, x_1310.y, x_1310.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1315 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
    let x_1317 : vec4<f32> = u_xlat0;
    u_xlat3 = (vec3<f32>(x_1317.x, x_1317.y, x_1317.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1322 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1322 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1326 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1326));
    let x_1329 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1329 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1333 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1333);
    let x_1337 : vec4<f32> = u_xlat0;
    let x_1339 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1337.x));
    u_xlatb0 = vec3<bool>(x_1339.x, x_1339.y, x_1339.z);
    let x_1342 : bool = u_xlatb0.x;
    if (x_1342) {
      let x_1347 : f32 = u_xlat2.x;
      x_1343 = x_1347;
    } else {
      let x_1350 : f32 = u_xlat3.x;
      x_1343 = x_1350;
    }
    let x_1351 : f32 = x_1343;
    u_xlat1.x = x_1351;
    let x_1354 : bool = u_xlatb0.y;
    if (x_1354) {
      let x_1359 : f32 = u_xlat2.y;
      x_1355 = x_1359;
    } else {
      let x_1362 : f32 = u_xlat3.y;
      x_1355 = x_1362;
    }
    let x_1363 : f32 = x_1355;
    u_xlat1.y = x_1363;
    let x_1366 : bool = u_xlatb0.z;
    if (x_1366) {
      let x_1371 : f32 = u_xlat2.z;
      x_1367 = x_1371;
    } else {
      let x_1374 : f32 = u_xlat3.z;
      x_1367 = x_1374;
    }
    let x_1375 : f32 = x_1367;
    u_xlat1.z = x_1375;
  }
  let x_1377 : vec4<f32> = u_xlat1;
  let x_1380 : vec4<f32> = x_38.x_Lut_Params;
  let x_1382 : vec3<f32> = (vec3<f32>(x_1377.z, x_1377.x, x_1377.y) * vec3<f32>(x_1380.z, x_1380.z, x_1380.z));
  let x_1383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1383.w);
  let x_1386 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1386);
  let x_1390 : vec4<f32> = x_38.x_Lut_Params;
  let x_1392 : vec2<f32> = (vec2<f32>(x_1390.x, x_1390.y) * vec2<f32>(0.5f, 0.5f));
  let x_1393 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1392.x, x_1392.y, x_1393.z, x_1393.w);
  let x_1395 : vec4<f32> = u_xlat0;
  let x_1398 : vec4<f32> = x_38.x_Lut_Params;
  let x_1401 : vec4<f32> = u_xlat1;
  let x_1403 : vec2<f32> = ((vec2<f32>(x_1395.y, x_1395.z) * vec2<f32>(x_1398.x, x_1398.y)) + vec2<f32>(x_1401.x, x_1401.y));
  let x_1404 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1404.x, x_1403.x, x_1403.y, x_1404.w);
  let x_1407 : f32 = u_xlat0.x;
  let x_1409 : f32 = x_38.x_Lut_Params.y;
  let x_1412 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1407 * x_1409) + x_1412);
  let x_1419 : vec4<f32> = u_xlat2;
  let x_1421 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1419.x, x_1419.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1421.x, x_1421.y, x_1421.z);
  let x_1424 : f32 = x_38.x_Lut_Params.y;
  u_xlat1.x = x_1424;
  u_xlat1.y = 0.0f;
  let x_1427 : vec4<f32> = u_xlat1;
  let x_1429 : vec4<f32> = u_xlat2;
  let x_1431 : vec2<f32> = (vec2<f32>(x_1427.x, x_1427.y) + vec2<f32>(x_1429.x, x_1429.z));
  let x_1432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1431.x, x_1431.y, x_1432.z, x_1432.w);
  let x_1437 : vec4<f32> = u_xlat1;
  let x_1439 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1437.x, x_1437.y), 0.0f);
  let x_1440 : vec3<f32> = vec3<f32>(x_1439.x, x_1439.y, x_1439.z);
  let x_1441 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1440.x, x_1440.y, x_1441.z, x_1440.z);
  let x_1444 : f32 = u_xlat1.z;
  let x_1446 : f32 = x_38.x_Lut_Params.z;
  let x_1449 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1444 * x_1446) + -(x_1449));
  let x_1453 : vec3<f32> = u_xlat5;
  let x_1455 : vec4<f32> = u_xlat1;
  let x_1457 : vec3<f32> = (-(x_1453) + vec3<f32>(x_1455.x, x_1455.y, x_1455.w));
  let x_1458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
  let x_1460 : vec4<f32> = u_xlat0;
  let x_1462 : vec4<f32> = u_xlat1;
  let x_1465 : vec3<f32> = u_xlat5;
  let x_1466 : vec3<f32> = ((vec3<f32>(x_1460.x, x_1460.x, x_1460.x) * vec3<f32>(x_1462.x, x_1462.y, x_1462.z)) + x_1465);
  let x_1467 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
  let x_1469 : vec2<f32> = vs_TEXCOORD0;
  let x_1472 : vec4<f32> = x_38.x_Dithering_Params;
  let x_1476 : vec4<f32> = x_38.x_Dithering_Params;
  let x_1478 : vec2<f32> = ((x_1469 * vec2<f32>(x_1472.x, x_1472.y)) + vec2<f32>(x_1476.z, x_1476.w));
  let x_1479 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
  let x_1486 : vec4<f32> = u_xlat1;
  let x_1489 : f32 = x_38.x_GlobalMipBias.x;
  let x_1490 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1486.x, x_1486.y), x_1489);
  u_xlat15 = x_1490.w;
  let x_1492 : f32 = u_xlat15;
  u_xlat15 = ((x_1492 * 2.0f) + -1.0f);
  let x_1495 : f32 = u_xlat15;
  u_xlatb1 = (x_1495 >= 0.0f);
  let x_1497 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1497);
  let x_1500 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1500)) + 1.0f);
  let x_1504 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1504);
  let x_1506 : f32 = u_xlat15;
  u_xlat15 = (-(x_1506) + 1.0f);
  let x_1509 : f32 = u_xlat15;
  let x_1511 : f32 = u_xlat1.x;
  u_xlat15 = (x_1509 * x_1511);
  let x_1513 : vec4<f32> = u_xlat0;
  let x_1515 : vec3<f32> = (vec3<f32>(x_1513.x, x_1513.y, x_1513.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1516 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
  let x_1518 : vec4<f32> = u_xlat0;
  let x_1521 : vec3<f32> = log2(abs(vec3<f32>(x_1518.x, x_1518.y, x_1518.z)));
  let x_1522 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1522.w);
  let x_1524 : vec4<f32> = u_xlat2;
  let x_1526 : vec3<f32> = (vec3<f32>(x_1524.x, x_1524.y, x_1524.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1527 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1526.x, x_1526.y, x_1526.z, x_1527.w);
  let x_1529 : vec4<f32> = u_xlat2;
  let x_1531 : vec3<f32> = exp2(vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
  let x_1532 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
  let x_1534 : vec4<f32> = u_xlat2;
  let x_1537 : vec3<f32> = ((vec3<f32>(x_1534.x, x_1534.y, x_1534.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1538 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
  let x_1540 : vec4<f32> = u_xlat0;
  let x_1542 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1540.x));
  u_xlatb0 = vec3<bool>(x_1542.x, x_1542.y, x_1542.z);
  let x_1545 : bool = u_xlatb0.x;
  if (x_1545) {
    let x_1550 : f32 = u_xlat1.x;
    x_1546 = x_1550;
  } else {
    let x_1553 : f32 = u_xlat2.x;
    x_1546 = x_1553;
  }
  let x_1554 : f32 = x_1546;
  u_xlat0.x = x_1554;
  let x_1557 : bool = u_xlatb0.y;
  if (x_1557) {
    let x_1562 : f32 = u_xlat1.y;
    x_1558 = x_1562;
  } else {
    let x_1565 : f32 = u_xlat2.y;
    x_1558 = x_1565;
  }
  let x_1566 : f32 = x_1558;
  u_xlat0.y = x_1566;
  let x_1569 : bool = u_xlatb0.z;
  if (x_1569) {
    let x_1574 : f32 = u_xlat1.z;
    x_1570 = x_1574;
  } else {
    let x_1577 : f32 = u_xlat2.z;
    x_1570 = x_1577;
  }
  let x_1578 : f32 = x_1570;
  u_xlat0.z = x_1578;
  let x_1580 : f32 = u_xlat15;
  let x_1585 : vec4<f32> = u_xlat0;
  let x_1587 : vec3<f32> = ((vec3<f32>(x_1580, x_1580, x_1580) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
  let x_1588 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
  let x_1590 : vec4<f32> = u_xlat0;
  let x_1592 : vec3<f32> = (vec3<f32>(x_1590.x, x_1590.y, x_1590.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1593 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
  let x_1595 : vec4<f32> = u_xlat0;
  let x_1597 : vec3<f32> = (vec3<f32>(x_1595.x, x_1595.y, x_1595.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1598 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1598.w);
  let x_1600 : vec4<f32> = u_xlat2;
  let x_1602 : vec3<f32> = (vec3<f32>(x_1600.x, x_1600.y, x_1600.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1603 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
  let x_1605 : vec4<f32> = u_xlat2;
  let x_1608 : vec3<f32> = log2(abs(vec3<f32>(x_1605.x, x_1605.y, x_1605.z)));
  let x_1609 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1609.w);
  let x_1611 : vec4<f32> = u_xlat2;
  let x_1613 : vec3<f32> = (vec3<f32>(x_1611.x, x_1611.y, x_1611.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1614 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1614.w);
  let x_1616 : vec4<f32> = u_xlat2;
  let x_1618 : vec3<f32> = exp2(vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
  let x_1619 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1618.x, x_1618.y, x_1618.z, x_1619.w);
  let x_1621 : vec4<f32> = u_xlat0;
  let x_1623 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1621.x));
  u_xlatb0 = vec3<bool>(x_1623.x, x_1623.y, x_1623.z);
  let x_1626 : bool = u_xlatb0.x;
  if (x_1626) {
    let x_1631 : f32 = u_xlat1.x;
    x_1627 = x_1631;
  } else {
    let x_1634 : f32 = u_xlat2.x;
    x_1627 = x_1634;
  }
  let x_1635 : f32 = x_1627;
  u_xlat0.x = x_1635;
  let x_1638 : bool = u_xlatb0.y;
  if (x_1638) {
    let x_1643 : f32 = u_xlat1.y;
    x_1639 = x_1643;
  } else {
    let x_1646 : f32 = u_xlat2.y;
    x_1639 = x_1646;
  }
  let x_1647 : f32 = x_1639;
  u_xlat0.y = x_1647;
  let x_1650 : bool = u_xlatb0.z;
  if (x_1650) {
    let x_1655 : f32 = u_xlat1.z;
    x_1651 = x_1655;
  } else {
    let x_1658 : f32 = u_xlat2.z;
    x_1651 = x_1658;
  }
  let x_1659 : f32 = x_1651;
  u_xlat0.z = x_1659;
  let x_1663 : vec4<f32> = u_xlat0;
  let x_1665 : vec3<f32> = max(vec3<f32>(x_1663.x, x_1663.y, x_1663.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1666 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1665.x, x_1665.y, x_1665.z, x_1666.w);
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


