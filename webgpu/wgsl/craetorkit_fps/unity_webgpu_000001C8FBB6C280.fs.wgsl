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

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(13) var sampler_Lut3D : sampler;

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
  var x_524 : f32;
  var u_xlat15 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_859 : f32;
  var x_871 : f32;
  var x_883 : f32;
  var x_952 : f32;
  var x_965 : f32;
  var x_977 : f32;
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
      let x_528 : f32 = u_xlat3.x;
      x_524 = x_528;
    } else {
      let x_530 : f32 = u_xlat8;
      x_524 = x_530;
    }
    let x_531 : f32 = x_524;
    u_xlat1.x = x_531;
    let x_534 : vec3<f32> = x_49.x_Vignette_Color;
    let x_536 : vec3<f32> = (-(x_534) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_537 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_539 : vec4<f32> = u_xlat1;
    let x_541 : vec4<f32> = u_xlat3;
    let x_545 : vec3<f32> = x_49.x_Vignette_Color;
    let x_546 : vec3<f32> = ((vec3<f32>(x_539.x, x_539.x, x_539.x) * vec3<f32>(x_541.x, x_541.y, x_541.z)) + x_545);
    let x_547 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
    let x_549 : vec4<f32> = u_xlat0;
    let x_551 : vec4<f32> = u_xlat3;
    let x_554 : vec4<f32> = u_xlat0;
    let x_557 : vec3<f32> = ((vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(x_551.x, x_551.y, x_551.z)) + -(vec3<f32>(x_554.x, x_554.y, x_554.z)));
    let x_558 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
    let x_562 : f32 = x_49.x_Vignette_Opacity;
    let x_564 : vec4<f32> = u_xlat3;
    let x_567 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_562, x_562, x_562) * vec3<f32>(x_564.x, x_564.y, x_564.z)) + vec3<f32>(x_567.x, x_567.y, x_567.z));
    let x_571 : f32 = u_xlat0.w;
    u_xlat0.x = (x_571 + -1.0f);
    let x_575 : f32 = u_xlat1.x;
    let x_577 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_575 * x_577) + 1.0f);
  }
  let x_581 : vec2<f32> = vs_TEXCOORD1;
  let x_584 : vec4<f32> = x_49.x_Grain_Params2;
  let x_588 : vec4<f32> = x_49.x_Grain_Params2;
  let x_590 : vec2<f32> = ((x_581 * vec2<f32>(x_584.x, x_584.y)) + vec2<f32>(x_588.z, x_588.w));
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
  let x_598 : vec4<f32> = u_xlat0;
  let x_600 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_598.x, x_598.y));
  let x_601 : vec3<f32> = vec3<f32>(x_600.x, x_600.y, x_600.z);
  let x_602 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec3<f32> = u_xlat6;
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat3;
  let x_611 : vec3<f32> = clamp(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_612 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_622 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_622);
  let x_626 : f32 = x_49.x_Grain_Params1.x;
  let x_627 : f32 = u_xlat15;
  u_xlat15 = ((x_626 * -(x_627)) + 1.0f);
  let x_631 : vec4<f32> = u_xlat0;
  let x_633 : vec3<f32> = u_xlat6;
  let x_634 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) * x_633);
  let x_635 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat0;
  let x_640 : f32 = x_49.x_Grain_Params1.y;
  let x_642 : f32 = x_49.x_Grain_Params1.y;
  let x_644 : f32 = x_49.x_Grain_Params1.y;
  let x_646 : vec3<f32> = (vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(x_640, x_642, x_644));
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec4<f32> = u_xlat0;
  let x_651 : f32 = u_xlat15;
  let x_654 : vec3<f32> = u_xlat6;
  let x_655 : vec3<f32> = ((vec3<f32>(x_649.x, x_649.y, x_649.z) * vec3<f32>(x_651, x_651, x_651)) + x_654);
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat2;
  let x_661 : f32 = x_49.x_PostExposure;
  let x_663 : f32 = x_49.x_PostExposure;
  let x_665 : f32 = x_49.x_PostExposure;
  let x_667 : f32 = x_49.x_PostExposure;
  let x_668 : vec4<f32> = vec4<f32>(x_661, x_663, x_665, x_667);
  u_xlat0 = (x_658 * vec4<f32>(x_668.x, x_668.y, x_668.z, x_668.w));
  let x_675 : vec4<f32> = u_xlat0;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_683 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat0;
  let x_687 : vec3<f32> = log2(vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat0;
  let x_697 : vec3<f32> = ((vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_698 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec4<f32> = u_xlat0;
  let x_704 : vec3<f32> = clamp(vec3<f32>(x_700.x, x_700.y, x_700.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_705 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec4<f32> = u_xlat0;
  let x_711 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_713 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) * vec3<f32>(x_711.y, x_711.y, x_711.y));
  let x_714 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_717 : f32 = x_49.x_Lut3D_Params.x;
  u_xlat1.x = (x_717 * 0.5f);
  let x_720 : vec4<f32> = u_xlat0;
  let x_723 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : vec3<f32> = ((vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(x_723.x, x_723.x, x_723.x)) + vec3<f32>(x_726.x, x_726.x, x_726.x));
  let x_729 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_739 : vec4<f32> = u_xlat0;
  let x_741 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec3<f32> = vec3<f32>(x_741.x, x_741.y, x_741.z);
  let x_743 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec2<f32> = vs_TEXCOORD0;
  let x_748 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_752 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_754 : vec2<f32> = ((x_745 * vec2<f32>(x_748.x, x_748.y)) + vec2<f32>(x_752.z, x_752.w));
  let x_755 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
  let x_762 : vec4<f32> = u_xlat1;
  let x_764 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_762.x, x_762.y));
  u_xlat1.x = x_764.w;
  let x_768 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_768 * 2.0f) + -1.0f);
  let x_773 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_773 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_779 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_779, 0.0f, 1.0f);
  let x_783 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_783 * 2.0f) + -1.0f);
  let x_788 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_788)) + 1.0f);
  let x_794 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_794);
  let x_798 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_798) + 1.0f);
  let x_803 : f32 = u_xlat1.x;
  let x_805 : f32 = u_xlat6.x;
  u_xlat1.x = (x_803 * x_805);
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_808.x, x_808.y, x_808.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_813 : vec4<f32> = u_xlat0;
  let x_817 : vec3<f32> = max(abs(vec3<f32>(x_813.x, x_813.y, x_813.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_818 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat2;
  let x_822 : vec3<f32> = log2(vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat2;
  let x_829 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_830 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat2;
  let x_834 : vec3<f32> = exp2(vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat2;
  let x_844 : vec3<f32> = ((vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_845 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_852 : vec4<f32> = u_xlat0;
  let x_855 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_852.x, x_852.y, x_852.z, x_852.x));
  u_xlatb0 = vec3<bool>(x_855.x, x_855.y, x_855.z);
  let x_858 : bool = u_xlatb0.x;
  if (x_858) {
    let x_863 : f32 = u_xlat6.x;
    x_859 = x_863;
  } else {
    let x_866 : f32 = u_xlat2.x;
    x_859 = x_866;
  }
  let x_867 : f32 = x_859;
  u_xlat0.x = x_867;
  let x_870 : bool = u_xlatb0.y;
  if (x_870) {
    let x_875 : f32 = u_xlat6.y;
    x_871 = x_875;
  } else {
    let x_878 : f32 = u_xlat2.y;
    x_871 = x_878;
  }
  let x_879 : f32 = x_871;
  u_xlat0.y = x_879;
  let x_882 : bool = u_xlatb0.z;
  if (x_882) {
    let x_887 : f32 = u_xlat6.z;
    x_883 = x_887;
  } else {
    let x_890 : f32 = u_xlat2.z;
    x_883 = x_890;
  }
  let x_891 : f32 = x_883;
  u_xlat0.z = x_891;
  let x_893 : vec4<f32> = u_xlat1;
  let x_898 : vec4<f32> = u_xlat0;
  let x_900 : vec3<f32> = ((vec3<f32>(x_893.x, x_893.x, x_893.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_898.x, x_898.y, x_898.z));
  let x_901 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat0;
  let x_906 : vec3<f32> = (vec3<f32>(x_903.x, x_903.y, x_903.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_907 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec4<f32> = u_xlat0;
  let x_912 : vec3<f32> = (vec3<f32>(x_909.x, x_909.y, x_909.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_913 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_915 : vec4<f32> = u_xlat2;
  let x_918 : vec3<f32> = (vec3<f32>(x_915.x, x_915.y, x_915.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_919 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec4<f32> = u_xlat2;
  let x_924 : vec3<f32> = max(abs(vec3<f32>(x_921.x, x_921.y, x_921.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_925 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec4<f32> = u_xlat2;
  let x_929 : vec3<f32> = log2(vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat2;
  let x_935 : vec3<f32> = (vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_936 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat2;
  let x_940 : vec3<f32> = exp2(vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_944 : vec4<f32> = u_xlat0;
  let x_946 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_944.x, x_944.y, x_944.z, x_944.x));
  u_xlatb0 = vec3<bool>(x_946.x, x_946.y, x_946.z);
  let x_951 : bool = u_xlatb0.x;
  if (x_951) {
    let x_956 : f32 = u_xlat1.x;
    x_952 = x_956;
  } else {
    let x_959 : f32 = u_xlat2.x;
    x_952 = x_959;
  }
  let x_960 : f32 = x_952;
  SV_Target0.x = x_960;
  let x_964 : bool = u_xlatb0.y;
  if (x_964) {
    let x_969 : f32 = u_xlat1.y;
    x_965 = x_969;
  } else {
    let x_972 : f32 = u_xlat2.y;
    x_965 = x_972;
  }
  let x_973 : f32 = x_965;
  SV_Target0.y = x_973;
  let x_976 : bool = u_xlatb0.z;
  if (x_976) {
    let x_981 : f32 = u_xlat1.z;
    x_977 = x_981;
  } else {
    let x_984 : f32 = u_xlat2.z;
    x_977 = x_984;
  }
  let x_985 : f32 = x_977;
  SV_Target0.z = x_985;
  let x_988 : f32 = u_xlat0.w;
  SV_Target0.w = x_988;
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

