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
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_59 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(15) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(17) var sampler_Vignette_Mask : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(9) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_GrainTex : sampler;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(16) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_702 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_895 : f32;
  var x_907 : f32;
  var x_919 : f32;
  var x_1050 : f32;
  var x_1062 : f32;
  var x_1074 : f32;
  var x_1159 : f32;
  var x_1171 : f32;
  var x_1183 : f32;
  var x_1230 : f32;
  var x_1243 : f32;
  var x_1255 : f32;
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
  u_xlat16.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_143 : vec2<f32> = vs_TEXCOORD0;
  let x_144 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_143.x, x_143.y, x_144.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_154 : i32 = u_xlati_loop_1;
    let x_155 : i32 = u_xlati21;
    if ((x_154 < x_155)) {
    } else {
      break;
    }
    let x_159 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_159);
    let x_163 : f32 = u_xlat6.x;
    u_xlat6.x = (x_163 + 0.5f);
    let x_167 : f32 = u_xlat6.x;
    let x_169 : f32 = u_xlat1.x;
    u_xlat2.x = (x_167 / x_169);
    let x_172 : vec3<f32> = u_xlat8;
    let x_173 : vec2<f32> = vec2<f32>(x_172.x, x_172.y);
    let x_174 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_173.x, x_173.y, x_174.z, x_174.w);
    let x_176 : vec4<f32> = u_xlat6;
    let x_180 : vec2<f32> = clamp(vec2<f32>(x_176.x, x_176.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_181 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_180.x, x_180.y, x_181.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_187 : f32 = x_59.x_RenderViewportScaleFactor;
    let x_189 : vec2<f32> = (vec2<f32>(x_183.x, x_183.y) * vec2<f32>(x_187, x_187));
    let x_190 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_189.x, x_189.y, x_190.z, x_190.w);
    let x_197 : vec4<f32> = u_xlat6;
    let x_199 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_197.x, x_197.y), 0.0f);
    u_xlat6 = x_199;
    let x_205 : vec3<f32> = u_xlat2;
    let x_207 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_205.x, x_205.y), 0.0f);
    let x_208 : vec3<f32> = vec3<f32>(x_207.x, x_207.y, x_207.z);
    let x_209 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
    let x_211 : vec4<f32> = u_xlat6;
    let x_212 : vec4<f32> = u_xlat3;
    let x_214 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_211 * x_212) + x_214);
    let x_216 : vec4<f32> = u_xlat3;
    let x_217 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_216 + x_217);
    let x_219 : vec3<f32> = u_xlat7;
    let x_221 : vec3<f32> = u_xlat8;
    let x_223 : vec2<f32> = (vec2<f32>(x_219.x, x_219.y) + vec2<f32>(x_221.x, x_221.y));
    let x_224 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_223.x, x_223.y, x_224.z);

    continuing {
      let x_226 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_226 + 1i);
    }
  }
  let x_228 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_228 / x_229);
  let x_231 : vec4<f32> = u_xlat0;
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_240 : vec4<f32> = x_59.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_240.x, x_240.y, x_240.x, x_240.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_244 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_253 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((-(vec4<f32>(x_244.x, x_244.y, x_244.w, x_244.y)) * vec4<f32>(x_250.x, x_250.x, x_250.x, x_250.x)) + vec4<f32>(x_253.x, x_253.y, x_253.x, x_253.y));
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_256, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_260 : vec4<f32> = u_xlat3;
  let x_262 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat3 = (x_260 * vec4<f32>(x_262, x_262, x_262, x_262));
  let x_270 : vec4<f32> = u_xlat3;
  let x_272 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_270.x, x_270.y));
  u_xlat4 = x_272;
  let x_276 : vec4<f32> = u_xlat3;
  let x_278 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_276.z, x_276.w));
  u_xlat3 = x_278;
  let x_279 : vec4<f32> = u_xlat3;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_279 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_282);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_291 : vec2<f32> = vs_TEXCOORD0;
  let x_292 : vec2<f32> = ((-(vec2<f32>(x_284.z, x_284.y)) * vec2<f32>(x_288.x, x_288.x)) + x_291);
  let x_293 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_292.x, x_292.y, x_293.z);
  let x_295 : vec3<f32> = u_xlat2;
  let x_299 : vec2<f32> = clamp(vec2<f32>(x_295.x, x_295.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_300 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_299.x, x_299.y, x_300.z);
  let x_302 : vec3<f32> = u_xlat2;
  let x_305 : f32 = x_59.x_RenderViewportScaleFactor;
  let x_307 : vec2<f32> = (vec2<f32>(x_302.x, x_302.y) * vec2<f32>(x_305, x_305));
  let x_308 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_307.x, x_307.y, x_308.z);
  let x_313 : vec3<f32> = u_xlat2;
  let x_315 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_313.x, x_313.y));
  u_xlat4 = x_315;
  let x_316 : vec4<f32> = u_xlat3;
  let x_317 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_316 + x_317);
  let x_319 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_325 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_319.z, x_319.w, x_319.x, x_319.w) * vec4<f32>(x_322.x, x_322.x, x_322.x, x_322.x)) + vec4<f32>(x_325.x, x_325.y, x_325.x, x_325.y));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_328, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_332 : vec4<f32> = u_xlat4;
  let x_334 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat4 = (x_332 * vec4<f32>(x_334, x_334, x_334, x_334));
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_340.x, x_340.y));
  u_xlat5 = x_342;
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_343 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_345);
  let x_347 : vec2<f32> = vs_TEXCOORD0;
  let x_348 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_347.x, x_347.y, x_348.z);
  let x_350 : vec3<f32> = u_xlat2;
  let x_354 : vec2<f32> = clamp(vec2<f32>(x_350.x, x_350.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_355 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_354.x, x_354.y, x_355.z);
  let x_357 : vec3<f32> = u_xlat2;
  let x_360 : f32 = x_59.x_RenderViewportScaleFactor;
  let x_362 : vec2<f32> = (vec2<f32>(x_357.x, x_357.y) * vec2<f32>(x_360, x_360));
  let x_363 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_362.x, x_362.y, x_363.z);
  let x_368 : vec3<f32> = u_xlat2;
  let x_370 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_368.x, x_368.y));
  u_xlat5 = x_370;
  let x_371 : vec4<f32> = u_xlat5;
  let x_375 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_371 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_375);
  let x_380 : vec4<f32> = u_xlat4;
  let x_382 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_380.z, x_380.w));
  u_xlat4 = x_382;
  let x_383 : vec4<f32> = u_xlat4;
  let x_385 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_383 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_385);
  let x_387 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_393 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_387.z, x_387.y, x_387.w, x_387.y) * vec4<f32>(x_390.x, x_390.x, x_390.x, x_390.x)) + vec4<f32>(x_393.x, x_393.y, x_393.x, x_393.y));
  let x_396 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_396, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_400 : vec4<f32> = u_xlat4;
  let x_402 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat4 = (x_400 * vec4<f32>(x_402, x_402, x_402, x_402));
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_408.x, x_408.y));
  u_xlat5 = x_410;
  let x_411 : vec4<f32> = u_xlat3;
  let x_412 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_411 + x_412);
  let x_417 : vec4<f32> = u_xlat4;
  let x_419 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_417.z, x_417.w));
  u_xlat4 = x_419;
  let x_420 : vec4<f32> = u_xlat4;
  let x_422 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_420 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_422);
  let x_424 : vec4<f32> = u_xlat0;
  let x_427 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_430 : vec2<f32> = vs_TEXCOORD0;
  let x_431 : vec2<f32> = ((vec2<f32>(x_424.x, x_424.y) * vec2<f32>(x_427.x, x_427.x)) + x_430);
  let x_432 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat0;
  let x_438 : vec2<f32> = clamp(vec2<f32>(x_434.x, x_434.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat0;
  let x_444 : f32 = x_59.x_RenderViewportScaleFactor;
  let x_446 : vec2<f32> = (vec2<f32>(x_441.x, x_441.y) * vec2<f32>(x_444, x_444));
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
  let x_452 : vec4<f32> = u_xlat0;
  let x_454 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_452.x, x_452.y));
  u_xlat0 = x_454;
  let x_455 : vec4<f32> = u_xlat0;
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_455 + x_456);
  let x_458 : vec4<f32> = u_xlat0;
  let x_460 : vec3<f32> = x_59.x_Bloom_Settings;
  u_xlat0 = (x_458 * vec4<f32>(x_460.y, x_460.y, x_460.y, x_460.y));
  let x_463 : vec2<f32> = vs_TEXCOORD0;
  let x_466 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_470 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_472 : vec2<f32> = ((x_463 * vec2<f32>(x_466.x, x_466.y)) + vec2<f32>(x_470.z, x_470.w));
  let x_473 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_472.x, x_472.y, x_473.z);
  let x_480 : vec3<f32> = u_xlat2;
  let x_482 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_480.x, x_480.y));
  let x_483 : vec3<f32> = vec3<f32>(x_482.x, x_482.y, x_482.z);
  let x_484 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat0;
  let x_490 : vec3<f32> = (vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_491 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat3;
  let x_496 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_498 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_496.z, x_496.z, x_496.z));
  let x_499 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_501 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_504 : vec4<f32> = u_xlat0;
  let x_508 : vec3<f32> = x_59.x_Bloom_Color;
  let x_509 : vec3<f32> = (vec3<f32>(x_504.x, x_504.y, x_504.z) * x_508);
  let x_510 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : f32 = u_xlat0.w;
  u_xlat5.w = (x_513 * 0.0625f);
  let x_516 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_516 + x_517);
  let x_519 : vec4<f32> = u_xlat4;
  let x_521 : vec4<f32> = u_xlat3;
  let x_523 : vec3<f32> = (vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  u_xlat1.w = 0.0f;
  let x_527 : vec4<f32> = u_xlat0;
  let x_528 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_527 + x_528);
  let x_534 : f32 = x_59.x_Vignette_Mode;
  u_xlatb1 = (x_534 < 0.5f);
  let x_536 : bool = u_xlatb1;
  if (x_536) {
    let x_539 : vec2<f32> = vs_TEXCOORD0;
    let x_543 : vec2<f32> = x_59.x_Vignette_Center;
    let x_545 : vec2<f32> = (x_539 + -(x_543));
    let x_546 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
    let x_548 : vec4<f32> = u_xlat1;
    let x_553 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_555 : vec2<f32> = (abs(vec2<f32>(x_548.y, x_548.x)) * vec2<f32>(x_553.x, x_553.x));
    let x_556 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_556.x, x_555.x, x_555.y, x_556.w);
    let x_560 : f32 = x_59.x_ScreenParams.x;
    let x_562 : f32 = x_59.x_ScreenParams.y;
    u_xlat22 = (x_560 / x_562);
    let x_564 : f32 = u_xlat22;
    u_xlat22 = (x_564 + -1.0f);
    let x_567 : f32 = x_59.x_Vignette_Settings.w;
    let x_568 : f32 = u_xlat22;
    u_xlat22 = ((x_567 * x_568) + 1.0f);
    let x_571 : f32 = u_xlat22;
    let x_573 : f32 = u_xlat1.z;
    u_xlat1.x = (x_571 * x_573);
    let x_576 : vec4<f32> = u_xlat1;
    let x_577 : vec2<f32> = vec2<f32>(x_576.x, x_576.y);
    let x_578 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
    let x_580 : vec4<f32> = u_xlat1;
    let x_584 : vec2<f32> = clamp(vec2<f32>(x_580.x, x_580.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_585 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
    let x_587 : vec4<f32> = u_xlat1;
    let x_589 : vec2<f32> = log2(vec2<f32>(x_587.x, x_587.y));
    let x_590 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
    let x_592 : vec4<f32> = u_xlat1;
    let x_595 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_597 : vec2<f32> = (vec2<f32>(x_592.x, x_592.y) * vec2<f32>(x_595.z, x_595.z));
    let x_598 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
    let x_600 : vec4<f32> = u_xlat1;
    let x_602 : vec2<f32> = exp2(vec2<f32>(x_600.x, x_600.y));
    let x_603 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
    let x_605 : vec4<f32> = u_xlat1;
    let x_607 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_605.x, x_605.y), vec2<f32>(x_607.x, x_607.y));
    let x_612 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_612) + 1.0f);
    let x_617 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_617, 0.0f);
    let x_621 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_621);
    let x_625 : f32 = u_xlat1.x;
    let x_627 : f32 = x_59.x_Vignette_Settings.y;
    u_xlat1.x = (x_625 * x_627);
    let x_631 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_631);
    let x_636 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = (-(x_636) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_640 : vec4<f32> = u_xlat1;
    let x_642 : vec3<f32> = u_xlat8;
    let x_645 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_640.x, x_640.x, x_640.x) * x_642) + x_645);
    let x_647 : vec4<f32> = u_xlat0;
    let x_649 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_647.x, x_647.y, x_647.z) * x_649);
    let x_652 : f32 = u_xlat0.w;
    u_xlat2.x = (x_652 + -1.0f);
    let x_656 : f32 = u_xlat1.x;
    let x_658 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_656 * x_658) + 1.0f);
  } else {
    let x_668 : vec2<f32> = vs_TEXCOORD0;
    let x_669 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_668);
    u_xlat1.x = x_669.w;
    let x_673 : f32 = u_xlat1.x;
    u_xlat2.x = (x_673 * 0.077399381f);
    let x_679 : f32 = u_xlat1.x;
    u_xlat9 = (x_679 + 0.055f);
    let x_682 : f32 = u_xlat9;
    u_xlat9 = (x_682 * 0.947867334f);
    let x_685 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_685), 1.1920929e-07f);
    let x_689 : f32 = u_xlat9;
    u_xlat9 = log2(x_689);
    let x_691 : f32 = u_xlat9;
    u_xlat9 = (x_691 * 2.400000095f);
    let x_694 : f32 = u_xlat9;
    u_xlat9 = exp2(x_694);
    let x_698 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_698);
    let x_700 : bool = u_xlatb1;
    if (x_700) {
      let x_706 : f32 = u_xlat2.x;
      x_702 = x_706;
    } else {
      let x_708 : f32 = u_xlat9;
      x_702 = x_708;
    }
    let x_709 : f32 = x_702;
    u_xlat1.x = x_709;
    let x_712 : vec3<f32> = x_59.x_Vignette_Color;
    let x_714 : vec3<f32> = (-(x_712) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_715 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
    let x_717 : vec4<f32> = u_xlat1;
    let x_719 : vec4<f32> = u_xlat4;
    let x_723 : vec3<f32> = x_59.x_Vignette_Color;
    let x_724 : vec3<f32> = ((vec3<f32>(x_717.x, x_717.x, x_717.x) * vec3<f32>(x_719.x, x_719.y, x_719.z)) + x_723);
    let x_725 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
    let x_727 : vec4<f32> = u_xlat0;
    let x_729 : vec4<f32> = u_xlat4;
    let x_732 : vec4<f32> = u_xlat0;
    let x_735 : vec3<f32> = ((vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(x_729.x, x_729.y, x_729.z)) + -(vec3<f32>(x_732.x, x_732.y, x_732.z)));
    let x_736 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
    let x_740 : f32 = x_59.x_Vignette_Opacity;
    let x_742 : vec4<f32> = u_xlat4;
    let x_745 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_740, x_740, x_740) * vec3<f32>(x_742.x, x_742.y, x_742.z)) + vec3<f32>(x_745.x, x_745.y, x_745.z));
    let x_749 : f32 = u_xlat0.w;
    u_xlat0.x = (x_749 + -1.0f);
    let x_753 : f32 = u_xlat1.x;
    let x_755 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_753 * x_755) + 1.0f);
  }
  let x_760 : vec2<f32> = vs_TEXCOORD1;
  let x_762 : vec4<f32> = x_59.x_Grain_Params2;
  let x_766 : vec4<f32> = x_59.x_Grain_Params2;
  let x_768 : vec2<f32> = ((x_760 * vec2<f32>(x_762.x, x_762.y)) + vec2<f32>(x_766.z, x_766.w));
  let x_769 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_768.x, x_768.y, x_769.z, x_769.w);
  let x_776 : vec4<f32> = u_xlat0;
  let x_778 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_776.x, x_776.y));
  let x_779 : vec3<f32> = vec3<f32>(x_778.x, x_778.y, x_778.z);
  let x_780 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec3<f32> = u_xlat8;
  let x_783 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat4;
  let x_789 : vec3<f32> = clamp(vec3<f32>(x_785.x, x_785.y, x_785.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_790 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_792 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_792.x, x_792.y, x_792.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_799 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_799);
  let x_803 : f32 = x_59.x_Grain_Params1.x;
  let x_804 : f32 = u_xlat21;
  u_xlat21 = ((x_803 * -(x_804)) + 1.0f);
  let x_808 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = u_xlat8;
  let x_811 : vec3<f32> = (vec3<f32>(x_808.x, x_808.y, x_808.z) * x_810);
  let x_812 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat0;
  let x_817 : f32 = x_59.x_Grain_Params1.y;
  let x_819 : f32 = x_59.x_Grain_Params1.y;
  let x_821 : f32 = x_59.x_Grain_Params1.y;
  let x_823 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_817, x_819, x_821));
  let x_824 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat0;
  let x_828 : f32 = u_xlat21;
  let x_831 : vec3<f32> = u_xlat8;
  let x_832 : vec3<f32> = ((vec3<f32>(x_826.x, x_826.y, x_826.z) * vec3<f32>(x_828, x_828, x_828)) + x_831);
  let x_833 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat3;
  u_xlat3 = x_835;
  let x_836 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_836, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_840 : vec4<f32> = u_xlat3;
  let x_844 : vec3<f32> = (vec3<f32>(x_840.z, x_840.x, x_840.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat3;
  let x_850 : vec3<f32> = max(vec3<f32>(x_847.z, x_847.x, x_847.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_851 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = log2(vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat1;
  let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_863 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat1;
  let x_867 : vec3<f32> = exp2(vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat1;
  let x_877 : vec3<f32> = ((vec3<f32>(x_870.x, x_870.y, x_870.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_878 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_885 : vec4<f32> = u_xlat3;
  let x_888 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_885.z, x_885.x, x_885.y, x_885.z));
  u_xlatb3 = vec3<bool>(x_888.x, x_888.y, x_888.z);
  let x_892 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_892;
  let x_894 : bool = u_xlatb3.x;
  if (x_894) {
    let x_899 : f32 = u_xlat0.x;
    x_895 = x_899;
  } else {
    let x_902 : f32 = u_xlat1.x;
    x_895 = x_902;
  }
  let x_903 : f32 = x_895;
  hlslcc_movcTemp.x = x_903;
  let x_906 : bool = u_xlatb3.y;
  if (x_906) {
    let x_911 : f32 = u_xlat0.y;
    x_907 = x_911;
  } else {
    let x_914 : f32 = u_xlat1.y;
    x_907 = x_914;
  }
  let x_915 : f32 = x_907;
  hlslcc_movcTemp.y = x_915;
  let x_918 : bool = u_xlatb3.z;
  if (x_918) {
    let x_923 : f32 = u_xlat0.z;
    x_919 = x_923;
  } else {
    let x_926 : f32 = u_xlat1.z;
    x_919 = x_926;
  }
  let x_927 : f32 = x_919;
  hlslcc_movcTemp.z = x_927;
  let x_929 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_929;
  let x_930 : vec4<f32> = u_xlat0;
  let x_934 : vec3<f32> = x_59.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_930.x, x_930.y, x_930.z) * vec3<f32>(x_934.z, x_934.z, x_934.z));
  let x_938 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_938);
  let x_942 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_944 : vec2<f32> = (vec2<f32>(x_942.x, x_942.y) * vec2<f32>(0.5f, 0.5f));
  let x_945 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
  let x_947 : vec3<f32> = u_xlat7;
  let x_950 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_953 : vec4<f32> = u_xlat1;
  let x_955 : vec2<f32> = ((vec2<f32>(x_947.y, x_947.z) * vec2<f32>(x_950.x, x_950.y)) + vec2<f32>(x_953.x, x_953.y));
  let x_956 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_956.x, x_955.x, x_955.y, x_956.w);
  let x_959 : f32 = u_xlat7.x;
  let x_961 : f32 = x_59.x_Lut2D_Params.y;
  let x_964 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_959 * x_961) + x_964);
  let x_972 : vec4<f32> = u_xlat1;
  let x_974 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_972.x, x_972.z));
  let x_975 : vec3<f32> = vec3<f32>(x_974.x, x_974.y, x_974.z);
  let x_976 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_979 : f32 = x_59.x_Lut2D_Params.y;
  u_xlat16.x = x_979;
  let x_982 : vec2<f32> = u_xlat16;
  let x_983 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_982 + vec2<f32>(x_983.x, x_983.z));
  let x_989 : vec2<f32> = u_xlat14;
  let x_990 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_989);
  let x_991 : vec3<f32> = vec3<f32>(x_990.x, x_990.y, x_990.z);
  let x_992 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_995 : f32 = u_xlat0.x;
  let x_997 : f32 = x_59.x_Lut2D_Params.z;
  let x_1000 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_995 * x_997) + -(x_1000));
  let x_1004 : vec4<f32> = u_xlat3;
  let x_1007 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1004.x, x_1004.y, x_1004.z)) + vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : vec4<f32> = u_xlat0;
  let x_1012 : vec3<f32> = u_xlat7;
  let x_1014 : vec4<f32> = u_xlat3;
  let x_1016 : vec3<f32> = ((vec3<f32>(x_1010.x, x_1010.x, x_1010.x) * x_1012) + vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
  let x_1017 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  let x_1019 : vec4<f32> = u_xlat0;
  let x_1022 : vec3<f32> = (vec3<f32>(x_1019.x, x_1019.y, x_1019.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1023 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1025.x, x_1025.y, x_1025.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1029 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1029 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1032 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1032), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1035 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1035);
  let x_1037 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1037 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1040 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1040);
  let x_1044 : vec4<f32> = u_xlat0;
  let x_1046 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1044.x));
  u_xlatb0 = vec3<bool>(x_1046.x, x_1046.y, x_1046.z);
  let x_1049 : bool = u_xlatb0.x;
  if (x_1049) {
    let x_1054 : f32 = u_xlat1.x;
    x_1050 = x_1054;
  } else {
    let x_1057 : f32 = u_xlat2.x;
    x_1050 = x_1057;
  }
  let x_1058 : f32 = x_1050;
  u_xlat0.x = x_1058;
  let x_1061 : bool = u_xlatb0.y;
  if (x_1061) {
    let x_1066 : f32 = u_xlat1.y;
    x_1062 = x_1066;
  } else {
    let x_1069 : f32 = u_xlat2.y;
    x_1062 = x_1069;
  }
  let x_1070 : f32 = x_1062;
  u_xlat0.y = x_1070;
  let x_1073 : bool = u_xlatb0.z;
  if (x_1073) {
    let x_1078 : f32 = u_xlat1.z;
    x_1074 = x_1078;
  } else {
    let x_1081 : f32 = u_xlat2.z;
    x_1074 = x_1081;
  }
  let x_1082 : f32 = x_1074;
  u_xlat0.z = x_1082;
  let x_1084 : vec2<f32> = vs_TEXCOORD0;
  let x_1087 : vec4<f32> = x_59.x_Dithering_Coords;
  let x_1091 : vec4<f32> = x_59.x_Dithering_Coords;
  let x_1093 : vec2<f32> = ((x_1084 * vec2<f32>(x_1087.x, x_1087.y)) + vec2<f32>(x_1091.z, x_1091.w));
  let x_1094 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1093.x, x_1093.y, x_1094.z, x_1094.w);
  let x_1101 : vec4<f32> = u_xlat1;
  let x_1103 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1101.x, x_1101.y));
  u_xlat21 = x_1103.w;
  let x_1105 : f32 = u_xlat21;
  u_xlat21 = ((x_1105 * 2.0f) + -1.0f);
  let x_1108 : f32 = u_xlat21;
  u_xlat1.x = ((x_1108 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1114 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1114, 0.0f, 1.0f);
  let x_1118 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1118 * 2.0f) + -1.0f);
  let x_1122 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1122)) + 1.0f);
  let x_1126 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1126);
  let x_1128 : f32 = u_xlat21;
  u_xlat21 = (-(x_1128) + 1.0f);
  let x_1131 : f32 = u_xlat21;
  let x_1133 : f32 = u_xlat1.x;
  u_xlat21 = (x_1131 * x_1133);
  let x_1135 : vec4<f32> = u_xlat0;
  let x_1137 : vec3<f32> = (vec3<f32>(x_1135.x, x_1135.y, x_1135.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1138 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1140.x, x_1140.y, x_1140.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1144 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1144);
  let x_1146 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1146 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1148 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1148);
  let x_1150 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1150 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1153 : vec4<f32> = u_xlat0;
  let x_1155 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1153.x));
  u_xlatb0 = vec3<bool>(x_1155.x, x_1155.y, x_1155.z);
  let x_1158 : bool = u_xlatb0.x;
  if (x_1158) {
    let x_1163 : f32 = u_xlat1.x;
    x_1159 = x_1163;
  } else {
    let x_1166 : f32 = u_xlat2.x;
    x_1159 = x_1166;
  }
  let x_1167 : f32 = x_1159;
  u_xlat0.x = x_1167;
  let x_1170 : bool = u_xlatb0.y;
  if (x_1170) {
    let x_1175 : f32 = u_xlat1.y;
    x_1171 = x_1175;
  } else {
    let x_1178 : f32 = u_xlat2.y;
    x_1171 = x_1178;
  }
  let x_1179 : f32 = x_1171;
  u_xlat0.y = x_1179;
  let x_1182 : bool = u_xlatb0.z;
  if (x_1182) {
    let x_1187 : f32 = u_xlat1.z;
    x_1183 = x_1187;
  } else {
    let x_1190 : f32 = u_xlat2.z;
    x_1183 = x_1190;
  }
  let x_1191 : f32 = x_1183;
  u_xlat0.z = x_1191;
  let x_1193 : f32 = u_xlat21;
  let x_1198 : vec4<f32> = u_xlat0;
  let x_1200 : vec3<f32> = ((vec3<f32>(x_1193, x_1193, x_1193) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1203 : vec4<f32> = u_xlat0;
  let x_1205 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.y, x_1203.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
  let x_1208 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1208.x, x_1208.y, x_1208.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1211 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1211 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1213 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1213), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1216 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1216);
  let x_1218 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1218 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1220 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1220);
  let x_1222 : vec4<f32> = u_xlat0;
  let x_1224 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1222.x));
  u_xlatb0 = vec3<bool>(x_1224.x, x_1224.y, x_1224.z);
  let x_1229 : bool = u_xlatb0.x;
  if (x_1229) {
    let x_1234 : f32 = u_xlat1.x;
    x_1230 = x_1234;
  } else {
    let x_1237 : f32 = u_xlat2.x;
    x_1230 = x_1237;
  }
  let x_1238 : f32 = x_1230;
  SV_Target0.x = x_1238;
  let x_1242 : bool = u_xlatb0.y;
  if (x_1242) {
    let x_1247 : f32 = u_xlat1.y;
    x_1243 = x_1247;
  } else {
    let x_1250 : f32 = u_xlat2.y;
    x_1243 = x_1250;
  }
  let x_1251 : f32 = x_1243;
  SV_Target0.y = x_1251;
  let x_1254 : bool = u_xlatb0.z;
  if (x_1254) {
    let x_1259 : f32 = u_xlat1.z;
    x_1255 = x_1259;
  } else {
    let x_1262 : f32 = u_xlat2.z;
    x_1255 = x_1262;
  }
  let x_1263 : f32 = x_1255;
  SV_Target0.z = x_1263;
  let x_1266 : f32 = u_xlat3.w;
  SV_Target0.w = x_1266;
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

