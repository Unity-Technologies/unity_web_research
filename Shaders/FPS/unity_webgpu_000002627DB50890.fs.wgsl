struct PGlobals {
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
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_621 : f32;
  var x_633 : f32;
  var x_645 : f32;
  var x_719 : f32;
  var x_732 : f32;
  var x_744 : f32;
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
  let x_96 : i32 = u_xlati21;
  u_xlati21 = min(x_96, 16i);
  let x_99 : i32 = u_xlati21;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat7;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
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
  let x_128 : vec2<f32> = vs_TEXCOORD0;
  let x_129 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_128.x, x_128.y, x_129.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_139 : i32 = u_xlati_loop_1;
    let x_140 : i32 = u_xlati21;
    if ((x_139 < x_140)) {
    } else {
      break;
    }
    let x_144 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_144);
    let x_148 : f32 = u_xlat16.x;
    u_xlat16.x = (x_148 + 0.5f);
    let x_152 : f32 = u_xlat16.x;
    let x_154 : f32 = u_xlat1.x;
    u_xlat2.x = (x_152 / x_154);
    let x_157 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_157.x, x_157.y);
    let x_159 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_159, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_163 : vec2<f32> = u_xlat16;
    let x_165 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_163 * vec2<f32>(x_165, x_165));
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
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_204 / x_205);
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec4<f32> = u_xlat1;
  let x_211 : vec3<f32> = (vec3<f32>(x_207.x, x_207.x, x_207.x) * vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
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
  let x_505 : vec2<f32> = vs_TEXCOORD0;
  let x_507 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_511 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_513 : vec2<f32> = ((x_505 * vec2<f32>(x_507.x, x_507.y)) + vec2<f32>(x_511.z, x_511.w));
  let x_514 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_521.x, x_521.y));
  u_xlat1.x = x_523.w;
  let x_527 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_527 * 2.0f) + -1.0f);
  let x_532 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_532 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_538 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_538, 0.0f, 1.0f);
  let x_542 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_542 * 2.0f) + -1.0f);
  let x_547 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_547)) + 1.0f);
  let x_553 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_553);
  let x_557 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_557) + 1.0f);
  let x_562 : f32 = u_xlat1.x;
  let x_564 : f32 = u_xlat8.x;
  u_xlat1.x = (x_562 * x_564);
  let x_567 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_572 : vec4<f32> = u_xlat0;
  let x_577 : vec3<f32> = max(abs(vec3<f32>(x_572.x, x_572.y, x_572.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_578 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat2;
  let x_582 : vec3<f32> = log2(vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat2;
  let x_589 : vec3<f32> = (vec3<f32>(x_585.x, x_585.y, x_585.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_590 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat2;
  let x_594 : vec3<f32> = exp2(vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat2;
  let x_604 : vec3<f32> = ((vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_612 : vec4<f32> = u_xlat0;
  let x_615 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_612.x, x_612.y, x_612.z, x_612.x));
  u_xlatb0 = vec3<bool>(x_615.x, x_615.y, x_615.z);
  let x_619 : bool = u_xlatb0.x;
  if (x_619) {
    let x_625 : f32 = u_xlat8.x;
    x_621 = x_625;
  } else {
    let x_628 : f32 = u_xlat2.x;
    x_621 = x_628;
  }
  let x_629 : f32 = x_621;
  u_xlat0.x = x_629;
  let x_632 : bool = u_xlatb0.y;
  if (x_632) {
    let x_637 : f32 = u_xlat8.y;
    x_633 = x_637;
  } else {
    let x_640 : f32 = u_xlat2.y;
    x_633 = x_640;
  }
  let x_641 : f32 = x_633;
  u_xlat0.y = x_641;
  let x_644 : bool = u_xlatb0.z;
  if (x_644) {
    let x_649 : f32 = u_xlat8.z;
    x_645 = x_649;
  } else {
    let x_652 : f32 = u_xlat2.z;
    x_645 = x_652;
  }
  let x_653 : f32 = x_645;
  u_xlat0.z = x_653;
  let x_655 : vec4<f32> = u_xlat1;
  let x_660 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = ((vec3<f32>(x_655.x, x_655.x, x_655.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat0;
  let x_669 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_670 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec4<f32> = u_xlat0;
  let x_676 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_677 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat2;
  let x_683 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_684 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat2;
  let x_689 : vec3<f32> = max(abs(vec3<f32>(x_686.x, x_686.y, x_686.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_690 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat2;
  let x_694 : vec3<f32> = log2(vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat2;
  let x_701 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_702 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat2;
  let x_706 : vec3<f32> = exp2(vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_711 : vec4<f32> = u_xlat0;
  let x_713 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_711.x, x_711.y, x_711.z, x_711.x));
  u_xlatb0 = vec3<bool>(x_713.x, x_713.y, x_713.z);
  let x_718 : bool = u_xlatb0.x;
  if (x_718) {
    let x_723 : f32 = u_xlat1.x;
    x_719 = x_723;
  } else {
    let x_726 : f32 = u_xlat2.x;
    x_719 = x_726;
  }
  let x_727 : f32 = x_719;
  SV_Target0.x = x_727;
  let x_731 : bool = u_xlatb0.y;
  if (x_731) {
    let x_736 : f32 = u_xlat1.y;
    x_732 = x_736;
  } else {
    let x_739 : f32 = u_xlat2.y;
    x_732 = x_739;
  }
  let x_740 : f32 = x_732;
  SV_Target0.y = x_740;
  let x_743 : bool = u_xlatb0.z;
  if (x_743) {
    let x_748 : f32 = u_xlat1.z;
    x_744 = x_748;
  } else {
    let x_751 : f32 = u_xlat2.z;
    x_744 = x_751;
  }
  let x_752 : f32 = x_744;
  SV_Target0.z = x_752;
  let x_755 : f32 = u_xlat0.w;
  SV_Target0.w = x_755;
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

