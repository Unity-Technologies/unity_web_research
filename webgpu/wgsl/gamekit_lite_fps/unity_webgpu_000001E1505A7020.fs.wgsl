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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_AutoExposureTex : sampler;

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

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(9) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_GrainTex : sampler;

@group(0) @binding(7) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(16) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_677 : f32;
  var x_1011 : f32;
  var x_1023 : f32;
  var x_1035 : f32;
  var x_1104 : f32;
  var x_1117 : f32;
  var x_1129 : f32;
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
    let x_631 : f32 = u_xlat1.x;
    let x_633 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_631 * x_633) + 1.0f);
  } else {
    let x_643 : vec2<f32> = vs_TEXCOORD0;
    let x_644 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_643);
    u_xlat1.x = x_644.w;
    let x_648 : f32 = u_xlat1.x;
    u_xlat3.x = (x_648 * 0.077399381f);
    let x_654 : f32 = u_xlat1.x;
    u_xlat10 = (x_654 + 0.055f);
    let x_657 : f32 = u_xlat10;
    u_xlat10 = (x_657 * 0.947867334f);
    let x_660 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_660), 1.1920929e-07f);
    let x_664 : f32 = u_xlat10;
    u_xlat10 = log2(x_664);
    let x_666 : f32 = u_xlat10;
    u_xlat10 = (x_666 * 2.400000095f);
    let x_669 : f32 = u_xlat10;
    u_xlat10 = exp2(x_669);
    let x_673 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_673);
    let x_675 : bool = u_xlatb1;
    if (x_675) {
      let x_681 : f32 = u_xlat3.x;
      x_677 = x_681;
    } else {
      let x_683 : f32 = u_xlat10;
      x_677 = x_683;
    }
    let x_684 : f32 = x_677;
    u_xlat1.x = x_684;
    let x_687 : vec3<f32> = x_51.x_Vignette_Color;
    let x_689 : vec3<f32> = (-(x_687) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_690 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
    let x_692 : vec4<f32> = u_xlat1;
    let x_694 : vec4<f32> = u_xlat3;
    let x_698 : vec3<f32> = x_51.x_Vignette_Color;
    let x_699 : vec3<f32> = ((vec3<f32>(x_692.x, x_692.x, x_692.x) * vec3<f32>(x_694.x, x_694.y, x_694.z)) + x_698);
    let x_700 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
    let x_702 : vec4<f32> = u_xlat0;
    let x_704 : vec4<f32> = u_xlat3;
    let x_707 : vec4<f32> = u_xlat0;
    let x_710 : vec3<f32> = ((vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_704.x, x_704.y, x_704.z)) + -(vec3<f32>(x_707.x, x_707.y, x_707.z)));
    let x_711 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
    let x_715 : f32 = x_51.x_Vignette_Opacity;
    let x_717 : vec4<f32> = u_xlat3;
    let x_720 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_715, x_715, x_715) * vec3<f32>(x_717.x, x_717.y, x_717.z)) + vec3<f32>(x_720.x, x_720.y, x_720.z));
    let x_724 : f32 = u_xlat0.w;
    u_xlat0.x = (x_724 + -1.0f);
    let x_728 : f32 = u_xlat1.x;
    let x_730 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_728 * x_730) + 1.0f);
  }
  let x_735 : vec2<f32> = vs_TEXCOORD1;
  let x_738 : vec4<f32> = x_51.x_Grain_Params2;
  let x_742 : vec4<f32> = x_51.x_Grain_Params2;
  let x_744 : vec2<f32> = ((x_735 * vec2<f32>(x_738.x, x_738.y)) + vec2<f32>(x_742.z, x_742.w));
  let x_745 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
  let x_752 : vec4<f32> = u_xlat0;
  let x_754 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_752.x, x_752.y));
  let x_755 : vec3<f32> = vec3<f32>(x_754.x, x_754.y, x_754.z);
  let x_756 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec3<f32> = u_xlat8;
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat3;
  let x_765 : vec3<f32> = clamp(vec3<f32>(x_761.x, x_761.y, x_761.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_766 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_768.x, x_768.y, x_768.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_775 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_775);
  let x_778 : f32 = x_51.x_Grain_Params1.x;
  let x_779 : f32 = u_xlat21;
  u_xlat21 = ((x_778 * -(x_779)) + 1.0f);
  let x_783 : vec4<f32> = u_xlat0;
  let x_785 : vec3<f32> = u_xlat8;
  let x_786 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * x_785);
  let x_787 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat0;
  let x_792 : f32 = x_51.x_Grain_Params1.y;
  let x_794 : f32 = x_51.x_Grain_Params1.y;
  let x_796 : f32 = x_51.x_Grain_Params1.y;
  let x_798 : vec3<f32> = (vec3<f32>(x_789.x, x_789.y, x_789.z) * vec3<f32>(x_792, x_794, x_796));
  let x_799 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat0;
  let x_803 : f32 = u_xlat21;
  let x_806 : vec3<f32> = u_xlat8;
  let x_807 : vec3<f32> = ((vec3<f32>(x_801.x, x_801.y, x_801.z) * vec3<f32>(x_803, x_803, x_803)) + x_806);
  let x_808 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat2;
  let x_813 : f32 = x_51.x_PostExposure;
  let x_815 : f32 = x_51.x_PostExposure;
  let x_817 : f32 = x_51.x_PostExposure;
  let x_819 : f32 = x_51.x_PostExposure;
  let x_820 : vec4<f32> = vec4<f32>(x_813, x_815, x_817, x_819);
  u_xlat0 = (x_810 * vec4<f32>(x_820.x, x_820.y, x_820.z, x_820.w));
  let x_827 : vec4<f32> = u_xlat0;
  let x_834 : vec3<f32> = ((vec3<f32>(x_827.x, x_827.y, x_827.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_835 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat0;
  let x_839 : vec3<f32> = log2(vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat0;
  let x_849 : vec3<f32> = ((vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_850 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat0;
  let x_856 : vec3<f32> = clamp(vec3<f32>(x_852.x, x_852.y, x_852.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat0;
  let x_863 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_865 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) * vec3<f32>(x_863.y, x_863.y, x_863.y));
  let x_866 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_869 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat1.x = (x_869 * 0.5f);
  let x_872 : vec4<f32> = u_xlat0;
  let x_875 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_878 : vec4<f32> = u_xlat1;
  let x_880 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.y, x_872.z) * vec3<f32>(x_875.x, x_875.x, x_875.x)) + vec3<f32>(x_878.x, x_878.x, x_878.x));
  let x_881 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_891 : vec4<f32> = u_xlat0;
  let x_893 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : vec3<f32> = vec3<f32>(x_893.x, x_893.y, x_893.z);
  let x_895 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec2<f32> = vs_TEXCOORD0;
  let x_900 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_904 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_906 : vec2<f32> = ((x_897 * vec2<f32>(x_900.x, x_900.y)) + vec2<f32>(x_904.z, x_904.w));
  let x_907 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
  let x_914 : vec4<f32> = u_xlat1;
  let x_916 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_914.x, x_914.y));
  u_xlat1.x = x_916.w;
  let x_920 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_920 * 2.0f) + -1.0f);
  let x_925 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_925 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_931 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_931, 0.0f, 1.0f);
  let x_935 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_935 * 2.0f) + -1.0f);
  let x_940 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_940)) + 1.0f);
  let x_946 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_946);
  let x_950 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_950) + 1.0f);
  let x_955 : f32 = u_xlat1.x;
  let x_957 : f32 = u_xlat8.x;
  u_xlat1.x = (x_955 * x_957);
  let x_960 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_960.x, x_960.y, x_960.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_965 : vec4<f32> = u_xlat0;
  let x_969 : vec3<f32> = max(abs(vec3<f32>(x_965.x, x_965.y, x_965.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_970 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_972 : vec4<f32> = u_xlat2;
  let x_974 : vec3<f32> = log2(vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : vec4<f32> = u_xlat2;
  let x_981 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_982 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec4<f32> = u_xlat2;
  let x_986 : vec3<f32> = exp2(vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_987 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : vec4<f32> = u_xlat2;
  let x_996 : vec3<f32> = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_997 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_1004 : vec4<f32> = u_xlat0;
  let x_1007 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1004.x));
  u_xlatb0 = vec3<bool>(x_1007.x, x_1007.y, x_1007.z);
  let x_1010 : bool = u_xlatb0.x;
  if (x_1010) {
    let x_1015 : f32 = u_xlat8.x;
    x_1011 = x_1015;
  } else {
    let x_1018 : f32 = u_xlat2.x;
    x_1011 = x_1018;
  }
  let x_1019 : f32 = x_1011;
  u_xlat0.x = x_1019;
  let x_1022 : bool = u_xlatb0.y;
  if (x_1022) {
    let x_1027 : f32 = u_xlat8.y;
    x_1023 = x_1027;
  } else {
    let x_1030 : f32 = u_xlat2.y;
    x_1023 = x_1030;
  }
  let x_1031 : f32 = x_1023;
  u_xlat0.y = x_1031;
  let x_1034 : bool = u_xlatb0.z;
  if (x_1034) {
    let x_1039 : f32 = u_xlat8.z;
    x_1035 = x_1039;
  } else {
    let x_1042 : f32 = u_xlat2.z;
    x_1035 = x_1042;
  }
  let x_1043 : f32 = x_1035;
  u_xlat0.z = x_1043;
  let x_1045 : vec4<f32> = u_xlat1;
  let x_1050 : vec4<f32> = u_xlat0;
  let x_1052 : vec3<f32> = ((vec3<f32>(x_1045.x, x_1045.x, x_1045.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1053 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat0;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1059 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec4<f32> = u_xlat0;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.y, x_1061.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1065 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1067 : vec4<f32> = u_xlat2;
  let x_1070 : vec3<f32> = (vec3<f32>(x_1067.x, x_1067.y, x_1067.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1071 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec4<f32> = u_xlat2;
  let x_1076 : vec3<f32> = max(abs(vec3<f32>(x_1073.x, x_1073.y, x_1073.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1077 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : vec4<f32> = u_xlat2;
  let x_1081 : vec3<f32> = log2(vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  let x_1084 : vec4<f32> = u_xlat2;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1088 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat2;
  let x_1092 : vec3<f32> = exp2(vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1096 : vec4<f32> = u_xlat0;
  let x_1098 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1096.x));
  u_xlatb0 = vec3<bool>(x_1098.x, x_1098.y, x_1098.z);
  let x_1103 : bool = u_xlatb0.x;
  if (x_1103) {
    let x_1108 : f32 = u_xlat1.x;
    x_1104 = x_1108;
  } else {
    let x_1111 : f32 = u_xlat2.x;
    x_1104 = x_1111;
  }
  let x_1112 : f32 = x_1104;
  SV_Target0.x = x_1112;
  let x_1116 : bool = u_xlatb0.y;
  if (x_1116) {
    let x_1121 : f32 = u_xlat1.y;
    x_1117 = x_1121;
  } else {
    let x_1124 : f32 = u_xlat2.y;
    x_1117 = x_1124;
  }
  let x_1125 : f32 = x_1117;
  SV_Target0.y = x_1125;
  let x_1128 : bool = u_xlatb0.z;
  if (x_1128) {
    let x_1133 : f32 = u_xlat1.z;
    x_1129 = x_1133;
  } else {
    let x_1136 : f32 = u_xlat2.z;
    x_1129 = x_1136;
  }
  let x_1137 : f32 = x_1129;
  SV_Target0.z = x_1137;
  let x_1140 : f32 = u_xlat0.w;
  SV_Target0.w = x_1140;
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

