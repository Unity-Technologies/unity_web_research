struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_268 : f32;
  var x_281 : f32;
  var x_294 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_453 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_54 : vec4<f32> = x_49.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_64 : f32 = x_49.x_Bloom_Settings.x;
  u_xlat2.x = (x_64 * 0.5f);
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = u_xlat2;
  let x_74 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_69.x, x_69.y, x_69.z, x_69.y) * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + vec4<f32>(x_74.x, x_74.y, x_74.x, x_74.y));
  let x_77 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_77, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_82 : vec4<f32> = u_xlat3;
  let x_85 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat3 = (x_82 * vec4<f32>(x_85, x_85, x_85, x_85));
  let x_94 : vec4<f32> = u_xlat3;
  let x_96 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_94.x, x_94.y));
  u_xlat4 = x_96;
  let x_100 : vec4<f32> = u_xlat3;
  let x_102 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_100.z, x_100.w));
  u_xlat3 = x_102;
  let x_103 : vec4<f32> = u_xlat3;
  let x_104 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_103 + x_104);
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = u_xlat2;
  let x_111 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_106.x, x_106.w, x_106.z, x_106.w) * vec4<f32>(x_108.x, x_108.x, x_108.x, x_108.x)) + vec4<f32>(x_111.x, x_111.y, x_111.x, x_111.y));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_114, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat0 = (x_118 * vec4<f32>(x_120, x_120, x_120, x_120));
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_126.x, x_126.y));
  u_xlat2 = x_128;
  let x_129 : vec4<f32> = u_xlat2;
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_129 + x_130);
  let x_135 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_135.z, x_135.w));
  u_xlat0 = x_137;
  let x_138 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_138 + x_139);
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = x_49.x_Bloom_Settings;
  u_xlat0 = (x_141 * vec4<f32>(x_144.y, x_144.y, x_144.y, x_144.y));
  let x_147 : vec2<f32> = vs_TEXCOORD0;
  let x_150 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_154 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_156 : vec2<f32> = ((x_147 * vec2<f32>(x_150.x, x_150.y)) + vec2<f32>(x_154.z, x_154.w));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_157.z, x_157.w);
  let x_164 : vec4<f32> = u_xlat2;
  let x_166 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_164.x, x_164.y));
  let x_167 : vec3<f32> = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_170 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_174 : vec4<f32> = u_xlat2;
  let x_177 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_179 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_177.z, x_177.z, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  u_xlat2.w = 0.0f;
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_184 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_187 : vec4<f32> = u_xlat0;
  let x_191 : vec3<f32> = x_49.x_Bloom_Color;
  let x_192 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) * x_191);
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : f32 = u_xlat0.w;
  u_xlat4.w = (x_196 * 0.25f);
  let x_199 : vec4<f32> = u_xlat1;
  let x_200 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_199 + x_200);
  let x_202 : vec4<f32> = u_xlat2;
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_202 * x_203) + x_205);
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_207, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_211 : vec4<f32> = u_xlat0;
  let x_215 : vec3<f32> = (vec3<f32>(x_211.z, x_211.x, x_211.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_216 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat0;
  let x_222 : vec3<f32> = max(vec3<f32>(x_218.z, x_218.x, x_218.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_223 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec3<f32> = log2(vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat2;
  let x_234 : vec3<f32> = (vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec4<f32> = u_xlat2;
  let x_239 : vec3<f32> = exp2(vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat2;
  let x_249 : vec3<f32> = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_258 : vec4<f32> = u_xlat0;
  let x_261 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_258.z, x_258.x, x_258.y, x_258.z));
  u_xlatb3 = vec3<bool>(x_261.x, x_261.y, x_261.z);
  let x_264 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_264;
  let x_267 : bool = u_xlatb3.x;
  if (x_267) {
    let x_272 : f32 = u_xlat1.x;
    x_268 = x_272;
  } else {
    let x_275 : f32 = u_xlat2.x;
    x_268 = x_275;
  }
  let x_276 : f32 = x_268;
  hlslcc_movcTemp.x = x_276;
  let x_280 : bool = u_xlatb3.y;
  if (x_280) {
    let x_285 : f32 = u_xlat1.y;
    x_281 = x_285;
  } else {
    let x_288 : f32 = u_xlat2.y;
    x_281 = x_288;
  }
  let x_289 : f32 = x_281;
  hlslcc_movcTemp.y = x_289;
  let x_293 : bool = u_xlatb3.z;
  if (x_293) {
    let x_298 : f32 = u_xlat1.z;
    x_294 = x_298;
  } else {
    let x_301 : f32 = u_xlat2.z;
    x_294 = x_301;
  }
  let x_302 : f32 = x_294;
  hlslcc_movcTemp.z = x_302;
  let x_304 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_304;
  let x_307 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_311.z, x_311.z, x_311.z));
  let x_315 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_315);
  let x_319 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_322 : vec2<f32> = (vec2<f32>(x_319.x, x_319.y) * vec2<f32>(0.5f, 0.5f));
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_323.z, x_323.w);
  let x_325 : vec3<f32> = u_xlat6;
  let x_328 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_331 : vec4<f32> = u_xlat2;
  let x_333 : vec2<f32> = ((vec2<f32>(x_325.y, x_325.z) * vec2<f32>(x_328.x, x_328.y)) + vec2<f32>(x_331.x, x_331.y));
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_333.x, x_333.y, x_334.w);
  let x_337 : f32 = u_xlat6.x;
  let x_339 : f32 = x_49.x_Lut2D_Params.y;
  let x_342 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_337 * x_339) + x_342);
  let x_350 : vec4<f32> = u_xlat2;
  let x_352 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_350.x, x_350.z));
  let x_353 : vec3<f32> = vec3<f32>(x_352.x, x_352.y, x_352.z);
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_357;
  u_xlat4.y = 0.0f;
  let x_362 : vec4<f32> = u_xlat2;
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_362.x, x_362.z) + vec2<f32>(x_364.x, x_364.y));
  let x_370 : vec2<f32> = u_xlat11;
  let x_371 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_370);
  let x_372 : vec3<f32> = vec3<f32>(x_371.x, x_371.y, x_371.z);
  let x_373 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : f32 = u_xlat1.x;
  let x_378 : f32 = x_49.x_Lut2D_Params.z;
  let x_381 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_376 * x_378) + -(x_381));
  let x_385 : vec4<f32> = u_xlat3;
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_385.x, x_385.y, x_385.z)) + vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat1;
  let x_393 : vec3<f32> = u_xlat6;
  let x_395 : vec4<f32> = u_xlat3;
  let x_397 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.x, x_391.x) * x_393) + vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat1;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_411 : vec3<f32> = (vec3<f32>(x_407.x, x_407.y, x_407.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat3;
  let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_419 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat3;
  let x_424 : vec3<f32> = max(abs(vec3<f32>(x_421.x, x_421.y, x_421.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_425 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat3;
  let x_429 : vec3<f32> = log2(vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat3;
  let x_436 : vec3<f32> = (vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat3;
  let x_441 : vec3<f32> = exp2(vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_447 : vec4<f32> = u_xlat1;
  let x_449 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_447.x, x_447.y, x_447.z, x_447.x));
  u_xlatb1 = vec3<bool>(x_449.x, x_449.y, x_449.z);
  let x_452 : bool = u_xlatb1.x;
  if (x_452) {
    let x_457 : f32 = u_xlat2.x;
    x_453 = x_457;
  } else {
    let x_460 : f32 = u_xlat3.x;
    x_453 = x_460;
  }
  let x_461 : f32 = x_453;
  u_xlat0.x = x_461;
  let x_464 : bool = u_xlatb1.y;
  if (x_464) {
    let x_469 : f32 = u_xlat2.y;
    x_465 = x_469;
  } else {
    let x_472 : f32 = u_xlat3.y;
    x_465 = x_472;
  }
  let x_473 : f32 = x_465;
  u_xlat0.y = x_473;
  let x_476 : bool = u_xlatb1.z;
  if (x_476) {
    let x_481 : f32 = u_xlat2.z;
    x_477 = x_481;
  } else {
    let x_484 : f32 = u_xlat3.z;
    x_477 = x_484;
  }
  let x_485 : f32 = x_477;
  u_xlat0.z = x_485;
  let x_489 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_489);
  let x_493 : bool = u_xlatb1.x;
  if (x_493) {
    let x_496 : vec4<f32> = u_xlat0;
    let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.z);
    let x_498 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
    let x_500 : vec4<f32> = u_xlat1;
    let x_504 : vec3<f32> = clamp(vec3<f32>(x_500.x, x_500.y, x_500.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_505 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
    let x_507 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_507.x, x_507.y, x_507.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_517 : vec4<f32> = u_xlat0;
  SV_Target0 = x_517;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

