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

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_333 : f32;
  var x_345 : f32;
  var x_357 : f32;
  var x_512 : f32;
  var x_524 : f32;
  var x_536 : f32;
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
  let x_273 : vec3<f32> = clamp(vec3<f32>(x_269.x, x_269.y, x_269.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_278 : f32 = x_13.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_278);
  let x_280 : bool = u_xlatb15;
  if (x_280) {
    let x_283 : vec4<f32> = u_xlat0;
    let x_287 : vec3<f32> = (vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_288 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
    let x_290 : vec4<f32> = u_xlat0;
    let x_292 : vec3<f32> = log2(vec3<f32>(x_290.x, x_290.y, x_290.z));
    let x_293 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
    let x_295 : vec4<f32> = u_xlat2;
    let x_299 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_300 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat2;
    let x_304 : vec3<f32> = exp2(vec3<f32>(x_302.x, x_302.y, x_302.z));
    let x_305 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : vec4<f32> = u_xlat2;
    let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_315 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_322 : vec4<f32> = u_xlat0;
    let x_325 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_322.x, x_322.y, x_322.z, x_322.x));
    u_xlatb3 = vec3<bool>(x_325.x, x_325.y, x_325.z);
    let x_329 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_329;
    let x_331 : bool = u_xlatb3.x;
    if (x_331) {
      let x_337 : f32 = u_xlat1.x;
      x_333 = x_337;
    } else {
      let x_340 : f32 = u_xlat2.x;
      x_333 = x_340;
    }
    let x_341 : f32 = x_333;
    hlslcc_movcTemp.x = x_341;
    let x_344 : bool = u_xlatb3.y;
    if (x_344) {
      let x_349 : f32 = u_xlat1.y;
      x_345 = x_349;
    } else {
      let x_352 : f32 = u_xlat2.y;
      x_345 = x_352;
    }
    let x_353 : f32 = x_345;
    hlslcc_movcTemp.y = x_353;
    let x_356 : bool = u_xlatb3.z;
    if (x_356) {
      let x_361 : f32 = u_xlat1.z;
      x_357 = x_361;
    } else {
      let x_364 : f32 = u_xlat2.z;
      x_357 = x_364;
    }
    let x_365 : f32 = x_357;
    hlslcc_movcTemp.z = x_365;
    let x_367 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_367;
    let x_368 : vec4<f32> = u_xlat1;
    let x_371 : vec4<f32> = x_13.x_UserLut_Params;
    let x_373 : vec3<f32> = (vec3<f32>(x_368.z, x_368.x, x_368.y) * vec3<f32>(x_371.z, x_371.z, x_371.z));
    let x_374 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
    let x_377 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_377);
    let x_380 : vec4<f32> = x_13.x_UserLut_Params;
    let x_382 : vec2<f32> = (vec2<f32>(x_380.x, x_380.y) * vec2<f32>(0.5f, 0.5f));
    let x_383 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_382.x, x_383.y, x_383.z, x_382.y);
    let x_385 : vec4<f32> = u_xlat2;
    let x_388 : vec4<f32> = x_13.x_UserLut_Params;
    let x_391 : vec4<f32> = u_xlat2;
    let x_393 : vec2<f32> = ((vec2<f32>(x_385.y, x_385.z) * vec2<f32>(x_388.x, x_388.y)) + vec2<f32>(x_391.x, x_391.w));
    let x_394 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_394.x, x_393.x, x_393.y, x_394.w);
    let x_396 : f32 = u_xlat15;
    let x_398 : f32 = x_13.x_UserLut_Params.y;
    let x_401 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_396 * x_398) + x_401);
    let x_410 : vec4<f32> = u_xlat2;
    let x_412 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_410.x, x_410.z), 0.0f);
    u_xlat3 = vec3<f32>(x_412.x, x_412.y, x_412.z);
    let x_417 : f32 = x_13.x_UserLut_Params.y;
    u_xlat4.x = x_417;
    u_xlat4.y = 0.0f;
    let x_420 : vec4<f32> = u_xlat2;
    let x_422 : vec2<f32> = u_xlat4;
    let x_423 : vec2<f32> = (vec2<f32>(x_420.x, x_420.z) + x_422);
    let x_424 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
    let x_429 : vec4<f32> = u_xlat2;
    let x_431 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_429.x, x_429.y), 0.0f);
    let x_432 : vec3<f32> = vec3<f32>(x_431.x, x_431.y, x_431.z);
    let x_433 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_436 : f32 = u_xlat1.z;
    let x_438 : f32 = x_13.x_UserLut_Params.z;
    let x_440 : f32 = u_xlat15;
    u_xlat15 = ((x_436 * x_438) + -(x_440));
    let x_443 : vec3<f32> = u_xlat3;
    let x_445 : vec4<f32> = u_xlat2;
    let x_447 : vec3<f32> = (-(x_443) + vec3<f32>(x_445.x, x_445.y, x_445.z));
    let x_448 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
    let x_450 : f32 = u_xlat15;
    let x_452 : vec4<f32> = u_xlat2;
    let x_455 : vec3<f32> = u_xlat3;
    let x_456 : vec3<f32> = ((vec3<f32>(x_450, x_450, x_450) * vec3<f32>(x_452.x, x_452.y, x_452.z)) + x_455);
    let x_457 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
    let x_459 : vec4<f32> = u_xlat1;
    let x_462 : vec4<f32> = u_xlat2;
    let x_464 : vec3<f32> = (-(vec3<f32>(x_459.x, x_459.y, x_459.z)) + vec3<f32>(x_462.x, x_462.y, x_462.z));
    let x_465 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
    let x_468 : vec4<f32> = x_13.x_UserLut_Params;
    let x_470 : vec4<f32> = u_xlat2;
    let x_473 : vec4<f32> = u_xlat1;
    let x_475 : vec3<f32> = ((vec3<f32>(x_468.w, x_468.w, x_468.w) * vec3<f32>(x_470.x, x_470.y, x_470.z)) + vec3<f32>(x_473.x, x_473.y, x_473.z));
    let x_476 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
    let x_478 : vec4<f32> = u_xlat1;
    let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_483 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
    let x_485 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_485.x, x_485.y, x_485.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_490 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_490 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_494 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_494));
    let x_497 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_497 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_501 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_501);
    let x_506 : vec4<f32> = u_xlat1;
    let x_508 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_506.x, x_506.y, x_506.z, x_506.x));
    u_xlatb1 = vec3<bool>(x_508.x, x_508.y, x_508.z);
    let x_511 : bool = u_xlatb1.x;
    if (x_511) {
      let x_516 : f32 = u_xlat2.x;
      x_512 = x_516;
    } else {
      let x_519 : f32 = u_xlat3.x;
      x_512 = x_519;
    }
    let x_520 : f32 = x_512;
    u_xlat0.x = x_520;
    let x_523 : bool = u_xlatb1.y;
    if (x_523) {
      let x_528 : f32 = u_xlat2.y;
      x_524 = x_528;
    } else {
      let x_531 : f32 = u_xlat3.y;
      x_524 = x_531;
    }
    let x_532 : f32 = x_524;
    u_xlat0.y = x_532;
    let x_535 : bool = u_xlatb1.z;
    if (x_535) {
      let x_540 : f32 = u_xlat2.z;
      x_536 = x_540;
    } else {
      let x_543 : f32 = u_xlat3.z;
      x_536 = x_543;
    }
    let x_544 : f32 = x_536;
    u_xlat0.z = x_544;
  }
  let x_546 : vec4<f32> = u_xlat0;
  let x_549 : vec4<f32> = x_13.x_Lut_Params;
  let x_551 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_549.z, x_549.z, x_549.z));
  let x_552 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_551.z);
  let x_555 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_555);
  let x_558 : vec4<f32> = x_13.x_Lut_Params;
  let x_560 : vec2<f32> = (vec2<f32>(x_558.x, x_558.y) * vec2<f32>(0.5f, 0.5f));
  let x_561 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat0;
  let x_566 : vec4<f32> = x_13.x_Lut_Params;
  let x_569 : vec4<f32> = u_xlat1;
  let x_571 : vec2<f32> = ((vec2<f32>(x_563.x, x_563.y) * vec2<f32>(x_566.x, x_566.y)) + vec2<f32>(x_569.x, x_569.y));
  let x_572 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_572.x, x_571.x, x_571.y, x_572.w);
  let x_574 : f32 = u_xlat15;
  let x_576 : f32 = x_13.x_Lut_Params.y;
  let x_579 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_574 * x_576) + x_579);
  let x_586 : vec4<f32> = u_xlat1;
  let x_588 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_586.x, x_586.z), 0.0f);
  let x_589 : vec3<f32> = vec3<f32>(x_588.x, x_588.y, x_588.z);
  let x_590 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_593 : f32 = x_13.x_Lut_Params.y;
  u_xlat0.x = x_593;
  u_xlat0.y = 0.0f;
  let x_596 : vec4<f32> = u_xlat0;
  let x_598 : vec4<f32> = u_xlat1;
  let x_600 : vec2<f32> = (vec2<f32>(x_596.x, x_596.y) + vec2<f32>(x_598.x, x_598.z));
  let x_601 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
  let x_606 : vec4<f32> = u_xlat0;
  let x_608 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_606.x, x_606.y), 0.0f);
  let x_609 : vec3<f32> = vec3<f32>(x_608.x, x_608.y, x_608.z);
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = u_xlat0.z;
  let x_615 : f32 = x_13.x_Lut_Params.z;
  let x_617 : f32 = u_xlat15;
  u_xlat0.x = ((x_613 * x_615) + -(x_617));
  let x_622 : vec4<f32> = u_xlat2;
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_622.x, x_622.y, x_622.z)) + vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec4<f32> = u_xlat0;
  let x_630 : vec3<f32> = u_xlat5;
  let x_632 : vec4<f32> = u_xlat2;
  let x_634 : vec3<f32> = ((vec3<f32>(x_628.x, x_628.x, x_628.x) * x_630) + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_639 : vec4<f32> = u_xlat0;
  let x_641 : vec3<f32> = sqrt(vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
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


