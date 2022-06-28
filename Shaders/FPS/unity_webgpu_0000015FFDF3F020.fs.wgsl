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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

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

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_680 : f32;
  var x_918 : f32;
  var x_930 : f32;
  var x_942 : f32;
  var x_1009 : f32;
  var x_1021 : f32;
  var x_1033 : f32;
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
    let x_138 : i32 = u_xlati_loop_1;
    let x_139 : i32 = u_xlati21;
    if ((x_138 < x_139)) {
    } else {
      break;
    }
    let x_143 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_143);
    let x_147 : f32 = u_xlat16.x;
    u_xlat16.x = (x_147 + 0.5f);
    let x_151 : f32 = u_xlat16.x;
    let x_153 : f32 = u_xlat1.x;
    u_xlat2.x = (x_151 / x_153);
    let x_156 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_156.x, x_156.y);
    let x_158 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_158, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_162 : vec2<f32> = u_xlat16;
    let x_165 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_162 * vec2<f32>(x_165, x_165));
    let x_174 : vec2<f32> = u_xlat16;
    let x_175 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_174, 0.0f);
    u_xlat6 = x_175;
    let x_181 : vec4<f32> = u_xlat2;
    let x_183 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_181.x, x_181.y), 0.0f);
    let x_184 : vec3<f32> = vec3<f32>(x_183.x, x_183.y, x_183.z);
    let x_185 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_187 : vec4<f32> = u_xlat6;
    let x_188 : vec4<f32> = u_xlat3;
    let x_190 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_187 * x_188) + x_190);
    let x_192 : vec4<f32> = u_xlat3;
    let x_193 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_192 + x_193);
    let x_195 : vec2<f32> = u_xlat7;
    let x_196 : vec3<f32> = u_xlat8;
    let x_198 : vec2<f32> = (x_195 + vec2<f32>(x_196.x, x_196.y));
    let x_199 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_198.x, x_198.y, x_199.z);

    continuing {
      let x_201 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_201 + 1i);
    }
  }
  let x_203 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_203 / x_204);
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.x, x_206.x) * vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_215 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_215.x, x_215.y, x_215.x, x_215.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_219 : vec4<f32> = u_xlat0;
  let x_225 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_228 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_219.x, x_219.y, x_219.w, x_219.y)) * vec4<f32>(x_225.x, x_225.x, x_225.x, x_225.x)) + vec4<f32>(x_228.x, x_228.y, x_228.x, x_228.y));
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_231, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_235 : vec4<f32> = u_xlat2;
  let x_237 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat2 = (x_235 * vec4<f32>(x_237, x_237, x_237, x_237));
  let x_245 : vec4<f32> = u_xlat2;
  let x_247 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_245.x, x_245.y));
  u_xlat3 = x_247;
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_251.z, x_251.w));
  u_xlat2 = x_253;
  let x_254 : vec4<f32> = u_xlat2;
  let x_257 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_254 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_257);
  let x_259 : vec4<f32> = u_xlat0;
  let x_263 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_266 : vec2<f32> = vs_TEXCOORD0;
  let x_267 : vec2<f32> = ((-(vec2<f32>(x_259.z, x_259.y)) * vec2<f32>(x_263.x, x_263.x)) + x_266);
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_268.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat3;
  let x_274 : vec2<f32> = clamp(vec2<f32>(x_270.x, x_270.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_275 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_274.x, x_274.y, x_275.z, x_275.w);
  let x_277 : vec4<f32> = u_xlat3;
  let x_280 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_282 : vec2<f32> = (vec2<f32>(x_277.x, x_277.y) * vec2<f32>(x_280, x_280));
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
  let x_288 : vec4<f32> = u_xlat3;
  let x_290 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_288.x, x_288.y));
  u_xlat3 = x_290;
  let x_291 : vec4<f32> = u_xlat2;
  let x_292 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_291 + x_292);
  let x_294 : vec4<f32> = u_xlat0;
  let x_297 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_300 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_294.z, x_294.w, x_294.x, x_294.w) * vec4<f32>(x_297.x, x_297.x, x_297.x, x_297.x)) + vec4<f32>(x_300.x, x_300.y, x_300.x, x_300.y));
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_303, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_307 : vec4<f32> = u_xlat3;
  let x_309 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_307 * vec4<f32>(x_309, x_309, x_309, x_309));
  let x_315 : vec4<f32> = u_xlat3;
  let x_317 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_315.x, x_315.y));
  u_xlat4 = x_317;
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_318 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_320);
  let x_322 : vec2<f32> = vs_TEXCOORD0;
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_323.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat3;
  let x_329 : vec2<f32> = clamp(vec2<f32>(x_325.x, x_325.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_330.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat3;
  let x_335 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_337 : vec2<f32> = (vec2<f32>(x_332.x, x_332.y) * vec2<f32>(x_335, x_335));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_338.z, x_338.w);
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_343.x, x_343.y));
  u_xlat4 = x_345;
  let x_346 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_346 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_350);
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_355.z, x_355.w));
  u_xlat3 = x_357;
  let x_358 : vec4<f32> = u_xlat3;
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_358 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_360);
  let x_362 : vec4<f32> = u_xlat0;
  let x_365 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_368 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_362.z, x_362.y, x_362.w, x_362.y) * vec4<f32>(x_365.x, x_365.x, x_365.x, x_365.x)) + vec4<f32>(x_368.x, x_368.y, x_368.x, x_368.y));
  let x_371 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_371, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_375 : vec4<f32> = u_xlat3;
  let x_377 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_375 * vec4<f32>(x_377, x_377, x_377, x_377));
  let x_383 : vec4<f32> = u_xlat3;
  let x_385 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_383.x, x_383.y));
  u_xlat4 = x_385;
  let x_386 : vec4<f32> = u_xlat2;
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_386 + x_387);
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_392.z, x_392.w));
  u_xlat3 = x_394;
  let x_395 : vec4<f32> = u_xlat3;
  let x_397 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_395 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_397);
  let x_399 : vec4<f32> = u_xlat0;
  let x_402 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_405 : vec2<f32> = vs_TEXCOORD0;
  let x_406 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_402.x, x_402.x)) + x_405);
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat0;
  let x_413 : vec2<f32> = clamp(vec2<f32>(x_409.x, x_409.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat0;
  let x_419 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_421 : vec2<f32> = (vec2<f32>(x_416.x, x_416.y) * vec2<f32>(x_419, x_419));
  let x_422 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
  let x_427 : vec4<f32> = u_xlat0;
  let x_429 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_427.x, x_427.y));
  u_xlat0 = x_429;
  let x_430 : vec4<f32> = u_xlat0;
  let x_431 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_430 + x_431);
  let x_433 : vec4<f32> = u_xlat0;
  let x_435 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_433 * vec4<f32>(x_435.y, x_435.y, x_435.y, x_435.y));
  let x_438 : vec2<f32> = vs_TEXCOORD0;
  let x_441 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_445 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_447 : vec2<f32> = ((x_438 * vec2<f32>(x_441.x, x_441.y)) + vec2<f32>(x_445.z, x_445.w));
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
  let x_455 : vec4<f32> = u_xlat2;
  let x_457 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_455.x, x_455.y));
  let x_458 : vec3<f32> = vec3<f32>(x_457.x, x_457.y, x_457.z);
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat0;
  let x_465 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_466 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat2;
  let x_471 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_473 : vec3<f32> = (vec3<f32>(x_468.x, x_468.y, x_468.z) * vec3<f32>(x_471.z, x_471.z, x_471.z));
  let x_474 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_476 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_479 : vec4<f32> = u_xlat0;
  let x_483 : vec3<f32> = x_51.x_Bloom_Color;
  let x_484 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) * x_483);
  let x_485 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_488 : f32 = u_xlat0.w;
  u_xlat4.w = (x_488 * 0.0625f);
  let x_491 : vec4<f32> = u_xlat1;
  let x_492 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_491 + x_492);
  let x_494 : vec4<f32> = u_xlat3;
  let x_496 : vec4<f32> = u_xlat2;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  u_xlat1.w = 0.0f;
  let x_502 : vec4<f32> = u_xlat0;
  let x_503 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_502 + x_503);
  let x_509 : f32 = x_51.x_Vignette_Mode;
  u_xlatb1 = (x_509 < 0.5f);
  let x_511 : bool = u_xlatb1;
  if (x_511) {
    let x_514 : vec2<f32> = vs_TEXCOORD0;
    let x_518 : vec2<f32> = x_51.x_Vignette_Center;
    let x_520 : vec2<f32> = (x_514 + -(x_518));
    let x_521 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
    let x_523 : vec4<f32> = u_xlat1;
    let x_528 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_530 : vec2<f32> = (abs(vec2<f32>(x_523.y, x_523.x)) * vec2<f32>(x_528.x, x_528.x));
    let x_531 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_531.x, x_530.x, x_530.y, x_531.w);
    let x_535 : f32 = x_51.x_ScreenParams.x;
    let x_537 : f32 = x_51.x_ScreenParams.y;
    u_xlat22 = (x_535 / x_537);
    let x_539 : f32 = u_xlat22;
    u_xlat22 = (x_539 + -1.0f);
    let x_542 : f32 = x_51.x_Vignette_Settings.w;
    let x_543 : f32 = u_xlat22;
    u_xlat22 = ((x_542 * x_543) + 1.0f);
    let x_546 : f32 = u_xlat22;
    let x_548 : f32 = u_xlat1.z;
    u_xlat1.x = (x_546 * x_548);
    let x_551 : vec4<f32> = u_xlat1;
    let x_552 : vec2<f32> = vec2<f32>(x_551.x, x_551.y);
    let x_553 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_552.x, x_552.y, x_553.z, x_553.w);
    let x_555 : vec4<f32> = u_xlat1;
    let x_559 : vec2<f32> = clamp(vec2<f32>(x_555.x, x_555.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_560 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
    let x_562 : vec4<f32> = u_xlat1;
    let x_564 : vec2<f32> = log2(vec2<f32>(x_562.x, x_562.y));
    let x_565 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
    let x_567 : vec4<f32> = u_xlat1;
    let x_570 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_572 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) * vec2<f32>(x_570.z, x_570.z));
    let x_573 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
    let x_575 : vec4<f32> = u_xlat1;
    let x_577 : vec2<f32> = exp2(vec2<f32>(x_575.x, x_575.y));
    let x_578 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
    let x_580 : vec4<f32> = u_xlat1;
    let x_582 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_580.x, x_580.y), vec2<f32>(x_582.x, x_582.y));
    let x_587 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_587) + 1.0f);
    let x_592 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_592, 0.0f);
    let x_596 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_596);
    let x_600 : f32 = u_xlat1.x;
    let x_602 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat1.x = (x_600 * x_602);
    let x_606 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_606);
    let x_611 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_611) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_615 : vec4<f32> = u_xlat1;
    let x_617 : vec3<f32> = u_xlat8;
    let x_620 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_615.x, x_615.x, x_615.x) * x_617) + x_620);
    let x_622 : vec4<f32> = u_xlat0;
    let x_624 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_622.x, x_622.y, x_622.z) * x_624);
    let x_627 : f32 = u_xlat0.w;
    u_xlat2.x = (x_627 + -1.0f);
    let x_633 : f32 = u_xlat1.x;
    let x_635 : f32 = u_xlat2.x;
    SV_Target0.w = ((x_633 * x_635) + 1.0f);
  } else {
    let x_646 : vec2<f32> = vs_TEXCOORD0;
    let x_647 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_646);
    u_xlat1.x = x_647.w;
    let x_651 : f32 = u_xlat1.x;
    u_xlat2.x = (x_651 * 0.077399381f);
    let x_657 : f32 = u_xlat1.x;
    u_xlat9 = (x_657 + 0.055f);
    let x_660 : f32 = u_xlat9;
    u_xlat9 = (x_660 * 0.947867334f);
    let x_663 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_663), 1.1920929e-07f);
    let x_667 : f32 = u_xlat9;
    u_xlat9 = log2(x_667);
    let x_669 : f32 = u_xlat9;
    u_xlat9 = (x_669 * 2.400000095f);
    let x_672 : f32 = u_xlat9;
    u_xlat9 = exp2(x_672);
    let x_676 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_676);
    let x_678 : bool = u_xlatb1;
    if (x_678) {
      let x_684 : f32 = u_xlat2.x;
      x_680 = x_684;
    } else {
      let x_686 : f32 = u_xlat9;
      x_680 = x_686;
    }
    let x_687 : f32 = x_680;
    u_xlat1.x = x_687;
    let x_690 : vec3<f32> = x_51.x_Vignette_Color;
    let x_692 : vec3<f32> = (-(x_690) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_693 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
    let x_695 : vec4<f32> = u_xlat1;
    let x_697 : vec4<f32> = u_xlat2;
    let x_701 : vec3<f32> = x_51.x_Vignette_Color;
    let x_702 : vec3<f32> = ((vec3<f32>(x_695.x, x_695.x, x_695.x) * vec3<f32>(x_697.x, x_697.y, x_697.z)) + x_701);
    let x_703 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
    let x_705 : vec4<f32> = u_xlat0;
    let x_707 : vec4<f32> = u_xlat2;
    let x_710 : vec4<f32> = u_xlat0;
    let x_713 : vec3<f32> = ((vec3<f32>(x_705.x, x_705.y, x_705.z) * vec3<f32>(x_707.x, x_707.y, x_707.z)) + -(vec3<f32>(x_710.x, x_710.y, x_710.z)));
    let x_714 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
    let x_718 : f32 = x_51.x_Vignette_Opacity;
    let x_720 : vec4<f32> = u_xlat2;
    let x_723 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_718, x_718, x_718) * vec3<f32>(x_720.x, x_720.y, x_720.z)) + vec3<f32>(x_723.x, x_723.y, x_723.z));
    let x_727 : f32 = u_xlat0.w;
    u_xlat0.x = (x_727 + -1.0f);
    let x_731 : f32 = u_xlat1.x;
    let x_733 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_731 * x_733) + 1.0f);
  }
  let x_738 : vec2<f32> = vs_TEXCOORD1;
  let x_741 : vec4<f32> = x_51.x_Grain_Params2;
  let x_745 : vec4<f32> = x_51.x_Grain_Params2;
  let x_747 : vec2<f32> = ((x_738 * vec2<f32>(x_741.x, x_741.y)) + vec2<f32>(x_745.z, x_745.w));
  let x_748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
  let x_755 : vec4<f32> = u_xlat0;
  let x_757 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_755.x, x_755.y));
  let x_758 : vec3<f32> = vec3<f32>(x_757.x, x_757.y, x_757.z);
  let x_759 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec3<f32> = u_xlat8;
  let x_762 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat2;
  let x_768 : vec3<f32> = clamp(vec3<f32>(x_764.x, x_764.y, x_764.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_769 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_771.x, x_771.y, x_771.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_778 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_778);
  let x_782 : f32 = x_51.x_Grain_Params1.x;
  let x_783 : f32 = u_xlat21;
  u_xlat21 = ((x_782 * -(x_783)) + 1.0f);
  let x_787 : vec4<f32> = u_xlat0;
  let x_789 : vec3<f32> = u_xlat8;
  let x_790 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) * x_789);
  let x_791 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat0;
  let x_796 : f32 = x_51.x_Grain_Params1.y;
  let x_798 : f32 = x_51.x_Grain_Params1.y;
  let x_800 : f32 = x_51.x_Grain_Params1.y;
  let x_802 : vec3<f32> = (vec3<f32>(x_793.x, x_793.y, x_793.z) * vec3<f32>(x_796, x_798, x_800));
  let x_803 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat0;
  let x_807 : f32 = u_xlat21;
  let x_810 : vec3<f32> = u_xlat8;
  let x_811 : vec3<f32> = ((vec3<f32>(x_805.x, x_805.y, x_805.z) * vec3<f32>(x_807, x_807, x_807)) + x_810);
  let x_812 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec2<f32> = vs_TEXCOORD0;
  let x_817 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_821 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_823 : vec2<f32> = ((x_814 * vec2<f32>(x_817.x, x_817.y)) + vec2<f32>(x_821.z, x_821.w));
  let x_824 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_823.x, x_823.y, x_824.z, x_824.w);
  let x_831 : vec4<f32> = u_xlat1;
  let x_833 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_831.x, x_831.y));
  u_xlat21 = x_833.w;
  let x_835 : f32 = u_xlat21;
  u_xlat21 = ((x_835 * 2.0f) + -1.0f);
  let x_838 : f32 = u_xlat21;
  u_xlat1.x = ((x_838 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_844 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_844, 0.0f, 1.0f);
  let x_848 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_848 * 2.0f) + -1.0f);
  let x_852 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_852)) + 1.0f);
  let x_856 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_856);
  let x_858 : f32 = u_xlat21;
  u_xlat21 = (-(x_858) + 1.0f);
  let x_861 : f32 = u_xlat21;
  let x_863 : f32 = u_xlat1.x;
  u_xlat21 = (x_861 * x_863);
  let x_865 : vec4<f32> = u_xlat0;
  let x_869 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_870 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec4<f32> = u_xlat0;
  let x_876 : vec3<f32> = max(abs(vec3<f32>(x_872.x, x_872.y, x_872.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_877 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat2;
  let x_881 : vec3<f32> = log2(vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat2;
  let x_888 : vec3<f32> = (vec3<f32>(x_884.x, x_884.y, x_884.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_889 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat2;
  let x_893 : vec3<f32> = exp2(vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_896 : vec4<f32> = u_xlat2;
  let x_903 : vec3<f32> = ((vec3<f32>(x_896.x, x_896.y, x_896.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_904 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_911 : vec4<f32> = u_xlat0;
  let x_914 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_911.x, x_911.y, x_911.z, x_911.x));
  u_xlatb0 = vec3<bool>(x_914.x, x_914.y, x_914.z);
  let x_917 : bool = u_xlatb0.x;
  if (x_917) {
    let x_922 : f32 = u_xlat1.x;
    x_918 = x_922;
  } else {
    let x_925 : f32 = u_xlat2.x;
    x_918 = x_925;
  }
  let x_926 : f32 = x_918;
  u_xlat0.x = x_926;
  let x_929 : bool = u_xlatb0.y;
  if (x_929) {
    let x_934 : f32 = u_xlat1.y;
    x_930 = x_934;
  } else {
    let x_937 : f32 = u_xlat2.y;
    x_930 = x_937;
  }
  let x_938 : f32 = x_930;
  u_xlat0.y = x_938;
  let x_941 : bool = u_xlatb0.z;
  if (x_941) {
    let x_946 : f32 = u_xlat1.z;
    x_942 = x_946;
  } else {
    let x_949 : f32 = u_xlat2.z;
    x_942 = x_949;
  }
  let x_950 : f32 = x_942;
  u_xlat0.z = x_950;
  let x_952 : f32 = u_xlat21;
  let x_957 : vec4<f32> = u_xlat0;
  let x_959 : vec3<f32> = ((vec3<f32>(x_952, x_952, x_952) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : vec4<f32> = u_xlat0;
  let x_965 : vec3<f32> = (vec3<f32>(x_962.x, x_962.y, x_962.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_966 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : vec4<f32> = u_xlat0;
  let x_971 : vec3<f32> = (vec3<f32>(x_968.x, x_968.y, x_968.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_972 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat2;
  let x_977 : vec3<f32> = (vec3<f32>(x_974.x, x_974.y, x_974.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_978 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat2;
  let x_983 : vec3<f32> = max(abs(vec3<f32>(x_980.x, x_980.y, x_980.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_984 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec4<f32> = u_xlat2;
  let x_988 : vec3<f32> = log2(vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_989 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec4<f32> = u_xlat2;
  let x_994 : vec3<f32> = (vec3<f32>(x_991.x, x_991.y, x_991.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_995 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat2;
  let x_999 : vec3<f32> = exp2(vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1003 : vec4<f32> = u_xlat0;
  let x_1005 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1003.x));
  u_xlatb0 = vec3<bool>(x_1005.x, x_1005.y, x_1005.z);
  let x_1008 : bool = u_xlatb0.x;
  if (x_1008) {
    let x_1013 : f32 = u_xlat1.x;
    x_1009 = x_1013;
  } else {
    let x_1016 : f32 = u_xlat2.x;
    x_1009 = x_1016;
  }
  let x_1017 : f32 = x_1009;
  SV_Target0.x = x_1017;
  let x_1020 : bool = u_xlatb0.y;
  if (x_1020) {
    let x_1025 : f32 = u_xlat1.y;
    x_1021 = x_1025;
  } else {
    let x_1028 : f32 = u_xlat2.y;
    x_1021 = x_1028;
  }
  let x_1029 : f32 = x_1021;
  SV_Target0.y = x_1029;
  let x_1032 : bool = u_xlatb0.z;
  if (x_1032) {
    let x_1037 : f32 = u_xlat1.z;
    x_1033 = x_1037;
  } else {
    let x_1040 : f32 = u_xlat2.z;
    x_1033 = x_1040;
  }
  let x_1041 : f32 = x_1033;
  SV_Target0.z = x_1041;
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

