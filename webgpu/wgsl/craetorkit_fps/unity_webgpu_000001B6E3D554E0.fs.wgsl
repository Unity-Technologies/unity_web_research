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
  x_PostExposure : f32,
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
  var u_xlat15 : vec2<f32>;
  var u_xlatb1 : bool;
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
  let x_377 : f32 = x_51.x_PostExposure;
  let x_379 : f32 = x_51.x_PostExposure;
  let x_381 : f32 = x_51.x_PostExposure;
  let x_383 : f32 = x_51.x_PostExposure;
  let x_384 : vec4<f32> = vec4<f32>(x_377, x_379, x_381, x_383);
  u_xlat0 = (x_374 * vec4<f32>(x_384.x, x_384.y, x_384.z, x_384.w));
  let x_391 : vec4<f32> = u_xlat0;
  let x_398 : vec3<f32> = ((vec3<f32>(x_391.z, x_391.x, x_391.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_399 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat1;
  let x_403 : vec3<f32> = log2(vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat1;
  let x_413 : vec3<f32> = ((vec3<f32>(x_406.x, x_406.y, x_406.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat1;
  let x_420 : vec3<f32> = clamp(vec3<f32>(x_416.x, x_416.y, x_416.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_427.z, x_427.z, x_427.z));
  let x_431 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_431);
  let x_435 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_437 : vec2<f32> = (vec2<f32>(x_435.x, x_435.y) * vec2<f32>(0.5f, 0.5f));
  let x_438 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_437.x, x_437.y, x_438.z);
  let x_440 : vec3<f32> = u_xlat8;
  let x_443 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_446 : vec3<f32> = u_xlat2;
  let x_448 : vec2<f32> = ((vec2<f32>(x_440.y, x_440.z) * vec2<f32>(x_443.x, x_443.y)) + vec2<f32>(x_446.x, x_446.y));
  let x_449 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_449.x, x_448.x, x_448.y, x_449.w);
  let x_452 : f32 = u_xlat8.x;
  let x_454 : f32 = x_51.x_Lut2D_Params.y;
  let x_457 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_452 * x_454) + x_457);
  let x_465 : vec4<f32> = u_xlat3;
  let x_467 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_465.x, x_465.z));
  let x_468 : vec3<f32> = vec3<f32>(x_467.x, x_467.y, x_467.z);
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_472;
  let x_475 : vec2<f32> = u_xlat16;
  let x_476 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_475 + vec2<f32>(x_476.x, x_476.z));
  let x_482 : vec2<f32> = u_xlat15;
  let x_483 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_482);
  u_xlat2 = vec3<f32>(x_483.x, x_483.y, x_483.z);
  let x_486 : f32 = u_xlat1.x;
  let x_488 : f32 = x_51.x_Lut2D_Params.z;
  let x_491 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_486 * x_488) + -(x_491));
  let x_495 : vec4<f32> = u_xlat4;
  let x_498 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_495.x, x_495.y, x_495.z)) + x_498);
  let x_500 : vec4<f32> = u_xlat1;
  let x_502 : vec3<f32> = u_xlat8;
  let x_504 : vec4<f32> = u_xlat4;
  let x_506 : vec3<f32> = ((vec3<f32>(x_500.x, x_500.x, x_500.x) * x_502) + vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_513 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_513);
  let x_515 : bool = u_xlatb1;
  if (x_515) {
    let x_518 : vec4<f32> = u_xlat0;
    let x_519 : vec3<f32> = vec3<f32>(x_518.x, x_518.y, x_518.z);
    let x_520 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
    let x_522 : vec4<f32> = u_xlat1;
    let x_526 : vec3<f32> = clamp(vec3<f32>(x_522.x, x_522.y, x_522.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_527 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
    let x_529 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_529.x, x_529.y, x_529.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_539 : vec4<f32> = u_xlat0;
  SV_Target0 = x_539;
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

