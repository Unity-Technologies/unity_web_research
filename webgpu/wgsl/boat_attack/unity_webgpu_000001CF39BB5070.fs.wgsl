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
  /* @offset(208) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

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

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_551 : f32;
  var x_563 : f32;
  var x_575 : f32;
  var x_744 : f32;
  var x_756 : f32;
  var x_768 : f32;
  var x_1024 : f32;
  var x_1036 : f32;
  var x_1048 : f32;
  var x_1105 : f32;
  var x_1117 : f32;
  var x_1129 : f32;
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
  let x_493 : vec3<f32> = clamp(vec3<f32>(x_489.x, x_489.y, x_489.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_498 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_498);
  let x_500 : bool = u_xlatb18;
  if (x_500) {
    let x_503 : vec4<f32> = u_xlat0;
    let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_508 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
    let x_510 : vec4<f32> = u_xlat0;
    let x_512 : vec3<f32> = log2(vec3<f32>(x_510.x, x_510.y, x_510.z));
    let x_513 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
    let x_515 : vec4<f32> = u_xlat2;
    let x_519 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_520 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
    let x_522 : vec4<f32> = u_xlat2;
    let x_524 : vec3<f32> = exp2(vec3<f32>(x_522.x, x_522.y, x_522.z));
    let x_525 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
    let x_527 : vec4<f32> = u_xlat2;
    let x_534 : vec3<f32> = ((vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_535 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
    let x_540 : vec4<f32> = u_xlat0;
    let x_543 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_540.x, x_540.y, x_540.z, x_540.x));
    u_xlatb3 = vec3<bool>(x_543.x, x_543.y, x_543.z);
    let x_547 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_547;
    let x_549 : bool = u_xlatb3.x;
    if (x_549) {
      let x_555 : f32 = u_xlat1.x;
      x_551 = x_555;
    } else {
      let x_558 : f32 = u_xlat2.x;
      x_551 = x_558;
    }
    let x_559 : f32 = x_551;
    hlslcc_movcTemp.x = x_559;
    let x_562 : bool = u_xlatb3.y;
    if (x_562) {
      let x_567 : f32 = u_xlat1.y;
      x_563 = x_567;
    } else {
      let x_570 : f32 = u_xlat2.y;
      x_563 = x_570;
    }
    let x_571 : f32 = x_563;
    hlslcc_movcTemp.y = x_571;
    let x_574 : bool = u_xlatb3.z;
    if (x_574) {
      let x_579 : f32 = u_xlat1.z;
      x_575 = x_579;
    } else {
      let x_582 : f32 = u_xlat2.z;
      x_575 = x_582;
    }
    let x_583 : f32 = x_575;
    hlslcc_movcTemp.z = x_583;
    let x_585 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_585;
    let x_586 : vec4<f32> = u_xlat1;
    let x_589 : vec4<f32> = x_38.x_UserLut_Params;
    let x_591 : vec3<f32> = (vec3<f32>(x_586.z, x_586.x, x_586.y) * vec3<f32>(x_589.z, x_589.z, x_589.z));
    let x_592 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
    let x_595 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_595);
    let x_598 : vec4<f32> = x_38.x_UserLut_Params;
    let x_600 : vec2<f32> = (vec2<f32>(x_598.x, x_598.y) * vec2<f32>(0.5f, 0.5f));
    let x_601 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_600.x, x_601.y, x_601.z, x_600.y);
    let x_603 : vec4<f32> = u_xlat2;
    let x_606 : vec4<f32> = x_38.x_UserLut_Params;
    let x_609 : vec4<f32> = u_xlat2;
    let x_611 : vec2<f32> = ((vec2<f32>(x_603.y, x_603.z) * vec2<f32>(x_606.x, x_606.y)) + vec2<f32>(x_609.x, x_609.w));
    let x_612 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_612.x, x_611.x, x_611.y, x_612.w);
    let x_614 : f32 = u_xlat18;
    let x_616 : f32 = x_38.x_UserLut_Params.y;
    let x_619 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_614 * x_616) + x_619);
    let x_626 : vec4<f32> = u_xlat2;
    let x_628 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_626.x, x_626.z), 0.0f);
    let x_629 : vec3<f32> = vec3<f32>(x_628.x, x_628.y, x_628.z);
    let x_630 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
    let x_633 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_633;
    u_xlat4.y = 0.0f;
    let x_636 : vec4<f32> = u_xlat2;
    let x_638 : vec4<f32> = u_xlat4;
    let x_640 : vec2<f32> = (vec2<f32>(x_636.x, x_636.z) + vec2<f32>(x_638.x, x_638.y));
    let x_641 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
    let x_646 : vec4<f32> = u_xlat2;
    let x_648 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_646.x, x_646.y), 0.0f);
    let x_649 : vec3<f32> = vec3<f32>(x_648.x, x_648.y, x_648.z);
    let x_650 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
    let x_653 : f32 = u_xlat1.z;
    let x_655 : f32 = x_38.x_UserLut_Params.z;
    let x_657 : f32 = u_xlat18;
    u_xlat18 = ((x_653 * x_655) + -(x_657));
    let x_660 : vec4<f32> = u_xlat3;
    let x_663 : vec4<f32> = u_xlat2;
    let x_665 : vec3<f32> = (-(vec3<f32>(x_660.x, x_660.y, x_660.z)) + vec3<f32>(x_663.x, x_663.y, x_663.z));
    let x_666 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
    let x_668 : f32 = u_xlat18;
    let x_670 : vec4<f32> = u_xlat2;
    let x_673 : vec4<f32> = u_xlat3;
    let x_675 : vec3<f32> = ((vec3<f32>(x_668, x_668, x_668) * vec3<f32>(x_670.x, x_670.y, x_670.z)) + vec3<f32>(x_673.x, x_673.y, x_673.z));
    let x_676 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
    let x_678 : vec4<f32> = u_xlat1;
    let x_681 : vec4<f32> = u_xlat2;
    let x_683 : vec3<f32> = (-(vec3<f32>(x_678.x, x_678.y, x_678.z)) + vec3<f32>(x_681.x, x_681.y, x_681.z));
    let x_684 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
    let x_687 : vec4<f32> = x_38.x_UserLut_Params;
    let x_689 : vec4<f32> = u_xlat2;
    let x_692 : vec4<f32> = u_xlat1;
    let x_694 : vec3<f32> = ((vec3<f32>(x_687.w, x_687.w, x_687.w) * vec3<f32>(x_689.x, x_689.y, x_689.z)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
    let x_695 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
    let x_697 : vec4<f32> = u_xlat1;
    let x_701 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_702 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
    let x_704 : vec4<f32> = u_xlat1;
    let x_708 : vec3<f32> = (vec3<f32>(x_704.x, x_704.y, x_704.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_709 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
    let x_711 : vec4<f32> = u_xlat3;
    let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_716 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
    let x_718 : vec4<f32> = u_xlat3;
    let x_721 : vec3<f32> = log2(abs(vec3<f32>(x_718.x, x_718.y, x_718.z)));
    let x_722 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
    let x_724 : vec4<f32> = u_xlat3;
    let x_728 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_729 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
    let x_731 : vec4<f32> = u_xlat3;
    let x_733 : vec3<f32> = exp2(vec3<f32>(x_731.x, x_731.y, x_731.z));
    let x_734 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
    let x_738 : vec4<f32> = u_xlat1;
    let x_740 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_738.x, x_738.y, x_738.z, x_738.x));
    u_xlatb1 = vec3<bool>(x_740.x, x_740.y, x_740.z);
    let x_743 : bool = u_xlatb1.x;
    if (x_743) {
      let x_748 : f32 = u_xlat2.x;
      x_744 = x_748;
    } else {
      let x_751 : f32 = u_xlat3.x;
      x_744 = x_751;
    }
    let x_752 : f32 = x_744;
    u_xlat0.x = x_752;
    let x_755 : bool = u_xlatb1.y;
    if (x_755) {
      let x_760 : f32 = u_xlat2.y;
      x_756 = x_760;
    } else {
      let x_763 : f32 = u_xlat3.y;
      x_756 = x_763;
    }
    let x_764 : f32 = x_756;
    u_xlat0.y = x_764;
    let x_767 : bool = u_xlatb1.z;
    if (x_767) {
      let x_772 : f32 = u_xlat2.z;
      x_768 = x_772;
    } else {
      let x_775 : f32 = u_xlat3.z;
      x_768 = x_775;
    }
    let x_776 : f32 = x_768;
    u_xlat0.z = x_776;
  }
  let x_778 : vec4<f32> = u_xlat0;
  let x_781 : vec4<f32> = x_38.x_Lut_Params;
  let x_783 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(x_781.z, x_781.z, x_781.z));
  let x_784 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_783.z);
  let x_787 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_787);
  let x_790 : vec4<f32> = x_38.x_Lut_Params;
  let x_792 : vec2<f32> = (vec2<f32>(x_790.x, x_790.y) * vec2<f32>(0.5f, 0.5f));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat0;
  let x_798 : vec4<f32> = x_38.x_Lut_Params;
  let x_801 : vec4<f32> = u_xlat1;
  let x_803 : vec2<f32> = ((vec2<f32>(x_795.x, x_795.y) * vec2<f32>(x_798.x, x_798.y)) + vec2<f32>(x_801.x, x_801.y));
  let x_804 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_803.x, x_803.y, x_804.w);
  let x_806 : f32 = u_xlat18;
  let x_808 : f32 = x_38.x_Lut_Params.y;
  let x_811 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_806 * x_808) + x_811);
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_818.x, x_818.z), 0.0f);
  let x_821 : vec3<f32> = vec3<f32>(x_820.x, x_820.y, x_820.z);
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_825 : f32 = x_38.x_Lut_Params.y;
  u_xlat0.x = x_825;
  u_xlat0.y = 0.0f;
  let x_828 : vec4<f32> = u_xlat0;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec2<f32> = (vec2<f32>(x_828.x, x_828.y) + vec2<f32>(x_830.x, x_830.z));
  let x_833 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_832.x, x_832.y, x_833.z, x_833.w);
  let x_838 : vec4<f32> = u_xlat0;
  let x_840 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_838.x, x_838.y), 0.0f);
  let x_841 : vec3<f32> = vec3<f32>(x_840.x, x_840.y, x_840.z);
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_845 : f32 = u_xlat0.z;
  let x_847 : f32 = x_38.x_Lut_Params.z;
  let x_849 : f32 = u_xlat18;
  u_xlat0.x = ((x_845 * x_847) + -(x_849));
  let x_855 : vec4<f32> = u_xlat2;
  let x_858 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_855.x, x_855.y, x_855.z)) + vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec4<f32> = u_xlat0;
  let x_863 : vec3<f32> = u_xlat6;
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec3<f32> = ((vec3<f32>(x_861.x, x_861.x, x_861.x) * x_863) + vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec2<f32> = vs_TEXCOORD0;
  let x_873 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_877 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_879 : vec2<f32> = ((x_870 * vec2<f32>(x_873.x, x_873.y)) + vec2<f32>(x_877.z, x_877.w));
  let x_880 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
  let x_887 : vec4<f32> = u_xlat1;
  let x_890 : f32 = x_38.x_GlobalMipBias.x;
  let x_891 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_887.x, x_887.y), x_890);
  u_xlat18 = x_891.w;
  let x_893 : f32 = u_xlat18;
  u_xlat18 = (x_893 + -0.5f);
  let x_895 : f32 = u_xlat18;
  let x_896 : f32 = u_xlat18;
  u_xlat18 = (x_895 + x_896);
  let x_898 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_907 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_907);
  let x_912 : f32 = x_38.x_Grain_Params.y;
  let x_914 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_912 * -(x_914)) + 1.0f);
  let x_920 : f32 = u_xlat18;
  let x_922 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_920, x_920, x_920) * vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec3<f32> = u_xlat7;
  let x_928 : vec2<f32> = x_38.x_Grain_Params;
  u_xlat7 = (x_925 * vec3<f32>(x_928.x, x_928.x, x_928.x));
  let x_931 : vec3<f32> = u_xlat7;
  let x_932 : vec4<f32> = u_xlat1;
  let x_935 : vec4<f32> = u_xlat0;
  let x_937 : vec3<f32> = ((x_931 * vec3<f32>(x_932.x, x_932.x, x_932.x)) + vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_938 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat0;
  let x_942 : vec3<f32> = sqrt(vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_943 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec2<f32> = vs_TEXCOORD0;
  let x_948 : vec4<f32> = x_38.x_Dithering_Params;
  let x_952 : vec4<f32> = x_38.x_Dithering_Params;
  let x_954 : vec2<f32> = ((x_945 * vec2<f32>(x_948.x, x_948.y)) + vec2<f32>(x_952.z, x_952.w));
  let x_955 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
  let x_962 : vec4<f32> = u_xlat1;
  let x_965 : f32 = x_38.x_GlobalMipBias.x;
  let x_966 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_962.x, x_962.y), x_965);
  u_xlat18 = x_966.w;
  let x_968 : f32 = u_xlat18;
  u_xlat18 = ((x_968 * 2.0f) + -1.0f);
  let x_971 : f32 = u_xlat18;
  u_xlatb1.x = (x_971 >= 0.0f);
  let x_975 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_975);
  let x_978 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_978)) + 1.0f);
  let x_982 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_982);
  let x_984 : f32 = u_xlat18;
  u_xlat18 = (-(x_984) + 1.0f);
  let x_987 : f32 = u_xlat18;
  let x_989 : f32 = u_xlat1.x;
  u_xlat18 = (x_987 * x_989);
  let x_991 : vec4<f32> = u_xlat0;
  let x_993 : vec3<f32> = (vec3<f32>(x_991.x, x_991.y, x_991.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_994 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec4<f32> = u_xlat0;
  let x_998 : vec3<f32> = log2(vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat2;
  let x_1003 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1004 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec4<f32> = u_xlat2;
  let x_1008 : vec3<f32> = exp2(vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1014 : vec3<f32> = ((vec3<f32>(x_1011.x, x_1011.y, x_1011.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1015 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1018 : vec4<f32> = u_xlat0;
  let x_1020 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1018.x));
  u_xlatb0 = vec3<bool>(x_1020.x, x_1020.y, x_1020.z);
  let x_1023 : bool = u_xlatb0.x;
  if (x_1023) {
    let x_1028 : f32 = u_xlat1.x;
    x_1024 = x_1028;
  } else {
    let x_1031 : f32 = u_xlat2.x;
    x_1024 = x_1031;
  }
  let x_1032 : f32 = x_1024;
  u_xlat0.x = x_1032;
  let x_1035 : bool = u_xlatb0.y;
  if (x_1035) {
    let x_1040 : f32 = u_xlat1.y;
    x_1036 = x_1040;
  } else {
    let x_1043 : f32 = u_xlat2.y;
    x_1036 = x_1043;
  }
  let x_1044 : f32 = x_1036;
  u_xlat0.y = x_1044;
  let x_1047 : bool = u_xlatb0.z;
  if (x_1047) {
    let x_1052 : f32 = u_xlat1.z;
    x_1048 = x_1052;
  } else {
    let x_1055 : f32 = u_xlat2.z;
    x_1048 = x_1055;
  }
  let x_1056 : f32 = x_1048;
  u_xlat0.z = x_1056;
  let x_1058 : f32 = u_xlat18;
  let x_1063 : vec4<f32> = u_xlat0;
  let x_1065 : vec3<f32> = ((vec3<f32>(x_1058, x_1058, x_1058) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1068 : vec4<f32> = u_xlat0;
  let x_1070 : vec3<f32> = (vec3<f32>(x_1068.x, x_1068.y, x_1068.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1071 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec4<f32> = u_xlat0;
  let x_1075 : vec3<f32> = (vec3<f32>(x_1073.x, x_1073.y, x_1073.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1076 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1078 : vec4<f32> = u_xlat2;
  let x_1080 : vec3<f32> = (vec3<f32>(x_1078.x, x_1078.y, x_1078.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1081 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec4<f32> = u_xlat2;
  let x_1086 : vec3<f32> = log2(abs(vec3<f32>(x_1083.x, x_1083.y, x_1083.z)));
  let x_1087 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  let x_1089 : vec4<f32> = u_xlat2;
  let x_1091 : vec3<f32> = (vec3<f32>(x_1089.x, x_1089.y, x_1089.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1092 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
  let x_1094 : vec4<f32> = u_xlat2;
  let x_1096 : vec3<f32> = exp2(vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1097 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1099 : vec4<f32> = u_xlat0;
  let x_1101 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1099.x));
  u_xlatb0 = vec3<bool>(x_1101.x, x_1101.y, x_1101.z);
  let x_1104 : bool = u_xlatb0.x;
  if (x_1104) {
    let x_1109 : f32 = u_xlat1.x;
    x_1105 = x_1109;
  } else {
    let x_1112 : f32 = u_xlat2.x;
    x_1105 = x_1112;
  }
  let x_1113 : f32 = x_1105;
  u_xlat0.x = x_1113;
  let x_1116 : bool = u_xlatb0.y;
  if (x_1116) {
    let x_1121 : f32 = u_xlat1.y;
    x_1117 = x_1121;
  } else {
    let x_1124 : f32 = u_xlat2.y;
    x_1117 = x_1124;
  }
  let x_1125 : f32 = x_1117;
  u_xlat0.y = x_1125;
  let x_1128 : bool = u_xlatb0.z;
  if (x_1128) {
    let x_1133 : f32 = u_xlat1.z;
    x_1129 = x_1133;
  } else {
    let x_1136 : f32 = u_xlat2.z;
    x_1129 = x_1136;
  }
  let x_1137 : f32 = x_1129;
  u_xlat0.z = x_1137;
  let x_1141 : vec4<f32> = u_xlat0;
  let x_1144 : vec3<f32> = max(vec3<f32>(x_1141.x, x_1141.y, x_1141.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1145 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
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


