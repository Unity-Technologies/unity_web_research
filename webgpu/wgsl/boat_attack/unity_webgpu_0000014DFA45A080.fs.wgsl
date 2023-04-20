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
  x_Bloom_Texture_TexelSize : vec4<f32>,
  /* @offset(176) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

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

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_561 : f32;
  var x_573 : f32;
  var x_585 : f32;
  var x_755 : f32;
  var x_767 : f32;
  var x_779 : f32;
  var x_966 : f32;
  var x_978 : f32;
  var x_990 : f32;
  var x_1047 : f32;
  var x_1059 : f32;
  var x_1071 : f32;
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
  let x_81 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = x_13.x_Bloom_Texture_TexelSize;
  let x_88 : vec2<f32> = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(x_85.z, x_85.w)) + vec2<f32>(0.5f, 0.5f));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_89.z, x_89.w);
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat13 = floor(vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec4<f32> = u_xlat1;
  let x_98 : vec2<f32> = fract(vec2<f32>(x_96.x, x_96.y));
  let x_99 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_98.x, x_98.y, x_99.z, x_99.w);
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat2 = ((-(vec4<f32>(x_102.x, x_102.y, x_102.x, x_102.y)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_110 : vec4<f32> = u_xlat1;
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_110.x, x_110.y, x_110.x, x_110.y) * x_112) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_118 : vec4<f32> = u_xlat1;
  let x_123 : vec2<f32> = ((vec2<f32>(x_118.x, x_118.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec2<f32>(x_127.x, x_127.y) * vec2<f32>(x_129.x, x_129.y));
  let x_132 : vec2<f32> = u_xlat15;
  let x_133 : vec4<f32> = u_xlat3;
  let x_138 : vec2<f32> = ((x_132 * vec2<f32>(x_133.x, x_133.y)) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_141 : vec4<f32> = u_xlat1;
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_141.x, x_141.y, x_141.x, x_141.y) * x_143) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_147 : vec4<f32> = u_xlat3;
  let x_152 : vec2<f32> = (-(vec2<f32>(x_147.x, x_147.y)) + vec2<f32>(1.0f, 1.0f));
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_152.x, x_152.y, x_153.z, x_153.w);
  let x_155 : vec4<f32> = u_xlat2;
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec2<f32> = (-(vec2<f32>(x_155.x, x_155.y)) + vec2<f32>(x_158.x, x_158.y));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_161.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat2;
  let x_166 : vec4<f32> = u_xlat1;
  let x_168 : vec2<f32> = (-(vec2<f32>(x_163.z, x_163.w)) + vec2<f32>(x_166.x, x_166.y));
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_168.x, x_168.y, x_169.z, x_169.w);
  let x_172 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec2<f32>(x_172.x, x_172.y) + vec2<f32>(x_174.z, x_174.w));
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat2;
  let x_181 : vec2<f32> = (vec2<f32>(x_177.x, x_177.y) + vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
  let x_184 : vec2<f32> = u_xlat14;
  u_xlat15 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_184.x, x_184.y));
  let x_189 : vec4<f32> = u_xlat3;
  let x_191 : vec2<f32> = u_xlat15;
  let x_193 : vec2<f32> = ((vec2<f32>(x_189.x, x_189.y) * x_191) + vec2<f32>(-1.0f, -1.0f));
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_194.x, x_194.y, x_193.x, x_193.y);
  let x_197 : vec4<f32> = u_xlat2;
  let x_198 : vec2<f32> = vec2<f32>(x_197.x, x_197.y);
  let x_202 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_198.x, x_198.y));
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_203.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat1;
  let x_207 : vec4<f32> = u_xlat4;
  let x_210 : vec2<f32> = ((vec2<f32>(x_205.x, x_205.y) * vec2<f32>(x_207.x, x_207.y)) + vec2<f32>(1.0f, 1.0f));
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_211.z, x_211.w);
  let x_213 : vec2<f32> = u_xlat13;
  let x_215 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_213.x, x_213.y, x_213.x, x_213.y) + vec4<f32>(x_215.z, x_215.w, x_215.x, x_215.w));
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_218 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_221 : vec4<f32> = u_xlat4;
  let x_223 : vec4<f32> = x_13.x_Bloom_Texture_TexelSize;
  u_xlat4 = (x_221 * vec4<f32>(x_223.x, x_223.y, x_223.x, x_223.y));
  let x_226 : vec4<f32> = u_xlat4;
  u_xlat4 = min(x_226, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_234 : vec4<f32> = u_xlat4;
  let x_237 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_234.x, x_234.y), 0.0f);
  u_xlat5 = x_237;
  let x_241 : vec4<f32> = u_xlat4;
  let x_243 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_241.z, x_241.w), 0.0f);
  u_xlat4 = x_243;
  let x_244 : vec4<f32> = u_xlat2;
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_244.x, x_244.x, x_244.x, x_244.x) * x_246);
  let x_248 : vec2<f32> = u_xlat14;
  let x_250 : vec4<f32> = u_xlat5;
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_248.x, x_248.x, x_248.x, x_248.x) * x_250) + x_252);
  let x_254 : vec2<f32> = u_xlat13;
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_254.x, x_254.y, x_254.x, x_254.y) + vec4<f32>(x_256.z, x_256.y, x_256.x, x_256.y));
  let x_259 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_259 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_261 : vec4<f32> = u_xlat1;
  let x_263 : vec4<f32> = x_13.x_Bloom_Texture_TexelSize;
  u_xlat1 = (x_261 * vec4<f32>(x_263.x, x_263.y, x_263.x, x_263.y));
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat1 = min(x_266, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_271 : vec4<f32> = u_xlat1;
  let x_273 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_271.x, x_271.y), 0.0f);
  u_xlat3 = x_273;
  let x_277 : vec4<f32> = u_xlat1;
  let x_279 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_277.z, x_277.w), 0.0f);
  u_xlat1 = x_279;
  let x_280 : vec4<f32> = u_xlat1;
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_280 * vec4<f32>(x_281.x, x_281.x, x_281.x, x_281.x));
  let x_284 : vec2<f32> = u_xlat14;
  let x_286 : vec4<f32> = u_xlat3;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_284.x, x_284.x, x_284.x, x_284.x) * x_286) + x_288);
  let x_290 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_290 * vec4<f32>(x_291.y, x_291.y, x_291.y, x_291.y));
  let x_294 : vec2<f32> = u_xlat14;
  let x_296 : vec4<f32> = u_xlat4;
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_294.y, x_294.y, x_294.y, x_294.y) * x_296) + x_298);
  let x_305 : f32 = x_13.x_Bloom_RGBM;
  u_xlatb18 = (0.0f < x_305);
  let x_307 : bool = u_xlatb18;
  if (x_307) {
    let x_310 : vec4<f32> = u_xlat1;
    let x_312 : vec4<f32> = u_xlat1;
    let x_314 : vec3<f32> = (vec3<f32>(x_310.w, x_310.w, x_310.w) * vec3<f32>(x_312.x, x_312.y, x_312.z));
    let x_315 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_317 : vec4<f32> = u_xlat2;
    let x_321 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_322 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  }
  let x_324 : vec4<f32> = u_xlat1;
  let x_328 : vec4<f32> = x_13.x_Bloom_Params;
  let x_330 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_328.x, x_328.x, x_328.x));
  let x_331 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = x_13.x_Bloom_Params;
  let x_339 : vec4<f32> = u_xlat0;
  let x_341 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_336.y, x_336.z, x_336.w)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_347 : f32 = x_13.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_347);
  let x_349 : bool = u_xlatb18;
  if (x_349) {
    let x_352 : vec2<f32> = vs_TEXCOORD0;
    let x_354 : vec4<f32> = x_13.x_Vignette_Params2;
    let x_357 : vec2<f32> = (x_352 + -(vec2<f32>(x_354.x, x_354.y)));
    let x_358 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
    let x_360 : vec4<f32> = u_xlat1;
    let x_364 : vec4<f32> = x_13.x_Vignette_Params2;
    let x_366 : vec2<f32> = (abs(vec2<f32>(x_360.x, x_360.y)) * vec2<f32>(x_364.z, x_364.z));
    let x_367 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_367.x, x_366.x, x_366.y, x_367.w);
    let x_372 : f32 = u_xlat1.y;
    let x_376 : f32 = x_13.x_Vignette_Params1.w;
    u_xlat1.x = (x_372 * x_376);
    let x_380 : vec4<f32> = u_xlat1;
    let x_382 : vec4<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_380.x, x_380.z), vec2<f32>(x_382.x, x_382.z));
    let x_385 : f32 = u_xlat18;
    u_xlat18 = (-(x_385) + 1.0f);
    let x_388 : f32 = u_xlat18;
    u_xlat18 = max(x_388, 0.0f);
    let x_390 : f32 = u_xlat18;
    u_xlat18 = log2(x_390);
    let x_392 : f32 = u_xlat18;
    let x_394 : f32 = x_13.x_Vignette_Params2.w;
    u_xlat18 = (x_392 * x_394);
    let x_396 : f32 = u_xlat18;
    u_xlat18 = exp2(x_396);
    let x_399 : vec4<f32> = x_13.x_Vignette_Params1;
    let x_403 : vec3<f32> = (-(vec3<f32>(x_399.x, x_399.y, x_399.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_404 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
    let x_406 : f32 = u_xlat18;
    let x_408 : vec4<f32> = u_xlat1;
    let x_412 : vec4<f32> = x_13.x_Vignette_Params1;
    let x_414 : vec3<f32> = ((vec3<f32>(x_406, x_406, x_406) * vec3<f32>(x_408.x, x_408.y, x_408.z)) + vec3<f32>(x_412.x, x_412.y, x_412.z));
    let x_415 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_417 : vec4<f32> = u_xlat0;
    let x_419 : vec4<f32> = u_xlat1;
    let x_421 : vec3<f32> = (vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_419.x, x_419.y, x_419.z));
    let x_422 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  }
  let x_424 : vec4<f32> = u_xlat0;
  let x_428 : vec4<f32> = x_13.x_Lut_Params;
  let x_430 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_428.w, x_428.w, x_428.w));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat0;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_438 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat0;
  let x_447 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat1;
  let x_452 : vec4<f32> = u_xlat2;
  let x_457 : vec3<f32> = ((vec3<f32>(x_450.x, x_450.y, x_450.z) * vec3<f32>(x_452.x, x_452.y, x_452.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_458 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat0;
  let x_465 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_466 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat1;
  let x_470 : vec4<f32> = u_xlat0;
  let x_475 : vec3<f32> = ((vec3<f32>(x_468.x, x_468.y, x_468.z) * vec3<f32>(x_470.x, x_470.y, x_470.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat2;
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) / vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat0;
  let x_489 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_490 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat0;
  let x_494 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_495 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat0;
  let x_501 : vec3<f32> = clamp(vec3<f32>(x_497.x, x_497.y, x_497.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_506 : f32 = x_13.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_506);
  let x_508 : bool = u_xlatb18;
  if (x_508) {
    let x_511 : vec4<f32> = u_xlat0;
    let x_515 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_516 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
    let x_518 : vec4<f32> = u_xlat0;
    let x_520 : vec3<f32> = log2(vec3<f32>(x_518.x, x_518.y, x_518.z));
    let x_521 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
    let x_523 : vec4<f32> = u_xlat2;
    let x_527 : vec3<f32> = (vec3<f32>(x_523.x, x_523.y, x_523.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_528 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
    let x_530 : vec4<f32> = u_xlat2;
    let x_532 : vec3<f32> = exp2(vec3<f32>(x_530.x, x_530.y, x_530.z));
    let x_533 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
    let x_535 : vec4<f32> = u_xlat2;
    let x_542 : vec3<f32> = ((vec3<f32>(x_535.x, x_535.y, x_535.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_543 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
    let x_550 : vec4<f32> = u_xlat0;
    let x_553 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_550.x, x_550.y, x_550.z, x_550.x));
    u_xlatb3 = vec3<bool>(x_553.x, x_553.y, x_553.z);
    let x_557 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_557;
    let x_559 : bool = u_xlatb3.x;
    if (x_559) {
      let x_565 : f32 = u_xlat1.x;
      x_561 = x_565;
    } else {
      let x_568 : f32 = u_xlat2.x;
      x_561 = x_568;
    }
    let x_569 : f32 = x_561;
    hlslcc_movcTemp.x = x_569;
    let x_572 : bool = u_xlatb3.y;
    if (x_572) {
      let x_577 : f32 = u_xlat1.y;
      x_573 = x_577;
    } else {
      let x_580 : f32 = u_xlat2.y;
      x_573 = x_580;
    }
    let x_581 : f32 = x_573;
    hlslcc_movcTemp.y = x_581;
    let x_584 : bool = u_xlatb3.z;
    if (x_584) {
      let x_589 : f32 = u_xlat1.z;
      x_585 = x_589;
    } else {
      let x_592 : f32 = u_xlat2.z;
      x_585 = x_592;
    }
    let x_593 : f32 = x_585;
    hlslcc_movcTemp.z = x_593;
    let x_595 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_595;
    let x_596 : vec4<f32> = u_xlat1;
    let x_599 : vec4<f32> = x_13.x_UserLut_Params;
    let x_601 : vec3<f32> = (vec3<f32>(x_596.z, x_596.x, x_596.y) * vec3<f32>(x_599.z, x_599.z, x_599.z));
    let x_602 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
    let x_605 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_605);
    let x_608 : vec4<f32> = x_13.x_UserLut_Params;
    let x_610 : vec2<f32> = (vec2<f32>(x_608.x, x_608.y) * vec2<f32>(0.5f, 0.5f));
    let x_611 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_610.x, x_611.y, x_611.z, x_610.y);
    let x_613 : vec4<f32> = u_xlat2;
    let x_616 : vec4<f32> = x_13.x_UserLut_Params;
    let x_619 : vec4<f32> = u_xlat2;
    let x_621 : vec2<f32> = ((vec2<f32>(x_613.y, x_613.z) * vec2<f32>(x_616.x, x_616.y)) + vec2<f32>(x_619.x, x_619.w));
    let x_622 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_622.x, x_621.x, x_621.y, x_622.w);
    let x_624 : f32 = u_xlat18;
    let x_626 : f32 = x_13.x_UserLut_Params.y;
    let x_629 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_624 * x_626) + x_629);
    let x_636 : vec4<f32> = u_xlat2;
    let x_638 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_636.x, x_636.z), 0.0f);
    let x_639 : vec3<f32> = vec3<f32>(x_638.x, x_638.y, x_638.z);
    let x_640 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
    let x_643 : f32 = x_13.x_UserLut_Params.y;
    u_xlat4.x = x_643;
    u_xlat4.y = 0.0f;
    let x_646 : vec4<f32> = u_xlat2;
    let x_648 : vec4<f32> = u_xlat4;
    let x_650 : vec2<f32> = (vec2<f32>(x_646.x, x_646.z) + vec2<f32>(x_648.x, x_648.y));
    let x_651 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
    let x_656 : vec4<f32> = u_xlat2;
    let x_658 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_656.x, x_656.y), 0.0f);
    let x_659 : vec3<f32> = vec3<f32>(x_658.x, x_658.y, x_658.z);
    let x_660 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
    let x_663 : f32 = u_xlat1.z;
    let x_665 : f32 = x_13.x_UserLut_Params.z;
    let x_667 : f32 = u_xlat18;
    u_xlat18 = ((x_663 * x_665) + -(x_667));
    let x_670 : vec4<f32> = u_xlat3;
    let x_673 : vec4<f32> = u_xlat2;
    let x_675 : vec3<f32> = (-(vec3<f32>(x_670.x, x_670.y, x_670.z)) + vec3<f32>(x_673.x, x_673.y, x_673.z));
    let x_676 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
    let x_678 : f32 = u_xlat18;
    let x_680 : vec4<f32> = u_xlat2;
    let x_683 : vec4<f32> = u_xlat3;
    let x_685 : vec3<f32> = ((vec3<f32>(x_678, x_678, x_678) * vec3<f32>(x_680.x, x_680.y, x_680.z)) + vec3<f32>(x_683.x, x_683.y, x_683.z));
    let x_686 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
    let x_688 : vec4<f32> = u_xlat1;
    let x_691 : vec4<f32> = u_xlat2;
    let x_693 : vec3<f32> = (-(vec3<f32>(x_688.x, x_688.y, x_688.z)) + vec3<f32>(x_691.x, x_691.y, x_691.z));
    let x_694 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
    let x_697 : vec4<f32> = x_13.x_UserLut_Params;
    let x_699 : vec4<f32> = u_xlat2;
    let x_702 : vec4<f32> = u_xlat1;
    let x_704 : vec3<f32> = ((vec3<f32>(x_697.w, x_697.w, x_697.w) * vec3<f32>(x_699.x, x_699.y, x_699.z)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
    let x_705 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
    let x_707 : vec4<f32> = u_xlat1;
    let x_711 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_712 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
    let x_714 : vec4<f32> = u_xlat1;
    let x_718 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_719 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
    let x_721 : vec4<f32> = u_xlat3;
    let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_726 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
    let x_728 : vec4<f32> = u_xlat3;
    let x_731 : vec3<f32> = log2(abs(vec3<f32>(x_728.x, x_728.y, x_728.z)));
    let x_732 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
    let x_734 : vec4<f32> = u_xlat3;
    let x_738 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_739 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
    let x_741 : vec4<f32> = u_xlat3;
    let x_743 : vec3<f32> = exp2(vec3<f32>(x_741.x, x_741.y, x_741.z));
    let x_744 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
    let x_749 : vec4<f32> = u_xlat1;
    let x_751 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_749.x, x_749.y, x_749.z, x_749.x));
    u_xlatb1 = vec3<bool>(x_751.x, x_751.y, x_751.z);
    let x_754 : bool = u_xlatb1.x;
    if (x_754) {
      let x_759 : f32 = u_xlat2.x;
      x_755 = x_759;
    } else {
      let x_762 : f32 = u_xlat3.x;
      x_755 = x_762;
    }
    let x_763 : f32 = x_755;
    u_xlat0.x = x_763;
    let x_766 : bool = u_xlatb1.y;
    if (x_766) {
      let x_771 : f32 = u_xlat2.y;
      x_767 = x_771;
    } else {
      let x_774 : f32 = u_xlat3.y;
      x_767 = x_774;
    }
    let x_775 : f32 = x_767;
    u_xlat0.y = x_775;
    let x_778 : bool = u_xlatb1.z;
    if (x_778) {
      let x_783 : f32 = u_xlat2.z;
      x_779 = x_783;
    } else {
      let x_786 : f32 = u_xlat3.z;
      x_779 = x_786;
    }
    let x_787 : f32 = x_779;
    u_xlat0.z = x_787;
  }
  let x_789 : vec4<f32> = u_xlat0;
  let x_792 : vec4<f32> = x_13.x_Lut_Params;
  let x_794 : vec3<f32> = (vec3<f32>(x_789.x, x_789.y, x_789.z) * vec3<f32>(x_792.z, x_792.z, x_792.z));
  let x_795 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_794.x, x_794.y, x_795.z, x_794.z);
  let x_798 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_798);
  let x_801 : vec4<f32> = x_13.x_Lut_Params;
  let x_803 : vec2<f32> = (vec2<f32>(x_801.x, x_801.y) * vec2<f32>(0.5f, 0.5f));
  let x_804 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat0;
  let x_809 : vec4<f32> = x_13.x_Lut_Params;
  let x_812 : vec4<f32> = u_xlat1;
  let x_814 : vec2<f32> = ((vec2<f32>(x_806.x, x_806.y) * vec2<f32>(x_809.x, x_809.y)) + vec2<f32>(x_812.x, x_812.y));
  let x_815 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_814.x, x_814.y, x_815.w);
  let x_817 : f32 = u_xlat18;
  let x_819 : f32 = x_13.x_Lut_Params.y;
  let x_822 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_817 * x_819) + x_822);
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_829.x, x_829.z), 0.0f);
  let x_832 : vec3<f32> = vec3<f32>(x_831.x, x_831.y, x_831.z);
  let x_833 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_836 : f32 = x_13.x_Lut_Params.y;
  u_xlat0.x = x_836;
  u_xlat0.y = 0.0f;
  let x_839 : vec4<f32> = u_xlat0;
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec2<f32> = (vec2<f32>(x_839.x, x_839.y) + vec2<f32>(x_841.x, x_841.z));
  let x_844 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_843.x, x_843.y, x_844.z, x_844.w);
  let x_849 : vec4<f32> = u_xlat0;
  let x_851 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_849.x, x_849.y), 0.0f);
  let x_852 : vec3<f32> = vec3<f32>(x_851.x, x_851.y, x_851.z);
  let x_853 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_856 : f32 = u_xlat0.z;
  let x_858 : f32 = x_13.x_Lut_Params.z;
  let x_860 : f32 = u_xlat18;
  u_xlat0.x = ((x_856 * x_858) + -(x_860));
  let x_866 : vec4<f32> = u_xlat2;
  let x_869 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_866.x, x_866.y, x_866.z)) + vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec4<f32> = u_xlat0;
  let x_874 : vec3<f32> = u_xlat6;
  let x_876 : vec4<f32> = u_xlat2;
  let x_878 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * x_874) + vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_879 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_881 : vec4<f32> = u_xlat0;
  let x_883 : vec3<f32> = sqrt(vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec2<f32> = vs_TEXCOORD0;
  let x_889 : vec4<f32> = x_13.x_Dithering_Params;
  let x_893 : vec4<f32> = x_13.x_Dithering_Params;
  let x_895 : vec2<f32> = ((x_886 * vec2<f32>(x_889.x, x_889.y)) + vec2<f32>(x_893.z, x_893.w));
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
  let x_903 : vec4<f32> = u_xlat1;
  let x_906 : f32 = x_13.x_GlobalMipBias.x;
  let x_907 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_903.x, x_903.y), x_906);
  u_xlat18 = x_907.w;
  let x_909 : f32 = u_xlat18;
  u_xlat18 = ((x_909 * 2.0f) + -1.0f);
  let x_913 : f32 = u_xlat18;
  u_xlatb1.x = (x_913 >= 0.0f);
  let x_917 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_917);
  let x_920 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_920)) + 1.0f);
  let x_924 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_924);
  let x_926 : f32 = u_xlat18;
  u_xlat18 = (-(x_926) + 1.0f);
  let x_929 : f32 = u_xlat18;
  let x_931 : f32 = u_xlat1.x;
  u_xlat18 = (x_929 * x_931);
  let x_933 : vec4<f32> = u_xlat0;
  let x_935 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_936 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat0;
  let x_940 : vec3<f32> = log2(vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_945 : vec3<f32> = (vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_946 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec4<f32> = u_xlat2;
  let x_950 : vec3<f32> = exp2(vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec4<f32> = u_xlat2;
  let x_956 : vec3<f32> = ((vec3<f32>(x_953.x, x_953.y, x_953.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_957 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_960 : vec4<f32> = u_xlat0;
  let x_962 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_960.x, x_960.y, x_960.z, x_960.x));
  u_xlatb0 = vec3<bool>(x_962.x, x_962.y, x_962.z);
  let x_965 : bool = u_xlatb0.x;
  if (x_965) {
    let x_970 : f32 = u_xlat1.x;
    x_966 = x_970;
  } else {
    let x_973 : f32 = u_xlat2.x;
    x_966 = x_973;
  }
  let x_974 : f32 = x_966;
  u_xlat0.x = x_974;
  let x_977 : bool = u_xlatb0.y;
  if (x_977) {
    let x_982 : f32 = u_xlat1.y;
    x_978 = x_982;
  } else {
    let x_985 : f32 = u_xlat2.y;
    x_978 = x_985;
  }
  let x_986 : f32 = x_978;
  u_xlat0.y = x_986;
  let x_989 : bool = u_xlatb0.z;
  if (x_989) {
    let x_994 : f32 = u_xlat1.z;
    x_990 = x_994;
  } else {
    let x_997 : f32 = u_xlat2.z;
    x_990 = x_997;
  }
  let x_998 : f32 = x_990;
  u_xlat0.z = x_998;
  let x_1000 : f32 = u_xlat18;
  let x_1005 : vec4<f32> = u_xlat0;
  let x_1007 : vec3<f32> = ((vec3<f32>(x_1000, x_1000, x_1000) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1010 : vec4<f32> = u_xlat0;
  let x_1012 : vec3<f32> = (vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1013 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec4<f32> = u_xlat0;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1023 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : vec4<f32> = u_xlat2;
  let x_1028 : vec3<f32> = log2(abs(vec3<f32>(x_1025.x, x_1025.y, x_1025.z)));
  let x_1029 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
  let x_1031 : vec4<f32> = u_xlat2;
  let x_1033 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1034 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1036 : vec4<f32> = u_xlat2;
  let x_1038 : vec3<f32> = exp2(vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1039 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : vec4<f32> = u_xlat0;
  let x_1043 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1041.x));
  u_xlatb0 = vec3<bool>(x_1043.x, x_1043.y, x_1043.z);
  let x_1046 : bool = u_xlatb0.x;
  if (x_1046) {
    let x_1051 : f32 = u_xlat1.x;
    x_1047 = x_1051;
  } else {
    let x_1054 : f32 = u_xlat2.x;
    x_1047 = x_1054;
  }
  let x_1055 : f32 = x_1047;
  u_xlat0.x = x_1055;
  let x_1058 : bool = u_xlatb0.y;
  if (x_1058) {
    let x_1063 : f32 = u_xlat1.y;
    x_1059 = x_1063;
  } else {
    let x_1066 : f32 = u_xlat2.y;
    x_1059 = x_1066;
  }
  let x_1067 : f32 = x_1059;
  u_xlat0.y = x_1067;
  let x_1070 : bool = u_xlatb0.z;
  if (x_1070) {
    let x_1075 : f32 = u_xlat1.z;
    x_1071 = x_1075;
  } else {
    let x_1078 : f32 = u_xlat2.z;
    x_1071 = x_1078;
  }
  let x_1079 : f32 = x_1071;
  u_xlat0.z = x_1079;
  let x_1083 : vec4<f32> = u_xlat0;
  let x_1086 : vec3<f32> = max(vec3<f32>(x_1083.x, x_1083.y, x_1083.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1087 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
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


