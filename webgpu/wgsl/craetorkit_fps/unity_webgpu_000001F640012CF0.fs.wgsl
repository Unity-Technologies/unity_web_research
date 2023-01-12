struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat16 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var x_532 : f32;
  var u_xlat15 : f32;
  var u_xlat5 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_926 : f32;
  var x_938 : f32;
  var x_950 : f32;
  var x_1019 : f32;
  var x_1032 : f32;
  var x_1044 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_54 : vec4<f32> = x_49.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_62 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_62.x, x_62.y, x_62.w, x_62.y)) * vec4<f32>(x_68.x, x_68.x, x_68.x, x_68.x)) + vec4<f32>(x_71.x, x_71.y, x_71.x, x_71.y));
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_74, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_78 : vec4<f32> = u_xlat2;
  let x_82 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat2 = (x_78 * vec4<f32>(x_82, x_82, x_82, x_82));
  let x_91 : vec4<f32> = u_xlat2;
  let x_93 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_91.x, x_91.y));
  u_xlat3 = x_93;
  let x_97 : vec4<f32> = u_xlat2;
  let x_99 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_97.z, x_97.w));
  u_xlat2 = x_99;
  let x_100 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_100 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_104);
  let x_106 : vec4<f32> = u_xlat0;
  let x_110 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_113 : vec2<f32> = vs_TEXCOORD0;
  let x_114 : vec2<f32> = ((-(vec2<f32>(x_106.z, x_106.y)) * vec2<f32>(x_110.x, x_110.x)) + x_113);
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat3;
  let x_121 : vec2<f32> = clamp(vec2<f32>(x_117.x, x_117.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_122 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat3;
  let x_127 : f32 = x_49.x_RenderViewportScaleFactor;
  let x_129 : vec2<f32> = (vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_127, x_127));
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_135 : vec4<f32> = u_xlat3;
  let x_137 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_135.x, x_135.y));
  u_xlat3 = x_137;
  let x_138 : vec4<f32> = u_xlat2;
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_138 + x_139);
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_147 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_141.z, x_141.w, x_141.x, x_141.w) * vec4<f32>(x_144.x, x_144.x, x_144.x, x_144.x)) + vec4<f32>(x_147.x, x_147.y, x_147.x, x_147.y));
  let x_150 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_150, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_154 : vec4<f32> = u_xlat3;
  let x_156 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat3 = (x_154 * vec4<f32>(x_156, x_156, x_156, x_156));
  let x_163 : vec4<f32> = u_xlat3;
  let x_165 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_163.x, x_163.y));
  u_xlat4 = x_165;
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_166 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_168);
  let x_170 : vec2<f32> = vs_TEXCOORD0;
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat3;
  let x_177 : vec2<f32> = clamp(vec2<f32>(x_173.x, x_173.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_178.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat3;
  let x_183 : f32 = x_49.x_RenderViewportScaleFactor;
  let x_185 : vec2<f32> = (vec2<f32>(x_180.x, x_180.y) * vec2<f32>(x_183, x_183));
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_191.x, x_191.y));
  u_xlat4 = x_193;
  let x_194 : vec4<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_194 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_198);
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_203.z, x_203.w));
  u_xlat3 = x_205;
  let x_206 : vec4<f32> = u_xlat3;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_206 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_208);
  let x_210 : vec4<f32> = u_xlat0;
  let x_213 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_216 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_210.z, x_210.y, x_210.w, x_210.y) * vec4<f32>(x_213.x, x_213.x, x_213.x, x_213.x)) + vec4<f32>(x_216.x, x_216.y, x_216.x, x_216.y));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_219, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_223 : vec4<f32> = u_xlat3;
  let x_225 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat3 = (x_223 * vec4<f32>(x_225, x_225, x_225, x_225));
  let x_231 : vec4<f32> = u_xlat3;
  let x_233 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_231.x, x_231.y));
  u_xlat4 = x_233;
  let x_234 : vec4<f32> = u_xlat2;
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_234 + x_235);
  let x_240 : vec4<f32> = u_xlat3;
  let x_242 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_240.z, x_240.w));
  u_xlat3 = x_242;
  let x_243 : vec4<f32> = u_xlat3;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_243 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_245);
  let x_247 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_253 : vec2<f32> = vs_TEXCOORD0;
  let x_254 : vec2<f32> = ((vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_250.x, x_250.x)) + x_253);
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_254.x, x_254.y, x_255.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_261 : vec2<f32> = clamp(vec2<f32>(x_257.x, x_257.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_261.x, x_261.y, x_262.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat0;
  let x_267 : f32 = x_49.x_RenderViewportScaleFactor;
  let x_269 : vec2<f32> = (vec2<f32>(x_264.x, x_264.y) * vec2<f32>(x_267, x_267));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_270.z, x_270.w);
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_275.x, x_275.y));
  u_xlat0 = x_277;
  let x_278 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_278 + x_279);
  let x_281 : vec4<f32> = u_xlat0;
  let x_283 : vec3<f32> = x_49.x_Bloom_Settings;
  u_xlat0 = (x_281 * vec4<f32>(x_283.y, x_283.y, x_283.y, x_283.y));
  let x_286 : vec2<f32> = vs_TEXCOORD0;
  let x_289 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_293 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_295 : vec2<f32> = ((x_286 * vec2<f32>(x_289.x, x_289.y)) + vec2<f32>(x_293.z, x_293.w));
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  let x_303 : vec4<f32> = u_xlat2;
  let x_305 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_303.x, x_303.y));
  let x_306 : vec3<f32> = vec3<f32>(x_305.x, x_305.y, x_305.z);
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat0;
  let x_313 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat2;
  let x_319 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_321 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_319.z, x_319.z, x_319.z));
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_324 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_327 : vec4<f32> = u_xlat0;
  let x_331 : vec3<f32> = x_49.x_Bloom_Color;
  let x_332 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) * x_331);
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_337 : f32 = u_xlat0.w;
  u_xlat4.w = (x_337 * 0.0625f);
  let x_340 : vec4<f32> = u_xlat1;
  let x_341 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_340 + x_341);
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec4<f32> = u_xlat2;
  let x_347 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  u_xlat1.w = 0.0f;
  let x_351 : vec4<f32> = u_xlat0;
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_351 + x_352);
  let x_359 : f32 = x_49.x_Vignette_Mode;
  u_xlatb1 = (x_359 < 0.5f);
  let x_362 : bool = u_xlatb1;
  if (x_362) {
    let x_365 : vec2<f32> = vs_TEXCOORD0;
    let x_369 : vec2<f32> = x_49.x_Vignette_Center;
    let x_371 : vec2<f32> = (x_365 + -(x_369));
    let x_372 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
    let x_374 : vec4<f32> = u_xlat1;
    let x_379 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_381 : vec2<f32> = (abs(vec2<f32>(x_374.y, x_374.x)) * vec2<f32>(x_379.x, x_379.x));
    let x_382 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_382.x, x_381.x, x_381.y, x_382.w);
    let x_387 : f32 = x_49.x_ScreenParams.x;
    let x_390 : f32 = x_49.x_ScreenParams.y;
    u_xlat16 = (x_387 / x_390);
    let x_392 : f32 = u_xlat16;
    u_xlat16 = (x_392 + -1.0f);
    let x_395 : f32 = x_49.x_Vignette_Settings.w;
    let x_396 : f32 = u_xlat16;
    u_xlat16 = ((x_395 * x_396) + 1.0f);
    let x_399 : f32 = u_xlat16;
    let x_402 : f32 = u_xlat1.z;
    u_xlat1.x = (x_399 * x_402);
    let x_405 : vec4<f32> = u_xlat1;
    let x_406 : vec2<f32> = vec2<f32>(x_405.x, x_405.y);
    let x_407 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
    let x_409 : vec4<f32> = u_xlat1;
    let x_413 : vec2<f32> = clamp(vec2<f32>(x_409.x, x_409.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_414 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
    let x_416 : vec4<f32> = u_xlat1;
    let x_418 : vec2<f32> = log2(vec2<f32>(x_416.x, x_416.y));
    let x_419 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
    let x_421 : vec4<f32> = u_xlat1;
    let x_424 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_426 : vec2<f32> = (vec2<f32>(x_421.x, x_421.y) * vec2<f32>(x_424.z, x_424.z));
    let x_427 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
    let x_429 : vec4<f32> = u_xlat1;
    let x_431 : vec2<f32> = exp2(vec2<f32>(x_429.x, x_429.y));
    let x_432 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
    let x_434 : vec4<f32> = u_xlat1;
    let x_436 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_434.x, x_434.y), vec2<f32>(x_436.x, x_436.y));
    let x_441 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_441) + 1.0f);
    let x_446 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_446, 0.0f);
    let x_450 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_450);
    let x_454 : f32 = u_xlat1.x;
    let x_456 : f32 = x_49.x_Vignette_Settings.y;
    u_xlat1.x = (x_454 * x_456);
    let x_460 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_460);
    let x_467 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_467) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_471 : vec4<f32> = u_xlat1;
    let x_473 : vec3<f32> = u_xlat6;
    let x_476 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_471.x, x_471.x, x_471.x) * x_473) + x_476);
    let x_478 : vec4<f32> = u_xlat0;
    let x_480 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_478.x, x_478.y, x_478.z) * x_480);
    let x_483 : f32 = u_xlat0.w;
    u_xlat2.x = (x_483 + -1.0f);
    let x_487 : f32 = u_xlat1.x;
    let x_489 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_487 * x_489) + 1.0f);
  } else {
    let x_499 : vec2<f32> = vs_TEXCOORD0;
    let x_500 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_499);
    u_xlat1.x = x_500.w;
    let x_504 : f32 = u_xlat1.x;
    u_xlat3.x = (x_504 * 0.077399381f);
    let x_510 : f32 = u_xlat1.x;
    u_xlat8 = (x_510 + 0.055f);
    let x_513 : f32 = u_xlat8;
    u_xlat8 = (x_513 * 0.947867334f);
    let x_516 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_516), 1.1920929e-07f);
    let x_520 : f32 = u_xlat8;
    u_xlat8 = log2(x_520);
    let x_522 : f32 = u_xlat8;
    u_xlat8 = (x_522 * 2.400000095f);
    let x_525 : f32 = u_xlat8;
    u_xlat8 = exp2(x_525);
    let x_529 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_529);
    let x_531 : bool = u_xlatb1;
    if (x_531) {
      let x_536 : f32 = u_xlat3.x;
      x_532 = x_536;
    } else {
      let x_538 : f32 = u_xlat8;
      x_532 = x_538;
    }
    let x_539 : f32 = x_532;
    u_xlat1.x = x_539;
    let x_542 : vec3<f32> = x_49.x_Vignette_Color;
    let x_544 : vec3<f32> = (-(x_542) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_545 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
    let x_547 : vec4<f32> = u_xlat1;
    let x_549 : vec4<f32> = u_xlat3;
    let x_553 : vec3<f32> = x_49.x_Vignette_Color;
    let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.x, x_547.x) * vec3<f32>(x_549.x, x_549.y, x_549.z)) + x_553);
    let x_555 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
    let x_557 : vec4<f32> = u_xlat0;
    let x_559 : vec4<f32> = u_xlat3;
    let x_562 : vec4<f32> = u_xlat0;
    let x_565 : vec3<f32> = ((vec3<f32>(x_557.x, x_557.y, x_557.z) * vec3<f32>(x_559.x, x_559.y, x_559.z)) + -(vec3<f32>(x_562.x, x_562.y, x_562.z)));
    let x_566 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
    let x_570 : f32 = x_49.x_Vignette_Opacity;
    let x_572 : vec4<f32> = u_xlat3;
    let x_575 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_570, x_570, x_570) * vec3<f32>(x_572.x, x_572.y, x_572.z)) + vec3<f32>(x_575.x, x_575.y, x_575.z));
    let x_579 : f32 = u_xlat0.w;
    u_xlat0.x = (x_579 + -1.0f);
    let x_583 : f32 = u_xlat1.x;
    let x_585 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_583 * x_585) + 1.0f);
  }
  let x_589 : vec2<f32> = vs_TEXCOORD1;
  let x_592 : vec4<f32> = x_49.x_Grain_Params2;
  let x_596 : vec4<f32> = x_49.x_Grain_Params2;
  let x_598 : vec2<f32> = ((x_589 * vec2<f32>(x_592.x, x_592.y)) + vec2<f32>(x_596.z, x_596.w));
  let x_599 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
  let x_606 : vec4<f32> = u_xlat0;
  let x_608 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_606.x, x_606.y));
  let x_609 : vec3<f32> = vec3<f32>(x_608.x, x_608.y, x_608.z);
  let x_610 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec3<f32> = u_xlat6;
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat3;
  let x_619 : vec3<f32> = clamp(vec3<f32>(x_615.x, x_615.y, x_615.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_623 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_630 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_630);
  let x_634 : f32 = x_49.x_Grain_Params1.x;
  let x_635 : f32 = u_xlat15;
  u_xlat15 = ((x_634 * -(x_635)) + 1.0f);
  let x_639 : vec4<f32> = u_xlat0;
  let x_641 : vec3<f32> = u_xlat6;
  let x_642 : vec3<f32> = (vec3<f32>(x_639.x, x_639.y, x_639.z) * x_641);
  let x_643 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat0;
  let x_648 : f32 = x_49.x_Grain_Params1.y;
  let x_650 : f32 = x_49.x_Grain_Params1.y;
  let x_652 : f32 = x_49.x_Grain_Params1.y;
  let x_654 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(x_648, x_650, x_652));
  let x_655 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat0;
  let x_659 : f32 = u_xlat15;
  let x_662 : vec3<f32> = u_xlat6;
  let x_663 : vec3<f32> = ((vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(x_659, x_659, x_659)) + x_662);
  let x_664 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat2;
  let x_669 : f32 = x_49.x_PostExposure;
  let x_671 : f32 = x_49.x_PostExposure;
  let x_673 : f32 = x_49.x_PostExposure;
  let x_675 : f32 = x_49.x_PostExposure;
  let x_676 : vec4<f32> = vec4<f32>(x_669, x_671, x_673, x_675);
  u_xlat0 = (x_666 * vec4<f32>(x_676.x, x_676.y, x_676.z, x_676.w));
  let x_683 : vec4<f32> = u_xlat0;
  let x_690 : vec3<f32> = ((vec3<f32>(x_683.z, x_683.x, x_683.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_691 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat0;
  let x_695 : vec3<f32> = log2(vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat0;
  let x_705 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat0;
  let x_712 : vec3<f32> = clamp(vec3<f32>(x_708.x, x_708.y, x_708.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_713 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat0;
  let x_719 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_721 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(x_719.z, x_719.z, x_719.z));
  let x_722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_726 : f32 = u_xlat1.x;
  u_xlat5 = floor(x_726);
  let x_729 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_732 : vec2<f32> = (vec2<f32>(x_729.x, x_729.y) * vec2<f32>(0.5f, 0.5f));
  let x_733 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_732.x, x_733.y, x_733.z, x_732.y);
  let x_735 : vec4<f32> = u_xlat1;
  let x_738 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_741 : vec4<f32> = u_xlat1;
  let x_743 : vec2<f32> = ((vec2<f32>(x_735.y, x_735.z) * vec2<f32>(x_738.x, x_738.y)) + vec2<f32>(x_741.x, x_741.w));
  let x_744 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_744.x, x_743.x, x_743.y, x_744.w);
  let x_746 : f32 = u_xlat5;
  let x_748 : f32 = x_49.x_Lut2D_Params.y;
  let x_751 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_746 * x_748) + x_751);
  let x_759 : vec4<f32> = u_xlat1;
  let x_761 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_759.x, x_759.z));
  let x_762 : vec3<f32> = vec3<f32>(x_761.x, x_761.y, x_761.z);
  let x_763 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_766 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat3.x = x_766;
  u_xlat3.y = 0.0f;
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = u_xlat3;
  let x_773 : vec2<f32> = (vec2<f32>(x_769.x, x_769.z) + vec2<f32>(x_771.x, x_771.y));
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
  let x_779 : vec4<f32> = u_xlat1;
  let x_781 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_779.x, x_779.y));
  let x_782 : vec3<f32> = vec3<f32>(x_781.x, x_781.y, x_781.z);
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_786 : f32 = u_xlat0.x;
  let x_788 : f32 = x_49.x_Lut2D_Params.z;
  let x_790 : f32 = u_xlat5;
  u_xlat0.x = ((x_786 * x_788) + -(x_790));
  let x_794 : vec4<f32> = u_xlat2;
  let x_797 : vec4<f32> = u_xlat1;
  let x_799 : vec3<f32> = (-(vec3<f32>(x_794.x, x_794.y, x_794.z)) + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat0;
  let x_804 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat2;
  let x_809 : vec3<f32> = ((vec3<f32>(x_802.x, x_802.x, x_802.x) * vec3<f32>(x_804.x, x_804.y, x_804.z)) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec2<f32> = vs_TEXCOORD0;
  let x_815 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_819 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_821 : vec2<f32> = ((x_812 * vec2<f32>(x_815.x, x_815.y)) + vec2<f32>(x_819.z, x_819.w));
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_829.x, x_829.y));
  u_xlat1.x = x_831.w;
  let x_835 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_835 * 2.0f) + -1.0f);
  let x_840 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_840 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_846 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_846, 0.0f, 1.0f);
  let x_850 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_850 * 2.0f) + -1.0f);
  let x_855 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_855)) + 1.0f);
  let x_861 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_861);
  let x_865 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_865) + 1.0f);
  let x_870 : f32 = u_xlat1.x;
  let x_872 : f32 = u_xlat6.x;
  u_xlat1.x = (x_870 * x_872);
  let x_875 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_880 : vec4<f32> = u_xlat0;
  let x_884 : vec3<f32> = max(abs(vec3<f32>(x_880.x, x_880.y, x_880.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_885 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat2;
  let x_889 : vec3<f32> = log2(vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat2;
  let x_896 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_897 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat2;
  let x_901 : vec3<f32> = exp2(vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec4<f32> = u_xlat2;
  let x_911 : vec3<f32> = ((vec3<f32>(x_904.x, x_904.y, x_904.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_912 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_919 : vec4<f32> = u_xlat0;
  let x_922 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_919.x, x_919.y, x_919.z, x_919.x));
  u_xlatb0 = vec3<bool>(x_922.x, x_922.y, x_922.z);
  let x_925 : bool = u_xlatb0.x;
  if (x_925) {
    let x_930 : f32 = u_xlat6.x;
    x_926 = x_930;
  } else {
    let x_933 : f32 = u_xlat2.x;
    x_926 = x_933;
  }
  let x_934 : f32 = x_926;
  u_xlat0.x = x_934;
  let x_937 : bool = u_xlatb0.y;
  if (x_937) {
    let x_942 : f32 = u_xlat6.y;
    x_938 = x_942;
  } else {
    let x_945 : f32 = u_xlat2.y;
    x_938 = x_945;
  }
  let x_946 : f32 = x_938;
  u_xlat0.y = x_946;
  let x_949 : bool = u_xlatb0.z;
  if (x_949) {
    let x_954 : f32 = u_xlat6.z;
    x_950 = x_954;
  } else {
    let x_957 : f32 = u_xlat2.z;
    x_950 = x_957;
  }
  let x_958 : f32 = x_950;
  u_xlat0.z = x_958;
  let x_960 : vec4<f32> = u_xlat1;
  let x_965 : vec4<f32> = u_xlat0;
  let x_967 : vec3<f32> = ((vec3<f32>(x_960.x, x_960.x, x_960.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_970 : vec4<f32> = u_xlat0;
  let x_973 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_974 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat0;
  let x_979 : vec3<f32> = (vec3<f32>(x_976.x, x_976.y, x_976.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_980 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec4<f32> = u_xlat2;
  let x_985 : vec3<f32> = (vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_986 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec4<f32> = u_xlat2;
  let x_991 : vec3<f32> = max(abs(vec3<f32>(x_988.x, x_988.y, x_988.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec4<f32> = u_xlat2;
  let x_996 : vec3<f32> = log2(vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat2;
  let x_1002 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1003 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : vec4<f32> = u_xlat2;
  let x_1007 : vec3<f32> = exp2(vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1011 : vec4<f32> = u_xlat0;
  let x_1013 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1011.x));
  u_xlatb0 = vec3<bool>(x_1013.x, x_1013.y, x_1013.z);
  let x_1018 : bool = u_xlatb0.x;
  if (x_1018) {
    let x_1023 : f32 = u_xlat1.x;
    x_1019 = x_1023;
  } else {
    let x_1026 : f32 = u_xlat2.x;
    x_1019 = x_1026;
  }
  let x_1027 : f32 = x_1019;
  SV_Target0.x = x_1027;
  let x_1031 : bool = u_xlatb0.y;
  if (x_1031) {
    let x_1036 : f32 = u_xlat1.y;
    x_1032 = x_1036;
  } else {
    let x_1039 : f32 = u_xlat2.y;
    x_1032 = x_1039;
  }
  let x_1040 : f32 = x_1032;
  SV_Target0.y = x_1040;
  let x_1043 : bool = u_xlatb0.z;
  if (x_1043) {
    let x_1048 : f32 = u_xlat1.z;
    x_1044 = x_1048;
  } else {
    let x_1051 : f32 = u_xlat2.z;
    x_1044 = x_1051;
  }
  let x_1052 : f32 = x_1044;
  SV_Target0.z = x_1052;
  let x_1055 : f32 = u_xlat0.w;
  SV_Target0.w = x_1055;
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

