struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> u_xlat15 : f32;

var<private> u_xlatb4 : vec3<bool>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_698 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_808 : f32;
  var x_820 : f32;
  var x_832 : f32;
  var x_963 : f32;
  var x_975 : f32;
  var x_987 : f32;
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
  let x_107 : i32 = u_xlati21;
  u_xlati21 = min(x_107, 16i);
  let x_110 : i32 = u_xlati21;
  u_xlat1.x = f32(x_110);
  let x_113 : vec3<f32> = u_xlat7;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec2<f32> = (-(vec2<f32>(x_113.x, x_113.y)) / vec2<f32>(x_116.x, x_116.x));
  let x_119 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_118.x, x_118.y, x_119.z);
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
  let x_144 : vec2<f32> = vs_TEXCOORD0;
  let x_145 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_144.x, x_144.y, x_145.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_155 : i32 = u_xlati_loop_1;
    let x_156 : i32 = u_xlati21;
    if ((x_155 < x_156)) {
    } else {
      break;
    }
    let x_160 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_160);
    let x_164 : f32 = u_xlat6.x;
    u_xlat6.x = (x_164 + 0.5f);
    let x_168 : f32 = u_xlat6.x;
    let x_170 : f32 = u_xlat1.x;
    u_xlat2.x = (x_168 / x_170);
    let x_173 : vec3<f32> = u_xlat8;
    let x_174 : vec2<f32> = vec2<f32>(x_173.x, x_173.y);
    let x_175 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
    let x_177 : vec4<f32> = u_xlat6;
    let x_181 : vec2<f32> = clamp(vec2<f32>(x_177.x, x_177.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_182 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
    let x_184 : vec4<f32> = u_xlat6;
    let x_188 : f32 = x_59.x_RenderViewportScaleFactor;
    let x_190 : vec2<f32> = (vec2<f32>(x_184.x, x_184.y) * vec2<f32>(x_188, x_188));
    let x_191 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_190.x, x_190.y, x_191.z, x_191.w);
    let x_198 : vec4<f32> = u_xlat6;
    let x_200 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_198.x, x_198.y), 0.0f);
    u_xlat6 = x_200;
    let x_206 : vec3<f32> = u_xlat2;
    let x_208 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_206.x, x_206.y), 0.0f);
    let x_209 : vec3<f32> = vec3<f32>(x_208.x, x_208.y, x_208.z);
    let x_210 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_212 : vec4<f32> = u_xlat6;
    let x_213 : vec4<f32> = u_xlat3;
    let x_215 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_212 * x_213) + x_215);
    let x_217 : vec4<f32> = u_xlat3;
    let x_218 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_217 + x_218);
    let x_220 : vec3<f32> = u_xlat7;
    let x_222 : vec3<f32> = u_xlat8;
    let x_224 : vec2<f32> = (vec2<f32>(x_220.x, x_220.y) + vec2<f32>(x_222.x, x_222.y));
    let x_225 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_224.x, x_224.y, x_225.z);

    continuing {
      let x_227 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_227 + 1i);
    }
  }
  let x_229 : vec4<f32> = u_xlat4;
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_229 / x_230);
  let x_232 : vec4<f32> = u_xlat0;
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec3<f32> = (vec3<f32>(x_232.x, x_232.x, x_232.x) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
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
  u_xlat4 = (x_486 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_490 : vec4<f32> = u_xlat3;
  let x_493 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_495 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(x_493.z, x_493.z, x_493.z));
  let x_496 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  u_xlat3.w = 0.0f;
  let x_499 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_499 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_502 : vec4<f32> = u_xlat0;
  let x_506 : vec3<f32> = x_59.x_Bloom_Color;
  let x_507 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) * x_506);
  let x_508 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_511 : f32 = u_xlat0.w;
  u_xlat5.w = (x_511 * 0.0625f);
  let x_514 : vec4<f32> = u_xlat1;
  let x_515 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_514 + x_515);
  let x_517 : vec4<f32> = u_xlat3;
  let x_518 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_517 * x_518) + x_520);
  let x_526 : f32 = x_59.x_Vignette_Mode;
  u_xlatb1 = (x_526 < 0.5f);
  let x_528 : bool = u_xlatb1;
  if (x_528) {
    let x_531 : vec2<f32> = vs_TEXCOORD0;
    let x_535 : vec2<f32> = x_59.x_Vignette_Center;
    let x_537 : vec2<f32> = (x_531 + -(x_535));
    let x_538 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
    let x_540 : vec4<f32> = u_xlat1;
    let x_545 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_547 : vec2<f32> = (abs(vec2<f32>(x_540.y, x_540.x)) * vec2<f32>(x_545.x, x_545.x));
    let x_548 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_548.x, x_547.x, x_547.y, x_548.w);
    let x_552 : f32 = x_59.x_ScreenParams.x;
    let x_554 : f32 = x_59.x_ScreenParams.y;
    u_xlat22 = (x_552 / x_554);
    let x_556 : f32 = u_xlat22;
    u_xlat22 = (x_556 + -1.0f);
    let x_559 : f32 = x_59.x_Vignette_Settings.w;
    let x_560 : f32 = u_xlat22;
    u_xlat22 = ((x_559 * x_560) + 1.0f);
    let x_563 : f32 = u_xlat22;
    let x_565 : f32 = u_xlat1.z;
    u_xlat1.x = (x_563 * x_565);
    let x_568 : vec4<f32> = u_xlat1;
    let x_569 : vec2<f32> = vec2<f32>(x_568.x, x_568.y);
    let x_570 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
    let x_572 : vec4<f32> = u_xlat1;
    let x_576 : vec2<f32> = clamp(vec2<f32>(x_572.x, x_572.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_577 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
    let x_579 : vec4<f32> = u_xlat1;
    let x_581 : vec2<f32> = log2(vec2<f32>(x_579.x, x_579.y));
    let x_582 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
    let x_584 : vec4<f32> = u_xlat1;
    let x_587 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_589 : vec2<f32> = (vec2<f32>(x_584.x, x_584.y) * vec2<f32>(x_587.z, x_587.z));
    let x_590 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
    let x_592 : vec4<f32> = u_xlat1;
    let x_594 : vec2<f32> = exp2(vec2<f32>(x_592.x, x_592.y));
    let x_595 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
    let x_597 : vec4<f32> = u_xlat1;
    let x_599 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_597.x, x_597.y), vec2<f32>(x_599.x, x_599.y));
    let x_604 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_604) + 1.0f);
    let x_609 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_609, 0.0f);
    let x_613 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_613);
    let x_617 : f32 = u_xlat1.x;
    let x_619 : f32 = x_59.x_Vignette_Settings.y;
    u_xlat1.x = (x_617 * x_619);
    let x_623 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_623);
    let x_628 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = (-(x_628) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_632 : vec4<f32> = u_xlat1;
    let x_634 : vec3<f32> = u_xlat8;
    let x_637 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_632.x, x_632.x, x_632.x) * x_634) + x_637);
    let x_639 : vec4<f32> = u_xlat0;
    let x_641 : vec3<f32> = u_xlat8;
    let x_642 : vec3<f32> = (vec3<f32>(x_639.x, x_639.y, x_639.z) * x_641);
    let x_643 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
    let x_646 : f32 = u_xlat0.w;
    u_xlat8.x = (x_646 + -1.0f);
    let x_650 : f32 = u_xlat1.x;
    let x_652 : f32 = u_xlat8.x;
    u_xlat3.w = ((x_650 * x_652) + 1.0f);
  } else {
    let x_662 : vec2<f32> = vs_TEXCOORD0;
    let x_663 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_662);
    u_xlat1.x = x_663.w;
    let x_667 : f32 = u_xlat1.x;
    u_xlat1.z = (x_667 + 0.055f);
    let x_671 : vec4<f32> = u_xlat1;
    let x_676 : vec2<f32> = (vec2<f32>(x_671.x, x_671.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_677 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_676.x, x_676.y, x_677.z);
    let x_681 : f32 = u_xlat8.y;
    u_xlat15 = max(abs(x_681), 1.1920929e-07f);
    let x_685 : f32 = u_xlat15;
    u_xlat15 = log2(x_685);
    let x_687 : f32 = u_xlat15;
    u_xlat15 = (x_687 * 2.400000095f);
    let x_690 : f32 = u_xlat15;
    u_xlat15 = exp2(x_690);
    let x_694 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_694);
    let x_696 : bool = u_xlatb1;
    if (x_696) {
      let x_702 : f32 = u_xlat8.x;
      x_698 = x_702;
    } else {
      let x_704 : f32 = u_xlat15;
      x_698 = x_704;
    }
    let x_705 : f32 = x_698;
    u_xlat1.x = x_705;
    let x_708 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = (-(x_708) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_711 : vec4<f32> = u_xlat1;
    let x_713 : vec3<f32> = u_xlat8;
    let x_716 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_711.x, x_711.x, x_711.x) * x_713) + x_716);
    let x_718 : vec4<f32> = u_xlat0;
    let x_720 : vec3<f32> = u_xlat8;
    let x_722 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_718.x, x_718.y, x_718.z) * x_720) + -(vec3<f32>(x_722.x, x_722.y, x_722.z)));
    let x_728 : f32 = x_59.x_Vignette_Opacity;
    let x_730 : vec3<f32> = u_xlat8;
    let x_732 : vec4<f32> = u_xlat0;
    let x_734 : vec3<f32> = ((vec3<f32>(x_728, x_728, x_728) * x_730) + vec3<f32>(x_732.x, x_732.y, x_732.z));
    let x_735 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
    let x_738 : f32 = u_xlat0.w;
    u_xlat0.x = (x_738 + -1.0f);
    let x_742 : f32 = u_xlat1.x;
    let x_744 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_742 * x_744) + 1.0f);
  }
  let x_748 : vec4<f32> = u_xlat3;
  u_xlat3 = x_748;
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_749, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_753 : vec4<f32> = u_xlat3;
  let x_757 : vec3<f32> = (vec3<f32>(x_753.z, x_753.x, x_753.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_758 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat3;
  let x_763 : vec3<f32> = max(vec3<f32>(x_760.z, x_760.x, x_760.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_764 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat1;
  let x_768 : vec3<f32> = log2(vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat1;
  let x_775 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat1;
  let x_780 : vec3<f32> = exp2(vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat1;
  let x_790 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_791 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_798 : vec4<f32> = u_xlat3;
  let x_801 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_798.z, x_798.x, x_798.y, x_798.z));
  u_xlatb4 = vec3<bool>(x_801.x, x_801.y, x_801.z);
  let x_805 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_805;
  let x_807 : bool = u_xlatb4.x;
  if (x_807) {
    let x_812 : f32 = u_xlat0.x;
    x_808 = x_812;
  } else {
    let x_815 : f32 = u_xlat1.x;
    x_808 = x_815;
  }
  let x_816 : f32 = x_808;
  hlslcc_movcTemp.x = x_816;
  let x_819 : bool = u_xlatb4.y;
  if (x_819) {
    let x_824 : f32 = u_xlat0.y;
    x_820 = x_824;
  } else {
    let x_827 : f32 = u_xlat1.y;
    x_820 = x_827;
  }
  let x_828 : f32 = x_820;
  hlslcc_movcTemp.y = x_828;
  let x_831 : bool = u_xlatb4.z;
  if (x_831) {
    let x_836 : f32 = u_xlat0.z;
    x_832 = x_836;
  } else {
    let x_839 : f32 = u_xlat1.z;
    x_832 = x_839;
  }
  let x_840 : f32 = x_832;
  hlslcc_movcTemp.z = x_840;
  let x_842 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_842;
  let x_843 : vec4<f32> = u_xlat0;
  let x_847 : vec3<f32> = x_59.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_843.x, x_843.y, x_843.z) * vec3<f32>(x_847.z, x_847.z, x_847.z));
  let x_851 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_851);
  let x_855 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_857 : vec2<f32> = (vec2<f32>(x_855.x, x_855.y) * vec2<f32>(0.5f, 0.5f));
  let x_858 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
  let x_860 : vec3<f32> = u_xlat7;
  let x_863 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_866 : vec4<f32> = u_xlat1;
  let x_868 : vec2<f32> = ((vec2<f32>(x_860.y, x_860.z) * vec2<f32>(x_863.x, x_863.y)) + vec2<f32>(x_866.x, x_866.y));
  let x_869 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_869.x, x_868.x, x_868.y, x_869.w);
  let x_872 : f32 = u_xlat7.x;
  let x_874 : f32 = x_59.x_Lut2D_Params.y;
  let x_877 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_872 * x_874) + x_877);
  let x_885 : vec4<f32> = u_xlat1;
  let x_887 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_885.x, x_885.z));
  let x_888 : vec3<f32> = vec3<f32>(x_887.x, x_887.y, x_887.z);
  let x_889 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_892 : f32 = x_59.x_Lut2D_Params.y;
  u_xlat16.x = x_892;
  let x_895 : vec2<f32> = u_xlat16;
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_895 + vec2<f32>(x_896.x, x_896.z));
  let x_902 : vec2<f32> = u_xlat14;
  let x_903 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_902);
  let x_904 : vec3<f32> = vec3<f32>(x_903.x, x_903.y, x_903.z);
  let x_905 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_908 : f32 = u_xlat0.x;
  let x_910 : f32 = x_59.x_Lut2D_Params.z;
  let x_913 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_908 * x_910) + -(x_913));
  let x_917 : vec4<f32> = u_xlat4;
  let x_920 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_917.x, x_917.y, x_917.z)) + vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : vec4<f32> = u_xlat0;
  let x_925 : vec3<f32> = u_xlat7;
  let x_927 : vec4<f32> = u_xlat4;
  let x_929 : vec3<f32> = ((vec3<f32>(x_923.x, x_923.x, x_923.x) * x_925) + vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat0;
  let x_935 : vec3<f32> = (vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_936 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_938.x, x_938.y, x_938.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_942 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_942 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_945 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_945), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_948 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_948);
  let x_950 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_950 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_953 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_953);
  let x_957 : vec4<f32> = u_xlat0;
  let x_959 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_957.x, x_957.y, x_957.z, x_957.x));
  u_xlatb0 = vec3<bool>(x_959.x, x_959.y, x_959.z);
  let x_962 : bool = u_xlatb0.x;
  if (x_962) {
    let x_967 : f32 = u_xlat1.x;
    x_963 = x_967;
  } else {
    let x_970 : f32 = u_xlat2.x;
    x_963 = x_970;
  }
  let x_971 : f32 = x_963;
  u_xlat3.x = x_971;
  let x_974 : bool = u_xlatb0.y;
  if (x_974) {
    let x_979 : f32 = u_xlat1.y;
    x_975 = x_979;
  } else {
    let x_982 : f32 = u_xlat2.y;
    x_975 = x_982;
  }
  let x_983 : f32 = x_975;
  u_xlat3.y = x_983;
  let x_986 : bool = u_xlatb0.z;
  if (x_986) {
    let x_991 : f32 = u_xlat1.z;
    x_987 = x_991;
  } else {
    let x_994 : f32 = u_xlat2.z;
    x_987 = x_994;
  }
  let x_995 : f32 = x_987;
  u_xlat3.z = x_995;
  let x_999 : f32 = x_59.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_999);
  let x_1003 : bool = u_xlatb0.x;
  if (x_1003) {
    let x_1006 : vec4<f32> = u_xlat3;
    let x_1007 : vec3<f32> = vec3<f32>(x_1006.x, x_1006.y, x_1006.z);
    let x_1008 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
    let x_1010 : vec4<f32> = u_xlat0;
    let x_1014 : vec3<f32> = clamp(vec3<f32>(x_1010.x, x_1010.y, x_1010.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1015 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
    let x_1017 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1027 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1027;
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

