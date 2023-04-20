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
  x_Bloom_Texture_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat13 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_615 : f32;
  var x_627 : f32;
  var x_639 : f32;
  var x_808 : f32;
  var x_820 : f32;
  var x_832 : f32;
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
  let x_359 : f32 = x_38.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_359);
  let x_364 : bool = u_xlatb1.x;
  if (x_364) {
    let x_368 : vec4<f32> = u_xlat0;
    let x_370 : vec4<f32> = u_xlat0;
    let x_372 : vec3<f32> = (vec3<f32>(x_368.w, x_368.w, x_368.w) * vec3<f32>(x_370.x, x_370.y, x_370.z));
    let x_373 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
    let x_375 : vec4<f32> = u_xlat1;
    let x_379 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_380 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  }
  let x_382 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = x_38.x_Bloom_Params;
  let x_388 : vec3<f32> = (vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(x_386.x, x_386.x, x_386.x));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat0;
  let x_394 : vec4<f32> = x_38.x_Bloom_Params;
  let x_397 : vec4<f32> = u_xlat2;
  let x_399 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_394.y, x_394.z, x_394.w)) + vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_405 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_405);
  let x_407 : bool = u_xlatb18;
  if (x_407) {
    let x_410 : vec2<f32> = vs_TEXCOORD0;
    let x_412 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_415 : vec2<f32> = (x_410 + -(vec2<f32>(x_412.x, x_412.y)));
    let x_416 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
    let x_418 : vec4<f32> = u_xlat1;
    let x_422 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_424 : vec2<f32> = (abs(vec2<f32>(x_418.x, x_418.y)) * vec2<f32>(x_422.z, x_422.z));
    let x_425 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_425.x, x_424.x, x_424.y, x_425.w);
    let x_428 : f32 = u_xlat1.y;
    let x_432 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat1.x = (x_428 * x_432);
    let x_436 : vec4<f32> = u_xlat1;
    let x_438 : vec4<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_436.x, x_436.z), vec2<f32>(x_438.x, x_438.z));
    let x_441 : f32 = u_xlat18;
    u_xlat18 = (-(x_441) + 1.0f);
    let x_444 : f32 = u_xlat18;
    u_xlat18 = max(x_444, 0.0f);
    let x_446 : f32 = u_xlat18;
    u_xlat18 = log2(x_446);
    let x_448 : f32 = u_xlat18;
    let x_450 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat18 = (x_448 * x_450);
    let x_452 : f32 = u_xlat18;
    u_xlat18 = exp2(x_452);
    let x_455 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_459 : vec3<f32> = (-(vec3<f32>(x_455.x, x_455.y, x_455.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_460 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : f32 = u_xlat18;
    let x_464 : vec4<f32> = u_xlat1;
    let x_468 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_470 : vec3<f32> = ((vec3<f32>(x_462, x_462, x_462) * vec3<f32>(x_464.x, x_464.y, x_464.z)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
    let x_471 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
    let x_473 : vec4<f32> = u_xlat0;
    let x_475 : vec4<f32> = u_xlat1;
    let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.y, x_473.z) * vec3<f32>(x_475.x, x_475.y, x_475.z));
    let x_478 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  }
  let x_480 : vec4<f32> = u_xlat0;
  let x_484 : vec4<f32> = x_38.x_Lut_Params;
  let x_486 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_484.w, x_484.w, x_484.w));
  let x_487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_494 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat0;
  let x_503 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_504 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat1;
  let x_508 : vec4<f32> = u_xlat2;
  let x_513 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_508.x, x_508.y, x_508.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_514 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat0;
  let x_521 : vec3<f32> = ((vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_522 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat1;
  let x_526 : vec4<f32> = u_xlat0;
  let x_531 : vec3<f32> = ((vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(x_526.x, x_526.y, x_526.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_532 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat2;
  let x_536 : vec4<f32> = u_xlat0;
  let x_538 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) / vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat0;
  let x_545 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_546 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec4<f32> = u_xlat0;
  let x_550 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_551 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat0;
  let x_557 : vec3<f32> = clamp(vec3<f32>(x_553.x, x_553.y, x_553.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_558 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_562 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_562);
  let x_564 : bool = u_xlatb18;
  if (x_564) {
    let x_567 : vec4<f32> = u_xlat0;
    let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_572 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
    let x_574 : vec4<f32> = u_xlat0;
    let x_576 : vec3<f32> = log2(vec3<f32>(x_574.x, x_574.y, x_574.z));
    let x_577 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
    let x_579 : vec4<f32> = u_xlat2;
    let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_584 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
    let x_586 : vec4<f32> = u_xlat2;
    let x_588 : vec3<f32> = exp2(vec3<f32>(x_586.x, x_586.y, x_586.z));
    let x_589 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
    let x_591 : vec4<f32> = u_xlat2;
    let x_598 : vec3<f32> = ((vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_599 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
    let x_604 : vec4<f32> = u_xlat0;
    let x_607 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_604.x, x_604.y, x_604.z, x_604.x));
    u_xlatb3 = vec3<bool>(x_607.x, x_607.y, x_607.z);
    let x_611 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_611;
    let x_613 : bool = u_xlatb3.x;
    if (x_613) {
      let x_619 : f32 = u_xlat1.x;
      x_615 = x_619;
    } else {
      let x_622 : f32 = u_xlat2.x;
      x_615 = x_622;
    }
    let x_623 : f32 = x_615;
    hlslcc_movcTemp.x = x_623;
    let x_626 : bool = u_xlatb3.y;
    if (x_626) {
      let x_631 : f32 = u_xlat1.y;
      x_627 = x_631;
    } else {
      let x_634 : f32 = u_xlat2.y;
      x_627 = x_634;
    }
    let x_635 : f32 = x_627;
    hlslcc_movcTemp.y = x_635;
    let x_638 : bool = u_xlatb3.z;
    if (x_638) {
      let x_643 : f32 = u_xlat1.z;
      x_639 = x_643;
    } else {
      let x_646 : f32 = u_xlat2.z;
      x_639 = x_646;
    }
    let x_647 : f32 = x_639;
    hlslcc_movcTemp.z = x_647;
    let x_649 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_649;
    let x_650 : vec4<f32> = u_xlat1;
    let x_653 : vec4<f32> = x_38.x_UserLut_Params;
    let x_655 : vec3<f32> = (vec3<f32>(x_650.z, x_650.x, x_650.y) * vec3<f32>(x_653.z, x_653.z, x_653.z));
    let x_656 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
    let x_659 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_659);
    let x_662 : vec4<f32> = x_38.x_UserLut_Params;
    let x_664 : vec2<f32> = (vec2<f32>(x_662.x, x_662.y) * vec2<f32>(0.5f, 0.5f));
    let x_665 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_664.x, x_665.y, x_665.z, x_664.y);
    let x_667 : vec4<f32> = u_xlat2;
    let x_670 : vec4<f32> = x_38.x_UserLut_Params;
    let x_673 : vec4<f32> = u_xlat2;
    let x_675 : vec2<f32> = ((vec2<f32>(x_667.y, x_667.z) * vec2<f32>(x_670.x, x_670.y)) + vec2<f32>(x_673.x, x_673.w));
    let x_676 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_676.x, x_675.x, x_675.y, x_676.w);
    let x_678 : f32 = u_xlat18;
    let x_680 : f32 = x_38.x_UserLut_Params.y;
    let x_683 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_678 * x_680) + x_683);
    let x_690 : vec4<f32> = u_xlat2;
    let x_692 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_690.x, x_690.z), 0.0f);
    let x_693 : vec3<f32> = vec3<f32>(x_692.x, x_692.y, x_692.z);
    let x_694 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
    let x_697 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_697;
    u_xlat4.y = 0.0f;
    let x_700 : vec4<f32> = u_xlat2;
    let x_702 : vec4<f32> = u_xlat4;
    let x_704 : vec2<f32> = (vec2<f32>(x_700.x, x_700.z) + vec2<f32>(x_702.x, x_702.y));
    let x_705 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
    let x_710 : vec4<f32> = u_xlat2;
    let x_712 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_710.x, x_710.y), 0.0f);
    let x_713 : vec3<f32> = vec3<f32>(x_712.x, x_712.y, x_712.z);
    let x_714 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
    let x_717 : f32 = u_xlat1.z;
    let x_719 : f32 = x_38.x_UserLut_Params.z;
    let x_721 : f32 = u_xlat18;
    u_xlat18 = ((x_717 * x_719) + -(x_721));
    let x_724 : vec4<f32> = u_xlat3;
    let x_727 : vec4<f32> = u_xlat2;
    let x_729 : vec3<f32> = (-(vec3<f32>(x_724.x, x_724.y, x_724.z)) + vec3<f32>(x_727.x, x_727.y, x_727.z));
    let x_730 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
    let x_732 : f32 = u_xlat18;
    let x_734 : vec4<f32> = u_xlat2;
    let x_737 : vec4<f32> = u_xlat3;
    let x_739 : vec3<f32> = ((vec3<f32>(x_732, x_732, x_732) * vec3<f32>(x_734.x, x_734.y, x_734.z)) + vec3<f32>(x_737.x, x_737.y, x_737.z));
    let x_740 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
    let x_742 : vec4<f32> = u_xlat1;
    let x_745 : vec4<f32> = u_xlat2;
    let x_747 : vec3<f32> = (-(vec3<f32>(x_742.x, x_742.y, x_742.z)) + vec3<f32>(x_745.x, x_745.y, x_745.z));
    let x_748 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
    let x_751 : vec4<f32> = x_38.x_UserLut_Params;
    let x_753 : vec4<f32> = u_xlat2;
    let x_756 : vec4<f32> = u_xlat1;
    let x_758 : vec3<f32> = ((vec3<f32>(x_751.w, x_751.w, x_751.w) * vec3<f32>(x_753.x, x_753.y, x_753.z)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
    let x_759 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
    let x_761 : vec4<f32> = u_xlat1;
    let x_765 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_766 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
    let x_768 : vec4<f32> = u_xlat1;
    let x_772 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_773 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
    let x_775 : vec4<f32> = u_xlat3;
    let x_779 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_780 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
    let x_782 : vec4<f32> = u_xlat3;
    let x_785 : vec3<f32> = log2(abs(vec3<f32>(x_782.x, x_782.y, x_782.z)));
    let x_786 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
    let x_788 : vec4<f32> = u_xlat3;
    let x_792 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_793 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
    let x_795 : vec4<f32> = u_xlat3;
    let x_797 : vec3<f32> = exp2(vec3<f32>(x_795.x, x_795.y, x_795.z));
    let x_798 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
    let x_802 : vec4<f32> = u_xlat1;
    let x_804 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_802.x, x_802.y, x_802.z, x_802.x));
    u_xlatb1 = vec3<bool>(x_804.x, x_804.y, x_804.z);
    let x_807 : bool = u_xlatb1.x;
    if (x_807) {
      let x_812 : f32 = u_xlat2.x;
      x_808 = x_812;
    } else {
      let x_815 : f32 = u_xlat3.x;
      x_808 = x_815;
    }
    let x_816 : f32 = x_808;
    u_xlat0.x = x_816;
    let x_819 : bool = u_xlatb1.y;
    if (x_819) {
      let x_824 : f32 = u_xlat2.y;
      x_820 = x_824;
    } else {
      let x_827 : f32 = u_xlat3.y;
      x_820 = x_827;
    }
    let x_828 : f32 = x_820;
    u_xlat0.y = x_828;
    let x_831 : bool = u_xlatb1.z;
    if (x_831) {
      let x_836 : f32 = u_xlat2.z;
      x_832 = x_836;
    } else {
      let x_839 : f32 = u_xlat3.z;
      x_832 = x_839;
    }
    let x_840 : f32 = x_832;
    u_xlat0.z = x_840;
  }
  let x_842 : vec4<f32> = u_xlat0;
  let x_845 : vec4<f32> = x_38.x_Lut_Params;
  let x_847 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(x_845.z, x_845.z, x_845.z));
  let x_848 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_847.z);
  let x_851 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_851);
  let x_854 : vec4<f32> = x_38.x_Lut_Params;
  let x_856 : vec2<f32> = (vec2<f32>(x_854.x, x_854.y) * vec2<f32>(0.5f, 0.5f));
  let x_857 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_856.x, x_856.y, x_857.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat0;
  let x_862 : vec4<f32> = x_38.x_Lut_Params;
  let x_865 : vec4<f32> = u_xlat1;
  let x_867 : vec2<f32> = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(x_862.x, x_862.y)) + vec2<f32>(x_865.x, x_865.y));
  let x_868 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_868.x, x_867.x, x_867.y, x_868.w);
  let x_870 : f32 = u_xlat18;
  let x_872 : f32 = x_38.x_Lut_Params.y;
  let x_875 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_870 * x_872) + x_875);
  let x_882 : vec4<f32> = u_xlat1;
  let x_884 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_882.x, x_882.z), 0.0f);
  let x_885 : vec3<f32> = vec3<f32>(x_884.x, x_884.y, x_884.z);
  let x_886 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = x_38.x_Lut_Params.y;
  u_xlat0.x = x_889;
  u_xlat0.y = 0.0f;
  let x_892 : vec4<f32> = u_xlat0;
  let x_894 : vec4<f32> = u_xlat1;
  let x_896 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) + vec2<f32>(x_894.x, x_894.z));
  let x_897 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
  let x_902 : vec4<f32> = u_xlat0;
  let x_904 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_902.x, x_902.y), 0.0f);
  let x_905 : vec3<f32> = vec3<f32>(x_904.x, x_904.y, x_904.z);
  let x_906 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_909 : f32 = u_xlat0.z;
  let x_911 : f32 = x_38.x_Lut_Params.z;
  let x_913 : f32 = u_xlat18;
  u_xlat0.x = ((x_909 * x_911) + -(x_913));
  let x_919 : vec4<f32> = u_xlat2;
  let x_922 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_919.x, x_919.y, x_919.z)) + vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_927 : vec4<f32> = u_xlat0;
  let x_929 : vec3<f32> = u_xlat6;
  let x_931 : vec4<f32> = u_xlat2;
  let x_933 : vec3<f32> = ((vec3<f32>(x_927.x, x_927.x, x_927.x) * x_929) + vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
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


