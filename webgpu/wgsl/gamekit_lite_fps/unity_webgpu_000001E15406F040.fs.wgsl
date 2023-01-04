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
  var x_563 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_757 : f32;
  var x_769 : f32;
  var x_781 : f32;
  var x_912 : f32;
  var x_924 : f32;
  var x_936 : f32;
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
  u_xlat0 = (vec4<f32>(x_240.x, x_240.y, x_240.x, x_240.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_246 : f32 = x_59.x_Bloom_Settings.x;
  u_xlat2.x = (x_246 * 0.5f);
  let x_249 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = u_xlat2;
  let x_254 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_249.x, x_249.y, x_249.z, x_249.y) * vec4<f32>(x_251.x, x_251.x, x_251.x, x_251.x)) + vec4<f32>(x_254.x, x_254.y, x_254.x, x_254.y));
  let x_257 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_257, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat3 = (x_261 * vec4<f32>(x_263, x_263, x_263, x_263));
  let x_271 : vec4<f32> = u_xlat3;
  let x_273 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_271.x, x_271.y));
  u_xlat4 = x_273;
  let x_277 : vec4<f32> = u_xlat3;
  let x_279 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_277.z, x_277.w));
  u_xlat3 = x_279;
  let x_280 : vec4<f32> = u_xlat3;
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_280 + x_281);
  let x_283 : vec4<f32> = u_xlat0;
  let x_285 : vec3<f32> = u_xlat2;
  let x_288 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_283.x, x_283.w, x_283.z, x_283.w) * vec4<f32>(x_285.x, x_285.x, x_285.x, x_285.x)) + vec4<f32>(x_288.x, x_288.y, x_288.x, x_288.y));
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_291, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_295 : vec4<f32> = u_xlat0;
  let x_297 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat0 = (x_295 * vec4<f32>(x_297, x_297, x_297, x_297));
  let x_303 : vec4<f32> = u_xlat0;
  let x_305 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_303.x, x_303.y));
  u_xlat4 = x_305;
  let x_306 : vec4<f32> = u_xlat3;
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_306 + x_307);
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_312.z, x_312.w));
  u_xlat0 = x_314;
  let x_315 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_315 + x_316);
  let x_318 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = x_59.x_Bloom_Settings;
  u_xlat0 = (x_318 * vec4<f32>(x_321.y, x_321.y, x_321.y, x_321.y));
  let x_324 : vec2<f32> = vs_TEXCOORD0;
  let x_327 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_331 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_333 : vec2<f32> = ((x_324 * vec2<f32>(x_327.x, x_327.y)) + vec2<f32>(x_331.z, x_331.w));
  let x_334 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_333.x, x_333.y, x_334.z);
  let x_341 : vec3<f32> = u_xlat2;
  let x_343 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_341.x, x_341.y));
  let x_344 : vec3<f32> = vec3<f32>(x_343.x, x_343.y, x_343.z);
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat0;
  let x_351 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat3;
  let x_357 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_359 : vec3<f32> = (vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_357.z, x_357.z, x_357.z));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_362 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_365 : vec4<f32> = u_xlat0;
  let x_369 : vec3<f32> = x_59.x_Bloom_Color;
  let x_370 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) * x_369);
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : f32 = u_xlat0.w;
  u_xlat5.w = (x_374 * 0.25f);
  let x_377 : vec4<f32> = u_xlat1;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_377 + x_378);
  let x_380 : vec4<f32> = u_xlat4;
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  u_xlat1.w = 0.0f;
  let x_388 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_388 + x_389);
  let x_395 : f32 = x_59.x_Vignette_Mode;
  u_xlatb1 = (x_395 < 0.5f);
  let x_397 : bool = u_xlatb1;
  if (x_397) {
    let x_400 : vec2<f32> = vs_TEXCOORD0;
    let x_404 : vec2<f32> = x_59.x_Vignette_Center;
    let x_406 : vec2<f32> = (x_400 + -(x_404));
    let x_407 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
    let x_409 : vec4<f32> = u_xlat1;
    let x_414 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_416 : vec2<f32> = (abs(vec2<f32>(x_409.y, x_409.x)) * vec2<f32>(x_414.x, x_414.x));
    let x_417 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_417.x, x_416.x, x_416.y, x_417.w);
    let x_421 : f32 = x_59.x_ScreenParams.x;
    let x_423 : f32 = x_59.x_ScreenParams.y;
    u_xlat22 = (x_421 / x_423);
    let x_425 : f32 = u_xlat22;
    u_xlat22 = (x_425 + -1.0f);
    let x_428 : f32 = x_59.x_Vignette_Settings.w;
    let x_429 : f32 = u_xlat22;
    u_xlat22 = ((x_428 * x_429) + 1.0f);
    let x_432 : f32 = u_xlat22;
    let x_434 : f32 = u_xlat1.z;
    u_xlat1.x = (x_432 * x_434);
    let x_437 : vec4<f32> = u_xlat1;
    let x_438 : vec2<f32> = vec2<f32>(x_437.x, x_437.y);
    let x_439 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
    let x_441 : vec4<f32> = u_xlat1;
    let x_445 : vec2<f32> = clamp(vec2<f32>(x_441.x, x_441.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_446 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
    let x_448 : vec4<f32> = u_xlat1;
    let x_450 : vec2<f32> = log2(vec2<f32>(x_448.x, x_448.y));
    let x_451 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
    let x_453 : vec4<f32> = u_xlat1;
    let x_456 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_458 : vec2<f32> = (vec2<f32>(x_453.x, x_453.y) * vec2<f32>(x_456.z, x_456.z));
    let x_459 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
    let x_461 : vec4<f32> = u_xlat1;
    let x_463 : vec2<f32> = exp2(vec2<f32>(x_461.x, x_461.y));
    let x_464 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
    let x_466 : vec4<f32> = u_xlat1;
    let x_468 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_466.x, x_466.y), vec2<f32>(x_468.x, x_468.y));
    let x_473 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_473) + 1.0f);
    let x_478 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_478, 0.0f);
    let x_482 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_482);
    let x_486 : f32 = u_xlat1.x;
    let x_488 : f32 = x_59.x_Vignette_Settings.y;
    u_xlat1.x = (x_486 * x_488);
    let x_492 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_492);
    let x_497 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = (-(x_497) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_501 : vec4<f32> = u_xlat1;
    let x_503 : vec3<f32> = u_xlat8;
    let x_506 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_501.x, x_501.x, x_501.x) * x_503) + x_506);
    let x_508 : vec4<f32> = u_xlat0;
    let x_510 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_508.x, x_508.y, x_508.z) * x_510);
    let x_513 : f32 = u_xlat0.w;
    u_xlat2.x = (x_513 + -1.0f);
    let x_517 : f32 = u_xlat1.x;
    let x_519 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_517 * x_519) + 1.0f);
  } else {
    let x_529 : vec2<f32> = vs_TEXCOORD0;
    let x_530 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_529);
    u_xlat1.x = x_530.w;
    let x_534 : f32 = u_xlat1.x;
    u_xlat2.x = (x_534 * 0.077399381f);
    let x_540 : f32 = u_xlat1.x;
    u_xlat9 = (x_540 + 0.055f);
    let x_543 : f32 = u_xlat9;
    u_xlat9 = (x_543 * 0.947867334f);
    let x_546 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_546), 1.1920929e-07f);
    let x_550 : f32 = u_xlat9;
    u_xlat9 = log2(x_550);
    let x_552 : f32 = u_xlat9;
    u_xlat9 = (x_552 * 2.400000095f);
    let x_555 : f32 = u_xlat9;
    u_xlat9 = exp2(x_555);
    let x_559 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_559);
    let x_561 : bool = u_xlatb1;
    if (x_561) {
      let x_567 : f32 = u_xlat2.x;
      x_563 = x_567;
    } else {
      let x_569 : f32 = u_xlat9;
      x_563 = x_569;
    }
    let x_570 : f32 = x_563;
    u_xlat1.x = x_570;
    let x_573 : vec3<f32> = x_59.x_Vignette_Color;
    let x_575 : vec3<f32> = (-(x_573) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_576 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
    let x_578 : vec4<f32> = u_xlat1;
    let x_580 : vec4<f32> = u_xlat4;
    let x_584 : vec3<f32> = x_59.x_Vignette_Color;
    let x_585 : vec3<f32> = ((vec3<f32>(x_578.x, x_578.x, x_578.x) * vec3<f32>(x_580.x, x_580.y, x_580.z)) + x_584);
    let x_586 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
    let x_588 : vec4<f32> = u_xlat0;
    let x_590 : vec4<f32> = u_xlat4;
    let x_593 : vec4<f32> = u_xlat0;
    let x_596 : vec3<f32> = ((vec3<f32>(x_588.x, x_588.y, x_588.z) * vec3<f32>(x_590.x, x_590.y, x_590.z)) + -(vec3<f32>(x_593.x, x_593.y, x_593.z)));
    let x_597 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
    let x_601 : f32 = x_59.x_Vignette_Opacity;
    let x_603 : vec4<f32> = u_xlat4;
    let x_606 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_601, x_601, x_601) * vec3<f32>(x_603.x, x_603.y, x_603.z)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
    let x_610 : f32 = u_xlat0.w;
    u_xlat0.x = (x_610 + -1.0f);
    let x_614 : f32 = u_xlat1.x;
    let x_616 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_614 * x_616) + 1.0f);
  }
  let x_621 : vec2<f32> = vs_TEXCOORD1;
  let x_624 : vec4<f32> = x_59.x_Grain_Params2;
  let x_628 : vec4<f32> = x_59.x_Grain_Params2;
  let x_630 : vec2<f32> = ((x_621 * vec2<f32>(x_624.x, x_624.y)) + vec2<f32>(x_628.z, x_628.w));
  let x_631 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
  let x_638 : vec4<f32> = u_xlat0;
  let x_640 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_638.x, x_638.y));
  let x_641 : vec3<f32> = vec3<f32>(x_640.x, x_640.y, x_640.z);
  let x_642 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : vec3<f32> = u_xlat8;
  let x_645 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat4;
  let x_651 : vec3<f32> = clamp(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_652 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_654.x, x_654.y, x_654.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_661 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_661);
  let x_665 : f32 = x_59.x_Grain_Params1.x;
  let x_666 : f32 = u_xlat21;
  u_xlat21 = ((x_665 * -(x_666)) + 1.0f);
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : vec3<f32> = u_xlat8;
  let x_673 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * x_672);
  let x_674 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat0;
  let x_679 : f32 = x_59.x_Grain_Params1.y;
  let x_681 : f32 = x_59.x_Grain_Params1.y;
  let x_683 : f32 = x_59.x_Grain_Params1.y;
  let x_685 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_679, x_681, x_683));
  let x_686 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec4<f32> = u_xlat0;
  let x_690 : f32 = u_xlat21;
  let x_693 : vec3<f32> = u_xlat8;
  let x_694 : vec3<f32> = ((vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(x_690, x_690, x_690)) + x_693);
  let x_695 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = x_697;
  let x_698 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_698, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_702 : vec4<f32> = u_xlat3;
  let x_706 : vec3<f32> = (vec3<f32>(x_702.z, x_702.x, x_702.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_707 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat3;
  let x_712 : vec3<f32> = max(vec3<f32>(x_709.z, x_709.x, x_709.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_713 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat1;
  let x_717 : vec3<f32> = log2(vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat1;
  let x_724 : vec3<f32> = (vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_725 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec4<f32> = u_xlat1;
  let x_729 : vec3<f32> = exp2(vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat1;
  let x_739 : vec3<f32> = ((vec3<f32>(x_732.x, x_732.y, x_732.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_740 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_747 : vec4<f32> = u_xlat3;
  let x_750 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_747.z, x_747.x, x_747.y, x_747.z));
  u_xlatb4 = vec3<bool>(x_750.x, x_750.y, x_750.z);
  let x_754 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_754;
  let x_756 : bool = u_xlatb4.x;
  if (x_756) {
    let x_761 : f32 = u_xlat0.x;
    x_757 = x_761;
  } else {
    let x_764 : f32 = u_xlat1.x;
    x_757 = x_764;
  }
  let x_765 : f32 = x_757;
  hlslcc_movcTemp.x = x_765;
  let x_768 : bool = u_xlatb4.y;
  if (x_768) {
    let x_773 : f32 = u_xlat0.y;
    x_769 = x_773;
  } else {
    let x_776 : f32 = u_xlat1.y;
    x_769 = x_776;
  }
  let x_777 : f32 = x_769;
  hlslcc_movcTemp.y = x_777;
  let x_780 : bool = u_xlatb4.z;
  if (x_780) {
    let x_785 : f32 = u_xlat0.z;
    x_781 = x_785;
  } else {
    let x_788 : f32 = u_xlat1.z;
    x_781 = x_788;
  }
  let x_789 : f32 = x_781;
  hlslcc_movcTemp.z = x_789;
  let x_791 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_791;
  let x_792 : vec4<f32> = u_xlat0;
  let x_796 : vec3<f32> = x_59.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_792.x, x_792.y, x_792.z) * vec3<f32>(x_796.z, x_796.z, x_796.z));
  let x_800 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_800);
  let x_804 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_806 : vec2<f32> = (vec2<f32>(x_804.x, x_804.y) * vec2<f32>(0.5f, 0.5f));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
  let x_809 : vec3<f32> = u_xlat7;
  let x_812 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec2<f32> = ((vec2<f32>(x_809.y, x_809.z) * vec2<f32>(x_812.x, x_812.y)) + vec2<f32>(x_815.x, x_815.y));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_817.x, x_817.y, x_818.w);
  let x_821 : f32 = u_xlat7.x;
  let x_823 : f32 = x_59.x_Lut2D_Params.y;
  let x_826 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_821 * x_823) + x_826);
  let x_834 : vec4<f32> = u_xlat1;
  let x_836 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_834.x, x_834.z));
  let x_837 : vec3<f32> = vec3<f32>(x_836.x, x_836.y, x_836.z);
  let x_838 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_841 : f32 = x_59.x_Lut2D_Params.y;
  u_xlat16.x = x_841;
  let x_844 : vec2<f32> = u_xlat16;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_844 + vec2<f32>(x_845.x, x_845.z));
  let x_851 : vec2<f32> = u_xlat14;
  let x_852 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_851);
  let x_853 : vec3<f32> = vec3<f32>(x_852.x, x_852.y, x_852.z);
  let x_854 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_857 : f32 = u_xlat0.x;
  let x_859 : f32 = x_59.x_Lut2D_Params.z;
  let x_862 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_857 * x_859) + -(x_862));
  let x_866 : vec4<f32> = u_xlat4;
  let x_869 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_866.x, x_866.y, x_866.z)) + vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec4<f32> = u_xlat0;
  let x_874 : vec3<f32> = u_xlat7;
  let x_876 : vec4<f32> = u_xlat4;
  let x_878 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * x_874) + vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_879 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_881 : vec4<f32> = u_xlat0;
  let x_884 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_885 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_887.x, x_887.y, x_887.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_891 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_891 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_894 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_894), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_897 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_897);
  let x_899 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_899 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_902 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_902);
  let x_906 : vec4<f32> = u_xlat0;
  let x_908 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_906.x, x_906.y, x_906.z, x_906.x));
  u_xlatb0 = vec3<bool>(x_908.x, x_908.y, x_908.z);
  let x_911 : bool = u_xlatb0.x;
  if (x_911) {
    let x_916 : f32 = u_xlat1.x;
    x_912 = x_916;
  } else {
    let x_919 : f32 = u_xlat2.x;
    x_912 = x_919;
  }
  let x_920 : f32 = x_912;
  u_xlat3.x = x_920;
  let x_923 : bool = u_xlatb0.y;
  if (x_923) {
    let x_928 : f32 = u_xlat1.y;
    x_924 = x_928;
  } else {
    let x_931 : f32 = u_xlat2.y;
    x_924 = x_931;
  }
  let x_932 : f32 = x_924;
  u_xlat3.y = x_932;
  let x_935 : bool = u_xlatb0.z;
  if (x_935) {
    let x_940 : f32 = u_xlat1.z;
    x_936 = x_940;
  } else {
    let x_943 : f32 = u_xlat2.z;
    x_936 = x_943;
  }
  let x_944 : f32 = x_936;
  u_xlat3.z = x_944;
  let x_947 : f32 = x_59.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_947);
  let x_951 : bool = u_xlatb0.x;
  if (x_951) {
    let x_954 : vec4<f32> = u_xlat3;
    let x_955 : vec3<f32> = vec3<f32>(x_954.x, x_954.y, x_954.z);
    let x_956 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
    let x_958 : vec4<f32> = u_xlat0;
    let x_962 : vec3<f32> = clamp(vec3<f32>(x_958.x, x_958.y, x_958.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_963 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
    let x_965 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_971 : vec4<f32> = u_xlat3;
  SV_Target0 = x_971;
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

