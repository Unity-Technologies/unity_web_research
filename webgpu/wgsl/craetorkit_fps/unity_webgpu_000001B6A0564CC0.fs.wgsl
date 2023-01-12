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
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

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
  var x_685 : f32;
  var u_xlat15 : vec2<f32>;
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
    let x_173 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_175 : vec2<f32> = (vec2<f32>(x_169.x, x_169.y) * vec2<f32>(x_173, x_173));
    let x_176 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_185 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_183.x, x_183.y), 0.0f);
    u_xlat6 = x_185;
    let x_191 : vec3<f32> = u_xlat2;
    let x_193 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_191.x, x_191.y), 0.0f);
    let x_194 : vec3<f32> = vec3<f32>(x_193.x, x_193.y, x_193.z);
    let x_195 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_197 : vec4<f32> = u_xlat6;
    let x_198 : vec4<f32> = u_xlat3;
    let x_200 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_197 * x_198) + x_200);
    let x_202 : vec4<f32> = u_xlat3;
    let x_203 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_202 + x_203);
    let x_205 : vec2<f32> = u_xlat7;
    let x_206 : vec3<f32> = u_xlat8;
    let x_208 : vec2<f32> = (x_205 + vec2<f32>(x_206.x, x_206.y));
    let x_209 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_208.x, x_208.y, x_209.z);

    continuing {
      let x_211 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_211 + 1i);
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
  let x_518 : f32 = x_51.x_Vignette_Mode;
  u_xlatb1 = (x_518 < 0.5f);
  let x_520 : bool = u_xlatb1;
  if (x_520) {
    let x_523 : vec2<f32> = vs_TEXCOORD0;
    let x_527 : vec2<f32> = x_51.x_Vignette_Center;
    let x_529 : vec2<f32> = (x_523 + -(x_527));
    let x_530 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
    let x_532 : vec4<f32> = u_xlat1;
    let x_537 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_539 : vec2<f32> = (abs(vec2<f32>(x_532.y, x_532.x)) * vec2<f32>(x_537.x, x_537.x));
    let x_540 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_540.x, x_539.x, x_539.y, x_540.w);
    let x_544 : f32 = x_51.x_ScreenParams.x;
    let x_546 : f32 = x_51.x_ScreenParams.y;
    u_xlat22 = (x_544 / x_546);
    let x_548 : f32 = u_xlat22;
    u_xlat22 = (x_548 + -1.0f);
    let x_551 : f32 = x_51.x_Vignette_Settings.w;
    let x_552 : f32 = u_xlat22;
    u_xlat22 = ((x_551 * x_552) + 1.0f);
    let x_555 : f32 = u_xlat22;
    let x_557 : f32 = u_xlat1.z;
    u_xlat1.x = (x_555 * x_557);
    let x_560 : vec4<f32> = u_xlat1;
    let x_561 : vec2<f32> = vec2<f32>(x_560.x, x_560.y);
    let x_562 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
    let x_564 : vec4<f32> = u_xlat1;
    let x_568 : vec2<f32> = clamp(vec2<f32>(x_564.x, x_564.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_569 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_569.z, x_569.w);
    let x_571 : vec4<f32> = u_xlat1;
    let x_573 : vec2<f32> = log2(vec2<f32>(x_571.x, x_571.y));
    let x_574 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_573.x, x_573.y, x_574.z, x_574.w);
    let x_576 : vec4<f32> = u_xlat1;
    let x_579 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_581 : vec2<f32> = (vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_579.z, x_579.z));
    let x_582 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);
    let x_584 : vec4<f32> = u_xlat1;
    let x_586 : vec2<f32> = exp2(vec2<f32>(x_584.x, x_584.y));
    let x_587 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
    let x_589 : vec4<f32> = u_xlat1;
    let x_591 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_589.x, x_589.y), vec2<f32>(x_591.x, x_591.y));
    let x_596 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_596) + 1.0f);
    let x_601 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_601, 0.0f);
    let x_605 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_605);
    let x_609 : f32 = u_xlat1.x;
    let x_611 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat1.x = (x_609 * x_611);
    let x_615 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_615);
    let x_620 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_620) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_624 : vec4<f32> = u_xlat1;
    let x_626 : vec3<f32> = u_xlat8;
    let x_629 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_624.x, x_624.x, x_624.x) * x_626) + x_629);
    let x_631 : vec4<f32> = u_xlat0;
    let x_633 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_631.x, x_631.y, x_631.z) * x_633);
    let x_636 : f32 = u_xlat0.w;
    u_xlat2.x = (x_636 + -1.0f);
    let x_640 : f32 = u_xlat1.x;
    let x_642 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_640 * x_642) + 1.0f);
  } else {
    let x_652 : vec2<f32> = vs_TEXCOORD0;
    let x_653 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_652);
    u_xlat1.x = x_653.w;
    let x_657 : f32 = u_xlat1.x;
    u_xlat2.x = (x_657 * 0.077399381f);
    let x_663 : f32 = u_xlat1.x;
    u_xlat9 = (x_663 + 0.055f);
    let x_666 : f32 = u_xlat9;
    u_xlat9 = (x_666 * 0.947867334f);
    let x_669 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_669), 1.1920929e-07f);
    let x_673 : f32 = u_xlat9;
    u_xlat9 = log2(x_673);
    let x_675 : f32 = u_xlat9;
    u_xlat9 = (x_675 * 2.400000095f);
    let x_678 : f32 = u_xlat9;
    u_xlat9 = exp2(x_678);
    let x_682 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_682);
    let x_684 : bool = u_xlatb1;
    if (x_684) {
      let x_689 : f32 = u_xlat2.x;
      x_685 = x_689;
    } else {
      let x_691 : f32 = u_xlat9;
      x_685 = x_691;
    }
    let x_692 : f32 = x_685;
    u_xlat1.x = x_692;
    let x_695 : vec3<f32> = x_51.x_Vignette_Color;
    let x_697 : vec3<f32> = (-(x_695) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_698 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
    let x_700 : vec4<f32> = u_xlat1;
    let x_702 : vec4<f32> = u_xlat4;
    let x_706 : vec3<f32> = x_51.x_Vignette_Color;
    let x_707 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.x, x_700.x) * vec3<f32>(x_702.x, x_702.y, x_702.z)) + x_706);
    let x_708 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
    let x_710 : vec4<f32> = u_xlat0;
    let x_712 : vec4<f32> = u_xlat4;
    let x_715 : vec4<f32> = u_xlat0;
    let x_718 : vec3<f32> = ((vec3<f32>(x_710.x, x_710.y, x_710.z) * vec3<f32>(x_712.x, x_712.y, x_712.z)) + -(vec3<f32>(x_715.x, x_715.y, x_715.z)));
    let x_719 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
    let x_723 : f32 = x_51.x_Vignette_Opacity;
    let x_725 : vec4<f32> = u_xlat4;
    let x_728 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_723, x_723, x_723) * vec3<f32>(x_725.x, x_725.y, x_725.z)) + vec3<f32>(x_728.x, x_728.y, x_728.z));
    let x_732 : f32 = u_xlat0.w;
    u_xlat0.x = (x_732 + -1.0f);
    let x_736 : f32 = u_xlat1.x;
    let x_738 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_736 * x_738) + 1.0f);
  }
  let x_743 : vec2<f32> = vs_TEXCOORD1;
  let x_745 : vec4<f32> = x_51.x_Grain_Params2;
  let x_749 : vec4<f32> = x_51.x_Grain_Params2;
  let x_751 : vec2<f32> = ((x_743 * vec2<f32>(x_745.x, x_745.y)) + vec2<f32>(x_749.z, x_749.w));
  let x_752 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
  let x_759 : vec4<f32> = u_xlat0;
  let x_761 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_759.x, x_759.y));
  let x_762 : vec3<f32> = vec3<f32>(x_761.x, x_761.y, x_761.z);
  let x_763 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec3<f32> = u_xlat8;
  let x_766 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat4;
  let x_772 : vec3<f32> = clamp(vec3<f32>(x_768.x, x_768.y, x_768.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_773 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_775.x, x_775.y, x_775.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_782 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_782);
  let x_786 : f32 = x_51.x_Grain_Params1.x;
  let x_787 : f32 = u_xlat21;
  u_xlat21 = ((x_786 * -(x_787)) + 1.0f);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : vec3<f32> = u_xlat8;
  let x_794 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) * x_793);
  let x_795 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat0;
  let x_800 : f32 = x_51.x_Grain_Params1.y;
  let x_802 : f32 = x_51.x_Grain_Params1.y;
  let x_804 : f32 = x_51.x_Grain_Params1.y;
  let x_806 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(x_800, x_802, x_804));
  let x_807 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat0;
  let x_811 : f32 = u_xlat21;
  let x_814 : vec3<f32> = u_xlat8;
  let x_815 : vec3<f32> = ((vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(x_811, x_811, x_811)) + x_814);
  let x_816 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat3;
  let x_821 : f32 = x_51.x_PostExposure;
  let x_823 : f32 = x_51.x_PostExposure;
  let x_825 : f32 = x_51.x_PostExposure;
  let x_827 : f32 = x_51.x_PostExposure;
  let x_828 : vec4<f32> = vec4<f32>(x_821, x_823, x_825, x_827);
  u_xlat0 = (x_818 * vec4<f32>(x_828.x, x_828.y, x_828.z, x_828.w));
  let x_835 : vec4<f32> = u_xlat0;
  let x_842 : vec3<f32> = ((vec3<f32>(x_835.z, x_835.x, x_835.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat1;
  let x_847 : vec3<f32> = log2(vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat1;
  let x_857 : vec3<f32> = ((vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_858 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat1;
  let x_864 : vec3<f32> = clamp(vec3<f32>(x_860.x, x_860.y, x_860.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_865 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : vec4<f32> = u_xlat1;
  let x_871 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_867.x, x_867.y, x_867.z) * vec3<f32>(x_871.z, x_871.z, x_871.z));
  let x_875 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_875);
  let x_879 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_881 : vec2<f32> = (vec2<f32>(x_879.x, x_879.y) * vec2<f32>(0.5f, 0.5f));
  let x_882 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_881.x, x_881.y, x_882.z);
  let x_884 : vec3<f32> = u_xlat8;
  let x_887 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_890 : vec3<f32> = u_xlat2;
  let x_892 : vec2<f32> = ((vec2<f32>(x_884.y, x_884.z) * vec2<f32>(x_887.x, x_887.y)) + vec2<f32>(x_890.x, x_890.y));
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_893.x, x_892.x, x_892.y, x_893.w);
  let x_896 : f32 = u_xlat8.x;
  let x_898 : f32 = x_51.x_Lut2D_Params.y;
  let x_901 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_896 * x_898) + x_901);
  let x_909 : vec4<f32> = u_xlat3;
  let x_911 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_909.x, x_909.z));
  let x_912 : vec3<f32> = vec3<f32>(x_911.x, x_911.y, x_911.z);
  let x_913 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_916 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_916;
  let x_919 : vec2<f32> = u_xlat16;
  let x_920 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_919 + vec2<f32>(x_920.x, x_920.z));
  let x_926 : vec2<f32> = u_xlat15;
  let x_927 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_926);
  u_xlat2 = vec3<f32>(x_927.x, x_927.y, x_927.z);
  let x_930 : f32 = u_xlat1.x;
  let x_932 : f32 = x_51.x_Lut2D_Params.z;
  let x_935 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_930 * x_932) + -(x_935));
  let x_939 : vec4<f32> = u_xlat4;
  let x_942 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_939.x, x_939.y, x_939.z)) + x_942);
  let x_944 : vec4<f32> = u_xlat1;
  let x_946 : vec3<f32> = u_xlat8;
  let x_948 : vec4<f32> = u_xlat4;
  let x_950 : vec3<f32> = ((vec3<f32>(x_944.x, x_944.x, x_944.x) * x_946) + vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_955 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_955);
  let x_957 : bool = u_xlatb1;
  if (x_957) {
    let x_960 : vec4<f32> = u_xlat0;
    let x_961 : vec3<f32> = vec3<f32>(x_960.x, x_960.y, x_960.z);
    let x_962 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
    let x_964 : vec4<f32> = u_xlat1;
    let x_968 : vec3<f32> = clamp(vec3<f32>(x_964.x, x_964.y, x_964.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_969 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
    let x_971 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_971.x, x_971.y, x_971.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_977 : vec4<f32> = u_xlat0;
  SV_Target0 = x_977;
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

