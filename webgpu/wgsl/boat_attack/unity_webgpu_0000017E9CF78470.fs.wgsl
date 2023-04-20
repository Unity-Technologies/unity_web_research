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
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> u_xlatb0 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat15 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_284 : f32;
  var x_296 : f32;
  var x_308 : f32;
  var x_464 : f32;
  var x_476 : f32;
  var x_488 : f32;
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
  let x_223 : vec3<f32> = clamp(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_229 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_229);
  let x_231 : bool = u_xlatb15;
  if (x_231) {
    let x_234 : vec4<f32> = u_xlat0;
    let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_239 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
    let x_241 : vec4<f32> = u_xlat0;
    let x_243 : vec3<f32> = log2(vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_246 : vec4<f32> = u_xlat2;
    let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_251 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
    let x_253 : vec4<f32> = u_xlat2;
    let x_255 : vec3<f32> = exp2(vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_258 : vec4<f32> = u_xlat2;
    let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_266 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_273 : vec4<f32> = u_xlat0;
    let x_276 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_273.x, x_273.y, x_273.z, x_273.x));
    u_xlatb3 = vec3<bool>(x_276.x, x_276.y, x_276.z);
    let x_280 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_280;
    let x_282 : bool = u_xlatb3.x;
    if (x_282) {
      let x_288 : f32 = u_xlat1.x;
      x_284 = x_288;
    } else {
      let x_291 : f32 = u_xlat2.x;
      x_284 = x_291;
    }
    let x_292 : f32 = x_284;
    hlslcc_movcTemp.x = x_292;
    let x_295 : bool = u_xlatb3.y;
    if (x_295) {
      let x_300 : f32 = u_xlat1.y;
      x_296 = x_300;
    } else {
      let x_303 : f32 = u_xlat2.y;
      x_296 = x_303;
    }
    let x_304 : f32 = x_296;
    hlslcc_movcTemp.y = x_304;
    let x_307 : bool = u_xlatb3.z;
    if (x_307) {
      let x_312 : f32 = u_xlat1.z;
      x_308 = x_312;
    } else {
      let x_315 : f32 = u_xlat2.z;
      x_308 = x_315;
    }
    let x_316 : f32 = x_308;
    hlslcc_movcTemp.z = x_316;
    let x_318 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_318;
    let x_319 : vec4<f32> = u_xlat1;
    let x_322 : vec4<f32> = x_38.x_UserLut_Params;
    let x_324 : vec3<f32> = (vec3<f32>(x_319.z, x_319.x, x_319.y) * vec3<f32>(x_322.z, x_322.z, x_322.z));
    let x_325 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
    let x_329 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_329);
    let x_332 : vec4<f32> = x_38.x_UserLut_Params;
    let x_335 : vec2<f32> = (vec2<f32>(x_332.x, x_332.y) * vec2<f32>(0.5f, 0.5f));
    let x_336 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_335.x, x_336.y, x_336.z, x_335.y);
    let x_338 : vec4<f32> = u_xlat2;
    let x_341 : vec4<f32> = x_38.x_UserLut_Params;
    let x_344 : vec4<f32> = u_xlat2;
    let x_346 : vec2<f32> = ((vec2<f32>(x_338.y, x_338.z) * vec2<f32>(x_341.x, x_341.y)) + vec2<f32>(x_344.x, x_344.w));
    let x_347 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_347.x, x_346.x, x_346.y, x_347.w);
    let x_349 : f32 = u_xlat15;
    let x_351 : f32 = x_38.x_UserLut_Params.y;
    let x_354 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_349 * x_351) + x_354);
    let x_362 : vec4<f32> = u_xlat2;
    let x_364 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_362.x, x_362.z), 0.0f);
    u_xlat3 = vec3<f32>(x_364.x, x_364.y, x_364.z);
    let x_369 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_369;
    u_xlat4.y = 0.0f;
    let x_372 : vec4<f32> = u_xlat2;
    let x_374 : vec2<f32> = u_xlat4;
    let x_375 : vec2<f32> = (vec2<f32>(x_372.x, x_372.z) + x_374);
    let x_376 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_375.x, x_375.y, x_376.z, x_376.w);
    let x_381 : vec4<f32> = u_xlat2;
    let x_383 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_381.x, x_381.y), 0.0f);
    let x_384 : vec3<f32> = vec3<f32>(x_383.x, x_383.y, x_383.z);
    let x_385 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
    let x_388 : f32 = u_xlat1.z;
    let x_390 : f32 = x_38.x_UserLut_Params.z;
    let x_392 : f32 = u_xlat15;
    u_xlat15 = ((x_388 * x_390) + -(x_392));
    let x_395 : vec3<f32> = u_xlat3;
    let x_397 : vec4<f32> = u_xlat2;
    let x_399 : vec3<f32> = (-(x_395) + vec3<f32>(x_397.x, x_397.y, x_397.z));
    let x_400 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
    let x_402 : f32 = u_xlat15;
    let x_404 : vec4<f32> = u_xlat2;
    let x_407 : vec3<f32> = u_xlat3;
    let x_408 : vec3<f32> = ((vec3<f32>(x_402, x_402, x_402) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
    let x_409 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
    let x_411 : vec4<f32> = u_xlat1;
    let x_414 : vec4<f32> = u_xlat2;
    let x_416 : vec3<f32> = (-(vec3<f32>(x_411.x, x_411.y, x_411.z)) + vec3<f32>(x_414.x, x_414.y, x_414.z));
    let x_417 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
    let x_420 : vec4<f32> = x_38.x_UserLut_Params;
    let x_422 : vec4<f32> = u_xlat2;
    let x_425 : vec4<f32> = u_xlat1;
    let x_427 : vec3<f32> = ((vec3<f32>(x_420.w, x_420.w, x_420.w) * vec3<f32>(x_422.x, x_422.y, x_422.z)) + vec3<f32>(x_425.x, x_425.y, x_425.z));
    let x_428 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
    let x_430 : vec4<f32> = u_xlat1;
    let x_434 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_435 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
    let x_437 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_437.x, x_437.y, x_437.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_442 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_442 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_446 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_446));
    let x_449 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_449 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_453 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_453);
    let x_458 : vec4<f32> = u_xlat1;
    let x_460 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_458.x, x_458.y, x_458.z, x_458.x));
    u_xlatb1 = vec3<bool>(x_460.x, x_460.y, x_460.z);
    let x_463 : bool = u_xlatb1.x;
    if (x_463) {
      let x_468 : f32 = u_xlat2.x;
      x_464 = x_468;
    } else {
      let x_471 : f32 = u_xlat3.x;
      x_464 = x_471;
    }
    let x_472 : f32 = x_464;
    u_xlat0.x = x_472;
    let x_475 : bool = u_xlatb1.y;
    if (x_475) {
      let x_480 : f32 = u_xlat2.y;
      x_476 = x_480;
    } else {
      let x_483 : f32 = u_xlat3.y;
      x_476 = x_483;
    }
    let x_484 : f32 = x_476;
    u_xlat0.y = x_484;
    let x_487 : bool = u_xlatb1.z;
    if (x_487) {
      let x_492 : f32 = u_xlat2.z;
      x_488 = x_492;
    } else {
      let x_495 : f32 = u_xlat3.z;
      x_488 = x_495;
    }
    let x_496 : f32 = x_488;
    u_xlat0.z = x_496;
  }
  let x_498 : vec4<f32> = u_xlat0;
  let x_501 : vec4<f32> = x_38.x_Lut_Params;
  let x_503 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_501.z, x_501.z, x_501.z));
  let x_504 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_503.z);
  let x_507 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_507);
  let x_510 : vec4<f32> = x_38.x_Lut_Params;
  let x_512 : vec2<f32> = (vec2<f32>(x_510.x, x_510.y) * vec2<f32>(0.5f, 0.5f));
  let x_513 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat0;
  let x_518 : vec4<f32> = x_38.x_Lut_Params;
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec2<f32> = ((vec2<f32>(x_515.x, x_515.y) * vec2<f32>(x_518.x, x_518.y)) + vec2<f32>(x_521.x, x_521.y));
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_524.x, x_523.x, x_523.y, x_524.w);
  let x_526 : f32 = u_xlat15;
  let x_528 : f32 = x_38.x_Lut_Params.y;
  let x_531 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_526 * x_528) + x_531);
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_538.x, x_538.z), 0.0f);
  let x_541 : vec3<f32> = vec3<f32>(x_540.x, x_540.y, x_540.z);
  let x_542 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_545 : f32 = x_38.x_Lut_Params.y;
  u_xlat0.x = x_545;
  u_xlat0.y = 0.0f;
  let x_548 : vec4<f32> = u_xlat0;
  let x_550 : vec4<f32> = u_xlat1;
  let x_552 : vec2<f32> = (vec2<f32>(x_548.x, x_548.y) + vec2<f32>(x_550.x, x_550.z));
  let x_553 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
  let x_558 : vec4<f32> = u_xlat0;
  let x_560 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_558.x, x_558.y), 0.0f);
  let x_561 : vec3<f32> = vec3<f32>(x_560.x, x_560.y, x_560.z);
  let x_562 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_565 : f32 = u_xlat0.z;
  let x_567 : f32 = x_38.x_Lut_Params.z;
  let x_569 : f32 = u_xlat15;
  u_xlat0.x = ((x_565 * x_567) + -(x_569));
  let x_573 : vec4<f32> = u_xlat2;
  let x_576 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_573.x, x_573.y, x_573.z)) + vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec4<f32> = u_xlat0;
  let x_581 : vec3<f32> = u_xlat5;
  let x_583 : vec4<f32> = u_xlat2;
  let x_585 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.x, x_579.x) * x_581) + vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec3<f32> = sqrt(vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
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


