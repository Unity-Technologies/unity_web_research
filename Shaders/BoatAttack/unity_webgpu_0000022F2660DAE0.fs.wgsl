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
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

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
  var u_xlat6 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_770 : f32;
  var x_782 : f32;
  var x_794 : f32;
  var x_851 : f32;
  var x_863 : f32;
  var x_875 : f32;
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
  let x_617 : vec2<f32> = vs_TEXCOORD0;
  let x_620 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_624 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_626 : vec2<f32> = ((x_617 * vec2<f32>(x_620.x, x_620.y)) + vec2<f32>(x_624.z, x_624.w));
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
  let x_634 : vec4<f32> = u_xlat1;
  let x_637 : f32 = x_26.x_GlobalMipBias.x;
  let x_638 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_634.x, x_634.y), x_637);
  u_xlat15 = x_638.w;
  let x_640 : f32 = u_xlat15;
  u_xlat15 = (x_640 + -0.5f);
  let x_643 : f32 = u_xlat15;
  let x_644 : f32 = u_xlat15;
  u_xlat15 = (x_643 + x_644);
  let x_646 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_646.x, x_646.y, x_646.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_655 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_655);
  let x_660 : f32 = x_26.x_Grain_Params.y;
  let x_662 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_660 * -(x_662)) + 1.0f);
  let x_668 : f32 = u_xlat15;
  let x_670 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_668, x_668, x_668) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec3<f32> = u_xlat6;
  let x_676 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat6 = (x_673 * vec3<f32>(x_676.x, x_676.x, x_676.x));
  let x_679 : vec3<f32> = u_xlat6;
  let x_680 : vec4<f32> = u_xlat1;
  let x_683 : vec4<f32> = u_xlat0;
  let x_685 : vec3<f32> = ((x_679 * vec3<f32>(x_680.x, x_680.x, x_680.x)) + vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec2<f32> = vs_TEXCOORD0;
  let x_691 : vec4<f32> = x_26.x_Dithering_Params;
  let x_695 : vec4<f32> = x_26.x_Dithering_Params;
  let x_697 : vec2<f32> = ((x_688 * vec2<f32>(x_691.x, x_691.y)) + vec2<f32>(x_695.z, x_695.w));
  let x_698 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
  let x_705 : vec4<f32> = u_xlat1;
  let x_708 : f32 = x_26.x_GlobalMipBias.x;
  let x_709 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_705.x, x_705.y), x_708);
  u_xlat15 = x_709.w;
  let x_711 : f32 = u_xlat15;
  u_xlat15 = ((x_711 * 2.0f) + -1.0f);
  let x_716 : f32 = u_xlat15;
  u_xlatb1.x = (x_716 >= 0.0f);
  let x_720 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_720);
  let x_723 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_723)) + 1.0f);
  let x_727 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_727);
  let x_729 : f32 = u_xlat15;
  u_xlat15 = (-(x_729) + 1.0f);
  let x_732 : f32 = u_xlat15;
  let x_734 : f32 = u_xlat1.x;
  u_xlat15 = (x_732 * x_734);
  let x_736 : vec4<f32> = u_xlat0;
  let x_738 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_739 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat0;
  let x_744 : vec3<f32> = log2(abs(vec3<f32>(x_741.x, x_741.y, x_741.z)));
  let x_745 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_747 : vec4<f32> = u_xlat2;
  let x_749 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_750 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat2;
  let x_754 : vec3<f32> = exp2(vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat2;
  let x_760 : vec3<f32> = ((vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_761 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_764 : vec4<f32> = u_xlat0;
  let x_766 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_764.x, x_764.y, x_764.z, x_764.x));
  u_xlatb0 = vec3<bool>(x_766.x, x_766.y, x_766.z);
  let x_769 : bool = u_xlatb0.x;
  if (x_769) {
    let x_774 : f32 = u_xlat1.x;
    x_770 = x_774;
  } else {
    let x_777 : f32 = u_xlat2.x;
    x_770 = x_777;
  }
  let x_778 : f32 = x_770;
  u_xlat0.x = x_778;
  let x_781 : bool = u_xlatb0.y;
  if (x_781) {
    let x_786 : f32 = u_xlat1.y;
    x_782 = x_786;
  } else {
    let x_789 : f32 = u_xlat2.y;
    x_782 = x_789;
  }
  let x_790 : f32 = x_782;
  u_xlat0.y = x_790;
  let x_793 : bool = u_xlatb0.z;
  if (x_793) {
    let x_798 : f32 = u_xlat1.z;
    x_794 = x_798;
  } else {
    let x_801 : f32 = u_xlat2.z;
    x_794 = x_801;
  }
  let x_802 : f32 = x_794;
  u_xlat0.z = x_802;
  let x_804 : f32 = u_xlat15;
  let x_809 : vec4<f32> = u_xlat0;
  let x_811 : vec3<f32> = ((vec3<f32>(x_804, x_804, x_804) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat0;
  let x_816 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat0;
  let x_821 : vec3<f32> = (vec3<f32>(x_819.x, x_819.y, x_819.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : vec4<f32> = u_xlat2;
  let x_826 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec4<f32> = u_xlat2;
  let x_832 : vec3<f32> = log2(abs(vec3<f32>(x_829.x, x_829.y, x_829.z)));
  let x_833 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat2;
  let x_837 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_838 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat2;
  let x_842 : vec3<f32> = exp2(vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat0;
  let x_847 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_845.x, x_845.y, x_845.z, x_845.x));
  u_xlatb0 = vec3<bool>(x_847.x, x_847.y, x_847.z);
  let x_850 : bool = u_xlatb0.x;
  if (x_850) {
    let x_855 : f32 = u_xlat1.x;
    x_851 = x_855;
  } else {
    let x_858 : f32 = u_xlat2.x;
    x_851 = x_858;
  }
  let x_859 : f32 = x_851;
  u_xlat0.x = x_859;
  let x_862 : bool = u_xlatb0.y;
  if (x_862) {
    let x_867 : f32 = u_xlat1.y;
    x_863 = x_867;
  } else {
    let x_870 : f32 = u_xlat2.y;
    x_863 = x_870;
  }
  let x_871 : f32 = x_863;
  u_xlat0.y = x_871;
  let x_874 : bool = u_xlatb0.z;
  if (x_874) {
    let x_879 : f32 = u_xlat1.z;
    x_875 = x_879;
  } else {
    let x_882 : f32 = u_xlat2.z;
    x_875 = x_882;
  }
  let x_883 : f32 = x_875;
  u_xlat0.z = x_883;
  let x_887 : vec4<f32> = u_xlat0;
  let x_890 : vec3<f32> = max(vec3<f32>(x_887.x, x_887.y, x_887.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_891 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
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

