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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var u_xlat22 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_660 : f32;
  var x_672 : f32;
  var x_684 : f32;
  var x_825 : f32;
  var x_837 : f32;
  var x_849 : f32;
  var x_943 : f32;
  var x_955 : f32;
  var x_967 : f32;
  var x_1014 : f32;
  var x_1027 : f32;
  var x_1039 : f32;
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
  let x_515 : vec2<f32> = vs_TEXCOORD1;
  let x_518 : vec4<f32> = x_51.x_Grain_Params2;
  let x_522 : vec4<f32> = x_51.x_Grain_Params2;
  let x_524 : vec2<f32> = ((x_515 * vec2<f32>(x_518.x, x_518.y)) + vec2<f32>(x_522.z, x_522.w));
  let x_525 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_532 : vec4<f32> = u_xlat1;
  let x_534 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_532.x, x_532.y));
  let x_535 : vec3<f32> = vec3<f32>(x_534.x, x_534.y, x_534.z);
  let x_536 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat0;
  let x_539 : vec3<f32> = vec3<f32>(x_538.x, x_538.y, x_538.z);
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat3;
  let x_546 : vec3<f32> = clamp(vec3<f32>(x_542.x, x_542.y, x_542.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_547 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_550 : vec4<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_557 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_557);
  let x_561 : f32 = x_51.x_Grain_Params1.x;
  let x_562 : f32 = u_xlat22;
  u_xlat22 = ((x_561 * -(x_562)) + 1.0f);
  let x_566 : vec4<f32> = u_xlat0;
  let x_568 : vec4<f32> = u_xlat1;
  let x_570 : vec3<f32> = (vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat1;
  let x_576 : f32 = x_51.x_Grain_Params1.y;
  let x_578 : f32 = x_51.x_Grain_Params1.y;
  let x_580 : f32 = x_51.x_Grain_Params1.y;
  let x_582 : vec3<f32> = (vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_576, x_578, x_580));
  let x_583 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat1;
  let x_587 : f32 = u_xlat22;
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec3<f32> = ((vec3<f32>(x_585.x, x_585.y, x_585.z) * vec3<f32>(x_587, x_587, x_587)) + vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat0;
  let x_599 : vec3<f32> = clamp(vec3<f32>(x_595.x, x_595.y, x_595.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_600 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = u_xlat0.w;
  u_xlat21 = x_603;
  let x_604 : f32 = u_xlat21;
  u_xlat21 = clamp(x_604, 0.0f, 1.0f);
  let x_606 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = (vec3<f32>(x_606.z, x_606.x, x_606.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_611 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat0;
  let x_617 : vec3<f32> = max(vec3<f32>(x_613.z, x_613.x, x_613.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat3;
  let x_622 : vec3<f32> = log2(vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat3;
  let x_629 : vec3<f32> = (vec3<f32>(x_625.x, x_625.y, x_625.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_630 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat3;
  let x_634 : vec3<f32> = exp2(vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat3;
  let x_644 : vec3<f32> = ((vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_652 : vec4<f32> = u_xlat0;
  let x_655 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_652.z, x_652.x, x_652.y, x_652.z));
  u_xlatb0 = vec3<bool>(x_655.x, x_655.y, x_655.z);
  let x_659 : bool = u_xlatb0.x;
  if (x_659) {
    let x_664 : f32 = u_xlat1.x;
    x_660 = x_664;
  } else {
    let x_667 : f32 = u_xlat3.x;
    x_660 = x_667;
  }
  let x_668 : f32 = x_660;
  u_xlat0.x = x_668;
  let x_671 : bool = u_xlatb0.y;
  if (x_671) {
    let x_676 : f32 = u_xlat1.y;
    x_672 = x_676;
  } else {
    let x_679 : f32 = u_xlat3.y;
    x_672 = x_679;
  }
  let x_680 : f32 = x_672;
  u_xlat0.y = x_680;
  let x_683 : bool = u_xlatb0.z;
  if (x_683) {
    let x_688 : f32 = u_xlat1.z;
    x_684 = x_688;
  } else {
    let x_691 : f32 = u_xlat3.z;
    x_684 = x_691;
  }
  let x_692 : f32 = x_684;
  u_xlat0.z = x_692;
  let x_694 : vec4<f32> = u_xlat0;
  let x_698 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_700 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) * vec3<f32>(x_698.z, x_698.z, x_698.z));
  let x_701 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_704 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_704);
  let x_708 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_710 : vec2<f32> = (vec2<f32>(x_708.x, x_708.y) * vec2<f32>(0.5f, 0.5f));
  let x_711 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_710.x, x_711.y, x_711.z, x_710.y);
  let x_713 : vec4<f32> = u_xlat1;
  let x_716 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_719 : vec4<f32> = u_xlat1;
  let x_721 : vec2<f32> = ((vec2<f32>(x_713.y, x_713.z) * vec2<f32>(x_716.x, x_716.y)) + vec2<f32>(x_719.x, x_719.w));
  let x_722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_721.x, x_721.y, x_722.w);
  let x_725 : f32 = u_xlat7.x;
  let x_727 : f32 = x_51.x_Lut2D_Params.y;
  let x_730 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_725 * x_727) + x_730);
  let x_738 : vec4<f32> = u_xlat1;
  let x_740 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_738.x, x_738.z));
  let x_741 : vec3<f32> = vec3<f32>(x_740.x, x_740.y, x_740.z);
  let x_742 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_745 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_745;
  let x_747 : vec2<f32> = u_xlat16;
  let x_748 : vec4<f32> = u_xlat1;
  let x_750 : vec2<f32> = (x_747 + vec2<f32>(x_748.x, x_748.z));
  let x_751 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
  let x_756 : vec4<f32> = u_xlat1;
  let x_758 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_756.x, x_756.y));
  let x_759 : vec3<f32> = vec3<f32>(x_758.x, x_758.y, x_758.z);
  let x_760 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_763 : f32 = u_xlat0.x;
  let x_765 : f32 = x_51.x_Lut2D_Params.z;
  let x_768 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_763 * x_765) + -(x_768));
  let x_772 : vec4<f32> = u_xlat3;
  let x_775 : vec4<f32> = u_xlat1;
  let x_777 : vec3<f32> = (-(vec3<f32>(x_772.x, x_772.y, x_772.z)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : vec4<f32> = u_xlat0;
  let x_782 : vec4<f32> = u_xlat1;
  let x_785 : vec4<f32> = u_xlat3;
  let x_787 : vec3<f32> = ((vec3<f32>(x_780.x, x_780.x, x_780.x) * vec3<f32>(x_782.x, x_782.y, x_782.z)) + vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat0;
  let x_794 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_797.x, x_797.y, x_797.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_802 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_802 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_806 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_806), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_809 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_809);
  let x_811 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_811 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_815 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_815);
  let x_819 : vec4<f32> = u_xlat0;
  let x_821 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_819.x, x_819.y, x_819.z, x_819.x));
  u_xlatb0 = vec3<bool>(x_821.x, x_821.y, x_821.z);
  let x_824 : bool = u_xlatb0.x;
  if (x_824) {
    let x_829 : f32 = u_xlat1.x;
    x_825 = x_829;
  } else {
    let x_832 : f32 = u_xlat2.x;
    x_825 = x_832;
  }
  let x_833 : f32 = x_825;
  u_xlat0.x = x_833;
  let x_836 : bool = u_xlatb0.y;
  if (x_836) {
    let x_841 : f32 = u_xlat1.y;
    x_837 = x_841;
  } else {
    let x_844 : f32 = u_xlat2.y;
    x_837 = x_844;
  }
  let x_845 : f32 = x_837;
  u_xlat0.y = x_845;
  let x_848 : bool = u_xlatb0.z;
  if (x_848) {
    let x_853 : f32 = u_xlat1.z;
    x_849 = x_853;
  } else {
    let x_856 : f32 = u_xlat2.z;
    x_849 = x_856;
  }
  let x_857 : f32 = x_849;
  u_xlat0.z = x_857;
  let x_859 : vec2<f32> = vs_TEXCOORD0;
  let x_861 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_865 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_867 : vec2<f32> = ((x_859 * vec2<f32>(x_861.x, x_861.y)) + vec2<f32>(x_865.z, x_865.w));
  let x_868 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_867.x, x_867.y, x_868.z, x_868.w);
  let x_875 : vec4<f32> = u_xlat1;
  let x_877 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_875.x, x_875.y));
  u_xlat1.x = x_877.w;
  let x_881 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_881 * 2.0f) + -1.0f);
  let x_886 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_886 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_892 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_892, 0.0f, 1.0f);
  let x_896 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_896 * 2.0f) + -1.0f);
  let x_901 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_901)) + 1.0f);
  let x_907 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_907);
  let x_911 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_911) + 1.0f);
  let x_916 : f32 = u_xlat1.x;
  let x_918 : f32 = u_xlat8.x;
  u_xlat1.x = (x_916 * x_918);
  let x_921 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_924 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_924.x, x_924.y, x_924.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_928 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_928);
  let x_930 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_930 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_932 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_932);
  let x_934 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_934 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_937 : vec4<f32> = u_xlat0;
  let x_939 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_937.x, x_937.y, x_937.z, x_937.x));
  u_xlatb0 = vec3<bool>(x_939.x, x_939.y, x_939.z);
  let x_942 : bool = u_xlatb0.x;
  if (x_942) {
    let x_947 : f32 = u_xlat8.x;
    x_943 = x_947;
  } else {
    let x_950 : f32 = u_xlat2.x;
    x_943 = x_950;
  }
  let x_951 : f32 = x_943;
  u_xlat0.x = x_951;
  let x_954 : bool = u_xlatb0.y;
  if (x_954) {
    let x_959 : f32 = u_xlat8.y;
    x_955 = x_959;
  } else {
    let x_962 : f32 = u_xlat2.y;
    x_955 = x_962;
  }
  let x_963 : f32 = x_955;
  u_xlat0.y = x_963;
  let x_966 : bool = u_xlatb0.z;
  if (x_966) {
    let x_971 : f32 = u_xlat8.z;
    x_967 = x_971;
  } else {
    let x_974 : f32 = u_xlat2.z;
    x_967 = x_974;
  }
  let x_975 : f32 = x_967;
  u_xlat0.z = x_975;
  let x_977 : vec4<f32> = u_xlat1;
  let x_982 : vec4<f32> = u_xlat0;
  let x_984 : vec3<f32> = ((vec3<f32>(x_977.x, x_977.x, x_977.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat0;
  let x_989 : vec3<f32> = (vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_990 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  let x_992 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_992.x, x_992.y, x_992.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_995 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_995 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_997 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_997), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1000 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1000);
  let x_1002 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1002 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1004 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1004);
  let x_1006 : vec4<f32> = u_xlat0;
  let x_1008 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1006.x));
  u_xlatb0 = vec3<bool>(x_1008.x, x_1008.y, x_1008.z);
  let x_1013 : bool = u_xlatb0.x;
  if (x_1013) {
    let x_1018 : f32 = u_xlat1.x;
    x_1014 = x_1018;
  } else {
    let x_1021 : f32 = u_xlat2.x;
    x_1014 = x_1021;
  }
  let x_1022 : f32 = x_1014;
  SV_Target0.x = x_1022;
  let x_1026 : bool = u_xlatb0.y;
  if (x_1026) {
    let x_1031 : f32 = u_xlat1.y;
    x_1027 = x_1031;
  } else {
    let x_1034 : f32 = u_xlat2.y;
    x_1027 = x_1034;
  }
  let x_1035 : f32 = x_1027;
  SV_Target0.y = x_1035;
  let x_1038 : bool = u_xlatb0.z;
  if (x_1038) {
    let x_1043 : f32 = u_xlat1.z;
    x_1039 = x_1043;
  } else {
    let x_1046 : f32 = u_xlat2.z;
    x_1039 = x_1046;
  }
  let x_1047 : f32 = x_1039;
  SV_Target0.z = x_1047;
  let x_1049 : f32 = u_xlat21;
  SV_Target0.w = x_1049;
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

