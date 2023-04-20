diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Lut_Params : vec4<f32>,
  /* @offset(64) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(80) */
  x_Chroma_Params : f32,
  /* @offset(96) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(112) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(128) */
  x_Grain_Params : vec2<f32>,
  /* @offset(144) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(160) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat15 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_286 : f32;
  var x_298 : f32;
  var x_310 : f32;
  var x_466 : f32;
  var x_478 : f32;
  var x_490 : f32;
  var x_740 : f32;
  var x_752 : f32;
  var x_764 : f32;
  var x_821 : f32;
  var x_833 : f32;
  var x_845 : f32;
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
  let x_125 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb0.x = (0.0f < x_125);
  let x_130 : bool = u_xlatb0.x;
  if (x_130) {
    let x_133 : vec2<f32> = vs_TEXCOORD0;
    let x_135 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_138 : vec2<f32> = (x_133 + -(vec2<f32>(x_135.x, x_135.y)));
    let x_139 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
    let x_141 : vec4<f32> = u_xlat0;
    let x_145 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_147 : vec2<f32> = (abs(vec2<f32>(x_141.x, x_141.y)) * vec2<f32>(x_145.z, x_145.z));
    let x_148 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_148.x, x_147.x, x_147.y, x_148.w);
    let x_151 : f32 = u_xlat0.y;
    let x_155 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat0.x = (x_151 * x_155);
    let x_158 : vec4<f32> = u_xlat0;
    let x_160 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_158.x, x_158.z), vec2<f32>(x_160.x, x_160.z));
    let x_165 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_165) + 1.0f);
    let x_171 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_171, 0.0f);
    let x_175 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_175);
    let x_179 : f32 = u_xlat0.x;
    let x_181 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat0.x = (x_179 * x_181);
    let x_185 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_185);
    let x_192 : vec4<f32> = x_38.x_Vignette_Params1;
    u_xlat5 = (-(vec3<f32>(x_192.x, x_192.y, x_192.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_197 : vec4<f32> = u_xlat0;
    let x_199 : vec3<f32> = u_xlat5;
    let x_202 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_204 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.x, x_197.x) * x_199) + vec3<f32>(x_202.x, x_202.y, x_202.z));
    let x_205 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat0;
    let x_209 : vec4<f32> = u_xlat2;
    let x_211 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.x, x_209.y, x_209.z));
    let x_212 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  }
  let x_214 : vec4<f32> = u_xlat2;
  let x_218 : vec4<f32> = x_38.x_Lut_Params;
  let x_220 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_218.w, x_218.w, x_218.w));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = clamp(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_233 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_233);
  let x_235 : bool = u_xlatb15;
  if (x_235) {
    let x_238 : vec4<f32> = u_xlat0;
    let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_243 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
    let x_245 : vec4<f32> = u_xlat0;
    let x_247 : vec3<f32> = log2(vec3<f32>(x_245.x, x_245.y, x_245.z));
    let x_248 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
    let x_250 : vec4<f32> = u_xlat2;
    let x_254 : vec3<f32> = (vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_255 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_257 : vec4<f32> = u_xlat2;
    let x_259 : vec3<f32> = exp2(vec3<f32>(x_257.x, x_257.y, x_257.z));
    let x_260 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_262 : vec4<f32> = u_xlat2;
    let x_269 : vec3<f32> = ((vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_270 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
    let x_275 : vec4<f32> = u_xlat0;
    let x_278 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_275.x, x_275.y, x_275.z, x_275.x));
    u_xlatb3 = vec3<bool>(x_278.x, x_278.y, x_278.z);
    let x_282 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_282;
    let x_284 : bool = u_xlatb3.x;
    if (x_284) {
      let x_290 : f32 = u_xlat1.x;
      x_286 = x_290;
    } else {
      let x_293 : f32 = u_xlat2.x;
      x_286 = x_293;
    }
    let x_294 : f32 = x_286;
    hlslcc_movcTemp.x = x_294;
    let x_297 : bool = u_xlatb3.y;
    if (x_297) {
      let x_302 : f32 = u_xlat1.y;
      x_298 = x_302;
    } else {
      let x_305 : f32 = u_xlat2.y;
      x_298 = x_305;
    }
    let x_306 : f32 = x_298;
    hlslcc_movcTemp.y = x_306;
    let x_309 : bool = u_xlatb3.z;
    if (x_309) {
      let x_314 : f32 = u_xlat1.z;
      x_310 = x_314;
    } else {
      let x_317 : f32 = u_xlat2.z;
      x_310 = x_317;
    }
    let x_318 : f32 = x_310;
    hlslcc_movcTemp.z = x_318;
    let x_320 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_320;
    let x_321 : vec4<f32> = u_xlat1;
    let x_324 : vec4<f32> = x_38.x_UserLut_Params;
    let x_326 : vec3<f32> = (vec3<f32>(x_321.z, x_321.x, x_321.y) * vec3<f32>(x_324.z, x_324.z, x_324.z));
    let x_327 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
    let x_331 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_331);
    let x_334 : vec4<f32> = x_38.x_UserLut_Params;
    let x_337 : vec2<f32> = (vec2<f32>(x_334.x, x_334.y) * vec2<f32>(0.5f, 0.5f));
    let x_338 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_337.x, x_338.y, x_338.z, x_337.y);
    let x_340 : vec4<f32> = u_xlat2;
    let x_343 : vec4<f32> = x_38.x_UserLut_Params;
    let x_346 : vec4<f32> = u_xlat2;
    let x_348 : vec2<f32> = ((vec2<f32>(x_340.y, x_340.z) * vec2<f32>(x_343.x, x_343.y)) + vec2<f32>(x_346.x, x_346.w));
    let x_349 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_349.x, x_348.x, x_348.y, x_349.w);
    let x_351 : f32 = u_xlat15;
    let x_353 : f32 = x_38.x_UserLut_Params.y;
    let x_356 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_351 * x_353) + x_356);
    let x_364 : vec4<f32> = u_xlat2;
    let x_366 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_364.x, x_364.z), 0.0f);
    u_xlat3 = vec3<f32>(x_366.x, x_366.y, x_366.z);
    let x_371 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_371;
    u_xlat4.y = 0.0f;
    let x_374 : vec4<f32> = u_xlat2;
    let x_376 : vec2<f32> = u_xlat4;
    let x_377 : vec2<f32> = (vec2<f32>(x_374.x, x_374.z) + x_376);
    let x_378 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
    let x_383 : vec4<f32> = u_xlat2;
    let x_385 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_383.x, x_383.y), 0.0f);
    let x_386 : vec3<f32> = vec3<f32>(x_385.x, x_385.y, x_385.z);
    let x_387 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
    let x_390 : f32 = u_xlat1.z;
    let x_392 : f32 = x_38.x_UserLut_Params.z;
    let x_394 : f32 = u_xlat15;
    u_xlat15 = ((x_390 * x_392) + -(x_394));
    let x_397 : vec3<f32> = u_xlat3;
    let x_399 : vec4<f32> = u_xlat2;
    let x_401 : vec3<f32> = (-(x_397) + vec3<f32>(x_399.x, x_399.y, x_399.z));
    let x_402 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
    let x_404 : f32 = u_xlat15;
    let x_406 : vec4<f32> = u_xlat2;
    let x_409 : vec3<f32> = u_xlat3;
    let x_410 : vec3<f32> = ((vec3<f32>(x_404, x_404, x_404) * vec3<f32>(x_406.x, x_406.y, x_406.z)) + x_409);
    let x_411 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
    let x_413 : vec4<f32> = u_xlat1;
    let x_416 : vec4<f32> = u_xlat2;
    let x_418 : vec3<f32> = (-(vec3<f32>(x_413.x, x_413.y, x_413.z)) + vec3<f32>(x_416.x, x_416.y, x_416.z));
    let x_419 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
    let x_422 : vec4<f32> = x_38.x_UserLut_Params;
    let x_424 : vec4<f32> = u_xlat2;
    let x_427 : vec4<f32> = u_xlat1;
    let x_429 : vec3<f32> = ((vec3<f32>(x_422.w, x_422.w, x_422.w) * vec3<f32>(x_424.x, x_424.y, x_424.z)) + vec3<f32>(x_427.x, x_427.y, x_427.z));
    let x_430 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
    let x_432 : vec4<f32> = u_xlat1;
    let x_436 : vec3<f32> = (vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_437 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
    let x_439 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_439.x, x_439.y, x_439.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_444 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_444 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_448 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_448));
    let x_451 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_451 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_455 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_455);
    let x_460 : vec4<f32> = u_xlat1;
    let x_462 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_460.x, x_460.y, x_460.z, x_460.x));
    u_xlatb1 = vec3<bool>(x_462.x, x_462.y, x_462.z);
    let x_465 : bool = u_xlatb1.x;
    if (x_465) {
      let x_470 : f32 = u_xlat2.x;
      x_466 = x_470;
    } else {
      let x_473 : f32 = u_xlat3.x;
      x_466 = x_473;
    }
    let x_474 : f32 = x_466;
    u_xlat0.x = x_474;
    let x_477 : bool = u_xlatb1.y;
    if (x_477) {
      let x_482 : f32 = u_xlat2.y;
      x_478 = x_482;
    } else {
      let x_485 : f32 = u_xlat3.y;
      x_478 = x_485;
    }
    let x_486 : f32 = x_478;
    u_xlat0.y = x_486;
    let x_489 : bool = u_xlatb1.z;
    if (x_489) {
      let x_494 : f32 = u_xlat2.z;
      x_490 = x_494;
    } else {
      let x_497 : f32 = u_xlat3.z;
      x_490 = x_497;
    }
    let x_498 : f32 = x_490;
    u_xlat0.z = x_498;
  }
  let x_500 : vec4<f32> = u_xlat0;
  let x_503 : vec4<f32> = x_38.x_Lut_Params;
  let x_505 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) * vec3<f32>(x_503.z, x_503.z, x_503.z));
  let x_506 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_505.z);
  let x_509 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_509);
  let x_512 : vec4<f32> = x_38.x_Lut_Params;
  let x_514 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) * vec2<f32>(0.5f, 0.5f));
  let x_515 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat0;
  let x_520 : vec4<f32> = x_38.x_Lut_Params;
  let x_523 : vec4<f32> = u_xlat1;
  let x_525 : vec2<f32> = ((vec2<f32>(x_517.x, x_517.y) * vec2<f32>(x_520.x, x_520.y)) + vec2<f32>(x_523.x, x_523.y));
  let x_526 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_526.x, x_525.x, x_525.y, x_526.w);
  let x_528 : f32 = u_xlat15;
  let x_530 : f32 = x_38.x_Lut_Params.y;
  let x_533 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_528 * x_530) + x_533);
  let x_540 : vec4<f32> = u_xlat1;
  let x_542 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_540.x, x_540.z), 0.0f);
  let x_543 : vec3<f32> = vec3<f32>(x_542.x, x_542.y, x_542.z);
  let x_544 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_547 : f32 = x_38.x_Lut_Params.y;
  u_xlat0.x = x_547;
  u_xlat0.y = 0.0f;
  let x_550 : vec4<f32> = u_xlat0;
  let x_552 : vec4<f32> = u_xlat1;
  let x_554 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) + vec2<f32>(x_552.x, x_552.z));
  let x_555 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
  let x_560 : vec4<f32> = u_xlat0;
  let x_562 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_560.x, x_560.y), 0.0f);
  let x_563 : vec3<f32> = vec3<f32>(x_562.x, x_562.y, x_562.z);
  let x_564 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_567 : f32 = u_xlat0.z;
  let x_569 : f32 = x_38.x_Lut_Params.z;
  let x_571 : f32 = u_xlat15;
  u_xlat0.x = ((x_567 * x_569) + -(x_571));
  let x_575 : vec4<f32> = u_xlat2;
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_575.x, x_575.y, x_575.z)) + vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat0;
  let x_583 : vec3<f32> = u_xlat5;
  let x_585 : vec4<f32> = u_xlat2;
  let x_587 : vec3<f32> = ((vec3<f32>(x_581.x, x_581.x, x_581.x) * x_583) + vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec2<f32> = vs_TEXCOORD0;
  let x_593 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_597 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_599 : vec2<f32> = ((x_590 * vec2<f32>(x_593.x, x_593.y)) + vec2<f32>(x_597.z, x_597.w));
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_607 : vec4<f32> = u_xlat1;
  let x_610 : f32 = x_38.x_GlobalMipBias.x;
  let x_611 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_607.x, x_607.y), x_610);
  u_xlat15 = x_611.w;
  let x_613 : f32 = u_xlat15;
  u_xlat15 = (x_613 + -0.5f);
  let x_616 : f32 = u_xlat15;
  let x_617 : f32 = u_xlat15;
  u_xlat15 = (x_616 + x_617);
  let x_619 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_619.x, x_619.y, x_619.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_628 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_628);
  let x_633 : f32 = x_38.x_Grain_Params.y;
  let x_635 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_633 * -(x_635)) + 1.0f);
  let x_641 : f32 = u_xlat15;
  let x_643 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_641, x_641, x_641) * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec3<f32> = u_xlat6;
  let x_649 : vec2<f32> = x_38.x_Grain_Params;
  u_xlat6 = (x_646 * vec3<f32>(x_649.x, x_649.x, x_649.x));
  let x_652 : vec3<f32> = u_xlat6;
  let x_653 : vec4<f32> = u_xlat1;
  let x_656 : vec4<f32> = u_xlat0;
  let x_658 : vec3<f32> = ((x_652 * vec3<f32>(x_653.x, x_653.x, x_653.x)) + vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec2<f32> = vs_TEXCOORD0;
  let x_664 : vec4<f32> = x_38.x_Dithering_Params;
  let x_668 : vec4<f32> = x_38.x_Dithering_Params;
  let x_670 : vec2<f32> = ((x_661 * vec2<f32>(x_664.x, x_664.y)) + vec2<f32>(x_668.z, x_668.w));
  let x_671 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
  let x_678 : vec4<f32> = u_xlat1;
  let x_681 : f32 = x_38.x_GlobalMipBias.x;
  let x_682 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_678.x, x_678.y), x_681);
  u_xlat15 = x_682.w;
  let x_684 : f32 = u_xlat15;
  u_xlat15 = ((x_684 * 2.0f) + -1.0f);
  let x_687 : f32 = u_xlat15;
  u_xlatb1.x = (x_687 >= 0.0f);
  let x_691 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_691);
  let x_694 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_694)) + 1.0f);
  let x_698 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_698);
  let x_700 : f32 = u_xlat15;
  u_xlat15 = (-(x_700) + 1.0f);
  let x_703 : f32 = u_xlat15;
  let x_705 : f32 = u_xlat1.x;
  u_xlat15 = (x_703 * x_705);
  let x_707 : vec4<f32> = u_xlat0;
  let x_709 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec4<f32> = u_xlat0;
  let x_715 : vec3<f32> = log2(abs(vec3<f32>(x_712.x, x_712.y, x_712.z)));
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat2;
  let x_720 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_721 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat2;
  let x_725 : vec3<f32> = exp2(vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat2;
  let x_731 : vec3<f32> = ((vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_732 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat0;
  let x_736 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_734.x, x_734.y, x_734.z, x_734.x));
  u_xlatb0 = vec3<bool>(x_736.x, x_736.y, x_736.z);
  let x_739 : bool = u_xlatb0.x;
  if (x_739) {
    let x_744 : f32 = u_xlat1.x;
    x_740 = x_744;
  } else {
    let x_747 : f32 = u_xlat2.x;
    x_740 = x_747;
  }
  let x_748 : f32 = x_740;
  u_xlat0.x = x_748;
  let x_751 : bool = u_xlatb0.y;
  if (x_751) {
    let x_756 : f32 = u_xlat1.y;
    x_752 = x_756;
  } else {
    let x_759 : f32 = u_xlat2.y;
    x_752 = x_759;
  }
  let x_760 : f32 = x_752;
  u_xlat0.y = x_760;
  let x_763 : bool = u_xlatb0.z;
  if (x_763) {
    let x_768 : f32 = u_xlat1.z;
    x_764 = x_768;
  } else {
    let x_771 : f32 = u_xlat2.z;
    x_764 = x_771;
  }
  let x_772 : f32 = x_764;
  u_xlat0.z = x_772;
  let x_774 : f32 = u_xlat15;
  let x_779 : vec4<f32> = u_xlat0;
  let x_781 : vec3<f32> = ((vec3<f32>(x_774, x_774, x_774) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat0;
  let x_786 : vec3<f32> = (vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat0;
  let x_791 : vec3<f32> = (vec3<f32>(x_789.x, x_789.y, x_789.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_792 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec4<f32> = u_xlat2;
  let x_796 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_797 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat2;
  let x_802 : vec3<f32> = log2(abs(vec3<f32>(x_799.x, x_799.y, x_799.z)));
  let x_803 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat2;
  let x_807 : vec3<f32> = (vec3<f32>(x_805.x, x_805.y, x_805.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_808 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat2;
  let x_812 : vec3<f32> = exp2(vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec4<f32> = u_xlat0;
  let x_817 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_815.x, x_815.y, x_815.z, x_815.x));
  u_xlatb0 = vec3<bool>(x_817.x, x_817.y, x_817.z);
  let x_820 : bool = u_xlatb0.x;
  if (x_820) {
    let x_825 : f32 = u_xlat1.x;
    x_821 = x_825;
  } else {
    let x_828 : f32 = u_xlat2.x;
    x_821 = x_828;
  }
  let x_829 : f32 = x_821;
  u_xlat0.x = x_829;
  let x_832 : bool = u_xlatb0.y;
  if (x_832) {
    let x_837 : f32 = u_xlat1.y;
    x_833 = x_837;
  } else {
    let x_840 : f32 = u_xlat2.y;
    x_833 = x_840;
  }
  let x_841 : f32 = x_833;
  u_xlat0.y = x_841;
  let x_844 : bool = u_xlatb0.z;
  if (x_844) {
    let x_849 : f32 = u_xlat1.z;
    x_845 = x_849;
  } else {
    let x_852 : f32 = u_xlat2.z;
    x_845 = x_852;
  }
  let x_853 : f32 = x_845;
  u_xlat0.z = x_853;
  let x_857 : vec4<f32> = u_xlat0;
  let x_860 : vec3<f32> = max(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_861 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
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


