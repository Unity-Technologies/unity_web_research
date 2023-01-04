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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

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

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(13) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_681 : f32;
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
    let x_166 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_163 * vec2<f32>(x_166, x_166));
    let x_175 : vec2<f32> = u_xlat16;
    let x_176 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_175, 0.0f);
    u_xlat6 = x_176;
    let x_182 : vec4<f32> = u_xlat2;
    let x_184 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_182.x, x_182.y), 0.0f);
    let x_185 : vec3<f32> = vec3<f32>(x_184.x, x_184.y, x_184.z);
    let x_186 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
    let x_188 : vec4<f32> = u_xlat6;
    let x_189 : vec4<f32> = u_xlat3;
    let x_191 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_188 * x_189) + x_191);
    let x_193 : vec4<f32> = u_xlat3;
    let x_194 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_193 + x_194);
    let x_196 : vec2<f32> = u_xlat7;
    let x_197 : vec3<f32> = u_xlat8;
    let x_199 : vec2<f32> = (x_196 + vec2<f32>(x_197.x, x_197.y));
    let x_200 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_199.x, x_199.y, x_200.z);

    continuing {
      let x_202 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_202 + 1i);
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
    let x_625 : vec3<f32> = (vec3<f32>(x_622.x, x_622.y, x_622.z) * x_624);
    let x_626 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
    let x_629 : f32 = u_xlat0.w;
    u_xlat8.x = (x_629 + -1.0f);
    let x_633 : f32 = u_xlat1.x;
    let x_635 : f32 = u_xlat8.x;
    u_xlat2.w = ((x_633 * x_635) + 1.0f);
  } else {
    let x_645 : vec2<f32> = vs_TEXCOORD0;
    let x_646 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_645);
    u_xlat1.x = x_646.w;
    let x_650 : f32 = u_xlat1.x;
    u_xlat1.z = (x_650 + 0.055f);
    let x_654 : vec4<f32> = u_xlat1;
    let x_659 : vec2<f32> = (vec2<f32>(x_654.x, x_654.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_660 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_659.x, x_659.y, x_660.z);
    let x_664 : f32 = u_xlat8.y;
    u_xlat15 = max(abs(x_664), 1.1920929e-07f);
    let x_668 : f32 = u_xlat15;
    u_xlat15 = log2(x_668);
    let x_670 : f32 = u_xlat15;
    u_xlat15 = (x_670 * 2.400000095f);
    let x_673 : f32 = u_xlat15;
    u_xlat15 = exp2(x_673);
    let x_677 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_677);
    let x_679 : bool = u_xlatb1;
    if (x_679) {
      let x_685 : f32 = u_xlat8.x;
      x_681 = x_685;
    } else {
      let x_687 : f32 = u_xlat15;
      x_681 = x_687;
    }
    let x_688 : f32 = x_681;
    u_xlat1.x = x_688;
    let x_691 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_691) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_694 : vec4<f32> = u_xlat1;
    let x_696 : vec3<f32> = u_xlat8;
    let x_699 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_694.x, x_694.x, x_694.x) * x_696) + x_699);
    let x_701 : vec4<f32> = u_xlat0;
    let x_703 : vec3<f32> = u_xlat8;
    let x_705 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_701.x, x_701.y, x_701.z) * x_703) + -(vec3<f32>(x_705.x, x_705.y, x_705.z)));
    let x_711 : f32 = x_51.x_Vignette_Opacity;
    let x_713 : vec3<f32> = u_xlat8;
    let x_715 : vec4<f32> = u_xlat0;
    let x_717 : vec3<f32> = ((vec3<f32>(x_711, x_711, x_711) * x_713) + vec3<f32>(x_715.x, x_715.y, x_715.z));
    let x_718 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
    let x_721 : f32 = u_xlat0.w;
    u_xlat0.x = (x_721 + -1.0f);
    let x_725 : f32 = u_xlat1.x;
    let x_727 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_725 * x_727) + 1.0f);
  }
  let x_731 : vec4<f32> = u_xlat2;
  let x_735 : f32 = x_51.x_PostExposure;
  let x_737 : f32 = x_51.x_PostExposure;
  let x_739 : f32 = x_51.x_PostExposure;
  let x_741 : f32 = x_51.x_PostExposure;
  let x_742 : vec4<f32> = vec4<f32>(x_735, x_737, x_739, x_741);
  u_xlat0 = (vec4<f32>(x_731.w, x_731.x, x_731.y, x_731.z) * vec4<f32>(x_742.x, x_742.y, x_742.z, x_742.w));
  let x_749 : vec4<f32> = u_xlat0;
  let x_756 : vec3<f32> = ((vec3<f32>(x_749.y, x_749.z, x_749.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_757 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_759 : vec4<f32> = u_xlat1;
  let x_761 : vec3<f32> = log2(vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat1;
  let x_771 : vec3<f32> = ((vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_772 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat1;
  let x_778 : vec3<f32> = clamp(vec3<f32>(x_774.x, x_774.y, x_774.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_779 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : vec4<f32> = u_xlat1;
  let x_785 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_787 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) * vec3<f32>(x_785.y, x_785.y, x_785.y));
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_791 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat22 = (x_791 * 0.5f);
  let x_793 : vec4<f32> = u_xlat1;
  let x_796 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_799 : f32 = u_xlat22;
  let x_801 : vec3<f32> = ((vec3<f32>(x_793.x, x_793.y, x_793.z) * vec3<f32>(x_796.x, x_796.x, x_796.x)) + vec3<f32>(x_799, x_799, x_799));
  let x_802 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_812 : vec4<f32> = u_xlat1;
  let x_814 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : vec3<f32> = vec3<f32>(x_814.x, x_814.y, x_814.z);
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_816.x, x_815.x, x_815.y, x_815.z);
  let x_820 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_820);
  let x_822 : bool = u_xlatb1;
  if (x_822) {
    let x_825 : vec4<f32> = u_xlat0;
    let x_826 : vec3<f32> = vec3<f32>(x_825.y, x_825.z, x_825.w);
    let x_827 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
    let x_829 : vec4<f32> = u_xlat1;
    let x_833 : vec3<f32> = clamp(vec3<f32>(x_829.x, x_829.y, x_829.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_834 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
    let x_836 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_836.x, x_836.y, x_836.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_846 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_846.y, x_846.z, x_846.w, x_846.x);
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

