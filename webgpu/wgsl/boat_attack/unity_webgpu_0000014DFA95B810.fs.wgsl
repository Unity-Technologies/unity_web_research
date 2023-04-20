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
  /* @offset(160) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Vignette_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_397 : f32;
  var x_409 : f32;
  var x_421 : f32;
  var x_576 : f32;
  var x_588 : f32;
  var x_600 : f32;
  var x_737 : f32;
  var x_750 : f32;
  var x_762 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_26 : vec4<f32> = x_13.x_RTHandleScale;
  let x_28 : vec2<f32> = ((-(vec2<f32>(x_18.x, x_18.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_26.x, x_26.y));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_29.z, x_29.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_35 : vec2<f32> = vs_TEXCOORD0;
  let x_36 : vec2<f32> = min(vec2<f32>(x_31.x, x_31.y), x_35);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_37.z, x_37.w);
  let x_49 : vec4<f32> = u_xlat0;
  let x_56 : f32 = x_13.x_GlobalMipBias.x;
  let x_57 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_49.x, x_49.y), x_56);
  let x_59 : vec3<f32> = vec3<f32>(x_57.x, x_57.y, x_57.z);
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_65 : vec4<f32> = x_13.x_BloomTexture_TexelSize;
  let x_70 : vec4<f32> = x_13.x_RTHandleScale;
  let x_72 : vec2<f32> = ((-(vec2<f32>(x_65.x, x_65.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_70.x, x_70.y));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_77 : vec2<f32> = vs_TEXCOORD0;
  let x_78 : vec2<f32> = min(vec2<f32>(x_75.x, x_75.y), x_77);
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_79.z, x_79.w);
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : f32 = x_13.x_GlobalMipBias.x;
  let x_89 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_85.x, x_85.y), x_88);
  u_xlat1 = x_89;
  let x_96 : f32 = x_13.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_96);
  let x_98 : bool = u_xlatb15;
  if (x_98) {
    let x_102 : vec4<f32> = u_xlat1;
    let x_104 : vec4<f32> = u_xlat1;
    let x_106 : vec3<f32> = (vec3<f32>(x_102.w, x_102.w, x_102.w) * vec3<f32>(x_104.x, x_104.y, x_104.z));
    let x_107 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
    let x_109 : vec4<f32> = u_xlat2;
    let x_113 : vec3<f32> = (vec3<f32>(x_109.x, x_109.y, x_109.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_114 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  }
  let x_116 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = x_13.x_Bloom_Params;
  let x_122 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) * vec3<f32>(x_120.x, x_120.x, x_120.x));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = x_13.x_Bloom_Params;
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec3<f32> = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_128.y, x_128.z, x_128.w)) + vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  let x_139 : vec4<f32> = x_13.x_LensDirt_Params;
  let x_143 : vec4<f32> = x_13.x_LensDirt_Params;
  let x_145 : vec2<f32> = ((x_136 * vec2<f32>(x_139.x, x_139.y)) + vec2<f32>(x_143.z, x_143.w));
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_146.z, x_146.w);
  let x_152 : vec4<f32> = u_xlat2;
  let x_155 : f32 = x_13.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_152.x, x_152.y), x_155);
  let x_157 : vec3<f32> = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_158 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_160 : vec4<f32> = u_xlat2;
  let x_164 : f32 = x_13.x_LensDirt_Intensity;
  let x_166 : vec3<f32> = (vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_164, x_164, x_164));
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec4<f32> = u_xlat2;
  let x_171 : vec4<f32> = u_xlat1;
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.x, x_171.y, x_171.z)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_182 : f32 = x_13.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_182);
  let x_184 : bool = u_xlatb15;
  if (x_184) {
    let x_187 : vec2<f32> = vs_TEXCOORD0;
    let x_189 : vec4<f32> = x_13.x_Vignette_Params2;
    let x_192 : vec2<f32> = (x_187 + -(vec2<f32>(x_189.x, x_189.y)));
    let x_193 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_192.x, x_192.y, x_193.z, x_193.w);
    let x_195 : vec4<f32> = u_xlat1;
    let x_199 : vec4<f32> = x_13.x_Vignette_Params2;
    let x_201 : vec2<f32> = (abs(vec2<f32>(x_195.x, x_195.y)) * vec2<f32>(x_199.z, x_199.z));
    let x_202 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_202.x, x_201.x, x_201.y, x_202.w);
    let x_207 : f32 = u_xlat1.y;
    let x_211 : f32 = x_13.x_Vignette_Params1.w;
    u_xlat1.x = (x_207 * x_211);
    let x_215 : vec4<f32> = u_xlat1;
    let x_217 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_215.x, x_215.z), vec2<f32>(x_217.x, x_217.z));
    let x_220 : f32 = u_xlat15;
    u_xlat15 = (-(x_220) + 1.0f);
    let x_224 : f32 = u_xlat15;
    u_xlat15 = max(x_224, 0.0f);
    let x_226 : f32 = u_xlat15;
    u_xlat15 = log2(x_226);
    let x_228 : f32 = u_xlat15;
    let x_230 : f32 = x_13.x_Vignette_Params2.w;
    u_xlat15 = (x_228 * x_230);
    let x_232 : f32 = u_xlat15;
    u_xlat15 = exp2(x_232);
    let x_235 : vec4<f32> = x_13.x_Vignette_Params1;
    let x_239 : vec3<f32> = (-(vec3<f32>(x_235.x, x_235.y, x_235.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_240 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
    let x_242 : f32 = u_xlat15;
    let x_244 : vec4<f32> = u_xlat1;
    let x_248 : vec4<f32> = x_13.x_Vignette_Params1;
    let x_250 : vec3<f32> = ((vec3<f32>(x_242, x_242, x_242) * vec3<f32>(x_244.x, x_244.y, x_244.z)) + vec3<f32>(x_248.x, x_248.y, x_248.z));
    let x_251 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
    let x_253 : vec4<f32> = u_xlat0;
    let x_255 : vec4<f32> = u_xlat1;
    let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_255.x, x_255.y, x_255.z));
    let x_258 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  }
  let x_260 : vec4<f32> = u_xlat0;
  let x_264 : vec4<f32> = x_13.x_Lut_Params;
  let x_266 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) * vec3<f32>(x_264.w, x_264.w, x_264.w));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat0;
  let x_273 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_274 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat0;
  let x_283 : vec3<f32> = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat1;
  let x_288 : vec4<f32> = u_xlat2;
  let x_293 : vec3<f32> = ((vec3<f32>(x_286.x, x_286.y, x_286.z) * vec3<f32>(x_288.x, x_288.y, x_288.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat0;
  let x_301 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat1;
  let x_306 : vec4<f32> = u_xlat0;
  let x_311 : vec3<f32> = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.x, x_306.y, x_306.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat2;
  let x_316 : vec4<f32> = u_xlat0;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) / vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat0;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_326 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat0;
  let x_330 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat0;
  let x_337 : vec3<f32> = clamp(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_338 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_342 : f32 = x_13.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_342);
  let x_344 : bool = u_xlatb15;
  if (x_344) {
    let x_347 : vec4<f32> = u_xlat0;
    let x_351 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_352 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
    let x_354 : vec4<f32> = u_xlat0;
    let x_356 : vec3<f32> = log2(vec3<f32>(x_354.x, x_354.y, x_354.z));
    let x_357 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
    let x_359 : vec4<f32> = u_xlat2;
    let x_363 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_364 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
    let x_366 : vec4<f32> = u_xlat2;
    let x_368 : vec3<f32> = exp2(vec3<f32>(x_366.x, x_366.y, x_366.z));
    let x_369 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat2;
    let x_378 : vec3<f32> = ((vec3<f32>(x_371.x, x_371.y, x_371.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_379 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
    let x_386 : vec4<f32> = u_xlat0;
    let x_389 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_386.x, x_386.y, x_386.z, x_386.x));
    u_xlatb3 = vec3<bool>(x_389.x, x_389.y, x_389.z);
    let x_393 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_393;
    let x_395 : bool = u_xlatb3.x;
    if (x_395) {
      let x_401 : f32 = u_xlat1.x;
      x_397 = x_401;
    } else {
      let x_404 : f32 = u_xlat2.x;
      x_397 = x_404;
    }
    let x_405 : f32 = x_397;
    hlslcc_movcTemp.x = x_405;
    let x_408 : bool = u_xlatb3.y;
    if (x_408) {
      let x_413 : f32 = u_xlat1.y;
      x_409 = x_413;
    } else {
      let x_416 : f32 = u_xlat2.y;
      x_409 = x_416;
    }
    let x_417 : f32 = x_409;
    hlslcc_movcTemp.y = x_417;
    let x_420 : bool = u_xlatb3.z;
    if (x_420) {
      let x_425 : f32 = u_xlat1.z;
      x_421 = x_425;
    } else {
      let x_428 : f32 = u_xlat2.z;
      x_421 = x_428;
    }
    let x_429 : f32 = x_421;
    hlslcc_movcTemp.z = x_429;
    let x_431 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_431;
    let x_432 : vec4<f32> = u_xlat1;
    let x_435 : vec4<f32> = x_13.x_UserLut_Params;
    let x_437 : vec3<f32> = (vec3<f32>(x_432.z, x_432.x, x_432.y) * vec3<f32>(x_435.z, x_435.z, x_435.z));
    let x_438 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
    let x_441 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_441);
    let x_444 : vec4<f32> = x_13.x_UserLut_Params;
    let x_446 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(0.5f, 0.5f));
    let x_447 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_446.x, x_447.y, x_447.z, x_446.y);
    let x_449 : vec4<f32> = u_xlat2;
    let x_452 : vec4<f32> = x_13.x_UserLut_Params;
    let x_455 : vec4<f32> = u_xlat2;
    let x_457 : vec2<f32> = ((vec2<f32>(x_449.y, x_449.z) * vec2<f32>(x_452.x, x_452.y)) + vec2<f32>(x_455.x, x_455.w));
    let x_458 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_458.x, x_457.x, x_457.y, x_458.w);
    let x_460 : f32 = u_xlat15;
    let x_462 : f32 = x_13.x_UserLut_Params.y;
    let x_465 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_460 * x_462) + x_465);
    let x_474 : vec4<f32> = u_xlat2;
    let x_476 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_474.x, x_474.z), 0.0f);
    u_xlat3 = vec3<f32>(x_476.x, x_476.y, x_476.z);
    let x_481 : f32 = x_13.x_UserLut_Params.y;
    u_xlat4.x = x_481;
    u_xlat4.y = 0.0f;
    let x_484 : vec4<f32> = u_xlat2;
    let x_486 : vec2<f32> = u_xlat4;
    let x_487 : vec2<f32> = (vec2<f32>(x_484.x, x_484.z) + x_486);
    let x_488 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
    let x_493 : vec4<f32> = u_xlat2;
    let x_495 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_493.x, x_493.y), 0.0f);
    let x_496 : vec3<f32> = vec3<f32>(x_495.x, x_495.y, x_495.z);
    let x_497 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
    let x_500 : f32 = u_xlat1.z;
    let x_502 : f32 = x_13.x_UserLut_Params.z;
    let x_504 : f32 = u_xlat15;
    u_xlat15 = ((x_500 * x_502) + -(x_504));
    let x_507 : vec3<f32> = u_xlat3;
    let x_509 : vec4<f32> = u_xlat2;
    let x_511 : vec3<f32> = (-(x_507) + vec3<f32>(x_509.x, x_509.y, x_509.z));
    let x_512 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
    let x_514 : f32 = u_xlat15;
    let x_516 : vec4<f32> = u_xlat2;
    let x_519 : vec3<f32> = u_xlat3;
    let x_520 : vec3<f32> = ((vec3<f32>(x_514, x_514, x_514) * vec3<f32>(x_516.x, x_516.y, x_516.z)) + x_519);
    let x_521 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
    let x_523 : vec4<f32> = u_xlat1;
    let x_526 : vec4<f32> = u_xlat2;
    let x_528 : vec3<f32> = (-(vec3<f32>(x_523.x, x_523.y, x_523.z)) + vec3<f32>(x_526.x, x_526.y, x_526.z));
    let x_529 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
    let x_532 : vec4<f32> = x_13.x_UserLut_Params;
    let x_534 : vec4<f32> = u_xlat2;
    let x_537 : vec4<f32> = u_xlat1;
    let x_539 : vec3<f32> = ((vec3<f32>(x_532.w, x_532.w, x_532.w) * vec3<f32>(x_534.x, x_534.y, x_534.z)) + vec3<f32>(x_537.x, x_537.y, x_537.z));
    let x_540 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
    let x_542 : vec4<f32> = u_xlat1;
    let x_546 : vec3<f32> = (vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_547 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
    let x_549 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_549.x, x_549.y, x_549.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_554 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_554 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_558 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_558));
    let x_561 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_561 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_565 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_565);
    let x_570 : vec4<f32> = u_xlat1;
    let x_572 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_570.x, x_570.y, x_570.z, x_570.x));
    u_xlatb1 = vec3<bool>(x_572.x, x_572.y, x_572.z);
    let x_575 : bool = u_xlatb1.x;
    if (x_575) {
      let x_580 : f32 = u_xlat2.x;
      x_576 = x_580;
    } else {
      let x_583 : f32 = u_xlat3.x;
      x_576 = x_583;
    }
    let x_584 : f32 = x_576;
    u_xlat0.x = x_584;
    let x_587 : bool = u_xlatb1.y;
    if (x_587) {
      let x_592 : f32 = u_xlat2.y;
      x_588 = x_592;
    } else {
      let x_595 : f32 = u_xlat3.y;
      x_588 = x_595;
    }
    let x_596 : f32 = x_588;
    u_xlat0.y = x_596;
    let x_599 : bool = u_xlatb1.z;
    if (x_599) {
      let x_604 : f32 = u_xlat2.z;
      x_600 = x_604;
    } else {
      let x_607 : f32 = u_xlat3.z;
      x_600 = x_607;
    }
    let x_608 : f32 = x_600;
    u_xlat0.z = x_608;
  }
  let x_610 : vec4<f32> = u_xlat0;
  let x_613 : vec4<f32> = x_13.x_Lut_Params;
  let x_615 : vec3<f32> = (vec3<f32>(x_610.x, x_610.y, x_610.z) * vec3<f32>(x_613.z, x_613.z, x_613.z));
  let x_616 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_615.z);
  let x_619 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_619);
  let x_622 : vec4<f32> = x_13.x_Lut_Params;
  let x_624 : vec2<f32> = (vec2<f32>(x_622.x, x_622.y) * vec2<f32>(0.5f, 0.5f));
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat0;
  let x_630 : vec4<f32> = x_13.x_Lut_Params;
  let x_633 : vec4<f32> = u_xlat1;
  let x_635 : vec2<f32> = ((vec2<f32>(x_627.x, x_627.y) * vec2<f32>(x_630.x, x_630.y)) + vec2<f32>(x_633.x, x_633.y));
  let x_636 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_636.x, x_635.x, x_635.y, x_636.w);
  let x_638 : f32 = u_xlat15;
  let x_640 : f32 = x_13.x_Lut_Params.y;
  let x_643 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_638 * x_640) + x_643);
  let x_650 : vec4<f32> = u_xlat1;
  let x_652 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_650.x, x_650.z), 0.0f);
  let x_653 : vec3<f32> = vec3<f32>(x_652.x, x_652.y, x_652.z);
  let x_654 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_657 : f32 = x_13.x_Lut_Params.y;
  u_xlat0.x = x_657;
  u_xlat0.y = 0.0f;
  let x_660 : vec4<f32> = u_xlat0;
  let x_662 : vec4<f32> = u_xlat1;
  let x_664 : vec2<f32> = (vec2<f32>(x_660.x, x_660.y) + vec2<f32>(x_662.x, x_662.z));
  let x_665 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_670.x, x_670.y), 0.0f);
  let x_673 : vec3<f32> = vec3<f32>(x_672.x, x_672.y, x_672.z);
  let x_674 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_677 : f32 = u_xlat0.z;
  let x_679 : f32 = x_13.x_Lut_Params.z;
  let x_681 : f32 = u_xlat15;
  u_xlat0.x = ((x_677 * x_679) + -(x_681));
  let x_686 : vec4<f32> = u_xlat2;
  let x_689 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_686.x, x_686.y, x_686.z)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat0;
  let x_694 : vec3<f32> = u_xlat5;
  let x_696 : vec4<f32> = u_xlat2;
  let x_698 : vec3<f32> = ((vec3<f32>(x_692.x, x_692.x, x_692.x) * x_694) + vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat0;
  let x_703 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_704 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat0;
  let x_709 : vec3<f32> = log2(abs(vec3<f32>(x_706.x, x_706.y, x_706.z)));
  let x_710 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec4<f32> = u_xlat2;
  let x_714 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat2;
  let x_719 : vec3<f32> = exp2(vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat2;
  let x_725 : vec3<f32> = ((vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_726 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_729 : vec4<f32> = u_xlat0;
  let x_731 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_729.x, x_729.y, x_729.z, x_729.x));
  u_xlatb0 = vec3<bool>(x_731.x, x_731.y, x_731.z);
  let x_736 : bool = u_xlatb0.x;
  if (x_736) {
    let x_741 : f32 = u_xlat1.x;
    x_737 = x_741;
  } else {
    let x_744 : f32 = u_xlat2.x;
    x_737 = x_744;
  }
  let x_745 : f32 = x_737;
  SV_Target0.x = x_745;
  let x_749 : bool = u_xlatb0.y;
  if (x_749) {
    let x_754 : f32 = u_xlat1.y;
    x_750 = x_754;
  } else {
    let x_757 : f32 = u_xlat2.y;
    x_750 = x_757;
  }
  let x_758 : f32 = x_750;
  SV_Target0.y = x_758;
  let x_761 : bool = u_xlatb0.z;
  if (x_761) {
    let x_766 : f32 = u_xlat1.z;
    x_762 = x_766;
  } else {
    let x_769 : f32 = u_xlat2.z;
    x_762 = x_769;
  }
  let x_770 : f32 = x_762;
  SV_Target0.z = x_770;
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


