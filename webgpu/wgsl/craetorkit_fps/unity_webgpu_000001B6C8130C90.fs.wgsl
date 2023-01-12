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

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_59 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat22 : f32;
  var u_xlat9 : f32;
  var x_561 : f32;
  var u_xlatb4 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_754 : f32;
  var x_766 : f32;
  var x_778 : f32;
  var u_xlat14 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_909 : f32;
  var x_921 : f32;
  var x_933 : f32;
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
  let x_239 : vec4<f32> = x_59.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_239.x, x_239.y, x_239.x, x_239.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_245 : f32 = x_59.x_Bloom_Settings.x;
  u_xlat2.x = (x_245 * 0.5f);
  let x_248 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = u_xlat2;
  let x_253 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_248.x, x_248.y, x_248.z, x_248.y) * vec4<f32>(x_250.x, x_250.x, x_250.x, x_250.x)) + vec4<f32>(x_253.x, x_253.y, x_253.x, x_253.y));
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
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_279 + x_280);
  let x_282 : vec4<f32> = u_xlat0;
  let x_284 : vec3<f32> = u_xlat2;
  let x_287 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_282.x, x_282.w, x_282.z, x_282.w) * vec4<f32>(x_284.x, x_284.x, x_284.x, x_284.x)) + vec4<f32>(x_287.x, x_287.y, x_287.x, x_287.y));
  let x_290 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_290, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_294 : vec4<f32> = u_xlat0;
  let x_296 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat0 = (x_294 * vec4<f32>(x_296, x_296, x_296, x_296));
  let x_302 : vec4<f32> = u_xlat0;
  let x_304 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_302.x, x_302.y));
  u_xlat4 = x_304;
  let x_305 : vec4<f32> = u_xlat3;
  let x_306 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_305 + x_306);
  let x_311 : vec4<f32> = u_xlat0;
  let x_313 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_311.z, x_311.w));
  u_xlat0 = x_313;
  let x_314 : vec4<f32> = u_xlat0;
  let x_315 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_314 + x_315);
  let x_317 : vec4<f32> = u_xlat0;
  let x_320 : vec3<f32> = x_59.x_Bloom_Settings;
  u_xlat0 = (x_317 * vec4<f32>(x_320.y, x_320.y, x_320.y, x_320.y));
  let x_323 : vec2<f32> = vs_TEXCOORD0;
  let x_326 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_330 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_332 : vec2<f32> = ((x_323 * vec2<f32>(x_326.x, x_326.y)) + vec2<f32>(x_330.z, x_330.w));
  let x_333 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_332.x, x_332.y, x_333.z);
  let x_340 : vec3<f32> = u_xlat2;
  let x_342 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_340.x, x_340.y));
  let x_343 : vec3<f32> = vec3<f32>(x_342.x, x_342.y, x_342.z);
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat0;
  let x_350 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat3;
  let x_356 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_358 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_356.z, x_356.z, x_356.z));
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_361 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_364 : vec4<f32> = u_xlat0;
  let x_368 : vec3<f32> = x_59.x_Bloom_Color;
  let x_369 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) * x_368);
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = u_xlat0.w;
  u_xlat5.w = (x_373 * 0.25f);
  let x_376 : vec4<f32> = u_xlat1;
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_376 + x_377);
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  u_xlat1.w = 0.0f;
  let x_387 : vec4<f32> = u_xlat0;
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_387 + x_388);
  let x_394 : f32 = x_59.x_Vignette_Mode;
  u_xlatb1 = (x_394 < 0.5f);
  let x_396 : bool = u_xlatb1;
  if (x_396) {
    let x_399 : vec2<f32> = vs_TEXCOORD0;
    let x_403 : vec2<f32> = x_59.x_Vignette_Center;
    let x_405 : vec2<f32> = (x_399 + -(x_403));
    let x_406 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_405.x, x_405.y, x_406.z, x_406.w);
    let x_408 : vec4<f32> = u_xlat1;
    let x_413 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_415 : vec2<f32> = (abs(vec2<f32>(x_408.y, x_408.x)) * vec2<f32>(x_413.x, x_413.x));
    let x_416 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_416.x, x_415.x, x_415.y, x_416.w);
    let x_420 : f32 = x_59.x_ScreenParams.x;
    let x_422 : f32 = x_59.x_ScreenParams.y;
    u_xlat22 = (x_420 / x_422);
    let x_424 : f32 = u_xlat22;
    u_xlat22 = (x_424 + -1.0f);
    let x_427 : f32 = x_59.x_Vignette_Settings.w;
    let x_428 : f32 = u_xlat22;
    u_xlat22 = ((x_427 * x_428) + 1.0f);
    let x_431 : f32 = u_xlat22;
    let x_433 : f32 = u_xlat1.z;
    u_xlat1.x = (x_431 * x_433);
    let x_436 : vec4<f32> = u_xlat1;
    let x_437 : vec2<f32> = vec2<f32>(x_436.x, x_436.y);
    let x_438 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
    let x_440 : vec4<f32> = u_xlat1;
    let x_444 : vec2<f32> = clamp(vec2<f32>(x_440.x, x_440.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_445 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
    let x_447 : vec4<f32> = u_xlat1;
    let x_449 : vec2<f32> = log2(vec2<f32>(x_447.x, x_447.y));
    let x_450 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
    let x_452 : vec4<f32> = u_xlat1;
    let x_455 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_457 : vec2<f32> = (vec2<f32>(x_452.x, x_452.y) * vec2<f32>(x_455.z, x_455.z));
    let x_458 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
    let x_460 : vec4<f32> = u_xlat1;
    let x_462 : vec2<f32> = exp2(vec2<f32>(x_460.x, x_460.y));
    let x_463 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
    let x_465 : vec4<f32> = u_xlat1;
    let x_467 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_465.x, x_465.y), vec2<f32>(x_467.x, x_467.y));
    let x_472 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_472) + 1.0f);
    let x_477 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_477, 0.0f);
    let x_481 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_481);
    let x_485 : f32 = u_xlat1.x;
    let x_487 : f32 = x_59.x_Vignette_Settings.y;
    u_xlat1.x = (x_485 * x_487);
    let x_491 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_491);
    let x_496 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = (-(x_496) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_500 : vec4<f32> = u_xlat1;
    let x_502 : vec3<f32> = u_xlat8;
    let x_505 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_500.x, x_500.x, x_500.x) * x_502) + x_505);
    let x_507 : vec4<f32> = u_xlat0;
    let x_509 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_507.x, x_507.y, x_507.z) * x_509);
    let x_512 : f32 = u_xlat0.w;
    u_xlat2.x = (x_512 + -1.0f);
    let x_516 : f32 = u_xlat1.x;
    let x_518 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_516 * x_518) + 1.0f);
  } else {
    let x_528 : vec2<f32> = vs_TEXCOORD0;
    let x_529 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_528);
    u_xlat1.x = x_529.w;
    let x_533 : f32 = u_xlat1.x;
    u_xlat2.x = (x_533 * 0.077399381f);
    let x_539 : f32 = u_xlat1.x;
    u_xlat9 = (x_539 + 0.055f);
    let x_542 : f32 = u_xlat9;
    u_xlat9 = (x_542 * 0.947867334f);
    let x_545 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_545), 1.1920929e-07f);
    let x_549 : f32 = u_xlat9;
    u_xlat9 = log2(x_549);
    let x_551 : f32 = u_xlat9;
    u_xlat9 = (x_551 * 2.400000095f);
    let x_554 : f32 = u_xlat9;
    u_xlat9 = exp2(x_554);
    let x_558 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_558);
    let x_560 : bool = u_xlatb1;
    if (x_560) {
      let x_565 : f32 = u_xlat2.x;
      x_561 = x_565;
    } else {
      let x_567 : f32 = u_xlat9;
      x_561 = x_567;
    }
    let x_568 : f32 = x_561;
    u_xlat1.x = x_568;
    let x_571 : vec3<f32> = x_59.x_Vignette_Color;
    let x_573 : vec3<f32> = (-(x_571) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_574 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
    let x_576 : vec4<f32> = u_xlat1;
    let x_578 : vec4<f32> = u_xlat4;
    let x_582 : vec3<f32> = x_59.x_Vignette_Color;
    let x_583 : vec3<f32> = ((vec3<f32>(x_576.x, x_576.x, x_576.x) * vec3<f32>(x_578.x, x_578.y, x_578.z)) + x_582);
    let x_584 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
    let x_586 : vec4<f32> = u_xlat0;
    let x_588 : vec4<f32> = u_xlat4;
    let x_591 : vec4<f32> = u_xlat0;
    let x_594 : vec3<f32> = ((vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588.x, x_588.y, x_588.z)) + -(vec3<f32>(x_591.x, x_591.y, x_591.z)));
    let x_595 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
    let x_599 : f32 = x_59.x_Vignette_Opacity;
    let x_601 : vec4<f32> = u_xlat4;
    let x_604 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_599, x_599, x_599) * vec3<f32>(x_601.x, x_601.y, x_601.z)) + vec3<f32>(x_604.x, x_604.y, x_604.z));
    let x_608 : f32 = u_xlat0.w;
    u_xlat0.x = (x_608 + -1.0f);
    let x_612 : f32 = u_xlat1.x;
    let x_614 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_612 * x_614) + 1.0f);
  }
  let x_619 : vec2<f32> = vs_TEXCOORD1;
  let x_622 : vec4<f32> = x_59.x_Grain_Params2;
  let x_626 : vec4<f32> = x_59.x_Grain_Params2;
  let x_628 : vec2<f32> = ((x_619 * vec2<f32>(x_622.x, x_622.y)) + vec2<f32>(x_626.z, x_626.w));
  let x_629 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
  let x_636 : vec4<f32> = u_xlat0;
  let x_638 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_636.x, x_636.y));
  let x_639 : vec3<f32> = vec3<f32>(x_638.x, x_638.y, x_638.z);
  let x_640 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec3<f32> = u_xlat8;
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat4;
  let x_649 : vec3<f32> = clamp(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_650 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_652.x, x_652.y, x_652.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_659 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_659);
  let x_663 : f32 = x_59.x_Grain_Params1.x;
  let x_664 : f32 = u_xlat21;
  u_xlat21 = ((x_663 * -(x_664)) + 1.0f);
  let x_668 : vec4<f32> = u_xlat0;
  let x_670 : vec3<f32> = u_xlat8;
  let x_671 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) * x_670);
  let x_672 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat0;
  let x_677 : f32 = x_59.x_Grain_Params1.y;
  let x_679 : f32 = x_59.x_Grain_Params1.y;
  let x_681 : f32 = x_59.x_Grain_Params1.y;
  let x_683 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) * vec3<f32>(x_677, x_679, x_681));
  let x_684 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat0;
  let x_688 : f32 = u_xlat21;
  let x_691 : vec3<f32> = u_xlat8;
  let x_692 : vec3<f32> = ((vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(x_688, x_688, x_688)) + x_691);
  let x_693 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat3;
  u_xlat3 = x_695;
  let x_696 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_696, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_700 : vec4<f32> = u_xlat3;
  let x_704 : vec3<f32> = (vec3<f32>(x_700.z, x_700.x, x_700.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_705 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec4<f32> = u_xlat3;
  let x_710 : vec3<f32> = max(vec3<f32>(x_707.z, x_707.x, x_707.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_711 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec3<f32> = log2(vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat1;
  let x_722 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat1;
  let x_727 : vec3<f32> = exp2(vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec4<f32> = u_xlat1;
  let x_737 : vec3<f32> = ((vec3<f32>(x_730.x, x_730.y, x_730.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_738 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_745 : vec4<f32> = u_xlat3;
  let x_748 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_745.z, x_745.x, x_745.y, x_745.z));
  u_xlatb4 = vec3<bool>(x_748.x, x_748.y, x_748.z);
  let x_751 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_751;
  let x_753 : bool = u_xlatb4.x;
  if (x_753) {
    let x_758 : f32 = u_xlat0.x;
    x_754 = x_758;
  } else {
    let x_761 : f32 = u_xlat1.x;
    x_754 = x_761;
  }
  let x_762 : f32 = x_754;
  hlslcc_movcTemp.x = x_762;
  let x_765 : bool = u_xlatb4.y;
  if (x_765) {
    let x_770 : f32 = u_xlat0.y;
    x_766 = x_770;
  } else {
    let x_773 : f32 = u_xlat1.y;
    x_766 = x_773;
  }
  let x_774 : f32 = x_766;
  hlslcc_movcTemp.y = x_774;
  let x_777 : bool = u_xlatb4.z;
  if (x_777) {
    let x_782 : f32 = u_xlat0.z;
    x_778 = x_782;
  } else {
    let x_785 : f32 = u_xlat1.z;
    x_778 = x_785;
  }
  let x_786 : f32 = x_778;
  hlslcc_movcTemp.z = x_786;
  let x_788 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_788;
  let x_789 : vec4<f32> = u_xlat0;
  let x_793 : vec3<f32> = x_59.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_789.x, x_789.y, x_789.z) * vec3<f32>(x_793.z, x_793.z, x_793.z));
  let x_797 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_797);
  let x_801 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_803 : vec2<f32> = (vec2<f32>(x_801.x, x_801.y) * vec2<f32>(0.5f, 0.5f));
  let x_804 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_804.w);
  let x_806 : vec3<f32> = u_xlat7;
  let x_809 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_812 : vec4<f32> = u_xlat1;
  let x_814 : vec2<f32> = ((vec2<f32>(x_806.y, x_806.z) * vec2<f32>(x_809.x, x_809.y)) + vec2<f32>(x_812.x, x_812.y));
  let x_815 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_814.x, x_814.y, x_815.w);
  let x_818 : f32 = u_xlat7.x;
  let x_820 : f32 = x_59.x_Lut2D_Params.y;
  let x_823 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_818 * x_820) + x_823);
  let x_831 : vec4<f32> = u_xlat1;
  let x_833 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_831.x, x_831.z));
  let x_834 : vec3<f32> = vec3<f32>(x_833.x, x_833.y, x_833.z);
  let x_835 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_838 : f32 = x_59.x_Lut2D_Params.y;
  u_xlat16.x = x_838;
  let x_841 : vec2<f32> = u_xlat16;
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_841 + vec2<f32>(x_842.x, x_842.z));
  let x_848 : vec2<f32> = u_xlat14;
  let x_849 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_848);
  let x_850 : vec3<f32> = vec3<f32>(x_849.x, x_849.y, x_849.z);
  let x_851 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_854 : f32 = u_xlat0.x;
  let x_856 : f32 = x_59.x_Lut2D_Params.z;
  let x_859 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_854 * x_856) + -(x_859));
  let x_863 : vec4<f32> = u_xlat4;
  let x_866 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_863.x, x_863.y, x_863.z)) + vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat0;
  let x_871 : vec3<f32> = u_xlat7;
  let x_873 : vec4<f32> = u_xlat4;
  let x_875 : vec3<f32> = ((vec3<f32>(x_869.x, x_869.x, x_869.x) * x_871) + vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = u_xlat0;
  let x_881 : vec3<f32> = (vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_882 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_884.x, x_884.y, x_884.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_888 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_888 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_891 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_891), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_894 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_894);
  let x_896 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_896 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_899 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_899);
  let x_903 : vec4<f32> = u_xlat0;
  let x_905 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_903.x, x_903.y, x_903.z, x_903.x));
  u_xlatb0 = vec3<bool>(x_905.x, x_905.y, x_905.z);
  let x_908 : bool = u_xlatb0.x;
  if (x_908) {
    let x_913 : f32 = u_xlat1.x;
    x_909 = x_913;
  } else {
    let x_916 : f32 = u_xlat2.x;
    x_909 = x_916;
  }
  let x_917 : f32 = x_909;
  u_xlat3.x = x_917;
  let x_920 : bool = u_xlatb0.y;
  if (x_920) {
    let x_925 : f32 = u_xlat1.y;
    x_921 = x_925;
  } else {
    let x_928 : f32 = u_xlat2.y;
    x_921 = x_928;
  }
  let x_929 : f32 = x_921;
  u_xlat3.y = x_929;
  let x_932 : bool = u_xlatb0.z;
  if (x_932) {
    let x_937 : f32 = u_xlat1.z;
    x_933 = x_937;
  } else {
    let x_940 : f32 = u_xlat2.z;
    x_933 = x_940;
  }
  let x_941 : f32 = x_933;
  u_xlat3.z = x_941;
  let x_944 : f32 = x_59.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_944);
  let x_948 : bool = u_xlatb0.x;
  if (x_948) {
    let x_951 : vec4<f32> = u_xlat3;
    let x_952 : vec3<f32> = vec3<f32>(x_951.x, x_951.y, x_951.z);
    let x_953 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
    let x_955 : vec4<f32> = u_xlat0;
    let x_959 : vec3<f32> = clamp(vec3<f32>(x_955.x, x_955.y, x_955.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_960 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
    let x_962 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_962.x, x_962.y, x_962.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_968 : vec4<f32> = u_xlat3;
  SV_Target0 = x_968;
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

