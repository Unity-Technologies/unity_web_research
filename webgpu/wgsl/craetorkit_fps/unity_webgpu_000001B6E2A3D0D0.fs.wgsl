struct PGlobals {
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
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat7 : vec2<f32>;
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
  var u_xlatb4 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_434 : f32;
  var x_446 : f32;
  var x_458 : f32;
  var u_xlat15 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_606 : f32;
  var x_618 : f32;
  var x_630 : f32;
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
  let x_130 : vec2<f32> = vs_TEXCOORD0;
  let x_131 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_140 : i32 = u_xlati_loop_1;
    let x_141 : i32 = u_xlati21;
    if ((x_140 < x_141)) {
    } else {
      break;
    }
    let x_145 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_145);
    let x_149 : f32 = u_xlat6.x;
    u_xlat6.x = (x_149 + 0.5f);
    let x_153 : f32 = u_xlat6.x;
    let x_155 : f32 = u_xlat1.x;
    u_xlat2.x = (x_153 / x_155);
    let x_158 : vec3<f32> = u_xlat8;
    let x_159 : vec2<f32> = vec2<f32>(x_158.x, x_158.y);
    let x_160 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_160.w);
    let x_162 : vec4<f32> = u_xlat6;
    let x_166 : vec2<f32> = clamp(vec2<f32>(x_162.x, x_162.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_167 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_166.x, x_166.y, x_167.z, x_167.w);
    let x_169 : vec4<f32> = u_xlat6;
    let x_172 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_174 : vec2<f32> = (vec2<f32>(x_169.x, x_169.y) * vec2<f32>(x_172, x_172));
    let x_175 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
    let x_182 : vec4<f32> = u_xlat6;
    let x_184 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_182.x, x_182.y), 0.0f);
    u_xlat6 = x_184;
    let x_190 : vec3<f32> = u_xlat2;
    let x_192 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_190.x, x_190.y), 0.0f);
    let x_193 : vec3<f32> = vec3<f32>(x_192.x, x_192.y, x_192.z);
    let x_194 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_196 : vec4<f32> = u_xlat6;
    let x_197 : vec4<f32> = u_xlat3;
    let x_199 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_196 * x_197) + x_199);
    let x_201 : vec4<f32> = u_xlat3;
    let x_202 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_201 + x_202);
    let x_204 : vec2<f32> = u_xlat7;
    let x_205 : vec3<f32> = u_xlat8;
    let x_207 : vec2<f32> = (x_204 + vec2<f32>(x_205.x, x_205.y));
    let x_208 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_207.x, x_207.y, x_208.z);

    continuing {
      let x_210 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_210 + 1i);
    }
  }
  let x_212 : vec4<f32> = u_xlat4;
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_212 / x_213);
  let x_215 : vec4<f32> = u_xlat0;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.x, x_215.x) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_224 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_224.x, x_224.y, x_224.x, x_224.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_230 : f32 = x_51.x_Bloom_Settings.x;
  u_xlat2.x = (x_230 * 0.5f);
  let x_233 : vec4<f32> = u_xlat0;
  let x_235 : vec3<f32> = u_xlat2;
  let x_238 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_233.x, x_233.y, x_233.z, x_233.y) * vec4<f32>(x_235.x, x_235.x, x_235.x, x_235.x)) + vec4<f32>(x_238.x, x_238.y, x_238.x, x_238.y));
  let x_241 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_241, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_245 * vec4<f32>(x_247, x_247, x_247, x_247));
  let x_255 : vec4<f32> = u_xlat3;
  let x_257 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_255.x, x_255.y));
  u_xlat4 = x_257;
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_261.z, x_261.w));
  u_xlat3 = x_263;
  let x_264 : vec4<f32> = u_xlat3;
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_264 + x_265);
  let x_267 : vec4<f32> = u_xlat0;
  let x_269 : vec3<f32> = u_xlat2;
  let x_272 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_267.x, x_267.w, x_267.z, x_267.w) * vec4<f32>(x_269.x, x_269.x, x_269.x, x_269.x)) + vec4<f32>(x_272.x, x_272.y, x_272.x, x_272.y));
  let x_275 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_275, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_279 : vec4<f32> = u_xlat0;
  let x_281 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat0 = (x_279 * vec4<f32>(x_281, x_281, x_281, x_281));
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_287.x, x_287.y));
  u_xlat4 = x_289;
  let x_290 : vec4<f32> = u_xlat3;
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_290 + x_291);
  let x_296 : vec4<f32> = u_xlat0;
  let x_298 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_296.z, x_296.w));
  u_xlat0 = x_298;
  let x_299 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_299 + x_300);
  let x_302 : vec4<f32> = u_xlat0;
  let x_305 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_302 * vec4<f32>(x_305.y, x_305.y, x_305.y, x_305.y));
  let x_308 : vec2<f32> = vs_TEXCOORD0;
  let x_310 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_314 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_316 : vec2<f32> = ((x_308 * vec2<f32>(x_310.x, x_310.y)) + vec2<f32>(x_314.z, x_314.w));
  let x_317 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_316.x, x_316.y, x_317.z);
  let x_324 : vec3<f32> = u_xlat2;
  let x_326 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_324.x, x_324.y));
  let x_327 : vec3<f32> = vec3<f32>(x_326.x, x_326.y, x_326.z);
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat0;
  let x_334 : vec3<f32> = (vec3<f32>(x_330.x, x_330.y, x_330.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_342 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_340.z, x_340.z, x_340.z));
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_345 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_348 : vec4<f32> = u_xlat0;
  let x_352 : vec3<f32> = x_51.x_Bloom_Color;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) * x_352);
  let x_354 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : f32 = u_xlat0.w;
  u_xlat5.w = (x_357 * 0.25f);
  let x_360 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_360 + x_361);
  let x_363 : vec4<f32> = u_xlat4;
  let x_365 : vec4<f32> = u_xlat3;
  let x_367 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  u_xlat1.w = 0.0f;
  let x_371 : vec4<f32> = u_xlat0;
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_371 + x_372);
  let x_374 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_374, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_378 : vec4<f32> = u_xlat0;
  let x_382 : vec3<f32> = (vec3<f32>(x_378.z, x_378.x, x_378.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat0;
  let x_389 : vec3<f32> = max(vec3<f32>(x_385.z, x_385.x, x_385.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = log2(vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat3;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_402 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat3;
  let x_406 : vec3<f32> = exp2(vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat3;
  let x_416 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_417 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_424 : vec4<f32> = u_xlat0;
  let x_427 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_424.z, x_424.x, x_424.y, x_424.z));
  u_xlatb4 = vec3<bool>(x_427.x, x_427.y, x_427.z);
  let x_430 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_430;
  let x_433 : bool = u_xlatb4.x;
  if (x_433) {
    let x_438 : f32 = u_xlat1.x;
    x_434 = x_438;
  } else {
    let x_441 : f32 = u_xlat3.x;
    x_434 = x_441;
  }
  let x_442 : f32 = x_434;
  hlslcc_movcTemp.x = x_442;
  let x_445 : bool = u_xlatb4.y;
  if (x_445) {
    let x_450 : f32 = u_xlat1.y;
    x_446 = x_450;
  } else {
    let x_453 : f32 = u_xlat3.y;
    x_446 = x_453;
  }
  let x_454 : f32 = x_446;
  hlslcc_movcTemp.y = x_454;
  let x_457 : bool = u_xlatb4.z;
  if (x_457) {
    let x_462 : f32 = u_xlat1.z;
    x_458 = x_462;
  } else {
    let x_465 : f32 = u_xlat3.z;
    x_458 = x_465;
  }
  let x_466 : f32 = x_458;
  hlslcc_movcTemp.z = x_466;
  let x_468 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_468;
  let x_469 : vec4<f32> = u_xlat1;
  let x_473 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_473.z, x_473.z, x_473.z));
  let x_477 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_477);
  let x_481 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_483 : vec2<f32> = (vec2<f32>(x_481.x, x_481.y) * vec2<f32>(0.5f, 0.5f));
  let x_484 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_483.x, x_483.y, x_484.z);
  let x_486 : vec3<f32> = u_xlat8;
  let x_489 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_492 : vec3<f32> = u_xlat2;
  let x_494 : vec2<f32> = ((vec2<f32>(x_486.y, x_486.z) * vec2<f32>(x_489.x, x_489.y)) + vec2<f32>(x_492.x, x_492.y));
  let x_495 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_495.x, x_494.x, x_494.y, x_495.w);
  let x_498 : f32 = u_xlat8.x;
  let x_500 : f32 = x_51.x_Lut2D_Params.y;
  let x_503 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_498 * x_500) + x_503);
  let x_511 : vec4<f32> = u_xlat3;
  let x_513 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_511.x, x_511.z));
  let x_514 : vec3<f32> = vec3<f32>(x_513.x, x_513.y, x_513.z);
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_518;
  let x_521 : vec2<f32> = u_xlat16;
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_521 + vec2<f32>(x_522.x, x_522.z));
  let x_528 : vec2<f32> = u_xlat15;
  let x_529 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_528);
  u_xlat2 = vec3<f32>(x_529.x, x_529.y, x_529.z);
  let x_532 : f32 = u_xlat1.x;
  let x_534 : f32 = x_51.x_Lut2D_Params.z;
  let x_537 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_532 * x_534) + -(x_537));
  let x_541 : vec4<f32> = u_xlat4;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_541.x, x_541.y, x_541.z)) + x_544);
  let x_546 : vec4<f32> = u_xlat1;
  let x_548 : vec3<f32> = u_xlat8;
  let x_550 : vec4<f32> = u_xlat4;
  let x_552 : vec3<f32> = ((vec3<f32>(x_546.x, x_546.x, x_546.x) * x_548) + vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_555.x, x_555.y, x_555.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_560 : vec4<f32> = u_xlat1;
  let x_564 : vec3<f32> = (vec3<f32>(x_560.x, x_560.y, x_560.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_565 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat3;
  let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_572 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat3;
  let x_577 : vec3<f32> = max(abs(vec3<f32>(x_574.x, x_574.y, x_574.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_578 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat3;
  let x_582 : vec3<f32> = log2(vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat3;
  let x_589 : vec3<f32> = (vec3<f32>(x_585.x, x_585.y, x_585.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_590 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat3;
  let x_594 : vec3<f32> = exp2(vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_600 : vec4<f32> = u_xlat1;
  let x_602 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_600.x, x_600.y, x_600.z, x_600.x));
  u_xlatb1 = vec3<bool>(x_602.x, x_602.y, x_602.z);
  let x_605 : bool = u_xlatb1.x;
  if (x_605) {
    let x_610 : f32 = u_xlat2.x;
    x_606 = x_610;
  } else {
    let x_613 : f32 = u_xlat3.x;
    x_606 = x_613;
  }
  let x_614 : f32 = x_606;
  u_xlat0.x = x_614;
  let x_617 : bool = u_xlatb1.y;
  if (x_617) {
    let x_622 : f32 = u_xlat2.y;
    x_618 = x_622;
  } else {
    let x_625 : f32 = u_xlat3.y;
    x_618 = x_625;
  }
  let x_626 : f32 = x_618;
  u_xlat0.y = x_626;
  let x_629 : bool = u_xlatb1.z;
  if (x_629) {
    let x_634 : f32 = u_xlat2.z;
    x_630 = x_634;
  } else {
    let x_637 : f32 = u_xlat3.z;
    x_630 = x_637;
  }
  let x_638 : f32 = x_630;
  u_xlat0.z = x_638;
  let x_642 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_642);
  let x_646 : bool = u_xlatb1.x;
  if (x_646) {
    let x_649 : vec4<f32> = u_xlat0;
    let x_650 : vec3<f32> = vec3<f32>(x_649.x, x_649.y, x_649.z);
    let x_651 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
    let x_653 : vec4<f32> = u_xlat1;
    let x_657 : vec3<f32> = clamp(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_658 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
    let x_660 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_660.x, x_660.y, x_660.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_670 : vec4<f32> = u_xlat0;
  SV_Target0 = x_670;
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

