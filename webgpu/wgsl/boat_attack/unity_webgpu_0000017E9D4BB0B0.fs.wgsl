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
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> u_xlatb0 : bool;

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

@group(0) @binding(5) var sampler_LinearRepeat : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_348 : f32;
  var x_360 : f32;
  var x_372 : f32;
  var x_528 : f32;
  var x_540 : f32;
  var x_552 : f32;
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
  let x_124 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb0 = (0.0f < x_124);
  let x_126 : bool = u_xlatb0;
  if (x_126) {
    let x_129 : vec2<f32> = vs_TEXCOORD0;
    let x_131 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_134 : vec2<f32> = (x_129 + -(vec2<f32>(x_131.x, x_131.y)));
    let x_135 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
    let x_137 : vec4<f32> = u_xlat0;
    let x_141 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_143 : vec2<f32> = (abs(vec2<f32>(x_137.x, x_137.y)) * vec2<f32>(x_141.z, x_141.z));
    let x_144 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_144.x, x_143.x, x_143.y, x_144.w);
    let x_147 : f32 = u_xlat0.y;
    let x_151 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat0.x = (x_147 * x_151);
    let x_154 : vec4<f32> = u_xlat0;
    let x_156 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_154.x, x_154.z), vec2<f32>(x_156.x, x_156.z));
    let x_161 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_161) + 1.0f);
    let x_167 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_167, 0.0f);
    let x_171 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_171);
    let x_175 : f32 = u_xlat0.x;
    let x_177 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat0.x = (x_175 * x_177);
    let x_181 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_181);
    let x_188 : vec4<f32> = x_38.x_Vignette_Params1;
    u_xlat5 = (-(vec3<f32>(x_188.x, x_188.y, x_188.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_193 : vec4<f32> = u_xlat0;
    let x_195 : vec3<f32> = u_xlat5;
    let x_198 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_200 : vec3<f32> = ((vec3<f32>(x_193.x, x_193.x, x_193.x) * x_195) + vec3<f32>(x_198.x, x_198.y, x_198.z));
    let x_201 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_203 : vec4<f32> = u_xlat0;
    let x_205 : vec4<f32> = u_xlat2;
    let x_207 : vec3<f32> = (vec3<f32>(x_203.x, x_203.y, x_203.z) * vec3<f32>(x_205.x, x_205.y, x_205.z));
    let x_208 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  }
  let x_210 : vec4<f32> = u_xlat2;
  let x_214 : vec4<f32> = x_38.x_Lut_Params;
  let x_216 : vec3<f32> = (vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_214.w, x_214.w, x_214.w));
  let x_217 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat0;
  let x_223 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat0;
  let x_233 : vec3<f32> = ((vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat1;
  let x_238 : vec4<f32> = u_xlat2;
  let x_243 : vec3<f32> = ((vec3<f32>(x_236.x, x_236.y, x_236.z) * vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat1;
  let x_256 : vec4<f32> = u_xlat0;
  let x_261 : vec3<f32> = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(x_256.x, x_256.y, x_256.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat2;
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) / vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat0;
  let x_275 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_281 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = clamp(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_293 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_293);
  let x_295 : bool = u_xlatb15;
  if (x_295) {
    let x_298 : vec4<f32> = u_xlat0;
    let x_302 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_303 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
    let x_305 : vec4<f32> = u_xlat0;
    let x_307 : vec3<f32> = log2(vec3<f32>(x_305.x, x_305.y, x_305.z));
    let x_308 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_310 : vec4<f32> = u_xlat2;
    let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_315 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_317 : vec4<f32> = u_xlat2;
    let x_319 : vec3<f32> = exp2(vec3<f32>(x_317.x, x_317.y, x_317.z));
    let x_320 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat2;
    let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_330 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_337 : vec4<f32> = u_xlat0;
    let x_340 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_337.x, x_337.y, x_337.z, x_337.x));
    u_xlatb3 = vec3<bool>(x_340.x, x_340.y, x_340.z);
    let x_344 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_344;
    let x_346 : bool = u_xlatb3.x;
    if (x_346) {
      let x_352 : f32 = u_xlat1.x;
      x_348 = x_352;
    } else {
      let x_355 : f32 = u_xlat2.x;
      x_348 = x_355;
    }
    let x_356 : f32 = x_348;
    hlslcc_movcTemp.x = x_356;
    let x_359 : bool = u_xlatb3.y;
    if (x_359) {
      let x_364 : f32 = u_xlat1.y;
      x_360 = x_364;
    } else {
      let x_367 : f32 = u_xlat2.y;
      x_360 = x_367;
    }
    let x_368 : f32 = x_360;
    hlslcc_movcTemp.y = x_368;
    let x_371 : bool = u_xlatb3.z;
    if (x_371) {
      let x_376 : f32 = u_xlat1.z;
      x_372 = x_376;
    } else {
      let x_379 : f32 = u_xlat2.z;
      x_372 = x_379;
    }
    let x_380 : f32 = x_372;
    hlslcc_movcTemp.z = x_380;
    let x_382 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_382;
    let x_383 : vec4<f32> = u_xlat1;
    let x_386 : vec4<f32> = x_38.x_UserLut_Params;
    let x_388 : vec3<f32> = (vec3<f32>(x_383.z, x_383.x, x_383.y) * vec3<f32>(x_386.z, x_386.z, x_386.z));
    let x_389 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
    let x_393 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_393);
    let x_396 : vec4<f32> = x_38.x_UserLut_Params;
    let x_399 : vec2<f32> = (vec2<f32>(x_396.x, x_396.y) * vec2<f32>(0.5f, 0.5f));
    let x_400 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_399.x, x_400.y, x_400.z, x_399.y);
    let x_402 : vec4<f32> = u_xlat2;
    let x_405 : vec4<f32> = x_38.x_UserLut_Params;
    let x_408 : vec4<f32> = u_xlat2;
    let x_410 : vec2<f32> = ((vec2<f32>(x_402.y, x_402.z) * vec2<f32>(x_405.x, x_405.y)) + vec2<f32>(x_408.x, x_408.w));
    let x_411 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_411.x, x_410.x, x_410.y, x_411.w);
    let x_413 : f32 = u_xlat15;
    let x_415 : f32 = x_38.x_UserLut_Params.y;
    let x_418 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_413 * x_415) + x_418);
    let x_426 : vec4<f32> = u_xlat2;
    let x_428 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_426.x, x_426.z), 0.0f);
    u_xlat3 = vec3<f32>(x_428.x, x_428.y, x_428.z);
    let x_433 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_433;
    u_xlat4.y = 0.0f;
    let x_436 : vec4<f32> = u_xlat2;
    let x_438 : vec2<f32> = u_xlat4;
    let x_439 : vec2<f32> = (vec2<f32>(x_436.x, x_436.z) + x_438);
    let x_440 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
    let x_445 : vec4<f32> = u_xlat2;
    let x_447 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_445.x, x_445.y), 0.0f);
    let x_448 : vec3<f32> = vec3<f32>(x_447.x, x_447.y, x_447.z);
    let x_449 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_452 : f32 = u_xlat1.z;
    let x_454 : f32 = x_38.x_UserLut_Params.z;
    let x_456 : f32 = u_xlat15;
    u_xlat15 = ((x_452 * x_454) + -(x_456));
    let x_459 : vec3<f32> = u_xlat3;
    let x_461 : vec4<f32> = u_xlat2;
    let x_463 : vec3<f32> = (-(x_459) + vec3<f32>(x_461.x, x_461.y, x_461.z));
    let x_464 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
    let x_466 : f32 = u_xlat15;
    let x_468 : vec4<f32> = u_xlat2;
    let x_471 : vec3<f32> = u_xlat3;
    let x_472 : vec3<f32> = ((vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.x, x_468.y, x_468.z)) + x_471);
    let x_473 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
    let x_475 : vec4<f32> = u_xlat1;
    let x_478 : vec4<f32> = u_xlat2;
    let x_480 : vec3<f32> = (-(vec3<f32>(x_475.x, x_475.y, x_475.z)) + vec3<f32>(x_478.x, x_478.y, x_478.z));
    let x_481 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
    let x_484 : vec4<f32> = x_38.x_UserLut_Params;
    let x_486 : vec4<f32> = u_xlat2;
    let x_489 : vec4<f32> = u_xlat1;
    let x_491 : vec3<f32> = ((vec3<f32>(x_484.w, x_484.w, x_484.w) * vec3<f32>(x_486.x, x_486.y, x_486.z)) + vec3<f32>(x_489.x, x_489.y, x_489.z));
    let x_492 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
    let x_494 : vec4<f32> = u_xlat1;
    let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_499 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_501 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_501.x, x_501.y, x_501.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_506 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_506 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_510 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_510));
    let x_513 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_513 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_517 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_517);
    let x_522 : vec4<f32> = u_xlat1;
    let x_524 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_522.x, x_522.y, x_522.z, x_522.x));
    u_xlatb1 = vec3<bool>(x_524.x, x_524.y, x_524.z);
    let x_527 : bool = u_xlatb1.x;
    if (x_527) {
      let x_532 : f32 = u_xlat2.x;
      x_528 = x_532;
    } else {
      let x_535 : f32 = u_xlat3.x;
      x_528 = x_535;
    }
    let x_536 : f32 = x_528;
    u_xlat0.x = x_536;
    let x_539 : bool = u_xlatb1.y;
    if (x_539) {
      let x_544 : f32 = u_xlat2.y;
      x_540 = x_544;
    } else {
      let x_547 : f32 = u_xlat3.y;
      x_540 = x_547;
    }
    let x_548 : f32 = x_540;
    u_xlat0.y = x_548;
    let x_551 : bool = u_xlatb1.z;
    if (x_551) {
      let x_556 : f32 = u_xlat2.z;
      x_552 = x_556;
    } else {
      let x_559 : f32 = u_xlat3.z;
      x_552 = x_559;
    }
    let x_560 : f32 = x_552;
    u_xlat0.z = x_560;
  }
  let x_562 : vec4<f32> = u_xlat0;
  let x_565 : vec4<f32> = x_38.x_Lut_Params;
  let x_567 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_565.z, x_565.z, x_565.z));
  let x_568 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_567.z);
  let x_571 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_571);
  let x_574 : vec4<f32> = x_38.x_Lut_Params;
  let x_576 : vec2<f32> = (vec2<f32>(x_574.x, x_574.y) * vec2<f32>(0.5f, 0.5f));
  let x_577 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat0;
  let x_582 : vec4<f32> = x_38.x_Lut_Params;
  let x_585 : vec4<f32> = u_xlat1;
  let x_587 : vec2<f32> = ((vec2<f32>(x_579.x, x_579.y) * vec2<f32>(x_582.x, x_582.y)) + vec2<f32>(x_585.x, x_585.y));
  let x_588 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_588.x, x_587.x, x_587.y, x_588.w);
  let x_590 : f32 = u_xlat15;
  let x_592 : f32 = x_38.x_Lut_Params.y;
  let x_595 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_590 * x_592) + x_595);
  let x_602 : vec4<f32> = u_xlat1;
  let x_604 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_602.x, x_602.z), 0.0f);
  let x_605 : vec3<f32> = vec3<f32>(x_604.x, x_604.y, x_604.z);
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_609 : f32 = x_38.x_Lut_Params.y;
  u_xlat0.x = x_609;
  u_xlat0.y = 0.0f;
  let x_612 : vec4<f32> = u_xlat0;
  let x_614 : vec4<f32> = u_xlat1;
  let x_616 : vec2<f32> = (vec2<f32>(x_612.x, x_612.y) + vec2<f32>(x_614.x, x_614.z));
  let x_617 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
  let x_622 : vec4<f32> = u_xlat0;
  let x_624 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_622.x, x_622.y), 0.0f);
  let x_625 : vec3<f32> = vec3<f32>(x_624.x, x_624.y, x_624.z);
  let x_626 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_629 : f32 = u_xlat0.z;
  let x_631 : f32 = x_38.x_Lut_Params.z;
  let x_633 : f32 = u_xlat15;
  u_xlat0.x = ((x_629 * x_631) + -(x_633));
  let x_637 : vec4<f32> = u_xlat2;
  let x_640 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_637.x, x_637.y, x_637.z)) + vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat0;
  let x_645 : vec3<f32> = u_xlat5;
  let x_647 : vec4<f32> = u_xlat2;
  let x_649 : vec3<f32> = ((vec3<f32>(x_643.x, x_643.x, x_643.x) * x_645) + vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec2<f32> = vs_TEXCOORD0;
  let x_655 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_659 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_661 : vec2<f32> = ((x_652 * vec2<f32>(x_655.x, x_655.y)) + vec2<f32>(x_659.z, x_659.w));
  let x_662 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
  let x_669 : vec4<f32> = u_xlat1;
  let x_672 : f32 = x_38.x_GlobalMipBias.x;
  let x_673 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_669.x, x_669.y), x_672);
  u_xlat15 = x_673.w;
  let x_675 : f32 = u_xlat15;
  u_xlat15 = (x_675 + -0.5f);
  let x_678 : f32 = u_xlat15;
  let x_679 : f32 = u_xlat15;
  u_xlat15 = (x_678 + x_679);
  let x_681 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_681.x, x_681.y, x_681.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_690 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_690);
  let x_695 : f32 = x_38.x_Grain_Params.y;
  let x_697 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_695 * -(x_697)) + 1.0f);
  let x_703 : f32 = u_xlat15;
  let x_705 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_703, x_703, x_703) * vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec3<f32> = u_xlat6;
  let x_711 : vec2<f32> = x_38.x_Grain_Params;
  u_xlat6 = (x_708 * vec3<f32>(x_711.x, x_711.x, x_711.x));
  let x_714 : vec3<f32> = u_xlat6;
  let x_715 : vec4<f32> = u_xlat1;
  let x_718 : vec4<f32> = u_xlat0;
  let x_720 : vec3<f32> = ((x_714 * vec3<f32>(x_715.x, x_715.x, x_715.x)) + vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_725 : vec4<f32> = u_xlat0;
  let x_727 : vec3<f32> = sqrt(vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
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


