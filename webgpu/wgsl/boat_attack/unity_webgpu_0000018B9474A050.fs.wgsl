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
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_290 : f32;
  var x_302 : f32;
  var x_314 : f32;
  var x_469 : f32;
  var x_481 : f32;
  var x_493 : f32;
  var x_680 : f32;
  var x_692 : f32;
  var x_704 : f32;
  var x_761 : f32;
  var x_773 : f32;
  var x_785 : f32;
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
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : f32 = x_13.x_GlobalMipBias.x;
  let x_89 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_85.x, x_85.y), x_88);
  u_xlat1 = x_89;
  let x_96 : f32 = x_13.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_96);
  let x_98 : bool = u_xlatb15;
  if (x_98) {
    let x_102 : vec4<f32> = u_xlat1;
    let x_104 : vec4<f32> = u_xlat1;
    let x_106 : vec3<f32> = (vec3<f32>(x_102.w, x_102.w, x_102.w) * vec3<f32>(x_104.x, x_104.y, x_104.z));
    let x_107 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
    let x_109 : vec4<f32> = u_xlat2;
    let x_113 : vec3<f32> = (vec3<f32>(x_109.x, x_109.y, x_109.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_114 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  }
  let x_116 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = x_13.x_Bloom_Params;
  let x_122 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) * vec3<f32>(x_120.x, x_120.x, x_120.x));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = x_13.x_Bloom_Params;
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec3<f32> = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_128.y, x_128.z, x_128.w)) + vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_139 : f32 = x_13.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_139);
  let x_141 : bool = u_xlatb15;
  if (x_141) {
    let x_144 : vec2<f32> = vs_TEXCOORD0;
    let x_146 : vec4<f32> = x_13.x_Vignette_Params2;
    let x_149 : vec2<f32> = (x_144 + -(vec2<f32>(x_146.x, x_146.y)));
    let x_150 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_149.x, x_149.y, x_150.z, x_150.w);
    let x_152 : vec4<f32> = u_xlat1;
    let x_156 : vec4<f32> = x_13.x_Vignette_Params2;
    let x_158 : vec2<f32> = (abs(vec2<f32>(x_152.x, x_152.y)) * vec2<f32>(x_156.z, x_156.z));
    let x_159 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_159.x, x_158.x, x_158.y, x_159.w);
    let x_164 : f32 = u_xlat1.y;
    let x_168 : f32 = x_13.x_Vignette_Params1.w;
    u_xlat1.x = (x_164 * x_168);
    let x_172 : vec4<f32> = u_xlat1;
    let x_174 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_172.x, x_172.z), vec2<f32>(x_174.x, x_174.z));
    let x_177 : f32 = u_xlat15;
    u_xlat15 = (-(x_177) + 1.0f);
    let x_181 : f32 = u_xlat15;
    u_xlat15 = max(x_181, 0.0f);
    let x_183 : f32 = u_xlat15;
    u_xlat15 = log2(x_183);
    let x_185 : f32 = u_xlat15;
    let x_187 : f32 = x_13.x_Vignette_Params2.w;
    u_xlat15 = (x_185 * x_187);
    let x_189 : f32 = u_xlat15;
    u_xlat15 = exp2(x_189);
    let x_192 : vec4<f32> = x_13.x_Vignette_Params1;
    let x_196 : vec3<f32> = (-(vec3<f32>(x_192.x, x_192.y, x_192.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_197 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : f32 = u_xlat15;
    let x_201 : vec4<f32> = u_xlat1;
    let x_205 : vec4<f32> = x_13.x_Vignette_Params1;
    let x_207 : vec3<f32> = ((vec3<f32>(x_199, x_199, x_199) * vec3<f32>(x_201.x, x_201.y, x_201.z)) + vec3<f32>(x_205.x, x_205.y, x_205.z));
    let x_208 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
    let x_210 : vec4<f32> = u_xlat0;
    let x_212 : vec4<f32> = u_xlat1;
    let x_214 : vec3<f32> = (vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.x, x_212.y, x_212.z));
    let x_215 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  }
  let x_217 : vec4<f32> = u_xlat0;
  let x_221 : vec4<f32> = x_13.x_Lut_Params;
  let x_223 : vec3<f32> = (vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_221.w, x_221.w, x_221.w));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat0;
  let x_230 : vec3<f32> = clamp(vec3<f32>(x_226.x, x_226.y, x_226.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_235 : f32 = x_13.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_235);
  let x_237 : bool = u_xlatb15;
  if (x_237) {
    let x_240 : vec4<f32> = u_xlat0;
    let x_244 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_245 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_247 : vec4<f32> = u_xlat0;
    let x_249 : vec3<f32> = log2(vec3<f32>(x_247.x, x_247.y, x_247.z));
    let x_250 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
    let x_252 : vec4<f32> = u_xlat2;
    let x_256 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_257 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_259 : vec4<f32> = u_xlat2;
    let x_261 : vec3<f32> = exp2(vec3<f32>(x_259.x, x_259.y, x_259.z));
    let x_262 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_264 : vec4<f32> = u_xlat2;
    let x_271 : vec3<f32> = ((vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_272 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
    let x_279 : vec4<f32> = u_xlat0;
    let x_282 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_279.x, x_279.y, x_279.z, x_279.x));
    u_xlatb3 = vec3<bool>(x_282.x, x_282.y, x_282.z);
    let x_286 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_286;
    let x_288 : bool = u_xlatb3.x;
    if (x_288) {
      let x_294 : f32 = u_xlat1.x;
      x_290 = x_294;
    } else {
      let x_297 : f32 = u_xlat2.x;
      x_290 = x_297;
    }
    let x_298 : f32 = x_290;
    hlslcc_movcTemp.x = x_298;
    let x_301 : bool = u_xlatb3.y;
    if (x_301) {
      let x_306 : f32 = u_xlat1.y;
      x_302 = x_306;
    } else {
      let x_309 : f32 = u_xlat2.y;
      x_302 = x_309;
    }
    let x_310 : f32 = x_302;
    hlslcc_movcTemp.y = x_310;
    let x_313 : bool = u_xlatb3.z;
    if (x_313) {
      let x_318 : f32 = u_xlat1.z;
      x_314 = x_318;
    } else {
      let x_321 : f32 = u_xlat2.z;
      x_314 = x_321;
    }
    let x_322 : f32 = x_314;
    hlslcc_movcTemp.z = x_322;
    let x_324 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_324;
    let x_325 : vec4<f32> = u_xlat1;
    let x_328 : vec4<f32> = x_13.x_UserLut_Params;
    let x_330 : vec3<f32> = (vec3<f32>(x_325.z, x_325.x, x_325.y) * vec3<f32>(x_328.z, x_328.z, x_328.z));
    let x_331 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_334 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_334);
    let x_337 : vec4<f32> = x_13.x_UserLut_Params;
    let x_339 : vec2<f32> = (vec2<f32>(x_337.x, x_337.y) * vec2<f32>(0.5f, 0.5f));
    let x_340 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_339.x, x_340.y, x_340.z, x_339.y);
    let x_342 : vec4<f32> = u_xlat2;
    let x_345 : vec4<f32> = x_13.x_UserLut_Params;
    let x_348 : vec4<f32> = u_xlat2;
    let x_350 : vec2<f32> = ((vec2<f32>(x_342.y, x_342.z) * vec2<f32>(x_345.x, x_345.y)) + vec2<f32>(x_348.x, x_348.w));
    let x_351 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_351.x, x_350.x, x_350.y, x_351.w);
    let x_353 : f32 = u_xlat15;
    let x_355 : f32 = x_13.x_UserLut_Params.y;
    let x_358 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_353 * x_355) + x_358);
    let x_367 : vec4<f32> = u_xlat2;
    let x_369 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_367.x, x_367.z), 0.0f);
    u_xlat3 = vec3<f32>(x_369.x, x_369.y, x_369.z);
    let x_374 : f32 = x_13.x_UserLut_Params.y;
    u_xlat4.x = x_374;
    u_xlat4.y = 0.0f;
    let x_377 : vec4<f32> = u_xlat2;
    let x_379 : vec2<f32> = u_xlat4;
    let x_380 : vec2<f32> = (vec2<f32>(x_377.x, x_377.z) + x_379);
    let x_381 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
    let x_386 : vec4<f32> = u_xlat2;
    let x_388 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_386.x, x_386.y), 0.0f);
    let x_389 : vec3<f32> = vec3<f32>(x_388.x, x_388.y, x_388.z);
    let x_390 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
    let x_393 : f32 = u_xlat1.z;
    let x_395 : f32 = x_13.x_UserLut_Params.z;
    let x_397 : f32 = u_xlat15;
    u_xlat15 = ((x_393 * x_395) + -(x_397));
    let x_400 : vec3<f32> = u_xlat3;
    let x_402 : vec4<f32> = u_xlat2;
    let x_404 : vec3<f32> = (-(x_400) + vec3<f32>(x_402.x, x_402.y, x_402.z));
    let x_405 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
    let x_407 : f32 = u_xlat15;
    let x_409 : vec4<f32> = u_xlat2;
    let x_412 : vec3<f32> = u_xlat3;
    let x_413 : vec3<f32> = ((vec3<f32>(x_407, x_407, x_407) * vec3<f32>(x_409.x, x_409.y, x_409.z)) + x_412);
    let x_414 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
    let x_416 : vec4<f32> = u_xlat1;
    let x_419 : vec4<f32> = u_xlat2;
    let x_421 : vec3<f32> = (-(vec3<f32>(x_416.x, x_416.y, x_416.z)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
    let x_422 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
    let x_425 : vec4<f32> = x_13.x_UserLut_Params;
    let x_427 : vec4<f32> = u_xlat2;
    let x_430 : vec4<f32> = u_xlat1;
    let x_432 : vec3<f32> = ((vec3<f32>(x_425.w, x_425.w, x_425.w) * vec3<f32>(x_427.x, x_427.y, x_427.z)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
    let x_433 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_435 : vec4<f32> = u_xlat1;
    let x_439 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_440 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
    let x_442 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_442.x, x_442.y, x_442.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_447 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_447 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_451 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_451));
    let x_454 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_454 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_458 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_458);
    let x_463 : vec4<f32> = u_xlat1;
    let x_465 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_463.x, x_463.y, x_463.z, x_463.x));
    u_xlatb1 = vec3<bool>(x_465.x, x_465.y, x_465.z);
    let x_468 : bool = u_xlatb1.x;
    if (x_468) {
      let x_473 : f32 = u_xlat2.x;
      x_469 = x_473;
    } else {
      let x_476 : f32 = u_xlat3.x;
      x_469 = x_476;
    }
    let x_477 : f32 = x_469;
    u_xlat0.x = x_477;
    let x_480 : bool = u_xlatb1.y;
    if (x_480) {
      let x_485 : f32 = u_xlat2.y;
      x_481 = x_485;
    } else {
      let x_488 : f32 = u_xlat3.y;
      x_481 = x_488;
    }
    let x_489 : f32 = x_481;
    u_xlat0.y = x_489;
    let x_492 : bool = u_xlatb1.z;
    if (x_492) {
      let x_497 : f32 = u_xlat2.z;
      x_493 = x_497;
    } else {
      let x_500 : f32 = u_xlat3.z;
      x_493 = x_500;
    }
    let x_501 : f32 = x_493;
    u_xlat0.z = x_501;
  }
  let x_503 : vec4<f32> = u_xlat0;
  let x_506 : vec4<f32> = x_13.x_Lut_Params;
  let x_508 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_506.z, x_506.z, x_506.z));
  let x_509 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_508.z);
  let x_512 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_512);
  let x_515 : vec4<f32> = x_13.x_Lut_Params;
  let x_517 : vec2<f32> = (vec2<f32>(x_515.x, x_515.y) * vec2<f32>(0.5f, 0.5f));
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat0;
  let x_523 : vec4<f32> = x_13.x_Lut_Params;
  let x_526 : vec4<f32> = u_xlat1;
  let x_528 : vec2<f32> = ((vec2<f32>(x_520.x, x_520.y) * vec2<f32>(x_523.x, x_523.y)) + vec2<f32>(x_526.x, x_526.y));
  let x_529 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_529.x, x_528.x, x_528.y, x_529.w);
  let x_531 : f32 = u_xlat15;
  let x_533 : f32 = x_13.x_Lut_Params.y;
  let x_536 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_531 * x_533) + x_536);
  let x_543 : vec4<f32> = u_xlat1;
  let x_545 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_543.x, x_543.z), 0.0f);
  let x_546 : vec3<f32> = vec3<f32>(x_545.x, x_545.y, x_545.z);
  let x_547 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_550 : f32 = x_13.x_Lut_Params.y;
  u_xlat0.x = x_550;
  u_xlat0.y = 0.0f;
  let x_553 : vec4<f32> = u_xlat0;
  let x_555 : vec4<f32> = u_xlat1;
  let x_557 : vec2<f32> = (vec2<f32>(x_553.x, x_553.y) + vec2<f32>(x_555.x, x_555.z));
  let x_558 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
  let x_563 : vec4<f32> = u_xlat0;
  let x_565 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_563.x, x_563.y), 0.0f);
  let x_566 : vec3<f32> = vec3<f32>(x_565.x, x_565.y, x_565.z);
  let x_567 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_570 : f32 = u_xlat0.z;
  let x_572 : f32 = x_13.x_Lut_Params.z;
  let x_574 : f32 = u_xlat15;
  u_xlat0.x = ((x_570 * x_572) + -(x_574));
  let x_579 : vec4<f32> = u_xlat2;
  let x_582 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_579.x, x_579.y, x_579.z)) + vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : vec4<f32> = u_xlat0;
  let x_587 : vec3<f32> = u_xlat5;
  let x_589 : vec4<f32> = u_xlat2;
  let x_591 : vec3<f32> = ((vec3<f32>(x_585.x, x_585.x, x_585.x) * x_587) + vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat0;
  let x_596 : vec3<f32> = sqrt(vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec2<f32> = vs_TEXCOORD0;
  let x_602 : vec4<f32> = x_13.x_Dithering_Params;
  let x_606 : vec4<f32> = x_13.x_Dithering_Params;
  let x_608 : vec2<f32> = ((x_599 * vec2<f32>(x_602.x, x_602.y)) + vec2<f32>(x_606.z, x_606.w));
  let x_609 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
  let x_616 : vec4<f32> = u_xlat1;
  let x_619 : f32 = x_13.x_GlobalMipBias.x;
  let x_620 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_616.x, x_616.y), x_619);
  u_xlat15 = x_620.w;
  let x_622 : f32 = u_xlat15;
  u_xlat15 = ((x_622 * 2.0f) + -1.0f);
  let x_627 : f32 = u_xlat15;
  u_xlatb1.x = (x_627 >= 0.0f);
  let x_631 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_631);
  let x_634 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_634)) + 1.0f);
  let x_638 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_638);
  let x_640 : f32 = u_xlat15;
  u_xlat15 = (-(x_640) + 1.0f);
  let x_643 : f32 = u_xlat15;
  let x_645 : f32 = u_xlat1.x;
  u_xlat15 = (x_643 * x_645);
  let x_647 : vec4<f32> = u_xlat0;
  let x_649 : vec3<f32> = (vec3<f32>(x_647.x, x_647.y, x_647.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_650 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec4<f32> = u_xlat0;
  let x_654 : vec3<f32> = log2(vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat2;
  let x_659 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_660 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat2;
  let x_664 : vec3<f32> = exp2(vec3<f32>(x_662.x, x_662.y, x_662.z));
  let x_665 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : vec4<f32> = u_xlat2;
  let x_670 : vec3<f32> = ((vec3<f32>(x_667.x, x_667.y, x_667.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_671 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_674 : vec4<f32> = u_xlat0;
  let x_676 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_674.x, x_674.y, x_674.z, x_674.x));
  u_xlatb0 = vec3<bool>(x_676.x, x_676.y, x_676.z);
  let x_679 : bool = u_xlatb0.x;
  if (x_679) {
    let x_684 : f32 = u_xlat1.x;
    x_680 = x_684;
  } else {
    let x_687 : f32 = u_xlat2.x;
    x_680 = x_687;
  }
  let x_688 : f32 = x_680;
  u_xlat0.x = x_688;
  let x_691 : bool = u_xlatb0.y;
  if (x_691) {
    let x_696 : f32 = u_xlat1.y;
    x_692 = x_696;
  } else {
    let x_699 : f32 = u_xlat2.y;
    x_692 = x_699;
  }
  let x_700 : f32 = x_692;
  u_xlat0.y = x_700;
  let x_703 : bool = u_xlatb0.z;
  if (x_703) {
    let x_708 : f32 = u_xlat1.z;
    x_704 = x_708;
  } else {
    let x_711 : f32 = u_xlat2.z;
    x_704 = x_711;
  }
  let x_712 : f32 = x_704;
  u_xlat0.z = x_712;
  let x_714 : f32 = u_xlat15;
  let x_719 : vec4<f32> = u_xlat0;
  let x_721 : vec3<f32> = ((vec3<f32>(x_714, x_714, x_714) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat0;
  let x_726 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec4<f32> = u_xlat0;
  let x_731 : vec3<f32> = (vec3<f32>(x_729.x, x_729.y, x_729.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_732 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat2;
  let x_736 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_737 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat2;
  let x_742 : vec3<f32> = log2(abs(vec3<f32>(x_739.x, x_739.y, x_739.z)));
  let x_743 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat2;
  let x_747 : vec3<f32> = (vec3<f32>(x_745.x, x_745.y, x_745.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_748 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec4<f32> = u_xlat2;
  let x_752 : vec3<f32> = exp2(vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat0;
  let x_757 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_755.x, x_755.y, x_755.z, x_755.x));
  u_xlatb0 = vec3<bool>(x_757.x, x_757.y, x_757.z);
  let x_760 : bool = u_xlatb0.x;
  if (x_760) {
    let x_765 : f32 = u_xlat1.x;
    x_761 = x_765;
  } else {
    let x_768 : f32 = u_xlat2.x;
    x_761 = x_768;
  }
  let x_769 : f32 = x_761;
  u_xlat0.x = x_769;
  let x_772 : bool = u_xlatb0.y;
  if (x_772) {
    let x_777 : f32 = u_xlat1.y;
    x_773 = x_777;
  } else {
    let x_780 : f32 = u_xlat2.y;
    x_773 = x_780;
  }
  let x_781 : f32 = x_773;
  u_xlat0.y = x_781;
  let x_784 : bool = u_xlatb0.z;
  if (x_784) {
    let x_789 : f32 = u_xlat1.z;
    x_785 = x_789;
  } else {
    let x_792 : f32 = u_xlat2.z;
    x_785 = x_792;
  }
  let x_793 : f32 = x_785;
  u_xlat0.z = x_793;
  let x_797 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = max(vec3<f32>(x_797.x, x_797.y, x_797.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_801 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
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


