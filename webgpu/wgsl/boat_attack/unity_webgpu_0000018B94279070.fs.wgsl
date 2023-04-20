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
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(96) */
  x_Vignette_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec3<f32>;
  var x_275 : f32;
  var x_287 : f32;
  var x_299 : f32;
  var x_447 : f32;
  var x_459 : f32;
  var x_471 : f32;
  var x_603 : f32;
  var x_616 : f32;
  var x_628 : f32;
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
  let x_69 : f32 = x_13.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_69);
  let x_71 : bool = u_xlatb15;
  if (x_71) {
    let x_76 : vec2<f32> = vs_TEXCOORD0;
    let x_78 : vec4<f32> = x_13.x_Vignette_Params2;
    let x_81 : vec2<f32> = (x_76 + -(vec2<f32>(x_78.x, x_78.y)));
    let x_82 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_81.x, x_81.y, x_82.z);
    let x_84 : vec3<f32> = u_xlat1;
    let x_88 : vec4<f32> = x_13.x_Vignette_Params2;
    let x_90 : vec2<f32> = (abs(vec2<f32>(x_84.x, x_84.y)) * vec2<f32>(x_88.z, x_88.z));
    let x_91 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_91.x, x_90.x, x_90.y);
    let x_96 : f32 = u_xlat1.y;
    let x_100 : f32 = x_13.x_Vignette_Params1.w;
    u_xlat1.x = (x_96 * x_100);
    let x_104 : vec3<f32> = u_xlat1;
    let x_106 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_104.x, x_104.z), vec2<f32>(x_106.x, x_106.z));
    let x_109 : f32 = u_xlat15;
    u_xlat15 = (-(x_109) + 1.0f);
    let x_113 : f32 = u_xlat15;
    u_xlat15 = max(x_113, 0.0f);
    let x_115 : f32 = u_xlat15;
    u_xlat15 = log2(x_115);
    let x_117 : f32 = u_xlat15;
    let x_119 : f32 = x_13.x_Vignette_Params2.w;
    u_xlat15 = (x_117 * x_119);
    let x_121 : f32 = u_xlat15;
    u_xlat15 = exp2(x_121);
    let x_124 : vec4<f32> = x_13.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_124.x, x_124.y, x_124.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_129 : f32 = u_xlat15;
    let x_131 : vec3<f32> = u_xlat1;
    let x_134 : vec4<f32> = x_13.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_129, x_129, x_129) * x_131) + vec3<f32>(x_134.x, x_134.y, x_134.z));
    let x_137 : vec4<f32> = u_xlat0;
    let x_139 : vec3<f32> = u_xlat1;
    let x_140 : vec3<f32> = (vec3<f32>(x_137.x, x_137.y, x_137.z) * x_139);
    let x_141 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  }
  let x_143 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = x_13.x_Lut_Params;
  let x_149 : vec3<f32> = (vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_147.w, x_147.w, x_147.w));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_152 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_158 : vec4<f32> = u_xlat0;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec3<f32> = u_xlat1;
  let x_169 : vec4<f32> = u_xlat2;
  let x_174 : vec3<f32> = ((x_168 * vec3<f32>(x_169.x, x_169.y, x_169.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_175 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat0;
  let x_182 : vec3<f32> = ((vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec3<f32> = u_xlat1;
  let x_186 : vec4<f32> = u_xlat0;
  let x_191 : vec3<f32> = ((x_185 * vec3<f32>(x_186.x, x_186.y, x_186.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_192 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat2;
  let x_196 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) / vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec4<f32> = u_xlat0;
  let x_205 : vec3<f32> = (vec3<f32>(x_201.x, x_201.y, x_201.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat0;
  let x_210 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_211 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = clamp(vec3<f32>(x_213.x, x_213.y, x_213.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_222 : f32 = x_13.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_222);
  let x_224 : bool = u_xlatb15;
  if (x_224) {
    let x_227 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_232 : vec4<f32> = u_xlat0;
    let x_234 : vec3<f32> = log2(vec3<f32>(x_232.x, x_232.y, x_232.z));
    let x_235 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
    let x_237 : vec4<f32> = u_xlat2;
    let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_242 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
    let x_244 : vec4<f32> = u_xlat2;
    let x_246 : vec3<f32> = exp2(vec3<f32>(x_244.x, x_244.y, x_244.z));
    let x_247 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_249 : vec4<f32> = u_xlat2;
    let x_256 : vec3<f32> = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_257 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_264 : vec4<f32> = u_xlat0;
    let x_267 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_264.x, x_264.y, x_264.z, x_264.x));
    u_xlatb3 = vec3<bool>(x_267.x, x_267.y, x_267.z);
    let x_271 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_271;
    let x_273 : bool = u_xlatb3.x;
    if (x_273) {
      let x_279 : f32 = u_xlat1.x;
      x_275 = x_279;
    } else {
      let x_282 : f32 = u_xlat2.x;
      x_275 = x_282;
    }
    let x_283 : f32 = x_275;
    hlslcc_movcTemp.x = x_283;
    let x_286 : bool = u_xlatb3.y;
    if (x_286) {
      let x_291 : f32 = u_xlat1.y;
      x_287 = x_291;
    } else {
      let x_294 : f32 = u_xlat2.y;
      x_287 = x_294;
    }
    let x_295 : f32 = x_287;
    hlslcc_movcTemp.y = x_295;
    let x_298 : bool = u_xlatb3.z;
    if (x_298) {
      let x_303 : f32 = u_xlat1.z;
      x_299 = x_303;
    } else {
      let x_306 : f32 = u_xlat2.z;
      x_299 = x_306;
    }
    let x_307 : f32 = x_299;
    hlslcc_movcTemp.z = x_307;
    let x_309 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_309;
    let x_310 : vec3<f32> = u_xlat1;
    let x_313 : vec4<f32> = x_13.x_UserLut_Params;
    let x_315 : vec3<f32> = (vec3<f32>(x_310.z, x_310.x, x_310.y) * vec3<f32>(x_313.z, x_313.z, x_313.z));
    let x_316 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
    let x_319 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_319);
    let x_322 : vec4<f32> = x_13.x_UserLut_Params;
    let x_324 : vec2<f32> = (vec2<f32>(x_322.x, x_322.y) * vec2<f32>(0.5f, 0.5f));
    let x_325 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_324.x, x_325.y, x_325.z, x_324.y);
    let x_327 : vec4<f32> = u_xlat2;
    let x_330 : vec4<f32> = x_13.x_UserLut_Params;
    let x_333 : vec4<f32> = u_xlat2;
    let x_335 : vec2<f32> = ((vec2<f32>(x_327.y, x_327.z) * vec2<f32>(x_330.x, x_330.y)) + vec2<f32>(x_333.x, x_333.w));
    let x_336 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_336.x, x_335.x, x_335.y, x_336.w);
    let x_338 : f32 = u_xlat15;
    let x_340 : f32 = x_13.x_UserLut_Params.y;
    let x_343 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_338 * x_340) + x_343);
    let x_351 : vec4<f32> = u_xlat2;
    let x_353 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_351.x, x_351.z), 0.0f);
    u_xlat3 = vec3<f32>(x_353.x, x_353.y, x_353.z);
    let x_358 : f32 = x_13.x_UserLut_Params.y;
    u_xlat4.x = x_358;
    u_xlat4.y = 0.0f;
    let x_361 : vec4<f32> = u_xlat2;
    let x_363 : vec2<f32> = u_xlat4;
    let x_364 : vec2<f32> = (vec2<f32>(x_361.x, x_361.z) + x_363);
    let x_365 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_364.x, x_364.y, x_365.z, x_365.w);
    let x_370 : vec4<f32> = u_xlat2;
    let x_372 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_370.x, x_370.y), 0.0f);
    let x_373 : vec3<f32> = vec3<f32>(x_372.x, x_372.y, x_372.z);
    let x_374 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
    let x_377 : f32 = u_xlat1.z;
    let x_379 : f32 = x_13.x_UserLut_Params.z;
    let x_381 : f32 = u_xlat15;
    u_xlat15 = ((x_377 * x_379) + -(x_381));
    let x_384 : vec3<f32> = u_xlat3;
    let x_386 : vec4<f32> = u_xlat2;
    let x_388 : vec3<f32> = (-(x_384) + vec3<f32>(x_386.x, x_386.y, x_386.z));
    let x_389 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
    let x_391 : f32 = u_xlat15;
    let x_393 : vec4<f32> = u_xlat2;
    let x_396 : vec3<f32> = u_xlat3;
    let x_397 : vec3<f32> = ((vec3<f32>(x_391, x_391, x_391) * vec3<f32>(x_393.x, x_393.y, x_393.z)) + x_396);
    let x_398 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
    let x_400 : vec3<f32> = u_xlat1;
    let x_402 : vec4<f32> = u_xlat2;
    let x_404 : vec3<f32> = (-(x_400) + vec3<f32>(x_402.x, x_402.y, x_402.z));
    let x_405 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
    let x_408 : vec4<f32> = x_13.x_UserLut_Params;
    let x_410 : vec4<f32> = u_xlat2;
    let x_413 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_408.w, x_408.w, x_408.w) * vec3<f32>(x_410.x, x_410.y, x_410.z)) + x_413);
    let x_415 : vec3<f32> = u_xlat1;
    let x_418 : vec3<f32> = (x_415 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_419 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
    let x_421 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_421 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_425 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_425 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_429 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_429));
    let x_432 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_432 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_436 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_436);
    let x_441 : vec3<f32> = u_xlat1;
    let x_443 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_441.x, x_441.y, x_441.z, x_441.x));
    u_xlatb1 = vec3<bool>(x_443.x, x_443.y, x_443.z);
    let x_446 : bool = u_xlatb1.x;
    if (x_446) {
      let x_451 : f32 = u_xlat2.x;
      x_447 = x_451;
    } else {
      let x_454 : f32 = u_xlat3.x;
      x_447 = x_454;
    }
    let x_455 : f32 = x_447;
    u_xlat0.x = x_455;
    let x_458 : bool = u_xlatb1.y;
    if (x_458) {
      let x_463 : f32 = u_xlat2.y;
      x_459 = x_463;
    } else {
      let x_466 : f32 = u_xlat3.y;
      x_459 = x_466;
    }
    let x_467 : f32 = x_459;
    u_xlat0.y = x_467;
    let x_470 : bool = u_xlatb1.z;
    if (x_470) {
      let x_475 : f32 = u_xlat2.z;
      x_471 = x_475;
    } else {
      let x_478 : f32 = u_xlat3.z;
      x_471 = x_478;
    }
    let x_479 : f32 = x_471;
    u_xlat0.z = x_479;
  }
  let x_481 : vec4<f32> = u_xlat0;
  let x_484 : vec4<f32> = x_13.x_Lut_Params;
  let x_486 : vec3<f32> = (vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_484.z, x_484.z, x_484.z));
  let x_487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_486.z);
  let x_490 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_490);
  let x_493 : vec4<f32> = x_13.x_Lut_Params;
  let x_495 : vec2<f32> = (vec2<f32>(x_493.x, x_493.y) * vec2<f32>(0.5f, 0.5f));
  let x_496 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_495.x, x_495.y, x_496.z);
  let x_498 : vec4<f32> = u_xlat0;
  let x_501 : vec4<f32> = x_13.x_Lut_Params;
  let x_504 : vec3<f32> = u_xlat1;
  let x_506 : vec2<f32> = ((vec2<f32>(x_498.x, x_498.y) * vec2<f32>(x_501.x, x_501.y)) + vec2<f32>(x_504.x, x_504.y));
  let x_507 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_507.x, x_506.x, x_506.y);
  let x_509 : f32 = u_xlat15;
  let x_511 : f32 = x_13.x_Lut_Params.y;
  let x_514 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_509 * x_511) + x_514);
  let x_521 : vec3<f32> = u_xlat1;
  let x_523 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_521.x, x_521.z), 0.0f);
  let x_524 : vec3<f32> = vec3<f32>(x_523.x, x_523.y, x_523.z);
  let x_525 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_528 : f32 = x_13.x_Lut_Params.y;
  u_xlat0.x = x_528;
  u_xlat0.y = 0.0f;
  let x_531 : vec4<f32> = u_xlat0;
  let x_533 : vec3<f32> = u_xlat1;
  let x_535 : vec2<f32> = (vec2<f32>(x_531.x, x_531.y) + vec2<f32>(x_533.x, x_533.z));
  let x_536 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
  let x_541 : vec4<f32> = u_xlat0;
  let x_543 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_541.x, x_541.y), 0.0f);
  u_xlat1 = vec3<f32>(x_543.x, x_543.y, x_543.z);
  let x_546 : f32 = u_xlat0.z;
  let x_548 : f32 = x_13.x_Lut_Params.z;
  let x_550 : f32 = u_xlat15;
  u_xlat0.x = ((x_546 * x_548) + -(x_550));
  let x_555 : vec4<f32> = u_xlat2;
  let x_558 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_555.x, x_555.y, x_555.z)) + x_558);
  let x_560 : vec4<f32> = u_xlat0;
  let x_562 : vec3<f32> = u_xlat5;
  let x_564 : vec4<f32> = u_xlat2;
  let x_566 : vec3<f32> = ((vec3<f32>(x_560.x, x_560.x, x_560.x) * x_562) + vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_569 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_572 : vec4<f32> = u_xlat0;
  let x_575 : vec3<f32> = log2(abs(vec3<f32>(x_572.x, x_572.y, x_572.z)));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat2;
  let x_580 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat2;
  let x_585 : vec3<f32> = exp2(vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec4<f32> = u_xlat2;
  let x_591 : vec3<f32> = ((vec3<f32>(x_588.x, x_588.y, x_588.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_592 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_595 : vec4<f32> = u_xlat0;
  let x_597 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_595.x, x_595.y, x_595.z, x_595.x));
  u_xlatb0 = vec3<bool>(x_597.x, x_597.y, x_597.z);
  let x_602 : bool = u_xlatb0.x;
  if (x_602) {
    let x_607 : f32 = u_xlat1.x;
    x_603 = x_607;
  } else {
    let x_610 : f32 = u_xlat2.x;
    x_603 = x_610;
  }
  let x_611 : f32 = x_603;
  SV_Target0.x = x_611;
  let x_615 : bool = u_xlatb0.y;
  if (x_615) {
    let x_620 : f32 = u_xlat1.y;
    x_616 = x_620;
  } else {
    let x_623 : f32 = u_xlat2.y;
    x_616 = x_623;
  }
  let x_624 : f32 = x_616;
  SV_Target0.y = x_624;
  let x_627 : bool = u_xlatb0.z;
  if (x_627) {
    let x_632 : f32 = u_xlat1.z;
    x_628 = x_632;
  } else {
    let x_635 : f32 = u_xlat2.z;
    x_628 = x_635;
  }
  let x_636 : f32 = x_628;
  SV_Target0.z = x_636;
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


