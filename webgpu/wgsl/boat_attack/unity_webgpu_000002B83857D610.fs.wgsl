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
  /* @offset(112) */
  x_Grain_Params : vec2<f32>,
  /* @offset(128) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(144) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec3<f32>;
  var x_215 : f32;
  var x_227 : f32;
  var x_239 : f32;
  var x_387 : f32;
  var x_399 : f32;
  var x_411 : f32;
  var x_660 : f32;
  var x_672 : f32;
  var x_684 : f32;
  var x_739 : f32;
  var x_751 : f32;
  var x_763 : f32;
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
  let x_156 : vec3<f32> = clamp(vec3<f32>(x_152.x, x_152.y, x_152.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_161 : f32 = x_13.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_161);
  let x_163 : bool = u_xlatb15;
  if (x_163) {
    let x_166 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_172 : vec4<f32> = u_xlat0;
    let x_174 : vec3<f32> = log2(vec3<f32>(x_172.x, x_172.y, x_172.z));
    let x_175 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
    let x_177 : vec4<f32> = u_xlat2;
    let x_181 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_182 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_184 : vec4<f32> = u_xlat2;
    let x_186 : vec3<f32> = exp2(vec3<f32>(x_184.x, x_184.y, x_184.z));
    let x_187 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
    let x_189 : vec4<f32> = u_xlat2;
    let x_196 : vec3<f32> = ((vec3<f32>(x_189.x, x_189.y, x_189.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_197 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_204 : vec4<f32> = u_xlat0;
    let x_207 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_204.x, x_204.y, x_204.z, x_204.x));
    u_xlatb3 = vec3<bool>(x_207.x, x_207.y, x_207.z);
    let x_211 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_211;
    let x_213 : bool = u_xlatb3.x;
    if (x_213) {
      let x_219 : f32 = u_xlat1.x;
      x_215 = x_219;
    } else {
      let x_222 : f32 = u_xlat2.x;
      x_215 = x_222;
    }
    let x_223 : f32 = x_215;
    hlslcc_movcTemp.x = x_223;
    let x_226 : bool = u_xlatb3.y;
    if (x_226) {
      let x_231 : f32 = u_xlat1.y;
      x_227 = x_231;
    } else {
      let x_234 : f32 = u_xlat2.y;
      x_227 = x_234;
    }
    let x_235 : f32 = x_227;
    hlslcc_movcTemp.y = x_235;
    let x_238 : bool = u_xlatb3.z;
    if (x_238) {
      let x_243 : f32 = u_xlat1.z;
      x_239 = x_243;
    } else {
      let x_246 : f32 = u_xlat2.z;
      x_239 = x_246;
    }
    let x_247 : f32 = x_239;
    hlslcc_movcTemp.z = x_247;
    let x_249 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_249;
    let x_250 : vec3<f32> = u_xlat1;
    let x_253 : vec4<f32> = x_13.x_UserLut_Params;
    let x_255 : vec3<f32> = (vec3<f32>(x_250.z, x_250.x, x_250.y) * vec3<f32>(x_253.z, x_253.z, x_253.z));
    let x_256 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_259 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_259);
    let x_262 : vec4<f32> = x_13.x_UserLut_Params;
    let x_264 : vec2<f32> = (vec2<f32>(x_262.x, x_262.y) * vec2<f32>(0.5f, 0.5f));
    let x_265 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_264.x, x_265.y, x_265.z, x_264.y);
    let x_267 : vec4<f32> = u_xlat2;
    let x_270 : vec4<f32> = x_13.x_UserLut_Params;
    let x_273 : vec4<f32> = u_xlat2;
    let x_275 : vec2<f32> = ((vec2<f32>(x_267.y, x_267.z) * vec2<f32>(x_270.x, x_270.y)) + vec2<f32>(x_273.x, x_273.w));
    let x_276 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_276.x, x_275.x, x_275.y, x_276.w);
    let x_278 : f32 = u_xlat15;
    let x_280 : f32 = x_13.x_UserLut_Params.y;
    let x_283 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_278 * x_280) + x_283);
    let x_291 : vec4<f32> = u_xlat2;
    let x_293 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_291.x, x_291.z), 0.0f);
    u_xlat3 = vec3<f32>(x_293.x, x_293.y, x_293.z);
    let x_298 : f32 = x_13.x_UserLut_Params.y;
    u_xlat4.x = x_298;
    u_xlat4.y = 0.0f;
    let x_301 : vec4<f32> = u_xlat2;
    let x_303 : vec2<f32> = u_xlat4;
    let x_304 : vec2<f32> = (vec2<f32>(x_301.x, x_301.z) + x_303);
    let x_305 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_304.x, x_304.y, x_305.z, x_305.w);
    let x_310 : vec4<f32> = u_xlat2;
    let x_312 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_310.x, x_310.y), 0.0f);
    let x_313 : vec3<f32> = vec3<f32>(x_312.x, x_312.y, x_312.z);
    let x_314 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_317 : f32 = u_xlat1.z;
    let x_319 : f32 = x_13.x_UserLut_Params.z;
    let x_321 : f32 = u_xlat15;
    u_xlat15 = ((x_317 * x_319) + -(x_321));
    let x_324 : vec3<f32> = u_xlat3;
    let x_326 : vec4<f32> = u_xlat2;
    let x_328 : vec3<f32> = (-(x_324) + vec3<f32>(x_326.x, x_326.y, x_326.z));
    let x_329 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : f32 = u_xlat15;
    let x_333 : vec4<f32> = u_xlat2;
    let x_336 : vec3<f32> = u_xlat3;
    let x_337 : vec3<f32> = ((vec3<f32>(x_331, x_331, x_331) * vec3<f32>(x_333.x, x_333.y, x_333.z)) + x_336);
    let x_338 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_340 : vec3<f32> = u_xlat1;
    let x_342 : vec4<f32> = u_xlat2;
    let x_344 : vec3<f32> = (-(x_340) + vec3<f32>(x_342.x, x_342.y, x_342.z));
    let x_345 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
    let x_348 : vec4<f32> = x_13.x_UserLut_Params;
    let x_350 : vec4<f32> = u_xlat2;
    let x_353 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_348.w, x_348.w, x_348.w) * vec3<f32>(x_350.x, x_350.y, x_350.z)) + x_353);
    let x_355 : vec3<f32> = u_xlat1;
    let x_358 : vec3<f32> = (x_355 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_359 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
    let x_361 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_361 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_365 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_365 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_369 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_369));
    let x_372 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_372 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_376 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_376);
    let x_381 : vec3<f32> = u_xlat1;
    let x_383 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_381.x, x_381.y, x_381.z, x_381.x));
    u_xlatb1 = vec3<bool>(x_383.x, x_383.y, x_383.z);
    let x_386 : bool = u_xlatb1.x;
    if (x_386) {
      let x_391 : f32 = u_xlat2.x;
      x_387 = x_391;
    } else {
      let x_394 : f32 = u_xlat3.x;
      x_387 = x_394;
    }
    let x_395 : f32 = x_387;
    u_xlat0.x = x_395;
    let x_398 : bool = u_xlatb1.y;
    if (x_398) {
      let x_403 : f32 = u_xlat2.y;
      x_399 = x_403;
    } else {
      let x_406 : f32 = u_xlat3.y;
      x_399 = x_406;
    }
    let x_407 : f32 = x_399;
    u_xlat0.y = x_407;
    let x_410 : bool = u_xlatb1.z;
    if (x_410) {
      let x_415 : f32 = u_xlat2.z;
      x_411 = x_415;
    } else {
      let x_418 : f32 = u_xlat3.z;
      x_411 = x_418;
    }
    let x_419 : f32 = x_411;
    u_xlat0.z = x_419;
  }
  let x_421 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = x_13.x_Lut_Params;
  let x_426 : vec3<f32> = (vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_424.z, x_424.z, x_424.z));
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_426.z);
  let x_430 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_430);
  let x_433 : vec4<f32> = x_13.x_Lut_Params;
  let x_435 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) * vec2<f32>(0.5f, 0.5f));
  let x_436 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_435.x, x_435.y, x_436.z);
  let x_438 : vec4<f32> = u_xlat0;
  let x_441 : vec4<f32> = x_13.x_Lut_Params;
  let x_444 : vec3<f32> = u_xlat1;
  let x_446 : vec2<f32> = ((vec2<f32>(x_438.x, x_438.y) * vec2<f32>(x_441.x, x_441.y)) + vec2<f32>(x_444.x, x_444.y));
  let x_447 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_447.x, x_446.x, x_446.y);
  let x_449 : f32 = u_xlat15;
  let x_451 : f32 = x_13.x_Lut_Params.y;
  let x_454 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_449 * x_451) + x_454);
  let x_461 : vec3<f32> = u_xlat1;
  let x_463 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_461.x, x_461.z), 0.0f);
  let x_464 : vec3<f32> = vec3<f32>(x_463.x, x_463.y, x_463.z);
  let x_465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_468 : f32 = x_13.x_Lut_Params.y;
  u_xlat0.x = x_468;
  u_xlat0.y = 0.0f;
  let x_471 : vec4<f32> = u_xlat0;
  let x_473 : vec3<f32> = u_xlat1;
  let x_475 : vec2<f32> = (vec2<f32>(x_471.x, x_471.y) + vec2<f32>(x_473.x, x_473.z));
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
  let x_481 : vec4<f32> = u_xlat0;
  let x_483 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_481.x, x_481.y), 0.0f);
  u_xlat1 = vec3<f32>(x_483.x, x_483.y, x_483.z);
  let x_486 : f32 = u_xlat0.z;
  let x_488 : f32 = x_13.x_Lut_Params.z;
  let x_490 : f32 = u_xlat15;
  u_xlat0.x = ((x_486 * x_488) + -(x_490));
  let x_495 : vec4<f32> = u_xlat2;
  let x_498 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_495.x, x_495.y, x_495.z)) + x_498);
  let x_500 : vec4<f32> = u_xlat0;
  let x_502 : vec3<f32> = u_xlat5;
  let x_504 : vec4<f32> = u_xlat2;
  let x_506 : vec3<f32> = ((vec3<f32>(x_500.x, x_500.x, x_500.x) * x_502) + vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec2<f32> = vs_TEXCOORD0;
  let x_512 : vec4<f32> = x_13.x_Grain_TilingParams;
  let x_516 : vec4<f32> = x_13.x_Grain_TilingParams;
  let x_518 : vec2<f32> = ((x_509 * vec2<f32>(x_512.x, x_512.y)) + vec2<f32>(x_516.z, x_516.w));
  let x_519 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_518.x, x_518.y, x_519.z);
  let x_526 : vec3<f32> = u_xlat1;
  let x_529 : f32 = x_13.x_GlobalMipBias.x;
  let x_530 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_526.x, x_526.y), x_529);
  u_xlat15 = x_530.w;
  let x_532 : f32 = u_xlat15;
  u_xlat15 = (x_532 + -0.5f);
  let x_535 : f32 = u_xlat15;
  let x_536 : f32 = u_xlat15;
  u_xlat15 = (x_535 + x_536);
  let x_538 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_538.x, x_538.y, x_538.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_547 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_547);
  let x_552 : f32 = x_13.x_Grain_Params.y;
  let x_554 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_552 * -(x_554)) + 1.0f);
  let x_560 : f32 = u_xlat15;
  let x_562 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_560, x_560, x_560) * vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec3<f32> = u_xlat6;
  let x_568 : vec2<f32> = x_13.x_Grain_Params;
  u_xlat6 = (x_565 * vec3<f32>(x_568.x, x_568.x, x_568.x));
  let x_571 : vec3<f32> = u_xlat6;
  let x_572 : vec3<f32> = u_xlat1;
  let x_575 : vec4<f32> = u_xlat0;
  let x_577 : vec3<f32> = ((x_571 * vec3<f32>(x_572.x, x_572.x, x_572.x)) + vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec2<f32> = vs_TEXCOORD0;
  let x_583 : vec4<f32> = x_13.x_Dithering_Params;
  let x_587 : vec4<f32> = x_13.x_Dithering_Params;
  let x_589 : vec2<f32> = ((x_580 * vec2<f32>(x_583.x, x_583.y)) + vec2<f32>(x_587.z, x_587.w));
  let x_590 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_589.x, x_589.y, x_590.z);
  let x_597 : vec3<f32> = u_xlat1;
  let x_600 : f32 = x_13.x_GlobalMipBias.x;
  let x_601 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_597.x, x_597.y), x_600);
  u_xlat15 = x_601.w;
  let x_603 : f32 = u_xlat15;
  u_xlat15 = ((x_603 * 2.0f) + -1.0f);
  let x_608 : f32 = u_xlat15;
  u_xlatb1.x = (x_608 >= 0.0f);
  let x_612 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_612);
  let x_615 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_615)) + 1.0f);
  let x_619 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_619);
  let x_621 : f32 = u_xlat15;
  u_xlat15 = (-(x_621) + 1.0f);
  let x_624 : f32 = u_xlat15;
  let x_626 : f32 = u_xlat1.x;
  u_xlat15 = (x_624 * x_626);
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_631 : vec4<f32> = u_xlat0;
  let x_634 : vec3<f32> = log2(abs(vec3<f32>(x_631.x, x_631.y, x_631.z)));
  let x_635 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat2;
  let x_639 : vec3<f32> = (vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_640 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat2;
  let x_644 : vec3<f32> = exp2(vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat2;
  let x_650 : vec3<f32> = ((vec3<f32>(x_647.x, x_647.y, x_647.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_654.x, x_654.y, x_654.z, x_654.x));
  u_xlatb0 = vec3<bool>(x_656.x, x_656.y, x_656.z);
  let x_659 : bool = u_xlatb0.x;
  if (x_659) {
    let x_664 : f32 = u_xlat1.x;
    x_660 = x_664;
  } else {
    let x_667 : f32 = u_xlat2.x;
    x_660 = x_667;
  }
  let x_668 : f32 = x_660;
  u_xlat0.x = x_668;
  let x_671 : bool = u_xlatb0.y;
  if (x_671) {
    let x_676 : f32 = u_xlat1.y;
    x_672 = x_676;
  } else {
    let x_679 : f32 = u_xlat2.y;
    x_672 = x_679;
  }
  let x_680 : f32 = x_672;
  u_xlat0.y = x_680;
  let x_683 : bool = u_xlatb0.z;
  if (x_683) {
    let x_688 : f32 = u_xlat1.z;
    x_684 = x_688;
  } else {
    let x_691 : f32 = u_xlat2.z;
    x_684 = x_691;
  }
  let x_692 : f32 = x_684;
  u_xlat0.z = x_692;
  let x_694 : f32 = u_xlat15;
  let x_699 : vec4<f32> = u_xlat0;
  let x_701 : vec3<f32> = ((vec3<f32>(x_694, x_694, x_694) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_704.x, x_704.y, x_704.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_707 : vec4<f32> = u_xlat0;
  let x_709 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_710 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec4<f32> = u_xlat2;
  let x_714 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat2;
  let x_720 : vec3<f32> = log2(abs(vec3<f32>(x_717.x, x_717.y, x_717.z)));
  let x_721 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat2;
  let x_725 : vec3<f32> = (vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_726 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat2;
  let x_730 : vec3<f32> = exp2(vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat0;
  let x_735 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_733.x, x_733.y, x_733.z, x_733.x));
  u_xlatb0 = vec3<bool>(x_735.x, x_735.y, x_735.z);
  let x_738 : bool = u_xlatb0.x;
  if (x_738) {
    let x_743 : f32 = u_xlat1.x;
    x_739 = x_743;
  } else {
    let x_746 : f32 = u_xlat2.x;
    x_739 = x_746;
  }
  let x_747 : f32 = x_739;
  u_xlat0.x = x_747;
  let x_750 : bool = u_xlatb0.y;
  if (x_750) {
    let x_755 : f32 = u_xlat1.y;
    x_751 = x_755;
  } else {
    let x_758 : f32 = u_xlat2.y;
    x_751 = x_758;
  }
  let x_759 : f32 = x_751;
  u_xlat0.y = x_759;
  let x_762 : bool = u_xlatb0.z;
  if (x_762) {
    let x_767 : f32 = u_xlat1.z;
    x_763 = x_767;
  } else {
    let x_770 : f32 = u_xlat2.z;
    x_763 = x_770;
  }
  let x_771 : f32 = x_763;
  u_xlat0.z = x_771;
  let x_775 : vec4<f32> = u_xlat0;
  let x_778 : vec3<f32> = max(vec3<f32>(x_775.x, x_775.y, x_775.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_779 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
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


