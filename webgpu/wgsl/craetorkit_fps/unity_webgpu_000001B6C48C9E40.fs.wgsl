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
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_59 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

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
  var u_xlat15 : f32;
  var x_704 : f32;
  var u_xlatb4 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_813 : f32;
  var x_825 : f32;
  var x_837 : f32;
  var u_xlat14 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_968 : f32;
  var x_980 : f32;
  var x_992 : f32;
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
  u_xlat0 = (vec4<f32>(x_239.x, x_239.y, x_239.x, x_239.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_243 : vec4<f32> = u_xlat0;
  let x_249 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_252 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((-(vec4<f32>(x_243.x, x_243.y, x_243.w, x_243.y)) * vec4<f32>(x_249.x, x_249.x, x_249.x, x_249.x)) + vec4<f32>(x_252.x, x_252.y, x_252.x, x_252.y));
  let x_255 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_255, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_259 : vec4<f32> = u_xlat3;
  let x_261 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat3 = (x_259 * vec4<f32>(x_261, x_261, x_261, x_261));
  let x_269 : vec4<f32> = u_xlat3;
  let x_271 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_269.x, x_269.y));
  u_xlat4 = x_271;
  let x_275 : vec4<f32> = u_xlat3;
  let x_277 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_275.z, x_275.w));
  u_xlat3 = x_277;
  let x_278 : vec4<f32> = u_xlat3;
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_278 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_281);
  let x_283 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_290 : vec2<f32> = vs_TEXCOORD0;
  let x_291 : vec2<f32> = ((-(vec2<f32>(x_283.z, x_283.y)) * vec2<f32>(x_287.x, x_287.x)) + x_290);
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_291.x, x_291.y, x_292.z);
  let x_294 : vec3<f32> = u_xlat2;
  let x_298 : vec2<f32> = clamp(vec2<f32>(x_294.x, x_294.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_299 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_298.x, x_298.y, x_299.z);
  let x_301 : vec3<f32> = u_xlat2;
  let x_304 : f32 = x_59.x_RenderViewportScaleFactor;
  let x_306 : vec2<f32> = (vec2<f32>(x_301.x, x_301.y) * vec2<f32>(x_304, x_304));
  let x_307 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_306.x, x_306.y, x_307.z);
  let x_312 : vec3<f32> = u_xlat2;
  let x_314 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_312.x, x_312.y));
  u_xlat4 = x_314;
  let x_315 : vec4<f32> = u_xlat3;
  let x_316 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_315 + x_316);
  let x_318 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_324 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_318.z, x_318.w, x_318.x, x_318.w) * vec4<f32>(x_321.x, x_321.x, x_321.x, x_321.x)) + vec4<f32>(x_324.x, x_324.y, x_324.x, x_324.y));
  let x_327 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_327, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_331 : vec4<f32> = u_xlat4;
  let x_333 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat4 = (x_331 * vec4<f32>(x_333, x_333, x_333, x_333));
  let x_339 : vec4<f32> = u_xlat4;
  let x_341 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_339.x, x_339.y));
  u_xlat5 = x_341;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_342 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_344);
  let x_346 : vec2<f32> = vs_TEXCOORD0;
  let x_347 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_346.x, x_346.y, x_347.z);
  let x_349 : vec3<f32> = u_xlat2;
  let x_353 : vec2<f32> = clamp(vec2<f32>(x_349.x, x_349.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_354 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_353.x, x_353.y, x_354.z);
  let x_356 : vec3<f32> = u_xlat2;
  let x_359 : f32 = x_59.x_RenderViewportScaleFactor;
  let x_361 : vec2<f32> = (vec2<f32>(x_356.x, x_356.y) * vec2<f32>(x_359, x_359));
  let x_362 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_361.x, x_361.y, x_362.z);
  let x_367 : vec3<f32> = u_xlat2;
  let x_369 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_367.x, x_367.y));
  u_xlat5 = x_369;
  let x_370 : vec4<f32> = u_xlat5;
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_370 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_374);
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_379.z, x_379.w));
  u_xlat4 = x_381;
  let x_382 : vec4<f32> = u_xlat4;
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_382 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_384);
  let x_386 : vec4<f32> = u_xlat0;
  let x_389 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_392 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_386.z, x_386.y, x_386.w, x_386.y) * vec4<f32>(x_389.x, x_389.x, x_389.x, x_389.x)) + vec4<f32>(x_392.x, x_392.y, x_392.x, x_392.y));
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_395, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_399 : vec4<f32> = u_xlat4;
  let x_401 : f32 = x_59.x_RenderViewportScaleFactor;
  u_xlat4 = (x_399 * vec4<f32>(x_401, x_401, x_401, x_401));
  let x_407 : vec4<f32> = u_xlat4;
  let x_409 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_407.x, x_407.y));
  u_xlat5 = x_409;
  let x_410 : vec4<f32> = u_xlat3;
  let x_411 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_410 + x_411);
  let x_416 : vec4<f32> = u_xlat4;
  let x_418 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_416.z, x_416.w));
  u_xlat4 = x_418;
  let x_419 : vec4<f32> = u_xlat4;
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_419 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_421);
  let x_423 : vec4<f32> = u_xlat0;
  let x_426 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_429 : vec2<f32> = vs_TEXCOORD0;
  let x_430 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_426.x, x_426.x)) + x_429);
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat0;
  let x_437 : vec2<f32> = clamp(vec2<f32>(x_433.x, x_433.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat0;
  let x_443 : f32 = x_59.x_RenderViewportScaleFactor;
  let x_445 : vec2<f32> = (vec2<f32>(x_440.x, x_440.y) * vec2<f32>(x_443, x_443));
  let x_446 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
  let x_451 : vec4<f32> = u_xlat0;
  let x_453 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_451.x, x_451.y));
  u_xlat0 = x_453;
  let x_454 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_454 + x_455);
  let x_457 : vec4<f32> = u_xlat0;
  let x_459 : vec3<f32> = x_59.x_Bloom_Settings;
  u_xlat0 = (x_457 * vec4<f32>(x_459.y, x_459.y, x_459.y, x_459.y));
  let x_462 : vec2<f32> = vs_TEXCOORD0;
  let x_465 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_469 : vec4<f32> = x_59.x_Bloom_DirtTileOffset;
  let x_471 : vec2<f32> = ((x_462 * vec2<f32>(x_465.x, x_465.y)) + vec2<f32>(x_469.z, x_469.w));
  let x_472 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_471.x, x_471.y, x_472.z);
  let x_479 : vec3<f32> = u_xlat2;
  let x_481 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_479.x, x_479.y));
  let x_482 : vec3<f32> = vec3<f32>(x_481.x, x_481.y, x_481.z);
  let x_483 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat0;
  let x_489 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_490 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat3;
  let x_495 : vec3<f32> = x_59.x_Bloom_Settings;
  let x_497 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(x_495.z, x_495.z, x_495.z));
  let x_498 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_500 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_503 : vec4<f32> = u_xlat0;
  let x_507 : vec3<f32> = x_59.x_Bloom_Color;
  let x_508 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) * x_507);
  let x_509 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_512 : f32 = u_xlat0.w;
  u_xlat5.w = (x_512 * 0.0625f);
  let x_515 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_515 + x_516);
  let x_518 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat3;
  let x_522 : vec3<f32> = (vec3<f32>(x_518.x, x_518.y, x_518.z) * vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  u_xlat1.w = 0.0f;
  let x_526 : vec4<f32> = u_xlat0;
  let x_527 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_526 + x_527);
  let x_533 : f32 = x_59.x_Vignette_Mode;
  u_xlatb1 = (x_533 < 0.5f);
  let x_535 : bool = u_xlatb1;
  if (x_535) {
    let x_538 : vec2<f32> = vs_TEXCOORD0;
    let x_542 : vec2<f32> = x_59.x_Vignette_Center;
    let x_544 : vec2<f32> = (x_538 + -(x_542));
    let x_545 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_544.x, x_544.y, x_545.z, x_545.w);
    let x_547 : vec4<f32> = u_xlat1;
    let x_552 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_554 : vec2<f32> = (abs(vec2<f32>(x_547.y, x_547.x)) * vec2<f32>(x_552.x, x_552.x));
    let x_555 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_555.x, x_554.x, x_554.y, x_555.w);
    let x_559 : f32 = x_59.x_ScreenParams.x;
    let x_561 : f32 = x_59.x_ScreenParams.y;
    u_xlat22 = (x_559 / x_561);
    let x_563 : f32 = u_xlat22;
    u_xlat22 = (x_563 + -1.0f);
    let x_566 : f32 = x_59.x_Vignette_Settings.w;
    let x_567 : f32 = u_xlat22;
    u_xlat22 = ((x_566 * x_567) + 1.0f);
    let x_570 : f32 = u_xlat22;
    let x_572 : f32 = u_xlat1.z;
    u_xlat1.x = (x_570 * x_572);
    let x_575 : vec4<f32> = u_xlat1;
    let x_576 : vec2<f32> = vec2<f32>(x_575.x, x_575.y);
    let x_577 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
    let x_579 : vec4<f32> = u_xlat1;
    let x_583 : vec2<f32> = clamp(vec2<f32>(x_579.x, x_579.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_584 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
    let x_586 : vec4<f32> = u_xlat1;
    let x_588 : vec2<f32> = log2(vec2<f32>(x_586.x, x_586.y));
    let x_589 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
    let x_591 : vec4<f32> = u_xlat1;
    let x_594 : vec4<f32> = x_59.x_Vignette_Settings;
    let x_596 : vec2<f32> = (vec2<f32>(x_591.x, x_591.y) * vec2<f32>(x_594.z, x_594.z));
    let x_597 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
    let x_599 : vec4<f32> = u_xlat1;
    let x_601 : vec2<f32> = exp2(vec2<f32>(x_599.x, x_599.y));
    let x_602 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
    let x_604 : vec4<f32> = u_xlat1;
    let x_606 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_604.x, x_604.y), vec2<f32>(x_606.x, x_606.y));
    let x_611 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_611) + 1.0f);
    let x_616 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_616, 0.0f);
    let x_620 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_620);
    let x_624 : f32 = u_xlat1.x;
    let x_626 : f32 = x_59.x_Vignette_Settings.y;
    u_xlat1.x = (x_624 * x_626);
    let x_630 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_630);
    let x_635 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = (-(x_635) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_639 : vec4<f32> = u_xlat1;
    let x_641 : vec3<f32> = u_xlat8;
    let x_644 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_639.x, x_639.x, x_639.x) * x_641) + x_644);
    let x_646 : vec4<f32> = u_xlat0;
    let x_648 : vec3<f32> = u_xlat8;
    let x_649 : vec3<f32> = (vec3<f32>(x_646.x, x_646.y, x_646.z) * x_648);
    let x_650 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
    let x_653 : f32 = u_xlat0.w;
    u_xlat8.x = (x_653 + -1.0f);
    let x_657 : f32 = u_xlat1.x;
    let x_659 : f32 = u_xlat8.x;
    u_xlat3.w = ((x_657 * x_659) + 1.0f);
  } else {
    let x_669 : vec2<f32> = vs_TEXCOORD0;
    let x_670 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_669);
    u_xlat1.x = x_670.w;
    let x_674 : f32 = u_xlat1.x;
    u_xlat1.z = (x_674 + 0.055f);
    let x_678 : vec4<f32> = u_xlat1;
    let x_683 : vec2<f32> = (vec2<f32>(x_678.x, x_678.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_684 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_683.x, x_683.y, x_684.z);
    let x_688 : f32 = u_xlat8.y;
    u_xlat15 = max(abs(x_688), 1.1920929e-07f);
    let x_692 : f32 = u_xlat15;
    u_xlat15 = log2(x_692);
    let x_694 : f32 = u_xlat15;
    u_xlat15 = (x_694 * 2.400000095f);
    let x_697 : f32 = u_xlat15;
    u_xlat15 = exp2(x_697);
    let x_701 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_701);
    let x_703 : bool = u_xlatb1;
    if (x_703) {
      let x_708 : f32 = u_xlat8.x;
      x_704 = x_708;
    } else {
      let x_710 : f32 = u_xlat15;
      x_704 = x_710;
    }
    let x_711 : f32 = x_704;
    u_xlat1.x = x_711;
    let x_714 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = (-(x_714) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_717 : vec4<f32> = u_xlat1;
    let x_719 : vec3<f32> = u_xlat8;
    let x_722 : vec3<f32> = x_59.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_717.x, x_717.x, x_717.x) * x_719) + x_722);
    let x_724 : vec4<f32> = u_xlat0;
    let x_726 : vec3<f32> = u_xlat8;
    let x_728 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_724.x, x_724.y, x_724.z) * x_726) + -(vec3<f32>(x_728.x, x_728.y, x_728.z)));
    let x_734 : f32 = x_59.x_Vignette_Opacity;
    let x_736 : vec3<f32> = u_xlat8;
    let x_738 : vec4<f32> = u_xlat0;
    let x_740 : vec3<f32> = ((vec3<f32>(x_734, x_734, x_734) * x_736) + vec3<f32>(x_738.x, x_738.y, x_738.z));
    let x_741 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
    let x_744 : f32 = u_xlat0.w;
    u_xlat0.x = (x_744 + -1.0f);
    let x_748 : f32 = u_xlat1.x;
    let x_750 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_748 * x_750) + 1.0f);
  }
  let x_754 : vec4<f32> = u_xlat3;
  u_xlat3 = x_754;
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_755, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_759 : vec4<f32> = u_xlat3;
  let x_763 : vec3<f32> = (vec3<f32>(x_759.z, x_759.x, x_759.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_764 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat3;
  let x_769 : vec3<f32> = max(vec3<f32>(x_766.z, x_766.x, x_766.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_770 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat1;
  let x_774 : vec3<f32> = log2(vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat1;
  let x_781 : vec3<f32> = (vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat1;
  let x_786 : vec3<f32> = exp2(vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat1;
  let x_796 : vec3<f32> = ((vec3<f32>(x_789.x, x_789.y, x_789.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_804 : vec4<f32> = u_xlat3;
  let x_807 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_804.z, x_804.x, x_804.y, x_804.z));
  u_xlatb4 = vec3<bool>(x_807.x, x_807.y, x_807.z);
  let x_810 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_810;
  let x_812 : bool = u_xlatb4.x;
  if (x_812) {
    let x_817 : f32 = u_xlat0.x;
    x_813 = x_817;
  } else {
    let x_820 : f32 = u_xlat1.x;
    x_813 = x_820;
  }
  let x_821 : f32 = x_813;
  hlslcc_movcTemp.x = x_821;
  let x_824 : bool = u_xlatb4.y;
  if (x_824) {
    let x_829 : f32 = u_xlat0.y;
    x_825 = x_829;
  } else {
    let x_832 : f32 = u_xlat1.y;
    x_825 = x_832;
  }
  let x_833 : f32 = x_825;
  hlslcc_movcTemp.y = x_833;
  let x_836 : bool = u_xlatb4.z;
  if (x_836) {
    let x_841 : f32 = u_xlat0.z;
    x_837 = x_841;
  } else {
    let x_844 : f32 = u_xlat1.z;
    x_837 = x_844;
  }
  let x_845 : f32 = x_837;
  hlslcc_movcTemp.z = x_845;
  let x_847 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_847;
  let x_848 : vec4<f32> = u_xlat0;
  let x_852 : vec3<f32> = x_59.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_848.x, x_848.y, x_848.z) * vec3<f32>(x_852.z, x_852.z, x_852.z));
  let x_856 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_856);
  let x_860 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_862 : vec2<f32> = (vec2<f32>(x_860.x, x_860.y) * vec2<f32>(0.5f, 0.5f));
  let x_863 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
  let x_865 : vec3<f32> = u_xlat7;
  let x_868 : vec3<f32> = x_59.x_Lut2D_Params;
  let x_871 : vec4<f32> = u_xlat1;
  let x_873 : vec2<f32> = ((vec2<f32>(x_865.y, x_865.z) * vec2<f32>(x_868.x, x_868.y)) + vec2<f32>(x_871.x, x_871.y));
  let x_874 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_874.x, x_873.x, x_873.y, x_874.w);
  let x_877 : f32 = u_xlat7.x;
  let x_879 : f32 = x_59.x_Lut2D_Params.y;
  let x_882 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_877 * x_879) + x_882);
  let x_890 : vec4<f32> = u_xlat1;
  let x_892 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_890.x, x_890.z));
  let x_893 : vec3<f32> = vec3<f32>(x_892.x, x_892.y, x_892.z);
  let x_894 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_897 : f32 = x_59.x_Lut2D_Params.y;
  u_xlat16.x = x_897;
  let x_900 : vec2<f32> = u_xlat16;
  let x_901 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_900 + vec2<f32>(x_901.x, x_901.z));
  let x_907 : vec2<f32> = u_xlat14;
  let x_908 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_907);
  let x_909 : vec3<f32> = vec3<f32>(x_908.x, x_908.y, x_908.z);
  let x_910 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_913 : f32 = u_xlat0.x;
  let x_915 : f32 = x_59.x_Lut2D_Params.z;
  let x_918 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_913 * x_915) + -(x_918));
  let x_922 : vec4<f32> = u_xlat4;
  let x_925 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_922.x, x_922.y, x_922.z)) + vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec4<f32> = u_xlat0;
  let x_930 : vec3<f32> = u_xlat7;
  let x_932 : vec4<f32> = u_xlat4;
  let x_934 : vec3<f32> = ((vec3<f32>(x_928.x, x_928.x, x_928.x) * x_930) + vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat0;
  let x_940 : vec3<f32> = (vec3<f32>(x_937.x, x_937.y, x_937.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_941 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_943.x, x_943.y, x_943.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_947 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_947 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_950 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_950), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_953 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_953);
  let x_955 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_955 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_958 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_958);
  let x_962 : vec4<f32> = u_xlat0;
  let x_964 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_962.x, x_962.y, x_962.z, x_962.x));
  u_xlatb0 = vec3<bool>(x_964.x, x_964.y, x_964.z);
  let x_967 : bool = u_xlatb0.x;
  if (x_967) {
    let x_972 : f32 = u_xlat1.x;
    x_968 = x_972;
  } else {
    let x_975 : f32 = u_xlat2.x;
    x_968 = x_975;
  }
  let x_976 : f32 = x_968;
  u_xlat3.x = x_976;
  let x_979 : bool = u_xlatb0.y;
  if (x_979) {
    let x_984 : f32 = u_xlat1.y;
    x_980 = x_984;
  } else {
    let x_987 : f32 = u_xlat2.y;
    x_980 = x_987;
  }
  let x_988 : f32 = x_980;
  u_xlat3.y = x_988;
  let x_991 : bool = u_xlatb0.z;
  if (x_991) {
    let x_996 : f32 = u_xlat1.z;
    x_992 = x_996;
  } else {
    let x_999 : f32 = u_xlat2.z;
    x_992 = x_999;
  }
  let x_1000 : f32 = x_992;
  u_xlat3.z = x_1000;
  let x_1004 : f32 = x_59.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1004);
  let x_1008 : bool = u_xlatb0.x;
  if (x_1008) {
    let x_1011 : vec4<f32> = u_xlat3;
    let x_1012 : vec3<f32> = vec3<f32>(x_1011.x, x_1011.y, x_1011.z);
    let x_1013 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
    let x_1015 : vec4<f32> = u_xlat0;
    let x_1019 : vec3<f32> = clamp(vec3<f32>(x_1015.x, x_1015.y, x_1015.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1020 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
    let x_1022 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1022.x, x_1022.y, x_1022.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1032 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1032;
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

