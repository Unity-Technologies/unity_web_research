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
  /* @offset(208) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

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

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_497 : f32;
  var x_509 : f32;
  var x_521 : f32;
  var x_691 : f32;
  var x_703 : f32;
  var x_715 : f32;
  var x_921 : f32;
  var x_933 : f32;
  var x_945 : f32;
  var x_1035 : f32;
  var x_1047 : f32;
  var x_1059 : f32;
  var x_1116 : f32;
  var x_1128 : f32;
  var x_1140 : f32;
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
  let x_437 : vec3<f32> = clamp(vec3<f32>(x_433.x, x_433.y, x_433.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_442 : f32 = x_13.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_442);
  let x_444 : bool = u_xlatb18;
  if (x_444) {
    let x_447 : vec4<f32> = u_xlat0;
    let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_452 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
    let x_454 : vec4<f32> = u_xlat0;
    let x_456 : vec3<f32> = log2(vec3<f32>(x_454.x, x_454.y, x_454.z));
    let x_457 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
    let x_459 : vec4<f32> = u_xlat2;
    let x_463 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_464 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
    let x_466 : vec4<f32> = u_xlat2;
    let x_468 : vec3<f32> = exp2(vec3<f32>(x_466.x, x_466.y, x_466.z));
    let x_469 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
    let x_471 : vec4<f32> = u_xlat2;
    let x_478 : vec3<f32> = ((vec3<f32>(x_471.x, x_471.y, x_471.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_479 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
    let x_486 : vec4<f32> = u_xlat0;
    let x_489 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_486.x, x_486.y, x_486.z, x_486.x));
    u_xlatb3 = vec3<bool>(x_489.x, x_489.y, x_489.z);
    let x_493 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_493;
    let x_495 : bool = u_xlatb3.x;
    if (x_495) {
      let x_501 : f32 = u_xlat1.x;
      x_497 = x_501;
    } else {
      let x_504 : f32 = u_xlat2.x;
      x_497 = x_504;
    }
    let x_505 : f32 = x_497;
    hlslcc_movcTemp.x = x_505;
    let x_508 : bool = u_xlatb3.y;
    if (x_508) {
      let x_513 : f32 = u_xlat1.y;
      x_509 = x_513;
    } else {
      let x_516 : f32 = u_xlat2.y;
      x_509 = x_516;
    }
    let x_517 : f32 = x_509;
    hlslcc_movcTemp.y = x_517;
    let x_520 : bool = u_xlatb3.z;
    if (x_520) {
      let x_525 : f32 = u_xlat1.z;
      x_521 = x_525;
    } else {
      let x_528 : f32 = u_xlat2.z;
      x_521 = x_528;
    }
    let x_529 : f32 = x_521;
    hlslcc_movcTemp.z = x_529;
    let x_531 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_531;
    let x_532 : vec4<f32> = u_xlat1;
    let x_535 : vec4<f32> = x_13.x_UserLut_Params;
    let x_537 : vec3<f32> = (vec3<f32>(x_532.z, x_532.x, x_532.y) * vec3<f32>(x_535.z, x_535.z, x_535.z));
    let x_538 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
    let x_541 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_541);
    let x_544 : vec4<f32> = x_13.x_UserLut_Params;
    let x_546 : vec2<f32> = (vec2<f32>(x_544.x, x_544.y) * vec2<f32>(0.5f, 0.5f));
    let x_547 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_546.x, x_547.y, x_547.z, x_546.y);
    let x_549 : vec4<f32> = u_xlat2;
    let x_552 : vec4<f32> = x_13.x_UserLut_Params;
    let x_555 : vec4<f32> = u_xlat2;
    let x_557 : vec2<f32> = ((vec2<f32>(x_549.y, x_549.z) * vec2<f32>(x_552.x, x_552.y)) + vec2<f32>(x_555.x, x_555.w));
    let x_558 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_558.x, x_557.x, x_557.y, x_558.w);
    let x_560 : f32 = u_xlat18;
    let x_562 : f32 = x_13.x_UserLut_Params.y;
    let x_565 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_560 * x_562) + x_565);
    let x_572 : vec4<f32> = u_xlat2;
    let x_574 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_572.x, x_572.z), 0.0f);
    let x_575 : vec3<f32> = vec3<f32>(x_574.x, x_574.y, x_574.z);
    let x_576 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
    let x_579 : f32 = x_13.x_UserLut_Params.y;
    u_xlat4.x = x_579;
    u_xlat4.y = 0.0f;
    let x_582 : vec4<f32> = u_xlat2;
    let x_584 : vec4<f32> = u_xlat4;
    let x_586 : vec2<f32> = (vec2<f32>(x_582.x, x_582.z) + vec2<f32>(x_584.x, x_584.y));
    let x_587 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
    let x_592 : vec4<f32> = u_xlat2;
    let x_594 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_592.x, x_592.y), 0.0f);
    let x_595 : vec3<f32> = vec3<f32>(x_594.x, x_594.y, x_594.z);
    let x_596 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
    let x_599 : f32 = u_xlat1.z;
    let x_601 : f32 = x_13.x_UserLut_Params.z;
    let x_603 : f32 = u_xlat18;
    u_xlat18 = ((x_599 * x_601) + -(x_603));
    let x_606 : vec4<f32> = u_xlat3;
    let x_609 : vec4<f32> = u_xlat2;
    let x_611 : vec3<f32> = (-(vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
    let x_612 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
    let x_614 : f32 = u_xlat18;
    let x_616 : vec4<f32> = u_xlat2;
    let x_619 : vec4<f32> = u_xlat3;
    let x_621 : vec3<f32> = ((vec3<f32>(x_614, x_614, x_614) * vec3<f32>(x_616.x, x_616.y, x_616.z)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
    let x_622 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
    let x_624 : vec4<f32> = u_xlat1;
    let x_627 : vec4<f32> = u_xlat2;
    let x_629 : vec3<f32> = (-(vec3<f32>(x_624.x, x_624.y, x_624.z)) + vec3<f32>(x_627.x, x_627.y, x_627.z));
    let x_630 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
    let x_633 : vec4<f32> = x_13.x_UserLut_Params;
    let x_635 : vec4<f32> = u_xlat2;
    let x_638 : vec4<f32> = u_xlat1;
    let x_640 : vec3<f32> = ((vec3<f32>(x_633.w, x_633.w, x_633.w) * vec3<f32>(x_635.x, x_635.y, x_635.z)) + vec3<f32>(x_638.x, x_638.y, x_638.z));
    let x_641 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
    let x_643 : vec4<f32> = u_xlat1;
    let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_648 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
    let x_650 : vec4<f32> = u_xlat1;
    let x_654 : vec3<f32> = (vec3<f32>(x_650.x, x_650.y, x_650.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_655 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
    let x_657 : vec4<f32> = u_xlat3;
    let x_661 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_662 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
    let x_664 : vec4<f32> = u_xlat3;
    let x_667 : vec3<f32> = log2(abs(vec3<f32>(x_664.x, x_664.y, x_664.z)));
    let x_668 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
    let x_670 : vec4<f32> = u_xlat3;
    let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_675 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
    let x_677 : vec4<f32> = u_xlat3;
    let x_679 : vec3<f32> = exp2(vec3<f32>(x_677.x, x_677.y, x_677.z));
    let x_680 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
    let x_685 : vec4<f32> = u_xlat1;
    let x_687 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_685.x, x_685.y, x_685.z, x_685.x));
    u_xlatb1 = vec3<bool>(x_687.x, x_687.y, x_687.z);
    let x_690 : bool = u_xlatb1.x;
    if (x_690) {
      let x_695 : f32 = u_xlat2.x;
      x_691 = x_695;
    } else {
      let x_698 : f32 = u_xlat3.x;
      x_691 = x_698;
    }
    let x_699 : f32 = x_691;
    u_xlat0.x = x_699;
    let x_702 : bool = u_xlatb1.y;
    if (x_702) {
      let x_707 : f32 = u_xlat2.y;
      x_703 = x_707;
    } else {
      let x_710 : f32 = u_xlat3.y;
      x_703 = x_710;
    }
    let x_711 : f32 = x_703;
    u_xlat0.y = x_711;
    let x_714 : bool = u_xlatb1.z;
    if (x_714) {
      let x_719 : f32 = u_xlat2.z;
      x_715 = x_719;
    } else {
      let x_722 : f32 = u_xlat3.z;
      x_715 = x_722;
    }
    let x_723 : f32 = x_715;
    u_xlat0.z = x_723;
  }
  let x_725 : vec4<f32> = u_xlat0;
  let x_728 : vec4<f32> = x_13.x_Lut_Params;
  let x_730 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_728.z, x_728.z, x_728.z));
  let x_731 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_730.z);
  let x_734 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_734);
  let x_737 : vec4<f32> = x_13.x_Lut_Params;
  let x_739 : vec2<f32> = (vec2<f32>(x_737.x, x_737.y) * vec2<f32>(0.5f, 0.5f));
  let x_740 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat0;
  let x_745 : vec4<f32> = x_13.x_Lut_Params;
  let x_748 : vec4<f32> = u_xlat1;
  let x_750 : vec2<f32> = ((vec2<f32>(x_742.x, x_742.y) * vec2<f32>(x_745.x, x_745.y)) + vec2<f32>(x_748.x, x_748.y));
  let x_751 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_751.x, x_750.x, x_750.y, x_751.w);
  let x_753 : f32 = u_xlat18;
  let x_755 : f32 = x_13.x_Lut_Params.y;
  let x_758 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_753 * x_755) + x_758);
  let x_765 : vec4<f32> = u_xlat1;
  let x_767 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_765.x, x_765.z), 0.0f);
  let x_768 : vec3<f32> = vec3<f32>(x_767.x, x_767.y, x_767.z);
  let x_769 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_772 : f32 = x_13.x_Lut_Params.y;
  u_xlat0.x = x_772;
  u_xlat0.y = 0.0f;
  let x_775 : vec4<f32> = u_xlat0;
  let x_777 : vec4<f32> = u_xlat1;
  let x_779 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) + vec2<f32>(x_777.x, x_777.z));
  let x_780 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
  let x_785 : vec4<f32> = u_xlat0;
  let x_787 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_785.x, x_785.y), 0.0f);
  let x_788 : vec3<f32> = vec3<f32>(x_787.x, x_787.y, x_787.z);
  let x_789 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_792 : f32 = u_xlat0.z;
  let x_794 : f32 = x_13.x_Lut_Params.z;
  let x_796 : f32 = u_xlat18;
  u_xlat0.x = ((x_792 * x_794) + -(x_796));
  let x_802 : vec4<f32> = u_xlat2;
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_802.x, x_802.y, x_802.z)) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = u_xlat6;
  let x_812 : vec4<f32> = u_xlat2;
  let x_814 : vec3<f32> = ((vec3<f32>(x_808.x, x_808.x, x_808.x) * x_810) + vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec2<f32> = vs_TEXCOORD0;
  let x_820 : vec4<f32> = x_13.x_Grain_TilingParams;
  let x_824 : vec4<f32> = x_13.x_Grain_TilingParams;
  let x_826 : vec2<f32> = ((x_817 * vec2<f32>(x_820.x, x_820.y)) + vec2<f32>(x_824.z, x_824.w));
  let x_827 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
  let x_834 : vec4<f32> = u_xlat1;
  let x_837 : f32 = x_13.x_GlobalMipBias.x;
  let x_838 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_834.x, x_834.y), x_837);
  u_xlat18 = x_838.w;
  let x_840 : f32 = u_xlat18;
  u_xlat18 = (x_840 + -0.5f);
  let x_842 : f32 = u_xlat18;
  let x_843 : f32 = u_xlat18;
  u_xlat18 = (x_842 + x_843);
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_845.x, x_845.y, x_845.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_854 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_854);
  let x_859 : f32 = x_13.x_Grain_Params.y;
  let x_861 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_859 * -(x_861)) + 1.0f);
  let x_867 : f32 = u_xlat18;
  let x_869 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_867, x_867, x_867) * vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec3<f32> = u_xlat7;
  let x_875 : vec2<f32> = x_13.x_Grain_Params;
  u_xlat7 = (x_872 * vec3<f32>(x_875.x, x_875.x, x_875.x));
  let x_878 : vec3<f32> = u_xlat7;
  let x_879 : vec4<f32> = u_xlat1;
  let x_882 : vec4<f32> = u_xlat0;
  let x_884 : vec3<f32> = ((x_878 * vec3<f32>(x_879.x, x_879.x, x_879.x)) + vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_885 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat0;
  let x_889 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_890 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat0;
  let x_895 : vec3<f32> = log2(abs(vec3<f32>(x_892.x, x_892.y, x_892.z)));
  let x_896 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec4<f32> = u_xlat2;
  let x_900 : vec3<f32> = (vec3<f32>(x_898.x, x_898.y, x_898.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_901 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat2;
  let x_905 : vec3<f32> = exp2(vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec4<f32> = u_xlat2;
  let x_911 : vec3<f32> = ((vec3<f32>(x_908.x, x_908.y, x_908.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_912 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_915 : vec4<f32> = u_xlat0;
  let x_917 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_915.x, x_915.y, x_915.z, x_915.x));
  u_xlatb0 = vec3<bool>(x_917.x, x_917.y, x_917.z);
  let x_920 : bool = u_xlatb0.x;
  if (x_920) {
    let x_925 : f32 = u_xlat1.x;
    x_921 = x_925;
  } else {
    let x_928 : f32 = u_xlat2.x;
    x_921 = x_928;
  }
  let x_929 : f32 = x_921;
  u_xlat0.x = x_929;
  let x_932 : bool = u_xlatb0.y;
  if (x_932) {
    let x_937 : f32 = u_xlat1.y;
    x_933 = x_937;
  } else {
    let x_940 : f32 = u_xlat2.y;
    x_933 = x_940;
  }
  let x_941 : f32 = x_933;
  u_xlat0.y = x_941;
  let x_944 : bool = u_xlatb0.z;
  if (x_944) {
    let x_949 : f32 = u_xlat1.z;
    x_945 = x_949;
  } else {
    let x_952 : f32 = u_xlat2.z;
    x_945 = x_952;
  }
  let x_953 : f32 = x_945;
  u_xlat0.z = x_953;
  let x_955 : vec2<f32> = vs_TEXCOORD0;
  let x_958 : vec4<f32> = x_13.x_Dithering_Params;
  let x_962 : vec4<f32> = x_13.x_Dithering_Params;
  let x_964 : vec2<f32> = ((x_955 * vec2<f32>(x_958.x, x_958.y)) + vec2<f32>(x_962.z, x_962.w));
  let x_965 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_964.x, x_964.y, x_965.z, x_965.w);
  let x_972 : vec4<f32> = u_xlat1;
  let x_975 : f32 = x_13.x_GlobalMipBias.x;
  let x_976 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_972.x, x_972.y), x_975);
  u_xlat18 = x_976.w;
  let x_978 : f32 = u_xlat18;
  u_xlat18 = ((x_978 * 2.0f) + -1.0f);
  let x_982 : f32 = u_xlat18;
  u_xlatb1.x = (x_982 >= 0.0f);
  let x_986 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_986);
  let x_989 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_989)) + 1.0f);
  let x_993 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_993);
  let x_995 : f32 = u_xlat18;
  u_xlat18 = (-(x_995) + 1.0f);
  let x_998 : f32 = u_xlat18;
  let x_1000 : f32 = u_xlat1.x;
  u_xlat18 = (x_998 * x_1000);
  let x_1002 : vec4<f32> = u_xlat0;
  let x_1004 : vec3<f32> = (vec3<f32>(x_1002.x, x_1002.y, x_1002.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1005 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec4<f32> = u_xlat0;
  let x_1010 : vec3<f32> = log2(abs(vec3<f32>(x_1007.x, x_1007.y, x_1007.z)));
  let x_1011 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1013 : vec4<f32> = u_xlat2;
  let x_1015 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1016 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec4<f32> = u_xlat2;
  let x_1020 : vec3<f32> = exp2(vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec4<f32> = u_xlat2;
  let x_1026 : vec3<f32> = ((vec3<f32>(x_1023.x, x_1023.y, x_1023.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1027 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat0;
  let x_1031 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1029.x));
  u_xlatb0 = vec3<bool>(x_1031.x, x_1031.y, x_1031.z);
  let x_1034 : bool = u_xlatb0.x;
  if (x_1034) {
    let x_1039 : f32 = u_xlat1.x;
    x_1035 = x_1039;
  } else {
    let x_1042 : f32 = u_xlat2.x;
    x_1035 = x_1042;
  }
  let x_1043 : f32 = x_1035;
  u_xlat0.x = x_1043;
  let x_1046 : bool = u_xlatb0.y;
  if (x_1046) {
    let x_1051 : f32 = u_xlat1.y;
    x_1047 = x_1051;
  } else {
    let x_1054 : f32 = u_xlat2.y;
    x_1047 = x_1054;
  }
  let x_1055 : f32 = x_1047;
  u_xlat0.y = x_1055;
  let x_1058 : bool = u_xlatb0.z;
  if (x_1058) {
    let x_1063 : f32 = u_xlat1.z;
    x_1059 = x_1063;
  } else {
    let x_1066 : f32 = u_xlat2.z;
    x_1059 = x_1066;
  }
  let x_1067 : f32 = x_1059;
  u_xlat0.z = x_1067;
  let x_1069 : f32 = u_xlat18;
  let x_1074 : vec4<f32> = u_xlat0;
  let x_1076 : vec3<f32> = ((vec3<f32>(x_1069, x_1069, x_1069) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1077 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : vec4<f32> = u_xlat0;
  let x_1081 : vec3<f32> = (vec3<f32>(x_1079.x, x_1079.y, x_1079.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1082 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  let x_1084 : vec4<f32> = u_xlat0;
  let x_1086 : vec3<f32> = (vec3<f32>(x_1084.x, x_1084.y, x_1084.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1087 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  let x_1089 : vec4<f32> = u_xlat2;
  let x_1091 : vec3<f32> = (vec3<f32>(x_1089.x, x_1089.y, x_1089.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1092 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
  let x_1094 : vec4<f32> = u_xlat2;
  let x_1097 : vec3<f32> = log2(abs(vec3<f32>(x_1094.x, x_1094.y, x_1094.z)));
  let x_1098 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec4<f32> = u_xlat2;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1100.x, x_1100.y, x_1100.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1103 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : vec4<f32> = u_xlat2;
  let x_1107 : vec3<f32> = exp2(vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1108 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec4<f32> = u_xlat0;
  let x_1112 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1110.x));
  u_xlatb0 = vec3<bool>(x_1112.x, x_1112.y, x_1112.z);
  let x_1115 : bool = u_xlatb0.x;
  if (x_1115) {
    let x_1120 : f32 = u_xlat1.x;
    x_1116 = x_1120;
  } else {
    let x_1123 : f32 = u_xlat2.x;
    x_1116 = x_1123;
  }
  let x_1124 : f32 = x_1116;
  u_xlat0.x = x_1124;
  let x_1127 : bool = u_xlatb0.y;
  if (x_1127) {
    let x_1132 : f32 = u_xlat1.y;
    x_1128 = x_1132;
  } else {
    let x_1135 : f32 = u_xlat2.y;
    x_1128 = x_1135;
  }
  let x_1136 : f32 = x_1128;
  u_xlat0.y = x_1136;
  let x_1139 : bool = u_xlatb0.z;
  if (x_1139) {
    let x_1144 : f32 = u_xlat1.z;
    x_1140 = x_1144;
  } else {
    let x_1147 : f32 = u_xlat2.z;
    x_1140 = x_1147;
  }
  let x_1148 : f32 = x_1140;
  u_xlat0.z = x_1148;
  let x_1152 : vec4<f32> = u_xlat0;
  let x_1155 : vec3<f32> = max(vec3<f32>(x_1152.x, x_1152.y, x_1152.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1156 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
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


