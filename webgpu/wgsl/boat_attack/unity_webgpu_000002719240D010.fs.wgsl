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
  /* @offset(148) */
  x_Chroma_Params : f32,
  /* @offset(160) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(192) */
  x_Grain_Params : vec2<f32>,
  /* @offset(208) */
  x_Grain_TilingParams : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(5) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(4) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_389 : f32;
  var x_401 : f32;
  var x_413 : f32;
  var x_567 : f32;
  var x_579 : f32;
  var x_591 : f32;
  var x_799 : f32;
  var x_812 : f32;
  var x_824 : f32;
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
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : f32 = x_38.x_GlobalMipBias.x;
  let x_145 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_141.x, x_141.y), x_144);
  u_xlat0 = x_145;
  let x_153 : f32 = x_38.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_153);
  let x_158 : bool = u_xlatb1.x;
  if (x_158) {
    let x_162 : vec4<f32> = u_xlat0;
    let x_164 : vec4<f32> = u_xlat0;
    let x_166 : vec3<f32> = (vec3<f32>(x_162.w, x_162.w, x_162.w) * vec3<f32>(x_164.x, x_164.y, x_164.z));
    let x_167 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_169 : vec4<f32> = u_xlat1;
    let x_173 : vec3<f32> = (vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_174 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  }
  let x_176 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = x_38.x_Bloom_Params;
  let x_182 : vec3<f32> = (vec3<f32>(x_176.x, x_176.y, x_176.z) * vec3<f32>(x_180.x, x_180.x, x_180.x));
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = x_38.x_Bloom_Params;
  let x_191 : vec4<f32> = u_xlat2;
  let x_193 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_188.y, x_188.z, x_188.w)) + vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec2<f32> = vs_TEXCOORD0;
  let x_199 : vec4<f32> = x_38.x_LensDirt_Params;
  let x_203 : vec4<f32> = x_38.x_LensDirt_Params;
  let x_205 : vec2<f32> = ((x_196 * vec2<f32>(x_199.x, x_199.y)) + vec2<f32>(x_203.z, x_203.w));
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_206.z, x_206.w);
  let x_212 : vec4<f32> = u_xlat2;
  let x_215 : f32 = x_38.x_GlobalMipBias.x;
  let x_216 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_212.x, x_212.y), x_215);
  let x_217 : vec3<f32> = vec3<f32>(x_216.x, x_216.y, x_216.z);
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat2;
  let x_224 : f32 = x_38.x_LensDirt_Intensity;
  let x_226 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_224, x_224, x_224));
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat0;
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.x, x_231.y, x_231.z)) + vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_242 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_242);
  let x_244 : bool = u_xlatb15;
  if (x_244) {
    let x_247 : vec2<f32> = vs_TEXCOORD0;
    let x_249 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_252 : vec2<f32> = (x_247 + -(vec2<f32>(x_249.x, x_249.y)));
    let x_253 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_253.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat1;
    let x_259 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_261 : vec2<f32> = (abs(vec2<f32>(x_255.x, x_255.y)) * vec2<f32>(x_259.z, x_259.z));
    let x_262 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_262.w);
    let x_265 : f32 = u_xlat1.y;
    let x_269 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat1.x = (x_265 * x_269);
    let x_273 : vec4<f32> = u_xlat1;
    let x_275 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_273.x, x_273.z), vec2<f32>(x_275.x, x_275.z));
    let x_278 : f32 = u_xlat15;
    u_xlat15 = (-(x_278) + 1.0f);
    let x_282 : f32 = u_xlat15;
    u_xlat15 = max(x_282, 0.0f);
    let x_284 : f32 = u_xlat15;
    u_xlat15 = log2(x_284);
    let x_286 : f32 = u_xlat15;
    let x_288 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat15 = (x_286 * x_288);
    let x_290 : f32 = u_xlat15;
    u_xlat15 = exp2(x_290);
    let x_293 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_297 : vec3<f32> = (-(vec3<f32>(x_293.x, x_293.y, x_293.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_298 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
    let x_300 : f32 = u_xlat15;
    let x_302 : vec4<f32> = u_xlat1;
    let x_306 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_308 : vec3<f32> = ((vec3<f32>(x_300, x_300, x_300) * vec3<f32>(x_302.x, x_302.y, x_302.z)) + vec3<f32>(x_306.x, x_306.y, x_306.z));
    let x_309 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_311 : vec4<f32> = u_xlat0;
    let x_313 : vec4<f32> = u_xlat1;
    let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.x, x_313.y, x_313.z));
    let x_316 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  }
  let x_318 : vec4<f32> = u_xlat0;
  let x_322 : vec4<f32> = x_38.x_Lut_Params;
  let x_324 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_322.w, x_322.w, x_322.w));
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat0;
  let x_331 : vec3<f32> = clamp(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_332 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_336 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_336);
  let x_338 : bool = u_xlatb15;
  if (x_338) {
    let x_341 : vec4<f32> = u_xlat0;
    let x_345 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_346 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
    let x_348 : vec4<f32> = u_xlat0;
    let x_350 : vec3<f32> = log2(vec3<f32>(x_348.x, x_348.y, x_348.z));
    let x_351 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
    let x_353 : vec4<f32> = u_xlat2;
    let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_358 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
    let x_360 : vec4<f32> = u_xlat2;
    let x_362 : vec3<f32> = exp2(vec3<f32>(x_360.x, x_360.y, x_360.z));
    let x_363 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
    let x_365 : vec4<f32> = u_xlat2;
    let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_373 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
    let x_378 : vec4<f32> = u_xlat0;
    let x_381 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_378.x, x_378.y, x_378.z, x_378.x));
    u_xlatb3 = vec3<bool>(x_381.x, x_381.y, x_381.z);
    let x_385 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_385;
    let x_387 : bool = u_xlatb3.x;
    if (x_387) {
      let x_393 : f32 = u_xlat1.x;
      x_389 = x_393;
    } else {
      let x_396 : f32 = u_xlat2.x;
      x_389 = x_396;
    }
    let x_397 : f32 = x_389;
    hlslcc_movcTemp.x = x_397;
    let x_400 : bool = u_xlatb3.y;
    if (x_400) {
      let x_405 : f32 = u_xlat1.y;
      x_401 = x_405;
    } else {
      let x_408 : f32 = u_xlat2.y;
      x_401 = x_408;
    }
    let x_409 : f32 = x_401;
    hlslcc_movcTemp.y = x_409;
    let x_412 : bool = u_xlatb3.z;
    if (x_412) {
      let x_417 : f32 = u_xlat1.z;
      x_413 = x_417;
    } else {
      let x_420 : f32 = u_xlat2.z;
      x_413 = x_420;
    }
    let x_421 : f32 = x_413;
    hlslcc_movcTemp.z = x_421;
    let x_423 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_423;
    let x_424 : vec4<f32> = u_xlat1;
    let x_427 : vec4<f32> = x_38.x_UserLut_Params;
    let x_429 : vec3<f32> = (vec3<f32>(x_424.z, x_424.x, x_424.y) * vec3<f32>(x_427.z, x_427.z, x_427.z));
    let x_430 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
    let x_433 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_433);
    let x_436 : vec4<f32> = x_38.x_UserLut_Params;
    let x_438 : vec2<f32> = (vec2<f32>(x_436.x, x_436.y) * vec2<f32>(0.5f, 0.5f));
    let x_439 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_438.x, x_439.y, x_439.z, x_438.y);
    let x_441 : vec4<f32> = u_xlat2;
    let x_444 : vec4<f32> = x_38.x_UserLut_Params;
    let x_447 : vec4<f32> = u_xlat2;
    let x_449 : vec2<f32> = ((vec2<f32>(x_441.y, x_441.z) * vec2<f32>(x_444.x, x_444.y)) + vec2<f32>(x_447.x, x_447.w));
    let x_450 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_450.x, x_449.x, x_449.y, x_450.w);
    let x_452 : f32 = u_xlat15;
    let x_454 : f32 = x_38.x_UserLut_Params.y;
    let x_457 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_452 * x_454) + x_457);
    let x_466 : vec4<f32> = u_xlat2;
    let x_468 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_466.x, x_466.z), 0.0f);
    u_xlat3 = vec3<f32>(x_468.x, x_468.y, x_468.z);
    let x_473 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_473;
    u_xlat4.y = 0.0f;
    let x_476 : vec4<f32> = u_xlat2;
    let x_478 : vec2<f32> = u_xlat4;
    let x_479 : vec2<f32> = (vec2<f32>(x_476.x, x_476.z) + x_478);
    let x_480 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
    let x_485 : vec4<f32> = u_xlat2;
    let x_487 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_485.x, x_485.y), 0.0f);
    let x_488 : vec3<f32> = vec3<f32>(x_487.x, x_487.y, x_487.z);
    let x_489 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
    let x_492 : f32 = u_xlat1.z;
    let x_494 : f32 = x_38.x_UserLut_Params.z;
    let x_496 : f32 = u_xlat15;
    u_xlat15 = ((x_492 * x_494) + -(x_496));
    let x_499 : vec3<f32> = u_xlat3;
    let x_501 : vec4<f32> = u_xlat2;
    let x_503 : vec3<f32> = (-(x_499) + vec3<f32>(x_501.x, x_501.y, x_501.z));
    let x_504 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
    let x_506 : f32 = u_xlat15;
    let x_508 : vec4<f32> = u_xlat2;
    let x_511 : vec3<f32> = u_xlat3;
    let x_512 : vec3<f32> = ((vec3<f32>(x_506, x_506, x_506) * vec3<f32>(x_508.x, x_508.y, x_508.z)) + x_511);
    let x_513 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
    let x_515 : vec4<f32> = u_xlat1;
    let x_518 : vec4<f32> = u_xlat2;
    let x_520 : vec3<f32> = (-(vec3<f32>(x_515.x, x_515.y, x_515.z)) + vec3<f32>(x_518.x, x_518.y, x_518.z));
    let x_521 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
    let x_524 : vec4<f32> = x_38.x_UserLut_Params;
    let x_526 : vec4<f32> = u_xlat2;
    let x_529 : vec4<f32> = u_xlat1;
    let x_531 : vec3<f32> = ((vec3<f32>(x_524.w, x_524.w, x_524.w) * vec3<f32>(x_526.x, x_526.y, x_526.z)) + vec3<f32>(x_529.x, x_529.y, x_529.z));
    let x_532 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
    let x_534 : vec4<f32> = u_xlat1;
    let x_538 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_539 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
    let x_541 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_541.x, x_541.y, x_541.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_546 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_546 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_550 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_550));
    let x_553 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_553 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_557 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_557);
    let x_561 : vec4<f32> = u_xlat1;
    let x_563 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_561.x, x_561.y, x_561.z, x_561.x));
    u_xlatb1 = vec3<bool>(x_563.x, x_563.y, x_563.z);
    let x_566 : bool = u_xlatb1.x;
    if (x_566) {
      let x_571 : f32 = u_xlat2.x;
      x_567 = x_571;
    } else {
      let x_574 : f32 = u_xlat3.x;
      x_567 = x_574;
    }
    let x_575 : f32 = x_567;
    u_xlat0.x = x_575;
    let x_578 : bool = u_xlatb1.y;
    if (x_578) {
      let x_583 : f32 = u_xlat2.y;
      x_579 = x_583;
    } else {
      let x_586 : f32 = u_xlat3.y;
      x_579 = x_586;
    }
    let x_587 : f32 = x_579;
    u_xlat0.y = x_587;
    let x_590 : bool = u_xlatb1.z;
    if (x_590) {
      let x_595 : f32 = u_xlat2.z;
      x_591 = x_595;
    } else {
      let x_598 : f32 = u_xlat3.z;
      x_591 = x_598;
    }
    let x_599 : f32 = x_591;
    u_xlat0.z = x_599;
  }
  let x_601 : vec4<f32> = u_xlat0;
  let x_604 : vec4<f32> = x_38.x_Lut_Params;
  let x_606 : vec3<f32> = (vec3<f32>(x_601.x, x_601.y, x_601.z) * vec3<f32>(x_604.z, x_604.z, x_604.z));
  let x_607 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_606.z);
  let x_610 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_610);
  let x_613 : vec4<f32> = x_38.x_Lut_Params;
  let x_615 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) * vec2<f32>(0.5f, 0.5f));
  let x_616 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat0;
  let x_621 : vec4<f32> = x_38.x_Lut_Params;
  let x_624 : vec4<f32> = u_xlat1;
  let x_626 : vec2<f32> = ((vec2<f32>(x_618.x, x_618.y) * vec2<f32>(x_621.x, x_621.y)) + vec2<f32>(x_624.x, x_624.y));
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_627.x, x_626.x, x_626.y, x_627.w);
  let x_629 : f32 = u_xlat15;
  let x_631 : f32 = x_38.x_Lut_Params.y;
  let x_634 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_629 * x_631) + x_634);
  let x_641 : vec4<f32> = u_xlat1;
  let x_643 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_641.x, x_641.z), 0.0f);
  let x_644 : vec3<f32> = vec3<f32>(x_643.x, x_643.y, x_643.z);
  let x_645 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_648 : f32 = x_38.x_Lut_Params.y;
  u_xlat0.x = x_648;
  u_xlat0.y = 0.0f;
  let x_651 : vec4<f32> = u_xlat0;
  let x_653 : vec4<f32> = u_xlat1;
  let x_655 : vec2<f32> = (vec2<f32>(x_651.x, x_651.y) + vec2<f32>(x_653.x, x_653.z));
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
  let x_661 : vec4<f32> = u_xlat0;
  let x_663 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_661.x, x_661.y), 0.0f);
  let x_664 : vec3<f32> = vec3<f32>(x_663.x, x_663.y, x_663.z);
  let x_665 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_668 : f32 = u_xlat0.z;
  let x_670 : f32 = x_38.x_Lut_Params.z;
  let x_672 : f32 = u_xlat15;
  u_xlat0.x = ((x_668 * x_670) + -(x_672));
  let x_677 : vec4<f32> = u_xlat2;
  let x_680 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_677.x, x_677.y, x_677.z)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat0;
  let x_685 : vec3<f32> = u_xlat5;
  let x_687 : vec4<f32> = u_xlat2;
  let x_689 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.x, x_683.x) * x_685) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec2<f32> = vs_TEXCOORD0;
  let x_695 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_699 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_701 : vec2<f32> = ((x_692 * vec2<f32>(x_695.x, x_695.y)) + vec2<f32>(x_699.z, x_699.w));
  let x_702 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_701.x, x_701.y, x_702.z, x_702.w);
  let x_709 : vec4<f32> = u_xlat1;
  let x_712 : f32 = x_38.x_GlobalMipBias.x;
  let x_713 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_709.x, x_709.y), x_712);
  u_xlat15 = x_713.w;
  let x_715 : f32 = u_xlat15;
  u_xlat15 = (x_715 + -0.5f);
  let x_718 : f32 = u_xlat15;
  let x_719 : f32 = u_xlat15;
  u_xlat15 = (x_718 + x_719);
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_721.x, x_721.y, x_721.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_730 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_730);
  let x_735 : f32 = x_38.x_Grain_Params.y;
  let x_737 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_735 * -(x_737)) + 1.0f);
  let x_743 : f32 = u_xlat15;
  let x_745 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_743, x_743, x_743) * vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec3<f32> = u_xlat6;
  let x_751 : vec2<f32> = x_38.x_Grain_Params;
  u_xlat6 = (x_748 * vec3<f32>(x_751.x, x_751.x, x_751.x));
  let x_754 : vec3<f32> = u_xlat6;
  let x_755 : vec4<f32> = u_xlat1;
  let x_758 : vec4<f32> = u_xlat0;
  let x_760 : vec3<f32> = ((x_754 * vec3<f32>(x_755.x, x_755.x, x_755.x)) + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat0;
  let x_765 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_766 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat0;
  let x_771 : vec3<f32> = log2(abs(vec3<f32>(x_768.x, x_768.y, x_768.z)));
  let x_772 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat2;
  let x_776 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec4<f32> = u_xlat2;
  let x_781 : vec3<f32> = exp2(vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat2;
  let x_787 : vec3<f32> = ((vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_788 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_791.x, x_791.y, x_791.z, x_791.x));
  u_xlatb0 = vec3<bool>(x_793.x, x_793.y, x_793.z);
  let x_798 : bool = u_xlatb0.x;
  if (x_798) {
    let x_803 : f32 = u_xlat1.x;
    x_799 = x_803;
  } else {
    let x_806 : f32 = u_xlat2.x;
    x_799 = x_806;
  }
  let x_807 : f32 = x_799;
  SV_Target0.x = x_807;
  let x_811 : bool = u_xlatb0.y;
  if (x_811) {
    let x_816 : f32 = u_xlat1.y;
    x_812 = x_816;
  } else {
    let x_819 : f32 = u_xlat2.y;
    x_812 = x_819;
  }
  let x_820 : f32 = x_812;
  SV_Target0.y = x_820;
  let x_823 : bool = u_xlatb0.z;
  if (x_823) {
    let x_828 : f32 = u_xlat1.z;
    x_824 = x_828;
  } else {
    let x_831 : f32 = u_xlat2.z;
    x_824 = x_831;
  }
  let x_832 : f32 = x_824;
  SV_Target0.z = x_832;
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


