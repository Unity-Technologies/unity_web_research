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
  var x_563 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_756 : f32;
  var x_768 : f32;
  var x_780 : f32;
  var x_911 : f32;
  var x_923 : f32;
  var x_935 : f32;
  var x_1020 : f32;
  var x_1032 : f32;
  var x_1044 : f32;
  var x_1091 : f32;
  var x_1104 : f32;
  var x_1116 : f32;
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
  let x_623 : vec4<f32> = x_59.x_Grain_Params2;
  let x_627 : vec4<f32> = x_59.x_Grain_Params2;
  let x_629 : vec2<f32> = ((x_621 * vec2<f32>(x_623.x, x_623.y)) + vec2<f32>(x_627.z, x_627.w));
  let x_630 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
  let x_637 : vec4<f32> = u_xlat0;
  let x_639 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_637.x, x_637.y));
  let x_640 : vec3<f32> = vec3<f32>(x_639.x, x_639.y, x_639.z);
  let x_641 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec3<f32> = u_xlat8;
  let x_644 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat4;
  let x_650 : vec3<f32> = clamp(vec3<f32>(x_646.x, x_646.y, x_646.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_660 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_660);
  let x_664 : f32 = x_59.x_Grain_Params1.x;
  let x_665 : f32 = u_xlat21;
  u_xlat21 = ((x_664 * -(x_665)) + 1.0f);
  let x_669 : vec4<f32> = u_xlat0;
  let x_671 : vec3<f32> = u_xlat8;
  let x_672 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) * x_671);
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat0;
  let x_678 : f32 = x_59.x_Grain_Params1.y;
  let x_680 : f32 = x_59.x_Grain_Params1.y;
  let x_682 : f32 = x_59.x_Grain_Params1.y;
  let x_684 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_678, x_680, x_682));
  let x_685 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat0;
  let x_689 : f32 = u_xlat21;
  let x_692 : vec3<f32> = u_xlat8;
  let x_693 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_689, x_689, x_689)) + x_692);
  let x_694 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat3;
  u_xlat3 = x_696;
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_697, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_701 : vec4<f32> = u_xlat3;
  let x_705 : vec3<f32> = (vec3<f32>(x_701.z, x_701.x, x_701.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat3;
  let x_711 : vec3<f32> = max(vec3<f32>(x_708.z, x_708.x, x_708.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat1;
  let x_716 : vec3<f32> = log2(vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat1;
  let x_723 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_724 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : vec3<f32> = exp2(vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : vec4<f32> = u_xlat1;
  let x_738 : vec3<f32> = ((vec3<f32>(x_731.x, x_731.y, x_731.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_739 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_746 : vec4<f32> = u_xlat3;
  let x_749 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_746.z, x_746.x, x_746.y, x_746.z));
  u_xlatb3 = vec3<bool>(x_749.x, x_749.y, x_749.z);
  let x_753 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_753;
  let x_755 : bool = u_xlatb3.x;
  if (x_755) {
    let x_760 : f32 = u_xlat0.x;
    x_756 = x_760;
  } else {
    let x_763 : f32 = u_xlat1.x;
    x_756 = x_763;
  }
  let x_764 : f32 = x_756;
  hlslcc_movcTemp.x = x_764;
  let x_767 : bool = u_xlatb3.y;
  if (x_767) {
    let x_772 : f32 = u_xlat0.y;
    x_768 = x_772;
  } else {
    let x_775 : f32 = u_xlat1.y;
    x_768 = x_775;
  }
  let x_776 : f32 = x_768;
  hlslcc_movcTemp.y = x_776;
  let x_779 : bool = u_xlatb3.z;
  if (x_779) {
    let x_784 : f32 = u_xlat0.z;
    x_780 = x_784;
  } else {
    let x_787 : f32 = u_xlat1.z;
    x_780 = x_787;
  }
  let x_788 : f32 = x_780;
  hlslcc_movcTemp.z = x_788;
  let x_790 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_790;
  let x_791 : vec4<f32> = u_xlat0;
  let x_795 : vec3<f32> = x_59.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_795.z, x_795.z, x_795.z));
  let x_799 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_799);
  let x_803 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_805 : vec2<f32> = (vec2<f32>(x_803.x, x_803.y) * vec2<f32>(0.5f, 0.5f));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
  let x_808 : vec3<f32> = u_xlat7;
  let x_811 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec2<f32> = ((vec2<f32>(x_808.y, x_808.z) * vec2<f32>(x_811.x, x_811.y)) + vec2<f32>(x_814.x, x_814.y));
  let x_817 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_816.x, x_816.y, x_817.w);
  let x_820 : f32 = u_xlat7.x;
  let x_822 : f32 = x_59.x_Lut2D_Params.y;
  let x_825 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_820 * x_822) + x_825);
  let x_833 : vec4<f32> = u_xlat1;
  let x_835 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_833.x, x_833.z));
  let x_836 : vec3<f32> = vec3<f32>(x_835.x, x_835.y, x_835.z);
  let x_837 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_840 : f32 = x_59.x_Lut2D_Params.y;
  u_xlat16.x = x_840;
  let x_843 : vec2<f32> = u_xlat16;
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_843 + vec2<f32>(x_844.x, x_844.z));
  let x_850 : vec2<f32> = u_xlat14;
  let x_851 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_850);
  let x_852 : vec3<f32> = vec3<f32>(x_851.x, x_851.y, x_851.z);
  let x_853 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_856 : f32 = u_xlat0.x;
  let x_858 : f32 = x_59.x_Lut2D_Params.z;
  let x_861 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_856 * x_858) + -(x_861));
  let x_865 : vec4<f32> = u_xlat3;
  let x_868 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_865.x, x_865.y, x_865.z)) + vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec4<f32> = u_xlat0;
  let x_873 : vec3<f32> = u_xlat7;
  let x_875 : vec4<f32> = u_xlat3;
  let x_877 : vec3<f32> = ((vec3<f32>(x_871.x, x_871.x, x_871.x) * x_873) + vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec4<f32> = u_xlat0;
  let x_883 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_884 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_886.x, x_886.y, x_886.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_890 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_890 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_893 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_893), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_896 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_896);
  let x_898 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_898 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_901 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_901);
  let x_905 : vec4<f32> = u_xlat0;
  let x_907 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_905.x, x_905.y, x_905.z, x_905.x));
  u_xlatb0 = vec3<bool>(x_907.x, x_907.y, x_907.z);
  let x_910 : bool = u_xlatb0.x;
  if (x_910) {
    let x_915 : f32 = u_xlat1.x;
    x_911 = x_915;
  } else {
    let x_918 : f32 = u_xlat2.x;
    x_911 = x_918;
  }
  let x_919 : f32 = x_911;
  u_xlat0.x = x_919;
  let x_922 : bool = u_xlatb0.y;
  if (x_922) {
    let x_927 : f32 = u_xlat1.y;
    x_923 = x_927;
  } else {
    let x_930 : f32 = u_xlat2.y;
    x_923 = x_930;
  }
  let x_931 : f32 = x_923;
  u_xlat0.y = x_931;
  let x_934 : bool = u_xlatb0.z;
  if (x_934) {
    let x_939 : f32 = u_xlat1.z;
    x_935 = x_939;
  } else {
    let x_942 : f32 = u_xlat2.z;
    x_935 = x_942;
  }
  let x_943 : f32 = x_935;
  u_xlat0.z = x_943;
  let x_945 : vec2<f32> = vs_TEXCOORD0;
  let x_948 : vec4<f32> = x_59.x_Dithering_Coords;
  let x_952 : vec4<f32> = x_59.x_Dithering_Coords;
  let x_954 : vec2<f32> = ((x_945 * vec2<f32>(x_948.x, x_948.y)) + vec2<f32>(x_952.z, x_952.w));
  let x_955 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
  let x_962 : vec4<f32> = u_xlat1;
  let x_964 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_962.x, x_962.y));
  u_xlat21 = x_964.w;
  let x_966 : f32 = u_xlat21;
  u_xlat21 = ((x_966 * 2.0f) + -1.0f);
  let x_969 : f32 = u_xlat21;
  u_xlat1.x = ((x_969 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_975 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_975, 0.0f, 1.0f);
  let x_979 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_979 * 2.0f) + -1.0f);
  let x_983 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_983)) + 1.0f);
  let x_987 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_987);
  let x_989 : f32 = u_xlat21;
  u_xlat21 = (-(x_989) + 1.0f);
  let x_992 : f32 = u_xlat21;
  let x_994 : f32 = u_xlat1.x;
  u_xlat21 = (x_992 * x_994);
  let x_996 : vec4<f32> = u_xlat0;
  let x_998 : vec3<f32> = (vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_999 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1001.x, x_1001.y, x_1001.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1005 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1005);
  let x_1007 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1007 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1009 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1009);
  let x_1011 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1011 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1014 : vec4<f32> = u_xlat0;
  let x_1016 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1014.x));
  u_xlatb0 = vec3<bool>(x_1016.x, x_1016.y, x_1016.z);
  let x_1019 : bool = u_xlatb0.x;
  if (x_1019) {
    let x_1024 : f32 = u_xlat1.x;
    x_1020 = x_1024;
  } else {
    let x_1027 : f32 = u_xlat2.x;
    x_1020 = x_1027;
  }
  let x_1028 : f32 = x_1020;
  u_xlat0.x = x_1028;
  let x_1031 : bool = u_xlatb0.y;
  if (x_1031) {
    let x_1036 : f32 = u_xlat1.y;
    x_1032 = x_1036;
  } else {
    let x_1039 : f32 = u_xlat2.y;
    x_1032 = x_1039;
  }
  let x_1040 : f32 = x_1032;
  u_xlat0.y = x_1040;
  let x_1043 : bool = u_xlatb0.z;
  if (x_1043) {
    let x_1048 : f32 = u_xlat1.z;
    x_1044 = x_1048;
  } else {
    let x_1051 : f32 = u_xlat2.z;
    x_1044 = x_1051;
  }
  let x_1052 : f32 = x_1044;
  u_xlat0.z = x_1052;
  let x_1054 : f32 = u_xlat21;
  let x_1059 : vec4<f32> = u_xlat0;
  let x_1061 : vec3<f32> = ((vec3<f32>(x_1054, x_1054, x_1054) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1064 : vec4<f32> = u_xlat0;
  let x_1066 : vec3<f32> = (vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1067 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1072 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1072 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1074 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1074), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1077 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1077);
  let x_1079 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1079 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1081 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1081);
  let x_1083 : vec4<f32> = u_xlat0;
  let x_1085 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.x));
  u_xlatb0 = vec3<bool>(x_1085.x, x_1085.y, x_1085.z);
  let x_1090 : bool = u_xlatb0.x;
  if (x_1090) {
    let x_1095 : f32 = u_xlat1.x;
    x_1091 = x_1095;
  } else {
    let x_1098 : f32 = u_xlat2.x;
    x_1091 = x_1098;
  }
  let x_1099 : f32 = x_1091;
  SV_Target0.x = x_1099;
  let x_1103 : bool = u_xlatb0.y;
  if (x_1103) {
    let x_1108 : f32 = u_xlat1.y;
    x_1104 = x_1108;
  } else {
    let x_1111 : f32 = u_xlat2.y;
    x_1104 = x_1111;
  }
  let x_1112 : f32 = x_1104;
  SV_Target0.y = x_1112;
  let x_1115 : bool = u_xlatb0.z;
  if (x_1115) {
    let x_1120 : f32 = u_xlat1.z;
    x_1116 = x_1120;
  } else {
    let x_1123 : f32 = u_xlat2.z;
    x_1116 = x_1123;
  }
  let x_1124 : f32 = x_1116;
  SV_Target0.z = x_1124;
  let x_1127 : f32 = u_xlat3.w;
  SV_Target0.w = x_1127;
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

