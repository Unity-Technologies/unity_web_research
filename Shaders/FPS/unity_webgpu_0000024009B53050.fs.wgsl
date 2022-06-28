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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding_3 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_4 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_5 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_49 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat16 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

var<private> u_xlat8 : f32;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> u_xlat15 : f32;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(14) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_525 : f32;
  var x_860 : f32;
  var x_872 : f32;
  var x_884 : f32;
  var x_953 : f32;
  var x_966 : f32;
  var x_978 : f32;
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
  u_xlat3 = (x_309 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_313 : vec4<f32> = u_xlat2;
  let x_316 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_318 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_316.z, x_316.z, x_316.z));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  u_xlat2.w = 0.0f;
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_323 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_326 : vec4<f32> = u_xlat0;
  let x_330 : vec3<f32> = x_49.x_Bloom_Color;
  let x_331 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) * x_330);
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : f32 = u_xlat0.w;
  u_xlat4.w = (x_335 * 0.0625f);
  let x_338 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_338 + x_339);
  let x_341 : vec4<f32> = u_xlat2;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_341 * x_342) + x_344);
  let x_351 : f32 = x_49.x_Vignette_Mode;
  u_xlatb1 = (x_351 < 0.5f);
  let x_354 : bool = u_xlatb1;
  if (x_354) {
    let x_357 : vec2<f32> = vs_TEXCOORD0;
    let x_361 : vec2<f32> = x_49.x_Vignette_Center;
    let x_363 : vec2<f32> = (x_357 + -(x_361));
    let x_364 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_364.w);
    let x_366 : vec4<f32> = u_xlat1;
    let x_371 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_373 : vec2<f32> = (abs(vec2<f32>(x_366.y, x_366.x)) * vec2<f32>(x_371.x, x_371.x));
    let x_374 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_374.x, x_373.x, x_373.y, x_374.w);
    let x_379 : f32 = x_49.x_ScreenParams.x;
    let x_382 : f32 = x_49.x_ScreenParams.y;
    u_xlat16 = (x_379 / x_382);
    let x_384 : f32 = u_xlat16;
    u_xlat16 = (x_384 + -1.0f);
    let x_387 : f32 = x_49.x_Vignette_Settings.w;
    let x_388 : f32 = u_xlat16;
    u_xlat16 = ((x_387 * x_388) + 1.0f);
    let x_391 : f32 = u_xlat16;
    let x_394 : f32 = u_xlat1.z;
    u_xlat1.x = (x_391 * x_394);
    let x_397 : vec4<f32> = u_xlat1;
    let x_398 : vec2<f32> = vec2<f32>(x_397.x, x_397.y);
    let x_399 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
    let x_401 : vec4<f32> = u_xlat1;
    let x_405 : vec2<f32> = clamp(vec2<f32>(x_401.x, x_401.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_406 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_405.x, x_405.y, x_406.z, x_406.w);
    let x_408 : vec4<f32> = u_xlat1;
    let x_410 : vec2<f32> = log2(vec2<f32>(x_408.x, x_408.y));
    let x_411 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
    let x_413 : vec4<f32> = u_xlat1;
    let x_416 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_418 : vec2<f32> = (vec2<f32>(x_413.x, x_413.y) * vec2<f32>(x_416.z, x_416.z));
    let x_419 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
    let x_421 : vec4<f32> = u_xlat1;
    let x_423 : vec2<f32> = exp2(vec2<f32>(x_421.x, x_421.y));
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
    let x_426 : vec4<f32> = u_xlat1;
    let x_428 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_426.x, x_426.y), vec2<f32>(x_428.x, x_428.y));
    let x_433 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_433) + 1.0f);
    let x_438 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_438, 0.0f);
    let x_442 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_442);
    let x_446 : f32 = u_xlat1.x;
    let x_448 : f32 = x_49.x_Vignette_Settings.y;
    u_xlat1.x = (x_446 * x_448);
    let x_452 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_452);
    let x_459 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_459) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_463 : vec4<f32> = u_xlat1;
    let x_465 : vec3<f32> = u_xlat6;
    let x_468 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_463.x, x_463.x, x_463.x) * x_465) + x_468);
    let x_470 : vec4<f32> = u_xlat0;
    let x_472 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_470.x, x_470.y, x_470.z) * x_472);
    let x_475 : f32 = u_xlat0.w;
    u_xlat2.x = (x_475 + -1.0f);
    let x_479 : f32 = u_xlat1.x;
    let x_481 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_479 * x_481) + 1.0f);
  } else {
    let x_491 : vec2<f32> = vs_TEXCOORD0;
    let x_492 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_491);
    u_xlat1.x = x_492.w;
    let x_496 : f32 = u_xlat1.x;
    u_xlat3.x = (x_496 * 0.077399381f);
    let x_502 : f32 = u_xlat1.x;
    u_xlat8 = (x_502 + 0.055f);
    let x_505 : f32 = u_xlat8;
    u_xlat8 = (x_505 * 0.947867334f);
    let x_508 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_508), 1.1920929e-07f);
    let x_512 : f32 = u_xlat8;
    u_xlat8 = log2(x_512);
    let x_514 : f32 = u_xlat8;
    u_xlat8 = (x_514 * 2.400000095f);
    let x_517 : f32 = u_xlat8;
    u_xlat8 = exp2(x_517);
    let x_521 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_521);
    let x_523 : bool = u_xlatb1;
    if (x_523) {
      let x_529 : f32 = u_xlat3.x;
      x_525 = x_529;
    } else {
      let x_531 : f32 = u_xlat8;
      x_525 = x_531;
    }
    let x_532 : f32 = x_525;
    u_xlat1.x = x_532;
    let x_535 : vec3<f32> = x_49.x_Vignette_Color;
    let x_537 : vec3<f32> = (-(x_535) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_538 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
    let x_540 : vec4<f32> = u_xlat1;
    let x_542 : vec4<f32> = u_xlat3;
    let x_546 : vec3<f32> = x_49.x_Vignette_Color;
    let x_547 : vec3<f32> = ((vec3<f32>(x_540.x, x_540.x, x_540.x) * vec3<f32>(x_542.x, x_542.y, x_542.z)) + x_546);
    let x_548 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
    let x_550 : vec4<f32> = u_xlat0;
    let x_552 : vec4<f32> = u_xlat3;
    let x_555 : vec4<f32> = u_xlat0;
    let x_558 : vec3<f32> = ((vec3<f32>(x_550.x, x_550.y, x_550.z) * vec3<f32>(x_552.x, x_552.y, x_552.z)) + -(vec3<f32>(x_555.x, x_555.y, x_555.z)));
    let x_559 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
    let x_563 : f32 = x_49.x_Vignette_Opacity;
    let x_565 : vec4<f32> = u_xlat3;
    let x_568 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_563, x_563, x_563) * vec3<f32>(x_565.x, x_565.y, x_565.z)) + vec3<f32>(x_568.x, x_568.y, x_568.z));
    let x_572 : f32 = u_xlat0.w;
    u_xlat0.x = (x_572 + -1.0f);
    let x_576 : f32 = u_xlat1.x;
    let x_578 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_576 * x_578) + 1.0f);
  }
  let x_582 : vec2<f32> = vs_TEXCOORD1;
  let x_585 : vec4<f32> = x_49.x_Grain_Params2;
  let x_589 : vec4<f32> = x_49.x_Grain_Params2;
  let x_591 : vec2<f32> = ((x_582 * vec2<f32>(x_585.x, x_585.y)) + vec2<f32>(x_589.z, x_589.w));
  let x_592 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
  let x_599 : vec4<f32> = u_xlat0;
  let x_601 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_599.x, x_599.y));
  let x_602 : vec3<f32> = vec3<f32>(x_601.x, x_601.y, x_601.z);
  let x_603 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec3<f32> = u_xlat6;
  let x_606 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat3;
  let x_612 : vec3<f32> = clamp(vec3<f32>(x_608.x, x_608.y, x_608.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_623 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_623);
  let x_627 : f32 = x_49.x_Grain_Params1.x;
  let x_628 : f32 = u_xlat15;
  u_xlat15 = ((x_627 * -(x_628)) + 1.0f);
  let x_632 : vec4<f32> = u_xlat0;
  let x_634 : vec3<f32> = u_xlat6;
  let x_635 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) * x_634);
  let x_636 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat0;
  let x_641 : f32 = x_49.x_Grain_Params1.y;
  let x_643 : f32 = x_49.x_Grain_Params1.y;
  let x_645 : f32 = x_49.x_Grain_Params1.y;
  let x_647 : vec3<f32> = (vec3<f32>(x_638.x, x_638.y, x_638.z) * vec3<f32>(x_641, x_643, x_645));
  let x_648 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat0;
  let x_652 : f32 = u_xlat15;
  let x_655 : vec3<f32> = u_xlat6;
  let x_656 : vec3<f32> = ((vec3<f32>(x_650.x, x_650.y, x_650.z) * vec3<f32>(x_652, x_652, x_652)) + x_655);
  let x_657 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat2;
  let x_662 : f32 = x_49.x_PostExposure;
  let x_664 : f32 = x_49.x_PostExposure;
  let x_666 : f32 = x_49.x_PostExposure;
  let x_668 : f32 = x_49.x_PostExposure;
  let x_669 : vec4<f32> = vec4<f32>(x_662, x_664, x_666, x_668);
  u_xlat0 = (x_659 * vec4<f32>(x_669.x, x_669.y, x_669.z, x_669.w));
  let x_676 : vec4<f32> = u_xlat0;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_684 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat0;
  let x_688 : vec3<f32> = log2(vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat0;
  let x_698 : vec3<f32> = ((vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_699 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat0;
  let x_705 : vec3<f32> = clamp(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat0;
  let x_712 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_714 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(x_712.y, x_712.y, x_712.y));
  let x_715 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_718 : f32 = x_49.x_Lut3D_Params.x;
  u_xlat1.x = (x_718 * 0.5f);
  let x_721 : vec4<f32> = u_xlat0;
  let x_724 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_727 : vec4<f32> = u_xlat1;
  let x_729 : vec3<f32> = ((vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_724.x, x_724.x, x_724.x)) + vec3<f32>(x_727.x, x_727.x, x_727.x));
  let x_730 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_740 : vec4<f32> = u_xlat0;
  let x_742 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec3<f32> = vec3<f32>(x_742.x, x_742.y, x_742.z);
  let x_744 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : vec2<f32> = vs_TEXCOORD0;
  let x_749 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_753 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_755 : vec2<f32> = ((x_746 * vec2<f32>(x_749.x, x_749.y)) + vec2<f32>(x_753.z, x_753.w));
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
  let x_763 : vec4<f32> = u_xlat1;
  let x_765 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_763.x, x_763.y));
  u_xlat1.x = x_765.w;
  let x_769 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_769 * 2.0f) + -1.0f);
  let x_774 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_774 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_780 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_780, 0.0f, 1.0f);
  let x_784 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_784 * 2.0f) + -1.0f);
  let x_789 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_789)) + 1.0f);
  let x_795 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_795);
  let x_799 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_799) + 1.0f);
  let x_804 : f32 = u_xlat1.x;
  let x_806 : f32 = u_xlat6.x;
  u_xlat1.x = (x_804 * x_806);
  let x_809 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_814 : vec4<f32> = u_xlat0;
  let x_818 : vec3<f32> = max(abs(vec3<f32>(x_814.x, x_814.y, x_814.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_819 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat2;
  let x_823 : vec3<f32> = log2(vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat2;
  let x_830 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_831 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat2;
  let x_835 : vec3<f32> = exp2(vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec4<f32> = u_xlat2;
  let x_845 : vec3<f32> = ((vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_846 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_853 : vec4<f32> = u_xlat0;
  let x_856 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_853.x, x_853.y, x_853.z, x_853.x));
  u_xlatb0 = vec3<bool>(x_856.x, x_856.y, x_856.z);
  let x_859 : bool = u_xlatb0.x;
  if (x_859) {
    let x_864 : f32 = u_xlat6.x;
    x_860 = x_864;
  } else {
    let x_867 : f32 = u_xlat2.x;
    x_860 = x_867;
  }
  let x_868 : f32 = x_860;
  u_xlat0.x = x_868;
  let x_871 : bool = u_xlatb0.y;
  if (x_871) {
    let x_876 : f32 = u_xlat6.y;
    x_872 = x_876;
  } else {
    let x_879 : f32 = u_xlat2.y;
    x_872 = x_879;
  }
  let x_880 : f32 = x_872;
  u_xlat0.y = x_880;
  let x_883 : bool = u_xlatb0.z;
  if (x_883) {
    let x_888 : f32 = u_xlat6.z;
    x_884 = x_888;
  } else {
    let x_891 : f32 = u_xlat2.z;
    x_884 = x_891;
  }
  let x_892 : f32 = x_884;
  u_xlat0.z = x_892;
  let x_894 : vec4<f32> = u_xlat1;
  let x_899 : vec4<f32> = u_xlat0;
  let x_901 : vec3<f32> = ((vec3<f32>(x_894.x, x_894.x, x_894.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec4<f32> = u_xlat0;
  let x_907 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_908 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat0;
  let x_913 : vec3<f32> = (vec3<f32>(x_910.x, x_910.y, x_910.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_914 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat2;
  let x_919 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_920 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : vec4<f32> = u_xlat2;
  let x_925 : vec3<f32> = max(abs(vec3<f32>(x_922.x, x_922.y, x_922.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_926 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec4<f32> = u_xlat2;
  let x_930 : vec3<f32> = log2(vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_931 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec4<f32> = u_xlat2;
  let x_936 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_937 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec4<f32> = u_xlat2;
  let x_941 : vec3<f32> = exp2(vec3<f32>(x_939.x, x_939.y, x_939.z));
  let x_942 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_945 : vec4<f32> = u_xlat0;
  let x_947 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_945.x, x_945.y, x_945.z, x_945.x));
  u_xlatb0 = vec3<bool>(x_947.x, x_947.y, x_947.z);
  let x_952 : bool = u_xlatb0.x;
  if (x_952) {
    let x_957 : f32 = u_xlat1.x;
    x_953 = x_957;
  } else {
    let x_960 : f32 = u_xlat2.x;
    x_953 = x_960;
  }
  let x_961 : f32 = x_953;
  SV_Target0.x = x_961;
  let x_965 : bool = u_xlatb0.y;
  if (x_965) {
    let x_970 : f32 = u_xlat1.y;
    x_966 = x_970;
  } else {
    let x_973 : f32 = u_xlat2.y;
    x_966 = x_973;
  }
  let x_974 : f32 = x_966;
  SV_Target0.y = x_974;
  let x_977 : bool = u_xlatb0.z;
  if (x_977) {
    let x_982 : f32 = u_xlat1.z;
    x_978 = x_982;
  } else {
    let x_985 : f32 = u_xlat2.z;
    x_978 = x_985;
  }
  let x_986 : f32 = x_978;
  SV_Target0.z = x_986;
  let x_989 : f32 = u_xlat0.w;
  SV_Target0.w = x_989;
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

