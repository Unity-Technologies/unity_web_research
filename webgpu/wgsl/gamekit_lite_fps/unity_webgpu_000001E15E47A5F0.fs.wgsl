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
  var x_551 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_720 : f32;
  var x_732 : f32;
  var x_744 : f32;
  var x_812 : f32;
  var x_824 : f32;
  var x_836 : f32;
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
  u_xlat3 = (x_337 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_341 : vec4<f32> = u_xlat2;
  let x_344 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_346 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_344.z, x_344.z, x_344.z));
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  u_xlat2.w = 0.0f;
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_350 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_353 : vec4<f32> = u_xlat0;
  let x_357 : vec3<f32> = x_59.x_Bloom_Color;
  let x_358 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) * x_357);
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : f32 = u_xlat0.w;
  u_xlat4.w = (x_362 * 0.25f);
  let x_365 : vec4<f32> = u_xlat1;
  let x_366 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_365 + x_366);
  let x_368 : vec4<f32> = u_xlat2;
  let x_369 : vec4<f32> = u_xlat3;
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_368 * x_369) + x_371);
  let x_378 : f32 = x_59.x_Vignette_Mode;
  u_xlatb1.x = (x_378 < 0.5f);
  let x_383 : bool = u_xlatb1.x;
  if (x_383) {
    let x_386 : vec2<f32> = vs_TEXCOORD0;
    let x_390 : vec2<f32> = x_59.x_Vignette_Center;
    let x_392 : vec2<f32> = (x_386 + -(x_390));
    let x_393 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_395 : vec4<f32> = u_xlat1;
    let x_400 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_402 : vec2<f32> = (abs(vec2<f32>(x_395.y, x_395.x)) * vec2<f32>(x_400.x, x_400.x));
    let x_403 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_403.x, x_402.x, x_402.y, x_403.w);
    let x_407 : f32 = x_59.x_ScreenParams.x;
    let x_409 : f32 = x_59.x_ScreenParams.y;
    u_xlat22 = (x_407 / x_409);
    let x_411 : f32 = u_xlat22;
    u_xlat22 = (x_411 + -1.0f);
    let x_414 : f32 = x_59.x_Vignette_Settings.w;
    let x_415 : f32 = u_xlat22;
    u_xlat22 = ((x_414 * x_415) + 1.0f);
    let x_418 : f32 = u_xlat22;
    let x_420 : f32 = u_xlat1.z;
    u_xlat1.x = (x_418 * x_420);
    let x_423 : vec4<f32> = u_xlat1;
    let x_424 : vec2<f32> = vec2<f32>(x_423.x, x_423.y);
    let x_425 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
    let x_427 : vec4<f32> = u_xlat1;
    let x_431 : vec2<f32> = clamp(vec2<f32>(x_427.x, x_427.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_432 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
    let x_434 : vec4<f32> = u_xlat1;
    let x_436 : vec2<f32> = log2(vec2<f32>(x_434.x, x_434.y));
    let x_437 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
    let x_439 : vec4<f32> = u_xlat1;
    let x_442 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_444 : vec2<f32> = (vec2<f32>(x_439.x, x_439.y) * vec2<f32>(x_442.z, x_442.z));
    let x_445 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
    let x_447 : vec4<f32> = u_xlat1;
    let x_449 : vec2<f32> = exp2(vec2<f32>(x_447.x, x_447.y));
    let x_450 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
    let x_452 : vec4<f32> = u_xlat1;
    let x_454 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_452.x, x_452.y), vec2<f32>(x_454.x, x_454.y));
    let x_459 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_459) + 1.0f);
    let x_464 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_464, 0.0f);
    let x_468 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_468);
    let x_472 : f32 = u_xlat1.x;
    let x_474 : f32 = x_59.x_Vignette_Settings.y;
    u_xlat1.x = (x_472 * x_474);
    let x_478 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_478);
    let x_483 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = (-(x_483) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_487 : vec4<f32> = u_xlat1;
    let x_489 : vec3<f32> = u_xlat8;
    let x_492 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_487.x, x_487.x, x_487.x) * x_489) + x_492);
    let x_494 : vec4<f32> = u_xlat0;
    let x_496 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_494.x, x_494.y, x_494.z) * x_496);
    let x_499 : f32 = u_xlat0.w;
    u_xlat2.x = (x_499 + -1.0f);
    let x_503 : f32 = u_xlat1.x;
    let x_505 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_503 * x_505) + 1.0f);
  } else {
    let x_515 : vec2<f32> = vs_TEXCOORD0;
    let x_516 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_515);
    u_xlat1.x = x_516.w;
    let x_520 : f32 = u_xlat1.x;
    u_xlat3.x = (x_520 * 0.077399381f);
    let x_526 : f32 = u_xlat1.x;
    u_xlat10 = (x_526 + 0.055f);
    let x_529 : f32 = u_xlat10;
    u_xlat10 = (x_529 * 0.947867334f);
    let x_532 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_532), 1.1920929e-07f);
    let x_536 : f32 = u_xlat10;
    u_xlat10 = log2(x_536);
    let x_538 : f32 = u_xlat10;
    u_xlat10 = (x_538 * 2.400000095f);
    let x_541 : f32 = u_xlat10;
    u_xlat10 = exp2(x_541);
    let x_545 : f32 = u_xlat1.x;
    u_xlatb1.x = (0.040449999f >= x_545);
    let x_549 : bool = u_xlatb1.x;
    if (x_549) {
      let x_555 : f32 = u_xlat3.x;
      x_551 = x_555;
    } else {
      let x_557 : f32 = u_xlat10;
      x_551 = x_557;
    }
    let x_558 : f32 = x_551;
    u_xlat1.x = x_558;
    let x_561 : vec3<f32> = x_59.x_Vignette_Color;
    let x_563 : vec3<f32> = (-(x_561) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_564 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
    let x_566 : vec4<f32> = u_xlat1;
    let x_568 : vec4<f32> = u_xlat3;
    let x_572 : vec3<f32> = x_59.x_Vignette_Color;
    let x_573 : vec3<f32> = ((vec3<f32>(x_566.x, x_566.x, x_566.x) * vec3<f32>(x_568.x, x_568.y, x_568.z)) + x_572);
    let x_574 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
    let x_576 : vec4<f32> = u_xlat0;
    let x_578 : vec4<f32> = u_xlat3;
    let x_581 : vec4<f32> = u_xlat0;
    let x_584 : vec3<f32> = ((vec3<f32>(x_576.x, x_576.y, x_576.z) * vec3<f32>(x_578.x, x_578.y, x_578.z)) + -(vec3<f32>(x_581.x, x_581.y, x_581.z)));
    let x_585 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
    let x_589 : f32 = x_59.x_Vignette_Opacity;
    let x_591 : vec4<f32> = u_xlat3;
    let x_594 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_589, x_589, x_589) * vec3<f32>(x_591.x, x_591.y, x_591.z)) + vec3<f32>(x_594.x, x_594.y, x_594.z));
    let x_598 : f32 = u_xlat0.w;
    u_xlat0.x = (x_598 + -1.0f);
    let x_602 : f32 = u_xlat1.x;
    let x_604 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_602 * x_604) + 1.0f);
  }
  let x_608 : vec2<f32> = vs_TEXCOORD0;
  let x_611 : vec4<f32> = x_59.x_Dithering_Coords;
  let x_615 : vec4<f32> = x_59.x_Dithering_Coords;
  let x_617 : vec2<f32> = ((x_608 * vec2<f32>(x_611.x, x_611.y)) + vec2<f32>(x_615.z, x_615.w));
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_617.x, x_617.y, x_618.z, x_618.w);
  let x_625 : vec4<f32> = u_xlat0;
  let x_627 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_625.x, x_625.y));
  u_xlat0.x = x_627.w;
  let x_631 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_631 * 2.0f) + -1.0f);
  let x_636 : f32 = u_xlat0.x;
  u_xlat7.x = ((x_636 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_642 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_642, 0.0f, 1.0f);
  let x_646 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_646 * 2.0f) + -1.0f);
  let x_651 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_651)) + 1.0f);
  let x_657 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_657);
  let x_661 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_661) + 1.0f);
  let x_666 : f32 = u_xlat0.x;
  let x_668 : f32 = u_xlat7.x;
  u_xlat0.x = (x_666 * x_668);
  let x_671 : vec3<f32> = u_xlat8;
  u_xlat7 = (x_671 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_675 : vec3<f32> = u_xlat8;
  let x_678 : vec3<f32> = max(abs(x_675), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_679 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat3;
  let x_683 : vec3<f32> = log2(vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat3;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_695 : vec3<f32> = exp2(vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat3;
  let x_705 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_706 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_710 : vec3<f32> = u_xlat8;
  let x_713 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_710.x, x_710.y, x_710.z, x_710.x));
  u_xlatb1 = vec3<bool>(x_713.x, x_713.y, x_713.z);
  let x_717 : vec3<f32> = u_xlat7;
  hlslcc_movcTemp = x_717;
  let x_719 : bool = u_xlatb1.x;
  if (x_719) {
    let x_724 : f32 = u_xlat7.x;
    x_720 = x_724;
  } else {
    let x_727 : f32 = u_xlat3.x;
    x_720 = x_727;
  }
  let x_728 : f32 = x_720;
  hlslcc_movcTemp.x = x_728;
  let x_731 : bool = u_xlatb1.y;
  if (x_731) {
    let x_736 : f32 = u_xlat7.y;
    x_732 = x_736;
  } else {
    let x_739 : f32 = u_xlat3.y;
    x_732 = x_739;
  }
  let x_740 : f32 = x_732;
  hlslcc_movcTemp.y = x_740;
  let x_743 : bool = u_xlatb1.z;
  if (x_743) {
    let x_748 : f32 = u_xlat7.z;
    x_744 = x_748;
  } else {
    let x_751 : f32 = u_xlat3.z;
    x_744 = x_751;
  }
  let x_752 : f32 = x_744;
  hlslcc_movcTemp.z = x_752;
  let x_754 : vec3<f32> = hlslcc_movcTemp;
  u_xlat7 = x_754;
  let x_755 : vec4<f32> = u_xlat0;
  let x_760 : vec3<f32> = u_xlat7;
  let x_761 : vec3<f32> = ((vec3<f32>(x_755.x, x_755.x, x_755.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_760);
  let x_762 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat0;
  let x_767 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_768 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat0;
  let x_773 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_774 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat3;
  let x_779 : vec3<f32> = (vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat3;
  let x_785 : vec3<f32> = max(abs(vec3<f32>(x_782.x, x_782.y, x_782.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_786 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat3;
  let x_790 : vec3<f32> = log2(vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat3;
  let x_796 : vec3<f32> = (vec3<f32>(x_793.x, x_793.y, x_793.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_797 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat3;
  let x_801 : vec3<f32> = exp2(vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_806 : vec4<f32> = u_xlat0;
  let x_808 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_806.x, x_806.y, x_806.z, x_806.x));
  u_xlatb0 = vec3<bool>(x_808.x, x_808.y, x_808.z);
  let x_811 : bool = u_xlatb0.x;
  if (x_811) {
    let x_816 : f32 = u_xlat1.x;
    x_812 = x_816;
  } else {
    let x_819 : f32 = u_xlat3.x;
    x_812 = x_819;
  }
  let x_820 : f32 = x_812;
  u_xlat2.x = x_820;
  let x_823 : bool = u_xlatb0.y;
  if (x_823) {
    let x_828 : f32 = u_xlat1.y;
    x_824 = x_828;
  } else {
    let x_831 : f32 = u_xlat3.y;
    x_824 = x_831;
  }
  let x_832 : f32 = x_824;
  u_xlat2.y = x_832;
  let x_835 : bool = u_xlatb0.z;
  if (x_835) {
    let x_840 : f32 = u_xlat1.z;
    x_836 = x_840;
  } else {
    let x_843 : f32 = u_xlat3.z;
    x_836 = x_843;
  }
  let x_844 : f32 = x_836;
  u_xlat2.z = x_844;
  let x_848 : vec4<f32> = u_xlat2;
  SV_Target0 = x_848;
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

