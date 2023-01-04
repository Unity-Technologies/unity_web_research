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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> u_xlatb4 : vec3<bool>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_702 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_896 : f32;
  var x_908 : f32;
  var x_920 : f32;
  var x_1051 : f32;
  var x_1063 : f32;
  var x_1075 : f32;
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
  let x_763 : vec4<f32> = x_59.x_Grain_Params2;
  let x_767 : vec4<f32> = x_59.x_Grain_Params2;
  let x_769 : vec2<f32> = ((x_760 * vec2<f32>(x_763.x, x_763.y)) + vec2<f32>(x_767.z, x_767.w));
  let x_770 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
  let x_777 : vec4<f32> = u_xlat0;
  let x_779 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_777.x, x_777.y));
  let x_780 : vec3<f32> = vec3<f32>(x_779.x, x_779.y, x_779.z);
  let x_781 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec3<f32> = u_xlat8;
  let x_784 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat4;
  let x_790 : vec3<f32> = clamp(vec3<f32>(x_786.x, x_786.y, x_786.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_791 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_793.x, x_793.y, x_793.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_800 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_800);
  let x_804 : f32 = x_59.x_Grain_Params1.x;
  let x_805 : f32 = u_xlat21;
  u_xlat21 = ((x_804 * -(x_805)) + 1.0f);
  let x_809 : vec4<f32> = u_xlat0;
  let x_811 : vec3<f32> = u_xlat8;
  let x_812 : vec3<f32> = (vec3<f32>(x_809.x, x_809.y, x_809.z) * x_811);
  let x_813 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec4<f32> = u_xlat0;
  let x_818 : f32 = x_59.x_Grain_Params1.y;
  let x_820 : f32 = x_59.x_Grain_Params1.y;
  let x_822 : f32 = x_59.x_Grain_Params1.y;
  let x_824 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(x_818, x_820, x_822));
  let x_825 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat0;
  let x_829 : f32 = u_xlat21;
  let x_832 : vec3<f32> = u_xlat8;
  let x_833 : vec3<f32> = ((vec3<f32>(x_827.x, x_827.y, x_827.z) * vec3<f32>(x_829, x_829, x_829)) + x_832);
  let x_834 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat3;
  u_xlat3 = x_836;
  let x_837 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_837, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_841 : vec4<f32> = u_xlat3;
  let x_845 : vec3<f32> = (vec3<f32>(x_841.z, x_841.x, x_841.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_846 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat3;
  let x_851 : vec3<f32> = max(vec3<f32>(x_848.z, x_848.x, x_848.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_852 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat1;
  let x_856 : vec3<f32> = log2(vec3<f32>(x_854.x, x_854.y, x_854.z));
  let x_857 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat1;
  let x_863 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_864 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec4<f32> = u_xlat1;
  let x_868 : vec3<f32> = exp2(vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat1;
  let x_878 : vec3<f32> = ((vec3<f32>(x_871.x, x_871.y, x_871.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_879 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_886 : vec4<f32> = u_xlat3;
  let x_889 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_886.z, x_886.x, x_886.y, x_886.z));
  u_xlatb4 = vec3<bool>(x_889.x, x_889.y, x_889.z);
  let x_893 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_893;
  let x_895 : bool = u_xlatb4.x;
  if (x_895) {
    let x_900 : f32 = u_xlat0.x;
    x_896 = x_900;
  } else {
    let x_903 : f32 = u_xlat1.x;
    x_896 = x_903;
  }
  let x_904 : f32 = x_896;
  hlslcc_movcTemp.x = x_904;
  let x_907 : bool = u_xlatb4.y;
  if (x_907) {
    let x_912 : f32 = u_xlat0.y;
    x_908 = x_912;
  } else {
    let x_915 : f32 = u_xlat1.y;
    x_908 = x_915;
  }
  let x_916 : f32 = x_908;
  hlslcc_movcTemp.y = x_916;
  let x_919 : bool = u_xlatb4.z;
  if (x_919) {
    let x_924 : f32 = u_xlat0.z;
    x_920 = x_924;
  } else {
    let x_927 : f32 = u_xlat1.z;
    x_920 = x_927;
  }
  let x_928 : f32 = x_920;
  hlslcc_movcTemp.z = x_928;
  let x_930 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_930;
  let x_931 : vec4<f32> = u_xlat0;
  let x_935 : vec3<f32> = x_59.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_931.x, x_931.y, x_931.z) * vec3<f32>(x_935.z, x_935.z, x_935.z));
  let x_939 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_939);
  let x_943 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_945 : vec2<f32> = (vec2<f32>(x_943.x, x_943.y) * vec2<f32>(0.5f, 0.5f));
  let x_946 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
  let x_948 : vec3<f32> = u_xlat7;
  let x_951 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_954 : vec4<f32> = u_xlat1;
  let x_956 : vec2<f32> = ((vec2<f32>(x_948.y, x_948.z) * vec2<f32>(x_951.x, x_951.y)) + vec2<f32>(x_954.x, x_954.y));
  let x_957 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_957.x, x_956.x, x_956.y, x_957.w);
  let x_960 : f32 = u_xlat7.x;
  let x_962 : f32 = x_59.x_Lut2D_Params.y;
  let x_965 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_960 * x_962) + x_965);
  let x_973 : vec4<f32> = u_xlat1;
  let x_975 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_973.x, x_973.z));
  let x_976 : vec3<f32> = vec3<f32>(x_975.x, x_975.y, x_975.z);
  let x_977 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_980 : f32 = x_59.x_Lut2D_Params.y;
  u_xlat16.x = x_980;
  let x_983 : vec2<f32> = u_xlat16;
  let x_984 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_983 + vec2<f32>(x_984.x, x_984.z));
  let x_990 : vec2<f32> = u_xlat14;
  let x_991 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_990);
  let x_992 : vec3<f32> = vec3<f32>(x_991.x, x_991.y, x_991.z);
  let x_993 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_996 : f32 = u_xlat0.x;
  let x_998 : f32 = x_59.x_Lut2D_Params.z;
  let x_1001 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_996 * x_998) + -(x_1001));
  let x_1005 : vec4<f32> = u_xlat4;
  let x_1008 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1005.x, x_1005.y, x_1005.z)) + vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat0;
  let x_1013 : vec3<f32> = u_xlat7;
  let x_1015 : vec4<f32> = u_xlat4;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1011.x, x_1011.x, x_1011.x) * x_1013) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat0;
  let x_1023 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1024 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1026.x, x_1026.y, x_1026.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1030 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1030 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1033 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1033), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1036 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1036);
  let x_1038 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1038 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1041 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1041);
  let x_1045 : vec4<f32> = u_xlat0;
  let x_1047 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1045.x));
  u_xlatb0 = vec3<bool>(x_1047.x, x_1047.y, x_1047.z);
  let x_1050 : bool = u_xlatb0.x;
  if (x_1050) {
    let x_1055 : f32 = u_xlat1.x;
    x_1051 = x_1055;
  } else {
    let x_1058 : f32 = u_xlat2.x;
    x_1051 = x_1058;
  }
  let x_1059 : f32 = x_1051;
  u_xlat3.x = x_1059;
  let x_1062 : bool = u_xlatb0.y;
  if (x_1062) {
    let x_1067 : f32 = u_xlat1.y;
    x_1063 = x_1067;
  } else {
    let x_1070 : f32 = u_xlat2.y;
    x_1063 = x_1070;
  }
  let x_1071 : f32 = x_1063;
  u_xlat3.y = x_1071;
  let x_1074 : bool = u_xlatb0.z;
  if (x_1074) {
    let x_1079 : f32 = u_xlat1.z;
    x_1075 = x_1079;
  } else {
    let x_1082 : f32 = u_xlat2.z;
    x_1075 = x_1082;
  }
  let x_1083 : f32 = x_1075;
  u_xlat3.z = x_1083;
  let x_1086 : f32 = x_59.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1086);
  let x_1090 : bool = u_xlatb0.x;
  if (x_1090) {
    let x_1093 : vec4<f32> = u_xlat3;
    let x_1094 : vec3<f32> = vec3<f32>(x_1093.x, x_1093.y, x_1093.z);
    let x_1095 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
    let x_1097 : vec4<f32> = u_xlat0;
    let x_1101 : vec3<f32> = clamp(vec3<f32>(x_1097.x, x_1097.y, x_1097.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1102 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
    let x_1104 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1104.x, x_1104.y, x_1104.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1110 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1110;
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

