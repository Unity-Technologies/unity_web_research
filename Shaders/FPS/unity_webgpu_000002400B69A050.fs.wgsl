struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Lut2D_Params : vec3<f32>,
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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_49 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat16 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

var<private> u_xlat8 : f32;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_533 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_727 : f32;
  var x_739 : f32;
  var x_751 : f32;
  var x_904 : f32;
  var x_916 : f32;
  var x_928 : f32;
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
      let x_537 : f32 = u_xlat3.x;
      x_533 = x_537;
    } else {
      let x_539 : f32 = u_xlat8;
      x_533 = x_539;
    }
    let x_540 : f32 = x_533;
    u_xlat1.x = x_540;
    let x_543 : vec3<f32> = x_49.x_Vignette_Color;
    let x_545 : vec3<f32> = (-(x_543) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_546 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
    let x_548 : vec4<f32> = u_xlat1;
    let x_550 : vec4<f32> = u_xlat3;
    let x_554 : vec3<f32> = x_49.x_Vignette_Color;
    let x_555 : vec3<f32> = ((vec3<f32>(x_548.x, x_548.x, x_548.x) * vec3<f32>(x_550.x, x_550.y, x_550.z)) + x_554);
    let x_556 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
    let x_558 : vec4<f32> = u_xlat0;
    let x_560 : vec4<f32> = u_xlat3;
    let x_563 : vec4<f32> = u_xlat0;
    let x_566 : vec3<f32> = ((vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_560.x, x_560.y, x_560.z)) + -(vec3<f32>(x_563.x, x_563.y, x_563.z)));
    let x_567 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
    let x_571 : f32 = x_49.x_Vignette_Opacity;
    let x_573 : vec4<f32> = u_xlat3;
    let x_576 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_571, x_571, x_571) * vec3<f32>(x_573.x, x_573.y, x_573.z)) + vec3<f32>(x_576.x, x_576.y, x_576.z));
    let x_580 : f32 = u_xlat0.w;
    u_xlat0.x = (x_580 + -1.0f);
    let x_584 : f32 = u_xlat1.x;
    let x_586 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_584 * x_586) + 1.0f);
  }
  let x_590 : vec2<f32> = vs_TEXCOORD1;
  let x_593 : vec4<f32> = x_49.x_Grain_Params2;
  let x_597 : vec4<f32> = x_49.x_Grain_Params2;
  let x_599 : vec2<f32> = ((x_590 * vec2<f32>(x_593.x, x_593.y)) + vec2<f32>(x_597.z, x_597.w));
  let x_600 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_607 : vec4<f32> = u_xlat0;
  let x_609 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_607.x, x_607.y));
  let x_610 : vec3<f32> = vec3<f32>(x_609.x, x_609.y, x_609.z);
  let x_611 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec3<f32> = u_xlat6;
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat3;
  let x_620 : vec3<f32> = clamp(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_621 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_631 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_631);
  let x_635 : f32 = x_49.x_Grain_Params1.x;
  let x_636 : f32 = u_xlat15;
  u_xlat15 = ((x_635 * -(x_636)) + 1.0f);
  let x_640 : vec4<f32> = u_xlat0;
  let x_642 : vec3<f32> = u_xlat6;
  let x_643 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) * x_642);
  let x_644 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat0;
  let x_649 : f32 = x_49.x_Grain_Params1.y;
  let x_651 : f32 = x_49.x_Grain_Params1.y;
  let x_653 : f32 = x_49.x_Grain_Params1.y;
  let x_655 : vec3<f32> = (vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_649, x_651, x_653));
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat0;
  let x_660 : f32 = u_xlat15;
  let x_663 : vec3<f32> = u_xlat6;
  let x_664 : vec3<f32> = ((vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(x_660, x_660, x_660)) + x_663);
  let x_665 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : vec4<f32> = u_xlat2;
  u_xlat2 = x_667;
  let x_668 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_668, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_672 : vec4<f32> = u_xlat2;
  let x_676 : vec3<f32> = (vec3<f32>(x_672.z, x_672.x, x_672.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat2;
  let x_682 : vec3<f32> = max(vec3<f32>(x_679.z, x_679.x, x_679.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_683 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat1;
  let x_687 : vec3<f32> = log2(vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat1;
  let x_694 : vec3<f32> = (vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_695 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat1;
  let x_699 : vec3<f32> = exp2(vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat1;
  let x_709 : vec3<f32> = ((vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_717 : vec4<f32> = u_xlat2;
  let x_720 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_717.z, x_717.x, x_717.y, x_717.z));
  u_xlatb3 = vec3<bool>(x_720.x, x_720.y, x_720.z);
  let x_724 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_724;
  let x_726 : bool = u_xlatb3.x;
  if (x_726) {
    let x_731 : f32 = u_xlat0.x;
    x_727 = x_731;
  } else {
    let x_734 : f32 = u_xlat1.x;
    x_727 = x_734;
  }
  let x_735 : f32 = x_727;
  hlslcc_movcTemp.x = x_735;
  let x_738 : bool = u_xlatb3.y;
  if (x_738) {
    let x_743 : f32 = u_xlat0.y;
    x_739 = x_743;
  } else {
    let x_746 : f32 = u_xlat1.y;
    x_739 = x_746;
  }
  let x_747 : f32 = x_739;
  hlslcc_movcTemp.y = x_747;
  let x_750 : bool = u_xlatb3.z;
  if (x_750) {
    let x_755 : f32 = u_xlat0.z;
    x_751 = x_755;
  } else {
    let x_758 : f32 = u_xlat1.z;
    x_751 = x_758;
  }
  let x_759 : f32 = x_751;
  hlslcc_movcTemp.z = x_759;
  let x_761 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_761;
  let x_763 : vec4<f32> = u_xlat0;
  let x_767 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(x_767.z, x_767.z, x_767.z));
  let x_771 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_771);
  let x_775 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_778 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) * vec2<f32>(0.5f, 0.5f));
  let x_779 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
  let x_781 : vec3<f32> = u_xlat5;
  let x_784 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_787 : vec4<f32> = u_xlat1;
  let x_789 : vec2<f32> = ((vec2<f32>(x_781.y, x_781.z) * vec2<f32>(x_784.x, x_784.y)) + vec2<f32>(x_787.x, x_787.y));
  let x_790 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_790.x, x_789.x, x_789.y, x_790.w);
  let x_793 : f32 = u_xlat5.x;
  let x_795 : f32 = x_49.x_Lut2D_Params.y;
  let x_798 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_793 * x_795) + x_798);
  let x_806 : vec4<f32> = u_xlat1;
  let x_808 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_806.x, x_806.z));
  let x_809 : vec3<f32> = vec3<f32>(x_808.x, x_808.y, x_808.z);
  let x_810 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_813 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_813;
  u_xlat4.y = 0.0f;
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec4<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_818.x, x_818.z) + vec2<f32>(x_820.x, x_820.y));
  let x_826 : vec2<f32> = u_xlat10;
  let x_827 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_826);
  let x_828 : vec3<f32> = vec3<f32>(x_827.x, x_827.y, x_827.z);
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_832 : f32 = u_xlat0.x;
  let x_834 : f32 = x_49.x_Lut2D_Params.z;
  let x_837 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_832 * x_834) + -(x_837));
  let x_841 : vec4<f32> = u_xlat3;
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_841.x, x_841.y, x_841.z)) + vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat0;
  let x_849 : vec3<f32> = u_xlat5;
  let x_851 : vec4<f32> = u_xlat3;
  let x_853 : vec3<f32> = ((vec3<f32>(x_847.x, x_847.x, x_847.x) * x_849) + vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat0;
  let x_859 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_860 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat0;
  let x_865 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_866 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat3;
  let x_871 : vec3<f32> = (vec3<f32>(x_868.x, x_868.y, x_868.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_872 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat3;
  let x_877 : vec3<f32> = max(abs(vec3<f32>(x_874.x, x_874.y, x_874.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_878 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec4<f32> = u_xlat3;
  let x_882 : vec3<f32> = log2(vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = u_xlat3;
  let x_888 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_889 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat3;
  let x_893 : vec3<f32> = exp2(vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_898 : vec4<f32> = u_xlat0;
  let x_900 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_898.x, x_898.y, x_898.z, x_898.x));
  u_xlatb0 = vec3<bool>(x_900.x, x_900.y, x_900.z);
  let x_903 : bool = u_xlatb0.x;
  if (x_903) {
    let x_908 : f32 = u_xlat1.x;
    x_904 = x_908;
  } else {
    let x_911 : f32 = u_xlat3.x;
    x_904 = x_911;
  }
  let x_912 : f32 = x_904;
  u_xlat2.x = x_912;
  let x_915 : bool = u_xlatb0.y;
  if (x_915) {
    let x_920 : f32 = u_xlat1.y;
    x_916 = x_920;
  } else {
    let x_923 : f32 = u_xlat3.y;
    x_916 = x_923;
  }
  let x_924 : f32 = x_916;
  u_xlat2.y = x_924;
  let x_927 : bool = u_xlatb0.z;
  if (x_927) {
    let x_932 : f32 = u_xlat1.z;
    x_928 = x_932;
  } else {
    let x_935 : f32 = u_xlat3.z;
    x_928 = x_935;
  }
  let x_936 : f32 = x_928;
  u_xlat2.z = x_936;
  let x_940 : f32 = x_49.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_940);
  let x_944 : bool = u_xlatb0.x;
  if (x_944) {
    let x_947 : vec4<f32> = u_xlat2;
    let x_948 : vec3<f32> = vec3<f32>(x_947.x, x_947.y, x_947.z);
    let x_949 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
    let x_951 : vec4<f32> = u_xlat0;
    let x_955 : vec3<f32> = clamp(vec3<f32>(x_951.x, x_951.y, x_951.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_956 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
    let x_958 : vec4<f32> = u_xlat0;
    u_xlat2.w = dot(vec3<f32>(x_958.x, x_958.y, x_958.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_964 : vec4<f32> = u_xlat2;
  SV_Target0 = x_964;
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

