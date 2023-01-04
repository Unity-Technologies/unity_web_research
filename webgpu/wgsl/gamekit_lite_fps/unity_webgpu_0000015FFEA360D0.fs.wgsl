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

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_529 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_639 : f32;
  var x_651 : f32;
  var x_663 : f32;
  var x_816 : f32;
  var x_828 : f32;
  var x_840 : f32;
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
    let x_473 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) * x_472);
    let x_474 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
    let x_477 : f32 = u_xlat0.w;
    u_xlat6.x = (x_477 + -1.0f);
    let x_481 : f32 = u_xlat1.x;
    let x_483 : f32 = u_xlat6.x;
    u_xlat2.w = ((x_481 * x_483) + 1.0f);
  } else {
    let x_493 : vec2<f32> = vs_TEXCOORD0;
    let x_494 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_493);
    u_xlat1.x = x_494.w;
    let x_498 : f32 = u_xlat1.x;
    u_xlat1.z = (x_498 + 0.055f);
    let x_502 : vec4<f32> = u_xlat1;
    let x_507 : vec2<f32> = (vec2<f32>(x_502.x, x_502.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_508 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_507.x, x_507.y, x_508.z);
    let x_512 : f32 = u_xlat6.y;
    u_xlat11 = max(abs(x_512), 1.1920929e-07f);
    let x_516 : f32 = u_xlat11;
    u_xlat11 = log2(x_516);
    let x_518 : f32 = u_xlat11;
    u_xlat11 = (x_518 * 2.400000095f);
    let x_521 : f32 = u_xlat11;
    u_xlat11 = exp2(x_521);
    let x_525 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_525);
    let x_527 : bool = u_xlatb1;
    if (x_527) {
      let x_533 : f32 = u_xlat6.x;
      x_529 = x_533;
    } else {
      let x_535 : f32 = u_xlat11;
      x_529 = x_535;
    }
    let x_536 : f32 = x_529;
    u_xlat1.x = x_536;
    let x_539 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_539) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_542 : vec4<f32> = u_xlat1;
    let x_544 : vec3<f32> = u_xlat6;
    let x_547 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_542.x, x_542.x, x_542.x) * x_544) + x_547);
    let x_549 : vec4<f32> = u_xlat0;
    let x_551 : vec3<f32> = u_xlat6;
    let x_553 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_549.x, x_549.y, x_549.z) * x_551) + -(vec3<f32>(x_553.x, x_553.y, x_553.z)));
    let x_559 : f32 = x_49.x_Vignette_Opacity;
    let x_561 : vec3<f32> = u_xlat6;
    let x_563 : vec4<f32> = u_xlat0;
    let x_565 : vec3<f32> = ((vec3<f32>(x_559, x_559, x_559) * x_561) + vec3<f32>(x_563.x, x_563.y, x_563.z));
    let x_566 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
    let x_569 : f32 = u_xlat0.w;
    u_xlat0.x = (x_569 + -1.0f);
    let x_573 : f32 = u_xlat1.x;
    let x_575 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_573 * x_575) + 1.0f);
  }
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat2 = x_579;
  let x_580 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_580, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_584 : vec4<f32> = u_xlat2;
  let x_588 : vec3<f32> = (vec3<f32>(x_584.z, x_584.x, x_584.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_589 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat2;
  let x_594 : vec3<f32> = max(vec3<f32>(x_591.z, x_591.x, x_591.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat1;
  let x_599 : vec3<f32> = log2(vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat1;
  let x_606 : vec3<f32> = (vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec4<f32> = u_xlat1;
  let x_611 : vec3<f32> = exp2(vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat1;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_622 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_629 : vec4<f32> = u_xlat2;
  let x_632 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_629.z, x_629.x, x_629.y, x_629.z));
  u_xlatb3 = vec3<bool>(x_632.x, x_632.y, x_632.z);
  let x_636 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_636;
  let x_638 : bool = u_xlatb3.x;
  if (x_638) {
    let x_643 : f32 = u_xlat0.x;
    x_639 = x_643;
  } else {
    let x_646 : f32 = u_xlat1.x;
    x_639 = x_646;
  }
  let x_647 : f32 = x_639;
  hlslcc_movcTemp.x = x_647;
  let x_650 : bool = u_xlatb3.y;
  if (x_650) {
    let x_655 : f32 = u_xlat0.y;
    x_651 = x_655;
  } else {
    let x_658 : f32 = u_xlat1.y;
    x_651 = x_658;
  }
  let x_659 : f32 = x_651;
  hlslcc_movcTemp.y = x_659;
  let x_662 : bool = u_xlatb3.z;
  if (x_662) {
    let x_667 : f32 = u_xlat0.z;
    x_663 = x_667;
  } else {
    let x_670 : f32 = u_xlat1.z;
    x_663 = x_670;
  }
  let x_671 : f32 = x_663;
  hlslcc_movcTemp.z = x_671;
  let x_673 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_673;
  let x_675 : vec4<f32> = u_xlat0;
  let x_679 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_679.z, x_679.z, x_679.z));
  let x_683 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_683);
  let x_687 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_690 : vec2<f32> = (vec2<f32>(x_687.x, x_687.y) * vec2<f32>(0.5f, 0.5f));
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
  let x_693 : vec3<f32> = u_xlat5;
  let x_696 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_699 : vec4<f32> = u_xlat1;
  let x_701 : vec2<f32> = ((vec2<f32>(x_693.y, x_693.z) * vec2<f32>(x_696.x, x_696.y)) + vec2<f32>(x_699.x, x_699.y));
  let x_702 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_702.x, x_701.x, x_701.y, x_702.w);
  let x_705 : f32 = u_xlat5.x;
  let x_707 : f32 = x_49.x_Lut2D_Params.y;
  let x_710 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_705 * x_707) + x_710);
  let x_718 : vec4<f32> = u_xlat1;
  let x_720 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_718.x, x_718.z));
  let x_721 : vec3<f32> = vec3<f32>(x_720.x, x_720.y, x_720.z);
  let x_722 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_725 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_725;
  u_xlat4.y = 0.0f;
  let x_730 : vec4<f32> = u_xlat1;
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_730.x, x_730.z) + vec2<f32>(x_732.x, x_732.y));
  let x_738 : vec2<f32> = u_xlat10;
  let x_739 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_738);
  let x_740 : vec3<f32> = vec3<f32>(x_739.x, x_739.y, x_739.z);
  let x_741 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_744 : f32 = u_xlat0.x;
  let x_746 : f32 = x_49.x_Lut2D_Params.z;
  let x_749 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_744 * x_746) + -(x_749));
  let x_753 : vec4<f32> = u_xlat3;
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_753.x, x_753.y, x_753.z)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat0;
  let x_761 : vec3<f32> = u_xlat5;
  let x_763 : vec4<f32> = u_xlat3;
  let x_765 : vec3<f32> = ((vec3<f32>(x_759.x, x_759.x, x_759.x) * x_761) + vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat0;
  let x_771 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_772 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat0;
  let x_777 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_778 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : vec4<f32> = u_xlat3;
  let x_783 : vec3<f32> = (vec3<f32>(x_780.x, x_780.y, x_780.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_784 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat3;
  let x_789 : vec3<f32> = max(abs(vec3<f32>(x_786.x, x_786.y, x_786.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_790 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_792 : vec4<f32> = u_xlat3;
  let x_794 : vec3<f32> = log2(vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat3;
  let x_800 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_801 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat3;
  let x_805 : vec3<f32> = exp2(vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_810 : vec4<f32> = u_xlat0;
  let x_812 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_810.x, x_810.y, x_810.z, x_810.x));
  u_xlatb0 = vec3<bool>(x_812.x, x_812.y, x_812.z);
  let x_815 : bool = u_xlatb0.x;
  if (x_815) {
    let x_820 : f32 = u_xlat1.x;
    x_816 = x_820;
  } else {
    let x_823 : f32 = u_xlat3.x;
    x_816 = x_823;
  }
  let x_824 : f32 = x_816;
  u_xlat2.x = x_824;
  let x_827 : bool = u_xlatb0.y;
  if (x_827) {
    let x_832 : f32 = u_xlat1.y;
    x_828 = x_832;
  } else {
    let x_835 : f32 = u_xlat3.y;
    x_828 = x_835;
  }
  let x_836 : f32 = x_828;
  u_xlat2.y = x_836;
  let x_839 : bool = u_xlatb0.z;
  if (x_839) {
    let x_844 : f32 = u_xlat1.z;
    x_840 = x_844;
  } else {
    let x_847 : f32 = u_xlat3.z;
    x_840 = x_847;
  }
  let x_848 : f32 = x_840;
  u_xlat2.z = x_848;
  let x_852 : f32 = x_49.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_852);
  let x_856 : bool = u_xlatb0.x;
  if (x_856) {
    let x_859 : vec4<f32> = u_xlat2;
    let x_860 : vec3<f32> = vec3<f32>(x_859.x, x_859.y, x_859.z);
    let x_861 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
    let x_863 : vec4<f32> = u_xlat0;
    let x_867 : vec3<f32> = clamp(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_868 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
    let x_870 : vec4<f32> = u_xlat0;
    u_xlat2.w = dot(vec3<f32>(x_870.x, x_870.y, x_870.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_880 : vec4<f32> = u_xlat2;
  SV_Target0 = x_880;
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

