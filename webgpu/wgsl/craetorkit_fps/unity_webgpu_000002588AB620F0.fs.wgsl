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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

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
  var u_xlatb1 : vec3<bool>;
  var x_662 : f32;
  var x_674 : f32;
  var x_686 : f32;
  var u_xlat15 : vec2<f32>;
  var x_832 : f32;
  var x_844 : f32;
  var x_856 : f32;
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
  let x_473 : vec3<f32> = (vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_474 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat3;
  let x_479 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_481 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_479.z, x_479.z, x_479.z));
  let x_482 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_484 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_487 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = x_51.x_Bloom_Color;
  let x_492 : vec3<f32> = (vec3<f32>(x_487.x, x_487.y, x_487.z) * x_491);
  let x_493 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_496 : f32 = u_xlat0.w;
  u_xlat5.w = (x_496 * 0.0625f);
  let x_499 : vec4<f32> = u_xlat1;
  let x_500 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_499 + x_500);
  let x_502 : vec4<f32> = u_xlat4;
  let x_504 : vec4<f32> = u_xlat3;
  let x_506 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  u_xlat1.w = 0.0f;
  let x_510 : vec4<f32> = u_xlat0;
  let x_511 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_510 + x_511);
  let x_514 : vec2<f32> = vs_TEXCOORD1;
  let x_517 : vec4<f32> = x_51.x_Grain_Params2;
  let x_521 : vec4<f32> = x_51.x_Grain_Params2;
  let x_523 : vec2<f32> = ((x_514 * vec2<f32>(x_517.x, x_517.y)) + vec2<f32>(x_521.z, x_521.w));
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_531.x, x_531.y));
  let x_534 : vec3<f32> = vec3<f32>(x_533.x, x_533.y, x_533.z);
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat0;
  let x_538 : vec3<f32> = vec3<f32>(x_537.x, x_537.y, x_537.z);
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat3;
  let x_545 : vec3<f32> = clamp(vec3<f32>(x_541.x, x_541.y, x_541.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : vec4<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_549.x, x_549.y, x_549.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_556 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_556);
  let x_560 : f32 = x_51.x_Grain_Params1.x;
  let x_561 : f32 = u_xlat22;
  u_xlat22 = ((x_560 * -(x_561)) + 1.0f);
  let x_565 : vec4<f32> = u_xlat0;
  let x_567 : vec4<f32> = u_xlat1;
  let x_569 : vec3<f32> = (vec3<f32>(x_565.x, x_565.y, x_565.z) * vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec4<f32> = u_xlat1;
  let x_575 : f32 = x_51.x_Grain_Params1.y;
  let x_577 : f32 = x_51.x_Grain_Params1.y;
  let x_579 : f32 = x_51.x_Grain_Params1.y;
  let x_581 : vec3<f32> = (vec3<f32>(x_572.x, x_572.y, x_572.z) * vec3<f32>(x_575, x_577, x_579));
  let x_582 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : vec4<f32> = u_xlat1;
  let x_586 : f32 = u_xlat22;
  let x_589 : vec4<f32> = u_xlat0;
  let x_591 : vec3<f32> = ((vec3<f32>(x_584.x, x_584.y, x_584.z) * vec3<f32>(x_586, x_586, x_586)) + vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat1;
  let x_598 : vec3<f32> = clamp(vec3<f32>(x_594.x, x_594.y, x_594.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat0.w;
  u_xlat0.w = x_602;
  let x_605 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_605, 0.0f, 1.0f);
  let x_608 : vec4<f32> = u_xlat1;
  let x_612 : vec3<f32> = (vec3<f32>(x_608.z, x_608.x, x_608.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat1;
  let x_619 : vec3<f32> = max(vec3<f32>(x_615.z, x_615.x, x_615.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec4<f32> = u_xlat4;
  let x_624 : vec3<f32> = log2(vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat4;
  let x_631 : vec3<f32> = (vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_632 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat4;
  let x_636 : vec3<f32> = exp2(vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat4;
  let x_646 : vec3<f32> = ((vec3<f32>(x_639.x, x_639.y, x_639.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_654 : vec4<f32> = u_xlat1;
  let x_657 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_654.z, x_654.x, x_654.y, x_654.z));
  u_xlatb1 = vec3<bool>(x_657.x, x_657.y, x_657.z);
  let x_661 : bool = u_xlatb1.x;
  if (x_661) {
    let x_666 : f32 = u_xlat3.x;
    x_662 = x_666;
  } else {
    let x_669 : f32 = u_xlat4.x;
    x_662 = x_669;
  }
  let x_670 : f32 = x_662;
  u_xlat1.x = x_670;
  let x_673 : bool = u_xlatb1.y;
  if (x_673) {
    let x_678 : f32 = u_xlat3.y;
    x_674 = x_678;
  } else {
    let x_681 : f32 = u_xlat4.y;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  u_xlat1.y = x_682;
  let x_685 : bool = u_xlatb1.z;
  if (x_685) {
    let x_690 : f32 = u_xlat3.z;
    x_686 = x_690;
  } else {
    let x_693 : f32 = u_xlat4.z;
    x_686 = x_693;
  }
  let x_694 : f32 = x_686;
  u_xlat1.z = x_694;
  let x_696 : vec4<f32> = u_xlat1;
  let x_700 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_700.z, x_700.z, x_700.z));
  let x_704 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_704);
  let x_708 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_710 : vec2<f32> = (vec2<f32>(x_708.x, x_708.y) * vec2<f32>(0.5f, 0.5f));
  let x_711 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_710.x, x_710.y, x_711.z);
  let x_713 : vec3<f32> = u_xlat8;
  let x_716 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_719 : vec3<f32> = u_xlat2;
  let x_721 : vec2<f32> = ((vec2<f32>(x_713.y, x_713.z) * vec2<f32>(x_716.x, x_716.y)) + vec2<f32>(x_719.x, x_719.y));
  let x_722 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_722.x, x_721.x, x_721.y, x_722.w);
  let x_725 : f32 = u_xlat8.x;
  let x_727 : f32 = x_51.x_Lut2D_Params.y;
  let x_730 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_725 * x_727) + x_730);
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_738.x, x_738.z));
  let x_741 : vec3<f32> = vec3<f32>(x_740.x, x_740.y, x_740.z);
  let x_742 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_745 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_745;
  let x_748 : vec2<f32> = u_xlat16;
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_748 + vec2<f32>(x_749.x, x_749.z));
  let x_755 : vec2<f32> = u_xlat15;
  let x_756 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_755);
  u_xlat2 = vec3<f32>(x_756.x, x_756.y, x_756.z);
  let x_759 : f32 = u_xlat1.x;
  let x_761 : f32 = x_51.x_Lut2D_Params.z;
  let x_764 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_759 * x_761) + -(x_764));
  let x_768 : vec4<f32> = u_xlat4;
  let x_771 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_768.x, x_768.y, x_768.z)) + x_771);
  let x_773 : vec4<f32> = u_xlat1;
  let x_775 : vec3<f32> = u_xlat8;
  let x_777 : vec4<f32> = u_xlat4;
  let x_779 : vec3<f32> = ((vec3<f32>(x_773.x, x_773.x, x_773.x) * x_775) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_782.x, x_782.y, x_782.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_787 : vec4<f32> = u_xlat1;
  let x_791 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_792 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec4<f32> = u_xlat3;
  let x_798 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_799 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat3;
  let x_804 : vec3<f32> = max(abs(vec3<f32>(x_801.x, x_801.y, x_801.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_805 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat3;
  let x_809 : vec3<f32> = log2(vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec4<f32> = u_xlat3;
  let x_816 : vec3<f32> = (vec3<f32>(x_812.x, x_812.y, x_812.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_817 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat3;
  let x_821 : vec3<f32> = exp2(vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_826.x, x_826.y, x_826.z, x_826.x));
  u_xlatb1 = vec3<bool>(x_828.x, x_828.y, x_828.z);
  let x_831 : bool = u_xlatb1.x;
  if (x_831) {
    let x_836 : f32 = u_xlat2.x;
    x_832 = x_836;
  } else {
    let x_839 : f32 = u_xlat3.x;
    x_832 = x_839;
  }
  let x_840 : f32 = x_832;
  u_xlat0.x = x_840;
  let x_843 : bool = u_xlatb1.y;
  if (x_843) {
    let x_848 : f32 = u_xlat2.y;
    x_844 = x_848;
  } else {
    let x_851 : f32 = u_xlat3.y;
    x_844 = x_851;
  }
  let x_852 : f32 = x_844;
  u_xlat0.y = x_852;
  let x_855 : bool = u_xlatb1.z;
  if (x_855) {
    let x_860 : f32 = u_xlat2.z;
    x_856 = x_860;
  } else {
    let x_863 : f32 = u_xlat3.z;
    x_856 = x_863;
  }
  let x_864 : f32 = x_856;
  u_xlat0.z = x_864;
  let x_868 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_868);
  let x_872 : bool = u_xlatb1.x;
  if (x_872) {
    let x_875 : vec4<f32> = u_xlat0;
    let x_876 : vec3<f32> = vec3<f32>(x_875.x, x_875.y, x_875.z);
    let x_877 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
    let x_879 : vec4<f32> = u_xlat1;
    let x_883 : vec3<f32> = clamp(vec3<f32>(x_879.x, x_879.y, x_879.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_884 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
    let x_886 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_892 : vec4<f32> = u_xlat0;
  SV_Target0 = x_892;
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

