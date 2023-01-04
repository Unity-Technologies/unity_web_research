struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_311 : f32;
  var x_323 : f32;
  var x_335 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_492 : f32;
  var x_504 : f32;
  var x_516 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_703 : f32;
  var x_715 : f32;
  var x_727 : f32;
  var x_784 : f32;
  var x_796 : f32;
  var x_808 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_33);
  let x_36 : vec3<f32> = vec3<f32>(x_34.x, x_34.y, x_34.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_26.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_44, x_46);
  u_xlat1 = x_47;
  let x_54 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_54);
  let x_56 : bool = u_xlatb15;
  if (x_56) {
    let x_60 : vec4<f32> = u_xlat1;
    let x_62 : vec4<f32> = u_xlat1;
    let x_64 : vec3<f32> = (vec3<f32>(x_60.w, x_60.w, x_60.w) * vec3<f32>(x_62.x, x_62.y, x_62.z));
    let x_65 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_64.x, x_64.y, x_64.z, x_65.w);
    let x_67 : vec4<f32> = u_xlat2;
    let x_71 : vec3<f32> = (vec3<f32>(x_67.x, x_67.y, x_67.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_72 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  }
  let x_74 : vec4<f32> = u_xlat1;
  let x_79 : vec4<f32> = x_26.x_Bloom_Params;
  let x_81 : vec3<f32> = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_82 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_84 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = x_26.x_Bloom_Params;
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec3<f32> = ((vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(x_87.y, x_87.z, x_87.w)) + vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_98 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_98);
  let x_100 : bool = u_xlatb15;
  if (x_100) {
    let x_103 : vec2<f32> = vs_TEXCOORD0;
    let x_105 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_108 : vec2<f32> = (x_103 + -(vec2<f32>(x_105.x, x_105.y)));
    let x_109 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
    let x_111 : vec4<f32> = u_xlat1;
    let x_115 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_117 : vec2<f32> = (abs(vec2<f32>(x_111.x, x_111.y)) * vec2<f32>(x_115.z, x_115.z));
    let x_118 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_118.x, x_117.x, x_117.y, x_118.w);
    let x_123 : f32 = u_xlat1.y;
    let x_127 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_123 * x_127);
    let x_131 : vec4<f32> = u_xlat1;
    let x_133 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_131.x, x_131.z), vec2<f32>(x_133.x, x_133.z));
    let x_136 : f32 = u_xlat15;
    u_xlat15 = (-(x_136) + 1.0f);
    let x_140 : f32 = u_xlat15;
    u_xlat15 = max(x_140, 0.0f);
    let x_142 : f32 = u_xlat15;
    u_xlat15 = log2(x_142);
    let x_144 : f32 = u_xlat15;
    let x_146 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_144 * x_146);
    let x_148 : f32 = u_xlat15;
    u_xlat15 = exp2(x_148);
    let x_151 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_155 : vec3<f32> = (-(vec3<f32>(x_151.x, x_151.y, x_151.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_156 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
    let x_158 : f32 = u_xlat15;
    let x_160 : vec4<f32> = u_xlat1;
    let x_164 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_166 : vec3<f32> = ((vec3<f32>(x_158, x_158, x_158) * vec3<f32>(x_160.x, x_160.y, x_160.z)) + vec3<f32>(x_164.x, x_164.y, x_164.z));
    let x_167 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_169 : vec4<f32> = u_xlat0;
    let x_171 : vec4<f32> = u_xlat1;
    let x_173 : vec3<f32> = (vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.x, x_171.y, x_171.z));
    let x_174 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  }
  let x_176 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = x_26.x_Lut_Params;
  let x_182 : vec3<f32> = (vec3<f32>(x_176.x, x_176.y, x_176.z) * vec3<f32>(x_180.w, x_180.w, x_180.w));
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat0;
  let x_189 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_190 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat0;
  let x_199 : vec3<f32> = ((vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat1;
  let x_204 : vec4<f32> = u_xlat2;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = ((vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat2;
  let x_232 : vec4<f32> = u_xlat0;
  let x_234 : vec3<f32> = (vec3<f32>(x_230.x, x_230.y, x_230.z) / vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec4<f32> = u_xlat0;
  let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat0;
  let x_253 : vec3<f32> = clamp(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_254 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_258 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_258);
  let x_260 : bool = u_xlatb15;
  if (x_260) {
    let x_263 : vec4<f32> = u_xlat0;
    let x_267 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_268 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
    let x_270 : vec4<f32> = u_xlat0;
    let x_272 : vec3<f32> = log2(vec3<f32>(x_270.x, x_270.y, x_270.z));
    let x_273 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_275 : vec4<f32> = u_xlat2;
    let x_279 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_280 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
    let x_282 : vec4<f32> = u_xlat2;
    let x_284 : vec3<f32> = exp2(vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_287 : vec4<f32> = u_xlat2;
    let x_294 : vec3<f32> = ((vec3<f32>(x_287.x, x_287.y, x_287.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_295 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
    let x_302 : vec4<f32> = u_xlat0;
    let x_305 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_302.x, x_302.y, x_302.z, x_302.x));
    u_xlatb3 = vec3<bool>(x_305.x, x_305.y, x_305.z);
    let x_308 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_308;
    let x_310 : bool = u_xlatb3.x;
    if (x_310) {
      let x_315 : f32 = u_xlat1.x;
      x_311 = x_315;
    } else {
      let x_318 : f32 = u_xlat2.x;
      x_311 = x_318;
    }
    let x_319 : f32 = x_311;
    hlslcc_movcTemp.x = x_319;
    let x_322 : bool = u_xlatb3.y;
    if (x_322) {
      let x_327 : f32 = u_xlat1.y;
      x_323 = x_327;
    } else {
      let x_330 : f32 = u_xlat2.y;
      x_323 = x_330;
    }
    let x_331 : f32 = x_323;
    hlslcc_movcTemp.y = x_331;
    let x_334 : bool = u_xlatb3.z;
    if (x_334) {
      let x_339 : f32 = u_xlat1.z;
      x_335 = x_339;
    } else {
      let x_342 : f32 = u_xlat2.z;
      x_335 = x_342;
    }
    let x_343 : f32 = x_335;
    hlslcc_movcTemp.z = x_343;
    let x_345 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_345;
    let x_346 : vec4<f32> = u_xlat1;
    let x_349 : vec4<f32> = x_26.x_UserLut_Params;
    let x_351 : vec3<f32> = (vec3<f32>(x_346.z, x_346.x, x_346.y) * vec3<f32>(x_349.z, x_349.z, x_349.z));
    let x_352 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
    let x_355 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_355);
    let x_358 : vec4<f32> = x_26.x_UserLut_Params;
    let x_362 : vec2<f32> = (vec2<f32>(x_358.x, x_358.y) * vec2<f32>(0.5f, 0.5f));
    let x_363 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_362.x, x_363.y, x_363.z, x_362.y);
    let x_365 : vec4<f32> = u_xlat2;
    let x_368 : vec4<f32> = x_26.x_UserLut_Params;
    let x_371 : vec4<f32> = u_xlat2;
    let x_373 : vec2<f32> = ((vec2<f32>(x_365.y, x_365.z) * vec2<f32>(x_368.x, x_368.y)) + vec2<f32>(x_371.x, x_371.w));
    let x_374 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_374.x, x_373.x, x_373.y, x_374.w);
    let x_376 : f32 = u_xlat15;
    let x_378 : f32 = x_26.x_UserLut_Params.y;
    let x_381 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_376 * x_378) + x_381);
    let x_390 : vec4<f32> = u_xlat2;
    let x_392 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_390.x, x_390.z), 0.0f);
    u_xlat3 = vec3<f32>(x_392.x, x_392.y, x_392.z);
    let x_397 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_397;
    u_xlat4.y = 0.0f;
    let x_400 : vec4<f32> = u_xlat2;
    let x_402 : vec2<f32> = u_xlat4;
    let x_403 : vec2<f32> = (vec2<f32>(x_400.x, x_400.z) + x_402);
    let x_404 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
    let x_409 : vec4<f32> = u_xlat2;
    let x_411 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_409.x, x_409.y), 0.0f);
    let x_412 : vec3<f32> = vec3<f32>(x_411.x, x_411.y, x_411.z);
    let x_413 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
    let x_416 : f32 = u_xlat1.z;
    let x_418 : f32 = x_26.x_UserLut_Params.z;
    let x_420 : f32 = u_xlat15;
    u_xlat15 = ((x_416 * x_418) + -(x_420));
    let x_423 : vec3<f32> = u_xlat3;
    let x_425 : vec4<f32> = u_xlat2;
    let x_427 : vec3<f32> = (-(x_423) + vec3<f32>(x_425.x, x_425.y, x_425.z));
    let x_428 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
    let x_430 : f32 = u_xlat15;
    let x_432 : vec4<f32> = u_xlat2;
    let x_435 : vec3<f32> = u_xlat3;
    let x_436 : vec3<f32> = ((vec3<f32>(x_430, x_430, x_430) * vec3<f32>(x_432.x, x_432.y, x_432.z)) + x_435);
    let x_437 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
    let x_439 : vec4<f32> = u_xlat1;
    let x_442 : vec4<f32> = u_xlat2;
    let x_444 : vec3<f32> = (-(vec3<f32>(x_439.x, x_439.y, x_439.z)) + vec3<f32>(x_442.x, x_442.y, x_442.z));
    let x_445 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
    let x_448 : vec4<f32> = x_26.x_UserLut_Params;
    let x_450 : vec4<f32> = u_xlat2;
    let x_453 : vec4<f32> = u_xlat1;
    let x_455 : vec3<f32> = ((vec3<f32>(x_448.w, x_448.w, x_448.w) * vec3<f32>(x_450.x, x_450.y, x_450.z)) + vec3<f32>(x_453.x, x_453.y, x_453.z));
    let x_456 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
    let x_458 : vec4<f32> = u_xlat1;
    let x_462 : vec3<f32> = (vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_463 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
    let x_465 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_465.x, x_465.y, x_465.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_470 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_470 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_474 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_474));
    let x_477 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_477 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_481 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_481);
    let x_486 : vec4<f32> = u_xlat1;
    let x_488 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_486.x, x_486.y, x_486.z, x_486.x));
    u_xlatb1 = vec3<bool>(x_488.x, x_488.y, x_488.z);
    let x_491 : bool = u_xlatb1.x;
    if (x_491) {
      let x_496 : f32 = u_xlat2.x;
      x_492 = x_496;
    } else {
      let x_499 : f32 = u_xlat3.x;
      x_492 = x_499;
    }
    let x_500 : f32 = x_492;
    u_xlat0.x = x_500;
    let x_503 : bool = u_xlatb1.y;
    if (x_503) {
      let x_508 : f32 = u_xlat2.y;
      x_504 = x_508;
    } else {
      let x_511 : f32 = u_xlat3.y;
      x_504 = x_511;
    }
    let x_512 : f32 = x_504;
    u_xlat0.y = x_512;
    let x_515 : bool = u_xlatb1.z;
    if (x_515) {
      let x_520 : f32 = u_xlat2.z;
      x_516 = x_520;
    } else {
      let x_523 : f32 = u_xlat3.z;
      x_516 = x_523;
    }
    let x_524 : f32 = x_516;
    u_xlat0.z = x_524;
  }
  let x_526 : vec4<f32> = u_xlat0;
  let x_529 : vec4<f32> = x_26.x_Lut_Params;
  let x_531 : vec3<f32> = (vec3<f32>(x_526.x, x_526.y, x_526.z) * vec3<f32>(x_529.z, x_529.z, x_529.z));
  let x_532 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_531.z);
  let x_535 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_535);
  let x_538 : vec4<f32> = x_26.x_Lut_Params;
  let x_540 : vec2<f32> = (vec2<f32>(x_538.x, x_538.y) * vec2<f32>(0.5f, 0.5f));
  let x_541 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
  let x_543 : vec4<f32> = u_xlat0;
  let x_546 : vec4<f32> = x_26.x_Lut_Params;
  let x_549 : vec4<f32> = u_xlat1;
  let x_551 : vec2<f32> = ((vec2<f32>(x_543.x, x_543.y) * vec2<f32>(x_546.x, x_546.y)) + vec2<f32>(x_549.x, x_549.y));
  let x_552 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_552.x, x_551.x, x_551.y, x_552.w);
  let x_554 : f32 = u_xlat15;
  let x_556 : f32 = x_26.x_Lut_Params.y;
  let x_559 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_554 * x_556) + x_559);
  let x_566 : vec4<f32> = u_xlat1;
  let x_568 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_566.x, x_566.z), 0.0f);
  let x_569 : vec3<f32> = vec3<f32>(x_568.x, x_568.y, x_568.z);
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : f32 = x_26.x_Lut_Params.y;
  u_xlat0.x = x_573;
  u_xlat0.y = 0.0f;
  let x_576 : vec4<f32> = u_xlat0;
  let x_578 : vec4<f32> = u_xlat1;
  let x_580 : vec2<f32> = (vec2<f32>(x_576.x, x_576.y) + vec2<f32>(x_578.x, x_578.z));
  let x_581 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
  let x_586 : vec4<f32> = u_xlat0;
  let x_588 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_586.x, x_586.y), 0.0f);
  let x_589 : vec3<f32> = vec3<f32>(x_588.x, x_588.y, x_588.z);
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_593 : f32 = u_xlat0.z;
  let x_595 : f32 = x_26.x_Lut_Params.z;
  let x_597 : f32 = u_xlat15;
  u_xlat0.x = ((x_593 * x_595) + -(x_597));
  let x_602 : vec4<f32> = u_xlat2;
  let x_605 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_602.x, x_602.y, x_602.z)) + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = u_xlat5;
  let x_612 : vec4<f32> = u_xlat2;
  let x_614 : vec3<f32> = ((vec3<f32>(x_608.x, x_608.x, x_608.x) * x_610) + vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_615 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec4<f32> = u_xlat0;
  let x_619 : vec3<f32> = sqrt(vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec2<f32> = vs_TEXCOORD0;
  let x_625 : vec4<f32> = x_26.x_Dithering_Params;
  let x_629 : vec4<f32> = x_26.x_Dithering_Params;
  let x_631 : vec2<f32> = ((x_622 * vec2<f32>(x_625.x, x_625.y)) + vec2<f32>(x_629.z, x_629.w));
  let x_632 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
  let x_639 : vec4<f32> = u_xlat1;
  let x_642 : f32 = x_26.x_GlobalMipBias.x;
  let x_643 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_639.x, x_639.y), x_642);
  u_xlat15 = x_643.w;
  let x_645 : f32 = u_xlat15;
  u_xlat15 = ((x_645 * 2.0f) + -1.0f);
  let x_650 : f32 = u_xlat15;
  u_xlatb1.x = (x_650 >= 0.0f);
  let x_654 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_654);
  let x_657 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_657)) + 1.0f);
  let x_661 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_661);
  let x_663 : f32 = u_xlat15;
  u_xlat15 = (-(x_663) + 1.0f);
  let x_666 : f32 = u_xlat15;
  let x_668 : f32 = u_xlat1.x;
  u_xlat15 = (x_666 * x_668);
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_673 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat0;
  let x_677 : vec3<f32> = log2(vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat2;
  let x_682 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_683 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat2;
  let x_687 : vec3<f32> = exp2(vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat2;
  let x_693 : vec3<f32> = ((vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_694 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_697 : vec4<f32> = u_xlat0;
  let x_699 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_697.x, x_697.y, x_697.z, x_697.x));
  u_xlatb0 = vec3<bool>(x_699.x, x_699.y, x_699.z);
  let x_702 : bool = u_xlatb0.x;
  if (x_702) {
    let x_707 : f32 = u_xlat1.x;
    x_703 = x_707;
  } else {
    let x_710 : f32 = u_xlat2.x;
    x_703 = x_710;
  }
  let x_711 : f32 = x_703;
  u_xlat0.x = x_711;
  let x_714 : bool = u_xlatb0.y;
  if (x_714) {
    let x_719 : f32 = u_xlat1.y;
    x_715 = x_719;
  } else {
    let x_722 : f32 = u_xlat2.y;
    x_715 = x_722;
  }
  let x_723 : f32 = x_715;
  u_xlat0.y = x_723;
  let x_726 : bool = u_xlatb0.z;
  if (x_726) {
    let x_731 : f32 = u_xlat1.z;
    x_727 = x_731;
  } else {
    let x_734 : f32 = u_xlat2.z;
    x_727 = x_734;
  }
  let x_735 : f32 = x_727;
  u_xlat0.z = x_735;
  let x_737 : f32 = u_xlat15;
  let x_742 : vec4<f32> = u_xlat0;
  let x_744 : vec3<f32> = ((vec3<f32>(x_737, x_737, x_737) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_747 : vec4<f32> = u_xlat0;
  let x_749 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_750 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat0;
  let x_754 : vec3<f32> = (vec3<f32>(x_752.x, x_752.y, x_752.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_755 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat2;
  let x_759 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_760 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat2;
  let x_765 : vec3<f32> = log2(abs(vec3<f32>(x_762.x, x_762.y, x_762.z)));
  let x_766 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat2;
  let x_770 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_771 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat2;
  let x_775 : vec3<f32> = exp2(vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat0;
  let x_780 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_778.x, x_778.y, x_778.z, x_778.x));
  u_xlatb0 = vec3<bool>(x_780.x, x_780.y, x_780.z);
  let x_783 : bool = u_xlatb0.x;
  if (x_783) {
    let x_788 : f32 = u_xlat1.x;
    x_784 = x_788;
  } else {
    let x_791 : f32 = u_xlat2.x;
    x_784 = x_791;
  }
  let x_792 : f32 = x_784;
  u_xlat0.x = x_792;
  let x_795 : bool = u_xlatb0.y;
  if (x_795) {
    let x_800 : f32 = u_xlat1.y;
    x_796 = x_800;
  } else {
    let x_803 : f32 = u_xlat2.y;
    x_796 = x_803;
  }
  let x_804 : f32 = x_796;
  u_xlat0.y = x_804;
  let x_807 : bool = u_xlatb0.z;
  if (x_807) {
    let x_812 : f32 = u_xlat1.z;
    x_808 = x_812;
  } else {
    let x_815 : f32 = u_xlat2.z;
    x_808 = x_815;
  }
  let x_816 : f32 = x_808;
  u_xlat0.z = x_816;
  let x_820 : vec4<f32> = u_xlat0;
  let x_823 : vec3<f32> = max(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_824 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
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

