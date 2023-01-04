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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_49 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat16 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat8 : f32;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlat15 : f32;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_533 : f32;
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
  let x_670 : f32 = x_49.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_670);
  let x_672 : bool = u_xlatb0;
  if (x_672) {
    let x_675 : vec4<f32> = u_xlat2;
    let x_676 : vec3<f32> = vec3<f32>(x_675.x, x_675.y, x_675.z);
    let x_677 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
    let x_679 : vec4<f32> = u_xlat0;
    let x_683 : vec3<f32> = clamp(vec3<f32>(x_679.x, x_679.y, x_679.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_684 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
    let x_686 : vec4<f32> = u_xlat0;
    u_xlat2.w = dot(vec3<f32>(x_686.x, x_686.y, x_686.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_692 : vec4<f32> = u_xlat2;
  SV_Target0 = x_692;
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

