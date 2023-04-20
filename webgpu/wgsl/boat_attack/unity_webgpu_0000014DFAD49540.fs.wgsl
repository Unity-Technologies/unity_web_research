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
  /* @offset(160) */
  x_Grain_Params : vec2<f32>,
  /* @offset(176) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(192) */
  x_Bloom_Texture_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat13 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlatb12 : vec2<bool>;

var<private> u_xlat19 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb19 : bool;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_615 : f32;
  var x_624 : f32;
  var x_763 : f32;
  var x_814 : f32;
  var x_841 : f32;
  var x_865 : f32;
  var x_876 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1266 : f32;
  var x_1278 : f32;
  var x_1290 : f32;
  var x_1453 : f32;
  var x_1465 : f32;
  var x_1477 : f32;
  var x_1672 : f32;
  var x_1685 : f32;
  var x_1697 : f32;
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
  let x_80 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = x_14.x_Bloom_Texture_TexelSize;
  let x_87 : vec2<f32> = ((vec2<f32>(x_80.x, x_80.y) * vec2<f32>(x_84.z, x_84.w)) + vec2<f32>(0.5f, 0.5f));
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat13 = floor(vec2<f32>(x_92.x, x_92.y));
  let x_95 : vec4<f32> = u_xlat1;
  let x_97 : vec2<f32> = fract(vec2<f32>(x_95.x, x_95.y));
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_97.x, x_97.y, x_98.z, x_98.w);
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat2 = ((-(vec4<f32>(x_101.x, x_101.y, x_101.x, x_101.y)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_109 : vec4<f32> = u_xlat1;
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_109.x, x_109.y, x_109.x, x_109.y) * x_111) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_117 : vec4<f32> = u_xlat1;
  let x_122 : vec2<f32> = ((vec2<f32>(x_117.x, x_117.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_123.w);
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_128.x, x_128.y));
  let x_131 : vec2<f32> = u_xlat15;
  let x_132 : vec4<f32> = u_xlat3;
  let x_137 : vec2<f32> = ((x_131 * vec2<f32>(x_132.x, x_132.y)) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_138 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_140 : vec4<f32> = u_xlat1;
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_140.x, x_140.y, x_140.x, x_140.y) * x_142) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_146 : vec4<f32> = u_xlat3;
  let x_151 : vec2<f32> = (-(vec2<f32>(x_146.x, x_146.y)) + vec2<f32>(1.0f, 1.0f));
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_151.x, x_151.y, x_152.z, x_152.w);
  let x_154 : vec4<f32> = u_xlat2;
  let x_157 : vec4<f32> = u_xlat1;
  let x_159 : vec2<f32> = (-(vec2<f32>(x_154.x, x_154.y)) + vec2<f32>(x_157.x, x_157.y));
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_160.w);
  let x_162 : vec4<f32> = u_xlat2;
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec2<f32> = (-(vec2<f32>(x_162.z, x_162.w)) + vec2<f32>(x_165.x, x_165.y));
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
  let x_171 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec2<f32>(x_171.x, x_171.y) + vec2<f32>(x_173.z, x_173.w));
  let x_176 : vec4<f32> = u_xlat1;
  let x_178 : vec4<f32> = u_xlat2;
  let x_180 : vec2<f32> = (vec2<f32>(x_176.x, x_176.y) + vec2<f32>(x_178.x, x_178.y));
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_180.x, x_180.y, x_181.z, x_181.w);
  let x_183 : vec2<f32> = u_xlat14;
  u_xlat15 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_183.x, x_183.y));
  let x_188 : vec4<f32> = u_xlat3;
  let x_190 : vec2<f32> = u_xlat15;
  let x_192 : vec2<f32> = ((vec2<f32>(x_188.x, x_188.y) * x_190) + vec2<f32>(-1.0f, -1.0f));
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_193.x, x_193.y, x_192.x, x_192.y);
  let x_196 : vec4<f32> = u_xlat2;
  let x_197 : vec2<f32> = vec2<f32>(x_196.x, x_196.y);
  let x_201 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_197.x, x_197.y));
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_201.x, x_201.y, x_202.z, x_202.w);
  let x_204 : vec4<f32> = u_xlat1;
  let x_206 : vec4<f32> = u_xlat4;
  let x_209 : vec2<f32> = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_206.x, x_206.y)) + vec2<f32>(1.0f, 1.0f));
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_209.x, x_209.y, x_210.z, x_210.w);
  let x_212 : vec2<f32> = u_xlat13;
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_212.x, x_212.y, x_212.x, x_212.y) + vec4<f32>(x_214.z, x_214.w, x_214.x, x_214.w));
  let x_217 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_217 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_220 : vec4<f32> = u_xlat4;
  let x_222 : vec4<f32> = x_14.x_Bloom_Texture_TexelSize;
  u_xlat4 = (x_220 * vec4<f32>(x_222.x, x_222.y, x_222.x, x_222.y));
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat4 = min(x_225, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_233 : vec4<f32> = u_xlat4;
  let x_236 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_233.x, x_233.y), 0.0f);
  u_xlat5 = x_236;
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_240.z, x_240.w), 0.0f);
  u_xlat4 = x_242;
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_243.x, x_243.x, x_243.x, x_243.x) * x_245);
  let x_247 : vec2<f32> = u_xlat14;
  let x_249 : vec4<f32> = u_xlat5;
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_247.x, x_247.x, x_247.x, x_247.x) * x_249) + x_251);
  let x_253 : vec2<f32> = u_xlat13;
  let x_255 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_253.x, x_253.y, x_253.x, x_253.y) + vec4<f32>(x_255.z, x_255.y, x_255.x, x_255.y));
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_258 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : vec4<f32> = x_14.x_Bloom_Texture_TexelSize;
  u_xlat1 = (x_260 * vec4<f32>(x_262.x, x_262.y, x_262.x, x_262.y));
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = min(x_265, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_270 : vec4<f32> = u_xlat1;
  let x_272 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_270.x, x_270.y), 0.0f);
  u_xlat3 = x_272;
  let x_276 : vec4<f32> = u_xlat1;
  let x_278 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_276.z, x_276.w), 0.0f);
  u_xlat1 = x_278;
  let x_279 : vec4<f32> = u_xlat1;
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_279 * vec4<f32>(x_280.x, x_280.x, x_280.x, x_280.x));
  let x_283 : vec2<f32> = u_xlat14;
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_283.x, x_283.x, x_283.x, x_283.x) * x_285) + x_287);
  let x_289 : vec4<f32> = u_xlat1;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_289 * vec4<f32>(x_290.y, x_290.y, x_290.y, x_290.y));
  let x_293 : vec2<f32> = u_xlat14;
  let x_295 : vec4<f32> = u_xlat4;
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_293.y, x_293.y, x_293.y, x_293.y) * x_295) + x_297);
  let x_304 : f32 = x_14.x_Bloom_RGBM;
  u_xlatb18 = (0.0f < x_304);
  let x_306 : bool = u_xlatb18;
  if (x_306) {
    let x_309 : vec4<f32> = u_xlat1;
    let x_311 : vec4<f32> = u_xlat1;
    let x_313 : vec3<f32> = (vec3<f32>(x_309.w, x_309.w, x_309.w) * vec3<f32>(x_311.x, x_311.y, x_311.z));
    let x_314 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat2;
    let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_321 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  }
  let x_323 : vec4<f32> = u_xlat1;
  let x_327 : vec4<f32> = x_14.x_Bloom_Params;
  let x_329 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_327.x, x_327.x, x_327.x));
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat1;
  let x_335 : vec4<f32> = x_14.x_Bloom_Params;
  let x_338 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_335.y, x_335.z, x_335.w)) + x_338);
  let x_343 : f32 = x_14.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_343);
  let x_345 : bool = u_xlatb18;
  if (x_345) {
    let x_348 : vec2<f32> = vs_TEXCOORD0;
    let x_350 : vec4<f32> = x_14.x_Vignette_Params2;
    let x_353 : vec2<f32> = (x_348 + -(vec2<f32>(x_350.x, x_350.y)));
    let x_354 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_353.x, x_353.y, x_354.z, x_354.w);
    let x_356 : vec4<f32> = u_xlat1;
    let x_360 : vec4<f32> = x_14.x_Vignette_Params2;
    let x_362 : vec2<f32> = (abs(vec2<f32>(x_356.x, x_356.y)) * vec2<f32>(x_360.z, x_360.z));
    let x_363 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_363.x, x_362.x, x_362.y, x_363.w);
    let x_368 : f32 = u_xlat1.y;
    let x_372 : f32 = x_14.x_Vignette_Params1.w;
    u_xlat1.x = (x_368 * x_372);
    let x_376 : vec4<f32> = u_xlat1;
    let x_378 : vec4<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_376.x, x_376.z), vec2<f32>(x_378.x, x_378.z));
    let x_381 : f32 = u_xlat18;
    u_xlat18 = (-(x_381) + 1.0f);
    let x_384 : f32 = u_xlat18;
    u_xlat18 = max(x_384, 0.0f);
    let x_386 : f32 = u_xlat18;
    u_xlat18 = log2(x_386);
    let x_388 : f32 = u_xlat18;
    let x_390 : f32 = x_14.x_Vignette_Params2.w;
    u_xlat18 = (x_388 * x_390);
    let x_392 : f32 = u_xlat18;
    u_xlat18 = exp2(x_392);
    let x_395 : vec4<f32> = x_14.x_Vignette_Params1;
    let x_399 : vec3<f32> = (-(vec3<f32>(x_395.x, x_395.y, x_395.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_400 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
    let x_402 : f32 = u_xlat18;
    let x_404 : vec4<f32> = u_xlat1;
    let x_408 : vec4<f32> = x_14.x_Vignette_Params1;
    let x_410 : vec3<f32> = ((vec3<f32>(x_402, x_402, x_402) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
    let x_411 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
    let x_413 : vec3<f32> = u_xlat0;
    let x_414 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_413 * vec3<f32>(x_414.x, x_414.y, x_414.z));
  }
  let x_417 : vec3<f32> = u_xlat0;
  let x_420 : vec4<f32> = x_14.x_Lut_Params;
  u_xlat0 = (x_417 * vec3<f32>(x_420.w, x_420.w, x_420.w));
  let x_428 : vec3<f32> = u_xlat0;
  u_xlat7.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), x_428);
  let x_435 : vec3<f32> = u_xlat0;
  u_xlat7.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), x_435);
  let x_442 : vec3<f32> = u_xlat0;
  u_xlat7.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), x_442);
  let x_446 : f32 = u_xlat7.y;
  let x_448 : f32 = u_xlat7.x;
  u_xlat0.x = min(x_446, x_448);
  let x_452 : f32 = u_xlat7.z;
  let x_454 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_452, x_454);
  let x_459 : f32 = u_xlat7.y;
  let x_461 : f32 = u_xlat7.x;
  u_xlat6.x = max(x_459, x_461);
  let x_465 : f32 = u_xlat7.z;
  let x_467 : f32 = u_xlat6.x;
  u_xlat0.y = max(x_465, x_467);
  let x_470 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_470.x, x_470.y, x_470.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_477 : f32 = u_xlat0.x;
  let x_480 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_477) + x_480);
  let x_484 : f32 = u_xlat0.x;
  let x_486 : f32 = u_xlat0.z;
  u_xlat0.x = (x_484 / x_486);
  let x_489 : vec3<f32> = u_xlat7;
  let x_492 : vec3<f32> = u_xlat7;
  u_xlat6 = (-(vec3<f32>(x_489.y, x_489.x, x_489.z)) + vec3<f32>(x_492.z, x_492.y, x_492.x));
  let x_495 : vec3<f32> = u_xlat6;
  let x_497 : vec3<f32> = u_xlat7;
  let x_499 : vec2<f32> = (vec2<f32>(x_495.x, x_495.y) * vec2<f32>(x_497.z, x_497.y));
  let x_500 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_499.x, x_499.y, x_500.z);
  let x_503 : f32 = u_xlat6.y;
  let x_505 : f32 = u_xlat6.x;
  u_xlat6.x = (x_503 + x_505);
  let x_509 : f32 = u_xlat7.x;
  let x_511 : f32 = u_xlat6.z;
  let x_514 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_509 * x_511) + x_514);
  let x_518 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_518, 0.0f);
  let x_522 : f32 = u_xlat6.x;
  u_xlat6.x = sqrt(x_522);
  let x_527 : f32 = u_xlat7.y;
  let x_529 : f32 = u_xlat7.z;
  u_xlat12.x = (x_527 + x_529);
  let x_533 : f32 = u_xlat7.x;
  let x_535 : f32 = u_xlat12.x;
  u_xlat12.x = (x_533 + x_535);
  let x_539 : f32 = u_xlat6.x;
  let x_543 : f32 = u_xlat12.x;
  u_xlat6.x = ((x_539 * 1.75f) + x_543);
  let x_547 : f32 = u_xlat0.x;
  u_xlat18 = (x_547 + -0.40000000596046447754f);
  let x_550 : f32 = u_xlat18;
  u_xlat1.x = (x_550 * 2.5f);
  let x_555 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_555)) + 1.0f);
  let x_561 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_561, 0.0f);
  let x_564 : f32 = u_xlat18;
  u_xlatb18 = (x_564 >= 0.0f);
  let x_566 : bool = u_xlatb18;
  u_xlat18 = select(-1.0f, 1.0f, x_566);
  let x_569 : f32 = u_xlat1.x;
  let x_572 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_569) * x_572) + 1.0f);
  let x_576 : f32 = u_xlat18;
  let x_578 : f32 = u_xlat1.x;
  u_xlat6.z = ((x_576 * x_578) + 1.0f);
  let x_582 : vec3<f32> = u_xlat6;
  u_xlat12 = (vec2<f32>(x_582.x, x_582.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_591 : f32 = u_xlat6.x;
  u_xlatb1 = (0.15999999642372131348f >= x_591);
  let x_595 : f32 = u_xlat6.x;
  u_xlatb6 = (x_595 >= 0.47999998927116394043f);
  let x_600 : f32 = u_xlat12.x;
  u_xlat12.x = (0.07999999821186065674f / x_600);
  let x_604 : f32 = u_xlat12.x;
  u_xlat12.x = (x_604 + -0.5f);
  let x_608 : f32 = u_xlat12.x;
  let x_610 : f32 = u_xlat12.y;
  u_xlat12.x = (x_608 * x_610);
  let x_613 : bool = u_xlatb6;
  if (x_613) {
    x_615 = 0.0f;
  } else {
    let x_620 : f32 = u_xlat12.x;
    x_615 = x_620;
  }
  let x_621 : f32 = x_615;
  u_xlat6.x = x_621;
  let x_623 : bool = u_xlatb1;
  if (x_623) {
    let x_628 : f32 = u_xlat12.y;
    x_624 = x_628;
  } else {
    let x_631 : f32 = u_xlat6.x;
    x_624 = x_631;
  }
  let x_632 : f32 = x_624;
  u_xlat6.x = x_632;
  let x_635 : f32 = u_xlat6.x;
  u_xlat6.x = (x_635 + 1.0f);
  let x_638 : vec3<f32> = u_xlat6;
  let x_640 : vec3<f32> = u_xlat7;
  let x_641 : vec3<f32> = (vec3<f32>(x_638.x, x_638.x, x_638.x) * x_640);
  let x_642 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_642.x, x_641.x, x_641.y, x_641.z);
  let x_647 : vec4<f32> = u_xlat2;
  let x_649 : vec4<f32> = u_xlat2;
  let x_652 : vec4<bool> = (vec4<f32>(x_647.z, x_647.w, x_647.z, x_647.w) == vec4<f32>(x_649.y, x_649.z, x_649.y, x_649.z));
  u_xlatb12 = vec2<bool>(x_652.x, x_652.y);
  let x_655 : bool = u_xlatb12.y;
  let x_657 : bool = u_xlatb12.x;
  u_xlatb12.x = (x_655 & x_657);
  let x_661 : f32 = u_xlat7.y;
  let x_663 : f32 = u_xlat6.x;
  let x_666 : f32 = u_xlat2.w;
  u_xlat18 = ((x_661 * x_663) + -(x_666));
  let x_669 : f32 = u_xlat18;
  u_xlat18 = (x_669 * 1.73205077648162841797f);
  let x_673 : f32 = u_xlat2.y;
  let x_677 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_673 * 2.0f) + -(x_677));
  let x_682 : f32 = u_xlat7.z;
  let x_685 : f32 = u_xlat6.x;
  let x_688 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_682) * x_685) + x_688);
  let x_691 : f32 = u_xlat18;
  let x_694 : f32 = u_xlat1.x;
  u_xlat13.x = min(abs(x_691), abs(x_694));
  let x_699 : f32 = u_xlat18;
  let x_702 : f32 = u_xlat1.x;
  u_xlat19 = max(abs(x_699), abs(x_702));
  let x_705 : f32 = u_xlat19;
  u_xlat19 = (1.0f / x_705);
  let x_707 : f32 = u_xlat19;
  let x_709 : f32 = u_xlat13.x;
  u_xlat13.x = (x_707 * x_709);
  let x_713 : f32 = u_xlat13.x;
  let x_715 : f32 = u_xlat13.x;
  u_xlat19 = (x_713 * x_715);
  let x_717 : f32 = u_xlat19;
  u_xlat3.x = ((x_717 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_723 : f32 = u_xlat19;
  let x_725 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_723 * x_725) + 0.18014100193977355957f);
  let x_730 : f32 = u_xlat19;
  let x_732 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_730 * x_732) + -0.33029949665069580078f);
  let x_737 : f32 = u_xlat19;
  let x_739 : f32 = u_xlat3.x;
  u_xlat19 = ((x_737 * x_739) + 0.99986600875854492188f);
  let x_743 : f32 = u_xlat19;
  let x_745 : f32 = u_xlat13.x;
  u_xlat3.x = (x_743 * x_745);
  let x_750 : f32 = u_xlat1.x;
  let x_752 : f32 = u_xlat18;
  u_xlatb9 = (abs(x_750) < abs(x_752));
  let x_756 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_756 * -2.0f) + 1.57079637050628662109f);
  let x_762 : bool = u_xlatb9;
  if (x_762) {
    let x_767 : f32 = u_xlat3.x;
    x_763 = x_767;
  } else {
    x_763 = 0.0f;
  }
  let x_769 : f32 = x_763;
  u_xlat3.x = x_769;
  let x_772 : f32 = u_xlat13.x;
  let x_773 : f32 = u_xlat19;
  let x_776 : f32 = u_xlat3.x;
  u_xlat13.x = ((x_772 * x_773) + x_776);
  let x_781 : f32 = u_xlat1.x;
  let x_783 : f32 = u_xlat1.x;
  u_xlatb19 = (x_781 < -(x_783));
  let x_786 : bool = u_xlatb19;
  u_xlat19 = select(0.0f, -3.14159274101257324219f, x_786);
  let x_789 : f32 = u_xlat19;
  let x_791 : f32 = u_xlat13.x;
  u_xlat13.x = (x_789 + x_791);
  let x_794 : f32 = u_xlat18;
  let x_796 : f32 = u_xlat1.x;
  u_xlat19 = min(x_794, x_796);
  let x_798 : f32 = u_xlat18;
  let x_800 : f32 = u_xlat1.x;
  u_xlat18 = max(x_798, x_800);
  let x_802 : f32 = u_xlat19;
  let x_803 : f32 = u_xlat19;
  u_xlatb1 = (x_802 < -(x_803));
  let x_806 : f32 = u_xlat18;
  let x_807 : f32 = u_xlat18;
  u_xlatb18 = (x_806 >= -(x_807));
  let x_810 : bool = u_xlatb18;
  let x_811 : bool = u_xlatb1;
  u_xlatb18 = (x_810 & x_811);
  let x_813 : bool = u_xlatb18;
  if (x_813) {
    let x_818 : f32 = u_xlat13.x;
    x_814 = -(x_818);
  } else {
    let x_822 : f32 = u_xlat13.x;
    x_814 = x_822;
  }
  let x_823 : f32 = x_814;
  u_xlat18 = x_823;
  let x_824 : f32 = u_xlat18;
  u_xlat18 = (x_824 * 57.295780181884765625f);
  let x_828 : bool = u_xlatb12.x;
  let x_829 : f32 = u_xlat18;
  u_xlat12.x = select(x_829, 0.0f, x_828);
  let x_833 : f32 = u_xlat12.x;
  u_xlatb18 = (x_833 < 0.0f);
  let x_836 : f32 = u_xlat12.x;
  u_xlat1.x = (x_836 + 360.0f);
  let x_840 : bool = u_xlatb18;
  if (x_840) {
    let x_845 : f32 = u_xlat1.x;
    x_841 = x_845;
  } else {
    let x_848 : f32 = u_xlat12.x;
    x_841 = x_848;
  }
  let x_849 : f32 = x_841;
  u_xlat12.x = x_849;
  let x_852 : f32 = u_xlat12.x;
  u_xlatb18 = (x_852 < -180.0f);
  let x_857 : f32 = u_xlat12.x;
  u_xlatb1 = (180.0f < x_857);
  let x_859 : vec2<f32> = u_xlat12;
  u_xlat13 = (vec2<f32>(x_859.x, x_859.x) + vec2<f32>(360.0f, -360.0f));
  let x_864 : bool = u_xlatb1;
  if (x_864) {
    let x_869 : f32 = u_xlat13.y;
    x_865 = x_869;
  } else {
    let x_872 : f32 = u_xlat12.x;
    x_865 = x_872;
  }
  let x_873 : f32 = x_865;
  u_xlat12.x = x_873;
  let x_875 : bool = u_xlatb18;
  if (x_875) {
    let x_880 : f32 = u_xlat13.x;
    x_876 = x_880;
  } else {
    let x_883 : f32 = u_xlat12.x;
    x_876 = x_883;
  }
  let x_884 : f32 = x_876;
  u_xlat12.x = x_884;
  let x_887 : f32 = u_xlat12.x;
  u_xlat12.x = (x_887 * 0.01481481455266475677f);
  let x_892 : f32 = u_xlat12.x;
  u_xlat12.x = (-(abs(x_892)) + 1.0f);
  let x_898 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_898, 0.0f);
  let x_902 : f32 = u_xlat12.x;
  u_xlat18 = ((x_902 * -2.0f) + 3.0f);
  let x_907 : f32 = u_xlat12.x;
  let x_909 : f32 = u_xlat12.x;
  u_xlat12.x = (x_907 * x_909);
  let x_913 : f32 = u_xlat12.x;
  let x_914 : f32 = u_xlat18;
  u_xlat12.x = (x_913 * x_914);
  let x_918 : f32 = u_xlat12.x;
  let x_920 : f32 = u_xlat12.x;
  u_xlat12.x = (x_918 * x_920);
  let x_924 : f32 = u_xlat0.x;
  let x_926 : f32 = u_xlat12.x;
  u_xlat0.x = (x_924 * x_926);
  let x_930 : f32 = u_xlat7.x;
  let x_933 : f32 = u_xlat6.x;
  u_xlat6.x = ((-(x_930) * x_933) + 0.02999999932944774628f);
  let x_939 : f32 = u_xlat6.x;
  let x_941 : f32 = u_xlat0.x;
  u_xlat0.x = (x_939 * x_941);
  let x_945 : f32 = u_xlat0.x;
  let x_949 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_945 * 0.18000000715255737305f) + x_949);
  let x_956 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_956.x, x_956.z, x_956.w));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_964.x, x_964.z, x_964.w));
  let x_972 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_972.x, x_972.z, x_972.w));
  let x_976 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_976, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_979 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_979, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_985 : f32 = u_xlat18;
  let x_988 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_985, x_985, x_985)) + x_988);
  let x_990 : vec3<f32> = u_xlat0;
  let x_994 : f32 = u_xlat18;
  u_xlat0 = ((x_990 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_994, x_994, x_994));
  let x_997 : vec3<f32> = u_xlat0;
  let x_1000 : vec3<f32> = (x_997 + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_1001 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec3<f32> = u_xlat0;
  let x_1004 : vec4<f32> = u_xlat1;
  let x_1009 : vec3<f32> = ((x_1003 * vec3<f32>(x_1004.x, x_1004.y, x_1004.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_1010 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
  let x_1012 : vec3<f32> = u_xlat0;
  let x_1018 : vec3<f32> = ((x_1012 * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_1019 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec3<f32> = u_xlat0;
  let x_1022 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1021 * vec3<f32>(x_1022.x, x_1022.y, x_1022.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_1028 : vec4<f32> = u_xlat1;
  let x_1030 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) / x_1030);
  let x_1036 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_1036);
  let x_1043 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_1043);
  let x_1050 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_1050);
  let x_1053 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1053.x, x_1053.y, x_1053.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1058 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1058, 0.00009999999747378752f);
  let x_1061 : vec4<f32> = u_xlat1;
  let x_1063 : vec3<f32> = u_xlat0;
  let x_1065 : vec2<f32> = (vec2<f32>(x_1061.x, x_1061.y) / vec2<f32>(x_1063.x, x_1063.x));
  let x_1066 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1065.x, x_1065.y, x_1066.z);
  let x_1069 : f32 = u_xlat1.y;
  u_xlat18 = max(x_1069, 0.0f);
  let x_1071 : f32 = u_xlat18;
  u_xlat18 = min(x_1071, 65504.0f);
  let x_1074 : f32 = u_xlat18;
  u_xlat18 = log2(x_1074);
  let x_1076 : f32 = u_xlat18;
  u_xlat18 = (x_1076 * 0.98110002279281616211f);
  let x_1079 : f32 = u_xlat18;
  u_xlat1.y = exp2(x_1079);
  let x_1083 : f32 = u_xlat0.y;
  u_xlat18 = max(x_1083, 0.00009999999747378752f);
  let x_1086 : f32 = u_xlat1.y;
  let x_1087 : f32 = u_xlat18;
  u_xlat18 = (x_1086 / x_1087);
  let x_1090 : f32 = u_xlat0.x;
  u_xlat19 = (-(x_1090) + 1.0f);
  let x_1094 : f32 = u_xlat0.y;
  let x_1096 : f32 = u_xlat19;
  u_xlat0.z = (-(x_1094) + x_1096);
  let x_1099 : f32 = u_xlat18;
  let x_1101 : vec3<f32> = u_xlat0;
  let x_1103 : vec2<f32> = (vec2<f32>(x_1099, x_1099) * vec2<f32>(x_1101.x, x_1101.z));
  let x_1104 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
  let x_1110 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1118 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1126 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
  let x_1130 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_1130, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1132 : f32 = u_xlat18;
  let x_1135 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_1132, x_1132, x_1132)) + x_1135);
  let x_1137 : vec3<f32> = u_xlat0;
  let x_1141 : f32 = u_xlat18;
  u_xlat0 = ((x_1137 * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1141, x_1141, x_1141));
  let x_1144 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_1144);
  let x_1147 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_1147);
  let x_1150 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_1150);
  let x_1157 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1165 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1173 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1181 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), x_1181);
  let x_1185 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1185, 0.0f, 1.0f);
  let x_1192 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), x_1192);
  let x_1196 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1196, 0.0f, 1.0f);
  let x_1203 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), x_1203);
  let x_1207 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1207, 0.0f, 1.0f);
  let x_1215 : f32 = x_14.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1215);
  let x_1219 : bool = u_xlatb0.x;
  if (x_1219) {
    let x_1222 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1222.x, x_1222.y, x_1222.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1227 : vec4<f32> = u_xlat1;
    let x_1229 : vec3<f32> = log2(vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
    let x_1230 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
    let x_1232 : vec4<f32> = u_xlat2;
    let x_1236 : vec3<f32> = (vec3<f32>(x_1232.x, x_1232.y, x_1232.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1237 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
    let x_1239 : vec4<f32> = u_xlat2;
    let x_1241 : vec3<f32> = exp2(vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
    let x_1242 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
    let x_1244 : vec4<f32> = u_xlat2;
    let x_1251 : vec3<f32> = ((vec3<f32>(x_1244.x, x_1244.y, x_1244.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1252 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
    let x_1257 : vec4<f32> = u_xlat1;
    let x_1259 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1257.x));
    u_xlatb3 = vec3<bool>(x_1259.x, x_1259.y, x_1259.z);
    let x_1263 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1263;
    let x_1265 : bool = u_xlatb3.x;
    if (x_1265) {
      let x_1270 : f32 = u_xlat0.x;
      x_1266 = x_1270;
    } else {
      let x_1273 : f32 = u_xlat2.x;
      x_1266 = x_1273;
    }
    let x_1274 : f32 = x_1266;
    hlslcc_movcTemp.x = x_1274;
    let x_1277 : bool = u_xlatb3.y;
    if (x_1277) {
      let x_1282 : f32 = u_xlat0.y;
      x_1278 = x_1282;
    } else {
      let x_1285 : f32 = u_xlat2.y;
      x_1278 = x_1285;
    }
    let x_1286 : f32 = x_1278;
    hlslcc_movcTemp.y = x_1286;
    let x_1289 : bool = u_xlatb3.z;
    if (x_1289) {
      let x_1294 : f32 = u_xlat0.z;
      x_1290 = x_1294;
    } else {
      let x_1297 : f32 = u_xlat2.z;
      x_1290 = x_1297;
    }
    let x_1298 : f32 = x_1290;
    hlslcc_movcTemp.z = x_1298;
    let x_1300 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1300;
    let x_1301 : vec3<f32> = u_xlat0;
    let x_1304 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1306 : vec3<f32> = (vec3<f32>(x_1301.z, x_1301.x, x_1301.y) * vec3<f32>(x_1304.z, x_1304.z, x_1304.z));
    let x_1307 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
    let x_1310 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_1310);
    let x_1313 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1315 : vec2<f32> = (vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(0.5f, 0.5f));
    let x_1316 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1315.x, x_1316.y, x_1316.z, x_1315.y);
    let x_1318 : vec4<f32> = u_xlat2;
    let x_1321 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1324 : vec4<f32> = u_xlat2;
    let x_1326 : vec2<f32> = ((vec2<f32>(x_1318.y, x_1318.z) * vec2<f32>(x_1321.x, x_1321.y)) + vec2<f32>(x_1324.x, x_1324.w));
    let x_1327 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1327.x, x_1326.x, x_1326.y, x_1327.w);
    let x_1329 : f32 = u_xlat18;
    let x_1331 : f32 = x_14.x_UserLut_Params.y;
    let x_1334 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1329 * x_1331) + x_1334);
    let x_1341 : vec4<f32> = u_xlat2;
    let x_1343 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1341.x, x_1341.z), 0.0f);
    let x_1344 : vec3<f32> = vec3<f32>(x_1343.x, x_1343.y, x_1343.z);
    let x_1345 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
    let x_1348 : f32 = x_14.x_UserLut_Params.y;
    u_xlat4.x = x_1348;
    u_xlat4.y = 0.0f;
    let x_1351 : vec4<f32> = u_xlat2;
    let x_1353 : vec4<f32> = u_xlat4;
    let x_1355 : vec2<f32> = (vec2<f32>(x_1351.x, x_1351.z) + vec2<f32>(x_1353.x, x_1353.y));
    let x_1356 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1355.x, x_1355.y, x_1356.z, x_1356.w);
    let x_1361 : vec4<f32> = u_xlat2;
    let x_1363 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1361.x, x_1361.y), 0.0f);
    let x_1364 : vec3<f32> = vec3<f32>(x_1363.x, x_1363.y, x_1363.z);
    let x_1365 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
    let x_1368 : f32 = u_xlat0.z;
    let x_1370 : f32 = x_14.x_UserLut_Params.z;
    let x_1372 : f32 = u_xlat18;
    u_xlat18 = ((x_1368 * x_1370) + -(x_1372));
    let x_1375 : vec4<f32> = u_xlat3;
    let x_1378 : vec4<f32> = u_xlat2;
    let x_1380 : vec3<f32> = (-(vec3<f32>(x_1375.x, x_1375.y, x_1375.z)) + vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
    let x_1381 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
    let x_1383 : f32 = u_xlat18;
    let x_1385 : vec4<f32> = u_xlat2;
    let x_1388 : vec4<f32> = u_xlat3;
    let x_1390 : vec3<f32> = ((vec3<f32>(x_1383, x_1383, x_1383) * vec3<f32>(x_1385.x, x_1385.y, x_1385.z)) + vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
    let x_1391 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
    let x_1393 : vec3<f32> = u_xlat0;
    let x_1395 : vec4<f32> = u_xlat2;
    let x_1397 : vec3<f32> = (-(x_1393) + vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
    let x_1398 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
    let x_1401 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1403 : vec4<f32> = u_xlat2;
    let x_1406 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1401.w, x_1401.w, x_1401.w) * vec3<f32>(x_1403.x, x_1403.y, x_1403.z)) + x_1406);
    let x_1408 : vec3<f32> = u_xlat0;
    let x_1411 : vec3<f32> = (x_1408 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1412 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1412.w);
    let x_1414 : vec3<f32> = u_xlat0;
    let x_1417 : vec3<f32> = (x_1414 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1418 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
    let x_1420 : vec4<f32> = u_xlat3;
    let x_1424 : vec3<f32> = (vec3<f32>(x_1420.x, x_1420.y, x_1420.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1425 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
    let x_1427 : vec4<f32> = u_xlat3;
    let x_1430 : vec3<f32> = log2(abs(vec3<f32>(x_1427.x, x_1427.y, x_1427.z)));
    let x_1431 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
    let x_1433 : vec4<f32> = u_xlat3;
    let x_1437 : vec3<f32> = (vec3<f32>(x_1433.x, x_1433.y, x_1433.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1438 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1438.w);
    let x_1440 : vec4<f32> = u_xlat3;
    let x_1442 : vec3<f32> = exp2(vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
    let x_1443 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
    let x_1447 : vec3<f32> = u_xlat0;
    let x_1449 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1447.x));
    u_xlatb0 = vec3<bool>(x_1449.x, x_1449.y, x_1449.z);
    let x_1452 : bool = u_xlatb0.x;
    if (x_1452) {
      let x_1457 : f32 = u_xlat2.x;
      x_1453 = x_1457;
    } else {
      let x_1460 : f32 = u_xlat3.x;
      x_1453 = x_1460;
    }
    let x_1461 : f32 = x_1453;
    u_xlat1.x = x_1461;
    let x_1464 : bool = u_xlatb0.y;
    if (x_1464) {
      let x_1469 : f32 = u_xlat2.y;
      x_1465 = x_1469;
    } else {
      let x_1472 : f32 = u_xlat3.y;
      x_1465 = x_1472;
    }
    let x_1473 : f32 = x_1465;
    u_xlat1.y = x_1473;
    let x_1476 : bool = u_xlatb0.z;
    if (x_1476) {
      let x_1481 : f32 = u_xlat2.z;
      x_1477 = x_1481;
    } else {
      let x_1484 : f32 = u_xlat3.z;
      x_1477 = x_1484;
    }
    let x_1485 : f32 = x_1477;
    u_xlat1.z = x_1485;
  }
  let x_1487 : vec4<f32> = u_xlat1;
  let x_1490 : vec4<f32> = x_14.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1487.z, x_1487.x, x_1487.y) * vec3<f32>(x_1490.z, x_1490.z, x_1490.z));
  let x_1494 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1494);
  let x_1498 : vec4<f32> = x_14.x_Lut_Params;
  let x_1500 : vec2<f32> = (vec2<f32>(x_1498.x, x_1498.y) * vec2<f32>(0.5f, 0.5f));
  let x_1501 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1500.x, x_1500.y, x_1501.z, x_1501.w);
  let x_1503 : vec3<f32> = u_xlat0;
  let x_1506 : vec4<f32> = x_14.x_Lut_Params;
  let x_1509 : vec4<f32> = u_xlat1;
  let x_1511 : vec2<f32> = ((vec2<f32>(x_1503.y, x_1503.z) * vec2<f32>(x_1506.x, x_1506.y)) + vec2<f32>(x_1509.x, x_1509.y));
  let x_1512 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1512.x, x_1511.x, x_1511.y, x_1512.w);
  let x_1515 : f32 = u_xlat0.x;
  let x_1517 : f32 = x_14.x_Lut_Params.y;
  let x_1520 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1515 * x_1517) + x_1520);
  let x_1527 : vec4<f32> = u_xlat2;
  let x_1529 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1527.x, x_1527.z), 0.0f);
  u_xlat6 = vec3<f32>(x_1529.x, x_1529.y, x_1529.z);
  let x_1532 : f32 = x_14.x_Lut_Params.y;
  u_xlat1.x = x_1532;
  u_xlat1.y = 0.0f;
  let x_1535 : vec4<f32> = u_xlat1;
  let x_1537 : vec4<f32> = u_xlat2;
  let x_1539 : vec2<f32> = (vec2<f32>(x_1535.x, x_1535.y) + vec2<f32>(x_1537.x, x_1537.z));
  let x_1540 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1539.x, x_1539.y, x_1540.z, x_1540.w);
  let x_1545 : vec4<f32> = u_xlat1;
  let x_1547 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1545.x, x_1545.y), 0.0f);
  let x_1548 : vec3<f32> = vec3<f32>(x_1547.x, x_1547.y, x_1547.z);
  let x_1549 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1548.x, x_1548.y, x_1549.z, x_1548.z);
  let x_1552 : f32 = u_xlat1.z;
  let x_1554 : f32 = x_14.x_Lut_Params.z;
  let x_1557 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1552 * x_1554) + -(x_1557));
  let x_1561 : vec3<f32> = u_xlat6;
  let x_1563 : vec4<f32> = u_xlat1;
  let x_1565 : vec3<f32> = (-(x_1561) + vec3<f32>(x_1563.x, x_1563.y, x_1563.w));
  let x_1566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
  let x_1568 : vec3<f32> = u_xlat0;
  let x_1570 : vec4<f32> = u_xlat1;
  let x_1573 : vec3<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1568.x, x_1568.x, x_1568.x) * vec3<f32>(x_1570.x, x_1570.y, x_1570.z)) + x_1573);
  let x_1575 : vec2<f32> = vs_TEXCOORD0;
  let x_1578 : vec4<f32> = x_14.x_Grain_TilingParams;
  let x_1582 : vec4<f32> = x_14.x_Grain_TilingParams;
  let x_1584 : vec2<f32> = ((x_1575 * vec2<f32>(x_1578.x, x_1578.y)) + vec2<f32>(x_1582.z, x_1582.w));
  let x_1585 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1584.x, x_1584.y, x_1585.z, x_1585.w);
  let x_1592 : vec4<f32> = u_xlat1;
  let x_1595 : f32 = x_14.x_GlobalMipBias.x;
  let x_1596 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1592.x, x_1592.y), x_1595);
  u_xlat18 = x_1596.w;
  let x_1598 : f32 = u_xlat18;
  u_xlat18 = (x_1598 + -0.5f);
  let x_1600 : f32 = u_xlat18;
  let x_1601 : f32 = u_xlat18;
  u_xlat18 = (x_1600 + x_1601);
  let x_1603 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_1603, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1611 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1611);
  let x_1616 : f32 = x_14.x_Grain_Params.y;
  let x_1618 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1616 * -(x_1618)) + 1.0f);
  let x_1623 : f32 = u_xlat18;
  let x_1625 : vec3<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1623, x_1623, x_1623) * x_1625);
  let x_1627 : vec3<f32> = u_xlat7;
  let x_1630 : vec2<f32> = x_14.x_Grain_Params;
  u_xlat7 = (x_1627 * vec3<f32>(x_1630.x, x_1630.x, x_1630.x));
  let x_1633 : vec3<f32> = u_xlat7;
  let x_1634 : vec4<f32> = u_xlat1;
  let x_1637 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1633 * vec3<f32>(x_1634.x, x_1634.x, x_1634.x)) + x_1637);
  let x_1639 : vec3<f32> = u_xlat0;
  let x_1640 : vec3<f32> = (x_1639 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1641 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
  let x_1643 : vec3<f32> = u_xlat0;
  let x_1645 : vec3<f32> = log2(abs(x_1643));
  let x_1646 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
  let x_1648 : vec4<f32> = u_xlat2;
  let x_1650 : vec3<f32> = (vec3<f32>(x_1648.x, x_1648.y, x_1648.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1651 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1651.w);
  let x_1653 : vec4<f32> = u_xlat2;
  let x_1655 : vec3<f32> = exp2(vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
  let x_1656 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
  let x_1658 : vec4<f32> = u_xlat2;
  let x_1661 : vec3<f32> = ((vec3<f32>(x_1658.x, x_1658.y, x_1658.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1662 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
  let x_1664 : vec3<f32> = u_xlat0;
  let x_1666 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1664.x));
  u_xlatb0 = vec3<bool>(x_1666.x, x_1666.y, x_1666.z);
  let x_1671 : bool = u_xlatb0.x;
  if (x_1671) {
    let x_1676 : f32 = u_xlat1.x;
    x_1672 = x_1676;
  } else {
    let x_1679 : f32 = u_xlat2.x;
    x_1672 = x_1679;
  }
  let x_1680 : f32 = x_1672;
  SV_Target0.x = x_1680;
  let x_1684 : bool = u_xlatb0.y;
  if (x_1684) {
    let x_1689 : f32 = u_xlat1.y;
    x_1685 = x_1689;
  } else {
    let x_1692 : f32 = u_xlat2.y;
    x_1685 = x_1692;
  }
  let x_1693 : f32 = x_1685;
  SV_Target0.y = x_1693;
  let x_1696 : bool = u_xlatb0.z;
  if (x_1696) {
    let x_1701 : f32 = u_xlat1.z;
    x_1697 = x_1701;
  } else {
    let x_1704 : f32 = u_xlat2.z;
    x_1697 = x_1704;
  }
  let x_1705 : f32 = x_1697;
  SV_Target0.z = x_1705;
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


