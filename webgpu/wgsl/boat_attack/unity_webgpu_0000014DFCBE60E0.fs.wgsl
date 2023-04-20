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
  x_Grain_Params : vec2<f32>,
  /* @offset(176) */
  x_Grain_TilingParams : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_346 : f32;
  var x_358 : f32;
  var x_370 : f32;
  var x_524 : f32;
  var x_536 : f32;
  var x_548 : f32;
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
  let x_153 : f32 = x_38.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_153);
  let x_158 : bool = u_xlatb1.x;
  if (x_158) {
    let x_162 : vec4<f32> = u_xlat0;
    let x_164 : vec4<f32> = u_xlat0;
    let x_166 : vec3<f32> = (vec3<f32>(x_162.w, x_162.w, x_162.w) * vec3<f32>(x_164.x, x_164.y, x_164.z));
    let x_167 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_169 : vec4<f32> = u_xlat1;
    let x_173 : vec3<f32> = (vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_174 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  }
  let x_176 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = x_38.x_Bloom_Params;
  let x_182 : vec3<f32> = (vec3<f32>(x_176.x, x_176.y, x_176.z) * vec3<f32>(x_180.x, x_180.x, x_180.x));
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = x_38.x_Bloom_Params;
  let x_191 : vec4<f32> = u_xlat2;
  let x_193 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_188.y, x_188.z, x_188.w)) + vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_199 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_199);
  let x_201 : bool = u_xlatb15;
  if (x_201) {
    let x_204 : vec2<f32> = vs_TEXCOORD0;
    let x_206 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_209 : vec2<f32> = (x_204 + -(vec2<f32>(x_206.x, x_206.y)));
    let x_210 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_210.z, x_210.w);
    let x_212 : vec4<f32> = u_xlat1;
    let x_216 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_218 : vec2<f32> = (abs(vec2<f32>(x_212.x, x_212.y)) * vec2<f32>(x_216.z, x_216.z));
    let x_219 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_219.x, x_218.x, x_218.y, x_219.w);
    let x_222 : f32 = u_xlat1.y;
    let x_226 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat1.x = (x_222 * x_226);
    let x_230 : vec4<f32> = u_xlat1;
    let x_232 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_230.x, x_230.z), vec2<f32>(x_232.x, x_232.z));
    let x_235 : f32 = u_xlat15;
    u_xlat15 = (-(x_235) + 1.0f);
    let x_239 : f32 = u_xlat15;
    u_xlat15 = max(x_239, 0.0f);
    let x_241 : f32 = u_xlat15;
    u_xlat15 = log2(x_241);
    let x_243 : f32 = u_xlat15;
    let x_245 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat15 = (x_243 * x_245);
    let x_247 : f32 = u_xlat15;
    u_xlat15 = exp2(x_247);
    let x_250 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_254 : vec3<f32> = (-(vec3<f32>(x_250.x, x_250.y, x_250.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_255 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_257 : f32 = u_xlat15;
    let x_259 : vec4<f32> = u_xlat1;
    let x_263 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_265 : vec3<f32> = ((vec3<f32>(x_257, x_257, x_257) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
    let x_266 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_268 : vec4<f32> = u_xlat0;
    let x_270 : vec4<f32> = u_xlat1;
    let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.x, x_270.y, x_270.z));
    let x_273 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  }
  let x_275 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = x_38.x_Lut_Params;
  let x_281 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_279.w, x_279.w, x_279.w));
  let x_282 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = clamp(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_293 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_293);
  let x_295 : bool = u_xlatb15;
  if (x_295) {
    let x_298 : vec4<f32> = u_xlat0;
    let x_302 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_303 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
    let x_305 : vec4<f32> = u_xlat0;
    let x_307 : vec3<f32> = log2(vec3<f32>(x_305.x, x_305.y, x_305.z));
    let x_308 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_310 : vec4<f32> = u_xlat2;
    let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_315 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_317 : vec4<f32> = u_xlat2;
    let x_319 : vec3<f32> = exp2(vec3<f32>(x_317.x, x_317.y, x_317.z));
    let x_320 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat2;
    let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_330 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_335 : vec4<f32> = u_xlat0;
    let x_338 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_335.x, x_335.y, x_335.z, x_335.x));
    u_xlatb3 = vec3<bool>(x_338.x, x_338.y, x_338.z);
    let x_342 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_342;
    let x_344 : bool = u_xlatb3.x;
    if (x_344) {
      let x_350 : f32 = u_xlat1.x;
      x_346 = x_350;
    } else {
      let x_353 : f32 = u_xlat2.x;
      x_346 = x_353;
    }
    let x_354 : f32 = x_346;
    hlslcc_movcTemp.x = x_354;
    let x_357 : bool = u_xlatb3.y;
    if (x_357) {
      let x_362 : f32 = u_xlat1.y;
      x_358 = x_362;
    } else {
      let x_365 : f32 = u_xlat2.y;
      x_358 = x_365;
    }
    let x_366 : f32 = x_358;
    hlslcc_movcTemp.y = x_366;
    let x_369 : bool = u_xlatb3.z;
    if (x_369) {
      let x_374 : f32 = u_xlat1.z;
      x_370 = x_374;
    } else {
      let x_377 : f32 = u_xlat2.z;
      x_370 = x_377;
    }
    let x_378 : f32 = x_370;
    hlslcc_movcTemp.z = x_378;
    let x_380 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_380;
    let x_381 : vec4<f32> = u_xlat1;
    let x_384 : vec4<f32> = x_38.x_UserLut_Params;
    let x_386 : vec3<f32> = (vec3<f32>(x_381.z, x_381.x, x_381.y) * vec3<f32>(x_384.z, x_384.z, x_384.z));
    let x_387 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
    let x_390 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_390);
    let x_393 : vec4<f32> = x_38.x_UserLut_Params;
    let x_395 : vec2<f32> = (vec2<f32>(x_393.x, x_393.y) * vec2<f32>(0.5f, 0.5f));
    let x_396 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_395.x, x_396.y, x_396.z, x_395.y);
    let x_398 : vec4<f32> = u_xlat2;
    let x_401 : vec4<f32> = x_38.x_UserLut_Params;
    let x_404 : vec4<f32> = u_xlat2;
    let x_406 : vec2<f32> = ((vec2<f32>(x_398.y, x_398.z) * vec2<f32>(x_401.x, x_401.y)) + vec2<f32>(x_404.x, x_404.w));
    let x_407 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_407.x, x_406.x, x_406.y, x_407.w);
    let x_409 : f32 = u_xlat15;
    let x_411 : f32 = x_38.x_UserLut_Params.y;
    let x_414 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_409 * x_411) + x_414);
    let x_423 : vec4<f32> = u_xlat2;
    let x_425 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_423.x, x_423.z), 0.0f);
    u_xlat3 = vec3<f32>(x_425.x, x_425.y, x_425.z);
    let x_430 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_430;
    u_xlat4.y = 0.0f;
    let x_433 : vec4<f32> = u_xlat2;
    let x_435 : vec2<f32> = u_xlat4;
    let x_436 : vec2<f32> = (vec2<f32>(x_433.x, x_433.z) + x_435);
    let x_437 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
    let x_442 : vec4<f32> = u_xlat2;
    let x_444 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_442.x, x_442.y), 0.0f);
    let x_445 : vec3<f32> = vec3<f32>(x_444.x, x_444.y, x_444.z);
    let x_446 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
    let x_449 : f32 = u_xlat1.z;
    let x_451 : f32 = x_38.x_UserLut_Params.z;
    let x_453 : f32 = u_xlat15;
    u_xlat15 = ((x_449 * x_451) + -(x_453));
    let x_456 : vec3<f32> = u_xlat3;
    let x_458 : vec4<f32> = u_xlat2;
    let x_460 : vec3<f32> = (-(x_456) + vec3<f32>(x_458.x, x_458.y, x_458.z));
    let x_461 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
    let x_463 : f32 = u_xlat15;
    let x_465 : vec4<f32> = u_xlat2;
    let x_468 : vec3<f32> = u_xlat3;
    let x_469 : vec3<f32> = ((vec3<f32>(x_463, x_463, x_463) * vec3<f32>(x_465.x, x_465.y, x_465.z)) + x_468);
    let x_470 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
    let x_472 : vec4<f32> = u_xlat1;
    let x_475 : vec4<f32> = u_xlat2;
    let x_477 : vec3<f32> = (-(vec3<f32>(x_472.x, x_472.y, x_472.z)) + vec3<f32>(x_475.x, x_475.y, x_475.z));
    let x_478 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_481 : vec4<f32> = x_38.x_UserLut_Params;
    let x_483 : vec4<f32> = u_xlat2;
    let x_486 : vec4<f32> = u_xlat1;
    let x_488 : vec3<f32> = ((vec3<f32>(x_481.w, x_481.w, x_481.w) * vec3<f32>(x_483.x, x_483.y, x_483.z)) + vec3<f32>(x_486.x, x_486.y, x_486.z));
    let x_489 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
    let x_491 : vec4<f32> = u_xlat1;
    let x_495 : vec3<f32> = (vec3<f32>(x_491.x, x_491.y, x_491.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_496 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
    let x_498 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_498.x, x_498.y, x_498.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_503 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_503 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_507 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_507));
    let x_510 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_510 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_514 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_514);
    let x_518 : vec4<f32> = u_xlat1;
    let x_520 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_518.x, x_518.y, x_518.z, x_518.x));
    u_xlatb1 = vec3<bool>(x_520.x, x_520.y, x_520.z);
    let x_523 : bool = u_xlatb1.x;
    if (x_523) {
      let x_528 : f32 = u_xlat2.x;
      x_524 = x_528;
    } else {
      let x_531 : f32 = u_xlat3.x;
      x_524 = x_531;
    }
    let x_532 : f32 = x_524;
    u_xlat0.x = x_532;
    let x_535 : bool = u_xlatb1.y;
    if (x_535) {
      let x_540 : f32 = u_xlat2.y;
      x_536 = x_540;
    } else {
      let x_543 : f32 = u_xlat3.y;
      x_536 = x_543;
    }
    let x_544 : f32 = x_536;
    u_xlat0.y = x_544;
    let x_547 : bool = u_xlatb1.z;
    if (x_547) {
      let x_552 : f32 = u_xlat2.z;
      x_548 = x_552;
    } else {
      let x_555 : f32 = u_xlat3.z;
      x_548 = x_555;
    }
    let x_556 : f32 = x_548;
    u_xlat0.z = x_556;
  }
  let x_558 : vec4<f32> = u_xlat0;
  let x_561 : vec4<f32> = x_38.x_Lut_Params;
  let x_563 : vec3<f32> = (vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_561.z, x_561.z, x_561.z));
  let x_564 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_563.z);
  let x_567 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_567);
  let x_570 : vec4<f32> = x_38.x_Lut_Params;
  let x_572 : vec2<f32> = (vec2<f32>(x_570.x, x_570.y) * vec2<f32>(0.5f, 0.5f));
  let x_573 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat0;
  let x_578 : vec4<f32> = x_38.x_Lut_Params;
  let x_581 : vec4<f32> = u_xlat1;
  let x_583 : vec2<f32> = ((vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_578.x, x_578.y)) + vec2<f32>(x_581.x, x_581.y));
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_584.x, x_583.x, x_583.y, x_584.w);
  let x_586 : f32 = u_xlat15;
  let x_588 : f32 = x_38.x_Lut_Params.y;
  let x_591 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_586 * x_588) + x_591);
  let x_598 : vec4<f32> = u_xlat1;
  let x_600 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_598.x, x_598.z), 0.0f);
  let x_601 : vec3<f32> = vec3<f32>(x_600.x, x_600.y, x_600.z);
  let x_602 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_605 : f32 = x_38.x_Lut_Params.y;
  u_xlat0.x = x_605;
  u_xlat0.y = 0.0f;
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec4<f32> = u_xlat1;
  let x_612 : vec2<f32> = (vec2<f32>(x_608.x, x_608.y) + vec2<f32>(x_610.x, x_610.z));
  let x_613 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
  let x_618 : vec4<f32> = u_xlat0;
  let x_620 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_618.x, x_618.y), 0.0f);
  let x_621 : vec3<f32> = vec3<f32>(x_620.x, x_620.y, x_620.z);
  let x_622 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = u_xlat0.z;
  let x_627 : f32 = x_38.x_Lut_Params.z;
  let x_629 : f32 = u_xlat15;
  u_xlat0.x = ((x_625 * x_627) + -(x_629));
  let x_634 : vec4<f32> = u_xlat2;
  let x_637 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_634.x, x_634.y, x_634.z)) + vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_640 : vec4<f32> = u_xlat0;
  let x_642 : vec3<f32> = u_xlat5;
  let x_644 : vec4<f32> = u_xlat2;
  let x_646 : vec3<f32> = ((vec3<f32>(x_640.x, x_640.x, x_640.x) * x_642) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec2<f32> = vs_TEXCOORD0;
  let x_652 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_656 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_658 : vec2<f32> = ((x_649 * vec2<f32>(x_652.x, x_652.y)) + vec2<f32>(x_656.z, x_656.w));
  let x_659 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
  let x_666 : vec4<f32> = u_xlat1;
  let x_669 : f32 = x_38.x_GlobalMipBias.x;
  let x_670 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_666.x, x_666.y), x_669);
  u_xlat15 = x_670.w;
  let x_672 : f32 = u_xlat15;
  u_xlat15 = (x_672 + -0.5f);
  let x_675 : f32 = u_xlat15;
  let x_676 : f32 = u_xlat15;
  u_xlat15 = (x_675 + x_676);
  let x_678 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_678.x, x_678.y, x_678.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_687 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_687);
  let x_692 : f32 = x_38.x_Grain_Params.y;
  let x_694 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_692 * -(x_694)) + 1.0f);
  let x_700 : f32 = u_xlat15;
  let x_702 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_700, x_700, x_700) * vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec3<f32> = u_xlat6;
  let x_708 : vec2<f32> = x_38.x_Grain_Params;
  u_xlat6 = (x_705 * vec3<f32>(x_708.x, x_708.x, x_708.x));
  let x_713 : vec3<f32> = u_xlat6;
  let x_714 : vec4<f32> = u_xlat1;
  let x_717 : vec4<f32> = u_xlat0;
  let x_719 : vec3<f32> = ((x_713 * vec3<f32>(x_714.x, x_714.x, x_714.x)) + vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
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


