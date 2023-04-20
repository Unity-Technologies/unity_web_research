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

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_410 : f32;
  var x_422 : f32;
  var x_434 : f32;
  var x_588 : f32;
  var x_600 : f32;
  var x_612 : f32;
  var x_868 : f32;
  var x_880 : f32;
  var x_892 : f32;
  var x_949 : f32;
  var x_961 : f32;
  var x_973 : f32;
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
  let x_288 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_289 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat0;
  let x_298 : vec3<f32> = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_299 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat1;
  let x_303 : vec4<f32> = u_xlat2;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.y, x_303.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat0;
  let x_316 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat1;
  let x_321 : vec4<f32> = u_xlat0;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_327 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat2;
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) / vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat0;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_341 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat0;
  let x_345 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_346 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat0;
  let x_352 : vec3<f32> = clamp(vec3<f32>(x_348.x, x_348.y, x_348.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_357 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_357);
  let x_359 : bool = u_xlatb15;
  if (x_359) {
    let x_362 : vec4<f32> = u_xlat0;
    let x_366 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_367 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
    let x_369 : vec4<f32> = u_xlat0;
    let x_371 : vec3<f32> = log2(vec3<f32>(x_369.x, x_369.y, x_369.z));
    let x_372 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_374 : vec4<f32> = u_xlat2;
    let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_379 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
    let x_381 : vec4<f32> = u_xlat2;
    let x_383 : vec3<f32> = exp2(vec3<f32>(x_381.x, x_381.y, x_381.z));
    let x_384 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
    let x_386 : vec4<f32> = u_xlat2;
    let x_393 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_394 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
    let x_399 : vec4<f32> = u_xlat0;
    let x_402 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_399.x, x_399.y, x_399.z, x_399.x));
    u_xlatb3 = vec3<bool>(x_402.x, x_402.y, x_402.z);
    let x_406 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_406;
    let x_408 : bool = u_xlatb3.x;
    if (x_408) {
      let x_414 : f32 = u_xlat1.x;
      x_410 = x_414;
    } else {
      let x_417 : f32 = u_xlat2.x;
      x_410 = x_417;
    }
    let x_418 : f32 = x_410;
    hlslcc_movcTemp.x = x_418;
    let x_421 : bool = u_xlatb3.y;
    if (x_421) {
      let x_426 : f32 = u_xlat1.y;
      x_422 = x_426;
    } else {
      let x_429 : f32 = u_xlat2.y;
      x_422 = x_429;
    }
    let x_430 : f32 = x_422;
    hlslcc_movcTemp.y = x_430;
    let x_433 : bool = u_xlatb3.z;
    if (x_433) {
      let x_438 : f32 = u_xlat1.z;
      x_434 = x_438;
    } else {
      let x_441 : f32 = u_xlat2.z;
      x_434 = x_441;
    }
    let x_442 : f32 = x_434;
    hlslcc_movcTemp.z = x_442;
    let x_444 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_444;
    let x_445 : vec4<f32> = u_xlat1;
    let x_448 : vec4<f32> = x_38.x_UserLut_Params;
    let x_450 : vec3<f32> = (vec3<f32>(x_445.z, x_445.x, x_445.y) * vec3<f32>(x_448.z, x_448.z, x_448.z));
    let x_451 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
    let x_454 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_454);
    let x_457 : vec4<f32> = x_38.x_UserLut_Params;
    let x_459 : vec2<f32> = (vec2<f32>(x_457.x, x_457.y) * vec2<f32>(0.5f, 0.5f));
    let x_460 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_459.x, x_460.y, x_460.z, x_459.y);
    let x_462 : vec4<f32> = u_xlat2;
    let x_465 : vec4<f32> = x_38.x_UserLut_Params;
    let x_468 : vec4<f32> = u_xlat2;
    let x_470 : vec2<f32> = ((vec2<f32>(x_462.y, x_462.z) * vec2<f32>(x_465.x, x_465.y)) + vec2<f32>(x_468.x, x_468.w));
    let x_471 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_471.x, x_470.x, x_470.y, x_471.w);
    let x_473 : f32 = u_xlat15;
    let x_475 : f32 = x_38.x_UserLut_Params.y;
    let x_478 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_473 * x_475) + x_478);
    let x_487 : vec4<f32> = u_xlat2;
    let x_489 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_487.x, x_487.z), 0.0f);
    u_xlat3 = vec3<f32>(x_489.x, x_489.y, x_489.z);
    let x_494 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_494;
    u_xlat4.y = 0.0f;
    let x_497 : vec4<f32> = u_xlat2;
    let x_499 : vec2<f32> = u_xlat4;
    let x_500 : vec2<f32> = (vec2<f32>(x_497.x, x_497.z) + x_499);
    let x_501 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
    let x_506 : vec4<f32> = u_xlat2;
    let x_508 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_506.x, x_506.y), 0.0f);
    let x_509 : vec3<f32> = vec3<f32>(x_508.x, x_508.y, x_508.z);
    let x_510 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
    let x_513 : f32 = u_xlat1.z;
    let x_515 : f32 = x_38.x_UserLut_Params.z;
    let x_517 : f32 = u_xlat15;
    u_xlat15 = ((x_513 * x_515) + -(x_517));
    let x_520 : vec3<f32> = u_xlat3;
    let x_522 : vec4<f32> = u_xlat2;
    let x_524 : vec3<f32> = (-(x_520) + vec3<f32>(x_522.x, x_522.y, x_522.z));
    let x_525 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
    let x_527 : f32 = u_xlat15;
    let x_529 : vec4<f32> = u_xlat2;
    let x_532 : vec3<f32> = u_xlat3;
    let x_533 : vec3<f32> = ((vec3<f32>(x_527, x_527, x_527) * vec3<f32>(x_529.x, x_529.y, x_529.z)) + x_532);
    let x_534 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
    let x_536 : vec4<f32> = u_xlat1;
    let x_539 : vec4<f32> = u_xlat2;
    let x_541 : vec3<f32> = (-(vec3<f32>(x_536.x, x_536.y, x_536.z)) + vec3<f32>(x_539.x, x_539.y, x_539.z));
    let x_542 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
    let x_545 : vec4<f32> = x_38.x_UserLut_Params;
    let x_547 : vec4<f32> = u_xlat2;
    let x_550 : vec4<f32> = u_xlat1;
    let x_552 : vec3<f32> = ((vec3<f32>(x_545.w, x_545.w, x_545.w) * vec3<f32>(x_547.x, x_547.y, x_547.z)) + vec3<f32>(x_550.x, x_550.y, x_550.z));
    let x_553 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
    let x_555 : vec4<f32> = u_xlat1;
    let x_559 : vec3<f32> = (vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_560 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
    let x_562 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_562.x, x_562.y, x_562.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_567 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_567 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_571 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_571));
    let x_574 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_574 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_578 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_578);
    let x_582 : vec4<f32> = u_xlat1;
    let x_584 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_582.x, x_582.y, x_582.z, x_582.x));
    u_xlatb1 = vec3<bool>(x_584.x, x_584.y, x_584.z);
    let x_587 : bool = u_xlatb1.x;
    if (x_587) {
      let x_592 : f32 = u_xlat2.x;
      x_588 = x_592;
    } else {
      let x_595 : f32 = u_xlat3.x;
      x_588 = x_595;
    }
    let x_596 : f32 = x_588;
    u_xlat0.x = x_596;
    let x_599 : bool = u_xlatb1.y;
    if (x_599) {
      let x_604 : f32 = u_xlat2.y;
      x_600 = x_604;
    } else {
      let x_607 : f32 = u_xlat3.y;
      x_600 = x_607;
    }
    let x_608 : f32 = x_600;
    u_xlat0.y = x_608;
    let x_611 : bool = u_xlatb1.z;
    if (x_611) {
      let x_616 : f32 = u_xlat2.z;
      x_612 = x_616;
    } else {
      let x_619 : f32 = u_xlat3.z;
      x_612 = x_619;
    }
    let x_620 : f32 = x_612;
    u_xlat0.z = x_620;
  }
  let x_622 : vec4<f32> = u_xlat0;
  let x_625 : vec4<f32> = x_38.x_Lut_Params;
  let x_627 : vec3<f32> = (vec3<f32>(x_622.x, x_622.y, x_622.z) * vec3<f32>(x_625.z, x_625.z, x_625.z));
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_627.z);
  let x_631 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_631);
  let x_634 : vec4<f32> = x_38.x_Lut_Params;
  let x_636 : vec2<f32> = (vec2<f32>(x_634.x, x_634.y) * vec2<f32>(0.5f, 0.5f));
  let x_637 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat0;
  let x_642 : vec4<f32> = x_38.x_Lut_Params;
  let x_645 : vec4<f32> = u_xlat1;
  let x_647 : vec2<f32> = ((vec2<f32>(x_639.x, x_639.y) * vec2<f32>(x_642.x, x_642.y)) + vec2<f32>(x_645.x, x_645.y));
  let x_648 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_648.x, x_647.x, x_647.y, x_648.w);
  let x_650 : f32 = u_xlat15;
  let x_652 : f32 = x_38.x_Lut_Params.y;
  let x_655 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_650 * x_652) + x_655);
  let x_662 : vec4<f32> = u_xlat1;
  let x_664 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_662.x, x_662.z), 0.0f);
  let x_665 : vec3<f32> = vec3<f32>(x_664.x, x_664.y, x_664.z);
  let x_666 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_669 : f32 = x_38.x_Lut_Params.y;
  u_xlat0.x = x_669;
  u_xlat0.y = 0.0f;
  let x_672 : vec4<f32> = u_xlat0;
  let x_674 : vec4<f32> = u_xlat1;
  let x_676 : vec2<f32> = (vec2<f32>(x_672.x, x_672.y) + vec2<f32>(x_674.x, x_674.z));
  let x_677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
  let x_682 : vec4<f32> = u_xlat0;
  let x_684 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_682.x, x_682.y), 0.0f);
  let x_685 : vec3<f32> = vec3<f32>(x_684.x, x_684.y, x_684.z);
  let x_686 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_689 : f32 = u_xlat0.z;
  let x_691 : f32 = x_38.x_Lut_Params.z;
  let x_693 : f32 = u_xlat15;
  u_xlat0.x = ((x_689 * x_691) + -(x_693));
  let x_698 : vec4<f32> = u_xlat2;
  let x_701 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_698.x, x_698.y, x_698.z)) + vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat0;
  let x_706 : vec3<f32> = u_xlat5;
  let x_708 : vec4<f32> = u_xlat2;
  let x_710 : vec3<f32> = ((vec3<f32>(x_704.x, x_704.x, x_704.x) * x_706) + vec3<f32>(x_708.x, x_708.y, x_708.z));
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec2<f32> = vs_TEXCOORD0;
  let x_716 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_720 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_722 : vec2<f32> = ((x_713 * vec2<f32>(x_716.x, x_716.y)) + vec2<f32>(x_720.z, x_720.w));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_723.z, x_723.w);
  let x_730 : vec4<f32> = u_xlat1;
  let x_733 : f32 = x_38.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_730.x, x_730.y), x_733);
  u_xlat15 = x_734.w;
  let x_736 : f32 = u_xlat15;
  u_xlat15 = (x_736 + -0.5f);
  let x_739 : f32 = u_xlat15;
  let x_740 : f32 = u_xlat15;
  u_xlat15 = (x_739 + x_740);
  let x_742 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_751 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_751);
  let x_756 : f32 = x_38.x_Grain_Params.y;
  let x_758 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_756 * -(x_758)) + 1.0f);
  let x_764 : f32 = u_xlat15;
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_764, x_764, x_764) * vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec3<f32> = u_xlat6;
  let x_772 : vec2<f32> = x_38.x_Grain_Params;
  u_xlat6 = (x_769 * vec3<f32>(x_772.x, x_772.x, x_772.x));
  let x_775 : vec3<f32> = u_xlat6;
  let x_776 : vec4<f32> = u_xlat1;
  let x_779 : vec4<f32> = u_xlat0;
  let x_781 : vec3<f32> = ((x_775 * vec3<f32>(x_776.x, x_776.x, x_776.x)) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat0;
  let x_786 : vec3<f32> = sqrt(vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec2<f32> = vs_TEXCOORD0;
  let x_792 : vec4<f32> = x_38.x_Dithering_Params;
  let x_796 : vec4<f32> = x_38.x_Dithering_Params;
  let x_798 : vec2<f32> = ((x_789 * vec2<f32>(x_792.x, x_792.y)) + vec2<f32>(x_796.z, x_796.w));
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_798.x, x_798.y, x_799.z, x_799.w);
  let x_806 : vec4<f32> = u_xlat1;
  let x_809 : f32 = x_38.x_GlobalMipBias.x;
  let x_810 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_806.x, x_806.y), x_809);
  u_xlat15 = x_810.w;
  let x_812 : f32 = u_xlat15;
  u_xlat15 = ((x_812 * 2.0f) + -1.0f);
  let x_815 : f32 = u_xlat15;
  u_xlatb1.x = (x_815 >= 0.0f);
  let x_819 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_819);
  let x_822 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_822)) + 1.0f);
  let x_826 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_826);
  let x_828 : f32 = u_xlat15;
  u_xlat15 = (-(x_828) + 1.0f);
  let x_831 : f32 = u_xlat15;
  let x_833 : f32 = u_xlat1.x;
  u_xlat15 = (x_831 * x_833);
  let x_835 : vec4<f32> = u_xlat0;
  let x_837 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_838 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat0;
  let x_842 : vec3<f32> = log2(vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat2;
  let x_847 : vec3<f32> = (vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_848 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat2;
  let x_852 : vec3<f32> = exp2(vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat2;
  let x_858 : vec3<f32> = ((vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_859 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_862 : vec4<f32> = u_xlat0;
  let x_864 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_862.x, x_862.y, x_862.z, x_862.x));
  u_xlatb0 = vec3<bool>(x_864.x, x_864.y, x_864.z);
  let x_867 : bool = u_xlatb0.x;
  if (x_867) {
    let x_872 : f32 = u_xlat1.x;
    x_868 = x_872;
  } else {
    let x_875 : f32 = u_xlat2.x;
    x_868 = x_875;
  }
  let x_876 : f32 = x_868;
  u_xlat0.x = x_876;
  let x_879 : bool = u_xlatb0.y;
  if (x_879) {
    let x_884 : f32 = u_xlat1.y;
    x_880 = x_884;
  } else {
    let x_887 : f32 = u_xlat2.y;
    x_880 = x_887;
  }
  let x_888 : f32 = x_880;
  u_xlat0.y = x_888;
  let x_891 : bool = u_xlatb0.z;
  if (x_891) {
    let x_896 : f32 = u_xlat1.z;
    x_892 = x_896;
  } else {
    let x_899 : f32 = u_xlat2.z;
    x_892 = x_899;
  }
  let x_900 : f32 = x_892;
  u_xlat0.z = x_900;
  let x_902 : f32 = u_xlat15;
  let x_907 : vec4<f32> = u_xlat0;
  let x_909 : vec3<f32> = ((vec3<f32>(x_902, x_902, x_902) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec4<f32> = u_xlat0;
  let x_914 : vec3<f32> = (vec3<f32>(x_912.x, x_912.y, x_912.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_915 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat0;
  let x_919 : vec3<f32> = (vec3<f32>(x_917.x, x_917.y, x_917.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_920 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : vec4<f32> = u_xlat2;
  let x_924 : vec3<f32> = (vec3<f32>(x_922.x, x_922.y, x_922.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_925 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec4<f32> = u_xlat2;
  let x_930 : vec3<f32> = log2(abs(vec3<f32>(x_927.x, x_927.y, x_927.z)));
  let x_931 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec4<f32> = u_xlat2;
  let x_935 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_936 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat2;
  let x_940 : vec3<f32> = exp2(vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat0;
  let x_945 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_943.x, x_943.y, x_943.z, x_943.x));
  u_xlatb0 = vec3<bool>(x_945.x, x_945.y, x_945.z);
  let x_948 : bool = u_xlatb0.x;
  if (x_948) {
    let x_953 : f32 = u_xlat1.x;
    x_949 = x_953;
  } else {
    let x_956 : f32 = u_xlat2.x;
    x_949 = x_956;
  }
  let x_957 : f32 = x_949;
  u_xlat0.x = x_957;
  let x_960 : bool = u_xlatb0.y;
  if (x_960) {
    let x_965 : f32 = u_xlat1.y;
    x_961 = x_965;
  } else {
    let x_968 : f32 = u_xlat2.y;
    x_961 = x_968;
  }
  let x_969 : f32 = x_961;
  u_xlat0.y = x_969;
  let x_972 : bool = u_xlatb0.z;
  if (x_972) {
    let x_977 : f32 = u_xlat1.z;
    x_973 = x_977;
  } else {
    let x_980 : f32 = u_xlat2.z;
    x_973 = x_980;
  }
  let x_981 : f32 = x_973;
  u_xlat0.z = x_981;
  let x_985 : vec4<f32> = u_xlat0;
  let x_988 : vec3<f32> = max(vec3<f32>(x_985.x, x_985.y, x_985.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_989 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
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


