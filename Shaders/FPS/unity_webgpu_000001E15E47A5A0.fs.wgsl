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
  var x_559 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_728 : f32;
  var x_740 : f32;
  var x_752 : f32;
  var x_820 : f32;
  var x_832 : f32;
  var x_844 : f32;
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
  u_xlat0 = (vec4<f32>(x_230.x, x_230.y, x_230.x, x_230.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_236 : f32 = x_59.x_Bloom_Settings.x;
  u_xlat2.x = (x_236 * 0.5f);
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : vec4<f32> = u_xlat2;
  let x_244 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_239.x, x_239.y, x_239.z, x_239.y) * vec4<f32>(x_241.x, x_241.x, x_241.x, x_241.x)) + vec4<f32>(x_244.x, x_244.y, x_244.x, x_244.y));
  let x_247 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_247, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat3 = (x_251 * vec4<f32>(x_253, x_253, x_253, x_253));
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_261.x, x_261.y));
  u_xlat4 = x_263;
  let x_267 : vec4<f32> = u_xlat3;
  let x_269 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_267.z, x_267.w));
  u_xlat3 = x_269;
  let x_270 : vec4<f32> = u_xlat3;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_270 + x_271);
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = u_xlat2;
  let x_278 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_273.x, x_273.w, x_273.z, x_273.w) * vec4<f32>(x_275.x, x_275.x, x_275.x, x_275.x)) + vec4<f32>(x_278.x, x_278.y, x_278.x, x_278.y));
  let x_281 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_281, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_285 : vec4<f32> = u_xlat0;
  let x_287 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat0 = (x_285 * vec4<f32>(x_287, x_287, x_287, x_287));
  let x_293 : vec4<f32> = u_xlat0;
  let x_295 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_293.x, x_293.y));
  u_xlat2 = x_295;
  let x_296 : vec4<f32> = u_xlat2;
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_296 + x_297);
  let x_302 : vec4<f32> = u_xlat0;
  let x_304 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_302.z, x_302.w));
  u_xlat0 = x_304;
  let x_305 : vec4<f32> = u_xlat0;
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_305 + x_306);
  let x_308 : vec4<f32> = u_xlat0;
  let x_311 : vec3<f32> = x_59.x_Bloom_Settings;
  u_xlat0 = (x_308 * vec4<f32>(x_311.y, x_311.y, x_311.y, x_311.y));
  let x_314 : vec2<f32> = vs_TEXCOORD0;
  let x_317 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_321 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_323 : vec2<f32> = ((x_314 * vec2<f32>(x_317.x, x_317.y)) + vec2<f32>(x_321.z, x_321.w));
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_323.x, x_323.y, x_324.z, x_324.w);
  let x_331 : vec4<f32> = u_xlat2;
  let x_333 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_331.x, x_331.y));
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.y, x_333.z);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat0;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat2;
  let x_347 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_349 : vec3<f32> = (vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_347.z, x_347.z, x_347.z));
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_352 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_355 : vec4<f32> = u_xlat0;
  let x_359 : vec3<f32> = x_59.x_Bloom_Color;
  let x_360 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) * x_359);
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : f32 = u_xlat0.w;
  u_xlat4.w = (x_364 * 0.25f);
  let x_367 : vec4<f32> = u_xlat1;
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_367 + x_368);
  let x_370 : vec4<f32> = u_xlat3;
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec3<f32> = (vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  u_xlat1.w = 0.0f;
  let x_378 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_378 + x_379);
  let x_386 : f32 = x_59.x_Vignette_Mode;
  u_xlatb1.x = (x_386 < 0.5f);
  let x_391 : bool = u_xlatb1.x;
  if (x_391) {
    let x_394 : vec2<f32> = vs_TEXCOORD0;
    let x_398 : vec2<f32> = x_59.x_Vignette_Center;
    let x_400 : vec2<f32> = (x_394 + -(x_398));
    let x_401 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
    let x_403 : vec4<f32> = u_xlat1;
    let x_408 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_410 : vec2<f32> = (abs(vec2<f32>(x_403.y, x_403.x)) * vec2<f32>(x_408.x, x_408.x));
    let x_411 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_411.x, x_410.x, x_410.y, x_411.w);
    let x_415 : f32 = x_59.x_ScreenParams.x;
    let x_417 : f32 = x_59.x_ScreenParams.y;
    u_xlat22 = (x_415 / x_417);
    let x_419 : f32 = u_xlat22;
    u_xlat22 = (x_419 + -1.0f);
    let x_422 : f32 = x_59.x_Vignette_Settings.w;
    let x_423 : f32 = u_xlat22;
    u_xlat22 = ((x_422 * x_423) + 1.0f);
    let x_426 : f32 = u_xlat22;
    let x_428 : f32 = u_xlat1.z;
    u_xlat1.x = (x_426 * x_428);
    let x_431 : vec4<f32> = u_xlat1;
    let x_432 : vec2<f32> = vec2<f32>(x_431.x, x_431.y);
    let x_433 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_433.z, x_433.w);
    let x_435 : vec4<f32> = u_xlat1;
    let x_439 : vec2<f32> = clamp(vec2<f32>(x_435.x, x_435.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_440 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
    let x_442 : vec4<f32> = u_xlat1;
    let x_444 : vec2<f32> = log2(vec2<f32>(x_442.x, x_442.y));
    let x_445 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
    let x_447 : vec4<f32> = u_xlat1;
    let x_450 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_452 : vec2<f32> = (vec2<f32>(x_447.x, x_447.y) * vec2<f32>(x_450.z, x_450.z));
    let x_453 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
    let x_455 : vec4<f32> = u_xlat1;
    let x_457 : vec2<f32> = exp2(vec2<f32>(x_455.x, x_455.y));
    let x_458 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
    let x_460 : vec4<f32> = u_xlat1;
    let x_462 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_460.x, x_460.y), vec2<f32>(x_462.x, x_462.y));
    let x_467 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_467) + 1.0f);
    let x_472 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_472, 0.0f);
    let x_476 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_476);
    let x_480 : f32 = u_xlat1.x;
    let x_482 : f32 = x_59.x_Vignette_Settings.y;
    u_xlat1.x = (x_480 * x_482);
    let x_486 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_486);
    let x_491 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = (-(x_491) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_495 : vec4<f32> = u_xlat1;
    let x_497 : vec3<f32> = u_xlat8;
    let x_500 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_495.x, x_495.x, x_495.x) * x_497) + x_500);
    let x_502 : vec4<f32> = u_xlat0;
    let x_504 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_502.x, x_502.y, x_502.z) * x_504);
    let x_507 : f32 = u_xlat0.w;
    u_xlat2.x = (x_507 + -1.0f);
    let x_511 : f32 = u_xlat1.x;
    let x_513 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_511 * x_513) + 1.0f);
  } else {
    let x_523 : vec2<f32> = vs_TEXCOORD0;
    let x_524 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_523);
    u_xlat1.x = x_524.w;
    let x_528 : f32 = u_xlat1.x;
    u_xlat3.x = (x_528 * 0.077399381f);
    let x_534 : f32 = u_xlat1.x;
    u_xlat10 = (x_534 + 0.055f);
    let x_537 : f32 = u_xlat10;
    u_xlat10 = (x_537 * 0.947867334f);
    let x_540 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_540), 1.1920929e-07f);
    let x_544 : f32 = u_xlat10;
    u_xlat10 = log2(x_544);
    let x_546 : f32 = u_xlat10;
    u_xlat10 = (x_546 * 2.400000095f);
    let x_549 : f32 = u_xlat10;
    u_xlat10 = exp2(x_549);
    let x_553 : f32 = u_xlat1.x;
    u_xlatb1.x = (0.040449999f >= x_553);
    let x_557 : bool = u_xlatb1.x;
    if (x_557) {
      let x_563 : f32 = u_xlat3.x;
      x_559 = x_563;
    } else {
      let x_565 : f32 = u_xlat10;
      x_559 = x_565;
    }
    let x_566 : f32 = x_559;
    u_xlat1.x = x_566;
    let x_569 : vec3<f32> = x_59.x_Vignette_Color;
    let x_571 : vec3<f32> = (-(x_569) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_572 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
    let x_574 : vec4<f32> = u_xlat1;
    let x_576 : vec4<f32> = u_xlat3;
    let x_580 : vec3<f32> = x_59.x_Vignette_Color;
    let x_581 : vec3<f32> = ((vec3<f32>(x_574.x, x_574.x, x_574.x) * vec3<f32>(x_576.x, x_576.y, x_576.z)) + x_580);
    let x_582 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
    let x_584 : vec4<f32> = u_xlat0;
    let x_586 : vec4<f32> = u_xlat3;
    let x_589 : vec4<f32> = u_xlat0;
    let x_592 : vec3<f32> = ((vec3<f32>(x_584.x, x_584.y, x_584.z) * vec3<f32>(x_586.x, x_586.y, x_586.z)) + -(vec3<f32>(x_589.x, x_589.y, x_589.z)));
    let x_593 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
    let x_597 : f32 = x_59.x_Vignette_Opacity;
    let x_599 : vec4<f32> = u_xlat3;
    let x_602 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_597, x_597, x_597) * vec3<f32>(x_599.x, x_599.y, x_599.z)) + vec3<f32>(x_602.x, x_602.y, x_602.z));
    let x_606 : f32 = u_xlat0.w;
    u_xlat0.x = (x_606 + -1.0f);
    let x_610 : f32 = u_xlat1.x;
    let x_612 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_610 * x_612) + 1.0f);
  }
  let x_616 : vec2<f32> = vs_TEXCOORD0;
  let x_619 : vec4<f32> = x_59.x_Dithering_Coords;
  let x_623 : vec4<f32> = x_59.x_Dithering_Coords;
  let x_625 : vec2<f32> = ((x_616 * vec2<f32>(x_619.x, x_619.y)) + vec2<f32>(x_623.z, x_623.w));
  let x_626 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
  let x_633 : vec4<f32> = u_xlat0;
  let x_635 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_633.x, x_633.y));
  u_xlat0.x = x_635.w;
  let x_639 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_639 * 2.0f) + -1.0f);
  let x_644 : f32 = u_xlat0.x;
  u_xlat7.x = ((x_644 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_650 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_650, 0.0f, 1.0f);
  let x_654 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_654 * 2.0f) + -1.0f);
  let x_659 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_659)) + 1.0f);
  let x_665 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_665);
  let x_669 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_669) + 1.0f);
  let x_674 : f32 = u_xlat0.x;
  let x_676 : f32 = u_xlat7.x;
  u_xlat0.x = (x_674 * x_676);
  let x_679 : vec3<f32> = u_xlat8;
  u_xlat7 = (x_679 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_683 : vec3<f32> = u_xlat8;
  let x_686 : vec3<f32> = max(abs(x_683), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_687 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec4<f32> = u_xlat3;
  let x_691 : vec3<f32> = log2(vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat3;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat3;
  let x_703 : vec3<f32> = exp2(vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat3;
  let x_713 : vec3<f32> = ((vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_714 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_718 : vec3<f32> = u_xlat8;
  let x_721 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_718.x, x_718.y, x_718.z, x_718.x));
  u_xlatb1 = vec3<bool>(x_721.x, x_721.y, x_721.z);
  let x_725 : vec3<f32> = u_xlat7;
  hlslcc_movcTemp = x_725;
  let x_727 : bool = u_xlatb1.x;
  if (x_727) {
    let x_732 : f32 = u_xlat7.x;
    x_728 = x_732;
  } else {
    let x_735 : f32 = u_xlat3.x;
    x_728 = x_735;
  }
  let x_736 : f32 = x_728;
  hlslcc_movcTemp.x = x_736;
  let x_739 : bool = u_xlatb1.y;
  if (x_739) {
    let x_744 : f32 = u_xlat7.y;
    x_740 = x_744;
  } else {
    let x_747 : f32 = u_xlat3.y;
    x_740 = x_747;
  }
  let x_748 : f32 = x_740;
  hlslcc_movcTemp.y = x_748;
  let x_751 : bool = u_xlatb1.z;
  if (x_751) {
    let x_756 : f32 = u_xlat7.z;
    x_752 = x_756;
  } else {
    let x_759 : f32 = u_xlat3.z;
    x_752 = x_759;
  }
  let x_760 : f32 = x_752;
  hlslcc_movcTemp.z = x_760;
  let x_762 : vec3<f32> = hlslcc_movcTemp;
  u_xlat7 = x_762;
  let x_763 : vec4<f32> = u_xlat0;
  let x_768 : vec3<f32> = u_xlat7;
  let x_769 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.x, x_763.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_768);
  let x_770 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat0;
  let x_775 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat0;
  let x_781 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat3;
  let x_787 : vec3<f32> = (vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_788 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat3;
  let x_793 : vec3<f32> = max(abs(vec3<f32>(x_790.x, x_790.y, x_790.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat3;
  let x_798 : vec3<f32> = log2(vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat3;
  let x_804 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_805 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat3;
  let x_809 : vec3<f32> = exp2(vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_814 : vec4<f32> = u_xlat0;
  let x_816 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_814.x, x_814.y, x_814.z, x_814.x));
  u_xlatb0 = vec3<bool>(x_816.x, x_816.y, x_816.z);
  let x_819 : bool = u_xlatb0.x;
  if (x_819) {
    let x_824 : f32 = u_xlat1.x;
    x_820 = x_824;
  } else {
    let x_827 : f32 = u_xlat3.x;
    x_820 = x_827;
  }
  let x_828 : f32 = x_820;
  u_xlat2.x = x_828;
  let x_831 : bool = u_xlatb0.y;
  if (x_831) {
    let x_836 : f32 = u_xlat1.y;
    x_832 = x_836;
  } else {
    let x_839 : f32 = u_xlat3.y;
    x_832 = x_839;
  }
  let x_840 : f32 = x_832;
  u_xlat2.y = x_840;
  let x_843 : bool = u_xlatb0.z;
  if (x_843) {
    let x_848 : f32 = u_xlat1.z;
    x_844 = x_848;
  } else {
    let x_851 : f32 = u_xlat3.z;
    x_844 = x_851;
  }
  let x_852 : f32 = x_844;
  u_xlat2.z = x_852;
  let x_856 : vec4<f32> = u_xlat2;
  SV_Target0 = x_856;
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

