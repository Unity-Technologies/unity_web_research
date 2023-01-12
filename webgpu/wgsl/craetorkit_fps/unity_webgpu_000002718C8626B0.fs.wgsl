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
  u_xlat0 = (vec4<f32>(x_224.x, x_224.y, x_224.x, x_224.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_228 : vec4<f32> = u_xlat0;
  let x_234 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_237 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((-(vec4<f32>(x_228.x, x_228.y, x_228.w, x_228.y)) * vec4<f32>(x_234.x, x_234.x, x_234.x, x_234.x)) + vec4<f32>(x_237.x, x_237.y, x_237.x, x_237.y));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_240, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_244 : vec4<f32> = u_xlat3;
  let x_246 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_244 * vec4<f32>(x_246, x_246, x_246, x_246));
  let x_254 : vec4<f32> = u_xlat3;
  let x_256 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_254.x, x_254.y));
  u_xlat4 = x_256;
  let x_260 : vec4<f32> = u_xlat3;
  let x_262 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_260.z, x_260.w));
  u_xlat3 = x_262;
  let x_263 : vec4<f32> = u_xlat3;
  let x_266 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_263 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_266);
  let x_268 : vec4<f32> = u_xlat0;
  let x_272 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_275 : vec2<f32> = vs_TEXCOORD0;
  let x_276 : vec2<f32> = ((-(vec2<f32>(x_268.z, x_268.y)) * vec2<f32>(x_272.x, x_272.x)) + x_275);
  let x_277 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_276.x, x_276.y, x_277.z);
  let x_279 : vec3<f32> = u_xlat2;
  let x_283 : vec2<f32> = clamp(vec2<f32>(x_279.x, x_279.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_283.x, x_283.y, x_284.z);
  let x_286 : vec3<f32> = u_xlat2;
  let x_289 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_291 : vec2<f32> = (vec2<f32>(x_286.x, x_286.y) * vec2<f32>(x_289, x_289));
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_291.x, x_291.y, x_292.z);
  let x_297 : vec3<f32> = u_xlat2;
  let x_299 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_297.x, x_297.y));
  u_xlat4 = x_299;
  let x_300 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_300 + x_301);
  let x_303 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_309 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_303.z, x_303.w, x_303.x, x_303.w) * vec4<f32>(x_306.x, x_306.x, x_306.x, x_306.x)) + vec4<f32>(x_309.x, x_309.y, x_309.x, x_309.y));
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_312, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat4 = (x_316 * vec4<f32>(x_318, x_318, x_318, x_318));
  let x_324 : vec4<f32> = u_xlat4;
  let x_326 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_324.x, x_324.y));
  u_xlat5 = x_326;
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_327 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_329);
  let x_331 : vec2<f32> = vs_TEXCOORD0;
  let x_332 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_331.x, x_331.y, x_332.z);
  let x_334 : vec3<f32> = u_xlat2;
  let x_338 : vec2<f32> = clamp(vec2<f32>(x_334.x, x_334.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_339 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_338.x, x_338.y, x_339.z);
  let x_341 : vec3<f32> = u_xlat2;
  let x_344 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_346 : vec2<f32> = (vec2<f32>(x_341.x, x_341.y) * vec2<f32>(x_344, x_344));
  let x_347 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_346.x, x_346.y, x_347.z);
  let x_352 : vec3<f32> = u_xlat2;
  let x_354 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_352.x, x_352.y));
  u_xlat5 = x_354;
  let x_355 : vec4<f32> = u_xlat5;
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_355 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_359);
  let x_364 : vec4<f32> = u_xlat4;
  let x_366 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_364.z, x_364.w));
  u_xlat4 = x_366;
  let x_367 : vec4<f32> = u_xlat4;
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_367 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_369);
  let x_371 : vec4<f32> = u_xlat0;
  let x_374 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_377 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_371.z, x_371.y, x_371.w, x_371.y) * vec4<f32>(x_374.x, x_374.x, x_374.x, x_374.x)) + vec4<f32>(x_377.x, x_377.y, x_377.x, x_377.y));
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_380, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_384 : vec4<f32> = u_xlat4;
  let x_386 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat4 = (x_384 * vec4<f32>(x_386, x_386, x_386, x_386));
  let x_392 : vec4<f32> = u_xlat4;
  let x_394 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_392.x, x_392.y));
  u_xlat5 = x_394;
  let x_395 : vec4<f32> = u_xlat3;
  let x_396 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_395 + x_396);
  let x_401 : vec4<f32> = u_xlat4;
  let x_403 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_401.z, x_401.w));
  u_xlat4 = x_403;
  let x_404 : vec4<f32> = u_xlat4;
  let x_406 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_404 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_406);
  let x_408 : vec4<f32> = u_xlat0;
  let x_411 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_414 : vec2<f32> = vs_TEXCOORD0;
  let x_415 : vec2<f32> = ((vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_411.x, x_411.x)) + x_414);
  let x_416 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat0;
  let x_422 : vec2<f32> = clamp(vec2<f32>(x_418.x, x_418.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat0;
  let x_428 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_430 : vec2<f32> = (vec2<f32>(x_425.x, x_425.y) * vec2<f32>(x_428, x_428));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
  let x_436 : vec4<f32> = u_xlat0;
  let x_438 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_436.x, x_436.y));
  u_xlat0 = x_438;
  let x_439 : vec4<f32> = u_xlat0;
  let x_440 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_439 + x_440);
  let x_442 : vec4<f32> = u_xlat0;
  let x_444 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_442 * vec4<f32>(x_444.y, x_444.y, x_444.y, x_444.y));
  let x_447 : vec2<f32> = vs_TEXCOORD0;
  let x_449 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_453 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_455 : vec2<f32> = ((x_447 * vec2<f32>(x_449.x, x_449.y)) + vec2<f32>(x_453.z, x_453.w));
  let x_456 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_455.x, x_455.y, x_456.z);
  let x_463 : vec3<f32> = u_xlat2;
  let x_465 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_463.x, x_463.y));
  let x_466 : vec3<f32> = vec3<f32>(x_465.x, x_465.y, x_465.z);
  let x_467 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_469 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_473 : vec4<f32> = u_xlat3;
  let x_476 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_478 : vec3<f32> = (vec3<f32>(x_473.x, x_473.y, x_473.z) * vec3<f32>(x_476.z, x_476.z, x_476.z));
  let x_479 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  u_xlat3.w = 0.0f;
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_482 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_485 : vec4<f32> = u_xlat0;
  let x_489 : vec3<f32> = x_51.x_Bloom_Color;
  let x_490 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) * x_489);
  let x_491 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_494 : f32 = u_xlat0.w;
  u_xlat5.w = (x_494 * 0.0625f);
  let x_497 : vec4<f32> = u_xlat1;
  let x_498 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_497 + x_498);
  let x_500 : vec4<f32> = u_xlat3;
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_500 * x_501) + x_503);
  let x_505 : vec4<f32> = u_xlat0;
  let x_508 : f32 = x_51.x_PostExposure;
  let x_510 : f32 = x_51.x_PostExposure;
  let x_512 : f32 = x_51.x_PostExposure;
  let x_514 : f32 = x_51.x_PostExposure;
  let x_515 : vec4<f32> = vec4<f32>(x_508, x_510, x_512, x_514);
  u_xlat0 = (x_505 * vec4<f32>(x_515.x, x_515.y, x_515.z, x_515.w));
  let x_522 : vec4<f32> = u_xlat0;
  let x_529 : vec3<f32> = ((vec3<f32>(x_522.z, x_522.x, x_522.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat1;
  let x_534 : vec3<f32> = log2(vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat1;
  let x_544 : vec3<f32> = ((vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_545 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat1;
  let x_551 : vec3<f32> = clamp(vec3<f32>(x_547.x, x_547.y, x_547.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_552 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : vec4<f32> = u_xlat1;
  let x_558 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_554.x, x_554.y, x_554.z) * vec3<f32>(x_558.z, x_558.z, x_558.z));
  let x_562 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_562);
  let x_566 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_568 : vec2<f32> = (vec2<f32>(x_566.x, x_566.y) * vec2<f32>(0.5f, 0.5f));
  let x_569 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_568.x, x_568.y, x_569.z);
  let x_571 : vec3<f32> = u_xlat8;
  let x_574 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_577 : vec3<f32> = u_xlat2;
  let x_579 : vec2<f32> = ((vec2<f32>(x_571.y, x_571.z) * vec2<f32>(x_574.x, x_574.y)) + vec2<f32>(x_577.x, x_577.y));
  let x_580 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_579.x, x_579.y, x_580.w);
  let x_583 : f32 = u_xlat8.x;
  let x_585 : f32 = x_51.x_Lut2D_Params.y;
  let x_588 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_583 * x_585) + x_588);
  let x_596 : vec4<f32> = u_xlat3;
  let x_598 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_596.x, x_596.z));
  let x_599 : vec3<f32> = vec3<f32>(x_598.x, x_598.y, x_598.z);
  let x_600 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_603;
  let x_606 : vec2<f32> = u_xlat16;
  let x_607 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_606 + vec2<f32>(x_607.x, x_607.z));
  let x_613 : vec2<f32> = u_xlat15;
  let x_614 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_613);
  u_xlat2 = vec3<f32>(x_614.x, x_614.y, x_614.z);
  let x_617 : f32 = u_xlat1.x;
  let x_619 : f32 = x_51.x_Lut2D_Params.z;
  let x_622 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_617 * x_619) + -(x_622));
  let x_626 : vec4<f32> = u_xlat4;
  let x_629 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_626.x, x_626.y, x_626.z)) + x_629);
  let x_631 : vec4<f32> = u_xlat1;
  let x_633 : vec3<f32> = u_xlat8;
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec3<f32> = ((vec3<f32>(x_631.x, x_631.x, x_631.x) * x_633) + vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_644 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_644);
  let x_646 : bool = u_xlatb1;
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

