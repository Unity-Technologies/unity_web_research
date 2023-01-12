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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
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

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(17) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(15) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat22 : f32;
  var u_xlat10 : f32;
  var x_536 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_870 : f32;
  var x_882 : f32;
  var x_894 : f32;
  var x_963 : f32;
  var x_976 : f32;
  var x_988 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat7;
  let x_41 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat21;
  let x_45 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_47 * vec2<f32>(x_59.x, x_59.y));
  let x_65 : vec2<f32> = u_xlat7;
  let x_70 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_72 : vec2<f32> = (-(x_65) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(0.5f, 0.5f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
  let x_87 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_87);
  let x_91 : f32 = u_xlat21;
  u_xlati21 = i32(x_91);
  let x_93 : i32 = u_xlati21;
  u_xlati21 = max(x_93, 3i);
  let x_95 : i32 = u_xlati21;
  u_xlati21 = min(x_95, 16i);
  let x_98 : i32 = u_xlati21;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat7;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
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
  let x_127 : vec2<f32> = vs_TEXCOORD0;
  let x_128 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_127.x, x_127.y, x_128.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_137 : i32 = u_xlati_loop_1;
    let x_138 : i32 = u_xlati21;
    if ((x_137 < x_138)) {
    } else {
      break;
    }
    let x_142 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_142);
    let x_146 : f32 = u_xlat16.x;
    u_xlat16.x = (x_146 + 0.5f);
    let x_150 : f32 = u_xlat16.x;
    let x_152 : f32 = u_xlat1.x;
    u_xlat2.x = (x_150 / x_152);
    let x_155 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_155.x, x_155.y);
    let x_157 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_157, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_161 : vec2<f32> = u_xlat16;
    let x_164 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_161 * vec2<f32>(x_164, x_164));
    let x_173 : vec2<f32> = u_xlat16;
    let x_174 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_173, 0.0f);
    u_xlat6 = x_174;
    let x_180 : vec4<f32> = u_xlat2;
    let x_182 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_180.x, x_180.y), 0.0f);
    let x_183 : vec3<f32> = vec3<f32>(x_182.x, x_182.y, x_182.z);
    let x_184 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
    let x_186 : vec4<f32> = u_xlat6;
    let x_187 : vec4<f32> = u_xlat3;
    let x_189 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_186 * x_187) + x_189);
    let x_191 : vec4<f32> = u_xlat3;
    let x_192 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_191 + x_192);
    let x_194 : vec2<f32> = u_xlat7;
    let x_195 : vec3<f32> = u_xlat8;
    let x_197 : vec2<f32> = (x_194 + vec2<f32>(x_195.x, x_195.y));
    let x_198 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_197.x, x_197.y, x_198.z);

    continuing {
      let x_200 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_200 + 1i);
    }
  }
  let x_202 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_202 / x_203);
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = u_xlat1;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.x, x_205.x) * vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_214 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_214.x, x_214.y, x_214.x, x_214.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_220 : f32 = x_51.x_Bloom_Settings.x;
  u_xlat2.x = (x_220 * 0.5f);
  let x_223 : vec4<f32> = u_xlat0;
  let x_225 : vec4<f32> = u_xlat2;
  let x_228 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_223.x, x_223.y, x_223.z, x_223.y) * vec4<f32>(x_225.x, x_225.x, x_225.x, x_225.x)) + vec4<f32>(x_228.x, x_228.y, x_228.x, x_228.y));
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_231, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_235 * vec4<f32>(x_237, x_237, x_237, x_237));
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_245.x, x_245.y));
  u_xlat4 = x_247;
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_251.z, x_251.w));
  u_xlat3 = x_253;
  let x_254 : vec4<f32> = u_xlat3;
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_254 + x_255);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat2;
  let x_262 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_257.x, x_257.w, x_257.z, x_257.w) * vec4<f32>(x_259.x, x_259.x, x_259.x, x_259.x)) + vec4<f32>(x_262.x, x_262.y, x_262.x, x_262.y));
  let x_265 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_265, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_269 : vec4<f32> = u_xlat0;
  let x_271 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat0 = (x_269 * vec4<f32>(x_271, x_271, x_271, x_271));
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_277.x, x_277.y));
  u_xlat2 = x_279;
  let x_280 : vec4<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_280 + x_281);
  let x_286 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_286.z, x_286.w));
  u_xlat0 = x_288;
  let x_289 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_289 + x_290);
  let x_292 : vec4<f32> = u_xlat0;
  let x_295 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_292 * vec4<f32>(x_295.y, x_295.y, x_295.y, x_295.y));
  let x_298 : vec2<f32> = vs_TEXCOORD0;
  let x_301 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_305 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_307 : vec2<f32> = ((x_298 * vec2<f32>(x_301.x, x_301.y)) + vec2<f32>(x_305.z, x_305.w));
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_307.x, x_307.y, x_308.z, x_308.w);
  let x_315 : vec4<f32> = u_xlat2;
  let x_317 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_315.x, x_315.y));
  let x_318 : vec3<f32> = vec3<f32>(x_317.x, x_317.y, x_317.z);
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat0;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat2;
  let x_331 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_331.z, x_331.z, x_331.z));
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_336 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_339 : vec4<f32> = u_xlat0;
  let x_343 : vec3<f32> = x_51.x_Bloom_Color;
  let x_344 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) * x_343);
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat0.w;
  u_xlat4.w = (x_348 * 0.25f);
  let x_351 : vec4<f32> = u_xlat1;
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_351 + x_352);
  let x_354 : vec4<f32> = u_xlat3;
  let x_356 : vec4<f32> = u_xlat2;
  let x_358 : vec3<f32> = (vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  u_xlat1.w = 0.0f;
  let x_362 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_362 + x_363);
  let x_369 : f32 = x_51.x_Vignette_Mode;
  u_xlatb1 = (x_369 < 0.5f);
  let x_371 : bool = u_xlatb1;
  if (x_371) {
    let x_374 : vec2<f32> = vs_TEXCOORD0;
    let x_378 : vec2<f32> = x_51.x_Vignette_Center;
    let x_380 : vec2<f32> = (x_374 + -(x_378));
    let x_381 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
    let x_383 : vec4<f32> = u_xlat1;
    let x_388 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_390 : vec2<f32> = (abs(vec2<f32>(x_383.y, x_383.x)) * vec2<f32>(x_388.x, x_388.x));
    let x_391 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_391.x, x_390.x, x_390.y, x_391.w);
    let x_395 : f32 = x_51.x_ScreenParams.x;
    let x_397 : f32 = x_51.x_ScreenParams.y;
    u_xlat22 = (x_395 / x_397);
    let x_399 : f32 = u_xlat22;
    u_xlat22 = (x_399 + -1.0f);
    let x_402 : f32 = x_51.x_Vignette_Settings.w;
    let x_403 : f32 = u_xlat22;
    u_xlat22 = ((x_402 * x_403) + 1.0f);
    let x_406 : f32 = u_xlat22;
    let x_408 : f32 = u_xlat1.z;
    u_xlat1.x = (x_406 * x_408);
    let x_411 : vec4<f32> = u_xlat1;
    let x_412 : vec2<f32> = vec2<f32>(x_411.x, x_411.y);
    let x_413 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
    let x_415 : vec4<f32> = u_xlat1;
    let x_419 : vec2<f32> = clamp(vec2<f32>(x_415.x, x_415.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_420 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
    let x_422 : vec4<f32> = u_xlat1;
    let x_424 : vec2<f32> = log2(vec2<f32>(x_422.x, x_422.y));
    let x_425 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
    let x_427 : vec4<f32> = u_xlat1;
    let x_430 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_432 : vec2<f32> = (vec2<f32>(x_427.x, x_427.y) * vec2<f32>(x_430.z, x_430.z));
    let x_433 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_433.z, x_433.w);
    let x_435 : vec4<f32> = u_xlat1;
    let x_437 : vec2<f32> = exp2(vec2<f32>(x_435.x, x_435.y));
    let x_438 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
    let x_440 : vec4<f32> = u_xlat1;
    let x_442 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_440.x, x_440.y), vec2<f32>(x_442.x, x_442.y));
    let x_447 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_447) + 1.0f);
    let x_452 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_452, 0.0f);
    let x_456 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_456);
    let x_460 : f32 = u_xlat1.x;
    let x_462 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat1.x = (x_460 * x_462);
    let x_466 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_466);
    let x_471 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_471) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_475 : vec4<f32> = u_xlat1;
    let x_477 : vec3<f32> = u_xlat8;
    let x_480 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_475.x, x_475.x, x_475.x) * x_477) + x_480);
    let x_482 : vec4<f32> = u_xlat0;
    let x_484 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_482.x, x_482.y, x_482.z) * x_484);
    let x_487 : f32 = u_xlat0.w;
    u_xlat2.x = (x_487 + -1.0f);
    let x_491 : f32 = u_xlat1.x;
    let x_493 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_491 * x_493) + 1.0f);
  } else {
    let x_503 : vec2<f32> = vs_TEXCOORD0;
    let x_504 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_503);
    u_xlat1.x = x_504.w;
    let x_508 : f32 = u_xlat1.x;
    u_xlat3.x = (x_508 * 0.077399381f);
    let x_514 : f32 = u_xlat1.x;
    u_xlat10 = (x_514 + 0.055f);
    let x_517 : f32 = u_xlat10;
    u_xlat10 = (x_517 * 0.947867334f);
    let x_520 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_520), 1.1920929e-07f);
    let x_524 : f32 = u_xlat10;
    u_xlat10 = log2(x_524);
    let x_526 : f32 = u_xlat10;
    u_xlat10 = (x_526 * 2.400000095f);
    let x_529 : f32 = u_xlat10;
    u_xlat10 = exp2(x_529);
    let x_533 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_533);
    let x_535 : bool = u_xlatb1;
    if (x_535) {
      let x_540 : f32 = u_xlat3.x;
      x_536 = x_540;
    } else {
      let x_542 : f32 = u_xlat10;
      x_536 = x_542;
    }
    let x_543 : f32 = x_536;
    u_xlat1.x = x_543;
    let x_546 : vec3<f32> = x_51.x_Vignette_Color;
    let x_548 : vec3<f32> = (-(x_546) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_549 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
    let x_551 : vec4<f32> = u_xlat1;
    let x_553 : vec4<f32> = u_xlat3;
    let x_557 : vec3<f32> = x_51.x_Vignette_Color;
    let x_558 : vec3<f32> = ((vec3<f32>(x_551.x, x_551.x, x_551.x) * vec3<f32>(x_553.x, x_553.y, x_553.z)) + x_557);
    let x_559 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
    let x_561 : vec4<f32> = u_xlat0;
    let x_563 : vec4<f32> = u_xlat3;
    let x_566 : vec4<f32> = u_xlat0;
    let x_569 : vec3<f32> = ((vec3<f32>(x_561.x, x_561.y, x_561.z) * vec3<f32>(x_563.x, x_563.y, x_563.z)) + -(vec3<f32>(x_566.x, x_566.y, x_566.z)));
    let x_570 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
    let x_574 : f32 = x_51.x_Vignette_Opacity;
    let x_576 : vec4<f32> = u_xlat3;
    let x_579 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_574, x_574, x_574) * vec3<f32>(x_576.x, x_576.y, x_576.z)) + vec3<f32>(x_579.x, x_579.y, x_579.z));
    let x_583 : f32 = u_xlat0.w;
    u_xlat0.x = (x_583 + -1.0f);
    let x_587 : f32 = u_xlat1.x;
    let x_589 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_587 * x_589) + 1.0f);
  }
  let x_594 : vec2<f32> = vs_TEXCOORD1;
  let x_597 : vec4<f32> = x_51.x_Grain_Params2;
  let x_601 : vec4<f32> = x_51.x_Grain_Params2;
  let x_603 : vec2<f32> = ((x_594 * vec2<f32>(x_597.x, x_597.y)) + vec2<f32>(x_601.z, x_601.w));
  let x_604 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
  let x_611 : vec4<f32> = u_xlat0;
  let x_613 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_611.x, x_611.y));
  let x_614 : vec3<f32> = vec3<f32>(x_613.x, x_613.y, x_613.z);
  let x_615 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec3<f32> = u_xlat8;
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat3;
  let x_624 : vec3<f32> = clamp(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_634 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_634);
  let x_637 : f32 = x_51.x_Grain_Params1.x;
  let x_638 : f32 = u_xlat21;
  u_xlat21 = ((x_637 * -(x_638)) + 1.0f);
  let x_642 : vec4<f32> = u_xlat0;
  let x_644 : vec3<f32> = u_xlat8;
  let x_645 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) * x_644);
  let x_646 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : vec4<f32> = u_xlat0;
  let x_651 : f32 = x_51.x_Grain_Params1.y;
  let x_653 : f32 = x_51.x_Grain_Params1.y;
  let x_655 : f32 = x_51.x_Grain_Params1.y;
  let x_657 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) * vec3<f32>(x_651, x_653, x_655));
  let x_658 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat0;
  let x_662 : f32 = u_xlat21;
  let x_665 : vec3<f32> = u_xlat8;
  let x_666 : vec3<f32> = ((vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_662, x_662, x_662)) + x_665);
  let x_667 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat2;
  let x_672 : f32 = x_51.x_PostExposure;
  let x_674 : f32 = x_51.x_PostExposure;
  let x_676 : f32 = x_51.x_PostExposure;
  let x_678 : f32 = x_51.x_PostExposure;
  let x_679 : vec4<f32> = vec4<f32>(x_672, x_674, x_676, x_678);
  u_xlat0 = (x_669 * vec4<f32>(x_679.x, x_679.y, x_679.z, x_679.w));
  let x_686 : vec4<f32> = u_xlat0;
  let x_693 : vec3<f32> = ((vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_694 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat0;
  let x_698 : vec3<f32> = log2(vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat0;
  let x_708 : vec3<f32> = ((vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_709 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat0;
  let x_715 : vec3<f32> = clamp(vec3<f32>(x_711.x, x_711.y, x_711.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_716 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat0;
  let x_722 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_724 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(x_722.y, x_722.y, x_722.y));
  let x_725 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_728 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat1.x = (x_728 * 0.5f);
  let x_731 : vec4<f32> = u_xlat0;
  let x_734 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_737 : vec4<f32> = u_xlat1;
  let x_739 : vec3<f32> = ((vec3<f32>(x_731.x, x_731.y, x_731.z) * vec3<f32>(x_734.x, x_734.x, x_734.x)) + vec3<f32>(x_737.x, x_737.x, x_737.x));
  let x_740 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_750 : vec4<f32> = u_xlat0;
  let x_752 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec3<f32> = vec3<f32>(x_752.x, x_752.y, x_752.z);
  let x_754 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec2<f32> = vs_TEXCOORD0;
  let x_759 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_763 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_765 : vec2<f32> = ((x_756 * vec2<f32>(x_759.x, x_759.y)) + vec2<f32>(x_763.z, x_763.w));
  let x_766 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
  let x_773 : vec4<f32> = u_xlat1;
  let x_775 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_773.x, x_773.y));
  u_xlat1.x = x_775.w;
  let x_779 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_779 * 2.0f) + -1.0f);
  let x_784 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_784 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_790 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_790, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_794 * 2.0f) + -1.0f);
  let x_799 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_799)) + 1.0f);
  let x_805 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_805);
  let x_809 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_809) + 1.0f);
  let x_814 : f32 = u_xlat1.x;
  let x_816 : f32 = u_xlat8.x;
  u_xlat1.x = (x_814 * x_816);
  let x_819 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_819.x, x_819.y, x_819.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_824 : vec4<f32> = u_xlat0;
  let x_828 : vec3<f32> = max(abs(vec3<f32>(x_824.x, x_824.y, x_824.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_829 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat2;
  let x_833 : vec3<f32> = log2(vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat2;
  let x_840 : vec3<f32> = (vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_841 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat2;
  let x_845 : vec3<f32> = exp2(vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat2;
  let x_855 : vec3<f32> = ((vec3<f32>(x_848.x, x_848.y, x_848.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_863 : vec4<f32> = u_xlat0;
  let x_866 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_863.x, x_863.y, x_863.z, x_863.x));
  u_xlatb0 = vec3<bool>(x_866.x, x_866.y, x_866.z);
  let x_869 : bool = u_xlatb0.x;
  if (x_869) {
    let x_874 : f32 = u_xlat8.x;
    x_870 = x_874;
  } else {
    let x_877 : f32 = u_xlat2.x;
    x_870 = x_877;
  }
  let x_878 : f32 = x_870;
  u_xlat0.x = x_878;
  let x_881 : bool = u_xlatb0.y;
  if (x_881) {
    let x_886 : f32 = u_xlat8.y;
    x_882 = x_886;
  } else {
    let x_889 : f32 = u_xlat2.y;
    x_882 = x_889;
  }
  let x_890 : f32 = x_882;
  u_xlat0.y = x_890;
  let x_893 : bool = u_xlatb0.z;
  if (x_893) {
    let x_898 : f32 = u_xlat8.z;
    x_894 = x_898;
  } else {
    let x_901 : f32 = u_xlat2.z;
    x_894 = x_901;
  }
  let x_902 : f32 = x_894;
  u_xlat0.z = x_902;
  let x_904 : vec4<f32> = u_xlat1;
  let x_909 : vec4<f32> = u_xlat0;
  let x_911 : vec3<f32> = ((vec3<f32>(x_904.x, x_904.x, x_904.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_912 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec4<f32> = u_xlat0;
  let x_917 : vec3<f32> = (vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_918 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat0;
  let x_923 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_924 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec4<f32> = u_xlat2;
  let x_929 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_930 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat2;
  let x_935 : vec3<f32> = max(abs(vec3<f32>(x_932.x, x_932.y, x_932.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_936 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat2;
  let x_940 : vec3<f32> = log2(vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_946 : vec3<f32> = (vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_947 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
  let x_949 : vec4<f32> = u_xlat2;
  let x_951 : vec3<f32> = exp2(vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_952 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_955 : vec4<f32> = u_xlat0;
  let x_957 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_955.x, x_955.y, x_955.z, x_955.x));
  u_xlatb0 = vec3<bool>(x_957.x, x_957.y, x_957.z);
  let x_962 : bool = u_xlatb0.x;
  if (x_962) {
    let x_967 : f32 = u_xlat1.x;
    x_963 = x_967;
  } else {
    let x_970 : f32 = u_xlat2.x;
    x_963 = x_970;
  }
  let x_971 : f32 = x_963;
  SV_Target0.x = x_971;
  let x_975 : bool = u_xlatb0.y;
  if (x_975) {
    let x_980 : f32 = u_xlat1.y;
    x_976 = x_980;
  } else {
    let x_983 : f32 = u_xlat2.y;
    x_976 = x_983;
  }
  let x_984 : f32 = x_976;
  SV_Target0.y = x_984;
  let x_987 : bool = u_xlatb0.z;
  if (x_987) {
    let x_992 : f32 = u_xlat1.z;
    x_988 = x_992;
  } else {
    let x_995 : f32 = u_xlat2.z;
    x_988 = x_995;
  }
  let x_996 : f32 = x_988;
  SV_Target0.z = x_996;
  let x_999 : f32 = u_xlat0.w;
  SV_Target0.w = x_999;
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

