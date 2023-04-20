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

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_354 : f32;
  var x_366 : f32;
  var x_378 : f32;
  var x_533 : f32;
  var x_545 : f32;
  var x_557 : f32;
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
  let x_139 : f32 = x_13.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_139);
  let x_141 : bool = u_xlatb15;
  if (x_141) {
    let x_144 : vec2<f32> = vs_TEXCOORD0;
    let x_146 : vec4<f32> = x_13.x_Vignette_Params2;
    let x_149 : vec2<f32> = (x_144 + -(vec2<f32>(x_146.x, x_146.y)));
    let x_150 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_149.x, x_149.y, x_150.z, x_150.w);
    let x_152 : vec4<f32> = u_xlat1;
    let x_156 : vec4<f32> = x_13.x_Vignette_Params2;
    let x_158 : vec2<f32> = (abs(vec2<f32>(x_152.x, x_152.y)) * vec2<f32>(x_156.z, x_156.z));
    let x_159 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_159.x, x_158.x, x_158.y, x_159.w);
    let x_164 : f32 = u_xlat1.y;
    let x_168 : f32 = x_13.x_Vignette_Params1.w;
    u_xlat1.x = (x_164 * x_168);
    let x_172 : vec4<f32> = u_xlat1;
    let x_174 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_172.x, x_172.z), vec2<f32>(x_174.x, x_174.z));
    let x_177 : f32 = u_xlat15;
    u_xlat15 = (-(x_177) + 1.0f);
    let x_181 : f32 = u_xlat15;
    u_xlat15 = max(x_181, 0.0f);
    let x_183 : f32 = u_xlat15;
    u_xlat15 = log2(x_183);
    let x_185 : f32 = u_xlat15;
    let x_187 : f32 = x_13.x_Vignette_Params2.w;
    u_xlat15 = (x_185 * x_187);
    let x_189 : f32 = u_xlat15;
    u_xlat15 = exp2(x_189);
    let x_192 : vec4<f32> = x_13.x_Vignette_Params1;
    let x_196 : vec3<f32> = (-(vec3<f32>(x_192.x, x_192.y, x_192.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_197 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : f32 = u_xlat15;
    let x_201 : vec4<f32> = u_xlat1;
    let x_205 : vec4<f32> = x_13.x_Vignette_Params1;
    let x_207 : vec3<f32> = ((vec3<f32>(x_199, x_199, x_199) * vec3<f32>(x_201.x, x_201.y, x_201.z)) + vec3<f32>(x_205.x, x_205.y, x_205.z));
    let x_208 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
    let x_210 : vec4<f32> = u_xlat0;
    let x_212 : vec4<f32> = u_xlat1;
    let x_214 : vec3<f32> = (vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.x, x_212.y, x_212.z));
    let x_215 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  }
  let x_217 : vec4<f32> = u_xlat0;
  let x_221 : vec4<f32> = x_13.x_Lut_Params;
  let x_223 : vec3<f32> = (vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_221.w, x_221.w, x_221.w));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat0;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat0;
  let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec4<f32> = u_xlat2;
  let x_250 : vec3<f32> = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.x, x_245.y, x_245.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat0;
  let x_258 : vec3<f32> = ((vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat1;
  let x_263 : vec4<f32> = u_xlat0;
  let x_268 : vec3<f32> = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.x, x_263.y, x_263.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) / vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat0;
  let x_282 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_290 : vec4<f32> = u_xlat0;
  let x_294 : vec3<f32> = clamp(vec3<f32>(x_290.x, x_290.y, x_290.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_299 : f32 = x_13.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_299);
  let x_301 : bool = u_xlatb15;
  if (x_301) {
    let x_304 : vec4<f32> = u_xlat0;
    let x_308 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_309 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_311 : vec4<f32> = u_xlat0;
    let x_313 : vec3<f32> = log2(vec3<f32>(x_311.x, x_311.y, x_311.z));
    let x_314 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat2;
    let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_321 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
    let x_323 : vec4<f32> = u_xlat2;
    let x_325 : vec3<f32> = exp2(vec3<f32>(x_323.x, x_323.y, x_323.z));
    let x_326 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
    let x_328 : vec4<f32> = u_xlat2;
    let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_336 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
    let x_343 : vec4<f32> = u_xlat0;
    let x_346 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_343.x, x_343.y, x_343.z, x_343.x));
    u_xlatb3 = vec3<bool>(x_346.x, x_346.y, x_346.z);
    let x_350 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_350;
    let x_352 : bool = u_xlatb3.x;
    if (x_352) {
      let x_358 : f32 = u_xlat1.x;
      x_354 = x_358;
    } else {
      let x_361 : f32 = u_xlat2.x;
      x_354 = x_361;
    }
    let x_362 : f32 = x_354;
    hlslcc_movcTemp.x = x_362;
    let x_365 : bool = u_xlatb3.y;
    if (x_365) {
      let x_370 : f32 = u_xlat1.y;
      x_366 = x_370;
    } else {
      let x_373 : f32 = u_xlat2.y;
      x_366 = x_373;
    }
    let x_374 : f32 = x_366;
    hlslcc_movcTemp.y = x_374;
    let x_377 : bool = u_xlatb3.z;
    if (x_377) {
      let x_382 : f32 = u_xlat1.z;
      x_378 = x_382;
    } else {
      let x_385 : f32 = u_xlat2.z;
      x_378 = x_385;
    }
    let x_386 : f32 = x_378;
    hlslcc_movcTemp.z = x_386;
    let x_388 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_388;
    let x_389 : vec4<f32> = u_xlat1;
    let x_392 : vec4<f32> = x_13.x_UserLut_Params;
    let x_394 : vec3<f32> = (vec3<f32>(x_389.z, x_389.x, x_389.y) * vec3<f32>(x_392.z, x_392.z, x_392.z));
    let x_395 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
    let x_398 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_398);
    let x_401 : vec4<f32> = x_13.x_UserLut_Params;
    let x_403 : vec2<f32> = (vec2<f32>(x_401.x, x_401.y) * vec2<f32>(0.5f, 0.5f));
    let x_404 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_403.x, x_404.y, x_404.z, x_403.y);
    let x_406 : vec4<f32> = u_xlat2;
    let x_409 : vec4<f32> = x_13.x_UserLut_Params;
    let x_412 : vec4<f32> = u_xlat2;
    let x_414 : vec2<f32> = ((vec2<f32>(x_406.y, x_406.z) * vec2<f32>(x_409.x, x_409.y)) + vec2<f32>(x_412.x, x_412.w));
    let x_415 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_415.x, x_414.x, x_414.y, x_415.w);
    let x_417 : f32 = u_xlat15;
    let x_419 : f32 = x_13.x_UserLut_Params.y;
    let x_422 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_417 * x_419) + x_422);
    let x_431 : vec4<f32> = u_xlat2;
    let x_433 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_431.x, x_431.z), 0.0f);
    u_xlat3 = vec3<f32>(x_433.x, x_433.y, x_433.z);
    let x_438 : f32 = x_13.x_UserLut_Params.y;
    u_xlat4.x = x_438;
    u_xlat4.y = 0.0f;
    let x_441 : vec4<f32> = u_xlat2;
    let x_443 : vec2<f32> = u_xlat4;
    let x_444 : vec2<f32> = (vec2<f32>(x_441.x, x_441.z) + x_443);
    let x_445 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
    let x_450 : vec4<f32> = u_xlat2;
    let x_452 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_450.x, x_450.y), 0.0f);
    let x_453 : vec3<f32> = vec3<f32>(x_452.x, x_452.y, x_452.z);
    let x_454 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
    let x_457 : f32 = u_xlat1.z;
    let x_459 : f32 = x_13.x_UserLut_Params.z;
    let x_461 : f32 = u_xlat15;
    u_xlat15 = ((x_457 * x_459) + -(x_461));
    let x_464 : vec3<f32> = u_xlat3;
    let x_466 : vec4<f32> = u_xlat2;
    let x_468 : vec3<f32> = (-(x_464) + vec3<f32>(x_466.x, x_466.y, x_466.z));
    let x_469 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
    let x_471 : f32 = u_xlat15;
    let x_473 : vec4<f32> = u_xlat2;
    let x_476 : vec3<f32> = u_xlat3;
    let x_477 : vec3<f32> = ((vec3<f32>(x_471, x_471, x_471) * vec3<f32>(x_473.x, x_473.y, x_473.z)) + x_476);
    let x_478 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_480 : vec4<f32> = u_xlat1;
    let x_483 : vec4<f32> = u_xlat2;
    let x_485 : vec3<f32> = (-(vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
    let x_486 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
    let x_489 : vec4<f32> = x_13.x_UserLut_Params;
    let x_491 : vec4<f32> = u_xlat2;
    let x_494 : vec4<f32> = u_xlat1;
    let x_496 : vec3<f32> = ((vec3<f32>(x_489.w, x_489.w, x_489.w) * vec3<f32>(x_491.x, x_491.y, x_491.z)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
    let x_497 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
    let x_499 : vec4<f32> = u_xlat1;
    let x_503 : vec3<f32> = (vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_504 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
    let x_506 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_506.x, x_506.y, x_506.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_511 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_511 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_515 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_515));
    let x_518 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_518 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_522 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_522);
    let x_527 : vec4<f32> = u_xlat1;
    let x_529 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_527.x, x_527.y, x_527.z, x_527.x));
    u_xlatb1 = vec3<bool>(x_529.x, x_529.y, x_529.z);
    let x_532 : bool = u_xlatb1.x;
    if (x_532) {
      let x_537 : f32 = u_xlat2.x;
      x_533 = x_537;
    } else {
      let x_540 : f32 = u_xlat3.x;
      x_533 = x_540;
    }
    let x_541 : f32 = x_533;
    u_xlat0.x = x_541;
    let x_544 : bool = u_xlatb1.y;
    if (x_544) {
      let x_549 : f32 = u_xlat2.y;
      x_545 = x_549;
    } else {
      let x_552 : f32 = u_xlat3.y;
      x_545 = x_552;
    }
    let x_553 : f32 = x_545;
    u_xlat0.y = x_553;
    let x_556 : bool = u_xlatb1.z;
    if (x_556) {
      let x_561 : f32 = u_xlat2.z;
      x_557 = x_561;
    } else {
      let x_564 : f32 = u_xlat3.z;
      x_557 = x_564;
    }
    let x_565 : f32 = x_557;
    u_xlat0.z = x_565;
  }
  let x_567 : vec4<f32> = u_xlat0;
  let x_570 : vec4<f32> = x_13.x_Lut_Params;
  let x_572 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(x_570.z, x_570.z, x_570.z));
  let x_573 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_572.z);
  let x_576 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_576);
  let x_579 : vec4<f32> = x_13.x_Lut_Params;
  let x_581 : vec2<f32> = (vec2<f32>(x_579.x, x_579.y) * vec2<f32>(0.5f, 0.5f));
  let x_582 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
  let x_584 : vec4<f32> = u_xlat0;
  let x_587 : vec4<f32> = x_13.x_Lut_Params;
  let x_590 : vec4<f32> = u_xlat1;
  let x_592 : vec2<f32> = ((vec2<f32>(x_584.x, x_584.y) * vec2<f32>(x_587.x, x_587.y)) + vec2<f32>(x_590.x, x_590.y));
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_593.x, x_592.x, x_592.y, x_593.w);
  let x_595 : f32 = u_xlat15;
  let x_597 : f32 = x_13.x_Lut_Params.y;
  let x_600 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_595 * x_597) + x_600);
  let x_607 : vec4<f32> = u_xlat1;
  let x_609 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_607.x, x_607.z), 0.0f);
  let x_610 : vec3<f32> = vec3<f32>(x_609.x, x_609.y, x_609.z);
  let x_611 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = x_13.x_Lut_Params.y;
  u_xlat0.x = x_614;
  u_xlat0.y = 0.0f;
  let x_617 : vec4<f32> = u_xlat0;
  let x_619 : vec4<f32> = u_xlat1;
  let x_621 : vec2<f32> = (vec2<f32>(x_617.x, x_617.y) + vec2<f32>(x_619.x, x_619.z));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
  let x_627 : vec4<f32> = u_xlat0;
  let x_629 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_627.x, x_627.y), 0.0f);
  let x_630 : vec3<f32> = vec3<f32>(x_629.x, x_629.y, x_629.z);
  let x_631 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = u_xlat0.z;
  let x_636 : f32 = x_13.x_Lut_Params.z;
  let x_638 : f32 = u_xlat15;
  u_xlat0.x = ((x_634 * x_636) + -(x_638));
  let x_643 : vec4<f32> = u_xlat2;
  let x_646 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_643.x, x_643.y, x_643.z)) + vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : vec4<f32> = u_xlat0;
  let x_651 : vec3<f32> = u_xlat5;
  let x_653 : vec4<f32> = u_xlat2;
  let x_655 : vec3<f32> = ((vec3<f32>(x_649.x, x_649.x, x_649.x) * x_651) + vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_660 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = sqrt(vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
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


