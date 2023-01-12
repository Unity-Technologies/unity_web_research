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
  x_PostExposure : f32,
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

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

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
  var x_546 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_924 : f32;
  var x_936 : f32;
  var x_948 : f32;
  var x_1000 : f32;
  var x_1013 : f32;
  var x_1025 : f32;
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
  let x_129 : vec2<f32> = vs_TEXCOORD0;
  let x_130 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_129.x, x_129.y, x_130.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_139 : i32 = u_xlati_loop_1;
    let x_140 : i32 = u_xlati21;
    if ((x_139 < x_140)) {
    } else {
      break;
    }
    let x_144 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_144);
    let x_148 : f32 = u_xlat6.x;
    u_xlat6.x = (x_148 + 0.5f);
    let x_152 : f32 = u_xlat6.x;
    let x_154 : f32 = u_xlat1.x;
    u_xlat2.x = (x_152 / x_154);
    let x_157 : vec3<f32> = u_xlat8;
    let x_158 : vec2<f32> = vec2<f32>(x_157.x, x_157.y);
    let x_159 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_158.x, x_158.y, x_159.z, x_159.w);
    let x_161 : vec4<f32> = u_xlat6;
    let x_165 : vec2<f32> = clamp(vec2<f32>(x_161.x, x_161.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_166 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_165.x, x_165.y, x_166.z, x_166.w);
    let x_168 : vec4<f32> = u_xlat6;
    let x_172 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_174 : vec2<f32> = (vec2<f32>(x_168.x, x_168.y) * vec2<f32>(x_172, x_172));
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
  let x_335 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat3;
  let x_341 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_343 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_341.z, x_341.z, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_346 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_349 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = x_51.x_Bloom_Color;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) * x_353);
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : f32 = u_xlat0.w;
  u_xlat5.w = (x_358 * 0.25f);
  let x_361 : vec4<f32> = u_xlat1;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_361 + x_362);
  let x_364 : vec4<f32> = u_xlat4;
  let x_366 : vec4<f32> = u_xlat3;
  let x_368 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  u_xlat1.w = 0.0f;
  let x_372 : vec4<f32> = u_xlat0;
  let x_373 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_372 + x_373);
  let x_379 : f32 = x_51.x_Vignette_Mode;
  u_xlatb1 = (x_379 < 0.5f);
  let x_381 : bool = u_xlatb1;
  if (x_381) {
    let x_384 : vec2<f32> = vs_TEXCOORD0;
    let x_388 : vec2<f32> = x_51.x_Vignette_Center;
    let x_390 : vec2<f32> = (x_384 + -(x_388));
    let x_391 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
    let x_393 : vec4<f32> = u_xlat1;
    let x_398 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_400 : vec2<f32> = (abs(vec2<f32>(x_393.y, x_393.x)) * vec2<f32>(x_398.x, x_398.x));
    let x_401 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_401.x, x_400.x, x_400.y, x_401.w);
    let x_405 : f32 = x_51.x_ScreenParams.x;
    let x_407 : f32 = x_51.x_ScreenParams.y;
    u_xlat22 = (x_405 / x_407);
    let x_409 : f32 = u_xlat22;
    u_xlat22 = (x_409 + -1.0f);
    let x_412 : f32 = x_51.x_Vignette_Settings.w;
    let x_413 : f32 = u_xlat22;
    u_xlat22 = ((x_412 * x_413) + 1.0f);
    let x_416 : f32 = u_xlat22;
    let x_418 : f32 = u_xlat1.z;
    u_xlat1.x = (x_416 * x_418);
    let x_421 : vec4<f32> = u_xlat1;
    let x_422 : vec2<f32> = vec2<f32>(x_421.x, x_421.y);
    let x_423 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
    let x_425 : vec4<f32> = u_xlat1;
    let x_429 : vec2<f32> = clamp(vec2<f32>(x_425.x, x_425.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_430 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
    let x_432 : vec4<f32> = u_xlat1;
    let x_434 : vec2<f32> = log2(vec2<f32>(x_432.x, x_432.y));
    let x_435 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
    let x_437 : vec4<f32> = u_xlat1;
    let x_440 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_442 : vec2<f32> = (vec2<f32>(x_437.x, x_437.y) * vec2<f32>(x_440.z, x_440.z));
    let x_443 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
    let x_445 : vec4<f32> = u_xlat1;
    let x_447 : vec2<f32> = exp2(vec2<f32>(x_445.x, x_445.y));
    let x_448 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
    let x_450 : vec4<f32> = u_xlat1;
    let x_452 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_450.x, x_450.y), vec2<f32>(x_452.x, x_452.y));
    let x_457 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_457) + 1.0f);
    let x_462 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_462, 0.0f);
    let x_466 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_466);
    let x_470 : f32 = u_xlat1.x;
    let x_472 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat1.x = (x_470 * x_472);
    let x_476 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_476);
    let x_481 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_481) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_485 : vec4<f32> = u_xlat1;
    let x_487 : vec3<f32> = u_xlat8;
    let x_490 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_485.x, x_485.x, x_485.x) * x_487) + x_490);
    let x_492 : vec4<f32> = u_xlat0;
    let x_494 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_492.x, x_492.y, x_492.z) * x_494);
    let x_497 : f32 = u_xlat0.w;
    u_xlat2.x = (x_497 + -1.0f);
    let x_501 : f32 = u_xlat1.x;
    let x_503 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_501 * x_503) + 1.0f);
  } else {
    let x_513 : vec2<f32> = vs_TEXCOORD0;
    let x_514 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_513);
    u_xlat1.x = x_514.w;
    let x_518 : f32 = u_xlat1.x;
    u_xlat2.x = (x_518 * 0.077399381f);
    let x_524 : f32 = u_xlat1.x;
    u_xlat9 = (x_524 + 0.055f);
    let x_527 : f32 = u_xlat9;
    u_xlat9 = (x_527 * 0.947867334f);
    let x_530 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_530), 1.1920929e-07f);
    let x_534 : f32 = u_xlat9;
    u_xlat9 = log2(x_534);
    let x_536 : f32 = u_xlat9;
    u_xlat9 = (x_536 * 2.400000095f);
    let x_539 : f32 = u_xlat9;
    u_xlat9 = exp2(x_539);
    let x_543 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_543);
    let x_545 : bool = u_xlatb1;
    if (x_545) {
      let x_550 : f32 = u_xlat2.x;
      x_546 = x_550;
    } else {
      let x_552 : f32 = u_xlat9;
      x_546 = x_552;
    }
    let x_553 : f32 = x_546;
    u_xlat1.x = x_553;
    let x_556 : vec3<f32> = x_51.x_Vignette_Color;
    let x_558 : vec3<f32> = (-(x_556) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_559 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
    let x_561 : vec4<f32> = u_xlat1;
    let x_563 : vec4<f32> = u_xlat4;
    let x_567 : vec3<f32> = x_51.x_Vignette_Color;
    let x_568 : vec3<f32> = ((vec3<f32>(x_561.x, x_561.x, x_561.x) * vec3<f32>(x_563.x, x_563.y, x_563.z)) + x_567);
    let x_569 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
    let x_571 : vec4<f32> = u_xlat0;
    let x_573 : vec4<f32> = u_xlat4;
    let x_576 : vec4<f32> = u_xlat0;
    let x_579 : vec3<f32> = ((vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_573.x, x_573.y, x_573.z)) + -(vec3<f32>(x_576.x, x_576.y, x_576.z)));
    let x_580 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
    let x_584 : f32 = x_51.x_Vignette_Opacity;
    let x_586 : vec4<f32> = u_xlat4;
    let x_589 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_584, x_584, x_584) * vec3<f32>(x_586.x, x_586.y, x_586.z)) + vec3<f32>(x_589.x, x_589.y, x_589.z));
    let x_593 : f32 = u_xlat0.w;
    u_xlat0.x = (x_593 + -1.0f);
    let x_597 : f32 = u_xlat1.x;
    let x_599 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_597 * x_599) + 1.0f);
  }
  let x_604 : vec2<f32> = vs_TEXCOORD1;
  let x_607 : vec4<f32> = x_51.x_Grain_Params2;
  let x_611 : vec4<f32> = x_51.x_Grain_Params2;
  let x_613 : vec2<f32> = ((x_604 * vec2<f32>(x_607.x, x_607.y)) + vec2<f32>(x_611.z, x_611.w));
  let x_614 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
  let x_621 : vec4<f32> = u_xlat0;
  let x_623 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_621.x, x_621.y));
  let x_624 : vec3<f32> = vec3<f32>(x_623.x, x_623.y, x_623.z);
  let x_625 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec3<f32> = u_xlat8;
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec4<f32> = u_xlat4;
  let x_634 : vec3<f32> = clamp(vec3<f32>(x_630.x, x_630.y, x_630.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_644 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_644);
  let x_647 : f32 = x_51.x_Grain_Params1.x;
  let x_648 : f32 = u_xlat21;
  u_xlat21 = ((x_647 * -(x_648)) + 1.0f);
  let x_652 : vec4<f32> = u_xlat0;
  let x_654 : vec3<f32> = u_xlat8;
  let x_655 : vec3<f32> = (vec3<f32>(x_652.x, x_652.y, x_652.z) * x_654);
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat0;
  let x_661 : f32 = x_51.x_Grain_Params1.y;
  let x_663 : f32 = x_51.x_Grain_Params1.y;
  let x_665 : f32 = x_51.x_Grain_Params1.y;
  let x_667 : vec3<f32> = (vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(x_661, x_663, x_665));
  let x_668 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : f32 = u_xlat21;
  let x_675 : vec3<f32> = u_xlat8;
  let x_676 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672, x_672, x_672)) + x_675);
  let x_677 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat3;
  let x_682 : f32 = x_51.x_PostExposure;
  let x_684 : f32 = x_51.x_PostExposure;
  let x_686 : f32 = x_51.x_PostExposure;
  let x_688 : f32 = x_51.x_PostExposure;
  let x_689 : vec4<f32> = vec4<f32>(x_682, x_684, x_686, x_688);
  u_xlat0 = (x_679 * vec4<f32>(x_689.x, x_689.y, x_689.z, x_689.w));
  let x_696 : vec4<f32> = u_xlat0;
  let x_703 : vec3<f32> = ((vec3<f32>(x_696.z, x_696.x, x_696.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_704 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat0;
  let x_708 : vec3<f32> = log2(vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat0;
  let x_718 : vec3<f32> = ((vec3<f32>(x_711.x, x_711.y, x_711.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat0;
  let x_725 : vec3<f32> = clamp(vec3<f32>(x_721.x, x_721.y, x_721.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_726 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat0;
  let x_732 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_734 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_732.z, x_732.z, x_732.z));
  let x_735 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_738 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_738);
  let x_742 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_744 : vec2<f32> = (vec2<f32>(x_742.x, x_742.y) * vec2<f32>(0.5f, 0.5f));
  let x_745 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_744.x, x_745.y, x_745.z, x_744.y);
  let x_747 : vec4<f32> = u_xlat1;
  let x_750 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_753 : vec4<f32> = u_xlat1;
  let x_755 : vec2<f32> = ((vec2<f32>(x_747.y, x_747.z) * vec2<f32>(x_750.x, x_750.y)) + vec2<f32>(x_753.x, x_753.w));
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_756.x, x_755.x, x_755.y, x_756.w);
  let x_759 : f32 = u_xlat7.x;
  let x_761 : f32 = x_51.x_Lut2D_Params.y;
  let x_764 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_759 * x_761) + x_764);
  let x_772 : vec4<f32> = u_xlat1;
  let x_774 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_772.x, x_772.z));
  let x_775 : vec3<f32> = vec3<f32>(x_774.x, x_774.y, x_774.z);
  let x_776 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_779 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_779;
  let x_781 : vec2<f32> = u_xlat16;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec2<f32> = (x_781 + vec2<f32>(x_782.x, x_782.z));
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
  let x_790 : vec4<f32> = u_xlat1;
  let x_792 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_790.x, x_790.y));
  let x_793 : vec3<f32> = vec3<f32>(x_792.x, x_792.y, x_792.z);
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_797 : f32 = u_xlat0.x;
  let x_799 : f32 = x_51.x_Lut2D_Params.z;
  let x_802 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_797 * x_799) + -(x_802));
  let x_806 : vec4<f32> = u_xlat3;
  let x_809 : vec4<f32> = u_xlat1;
  let x_811 : vec3<f32> = (-(vec3<f32>(x_806.x, x_806.y, x_806.z)) + vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat0;
  let x_816 : vec4<f32> = u_xlat1;
  let x_819 : vec4<f32> = u_xlat3;
  let x_821 : vec3<f32> = ((vec3<f32>(x_814.x, x_814.x, x_814.x) * vec3<f32>(x_816.x, x_816.y, x_816.z)) + vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : vec2<f32> = vs_TEXCOORD0;
  let x_827 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_831 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_833 : vec2<f32> = ((x_824 * vec2<f32>(x_827.x, x_827.y)) + vec2<f32>(x_831.z, x_831.w));
  let x_834 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_833.x, x_833.y, x_834.z, x_834.w);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_841.x, x_841.y));
  u_xlat1.x = x_843.w;
  let x_847 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_847 * 2.0f) + -1.0f);
  let x_852 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_852 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_858 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_858, 0.0f, 1.0f);
  let x_862 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_862 * 2.0f) + -1.0f);
  let x_867 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_867)) + 1.0f);
  let x_873 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_873);
  let x_877 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_877) + 1.0f);
  let x_882 : f32 = u_xlat1.x;
  let x_884 : f32 = u_xlat8.x;
  u_xlat1.x = (x_882 * x_884);
  let x_887 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_887.x, x_887.y, x_887.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_892 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_892.x, x_892.y, x_892.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_897 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_897);
  let x_899 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_899 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_903 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_903);
  let x_905 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_905 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_917 : vec4<f32> = u_xlat0;
  let x_920 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_917.x, x_917.y, x_917.z, x_917.x));
  u_xlatb0 = vec3<bool>(x_920.x, x_920.y, x_920.z);
  let x_923 : bool = u_xlatb0.x;
  if (x_923) {
    let x_928 : f32 = u_xlat8.x;
    x_924 = x_928;
  } else {
    let x_931 : f32 = u_xlat2.x;
    x_924 = x_931;
  }
  let x_932 : f32 = x_924;
  u_xlat0.x = x_932;
  let x_935 : bool = u_xlatb0.y;
  if (x_935) {
    let x_940 : f32 = u_xlat8.y;
    x_936 = x_940;
  } else {
    let x_943 : f32 = u_xlat2.y;
    x_936 = x_943;
  }
  let x_944 : f32 = x_936;
  u_xlat0.y = x_944;
  let x_947 : bool = u_xlatb0.z;
  if (x_947) {
    let x_952 : f32 = u_xlat8.z;
    x_948 = x_952;
  } else {
    let x_955 : f32 = u_xlat2.z;
    x_948 = x_955;
  }
  let x_956 : f32 = x_948;
  u_xlat0.z = x_956;
  let x_958 : vec4<f32> = u_xlat1;
  let x_963 : vec4<f32> = u_xlat0;
  let x_965 : vec3<f32> = ((vec3<f32>(x_958.x, x_958.x, x_958.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : vec4<f32> = u_xlat0;
  let x_971 : vec3<f32> = (vec3<f32>(x_968.x, x_968.y, x_968.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_972 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_974.x, x_974.y, x_974.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_978 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_978 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_981 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_981), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_984 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_984);
  let x_986 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_986 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_989 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_989);
  let x_992 : vec4<f32> = u_xlat0;
  let x_994 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_992.x, x_992.y, x_992.z, x_992.x));
  u_xlatb0 = vec3<bool>(x_994.x, x_994.y, x_994.z);
  let x_999 : bool = u_xlatb0.x;
  if (x_999) {
    let x_1004 : f32 = u_xlat1.x;
    x_1000 = x_1004;
  } else {
    let x_1007 : f32 = u_xlat2.x;
    x_1000 = x_1007;
  }
  let x_1008 : f32 = x_1000;
  SV_Target0.x = x_1008;
  let x_1012 : bool = u_xlatb0.y;
  if (x_1012) {
    let x_1017 : f32 = u_xlat1.y;
    x_1013 = x_1017;
  } else {
    let x_1020 : f32 = u_xlat2.y;
    x_1013 = x_1020;
  }
  let x_1021 : f32 = x_1013;
  SV_Target0.y = x_1021;
  let x_1024 : bool = u_xlatb0.z;
  if (x_1024) {
    let x_1029 : f32 = u_xlat1.z;
    x_1025 = x_1029;
  } else {
    let x_1032 : f32 = u_xlat2.z;
    x_1025 = x_1032;
  }
  let x_1033 : f32 = x_1025;
  SV_Target0.z = x_1033;
  let x_1036 : f32 = u_xlat0.w;
  SV_Target0.w = x_1036;
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

