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
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_613 : f32;
  var x_625 : f32;
  var x_637 : f32;
  var x_694 : f32;
  var x_707 : f32;
  var x_719 : f32;
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
  let x_213 : vec4<f32> = u_xlat4;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_213 / x_214);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = (vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
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
  let x_311 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_315 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_317 : vec2<f32> = ((x_308 * vec2<f32>(x_311.x, x_311.y)) + vec2<f32>(x_315.z, x_315.w));
  let x_318 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_317.x, x_317.y, x_318.z);
  let x_325 : vec3<f32> = u_xlat2;
  let x_327 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_325.x, x_325.y));
  let x_328 : vec3<f32> = vec3<f32>(x_327.x, x_327.y, x_327.z);
  let x_329 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_331 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_335 : vec4<f32> = u_xlat3;
  let x_338 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_338.z, x_338.z, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  u_xlat3.w = 0.0f;
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_344 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_347 : vec4<f32> = u_xlat0;
  let x_351 : vec3<f32> = x_51.x_Bloom_Color;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) * x_351);
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : f32 = u_xlat0.w;
  u_xlat5.w = (x_356 * 0.25f);
  let x_359 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_359 + x_360);
  let x_362 : vec4<f32> = u_xlat3;
  let x_363 : vec4<f32> = u_xlat4;
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_362 * x_363) + x_365);
  let x_367 : vec4<f32> = u_xlat0;
  let x_370 : f32 = x_51.x_PostExposure;
  let x_372 : f32 = x_51.x_PostExposure;
  let x_374 : f32 = x_51.x_PostExposure;
  let x_376 : f32 = x_51.x_PostExposure;
  let x_377 : vec4<f32> = vec4<f32>(x_370, x_372, x_374, x_376);
  u_xlat0 = (x_367 * vec4<f32>(x_377.x, x_377.y, x_377.z, x_377.w));
  let x_384 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384.z, x_384.x, x_384.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat0;
  let x_396 : vec3<f32> = log2(vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat0;
  let x_406 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = clamp(vec3<f32>(x_409.x, x_409.y, x_409.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat0;
  let x_420 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_422 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_420.z, x_420.z, x_420.z));
  let x_423 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_426 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_426);
  let x_430 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_432 : vec2<f32> = (vec2<f32>(x_430.x, x_430.y) * vec2<f32>(0.5f, 0.5f));
  let x_433 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_432.x, x_433.y, x_433.z, x_432.y);
  let x_435 : vec4<f32> = u_xlat1;
  let x_438 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_441 : vec4<f32> = u_xlat1;
  let x_443 : vec2<f32> = ((vec2<f32>(x_435.y, x_435.z) * vec2<f32>(x_438.x, x_438.y)) + vec2<f32>(x_441.x, x_441.w));
  let x_444 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_444.x, x_443.x, x_443.y, x_444.w);
  let x_447 : f32 = u_xlat7.x;
  let x_449 : f32 = x_51.x_Lut2D_Params.y;
  let x_452 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_447 * x_449) + x_452);
  let x_460 : vec4<f32> = u_xlat1;
  let x_462 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_460.x, x_460.z));
  let x_463 : vec3<f32> = vec3<f32>(x_462.x, x_462.y, x_462.z);
  let x_464 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_467;
  let x_469 : vec2<f32> = u_xlat16;
  let x_470 : vec4<f32> = u_xlat1;
  let x_472 : vec2<f32> = (x_469 + vec2<f32>(x_470.x, x_470.z));
  let x_473 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_472.x, x_472.y, x_473.z, x_473.w);
  let x_478 : vec4<f32> = u_xlat1;
  let x_480 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_478.x, x_478.y));
  let x_481 : vec3<f32> = vec3<f32>(x_480.x, x_480.y, x_480.z);
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : f32 = u_xlat0.x;
  let x_487 : f32 = x_51.x_Lut2D_Params.z;
  let x_490 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_485 * x_487) + -(x_490));
  let x_494 : vec4<f32> = u_xlat3;
  let x_497 : vec4<f32> = u_xlat1;
  let x_499 : vec3<f32> = (-(vec3<f32>(x_494.x, x_494.y, x_494.z)) + vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat0;
  let x_504 : vec4<f32> = u_xlat1;
  let x_507 : vec4<f32> = u_xlat3;
  let x_509 : vec3<f32> = ((vec3<f32>(x_502.x, x_502.x, x_502.x) * vec3<f32>(x_504.x, x_504.y, x_504.z)) + vec3<f32>(x_507.x, x_507.y, x_507.z));
  let x_510 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec2<f32> = vs_TEXCOORD0;
  let x_514 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_518 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_520 : vec2<f32> = ((x_512 * vec2<f32>(x_514.x, x_514.y)) + vec2<f32>(x_518.z, x_518.w));
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
  let x_528 : vec4<f32> = u_xlat1;
  let x_530 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_528.x, x_528.y));
  u_xlat1.x = x_530.w;
  let x_534 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_534 * 2.0f) + -1.0f);
  let x_539 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_539 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_545 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_545, 0.0f, 1.0f);
  let x_549 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_549 * 2.0f) + -1.0f);
  let x_554 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_554)) + 1.0f);
  let x_560 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_560);
  let x_564 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_564) + 1.0f);
  let x_569 : f32 = u_xlat1.x;
  let x_571 : f32 = u_xlat8.x;
  u_xlat1.x = (x_569 * x_571);
  let x_574 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_579 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_579.x, x_579.y, x_579.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_585 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_585);
  let x_587 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_587 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_591 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_591);
  let x_593 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_593 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_605 : vec4<f32> = u_xlat0;
  let x_608 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_605.x, x_605.y, x_605.z, x_605.x));
  u_xlatb0 = vec3<bool>(x_608.x, x_608.y, x_608.z);
  let x_612 : bool = u_xlatb0.x;
  if (x_612) {
    let x_617 : f32 = u_xlat8.x;
    x_613 = x_617;
  } else {
    let x_620 : f32 = u_xlat2.x;
    x_613 = x_620;
  }
  let x_621 : f32 = x_613;
  u_xlat0.x = x_621;
  let x_624 : bool = u_xlatb0.y;
  if (x_624) {
    let x_629 : f32 = u_xlat8.y;
    x_625 = x_629;
  } else {
    let x_632 : f32 = u_xlat2.y;
    x_625 = x_632;
  }
  let x_633 : f32 = x_625;
  u_xlat0.y = x_633;
  let x_636 : bool = u_xlatb0.z;
  if (x_636) {
    let x_641 : f32 = u_xlat8.z;
    x_637 = x_641;
  } else {
    let x_644 : f32 = u_xlat2.z;
    x_637 = x_644;
  }
  let x_645 : f32 = x_637;
  u_xlat0.z = x_645;
  let x_647 : vec4<f32> = u_xlat1;
  let x_652 : vec4<f32> = u_xlat0;
  let x_654 : vec3<f32> = ((vec3<f32>(x_647.x, x_647.x, x_647.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat0;
  let x_661 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_662 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_664.x, x_664.y, x_664.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_669 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_669 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_673 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_673), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_676 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_676);
  let x_678 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_678 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_682 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_682);
  let x_686 : vec4<f32> = u_xlat0;
  let x_688 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_686.x, x_686.y, x_686.z, x_686.x));
  u_xlatb0 = vec3<bool>(x_688.x, x_688.y, x_688.z);
  let x_693 : bool = u_xlatb0.x;
  if (x_693) {
    let x_698 : f32 = u_xlat1.x;
    x_694 = x_698;
  } else {
    let x_701 : f32 = u_xlat2.x;
    x_694 = x_701;
  }
  let x_702 : f32 = x_694;
  SV_Target0.x = x_702;
  let x_706 : bool = u_xlatb0.y;
  if (x_706) {
    let x_711 : f32 = u_xlat1.y;
    x_707 = x_711;
  } else {
    let x_714 : f32 = u_xlat2.y;
    x_707 = x_714;
  }
  let x_715 : f32 = x_707;
  SV_Target0.y = x_715;
  let x_718 : bool = u_xlatb0.z;
  if (x_718) {
    let x_723 : f32 = u_xlat1.z;
    x_719 = x_723;
  } else {
    let x_726 : f32 = u_xlat2.z;
    x_719 = x_726;
  }
  let x_727 : f32 = x_719;
  SV_Target0.z = x_727;
  let x_730 : f32 = u_xlat0.w;
  SV_Target0.w = x_730;
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

