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

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_453 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var x_631 : f32;
  var x_643 : f32;
  var x_655 : f32;
  var x_836 : f32;
  var x_848 : f32;
  var x_860 : f32;
  var x_917 : f32;
  var x_929 : f32;
  var x_941 : f32;
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
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec2<f32> = vs_TEXCOORD0;
  let x_199 : vec4<f32> = x_38.x_LensDirt_Params;
  let x_203 : vec4<f32> = x_38.x_LensDirt_Params;
  let x_205 : vec2<f32> = ((x_196 * vec2<f32>(x_199.x, x_199.y)) + vec2<f32>(x_203.z, x_203.w));
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_206.z, x_206.w);
  let x_212 : vec4<f32> = u_xlat2;
  let x_215 : f32 = x_38.x_GlobalMipBias.x;
  let x_216 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_212.x, x_212.y), x_215);
  let x_217 : vec3<f32> = vec3<f32>(x_216.x, x_216.y, x_216.z);
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat2;
  let x_224 : f32 = x_38.x_LensDirt_Intensity;
  let x_226 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_224, x_224, x_224));
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat0;
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.x, x_231.y, x_231.z)) + vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_242 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_242);
  let x_244 : bool = u_xlatb15;
  if (x_244) {
    let x_247 : vec2<f32> = vs_TEXCOORD0;
    let x_249 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_252 : vec2<f32> = (x_247 + -(vec2<f32>(x_249.x, x_249.y)));
    let x_253 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_253.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat1;
    let x_259 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_261 : vec2<f32> = (abs(vec2<f32>(x_255.x, x_255.y)) * vec2<f32>(x_259.z, x_259.z));
    let x_262 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_262.w);
    let x_265 : f32 = u_xlat1.y;
    let x_269 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat1.x = (x_265 * x_269);
    let x_273 : vec4<f32> = u_xlat1;
    let x_275 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_273.x, x_273.z), vec2<f32>(x_275.x, x_275.z));
    let x_278 : f32 = u_xlat15;
    u_xlat15 = (-(x_278) + 1.0f);
    let x_282 : f32 = u_xlat15;
    u_xlat15 = max(x_282, 0.0f);
    let x_284 : f32 = u_xlat15;
    u_xlat15 = log2(x_284);
    let x_286 : f32 = u_xlat15;
    let x_288 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat15 = (x_286 * x_288);
    let x_290 : f32 = u_xlat15;
    u_xlat15 = exp2(x_290);
    let x_293 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_297 : vec3<f32> = (-(vec3<f32>(x_293.x, x_293.y, x_293.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_298 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
    let x_300 : f32 = u_xlat15;
    let x_302 : vec4<f32> = u_xlat1;
    let x_306 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_308 : vec3<f32> = ((vec3<f32>(x_300, x_300, x_300) * vec3<f32>(x_302.x, x_302.y, x_302.z)) + vec3<f32>(x_306.x, x_306.y, x_306.z));
    let x_309 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_311 : vec4<f32> = u_xlat0;
    let x_313 : vec4<f32> = u_xlat1;
    let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.x, x_313.y, x_313.z));
    let x_316 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  }
  let x_318 : vec4<f32> = u_xlat0;
  let x_322 : vec4<f32> = x_38.x_Lut_Params;
  let x_324 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_322.w, x_322.w, x_322.w));
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat0;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat0;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat1;
  let x_346 : vec4<f32> = u_xlat2;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat0;
  let x_359 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat0;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec4<f32> = u_xlat0;
  let x_376 : vec3<f32> = (vec3<f32>(x_372.x, x_372.y, x_372.z) / vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat0;
  let x_395 : vec3<f32> = clamp(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_400 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_400);
  let x_402 : bool = u_xlatb15;
  if (x_402) {
    let x_405 : vec4<f32> = u_xlat0;
    let x_409 : vec3<f32> = (vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_410 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
    let x_412 : vec4<f32> = u_xlat0;
    let x_414 : vec3<f32> = log2(vec3<f32>(x_412.x, x_412.y, x_412.z));
    let x_415 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_417 : vec4<f32> = u_xlat2;
    let x_421 : vec3<f32> = (vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_422 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
    let x_424 : vec4<f32> = u_xlat2;
    let x_426 : vec3<f32> = exp2(vec3<f32>(x_424.x, x_424.y, x_424.z));
    let x_427 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
    let x_429 : vec4<f32> = u_xlat2;
    let x_436 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_437 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
    let x_442 : vec4<f32> = u_xlat0;
    let x_445 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_442.x, x_442.y, x_442.z, x_442.x));
    u_xlatb3 = vec3<bool>(x_445.x, x_445.y, x_445.z);
    let x_449 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_449;
    let x_451 : bool = u_xlatb3.x;
    if (x_451) {
      let x_457 : f32 = u_xlat1.x;
      x_453 = x_457;
    } else {
      let x_460 : f32 = u_xlat2.x;
      x_453 = x_460;
    }
    let x_461 : f32 = x_453;
    hlslcc_movcTemp.x = x_461;
    let x_464 : bool = u_xlatb3.y;
    if (x_464) {
      let x_469 : f32 = u_xlat1.y;
      x_465 = x_469;
    } else {
      let x_472 : f32 = u_xlat2.y;
      x_465 = x_472;
    }
    let x_473 : f32 = x_465;
    hlslcc_movcTemp.y = x_473;
    let x_476 : bool = u_xlatb3.z;
    if (x_476) {
      let x_481 : f32 = u_xlat1.z;
      x_477 = x_481;
    } else {
      let x_484 : f32 = u_xlat2.z;
      x_477 = x_484;
    }
    let x_485 : f32 = x_477;
    hlslcc_movcTemp.z = x_485;
    let x_487 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_487;
    let x_488 : vec4<f32> = u_xlat1;
    let x_491 : vec4<f32> = x_38.x_UserLut_Params;
    let x_493 : vec3<f32> = (vec3<f32>(x_488.z, x_488.x, x_488.y) * vec3<f32>(x_491.z, x_491.z, x_491.z));
    let x_494 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
    let x_497 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_497);
    let x_500 : vec4<f32> = x_38.x_UserLut_Params;
    let x_502 : vec2<f32> = (vec2<f32>(x_500.x, x_500.y) * vec2<f32>(0.5f, 0.5f));
    let x_503 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_502.x, x_503.y, x_503.z, x_502.y);
    let x_505 : vec4<f32> = u_xlat2;
    let x_508 : vec4<f32> = x_38.x_UserLut_Params;
    let x_511 : vec4<f32> = u_xlat2;
    let x_513 : vec2<f32> = ((vec2<f32>(x_505.y, x_505.z) * vec2<f32>(x_508.x, x_508.y)) + vec2<f32>(x_511.x, x_511.w));
    let x_514 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_514.x, x_513.x, x_513.y, x_514.w);
    let x_516 : f32 = u_xlat15;
    let x_518 : f32 = x_38.x_UserLut_Params.y;
    let x_521 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_516 * x_518) + x_521);
    let x_530 : vec4<f32> = u_xlat2;
    let x_532 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_530.x, x_530.z), 0.0f);
    u_xlat3 = vec3<f32>(x_532.x, x_532.y, x_532.z);
    let x_537 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_537;
    u_xlat4.y = 0.0f;
    let x_540 : vec4<f32> = u_xlat2;
    let x_542 : vec2<f32> = u_xlat4;
    let x_543 : vec2<f32> = (vec2<f32>(x_540.x, x_540.z) + x_542);
    let x_544 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
    let x_549 : vec4<f32> = u_xlat2;
    let x_551 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_549.x, x_549.y), 0.0f);
    let x_552 : vec3<f32> = vec3<f32>(x_551.x, x_551.y, x_551.z);
    let x_553 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
    let x_556 : f32 = u_xlat1.z;
    let x_558 : f32 = x_38.x_UserLut_Params.z;
    let x_560 : f32 = u_xlat15;
    u_xlat15 = ((x_556 * x_558) + -(x_560));
    let x_563 : vec3<f32> = u_xlat3;
    let x_565 : vec4<f32> = u_xlat2;
    let x_567 : vec3<f32> = (-(x_563) + vec3<f32>(x_565.x, x_565.y, x_565.z));
    let x_568 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
    let x_570 : f32 = u_xlat15;
    let x_572 : vec4<f32> = u_xlat2;
    let x_575 : vec3<f32> = u_xlat3;
    let x_576 : vec3<f32> = ((vec3<f32>(x_570, x_570, x_570) * vec3<f32>(x_572.x, x_572.y, x_572.z)) + x_575);
    let x_577 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
    let x_579 : vec4<f32> = u_xlat1;
    let x_582 : vec4<f32> = u_xlat2;
    let x_584 : vec3<f32> = (-(vec3<f32>(x_579.x, x_579.y, x_579.z)) + vec3<f32>(x_582.x, x_582.y, x_582.z));
    let x_585 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
    let x_588 : vec4<f32> = x_38.x_UserLut_Params;
    let x_590 : vec4<f32> = u_xlat2;
    let x_593 : vec4<f32> = u_xlat1;
    let x_595 : vec3<f32> = ((vec3<f32>(x_588.w, x_588.w, x_588.w) * vec3<f32>(x_590.x, x_590.y, x_590.z)) + vec3<f32>(x_593.x, x_593.y, x_593.z));
    let x_596 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
    let x_598 : vec4<f32> = u_xlat1;
    let x_602 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_603 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
    let x_605 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_605.x, x_605.y, x_605.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_610 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_610 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_614 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_614));
    let x_617 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_617 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_621 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_621);
    let x_625 : vec4<f32> = u_xlat1;
    let x_627 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_625.x, x_625.y, x_625.z, x_625.x));
    u_xlatb1 = vec3<bool>(x_627.x, x_627.y, x_627.z);
    let x_630 : bool = u_xlatb1.x;
    if (x_630) {
      let x_635 : f32 = u_xlat2.x;
      x_631 = x_635;
    } else {
      let x_638 : f32 = u_xlat3.x;
      x_631 = x_638;
    }
    let x_639 : f32 = x_631;
    u_xlat0.x = x_639;
    let x_642 : bool = u_xlatb1.y;
    if (x_642) {
      let x_647 : f32 = u_xlat2.y;
      x_643 = x_647;
    } else {
      let x_650 : f32 = u_xlat3.y;
      x_643 = x_650;
    }
    let x_651 : f32 = x_643;
    u_xlat0.y = x_651;
    let x_654 : bool = u_xlatb1.z;
    if (x_654) {
      let x_659 : f32 = u_xlat2.z;
      x_655 = x_659;
    } else {
      let x_662 : f32 = u_xlat3.z;
      x_655 = x_662;
    }
    let x_663 : f32 = x_655;
    u_xlat0.z = x_663;
  }
  let x_665 : vec4<f32> = u_xlat0;
  let x_668 : vec4<f32> = x_38.x_Lut_Params;
  let x_670 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(x_668.z, x_668.z, x_668.z));
  let x_671 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_670.z);
  let x_674 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_674);
  let x_677 : vec4<f32> = x_38.x_Lut_Params;
  let x_679 : vec2<f32> = (vec2<f32>(x_677.x, x_677.y) * vec2<f32>(0.5f, 0.5f));
  let x_680 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat0;
  let x_685 : vec4<f32> = x_38.x_Lut_Params;
  let x_688 : vec4<f32> = u_xlat1;
  let x_690 : vec2<f32> = ((vec2<f32>(x_682.x, x_682.y) * vec2<f32>(x_685.x, x_685.y)) + vec2<f32>(x_688.x, x_688.y));
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_691.x, x_690.x, x_690.y, x_691.w);
  let x_693 : f32 = u_xlat15;
  let x_695 : f32 = x_38.x_Lut_Params.y;
  let x_698 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_693 * x_695) + x_698);
  let x_705 : vec4<f32> = u_xlat1;
  let x_707 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_705.x, x_705.z), 0.0f);
  let x_708 : vec3<f32> = vec3<f32>(x_707.x, x_707.y, x_707.z);
  let x_709 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_712 : f32 = x_38.x_Lut_Params.y;
  u_xlat0.x = x_712;
  u_xlat0.y = 0.0f;
  let x_715 : vec4<f32> = u_xlat0;
  let x_717 : vec4<f32> = u_xlat1;
  let x_719 : vec2<f32> = (vec2<f32>(x_715.x, x_715.y) + vec2<f32>(x_717.x, x_717.z));
  let x_720 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_719.x, x_719.y, x_720.z, x_720.w);
  let x_725 : vec4<f32> = u_xlat0;
  let x_727 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_725.x, x_725.y), 0.0f);
  let x_728 : vec3<f32> = vec3<f32>(x_727.x, x_727.y, x_727.z);
  let x_729 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_732 : f32 = u_xlat0.z;
  let x_734 : f32 = x_38.x_Lut_Params.z;
  let x_736 : f32 = u_xlat15;
  u_xlat0.x = ((x_732 * x_734) + -(x_736));
  let x_741 : vec4<f32> = u_xlat2;
  let x_744 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_741.x, x_741.y, x_741.z)) + vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : vec4<f32> = u_xlat0;
  let x_749 : vec3<f32> = u_xlat5;
  let x_751 : vec4<f32> = u_xlat2;
  let x_753 : vec3<f32> = ((vec3<f32>(x_747.x, x_747.x, x_747.x) * x_749) + vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_754 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec2<f32> = vs_TEXCOORD0;
  let x_759 : vec4<f32> = x_38.x_Dithering_Params;
  let x_763 : vec4<f32> = x_38.x_Dithering_Params;
  let x_765 : vec2<f32> = ((x_756 * vec2<f32>(x_759.x, x_759.y)) + vec2<f32>(x_763.z, x_763.w));
  let x_766 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
  let x_773 : vec4<f32> = u_xlat1;
  let x_776 : f32 = x_38.x_GlobalMipBias.x;
  let x_777 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_773.x, x_773.y), x_776);
  u_xlat15 = x_777.w;
  let x_779 : f32 = u_xlat15;
  u_xlat15 = ((x_779 * 2.0f) + -1.0f);
  let x_782 : f32 = u_xlat15;
  u_xlatb1.x = (x_782 >= 0.0f);
  let x_786 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_786);
  let x_789 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_789)) + 1.0f);
  let x_793 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_793);
  let x_795 : f32 = u_xlat15;
  u_xlat15 = (-(x_795) + 1.0f);
  let x_798 : f32 = u_xlat15;
  let x_800 : f32 = u_xlat1.x;
  u_xlat15 = (x_798 * x_800);
  let x_802 : vec4<f32> = u_xlat0;
  let x_804 : vec3<f32> = (vec3<f32>(x_802.x, x_802.y, x_802.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = log2(abs(vec3<f32>(x_807.x, x_807.y, x_807.z)));
  let x_811 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat2;
  let x_815 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_816 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat2;
  let x_820 : vec3<f32> = exp2(vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat2;
  let x_826 : vec3<f32> = ((vec3<f32>(x_823.x, x_823.y, x_823.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_830 : vec4<f32> = u_xlat0;
  let x_832 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_830.x, x_830.y, x_830.z, x_830.x));
  u_xlatb0 = vec3<bool>(x_832.x, x_832.y, x_832.z);
  let x_835 : bool = u_xlatb0.x;
  if (x_835) {
    let x_840 : f32 = u_xlat1.x;
    x_836 = x_840;
  } else {
    let x_843 : f32 = u_xlat2.x;
    x_836 = x_843;
  }
  let x_844 : f32 = x_836;
  u_xlat0.x = x_844;
  let x_847 : bool = u_xlatb0.y;
  if (x_847) {
    let x_852 : f32 = u_xlat1.y;
    x_848 = x_852;
  } else {
    let x_855 : f32 = u_xlat2.y;
    x_848 = x_855;
  }
  let x_856 : f32 = x_848;
  u_xlat0.y = x_856;
  let x_859 : bool = u_xlatb0.z;
  if (x_859) {
    let x_864 : f32 = u_xlat1.z;
    x_860 = x_864;
  } else {
    let x_867 : f32 = u_xlat2.z;
    x_860 = x_867;
  }
  let x_868 : f32 = x_860;
  u_xlat0.z = x_868;
  let x_870 : f32 = u_xlat15;
  let x_875 : vec4<f32> = u_xlat0;
  let x_877 : vec3<f32> = ((vec3<f32>(x_870, x_870, x_870) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec4<f32> = u_xlat0;
  let x_882 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_883 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = u_xlat0;
  let x_887 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat2;
  let x_892 : vec3<f32> = (vec3<f32>(x_890.x, x_890.y, x_890.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_893 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat2;
  let x_898 : vec3<f32> = log2(abs(vec3<f32>(x_895.x, x_895.y, x_895.z)));
  let x_899 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat2;
  let x_903 : vec3<f32> = (vec3<f32>(x_901.x, x_901.y, x_901.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_904 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat2;
  let x_908 : vec3<f32> = exp2(vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat0;
  let x_913 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_911.x, x_911.y, x_911.z, x_911.x));
  u_xlatb0 = vec3<bool>(x_913.x, x_913.y, x_913.z);
  let x_916 : bool = u_xlatb0.x;
  if (x_916) {
    let x_921 : f32 = u_xlat1.x;
    x_917 = x_921;
  } else {
    let x_924 : f32 = u_xlat2.x;
    x_917 = x_924;
  }
  let x_925 : f32 = x_917;
  u_xlat0.x = x_925;
  let x_928 : bool = u_xlatb0.y;
  if (x_928) {
    let x_933 : f32 = u_xlat1.y;
    x_929 = x_933;
  } else {
    let x_936 : f32 = u_xlat2.y;
    x_929 = x_936;
  }
  let x_937 : f32 = x_929;
  u_xlat0.y = x_937;
  let x_940 : bool = u_xlatb0.z;
  if (x_940) {
    let x_945 : f32 = u_xlat1.z;
    x_941 = x_945;
  } else {
    let x_948 : f32 = u_xlat2.z;
    x_941 = x_948;
  }
  let x_949 : f32 = x_941;
  u_xlat0.z = x_949;
  let x_953 : vec4<f32> = u_xlat0;
  let x_956 : vec3<f32> = max(vec3<f32>(x_953.x, x_953.y, x_953.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_957 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
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


