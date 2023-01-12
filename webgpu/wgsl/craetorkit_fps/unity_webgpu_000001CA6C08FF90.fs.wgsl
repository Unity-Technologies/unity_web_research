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
  var x_572 : f32;
  var x_584 : f32;
  var x_596 : f32;
  var x_737 : f32;
  var x_749 : f32;
  var x_761 : f32;
  var x_855 : f32;
  var x_867 : f32;
  var x_879 : f32;
  var x_926 : f32;
  var x_939 : f32;
  var x_951 : f32;
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
  let x_450 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_454 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_456 : vec2<f32> = ((x_447 * vec2<f32>(x_450.x, x_450.y)) + vec2<f32>(x_454.z, x_454.w));
  let x_457 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_456.x, x_456.y, x_457.z);
  let x_464 : vec3<f32> = u_xlat2;
  let x_466 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_464.x, x_464.y));
  let x_467 : vec3<f32> = vec3<f32>(x_466.x, x_466.y, x_466.z);
  let x_468 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat0;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat3;
  let x_480 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_482 : vec3<f32> = (vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_480.z, x_480.z, x_480.z));
  let x_483 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_485 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_488 : vec4<f32> = u_xlat0;
  let x_492 : vec3<f32> = x_51.x_Bloom_Color;
  let x_493 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) * x_492);
  let x_494 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_497 : f32 = u_xlat0.w;
  u_xlat5.w = (x_497 * 0.0625f);
  let x_500 : vec4<f32> = u_xlat1;
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_500 + x_501);
  let x_503 : vec4<f32> = u_xlat4;
  let x_505 : vec4<f32> = u_xlat3;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  u_xlat1.w = 0.0f;
  let x_511 : vec4<f32> = u_xlat0;
  let x_512 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_511 + x_512);
  let x_514 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_514, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_518 : vec4<f32> = u_xlat0;
  let x_522 : vec3<f32> = (vec3<f32>(x_518.z, x_518.x, x_518.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat0;
  let x_529 : vec3<f32> = max(vec3<f32>(x_525.z, x_525.x, x_525.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_530 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat3;
  let x_534 : vec3<f32> = log2(vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat3;
  let x_541 : vec3<f32> = (vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_542 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat3;
  let x_546 : vec3<f32> = exp2(vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_549 : vec4<f32> = u_xlat3;
  let x_556 : vec3<f32> = ((vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_557 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_564 : vec4<f32> = u_xlat0;
  let x_567 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_564.z, x_564.x, x_564.y, x_564.z));
  u_xlatb0 = vec3<bool>(x_567.x, x_567.y, x_567.z);
  let x_571 : bool = u_xlatb0.x;
  if (x_571) {
    let x_576 : f32 = u_xlat1.x;
    x_572 = x_576;
  } else {
    let x_579 : f32 = u_xlat3.x;
    x_572 = x_579;
  }
  let x_580 : f32 = x_572;
  u_xlat0.x = x_580;
  let x_583 : bool = u_xlatb0.y;
  if (x_583) {
    let x_588 : f32 = u_xlat1.y;
    x_584 = x_588;
  } else {
    let x_591 : f32 = u_xlat3.y;
    x_584 = x_591;
  }
  let x_592 : f32 = x_584;
  u_xlat0.y = x_592;
  let x_595 : bool = u_xlatb0.z;
  if (x_595) {
    let x_600 : f32 = u_xlat1.z;
    x_596 = x_600;
  } else {
    let x_603 : f32 = u_xlat3.z;
    x_596 = x_603;
  }
  let x_604 : f32 = x_596;
  u_xlat0.z = x_604;
  let x_606 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_612 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) * vec3<f32>(x_610.z, x_610.z, x_610.z));
  let x_613 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_616 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_616);
  let x_620 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_622 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) * vec2<f32>(0.5f, 0.5f));
  let x_623 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_622.x, x_623.y, x_623.z, x_622.y);
  let x_625 : vec4<f32> = u_xlat1;
  let x_628 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_631 : vec4<f32> = u_xlat1;
  let x_633 : vec2<f32> = ((vec2<f32>(x_625.y, x_625.z) * vec2<f32>(x_628.x, x_628.y)) + vec2<f32>(x_631.x, x_631.w));
  let x_634 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_634.x, x_633.x, x_633.y, x_634.w);
  let x_637 : f32 = u_xlat7.x;
  let x_639 : f32 = x_51.x_Lut2D_Params.y;
  let x_642 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_637 * x_639) + x_642);
  let x_650 : vec4<f32> = u_xlat1;
  let x_652 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_650.x, x_650.z));
  let x_653 : vec3<f32> = vec3<f32>(x_652.x, x_652.y, x_652.z);
  let x_654 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_657 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_657;
  let x_659 : vec2<f32> = u_xlat16;
  let x_660 : vec4<f32> = u_xlat1;
  let x_662 : vec2<f32> = (x_659 + vec2<f32>(x_660.x, x_660.z));
  let x_663 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
  let x_668 : vec4<f32> = u_xlat1;
  let x_670 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_668.x, x_668.y));
  let x_671 : vec3<f32> = vec3<f32>(x_670.x, x_670.y, x_670.z);
  let x_672 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_675 : f32 = u_xlat0.x;
  let x_677 : f32 = x_51.x_Lut2D_Params.z;
  let x_680 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_675 * x_677) + -(x_680));
  let x_684 : vec4<f32> = u_xlat3;
  let x_687 : vec4<f32> = u_xlat1;
  let x_689 : vec3<f32> = (-(vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat0;
  let x_694 : vec4<f32> = u_xlat1;
  let x_697 : vec4<f32> = u_xlat3;
  let x_699 : vec3<f32> = ((vec3<f32>(x_692.x, x_692.x, x_692.x) * vec3<f32>(x_694.x, x_694.y, x_694.z)) + vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat0;
  let x_706 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_707 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_709.x, x_709.y, x_709.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_714 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_714 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_718 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_718), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_721 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_721);
  let x_723 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_723 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_727 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_727);
  let x_731 : vec4<f32> = u_xlat0;
  let x_733 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_731.x, x_731.y, x_731.z, x_731.x));
  u_xlatb0 = vec3<bool>(x_733.x, x_733.y, x_733.z);
  let x_736 : bool = u_xlatb0.x;
  if (x_736) {
    let x_741 : f32 = u_xlat1.x;
    x_737 = x_741;
  } else {
    let x_744 : f32 = u_xlat2.x;
    x_737 = x_744;
  }
  let x_745 : f32 = x_737;
  u_xlat0.x = x_745;
  let x_748 : bool = u_xlatb0.y;
  if (x_748) {
    let x_753 : f32 = u_xlat1.y;
    x_749 = x_753;
  } else {
    let x_756 : f32 = u_xlat2.y;
    x_749 = x_756;
  }
  let x_757 : f32 = x_749;
  u_xlat0.y = x_757;
  let x_760 : bool = u_xlatb0.z;
  if (x_760) {
    let x_765 : f32 = u_xlat1.z;
    x_761 = x_765;
  } else {
    let x_768 : f32 = u_xlat2.z;
    x_761 = x_768;
  }
  let x_769 : f32 = x_761;
  u_xlat0.z = x_769;
  let x_771 : vec2<f32> = vs_TEXCOORD0;
  let x_773 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_777 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_779 : vec2<f32> = ((x_771 * vec2<f32>(x_773.x, x_773.y)) + vec2<f32>(x_777.z, x_777.w));
  let x_780 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
  let x_787 : vec4<f32> = u_xlat1;
  let x_789 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_787.x, x_787.y));
  u_xlat1.x = x_789.w;
  let x_793 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_793 * 2.0f) + -1.0f);
  let x_798 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_798 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_804 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_804, 0.0f, 1.0f);
  let x_808 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_808 * 2.0f) + -1.0f);
  let x_813 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_813)) + 1.0f);
  let x_819 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_819);
  let x_823 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_823) + 1.0f);
  let x_828 : f32 = u_xlat1.x;
  let x_830 : f32 = u_xlat8.x;
  u_xlat1.x = (x_828 * x_830);
  let x_833 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_836 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_836.x, x_836.y, x_836.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_840 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_840);
  let x_842 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_842 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_844 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_844);
  let x_846 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_846 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_849 : vec4<f32> = u_xlat0;
  let x_851 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_849.x, x_849.y, x_849.z, x_849.x));
  u_xlatb0 = vec3<bool>(x_851.x, x_851.y, x_851.z);
  let x_854 : bool = u_xlatb0.x;
  if (x_854) {
    let x_859 : f32 = u_xlat8.x;
    x_855 = x_859;
  } else {
    let x_862 : f32 = u_xlat2.x;
    x_855 = x_862;
  }
  let x_863 : f32 = x_855;
  u_xlat0.x = x_863;
  let x_866 : bool = u_xlatb0.y;
  if (x_866) {
    let x_871 : f32 = u_xlat8.y;
    x_867 = x_871;
  } else {
    let x_874 : f32 = u_xlat2.y;
    x_867 = x_874;
  }
  let x_875 : f32 = x_867;
  u_xlat0.y = x_875;
  let x_878 : bool = u_xlatb0.z;
  if (x_878) {
    let x_883 : f32 = u_xlat8.z;
    x_879 = x_883;
  } else {
    let x_886 : f32 = u_xlat2.z;
    x_879 = x_886;
  }
  let x_887 : f32 = x_879;
  u_xlat0.z = x_887;
  let x_889 : vec4<f32> = u_xlat1;
  let x_894 : vec4<f32> = u_xlat0;
  let x_896 : vec3<f32> = ((vec3<f32>(x_889.x, x_889.x, x_889.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_897 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat0;
  let x_901 : vec3<f32> = (vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_902 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_904.x, x_904.y, x_904.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_907 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_907 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_909 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_909), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_912 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_912);
  let x_914 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_914 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_916 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_916);
  let x_918 : vec4<f32> = u_xlat0;
  let x_920 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_918.x, x_918.y, x_918.z, x_918.x));
  u_xlatb0 = vec3<bool>(x_920.x, x_920.y, x_920.z);
  let x_925 : bool = u_xlatb0.x;
  if (x_925) {
    let x_930 : f32 = u_xlat1.x;
    x_926 = x_930;
  } else {
    let x_933 : f32 = u_xlat2.x;
    x_926 = x_933;
  }
  let x_934 : f32 = x_926;
  SV_Target0.x = x_934;
  let x_938 : bool = u_xlatb0.y;
  if (x_938) {
    let x_943 : f32 = u_xlat1.y;
    x_939 = x_943;
  } else {
    let x_946 : f32 = u_xlat2.y;
    x_939 = x_946;
  }
  let x_947 : f32 = x_939;
  SV_Target0.y = x_947;
  let x_950 : bool = u_xlatb0.z;
  if (x_950) {
    let x_955 : f32 = u_xlat1.z;
    x_951 = x_955;
  } else {
    let x_958 : f32 = u_xlat2.z;
    x_951 = x_958;
  }
  let x_959 : f32 = x_951;
  SV_Target0.z = x_959;
  let x_962 : f32 = u_xlat0.w;
  SV_Target0.w = x_962;
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

