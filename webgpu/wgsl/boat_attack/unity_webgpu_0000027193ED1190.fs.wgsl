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
  x_LensDirt_Params : vec4<f32>,
  /* @offset(144) */
  x_LensDirt_Intensity : f32,
  /* @offset(148) */
  x_Chroma_Params : f32,
  /* @offset(160) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(192) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

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

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_522 : f32;
  var x_531 : f32;
  var x_671 : f32;
  var x_722 : f32;
  var x_749 : f32;
  var x_773 : f32;
  var x_784 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1211 : f32;
  var x_1223 : f32;
  var x_1235 : f32;
  var x_1386 : f32;
  var x_1398 : f32;
  var x_1410 : f32;
  var x_1589 : f32;
  var x_1601 : f32;
  var x_1613 : f32;
  var x_1670 : f32;
  var x_1682 : f32;
  var x_1694 : f32;
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
  let x_190 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec2<f32> = vs_TEXCOORD0;
  let x_195 : vec4<f32> = x_38.x_LensDirt_Params;
  let x_199 : vec4<f32> = x_38.x_LensDirt_Params;
  let x_201 : vec2<f32> = ((x_192 * vec2<f32>(x_195.x, x_195.y)) + vec2<f32>(x_199.z, x_199.w));
  let x_202 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_201.x, x_201.y, x_202.z, x_202.w);
  let x_208 : vec4<f32> = u_xlat2;
  let x_211 : f32 = x_38.x_GlobalMipBias.x;
  let x_212 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_208.x, x_208.y), x_211);
  let x_213 : vec3<f32> = vec3<f32>(x_212.x, x_212.y, x_212.z);
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_216 : vec4<f32> = u_xlat2;
  let x_220 : f32 = x_38.x_LensDirt_Intensity;
  let x_222 : vec3<f32> = (vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_220, x_220, x_220));
  let x_223 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec4<f32> = u_xlat0;
  let x_230 : vec4<f32> = u_xlat1;
  let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.x, x_227.y, x_227.z)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_238 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_238);
  let x_240 : bool = u_xlatb15;
  if (x_240) {
    let x_243 : vec2<f32> = vs_TEXCOORD0;
    let x_245 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_248 : vec2<f32> = (x_243 + -(vec2<f32>(x_245.x, x_245.y)));
    let x_249 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_248.x, x_248.y, x_249.z, x_249.w);
    let x_251 : vec4<f32> = u_xlat1;
    let x_255 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_257 : vec2<f32> = (abs(vec2<f32>(x_251.x, x_251.y)) * vec2<f32>(x_255.z, x_255.z));
    let x_258 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_258.x, x_257.x, x_257.y, x_258.w);
    let x_261 : f32 = u_xlat1.y;
    let x_265 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat1.x = (x_261 * x_265);
    let x_269 : vec4<f32> = u_xlat1;
    let x_271 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_269.x, x_269.z), vec2<f32>(x_271.x, x_271.z));
    let x_274 : f32 = u_xlat15;
    u_xlat15 = (-(x_274) + 1.0f);
    let x_278 : f32 = u_xlat15;
    u_xlat15 = max(x_278, 0.0f);
    let x_280 : f32 = u_xlat15;
    u_xlat15 = log2(x_280);
    let x_282 : f32 = u_xlat15;
    let x_284 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat15 = (x_282 * x_284);
    let x_286 : f32 = u_xlat15;
    u_xlat15 = exp2(x_286);
    let x_289 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_293 : vec3<f32> = (-(vec3<f32>(x_289.x, x_289.y, x_289.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_294 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
    let x_296 : f32 = u_xlat15;
    let x_298 : vec4<f32> = u_xlat1;
    let x_302 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_304 : vec3<f32> = ((vec3<f32>(x_296, x_296, x_296) * vec3<f32>(x_298.x, x_298.y, x_298.z)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
    let x_305 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : vec4<f32> = u_xlat0;
    let x_309 : vec4<f32> = u_xlat1;
    let x_311 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.y, x_309.z));
    let x_312 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  }
  let x_314 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = x_38.x_Lut_Params;
  let x_320 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_318.w, x_318.w, x_318.w));
  let x_321 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_337 : vec4<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_350 : f32 = u_xlat6.y;
  let x_352 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_350, x_352);
  let x_356 : f32 = u_xlat6.z;
  let x_358 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_356, x_358);
  let x_363 : f32 = u_xlat6.y;
  let x_365 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_363, x_365);
  let x_369 : f32 = u_xlat6.z;
  let x_371 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_369, x_371);
  let x_374 : vec4<f32> = u_xlat0;
  let x_379 : vec3<f32> = max(vec3<f32>(x_374.x, x_374.y, x_374.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_383 : f32 = u_xlat0.x;
  let x_386 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_383) + x_386);
  let x_390 : f32 = u_xlat0.x;
  let x_392 : f32 = u_xlat0.z;
  u_xlat0.x = (x_390 / x_392);
  let x_395 : vec3<f32> = u_xlat6;
  let x_398 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_395.y, x_395.x, x_395.z)) + vec3<f32>(x_398.z, x_398.y, x_398.x));
  let x_401 : vec3<f32> = u_xlat5;
  let x_403 : vec3<f32> = u_xlat6;
  let x_405 : vec2<f32> = (vec2<f32>(x_401.x, x_401.y) * vec2<f32>(x_403.z, x_403.y));
  let x_406 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_405.x, x_405.y, x_406.z);
  let x_409 : f32 = u_xlat5.y;
  let x_411 : f32 = u_xlat5.x;
  u_xlat5.x = (x_409 + x_411);
  let x_415 : f32 = u_xlat6.x;
  let x_417 : f32 = u_xlat5.z;
  let x_420 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_415 * x_417) + x_420);
  let x_424 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_424, 0.0f);
  let x_428 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_428);
  let x_434 : f32 = u_xlat6.y;
  let x_436 : f32 = u_xlat6.z;
  u_xlat10.x = (x_434 + x_436);
  let x_440 : f32 = u_xlat6.x;
  let x_442 : f32 = u_xlat10.x;
  u_xlat10.x = (x_440 + x_442);
  let x_446 : f32 = u_xlat5.x;
  let x_450 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_446 * 1.75f) + x_450);
  let x_454 : f32 = u_xlat0.x;
  u_xlat15 = (x_454 + -0.40000000596046447754f);
  let x_457 : f32 = u_xlat15;
  u_xlat1.x = (x_457 * 2.5f);
  let x_462 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_462)) + 1.0f);
  let x_468 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_468, 0.0f);
  let x_471 : f32 = u_xlat15;
  u_xlatb15 = (x_471 >= 0.0f);
  let x_473 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_473);
  let x_476 : f32 = u_xlat1.x;
  let x_479 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_476) * x_479) + 1.0f);
  let x_483 : f32 = u_xlat15;
  let x_485 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_483 * x_485) + 1.0f);
  let x_489 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_489.x, x_489.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_497 : f32 = u_xlat5.x;
  u_xlatb1 = (0.15999999642372131348f >= x_497);
  let x_501 : f32 = u_xlat5.x;
  u_xlatb5 = (x_501 >= 0.47999998927116394043f);
  let x_506 : f32 = u_xlat10.x;
  u_xlat10.x = (0.07999999821186065674f / x_506);
  let x_510 : f32 = u_xlat10.x;
  u_xlat10.x = (x_510 + -0.5f);
  let x_515 : f32 = u_xlat10.x;
  let x_517 : f32 = u_xlat10.y;
  u_xlat10.x = (x_515 * x_517);
  let x_520 : bool = u_xlatb5;
  if (x_520) {
    x_522 = 0.0f;
  } else {
    let x_527 : f32 = u_xlat10.x;
    x_522 = x_527;
  }
  let x_528 : f32 = x_522;
  u_xlat5.x = x_528;
  let x_530 : bool = u_xlatb1;
  if (x_530) {
    let x_535 : f32 = u_xlat10.y;
    x_531 = x_535;
  } else {
    let x_538 : f32 = u_xlat5.x;
    x_531 = x_538;
  }
  let x_539 : f32 = x_531;
  u_xlat5.x = x_539;
  let x_542 : f32 = u_xlat5.x;
  u_xlat5.x = (x_542 + 1.0f);
  let x_545 : vec3<f32> = u_xlat5;
  let x_547 : vec3<f32> = u_xlat6;
  let x_548 : vec3<f32> = (vec3<f32>(x_545.x, x_545.x, x_545.x) * x_547);
  let x_549 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_549.x, x_548.x, x_548.y, x_548.z);
  let x_554 : vec4<f32> = u_xlat2;
  let x_556 : vec4<f32> = u_xlat2;
  let x_559 : vec4<bool> = (vec4<f32>(x_554.z, x_554.w, x_554.z, x_554.w) == vec4<f32>(x_556.y, x_556.z, x_556.y, x_556.z));
  u_xlatb10 = vec2<bool>(x_559.x, x_559.y);
  let x_562 : bool = u_xlatb10.y;
  let x_564 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_562 & x_564);
  let x_568 : f32 = u_xlat6.y;
  let x_570 : f32 = u_xlat5.x;
  let x_573 : f32 = u_xlat2.w;
  u_xlat15 = ((x_568 * x_570) + -(x_573));
  let x_576 : f32 = u_xlat15;
  u_xlat15 = (x_576 * 1.73205077648162841797f);
  let x_580 : f32 = u_xlat2.y;
  let x_583 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_580 * 2.0f) + -(x_583));
  let x_588 : f32 = u_xlat6.z;
  let x_591 : f32 = u_xlat5.x;
  let x_594 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_588) * x_591) + x_594);
  let x_598 : f32 = u_xlat15;
  let x_601 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_598), abs(x_601));
  let x_606 : f32 = u_xlat15;
  let x_609 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_606), abs(x_609));
  let x_612 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_612);
  let x_614 : f32 = u_xlat16;
  let x_616 : f32 = u_xlat11.x;
  u_xlat11.x = (x_614 * x_616);
  let x_620 : f32 = u_xlat11.x;
  let x_622 : f32 = u_xlat11.x;
  u_xlat16 = (x_620 * x_622);
  let x_625 : f32 = u_xlat16;
  u_xlat3.x = ((x_625 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_631 : f32 = u_xlat16;
  let x_633 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_631 * x_633) + 0.18014100193977355957f);
  let x_638 : f32 = u_xlat16;
  let x_640 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_638 * x_640) + -0.33029949665069580078f);
  let x_645 : f32 = u_xlat16;
  let x_647 : f32 = u_xlat3.x;
  u_xlat16 = ((x_645 * x_647) + 0.99986600875854492188f);
  let x_651 : f32 = u_xlat16;
  let x_653 : f32 = u_xlat11.x;
  u_xlat3.x = (x_651 * x_653);
  let x_658 : f32 = u_xlat1.x;
  let x_660 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_658) < abs(x_660));
  let x_664 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_664 * -2.0f) + 1.57079637050628662109f);
  let x_670 : bool = u_xlatb8;
  if (x_670) {
    let x_675 : f32 = u_xlat3.x;
    x_671 = x_675;
  } else {
    x_671 = 0.0f;
  }
  let x_677 : f32 = x_671;
  u_xlat3.x = x_677;
  let x_680 : f32 = u_xlat11.x;
  let x_681 : f32 = u_xlat16;
  let x_684 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_680 * x_681) + x_684);
  let x_689 : f32 = u_xlat1.x;
  let x_691 : f32 = u_xlat1.x;
  u_xlatb16 = (x_689 < -(x_691));
  let x_694 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.14159274101257324219f, x_694);
  let x_697 : f32 = u_xlat16;
  let x_699 : f32 = u_xlat11.x;
  u_xlat11.x = (x_697 + x_699);
  let x_702 : f32 = u_xlat15;
  let x_704 : f32 = u_xlat1.x;
  u_xlat16 = min(x_702, x_704);
  let x_706 : f32 = u_xlat15;
  let x_708 : f32 = u_xlat1.x;
  u_xlat15 = max(x_706, x_708);
  let x_710 : f32 = u_xlat16;
  let x_711 : f32 = u_xlat16;
  u_xlatb1 = (x_710 < -(x_711));
  let x_714 : f32 = u_xlat15;
  let x_715 : f32 = u_xlat15;
  u_xlatb15 = (x_714 >= -(x_715));
  let x_718 : bool = u_xlatb15;
  let x_719 : bool = u_xlatb1;
  u_xlatb15 = (x_718 & x_719);
  let x_721 : bool = u_xlatb15;
  if (x_721) {
    let x_726 : f32 = u_xlat11.x;
    x_722 = -(x_726);
  } else {
    let x_730 : f32 = u_xlat11.x;
    x_722 = x_730;
  }
  let x_731 : f32 = x_722;
  u_xlat15 = x_731;
  let x_732 : f32 = u_xlat15;
  u_xlat15 = (x_732 * 57.295780181884765625f);
  let x_736 : bool = u_xlatb10.x;
  let x_737 : f32 = u_xlat15;
  u_xlat10.x = select(x_737, 0.0f, x_736);
  let x_741 : f32 = u_xlat10.x;
  u_xlatb15 = (x_741 < 0.0f);
  let x_744 : f32 = u_xlat10.x;
  u_xlat1.x = (x_744 + 360.0f);
  let x_748 : bool = u_xlatb15;
  if (x_748) {
    let x_753 : f32 = u_xlat1.x;
    x_749 = x_753;
  } else {
    let x_756 : f32 = u_xlat10.x;
    x_749 = x_756;
  }
  let x_757 : f32 = x_749;
  u_xlat10.x = x_757;
  let x_760 : f32 = u_xlat10.x;
  u_xlatb15 = (x_760 < -180.0f);
  let x_765 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_765);
  let x_767 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_767.x, x_767.x) + vec2<f32>(360.0f, -360.0f));
  let x_772 : bool = u_xlatb1;
  if (x_772) {
    let x_777 : f32 = u_xlat11.y;
    x_773 = x_777;
  } else {
    let x_780 : f32 = u_xlat10.x;
    x_773 = x_780;
  }
  let x_781 : f32 = x_773;
  u_xlat10.x = x_781;
  let x_783 : bool = u_xlatb15;
  if (x_783) {
    let x_788 : f32 = u_xlat11.x;
    x_784 = x_788;
  } else {
    let x_791 : f32 = u_xlat10.x;
    x_784 = x_791;
  }
  let x_792 : f32 = x_784;
  u_xlat10.x = x_792;
  let x_795 : f32 = u_xlat10.x;
  u_xlat10.x = (x_795 * 0.01481481455266475677f);
  let x_800 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_800)) + 1.0f);
  let x_806 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_806, 0.0f);
  let x_810 : f32 = u_xlat10.x;
  u_xlat15 = ((x_810 * -2.0f) + 3.0f);
  let x_815 : f32 = u_xlat10.x;
  let x_817 : f32 = u_xlat10.x;
  u_xlat10.x = (x_815 * x_817);
  let x_821 : f32 = u_xlat10.x;
  let x_822 : f32 = u_xlat15;
  u_xlat10.x = (x_821 * x_822);
  let x_826 : f32 = u_xlat10.x;
  let x_828 : f32 = u_xlat10.x;
  u_xlat10.x = (x_826 * x_828);
  let x_832 : f32 = u_xlat0.x;
  let x_834 : f32 = u_xlat10.x;
  u_xlat0.x = (x_832 * x_834);
  let x_838 : f32 = u_xlat6.x;
  let x_841 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_838) * x_841) + 0.02999999932944774628f);
  let x_847 : f32 = u_xlat5.x;
  let x_849 : f32 = u_xlat0.x;
  u_xlat0.x = (x_847 * x_849);
  let x_853 : f32 = u_xlat0.x;
  let x_857 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_853 * 0.18000000715255737305f) + x_857);
  let x_864 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_864.x, x_864.z, x_864.w));
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_872.x, x_872.z, x_872.w));
  let x_880 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_880.x, x_880.z, x_880.w));
  let x_884 : vec4<f32> = u_xlat0;
  let x_887 : vec3<f32> = max(vec3<f32>(x_884.x, x_884.y, x_884.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_888 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_890.x, x_890.y, x_890.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_897 : f32 = u_xlat15;
  let x_900 : vec4<f32> = u_xlat0;
  let x_902 : vec3<f32> = (-(vec3<f32>(x_897, x_897, x_897)) + vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat0;
  let x_910 : f32 = u_xlat15;
  let x_912 : vec3<f32> = ((vec3<f32>(x_905.x, x_905.y, x_905.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_910, x_910, x_910));
  let x_913 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_915 : vec4<f32> = u_xlat0;
  let x_919 : vec3<f32> = (vec3<f32>(x_915.x, x_915.y, x_915.z) + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_920 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : vec4<f32> = u_xlat0;
  let x_924 : vec4<f32> = u_xlat1;
  let x_929 : vec3<f32> = ((vec3<f32>(x_922.x, x_922.y, x_922.z) * vec3<f32>(x_924.x, x_924.y, x_924.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_930 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat0;
  let x_939 : vec3<f32> = ((vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_940 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_942 : vec4<f32> = u_xlat0;
  let x_944 : vec4<f32> = u_xlat2;
  let x_949 : vec3<f32> = ((vec3<f32>(x_942.x, x_942.y, x_942.z) * vec3<f32>(x_944.x, x_944.y, x_944.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_950 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat1;
  let x_954 : vec4<f32> = u_xlat0;
  let x_956 : vec3<f32> = (vec3<f32>(x_952.x, x_952.y, x_952.z) / vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_957 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_963 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_971 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_979 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_983 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_983.x, x_983.y, x_983.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_988 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_988, 0.00009999999747378752f);
  let x_991 : vec4<f32> = u_xlat1;
  let x_993 : vec4<f32> = u_xlat0;
  let x_995 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) / vec2<f32>(x_993.x, x_993.x));
  let x_996 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
  let x_999 : f32 = u_xlat1.y;
  u_xlat15 = max(x_999, 0.0f);
  let x_1001 : f32 = u_xlat15;
  u_xlat15 = min(x_1001, 65504.0f);
  let x_1004 : f32 = u_xlat15;
  u_xlat15 = log2(x_1004);
  let x_1006 : f32 = u_xlat15;
  u_xlat15 = (x_1006 * 0.98110002279281616211f);
  let x_1009 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_1009);
  let x_1013 : f32 = u_xlat0.y;
  u_xlat15 = max(x_1013, 0.00009999999747378752f);
  let x_1016 : f32 = u_xlat1.y;
  let x_1017 : f32 = u_xlat15;
  u_xlat15 = (x_1016 / x_1017);
  let x_1020 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_1020) + 1.0f);
  let x_1024 : f32 = u_xlat0.y;
  let x_1026 : f32 = u_xlat16;
  u_xlat0.z = (-(x_1024) + x_1026);
  let x_1029 : f32 = u_xlat15;
  let x_1031 : vec4<f32> = u_xlat0;
  let x_1033 : vec2<f32> = (vec2<f32>(x_1029, x_1029) * vec2<f32>(x_1031.x, x_1031.z));
  let x_1034 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1033.x, x_1034.y, x_1033.y, x_1034.w);
  let x_1040 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1048 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1056 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1060 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_1060.x, x_1060.y, x_1060.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1063 : f32 = u_xlat15;
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1068 : vec3<f32> = (-(vec3<f32>(x_1063, x_1063, x_1063)) + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat0;
  let x_1076 : f32 = u_xlat15;
  let x_1078 : vec3<f32> = ((vec3<f32>(x_1071.x, x_1071.y, x_1071.z) * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1076, x_1076, x_1076));
  let x_1079 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1085 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1089 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1097 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1105 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1113 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1121 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1126 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1126, 0.0f, 1.0f);
  let x_1133 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1138 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1138, 0.0f, 1.0f);
  let x_1145 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1150 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1150, 0.0f, 1.0f);
  let x_1158 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1158);
  let x_1162 : bool = u_xlatb0.x;
  if (x_1162) {
    let x_1165 : vec4<f32> = u_xlat1;
    let x_1169 : vec3<f32> = (vec3<f32>(x_1165.x, x_1165.y, x_1165.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1170 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
    let x_1172 : vec4<f32> = u_xlat1;
    let x_1174 : vec3<f32> = log2(vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
    let x_1175 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
    let x_1177 : vec4<f32> = u_xlat2;
    let x_1181 : vec3<f32> = (vec3<f32>(x_1177.x, x_1177.y, x_1177.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1182 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
    let x_1184 : vec4<f32> = u_xlat2;
    let x_1186 : vec3<f32> = exp2(vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
    let x_1187 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
    let x_1189 : vec4<f32> = u_xlat2;
    let x_1196 : vec3<f32> = ((vec3<f32>(x_1189.x, x_1189.y, x_1189.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1197 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
    let x_1202 : vec4<f32> = u_xlat1;
    let x_1204 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1202.x));
    u_xlatb3 = vec3<bool>(x_1204.x, x_1204.y, x_1204.z);
    let x_1208 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1208;
    let x_1210 : bool = u_xlatb3.x;
    if (x_1210) {
      let x_1215 : f32 = u_xlat0.x;
      x_1211 = x_1215;
    } else {
      let x_1218 : f32 = u_xlat2.x;
      x_1211 = x_1218;
    }
    let x_1219 : f32 = x_1211;
    hlslcc_movcTemp.x = x_1219;
    let x_1222 : bool = u_xlatb3.y;
    if (x_1222) {
      let x_1227 : f32 = u_xlat0.y;
      x_1223 = x_1227;
    } else {
      let x_1230 : f32 = u_xlat2.y;
      x_1223 = x_1230;
    }
    let x_1231 : f32 = x_1223;
    hlslcc_movcTemp.y = x_1231;
    let x_1234 : bool = u_xlatb3.z;
    if (x_1234) {
      let x_1239 : f32 = u_xlat0.z;
      x_1235 = x_1239;
    } else {
      let x_1242 : f32 = u_xlat2.z;
      x_1235 = x_1242;
    }
    let x_1243 : f32 = x_1235;
    hlslcc_movcTemp.z = x_1243;
    let x_1245 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1245;
    let x_1246 : vec4<f32> = u_xlat0;
    let x_1249 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1251 : vec3<f32> = (vec3<f32>(x_1246.z, x_1246.x, x_1246.y) * vec3<f32>(x_1249.z, x_1249.z, x_1249.z));
    let x_1252 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
    let x_1255 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1255);
    let x_1258 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1260 : vec2<f32> = (vec2<f32>(x_1258.x, x_1258.y) * vec2<f32>(0.5f, 0.5f));
    let x_1261 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1260.x, x_1261.y, x_1261.z, x_1260.y);
    let x_1263 : vec4<f32> = u_xlat2;
    let x_1266 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1269 : vec4<f32> = u_xlat2;
    let x_1271 : vec2<f32> = ((vec2<f32>(x_1263.y, x_1263.z) * vec2<f32>(x_1266.x, x_1266.y)) + vec2<f32>(x_1269.x, x_1269.w));
    let x_1272 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1272.x, x_1271.x, x_1271.y, x_1272.w);
    let x_1274 : f32 = u_xlat15;
    let x_1276 : f32 = x_38.x_UserLut_Params.y;
    let x_1279 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1274 * x_1276) + x_1279);
    let x_1286 : vec4<f32> = u_xlat2;
    let x_1288 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1286.x, x_1286.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1288.x, x_1288.y, x_1288.z);
    let x_1292 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_1292;
    u_xlat4.y = 0.0f;
    let x_1295 : vec4<f32> = u_xlat2;
    let x_1297 : vec2<f32> = u_xlat4;
    let x_1298 : vec2<f32> = (vec2<f32>(x_1295.x, x_1295.z) + x_1297);
    let x_1299 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
    let x_1304 : vec4<f32> = u_xlat2;
    let x_1306 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1304.x, x_1304.y), 0.0f);
    let x_1307 : vec3<f32> = vec3<f32>(x_1306.x, x_1306.y, x_1306.z);
    let x_1308 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
    let x_1311 : f32 = u_xlat0.z;
    let x_1313 : f32 = x_38.x_UserLut_Params.z;
    let x_1315 : f32 = u_xlat15;
    u_xlat15 = ((x_1311 * x_1313) + -(x_1315));
    let x_1318 : vec3<f32> = u_xlat3;
    let x_1320 : vec4<f32> = u_xlat2;
    let x_1322 : vec3<f32> = (-(x_1318) + vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
    let x_1323 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
    let x_1325 : f32 = u_xlat15;
    let x_1327 : vec4<f32> = u_xlat2;
    let x_1330 : vec3<f32> = u_xlat3;
    let x_1331 : vec3<f32> = ((vec3<f32>(x_1325, x_1325, x_1325) * vec3<f32>(x_1327.x, x_1327.y, x_1327.z)) + x_1330);
    let x_1332 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
    let x_1334 : vec4<f32> = u_xlat0;
    let x_1337 : vec4<f32> = u_xlat2;
    let x_1339 : vec3<f32> = (-(vec3<f32>(x_1334.x, x_1334.y, x_1334.z)) + vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
    let x_1340 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
    let x_1343 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1345 : vec4<f32> = u_xlat2;
    let x_1348 : vec4<f32> = u_xlat0;
    let x_1350 : vec3<f32> = ((vec3<f32>(x_1343.w, x_1343.w, x_1343.w) * vec3<f32>(x_1345.x, x_1345.y, x_1345.z)) + vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
    let x_1351 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
    let x_1353 : vec4<f32> = u_xlat0;
    let x_1357 : vec3<f32> = (vec3<f32>(x_1353.x, x_1353.y, x_1353.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1358 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
    let x_1360 : vec4<f32> = u_xlat0;
    u_xlat3 = (vec3<f32>(x_1360.x, x_1360.y, x_1360.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1365 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1365 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1369 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1369));
    let x_1372 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1372 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1376 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1376);
    let x_1380 : vec4<f32> = u_xlat0;
    let x_1382 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1380.x));
    u_xlatb0 = vec3<bool>(x_1382.x, x_1382.y, x_1382.z);
    let x_1385 : bool = u_xlatb0.x;
    if (x_1385) {
      let x_1390 : f32 = u_xlat2.x;
      x_1386 = x_1390;
    } else {
      let x_1393 : f32 = u_xlat3.x;
      x_1386 = x_1393;
    }
    let x_1394 : f32 = x_1386;
    u_xlat1.x = x_1394;
    let x_1397 : bool = u_xlatb0.y;
    if (x_1397) {
      let x_1402 : f32 = u_xlat2.y;
      x_1398 = x_1402;
    } else {
      let x_1405 : f32 = u_xlat3.y;
      x_1398 = x_1405;
    }
    let x_1406 : f32 = x_1398;
    u_xlat1.y = x_1406;
    let x_1409 : bool = u_xlatb0.z;
    if (x_1409) {
      let x_1414 : f32 = u_xlat2.z;
      x_1410 = x_1414;
    } else {
      let x_1417 : f32 = u_xlat3.z;
      x_1410 = x_1417;
    }
    let x_1418 : f32 = x_1410;
    u_xlat1.z = x_1418;
  }
  let x_1420 : vec4<f32> = u_xlat1;
  let x_1423 : vec4<f32> = x_38.x_Lut_Params;
  let x_1425 : vec3<f32> = (vec3<f32>(x_1420.z, x_1420.x, x_1420.y) * vec3<f32>(x_1423.z, x_1423.z, x_1423.z));
  let x_1426 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
  let x_1429 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1429);
  let x_1433 : vec4<f32> = x_38.x_Lut_Params;
  let x_1435 : vec2<f32> = (vec2<f32>(x_1433.x, x_1433.y) * vec2<f32>(0.5f, 0.5f));
  let x_1436 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1435.x, x_1435.y, x_1436.z, x_1436.w);
  let x_1438 : vec4<f32> = u_xlat0;
  let x_1441 : vec4<f32> = x_38.x_Lut_Params;
  let x_1444 : vec4<f32> = u_xlat1;
  let x_1446 : vec2<f32> = ((vec2<f32>(x_1438.y, x_1438.z) * vec2<f32>(x_1441.x, x_1441.y)) + vec2<f32>(x_1444.x, x_1444.y));
  let x_1447 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1447.x, x_1446.x, x_1446.y, x_1447.w);
  let x_1450 : f32 = u_xlat0.x;
  let x_1452 : f32 = x_38.x_Lut_Params.y;
  let x_1455 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1450 * x_1452) + x_1455);
  let x_1462 : vec4<f32> = u_xlat2;
  let x_1464 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1462.x, x_1462.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1464.x, x_1464.y, x_1464.z);
  let x_1467 : f32 = x_38.x_Lut_Params.y;
  u_xlat1.x = x_1467;
  u_xlat1.y = 0.0f;
  let x_1470 : vec4<f32> = u_xlat1;
  let x_1472 : vec4<f32> = u_xlat2;
  let x_1474 : vec2<f32> = (vec2<f32>(x_1470.x, x_1470.y) + vec2<f32>(x_1472.x, x_1472.z));
  let x_1475 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1474.x, x_1474.y, x_1475.z, x_1475.w);
  let x_1480 : vec4<f32> = u_xlat1;
  let x_1482 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1480.x, x_1480.y), 0.0f);
  let x_1483 : vec3<f32> = vec3<f32>(x_1482.x, x_1482.y, x_1482.z);
  let x_1484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1483.x, x_1483.y, x_1484.z, x_1483.z);
  let x_1487 : f32 = u_xlat1.z;
  let x_1489 : f32 = x_38.x_Lut_Params.z;
  let x_1492 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1487 * x_1489) + -(x_1492));
  let x_1496 : vec3<f32> = u_xlat5;
  let x_1498 : vec4<f32> = u_xlat1;
  let x_1500 : vec3<f32> = (-(x_1496) + vec3<f32>(x_1498.x, x_1498.y, x_1498.w));
  let x_1501 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
  let x_1503 : vec4<f32> = u_xlat0;
  let x_1505 : vec4<f32> = u_xlat1;
  let x_1508 : vec3<f32> = u_xlat5;
  let x_1509 : vec3<f32> = ((vec3<f32>(x_1503.x, x_1503.x, x_1503.x) * vec3<f32>(x_1505.x, x_1505.y, x_1505.z)) + x_1508);
  let x_1510 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1512 : vec2<f32> = vs_TEXCOORD0;
  let x_1515 : vec4<f32> = x_38.x_Dithering_Params;
  let x_1519 : vec4<f32> = x_38.x_Dithering_Params;
  let x_1521 : vec2<f32> = ((x_1512 * vec2<f32>(x_1515.x, x_1515.y)) + vec2<f32>(x_1519.z, x_1519.w));
  let x_1522 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1521.x, x_1521.y, x_1522.z, x_1522.w);
  let x_1529 : vec4<f32> = u_xlat1;
  let x_1532 : f32 = x_38.x_GlobalMipBias.x;
  let x_1533 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1529.x, x_1529.y), x_1532);
  u_xlat15 = x_1533.w;
  let x_1535 : f32 = u_xlat15;
  u_xlat15 = ((x_1535 * 2.0f) + -1.0f);
  let x_1538 : f32 = u_xlat15;
  u_xlatb1 = (x_1538 >= 0.0f);
  let x_1540 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1540);
  let x_1543 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1543)) + 1.0f);
  let x_1547 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1547);
  let x_1549 : f32 = u_xlat15;
  u_xlat15 = (-(x_1549) + 1.0f);
  let x_1552 : f32 = u_xlat15;
  let x_1554 : f32 = u_xlat1.x;
  u_xlat15 = (x_1552 * x_1554);
  let x_1556 : vec4<f32> = u_xlat0;
  let x_1558 : vec3<f32> = (vec3<f32>(x_1556.x, x_1556.y, x_1556.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1559 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1559.w);
  let x_1561 : vec4<f32> = u_xlat0;
  let x_1564 : vec3<f32> = log2(abs(vec3<f32>(x_1561.x, x_1561.y, x_1561.z)));
  let x_1565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
  let x_1567 : vec4<f32> = u_xlat2;
  let x_1569 : vec3<f32> = (vec3<f32>(x_1567.x, x_1567.y, x_1567.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);
  let x_1572 : vec4<f32> = u_xlat2;
  let x_1574 : vec3<f32> = exp2(vec3<f32>(x_1572.x, x_1572.y, x_1572.z));
  let x_1575 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1575.w);
  let x_1577 : vec4<f32> = u_xlat2;
  let x_1580 : vec3<f32> = ((vec3<f32>(x_1577.x, x_1577.y, x_1577.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
  let x_1583 : vec4<f32> = u_xlat0;
  let x_1585 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1583.x));
  u_xlatb0 = vec3<bool>(x_1585.x, x_1585.y, x_1585.z);
  let x_1588 : bool = u_xlatb0.x;
  if (x_1588) {
    let x_1593 : f32 = u_xlat1.x;
    x_1589 = x_1593;
  } else {
    let x_1596 : f32 = u_xlat2.x;
    x_1589 = x_1596;
  }
  let x_1597 : f32 = x_1589;
  u_xlat0.x = x_1597;
  let x_1600 : bool = u_xlatb0.y;
  if (x_1600) {
    let x_1605 : f32 = u_xlat1.y;
    x_1601 = x_1605;
  } else {
    let x_1608 : f32 = u_xlat2.y;
    x_1601 = x_1608;
  }
  let x_1609 : f32 = x_1601;
  u_xlat0.y = x_1609;
  let x_1612 : bool = u_xlatb0.z;
  if (x_1612) {
    let x_1617 : f32 = u_xlat1.z;
    x_1613 = x_1617;
  } else {
    let x_1620 : f32 = u_xlat2.z;
    x_1613 = x_1620;
  }
  let x_1621 : f32 = x_1613;
  u_xlat0.z = x_1621;
  let x_1623 : f32 = u_xlat15;
  let x_1628 : vec4<f32> = u_xlat0;
  let x_1630 : vec3<f32> = ((vec3<f32>(x_1623, x_1623, x_1623) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
  let x_1631 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
  let x_1633 : vec4<f32> = u_xlat0;
  let x_1635 : vec3<f32> = (vec3<f32>(x_1633.x, x_1633.y, x_1633.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1636 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1635.x, x_1635.y, x_1635.z, x_1636.w);
  let x_1638 : vec4<f32> = u_xlat0;
  let x_1640 : vec3<f32> = (vec3<f32>(x_1638.x, x_1638.y, x_1638.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1641 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
  let x_1643 : vec4<f32> = u_xlat2;
  let x_1645 : vec3<f32> = (vec3<f32>(x_1643.x, x_1643.y, x_1643.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1646 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
  let x_1648 : vec4<f32> = u_xlat2;
  let x_1651 : vec3<f32> = log2(abs(vec3<f32>(x_1648.x, x_1648.y, x_1648.z)));
  let x_1652 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1652.w);
  let x_1654 : vec4<f32> = u_xlat2;
  let x_1656 : vec3<f32> = (vec3<f32>(x_1654.x, x_1654.y, x_1654.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1657 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
  let x_1659 : vec4<f32> = u_xlat2;
  let x_1661 : vec3<f32> = exp2(vec3<f32>(x_1659.x, x_1659.y, x_1659.z));
  let x_1662 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
  let x_1664 : vec4<f32> = u_xlat0;
  let x_1666 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1664.x));
  u_xlatb0 = vec3<bool>(x_1666.x, x_1666.y, x_1666.z);
  let x_1669 : bool = u_xlatb0.x;
  if (x_1669) {
    let x_1674 : f32 = u_xlat1.x;
    x_1670 = x_1674;
  } else {
    let x_1677 : f32 = u_xlat2.x;
    x_1670 = x_1677;
  }
  let x_1678 : f32 = x_1670;
  u_xlat0.x = x_1678;
  let x_1681 : bool = u_xlatb0.y;
  if (x_1681) {
    let x_1686 : f32 = u_xlat1.y;
    x_1682 = x_1686;
  } else {
    let x_1689 : f32 = u_xlat2.y;
    x_1682 = x_1689;
  }
  let x_1690 : f32 = x_1682;
  u_xlat0.y = x_1690;
  let x_1693 : bool = u_xlatb0.z;
  if (x_1693) {
    let x_1698 : f32 = u_xlat1.z;
    x_1694 = x_1698;
  } else {
    let x_1701 : f32 = u_xlat2.z;
    x_1694 = x_1701;
  }
  let x_1702 : f32 = x_1694;
  u_xlat0.z = x_1702;
  let x_1706 : vec4<f32> = u_xlat0;
  let x_1708 : vec3<f32> = max(vec3<f32>(x_1706.x, x_1706.y, x_1706.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1709 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
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


