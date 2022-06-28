struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_59 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat22 : f32;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_698 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_867 : f32;
  var x_879 : f32;
  var x_891 : f32;
  var x_959 : f32;
  var x_971 : f32;
  var x_983 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  let x_39 : vec2<f32> = ((x_33 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_39.x, x_39.y, x_40.z);
  let x_43 : vec3<f32> = u_xlat7;
  let x_45 : vec3<f32> = u_xlat7;
  u_xlat21 = dot(vec2<f32>(x_43.x, x_43.y), vec2<f32>(x_45.x, x_45.y));
  let x_48 : f32 = u_xlat21;
  let x_50 : vec3<f32> = u_xlat7;
  let x_52 : vec2<f32> = (vec2<f32>(x_48, x_48) * vec2<f32>(x_50.x, x_50.y));
  let x_53 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_52.x, x_52.y, x_53.z);
  let x_55 : vec3<f32> = u_xlat7;
  let x_64 : f32 = x_59.x_ChromaticAberration_Amount;
  let x_66 : f32 = x_59.x_ChromaticAberration_Amount;
  let x_67 : vec2<f32> = vec2<f32>(x_64, x_66);
  let x_71 : vec2<f32> = (vec2<f32>(x_55.x, x_55.y) * vec2<f32>(x_67.x, x_67.y));
  let x_72 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_71.x, x_71.y, x_72.z);
  let x_75 : vec3<f32> = u_xlat7;
  let x_81 : vec4<f32> = x_59.x_MainTex_TexelSize;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_75.x, x_75.y)) * vec2<f32>(x_81.z, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat1;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(0.5f, 0.5f));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_93.x, x_93.y), vec2<f32>(x_95.x, x_95.y));
  let x_98 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_98);
  let x_102 : f32 = u_xlat21;
  u_xlati21 = i32(x_102);
  let x_104 : i32 = u_xlati21;
  u_xlati21 = max(x_104, 3i);
  let x_106 : i32 = u_xlati21;
  u_xlati21 = min(x_106, 16i);
  let x_109 : i32 = u_xlati21;
  u_xlat1.x = f32(x_109);
  let x_112 : vec3<f32> = u_xlat7;
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec2<f32> = (-(vec2<f32>(x_112.x, x_112.y)) / vec2<f32>(x_115.x, x_115.x));
  let x_118 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_117.x, x_117.y, x_118.z);
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_140 : vec2<f32> = vs_TEXCOORD0;
  let x_141 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_140.x, x_140.y, x_141.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_151 : i32 = u_xlati_loop_1;
    let x_152 : i32 = u_xlati21;
    if ((x_151 < x_152)) {
    } else {
      break;
    }
    let x_157 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_157);
    let x_161 : f32 = u_xlat16.x;
    u_xlat16.x = (x_161 + 0.5f);
    let x_165 : f32 = u_xlat16.x;
    let x_167 : f32 = u_xlat1.x;
    u_xlat2.x = (x_165 / x_167);
    let x_170 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_170.x, x_170.y);
    let x_172 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_172, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_176 : vec2<f32> = u_xlat16;
    let x_179 : f32 = x_59.x_RenderViewportScaleFactor;
    u_xlat16 = (x_176 * vec2<f32>(x_179, x_179));
    let x_188 : vec2<f32> = u_xlat16;
    let x_189 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_188, 0.0f);
    u_xlat6 = x_189;
    let x_195 : vec4<f32> = u_xlat2;
    let x_197 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_195.x, x_195.y), 0.0f);
    let x_198 : vec3<f32> = vec3<f32>(x_197.x, x_197.y, x_197.z);
    let x_199 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
    let x_201 : vec4<f32> = u_xlat6;
    let x_202 : vec4<f32> = u_xlat3;
    let x_204 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_201 * x_202) + x_204);
    let x_206 : vec4<f32> = u_xlat3;
    let x_207 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_206 + x_207);
    let x_209 : vec3<f32> = u_xlat7;
    let x_211 : vec3<f32> = u_xlat8;
    let x_213 : vec2<f32> = (vec2<f32>(x_209.x, x_209.y) + vec2<f32>(x_211.x, x_211.y));
    let x_214 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_213.x, x_213.y, x_214.z);

    continuing {
      let x_216 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_216 + 1i);
    }
  }
  let x_218 : vec4<f32> = u_xlat4;
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_218 / x_219);
  let x_221 : vec4<f32> = u_xlat0;
  let x_223 : vec4<f32> = u_xlat1;
  let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.x, x_221.x) * vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_230 : vec4<f32> = x_59.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_230.x, x_230.y, x_230.x, x_230.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_234 : vec4<f32> = u_xlat0;
  let x_240 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_243 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_234.x, x_234.y, x_234.w, x_234.y)) * vec4<f32>(x_240.x, x_240.x, x_240.x, x_240.x)) + vec4<f32>(x_243.x, x_243.y, x_243.x, x_243.y));
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_246, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat2;
  let x_252 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat2 = (x_250 * vec4<f32>(x_252, x_252, x_252, x_252));
  let x_260 : vec4<f32> = u_xlat2;
  let x_262 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_260.x, x_260.y));
  u_xlat3 = x_262;
  let x_266 : vec4<f32> = u_xlat2;
  let x_268 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_266.z, x_266.w));
  u_xlat2 = x_268;
  let x_269 : vec4<f32> = u_xlat2;
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_269 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_272);
  let x_274 : vec4<f32> = u_xlat0;
  let x_278 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_281 : vec2<f32> = vs_TEXCOORD0;
  let x_282 : vec2<f32> = ((-(vec2<f32>(x_274.z, x_274.y)) * vec2<f32>(x_278.x, x_278.x)) + x_281);
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat3;
  let x_289 : vec2<f32> = clamp(vec2<f32>(x_285.x, x_285.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_290 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_289.x, x_289.y, x_290.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat3;
  let x_295 : f32 = x_59.x_RenderViewportScaleFactor;
  let x_297 : vec2<f32> = (vec2<f32>(x_292.x, x_292.y) * vec2<f32>(x_295, x_295));
  let x_298 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_297.x, x_297.y, x_298.z, x_298.w);
  let x_303 : vec4<f32> = u_xlat3;
  let x_305 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_303.x, x_303.y));
  u_xlat3 = x_305;
  let x_306 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_306 + x_307);
  let x_309 : vec4<f32> = u_xlat0;
  let x_312 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_315 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_309.z, x_309.w, x_309.x, x_309.w) * vec4<f32>(x_312.x, x_312.x, x_312.x, x_312.x)) + vec4<f32>(x_315.x, x_315.y, x_315.x, x_315.y));
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_318, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_322 : vec4<f32> = u_xlat3;
  let x_324 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat3 = (x_322 * vec4<f32>(x_324, x_324, x_324, x_324));
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_330.x, x_330.y));
  u_xlat4 = x_332;
  let x_333 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_333 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_335);
  let x_337 : vec2<f32> = vs_TEXCOORD0;
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_338.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat3;
  let x_344 : vec2<f32> = clamp(vec2<f32>(x_340.x, x_340.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat3;
  let x_350 : f32 = x_59.x_RenderViewportScaleFactor;
  let x_352 : vec2<f32> = (vec2<f32>(x_347.x, x_347.y) * vec2<f32>(x_350, x_350));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
  let x_358 : vec4<f32> = u_xlat3;
  let x_360 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_358.x, x_358.y));
  u_xlat4 = x_360;
  let x_361 : vec4<f32> = u_xlat4;
  let x_365 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_361 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_365);
  let x_370 : vec4<f32> = u_xlat3;
  let x_372 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_370.z, x_370.w));
  u_xlat3 = x_372;
  let x_373 : vec4<f32> = u_xlat3;
  let x_375 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_373 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_375);
  let x_377 : vec4<f32> = u_xlat0;
  let x_380 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_383 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_377.z, x_377.y, x_377.w, x_377.y) * vec4<f32>(x_380.x, x_380.x, x_380.x, x_380.x)) + vec4<f32>(x_383.x, x_383.y, x_383.x, x_383.y));
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_386, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_390 : vec4<f32> = u_xlat3;
  let x_392 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat3 = (x_390 * vec4<f32>(x_392, x_392, x_392, x_392));
  let x_398 : vec4<f32> = u_xlat3;
  let x_400 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_398.x, x_398.y));
  u_xlat4 = x_400;
  let x_401 : vec4<f32> = u_xlat2;
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_401 + x_402);
  let x_407 : vec4<f32> = u_xlat3;
  let x_409 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_407.z, x_407.w));
  u_xlat3 = x_409;
  let x_410 : vec4<f32> = u_xlat3;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_410 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_412);
  let x_414 : vec4<f32> = u_xlat0;
  let x_417 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_420 : vec2<f32> = vs_TEXCOORD0;
  let x_421 : vec2<f32> = ((vec2<f32>(x_414.x, x_414.y) * vec2<f32>(x_417.x, x_417.x)) + x_420);
  let x_422 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat0;
  let x_428 : vec2<f32> = clamp(vec2<f32>(x_424.x, x_424.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat0;
  let x_434 : f32 = x_59.x_RenderViewportScaleFactor;
  let x_436 : vec2<f32> = (vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_434, x_434));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
  let x_442 : vec4<f32> = u_xlat0;
  let x_444 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_442.x, x_442.y));
  u_xlat0 = x_444;
  let x_445 : vec4<f32> = u_xlat0;
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_445 + x_446);
  let x_448 : vec4<f32> = u_xlat0;
  let x_450 : vec3<f32> = x_59.x_Bloom_Settings;
  u_xlat0 = (x_448 * vec4<f32>(x_450.y, x_450.y, x_450.y, x_450.y));
  let x_453 : vec2<f32> = vs_TEXCOORD0;
  let x_456 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_460 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_462 : vec2<f32> = ((x_453 * vec2<f32>(x_456.x, x_456.y)) + vec2<f32>(x_460.z, x_460.w));
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_470 : vec4<f32> = u_xlat2;
  let x_472 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_470.x, x_470.y));
  let x_473 : vec3<f32> = vec3<f32>(x_472.x, x_472.y, x_472.z);
  let x_474 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat0;
  let x_480 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_481 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat2;
  let x_486 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_488 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_486.z, x_486.z, x_486.z));
  let x_489 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_491 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_494 : vec4<f32> = u_xlat0;
  let x_498 : vec3<f32> = x_59.x_Bloom_Color;
  let x_499 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) * x_498);
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_503 : f32 = u_xlat0.w;
  u_xlat4.w = (x_503 * 0.0625f);
  let x_506 : vec4<f32> = u_xlat1;
  let x_507 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_506 + x_507);
  let x_509 : vec4<f32> = u_xlat3;
  let x_511 : vec4<f32> = u_xlat2;
  let x_513 : vec3<f32> = (vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  u_xlat1.w = 0.0f;
  let x_517 : vec4<f32> = u_xlat0;
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_517 + x_518);
  let x_525 : f32 = x_59.x_Vignette_Mode;
  u_xlatb1.x = (x_525 < 0.5f);
  let x_530 : bool = u_xlatb1.x;
  if (x_530) {
    let x_533 : vec2<f32> = vs_TEXCOORD0;
    let x_537 : vec2<f32> = x_59.x_Vignette_Center;
    let x_539 : vec2<f32> = (x_533 + -(x_537));
    let x_540 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
    let x_542 : vec4<f32> = u_xlat1;
    let x_547 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_549 : vec2<f32> = (abs(vec2<f32>(x_542.y, x_542.x)) * vec2<f32>(x_547.x, x_547.x));
    let x_550 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_550.x, x_549.x, x_549.y, x_550.w);
    let x_554 : f32 = x_59.x_ScreenParams.x;
    let x_556 : f32 = x_59.x_ScreenParams.y;
    u_xlat22 = (x_554 / x_556);
    let x_558 : f32 = u_xlat22;
    u_xlat22 = (x_558 + -1.0f);
    let x_561 : f32 = x_59.x_Vignette_Settings.w;
    let x_562 : f32 = u_xlat22;
    u_xlat22 = ((x_561 * x_562) + 1.0f);
    let x_565 : f32 = u_xlat22;
    let x_567 : f32 = u_xlat1.z;
    u_xlat1.x = (x_565 * x_567);
    let x_570 : vec4<f32> = u_xlat1;
    let x_571 : vec2<f32> = vec2<f32>(x_570.x, x_570.y);
    let x_572 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
    let x_574 : vec4<f32> = u_xlat1;
    let x_578 : vec2<f32> = clamp(vec2<f32>(x_574.x, x_574.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_579 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
    let x_581 : vec4<f32> = u_xlat1;
    let x_583 : vec2<f32> = log2(vec2<f32>(x_581.x, x_581.y));
    let x_584 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
    let x_586 : vec4<f32> = u_xlat1;
    let x_589 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_591 : vec2<f32> = (vec2<f32>(x_586.x, x_586.y) * vec2<f32>(x_589.z, x_589.z));
    let x_592 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
    let x_594 : vec4<f32> = u_xlat1;
    let x_596 : vec2<f32> = exp2(vec2<f32>(x_594.x, x_594.y));
    let x_597 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
    let x_599 : vec4<f32> = u_xlat1;
    let x_601 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_599.x, x_599.y), vec2<f32>(x_601.x, x_601.y));
    let x_606 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_606) + 1.0f);
    let x_611 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_611, 0.0f);
    let x_615 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_615);
    let x_619 : f32 = u_xlat1.x;
    let x_621 : f32 = x_59.x_Vignette_Settings.y;
    u_xlat1.x = (x_619 * x_621);
    let x_625 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_625);
    let x_630 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = (-(x_630) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_634 : vec4<f32> = u_xlat1;
    let x_636 : vec3<f32> = u_xlat8;
    let x_639 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_634.x, x_634.x, x_634.x) * x_636) + x_639);
    let x_641 : vec4<f32> = u_xlat0;
    let x_643 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_641.x, x_641.y, x_641.z) * x_643);
    let x_646 : f32 = u_xlat0.w;
    u_xlat2.x = (x_646 + -1.0f);
    let x_650 : f32 = u_xlat1.x;
    let x_652 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_650 * x_652) + 1.0f);
  } else {
    let x_662 : vec2<f32> = vs_TEXCOORD0;
    let x_663 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_662);
    u_xlat1.x = x_663.w;
    let x_667 : f32 = u_xlat1.x;
    u_xlat3.x = (x_667 * 0.077399381f);
    let x_673 : f32 = u_xlat1.x;
    u_xlat10 = (x_673 + 0.055f);
    let x_676 : f32 = u_xlat10;
    u_xlat10 = (x_676 * 0.947867334f);
    let x_679 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_679), 1.1920929e-07f);
    let x_683 : f32 = u_xlat10;
    u_xlat10 = log2(x_683);
    let x_685 : f32 = u_xlat10;
    u_xlat10 = (x_685 * 2.400000095f);
    let x_688 : f32 = u_xlat10;
    u_xlat10 = exp2(x_688);
    let x_692 : f32 = u_xlat1.x;
    u_xlatb1.x = (0.040449999f >= x_692);
    let x_696 : bool = u_xlatb1.x;
    if (x_696) {
      let x_702 : f32 = u_xlat3.x;
      x_698 = x_702;
    } else {
      let x_704 : f32 = u_xlat10;
      x_698 = x_704;
    }
    let x_705 : f32 = x_698;
    u_xlat1.x = x_705;
    let x_708 : vec3<f32> = x_59.x_Vignette_Color;
    let x_710 : vec3<f32> = (-(x_708) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_711 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
    let x_713 : vec4<f32> = u_xlat1;
    let x_715 : vec4<f32> = u_xlat3;
    let x_719 : vec3<f32> = x_59.x_Vignette_Color;
    let x_720 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.x, x_713.x) * vec3<f32>(x_715.x, x_715.y, x_715.z)) + x_719);
    let x_721 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
    let x_723 : vec4<f32> = u_xlat0;
    let x_725 : vec4<f32> = u_xlat3;
    let x_728 : vec4<f32> = u_xlat0;
    let x_731 : vec3<f32> = ((vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(x_725.x, x_725.y, x_725.z)) + -(vec3<f32>(x_728.x, x_728.y, x_728.z)));
    let x_732 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
    let x_736 : f32 = x_59.x_Vignette_Opacity;
    let x_738 : vec4<f32> = u_xlat3;
    let x_741 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_736, x_736, x_736) * vec3<f32>(x_738.x, x_738.y, x_738.z)) + vec3<f32>(x_741.x, x_741.y, x_741.z));
    let x_745 : f32 = u_xlat0.w;
    u_xlat0.x = (x_745 + -1.0f);
    let x_749 : f32 = u_xlat1.x;
    let x_751 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_749 * x_751) + 1.0f);
  }
  let x_755 : vec2<f32> = vs_TEXCOORD0;
  let x_758 : vec4<f32> = x_59.x_Dithering_Coords;
  let x_762 : vec4<f32> = x_59.x_Dithering_Coords;
  let x_764 : vec2<f32> = ((x_755 * vec2<f32>(x_758.x, x_758.y)) + vec2<f32>(x_762.z, x_762.w));
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_764.x, x_764.y, x_765.z, x_765.w);
  let x_772 : vec4<f32> = u_xlat0;
  let x_774 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_772.x, x_772.y));
  u_xlat0.x = x_774.w;
  let x_778 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_778 * 2.0f) + -1.0f);
  let x_783 : f32 = u_xlat0.x;
  u_xlat7.x = ((x_783 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_789 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_789, 0.0f, 1.0f);
  let x_793 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_793 * 2.0f) + -1.0f);
  let x_798 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_798)) + 1.0f);
  let x_804 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_804);
  let x_808 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_808) + 1.0f);
  let x_813 : f32 = u_xlat0.x;
  let x_815 : f32 = u_xlat7.x;
  u_xlat0.x = (x_813 * x_815);
  let x_818 : vec3<f32> = u_xlat8;
  u_xlat7 = (x_818 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_822 : vec3<f32> = u_xlat8;
  let x_825 : vec3<f32> = max(abs(x_822), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_826 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec4<f32> = u_xlat3;
  let x_830 : vec3<f32> = log2(vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat3;
  let x_837 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_838 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat3;
  let x_842 : vec3<f32> = exp2(vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat3;
  let x_852 : vec3<f32> = ((vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_853 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_857 : vec3<f32> = u_xlat8;
  let x_860 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_857.x, x_857.y, x_857.z, x_857.x));
  u_xlatb1 = vec3<bool>(x_860.x, x_860.y, x_860.z);
  let x_864 : vec3<f32> = u_xlat7;
  hlslcc_movcTemp = x_864;
  let x_866 : bool = u_xlatb1.x;
  if (x_866) {
    let x_871 : f32 = u_xlat7.x;
    x_867 = x_871;
  } else {
    let x_874 : f32 = u_xlat3.x;
    x_867 = x_874;
  }
  let x_875 : f32 = x_867;
  hlslcc_movcTemp.x = x_875;
  let x_878 : bool = u_xlatb1.y;
  if (x_878) {
    let x_883 : f32 = u_xlat7.y;
    x_879 = x_883;
  } else {
    let x_886 : f32 = u_xlat3.y;
    x_879 = x_886;
  }
  let x_887 : f32 = x_879;
  hlslcc_movcTemp.y = x_887;
  let x_890 : bool = u_xlatb1.z;
  if (x_890) {
    let x_895 : f32 = u_xlat7.z;
    x_891 = x_895;
  } else {
    let x_898 : f32 = u_xlat3.z;
    x_891 = x_898;
  }
  let x_899 : f32 = x_891;
  hlslcc_movcTemp.z = x_899;
  let x_901 : vec3<f32> = hlslcc_movcTemp;
  u_xlat7 = x_901;
  let x_902 : vec4<f32> = u_xlat0;
  let x_907 : vec3<f32> = u_xlat7;
  let x_908 : vec3<f32> = ((vec3<f32>(x_902.x, x_902.x, x_902.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_907);
  let x_909 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat0;
  let x_914 : vec3<f32> = (vec3<f32>(x_911.x, x_911.y, x_911.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_915 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat0;
  let x_920 : vec3<f32> = (vec3<f32>(x_917.x, x_917.y, x_917.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_921 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat3;
  let x_926 : vec3<f32> = (vec3<f32>(x_923.x, x_923.y, x_923.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_927 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat3;
  let x_932 : vec3<f32> = max(abs(vec3<f32>(x_929.x, x_929.y, x_929.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_933 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec4<f32> = u_xlat3;
  let x_937 : vec3<f32> = log2(vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_938 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat3;
  let x_943 : vec3<f32> = (vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_944 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec4<f32> = u_xlat3;
  let x_948 : vec3<f32> = exp2(vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_953 : vec4<f32> = u_xlat0;
  let x_955 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_953.x, x_953.y, x_953.z, x_953.x));
  u_xlatb0 = vec3<bool>(x_955.x, x_955.y, x_955.z);
  let x_958 : bool = u_xlatb0.x;
  if (x_958) {
    let x_963 : f32 = u_xlat1.x;
    x_959 = x_963;
  } else {
    let x_966 : f32 = u_xlat3.x;
    x_959 = x_966;
  }
  let x_967 : f32 = x_959;
  u_xlat2.x = x_967;
  let x_970 : bool = u_xlatb0.y;
  if (x_970) {
    let x_975 : f32 = u_xlat1.y;
    x_971 = x_975;
  } else {
    let x_978 : f32 = u_xlat3.y;
    x_971 = x_978;
  }
  let x_979 : f32 = x_971;
  u_xlat2.y = x_979;
  let x_982 : bool = u_xlatb0.z;
  if (x_982) {
    let x_987 : f32 = u_xlat1.z;
    x_983 = x_987;
  } else {
    let x_990 : f32 = u_xlat3.z;
    x_983 = x_990;
  }
  let x_991 : f32 = x_983;
  u_xlat2.z = x_991;
  let x_995 : vec4<f32> = u_xlat2;
  SV_Target0 = x_995;
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

