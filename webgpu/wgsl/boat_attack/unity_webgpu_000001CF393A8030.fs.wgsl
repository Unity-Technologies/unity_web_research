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
  x_Bloom_Texture_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat13 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

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
  var x_681 : f32;
  var x_690 : f32;
  var x_828 : f32;
  var x_879 : f32;
  var x_906 : f32;
  var x_930 : f32;
  var x_941 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1368 : f32;
  var x_1380 : f32;
  var x_1392 : f32;
  var x_1561 : f32;
  var x_1573 : f32;
  var x_1585 : f32;
  var x_1791 : f32;
  var x_1804 : f32;
  var x_1816 : f32;
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
  let x_137 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = x_38.x_Bloom_Texture_TexelSize;
  let x_144 : vec2<f32> = ((vec2<f32>(x_137.x, x_137.y) * vec2<f32>(x_141.z, x_141.w)) + vec2<f32>(0.5f, 0.5f));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_145.z, x_145.w);
  let x_149 : vec4<f32> = u_xlat0;
  u_xlat12 = floor(vec2<f32>(x_149.x, x_149.y));
  let x_152 : vec4<f32> = u_xlat0;
  let x_154 : vec2<f32> = fract(vec2<f32>(x_152.x, x_152.y));
  let x_155 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_154.x, x_154.y, x_155.z, x_155.w);
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat1 = ((-(vec4<f32>(x_157.x, x_157.y, x_157.x, x_157.y)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_164 : vec4<f32> = u_xlat0;
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_164.x, x_164.y, x_164.x, x_164.y) * x_166) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_172 : vec4<f32> = u_xlat0;
  let x_176 : vec2<f32> = ((vec2<f32>(x_172.x, x_172.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_180 : vec4<f32> = u_xlat0;
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat15 = (vec2<f32>(x_180.x, x_180.y) * vec2<f32>(x_182.x, x_182.y));
  let x_185 : vec2<f32> = u_xlat15;
  let x_186 : vec4<f32> = u_xlat3;
  let x_191 : vec2<f32> = ((x_185 * vec2<f32>(x_186.x, x_186.y)) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_191.x, x_191.y, x_192.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat0;
  let x_196 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_194.x, x_194.y, x_194.x, x_194.y) * x_196) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_200 : vec4<f32> = u_xlat3;
  let x_205 : vec2<f32> = (-(vec2<f32>(x_200.x, x_200.y)) + vec2<f32>(1.0f, 1.0f));
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_205.x, x_205.y, x_206.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat1;
  let x_211 : vec4<f32> = u_xlat0;
  let x_213 : vec2<f32> = (-(vec2<f32>(x_208.x, x_208.y)) + vec2<f32>(x_211.x, x_211.y));
  let x_214 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_213.x, x_213.y, x_214.z, x_214.w);
  let x_216 : vec4<f32> = u_xlat1;
  let x_219 : vec4<f32> = u_xlat0;
  let x_221 : vec2<f32> = (-(vec2<f32>(x_216.z, x_216.w)) + vec2<f32>(x_219.x, x_219.y));
  let x_222 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_221.x, x_221.y, x_222.z, x_222.w);
  let x_225 : vec4<f32> = u_xlat3;
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec2<f32>(x_225.x, x_225.y) + vec2<f32>(x_227.z, x_227.w));
  let x_230 : vec4<f32> = u_xlat0;
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : vec2<f32> = (vec2<f32>(x_230.x, x_230.y) + vec2<f32>(x_232.x, x_232.y));
  let x_235 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_234.x, x_234.y, x_235.z, x_235.w);
  let x_237 : vec2<f32> = u_xlat13;
  u_xlat15 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_237.x, x_237.y));
  let x_242 : vec4<f32> = u_xlat3;
  let x_244 : vec2<f32> = u_xlat15;
  let x_246 : vec2<f32> = ((vec2<f32>(x_242.x, x_242.y) * x_244) + vec2<f32>(-1.0f, -1.0f));
  let x_247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_247.y, x_246.x, x_246.y);
  let x_250 : vec4<f32> = u_xlat1;
  let x_251 : vec2<f32> = vec2<f32>(x_250.x, x_250.y);
  let x_255 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_251.x, x_251.y));
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_256.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = u_xlat4;
  let x_263 : vec2<f32> = ((vec2<f32>(x_258.x, x_258.y) * vec2<f32>(x_260.x, x_260.y)) + vec2<f32>(1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_264.w);
  let x_266 : vec2<f32> = u_xlat12;
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_266.x, x_266.y, x_266.x, x_266.y) + vec4<f32>(x_268.z, x_268.w, x_268.x, x_268.w));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_271 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_274 : vec4<f32> = u_xlat4;
  let x_276 : vec4<f32> = x_38.x_Bloom_Texture_TexelSize;
  u_xlat4 = (x_274 * vec4<f32>(x_276.x, x_276.y, x_276.x, x_276.y));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = min(x_279, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_287 : vec4<f32> = u_xlat4;
  let x_290 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_287.x, x_287.y), 0.0f);
  u_xlat5 = x_290;
  let x_294 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_294.z, x_294.w), 0.0f);
  u_xlat4 = x_296;
  let x_297 : vec4<f32> = u_xlat1;
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_297.x, x_297.x, x_297.x, x_297.x) * x_299);
  let x_301 : vec2<f32> = u_xlat13;
  let x_303 : vec4<f32> = u_xlat5;
  let x_305 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_301.x, x_301.x, x_301.x, x_301.x) * x_303) + x_305);
  let x_307 : vec2<f32> = u_xlat12;
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec4<f32>(x_307.x, x_307.y, x_307.x, x_307.y) + vec4<f32>(x_309.z, x_309.y, x_309.x, x_309.y));
  let x_312 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_312 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_314 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = x_38.x_Bloom_Texture_TexelSize;
  u_xlat0 = (x_314 * vec4<f32>(x_316.x, x_316.y, x_316.x, x_316.y));
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_319, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_324 : vec4<f32> = u_xlat0;
  let x_326 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_324.x, x_324.y), 0.0f);
  u_xlat3 = x_326;
  let x_330 : vec4<f32> = u_xlat0;
  let x_332 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_330.z, x_330.w), 0.0f);
  u_xlat0 = x_332;
  let x_333 : vec4<f32> = u_xlat0;
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_333 * vec4<f32>(x_334.x, x_334.x, x_334.x, x_334.x));
  let x_337 : vec2<f32> = u_xlat13;
  let x_339 : vec4<f32> = u_xlat3;
  let x_341 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_337.x, x_337.x, x_337.x, x_337.x) * x_339) + x_341);
  let x_343 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_343 * vec4<f32>(x_344.y, x_344.y, x_344.y, x_344.y));
  let x_347 : vec2<f32> = u_xlat13;
  let x_349 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_347.y, x_347.y, x_347.y, x_347.y) * x_349) + x_351);
  let x_358 : f32 = x_38.x_Bloom_RGBM;
  u_xlatb1 = (0.0f < x_358);
  let x_360 : bool = u_xlatb1;
  if (x_360) {
    let x_364 : vec4<f32> = u_xlat0;
    let x_366 : vec4<f32> = u_xlat0;
    let x_368 : vec3<f32> = (vec3<f32>(x_364.w, x_364.w, x_364.w) * vec3<f32>(x_366.x, x_366.y, x_366.z));
    let x_369 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat1;
    let x_375 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_376 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  }
  let x_378 : vec4<f32> = u_xlat0;
  let x_382 : vec4<f32> = x_38.x_Bloom_Params;
  let x_384 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(x_382.x, x_382.x, x_382.x));
  let x_385 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec4<f32> = u_xlat0;
  let x_390 : vec4<f32> = x_38.x_Bloom_Params;
  let x_393 : vec4<f32> = u_xlat2;
  let x_395 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_390.y, x_390.z, x_390.w)) + vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_401 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_401);
  let x_403 : bool = u_xlatb18;
  if (x_403) {
    let x_406 : vec2<f32> = vs_TEXCOORD0;
    let x_408 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_411 : vec2<f32> = (x_406 + -(vec2<f32>(x_408.x, x_408.y)));
    let x_412 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
    let x_414 : vec4<f32> = u_xlat1;
    let x_418 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_420 : vec2<f32> = (abs(vec2<f32>(x_414.x, x_414.y)) * vec2<f32>(x_418.z, x_418.z));
    let x_421 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_421.x, x_420.x, x_420.y, x_421.w);
    let x_424 : f32 = u_xlat1.y;
    let x_428 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat1.x = (x_424 * x_428);
    let x_432 : vec4<f32> = u_xlat1;
    let x_434 : vec4<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_432.x, x_432.z), vec2<f32>(x_434.x, x_434.z));
    let x_437 : f32 = u_xlat18;
    u_xlat18 = (-(x_437) + 1.0f);
    let x_440 : f32 = u_xlat18;
    u_xlat18 = max(x_440, 0.0f);
    let x_442 : f32 = u_xlat18;
    u_xlat18 = log2(x_442);
    let x_444 : f32 = u_xlat18;
    let x_446 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat18 = (x_444 * x_446);
    let x_448 : f32 = u_xlat18;
    u_xlat18 = exp2(x_448);
    let x_451 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_455 : vec3<f32> = (-(vec3<f32>(x_451.x, x_451.y, x_451.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_456 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
    let x_458 : f32 = u_xlat18;
    let x_460 : vec4<f32> = u_xlat1;
    let x_464 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_466 : vec3<f32> = ((vec3<f32>(x_458, x_458, x_458) * vec3<f32>(x_460.x, x_460.y, x_460.z)) + vec3<f32>(x_464.x, x_464.y, x_464.z));
    let x_467 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
    let x_469 : vec4<f32> = u_xlat0;
    let x_471 : vec4<f32> = u_xlat1;
    let x_473 : vec3<f32> = (vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_471.x, x_471.y, x_471.z));
    let x_474 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  }
  let x_476 : vec4<f32> = u_xlat0;
  let x_480 : vec4<f32> = x_38.x_Lut_Params;
  let x_482 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_480.w, x_480.w, x_480.w));
  let x_483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat7.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_499 : vec4<f32> = u_xlat0;
  u_xlat7.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_507 : vec4<f32> = u_xlat0;
  u_xlat7.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), vec3<f32>(x_507.x, x_507.y, x_507.z));
  let x_512 : f32 = u_xlat7.y;
  let x_514 : f32 = u_xlat7.x;
  u_xlat0.x = min(x_512, x_514);
  let x_518 : f32 = u_xlat7.z;
  let x_520 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_518, x_520);
  let x_525 : f32 = u_xlat7.y;
  let x_527 : f32 = u_xlat7.x;
  u_xlat6.x = max(x_525, x_527);
  let x_531 : f32 = u_xlat7.z;
  let x_533 : f32 = u_xlat6.x;
  u_xlat0.y = max(x_531, x_533);
  let x_536 : vec4<f32> = u_xlat0;
  let x_541 : vec3<f32> = max(vec3<f32>(x_536.x, x_536.y, x_536.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_542 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_545 : f32 = u_xlat0.x;
  let x_548 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_545) + x_548);
  let x_552 : f32 = u_xlat0.x;
  let x_554 : f32 = u_xlat0.z;
  u_xlat0.x = (x_552 / x_554);
  let x_557 : vec3<f32> = u_xlat7;
  let x_560 : vec3<f32> = u_xlat7;
  u_xlat6 = (-(vec3<f32>(x_557.y, x_557.x, x_557.z)) + vec3<f32>(x_560.z, x_560.y, x_560.x));
  let x_563 : vec3<f32> = u_xlat6;
  let x_565 : vec3<f32> = u_xlat7;
  let x_567 : vec2<f32> = (vec2<f32>(x_563.x, x_563.y) * vec2<f32>(x_565.z, x_565.y));
  let x_568 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_567.x, x_567.y, x_568.z);
  let x_571 : f32 = u_xlat6.y;
  let x_573 : f32 = u_xlat6.x;
  u_xlat6.x = (x_571 + x_573);
  let x_577 : f32 = u_xlat7.x;
  let x_579 : f32 = u_xlat6.z;
  let x_582 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_577 * x_579) + x_582);
  let x_586 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_586, 0.0f);
  let x_590 : f32 = u_xlat6.x;
  u_xlat6.x = sqrt(x_590);
  let x_594 : f32 = u_xlat7.y;
  let x_596 : f32 = u_xlat7.z;
  u_xlat12.x = (x_594 + x_596);
  let x_600 : f32 = u_xlat7.x;
  let x_602 : f32 = u_xlat12.x;
  u_xlat12.x = (x_600 + x_602);
  let x_606 : f32 = u_xlat6.x;
  let x_610 : f32 = u_xlat12.x;
  u_xlat6.x = ((x_606 * 1.75f) + x_610);
  let x_614 : f32 = u_xlat0.x;
  u_xlat18 = (x_614 + -0.40000000596046447754f);
  let x_617 : f32 = u_xlat18;
  u_xlat1.x = (x_617 * 2.5f);
  let x_622 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_622)) + 1.0f);
  let x_628 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_628, 0.0f);
  let x_631 : f32 = u_xlat18;
  u_xlatb18 = (x_631 >= 0.0f);
  let x_633 : bool = u_xlatb18;
  u_xlat18 = select(-1.0f, 1.0f, x_633);
  let x_636 : f32 = u_xlat1.x;
  let x_639 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_636) * x_639) + 1.0f);
  let x_643 : f32 = u_xlat18;
  let x_645 : f32 = u_xlat1.x;
  u_xlat6.z = ((x_643 * x_645) + 1.0f);
  let x_649 : vec3<f32> = u_xlat6;
  u_xlat12 = (vec2<f32>(x_649.x, x_649.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_657 : f32 = u_xlat6.x;
  u_xlatb1 = (0.15999999642372131348f >= x_657);
  let x_661 : f32 = u_xlat6.x;
  u_xlatb6 = (x_661 >= 0.47999998927116394043f);
  let x_666 : f32 = u_xlat12.x;
  u_xlat12.x = (0.07999999821186065674f / x_666);
  let x_670 : f32 = u_xlat12.x;
  u_xlat12.x = (x_670 + -0.5f);
  let x_674 : f32 = u_xlat12.x;
  let x_676 : f32 = u_xlat12.y;
  u_xlat12.x = (x_674 * x_676);
  let x_679 : bool = u_xlatb6;
  if (x_679) {
    x_681 = 0.0f;
  } else {
    let x_686 : f32 = u_xlat12.x;
    x_681 = x_686;
  }
  let x_687 : f32 = x_681;
  u_xlat6.x = x_687;
  let x_689 : bool = u_xlatb1;
  if (x_689) {
    let x_694 : f32 = u_xlat12.y;
    x_690 = x_694;
  } else {
    let x_697 : f32 = u_xlat6.x;
    x_690 = x_697;
  }
  let x_698 : f32 = x_690;
  u_xlat6.x = x_698;
  let x_701 : f32 = u_xlat6.x;
  u_xlat6.x = (x_701 + 1.0f);
  let x_704 : vec3<f32> = u_xlat6;
  let x_706 : vec3<f32> = u_xlat7;
  let x_707 : vec3<f32> = (vec3<f32>(x_704.x, x_704.x, x_704.x) * x_706);
  let x_708 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_708.x, x_707.x, x_707.y, x_707.z);
  let x_713 : vec4<f32> = u_xlat2;
  let x_715 : vec4<f32> = u_xlat2;
  let x_718 : vec4<bool> = (vec4<f32>(x_713.z, x_713.w, x_713.z, x_713.w) == vec4<f32>(x_715.y, x_715.z, x_715.y, x_715.z));
  u_xlatb12 = vec2<bool>(x_718.x, x_718.y);
  let x_721 : bool = u_xlatb12.y;
  let x_723 : bool = u_xlatb12.x;
  u_xlatb12.x = (x_721 & x_723);
  let x_727 : f32 = u_xlat7.y;
  let x_729 : f32 = u_xlat6.x;
  let x_732 : f32 = u_xlat2.w;
  u_xlat18 = ((x_727 * x_729) + -(x_732));
  let x_735 : f32 = u_xlat18;
  u_xlat18 = (x_735 * 1.73205077648162841797f);
  let x_739 : f32 = u_xlat2.y;
  let x_742 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_739 * 2.0f) + -(x_742));
  let x_747 : f32 = u_xlat7.z;
  let x_750 : f32 = u_xlat6.x;
  let x_753 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_747) * x_750) + x_753);
  let x_756 : f32 = u_xlat18;
  let x_759 : f32 = u_xlat1.x;
  u_xlat13.x = min(abs(x_756), abs(x_759));
  let x_764 : f32 = u_xlat18;
  let x_767 : f32 = u_xlat1.x;
  u_xlat19 = max(abs(x_764), abs(x_767));
  let x_770 : f32 = u_xlat19;
  u_xlat19 = (1.0f / x_770);
  let x_772 : f32 = u_xlat19;
  let x_774 : f32 = u_xlat13.x;
  u_xlat13.x = (x_772 * x_774);
  let x_778 : f32 = u_xlat13.x;
  let x_780 : f32 = u_xlat13.x;
  u_xlat19 = (x_778 * x_780);
  let x_782 : f32 = u_xlat19;
  u_xlat3.x = ((x_782 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_788 : f32 = u_xlat19;
  let x_790 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_788 * x_790) + 0.18014100193977355957f);
  let x_795 : f32 = u_xlat19;
  let x_797 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_795 * x_797) + -0.33029949665069580078f);
  let x_802 : f32 = u_xlat19;
  let x_804 : f32 = u_xlat3.x;
  u_xlat19 = ((x_802 * x_804) + 0.99986600875854492188f);
  let x_808 : f32 = u_xlat19;
  let x_810 : f32 = u_xlat13.x;
  u_xlat3.x = (x_808 * x_810);
  let x_815 : f32 = u_xlat1.x;
  let x_817 : f32 = u_xlat18;
  u_xlatb9 = (abs(x_815) < abs(x_817));
  let x_821 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_821 * -2.0f) + 1.57079637050628662109f);
  let x_827 : bool = u_xlatb9;
  if (x_827) {
    let x_832 : f32 = u_xlat3.x;
    x_828 = x_832;
  } else {
    x_828 = 0.0f;
  }
  let x_834 : f32 = x_828;
  u_xlat3.x = x_834;
  let x_837 : f32 = u_xlat13.x;
  let x_838 : f32 = u_xlat19;
  let x_841 : f32 = u_xlat3.x;
  u_xlat13.x = ((x_837 * x_838) + x_841);
  let x_846 : f32 = u_xlat1.x;
  let x_848 : f32 = u_xlat1.x;
  u_xlatb19 = (x_846 < -(x_848));
  let x_851 : bool = u_xlatb19;
  u_xlat19 = select(0.0f, -3.14159274101257324219f, x_851);
  let x_854 : f32 = u_xlat19;
  let x_856 : f32 = u_xlat13.x;
  u_xlat13.x = (x_854 + x_856);
  let x_859 : f32 = u_xlat18;
  let x_861 : f32 = u_xlat1.x;
  u_xlat19 = min(x_859, x_861);
  let x_863 : f32 = u_xlat18;
  let x_865 : f32 = u_xlat1.x;
  u_xlat18 = max(x_863, x_865);
  let x_867 : f32 = u_xlat19;
  let x_868 : f32 = u_xlat19;
  u_xlatb1 = (x_867 < -(x_868));
  let x_871 : f32 = u_xlat18;
  let x_872 : f32 = u_xlat18;
  u_xlatb18 = (x_871 >= -(x_872));
  let x_875 : bool = u_xlatb18;
  let x_876 : bool = u_xlatb1;
  u_xlatb18 = (x_875 & x_876);
  let x_878 : bool = u_xlatb18;
  if (x_878) {
    let x_883 : f32 = u_xlat13.x;
    x_879 = -(x_883);
  } else {
    let x_887 : f32 = u_xlat13.x;
    x_879 = x_887;
  }
  let x_888 : f32 = x_879;
  u_xlat18 = x_888;
  let x_889 : f32 = u_xlat18;
  u_xlat18 = (x_889 * 57.295780181884765625f);
  let x_893 : bool = u_xlatb12.x;
  let x_894 : f32 = u_xlat18;
  u_xlat12.x = select(x_894, 0.0f, x_893);
  let x_898 : f32 = u_xlat12.x;
  u_xlatb18 = (x_898 < 0.0f);
  let x_901 : f32 = u_xlat12.x;
  u_xlat1.x = (x_901 + 360.0f);
  let x_905 : bool = u_xlatb18;
  if (x_905) {
    let x_910 : f32 = u_xlat1.x;
    x_906 = x_910;
  } else {
    let x_913 : f32 = u_xlat12.x;
    x_906 = x_913;
  }
  let x_914 : f32 = x_906;
  u_xlat12.x = x_914;
  let x_917 : f32 = u_xlat12.x;
  u_xlatb18 = (x_917 < -180.0f);
  let x_922 : f32 = u_xlat12.x;
  u_xlatb1 = (180.0f < x_922);
  let x_924 : vec2<f32> = u_xlat12;
  u_xlat13 = (vec2<f32>(x_924.x, x_924.x) + vec2<f32>(360.0f, -360.0f));
  let x_929 : bool = u_xlatb1;
  if (x_929) {
    let x_934 : f32 = u_xlat13.y;
    x_930 = x_934;
  } else {
    let x_937 : f32 = u_xlat12.x;
    x_930 = x_937;
  }
  let x_938 : f32 = x_930;
  u_xlat12.x = x_938;
  let x_940 : bool = u_xlatb18;
  if (x_940) {
    let x_945 : f32 = u_xlat13.x;
    x_941 = x_945;
  } else {
    let x_948 : f32 = u_xlat12.x;
    x_941 = x_948;
  }
  let x_949 : f32 = x_941;
  u_xlat12.x = x_949;
  let x_952 : f32 = u_xlat12.x;
  u_xlat12.x = (x_952 * 0.01481481455266475677f);
  let x_957 : f32 = u_xlat12.x;
  u_xlat12.x = (-(abs(x_957)) + 1.0f);
  let x_963 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_963, 0.0f);
  let x_967 : f32 = u_xlat12.x;
  u_xlat18 = ((x_967 * -2.0f) + 3.0f);
  let x_972 : f32 = u_xlat12.x;
  let x_974 : f32 = u_xlat12.x;
  u_xlat12.x = (x_972 * x_974);
  let x_978 : f32 = u_xlat12.x;
  let x_979 : f32 = u_xlat18;
  u_xlat12.x = (x_978 * x_979);
  let x_983 : f32 = u_xlat12.x;
  let x_985 : f32 = u_xlat12.x;
  u_xlat12.x = (x_983 * x_985);
  let x_989 : f32 = u_xlat0.x;
  let x_991 : f32 = u_xlat12.x;
  u_xlat0.x = (x_989 * x_991);
  let x_995 : f32 = u_xlat7.x;
  let x_998 : f32 = u_xlat6.x;
  u_xlat6.x = ((-(x_995) * x_998) + 0.02999999932944774628f);
  let x_1004 : f32 = u_xlat6.x;
  let x_1006 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1004 * x_1006);
  let x_1010 : f32 = u_xlat0.x;
  let x_1014 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1010 * 0.18000000715255737305f) + x_1014);
  let x_1021 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_1021.x, x_1021.z, x_1021.w));
  let x_1029 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_1029.x, x_1029.z, x_1029.w));
  let x_1037 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_1037.x, x_1037.z, x_1037.w));
  let x_1041 : vec4<f32> = u_xlat0;
  let x_1044 : vec3<f32> = max(vec3<f32>(x_1041.x, x_1041.y, x_1041.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1045 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat0;
  u_xlat18 = dot(vec3<f32>(x_1047.x, x_1047.y, x_1047.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1054 : f32 = u_xlat18;
  let x_1057 : vec4<f32> = u_xlat0;
  let x_1059 : vec3<f32> = (-(vec3<f32>(x_1054, x_1054, x_1054)) + vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec4<f32> = u_xlat0;
  let x_1067 : f32 = u_xlat18;
  let x_1069 : vec3<f32> = ((vec3<f32>(x_1062.x, x_1062.y, x_1062.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_1067, x_1067, x_1067));
  let x_1070 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
  let x_1072 : vec4<f32> = u_xlat0;
  let x_1076 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_1077 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : vec4<f32> = u_xlat0;
  let x_1081 : vec4<f32> = u_xlat1;
  let x_1086 : vec3<f32> = ((vec3<f32>(x_1079.x, x_1079.y, x_1079.z) * vec3<f32>(x_1081.x, x_1081.y, x_1081.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_1087 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  let x_1089 : vec4<f32> = u_xlat0;
  let x_1096 : vec3<f32> = ((vec3<f32>(x_1089.x, x_1089.y, x_1089.z) * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_1097 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1099 : vec4<f32> = u_xlat0;
  let x_1101 : vec4<f32> = u_xlat2;
  let x_1106 : vec3<f32> = ((vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(x_1101.x, x_1101.y, x_1101.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_1107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1109 : vec4<f32> = u_xlat1;
  let x_1111 : vec4<f32> = u_xlat0;
  let x_1113 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) / vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
  let x_1114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1120 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1128 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
  let x_1136 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1140 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1140.x, x_1140.y, x_1140.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1145 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1145, 0.00009999999747378752f);
  let x_1148 : vec4<f32> = u_xlat1;
  let x_1150 : vec4<f32> = u_xlat0;
  let x_1152 : vec2<f32> = (vec2<f32>(x_1148.x, x_1148.y) / vec2<f32>(x_1150.x, x_1150.x));
  let x_1153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
  let x_1156 : f32 = u_xlat1.y;
  u_xlat18 = max(x_1156, 0.0f);
  let x_1158 : f32 = u_xlat18;
  u_xlat18 = min(x_1158, 65504.0f);
  let x_1161 : f32 = u_xlat18;
  u_xlat18 = log2(x_1161);
  let x_1163 : f32 = u_xlat18;
  u_xlat18 = (x_1163 * 0.98110002279281616211f);
  let x_1166 : f32 = u_xlat18;
  u_xlat1.y = exp2(x_1166);
  let x_1170 : f32 = u_xlat0.y;
  u_xlat18 = max(x_1170, 0.00009999999747378752f);
  let x_1173 : f32 = u_xlat1.y;
  let x_1174 : f32 = u_xlat18;
  u_xlat18 = (x_1173 / x_1174);
  let x_1177 : f32 = u_xlat0.x;
  u_xlat19 = (-(x_1177) + 1.0f);
  let x_1181 : f32 = u_xlat0.y;
  let x_1183 : f32 = u_xlat19;
  u_xlat0.z = (-(x_1181) + x_1183);
  let x_1186 : f32 = u_xlat18;
  let x_1188 : vec4<f32> = u_xlat0;
  let x_1190 : vec2<f32> = (vec2<f32>(x_1186, x_1186) * vec2<f32>(x_1188.x, x_1188.z));
  let x_1191 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1190.x, x_1191.y, x_1190.y, x_1191.w);
  let x_1197 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1205 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1213 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1217 : vec4<f32> = u_xlat0;
  u_xlat18 = dot(vec3<f32>(x_1217.x, x_1217.y, x_1217.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1220 : f32 = u_xlat18;
  let x_1223 : vec4<f32> = u_xlat0;
  let x_1225 : vec3<f32> = (-(vec3<f32>(x_1220, x_1220, x_1220)) + vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
  let x_1226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
  let x_1228 : vec4<f32> = u_xlat0;
  let x_1233 : f32 = u_xlat18;
  let x_1235 : vec3<f32> = ((vec3<f32>(x_1228.x, x_1228.y, x_1228.z) * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1233, x_1233, x_1233));
  let x_1236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1242 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
  let x_1246 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
  let x_1254 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1262 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
  let x_1270 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
  let x_1278 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
  let x_1283 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1283, 0.0f, 1.0f);
  let x_1290 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1295 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1295, 0.0f, 1.0f);
  let x_1302 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
  let x_1307 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1307, 0.0f, 1.0f);
  let x_1315 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1315);
  let x_1319 : bool = u_xlatb0.x;
  if (x_1319) {
    let x_1322 : vec4<f32> = u_xlat1;
    let x_1326 : vec3<f32> = (vec3<f32>(x_1322.x, x_1322.y, x_1322.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1327 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
    let x_1329 : vec4<f32> = u_xlat1;
    let x_1331 : vec3<f32> = log2(vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
    let x_1332 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
    let x_1334 : vec4<f32> = u_xlat2;
    let x_1338 : vec3<f32> = (vec3<f32>(x_1334.x, x_1334.y, x_1334.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1339 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
    let x_1341 : vec4<f32> = u_xlat2;
    let x_1343 : vec3<f32> = exp2(vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
    let x_1344 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
    let x_1346 : vec4<f32> = u_xlat2;
    let x_1353 : vec3<f32> = ((vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1354 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
    let x_1359 : vec4<f32> = u_xlat1;
    let x_1361 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1359.x));
    u_xlatb3 = vec3<bool>(x_1361.x, x_1361.y, x_1361.z);
    let x_1365 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1365;
    let x_1367 : bool = u_xlatb3.x;
    if (x_1367) {
      let x_1372 : f32 = u_xlat0.x;
      x_1368 = x_1372;
    } else {
      let x_1375 : f32 = u_xlat2.x;
      x_1368 = x_1375;
    }
    let x_1376 : f32 = x_1368;
    hlslcc_movcTemp.x = x_1376;
    let x_1379 : bool = u_xlatb3.y;
    if (x_1379) {
      let x_1384 : f32 = u_xlat0.y;
      x_1380 = x_1384;
    } else {
      let x_1387 : f32 = u_xlat2.y;
      x_1380 = x_1387;
    }
    let x_1388 : f32 = x_1380;
    hlslcc_movcTemp.y = x_1388;
    let x_1391 : bool = u_xlatb3.z;
    if (x_1391) {
      let x_1396 : f32 = u_xlat0.z;
      x_1392 = x_1396;
    } else {
      let x_1399 : f32 = u_xlat2.z;
      x_1392 = x_1399;
    }
    let x_1400 : f32 = x_1392;
    hlslcc_movcTemp.z = x_1400;
    let x_1402 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1402;
    let x_1403 : vec4<f32> = u_xlat0;
    let x_1406 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1408 : vec3<f32> = (vec3<f32>(x_1403.z, x_1403.x, x_1403.y) * vec3<f32>(x_1406.z, x_1406.z, x_1406.z));
    let x_1409 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
    let x_1412 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_1412);
    let x_1415 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1417 : vec2<f32> = (vec2<f32>(x_1415.x, x_1415.y) * vec2<f32>(0.5f, 0.5f));
    let x_1418 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1417.x, x_1418.y, x_1418.z, x_1417.y);
    let x_1420 : vec4<f32> = u_xlat2;
    let x_1423 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1426 : vec4<f32> = u_xlat2;
    let x_1428 : vec2<f32> = ((vec2<f32>(x_1420.y, x_1420.z) * vec2<f32>(x_1423.x, x_1423.y)) + vec2<f32>(x_1426.x, x_1426.w));
    let x_1429 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1429.x, x_1428.x, x_1428.y, x_1429.w);
    let x_1431 : f32 = u_xlat18;
    let x_1433 : f32 = x_38.x_UserLut_Params.y;
    let x_1436 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1431 * x_1433) + x_1436);
    let x_1443 : vec4<f32> = u_xlat2;
    let x_1445 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1443.x, x_1443.z), 0.0f);
    let x_1446 : vec3<f32> = vec3<f32>(x_1445.x, x_1445.y, x_1445.z);
    let x_1447 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
    let x_1450 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_1450;
    u_xlat4.y = 0.0f;
    let x_1453 : vec4<f32> = u_xlat2;
    let x_1455 : vec4<f32> = u_xlat4;
    let x_1457 : vec2<f32> = (vec2<f32>(x_1453.x, x_1453.z) + vec2<f32>(x_1455.x, x_1455.y));
    let x_1458 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1457.x, x_1457.y, x_1458.z, x_1458.w);
    let x_1463 : vec4<f32> = u_xlat2;
    let x_1465 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1463.x, x_1463.y), 0.0f);
    let x_1466 : vec3<f32> = vec3<f32>(x_1465.x, x_1465.y, x_1465.z);
    let x_1467 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
    let x_1470 : f32 = u_xlat0.z;
    let x_1472 : f32 = x_38.x_UserLut_Params.z;
    let x_1474 : f32 = u_xlat18;
    u_xlat18 = ((x_1470 * x_1472) + -(x_1474));
    let x_1477 : vec4<f32> = u_xlat3;
    let x_1480 : vec4<f32> = u_xlat2;
    let x_1482 : vec3<f32> = (-(vec3<f32>(x_1477.x, x_1477.y, x_1477.z)) + vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
    let x_1483 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
    let x_1485 : f32 = u_xlat18;
    let x_1487 : vec4<f32> = u_xlat2;
    let x_1490 : vec4<f32> = u_xlat3;
    let x_1492 : vec3<f32> = ((vec3<f32>(x_1485, x_1485, x_1485) * vec3<f32>(x_1487.x, x_1487.y, x_1487.z)) + vec3<f32>(x_1490.x, x_1490.y, x_1490.z));
    let x_1493 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1493.w);
    let x_1495 : vec4<f32> = u_xlat0;
    let x_1498 : vec4<f32> = u_xlat2;
    let x_1500 : vec3<f32> = (-(vec3<f32>(x_1495.x, x_1495.y, x_1495.z)) + vec3<f32>(x_1498.x, x_1498.y, x_1498.z));
    let x_1501 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
    let x_1504 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1506 : vec4<f32> = u_xlat2;
    let x_1509 : vec4<f32> = u_xlat0;
    let x_1511 : vec3<f32> = ((vec3<f32>(x_1504.w, x_1504.w, x_1504.w) * vec3<f32>(x_1506.x, x_1506.y, x_1506.z)) + vec3<f32>(x_1509.x, x_1509.y, x_1509.z));
    let x_1512 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1512.w);
    let x_1514 : vec4<f32> = u_xlat0;
    let x_1518 : vec3<f32> = (vec3<f32>(x_1514.x, x_1514.y, x_1514.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1519 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
    let x_1521 : vec4<f32> = u_xlat0;
    let x_1525 : vec3<f32> = (vec3<f32>(x_1521.x, x_1521.y, x_1521.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1526 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
    let x_1528 : vec4<f32> = u_xlat3;
    let x_1532 : vec3<f32> = (vec3<f32>(x_1528.x, x_1528.y, x_1528.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1533 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
    let x_1535 : vec4<f32> = u_xlat3;
    let x_1538 : vec3<f32> = log2(abs(vec3<f32>(x_1535.x, x_1535.y, x_1535.z)));
    let x_1539 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1538.x, x_1538.y, x_1538.z, x_1539.w);
    let x_1541 : vec4<f32> = u_xlat3;
    let x_1545 : vec3<f32> = (vec3<f32>(x_1541.x, x_1541.y, x_1541.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1546 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1546.w);
    let x_1548 : vec4<f32> = u_xlat3;
    let x_1550 : vec3<f32> = exp2(vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
    let x_1551 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
    let x_1555 : vec4<f32> = u_xlat0;
    let x_1557 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1555.x));
    u_xlatb0 = vec3<bool>(x_1557.x, x_1557.y, x_1557.z);
    let x_1560 : bool = u_xlatb0.x;
    if (x_1560) {
      let x_1565 : f32 = u_xlat2.x;
      x_1561 = x_1565;
    } else {
      let x_1568 : f32 = u_xlat3.x;
      x_1561 = x_1568;
    }
    let x_1569 : f32 = x_1561;
    u_xlat1.x = x_1569;
    let x_1572 : bool = u_xlatb0.y;
    if (x_1572) {
      let x_1577 : f32 = u_xlat2.y;
      x_1573 = x_1577;
    } else {
      let x_1580 : f32 = u_xlat3.y;
      x_1573 = x_1580;
    }
    let x_1581 : f32 = x_1573;
    u_xlat1.y = x_1581;
    let x_1584 : bool = u_xlatb0.z;
    if (x_1584) {
      let x_1589 : f32 = u_xlat2.z;
      x_1585 = x_1589;
    } else {
      let x_1592 : f32 = u_xlat3.z;
      x_1585 = x_1592;
    }
    let x_1593 : f32 = x_1585;
    u_xlat1.z = x_1593;
  }
  let x_1595 : vec4<f32> = u_xlat1;
  let x_1598 : vec4<f32> = x_38.x_Lut_Params;
  let x_1600 : vec3<f32> = (vec3<f32>(x_1595.z, x_1595.x, x_1595.y) * vec3<f32>(x_1598.z, x_1598.z, x_1598.z));
  let x_1601 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1604 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1604);
  let x_1608 : vec4<f32> = x_38.x_Lut_Params;
  let x_1610 : vec2<f32> = (vec2<f32>(x_1608.x, x_1608.y) * vec2<f32>(0.5f, 0.5f));
  let x_1611 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
  let x_1613 : vec4<f32> = u_xlat0;
  let x_1616 : vec4<f32> = x_38.x_Lut_Params;
  let x_1619 : vec4<f32> = u_xlat1;
  let x_1621 : vec2<f32> = ((vec2<f32>(x_1613.y, x_1613.z) * vec2<f32>(x_1616.x, x_1616.y)) + vec2<f32>(x_1619.x, x_1619.y));
  let x_1622 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1622.x, x_1621.x, x_1621.y, x_1622.w);
  let x_1625 : f32 = u_xlat0.x;
  let x_1627 : f32 = x_38.x_Lut_Params.y;
  let x_1630 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1625 * x_1627) + x_1630);
  let x_1637 : vec4<f32> = u_xlat2;
  let x_1639 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1637.x, x_1637.z), 0.0f);
  u_xlat6 = vec3<f32>(x_1639.x, x_1639.y, x_1639.z);
  let x_1642 : f32 = x_38.x_Lut_Params.y;
  u_xlat1.x = x_1642;
  u_xlat1.y = 0.0f;
  let x_1645 : vec4<f32> = u_xlat1;
  let x_1647 : vec4<f32> = u_xlat2;
  let x_1649 : vec2<f32> = (vec2<f32>(x_1645.x, x_1645.y) + vec2<f32>(x_1647.x, x_1647.z));
  let x_1650 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1649.x, x_1649.y, x_1650.z, x_1650.w);
  let x_1655 : vec4<f32> = u_xlat1;
  let x_1657 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1655.x, x_1655.y), 0.0f);
  let x_1658 : vec3<f32> = vec3<f32>(x_1657.x, x_1657.y, x_1657.z);
  let x_1659 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1658.x, x_1658.y, x_1659.z, x_1658.z);
  let x_1662 : f32 = u_xlat1.z;
  let x_1664 : f32 = x_38.x_Lut_Params.z;
  let x_1667 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1662 * x_1664) + -(x_1667));
  let x_1671 : vec3<f32> = u_xlat6;
  let x_1673 : vec4<f32> = u_xlat1;
  let x_1675 : vec3<f32> = (-(x_1671) + vec3<f32>(x_1673.x, x_1673.y, x_1673.w));
  let x_1676 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
  let x_1678 : vec4<f32> = u_xlat0;
  let x_1680 : vec4<f32> = u_xlat1;
  let x_1683 : vec3<f32> = u_xlat6;
  let x_1684 : vec3<f32> = ((vec3<f32>(x_1678.x, x_1678.x, x_1678.x) * vec3<f32>(x_1680.x, x_1680.y, x_1680.z)) + x_1683);
  let x_1685 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
  let x_1687 : vec2<f32> = vs_TEXCOORD0;
  let x_1690 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_1694 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_1696 : vec2<f32> = ((x_1687 * vec2<f32>(x_1690.x, x_1690.y)) + vec2<f32>(x_1694.z, x_1694.w));
  let x_1697 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1696.x, x_1696.y, x_1697.z, x_1697.w);
  let x_1704 : vec4<f32> = u_xlat1;
  let x_1707 : f32 = x_38.x_GlobalMipBias.x;
  let x_1708 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1704.x, x_1704.y), x_1707);
  u_xlat18 = x_1708.w;
  let x_1710 : f32 = u_xlat18;
  u_xlat18 = (x_1710 + -0.5f);
  let x_1712 : f32 = u_xlat18;
  let x_1713 : f32 = u_xlat18;
  u_xlat18 = (x_1712 + x_1713);
  let x_1715 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1715.x, x_1715.y, x_1715.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1724 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1724);
  let x_1729 : f32 = x_38.x_Grain_Params.y;
  let x_1731 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1729 * -(x_1731)) + 1.0f);
  let x_1736 : f32 = u_xlat18;
  let x_1738 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1736, x_1736, x_1736) * vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
  let x_1741 : vec3<f32> = u_xlat7;
  let x_1744 : vec2<f32> = x_38.x_Grain_Params;
  u_xlat7 = (x_1741 * vec3<f32>(x_1744.x, x_1744.x, x_1744.x));
  let x_1747 : vec3<f32> = u_xlat7;
  let x_1748 : vec4<f32> = u_xlat1;
  let x_1751 : vec4<f32> = u_xlat0;
  let x_1753 : vec3<f32> = ((x_1747 * vec3<f32>(x_1748.x, x_1748.x, x_1748.x)) + vec3<f32>(x_1751.x, x_1751.y, x_1751.z));
  let x_1754 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
  let x_1756 : vec4<f32> = u_xlat0;
  let x_1758 : vec3<f32> = (vec3<f32>(x_1756.x, x_1756.y, x_1756.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1759 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1761 : vec4<f32> = u_xlat0;
  let x_1764 : vec3<f32> = log2(abs(vec3<f32>(x_1761.x, x_1761.y, x_1761.z)));
  let x_1765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1767 : vec4<f32> = u_xlat2;
  let x_1769 : vec3<f32> = (vec3<f32>(x_1767.x, x_1767.y, x_1767.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
  let x_1772 : vec4<f32> = u_xlat2;
  let x_1774 : vec3<f32> = exp2(vec3<f32>(x_1772.x, x_1772.y, x_1772.z));
  let x_1775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
  let x_1777 : vec4<f32> = u_xlat2;
  let x_1780 : vec3<f32> = ((vec3<f32>(x_1777.x, x_1777.y, x_1777.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1781 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  let x_1783 : vec4<f32> = u_xlat0;
  let x_1785 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1783.x));
  u_xlatb0 = vec3<bool>(x_1785.x, x_1785.y, x_1785.z);
  let x_1790 : bool = u_xlatb0.x;
  if (x_1790) {
    let x_1795 : f32 = u_xlat1.x;
    x_1791 = x_1795;
  } else {
    let x_1798 : f32 = u_xlat2.x;
    x_1791 = x_1798;
  }
  let x_1799 : f32 = x_1791;
  SV_Target0.x = x_1799;
  let x_1803 : bool = u_xlatb0.y;
  if (x_1803) {
    let x_1808 : f32 = u_xlat1.y;
    x_1804 = x_1808;
  } else {
    let x_1811 : f32 = u_xlat2.y;
    x_1804 = x_1811;
  }
  let x_1812 : f32 = x_1804;
  SV_Target0.y = x_1812;
  let x_1815 : bool = u_xlatb0.z;
  if (x_1815) {
    let x_1820 : f32 = u_xlat1.z;
    x_1816 = x_1820;
  } else {
    let x_1823 : f32 = u_xlat2.z;
    x_1816 = x_1823;
  }
  let x_1824 : f32 = x_1816;
  SV_Target0.z = x_1824;
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


