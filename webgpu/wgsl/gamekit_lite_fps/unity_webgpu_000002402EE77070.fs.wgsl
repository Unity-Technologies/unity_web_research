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
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_49 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat16 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

var<private> u_xlat8 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_399 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_570 : f32;
  var x_582 : f32;
  var x_594 : f32;
  var x_662 : f32;
  var x_674 : f32;
  var x_686 : f32;
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
  u_xlat0 = (vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_64 : f32 = x_49.x_Bloom_Settings.x;
  u_xlat2.x = (x_64 * 0.5f);
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = u_xlat2;
  let x_74 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_69.x, x_69.y, x_69.z, x_69.y) * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + vec4<f32>(x_74.x, x_74.y, x_74.x, x_74.y));
  let x_77 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_77, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_82 : vec4<f32> = u_xlat3;
  let x_85 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat3 = (x_82 * vec4<f32>(x_85, x_85, x_85, x_85));
  let x_94 : vec4<f32> = u_xlat3;
  let x_96 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_94.x, x_94.y));
  u_xlat4 = x_96;
  let x_100 : vec4<f32> = u_xlat3;
  let x_102 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_100.z, x_100.w));
  u_xlat3 = x_102;
  let x_103 : vec4<f32> = u_xlat3;
  let x_104 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_103 + x_104);
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = u_xlat2;
  let x_111 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_106.x, x_106.w, x_106.z, x_106.w) * vec4<f32>(x_108.x, x_108.x, x_108.x, x_108.x)) + vec4<f32>(x_111.x, x_111.y, x_111.x, x_111.y));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_114, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat0 = (x_118 * vec4<f32>(x_120, x_120, x_120, x_120));
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_126.x, x_126.y));
  u_xlat2 = x_128;
  let x_129 : vec4<f32> = u_xlat2;
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_129 + x_130);
  let x_135 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_135.z, x_135.w));
  u_xlat0 = x_137;
  let x_138 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_138 + x_139);
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = x_49.x_Bloom_Settings;
  u_xlat0 = (x_141 * vec4<f32>(x_144.y, x_144.y, x_144.y, x_144.y));
  let x_147 : vec2<f32> = vs_TEXCOORD0;
  let x_150 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_154 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_156 : vec2<f32> = ((x_147 * vec2<f32>(x_150.x, x_150.y)) + vec2<f32>(x_154.z, x_154.w));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_157.z, x_157.w);
  let x_164 : vec4<f32> = u_xlat2;
  let x_166 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_164.x, x_164.y));
  let x_167 : vec3<f32> = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat0;
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat2;
  let x_180 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_182 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_180.z, x_180.z, x_180.z));
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_185 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_188 : vec4<f32> = u_xlat0;
  let x_192 : vec3<f32> = x_49.x_Bloom_Color;
  let x_193 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) * x_192);
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_198 : f32 = u_xlat0.w;
  u_xlat4.w = (x_198 * 0.25f);
  let x_201 : vec4<f32> = u_xlat1;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_201 + x_202);
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat2;
  let x_208 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  u_xlat1.w = 0.0f;
  let x_212 : vec4<f32> = u_xlat0;
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_212 + x_213);
  let x_221 : f32 = x_49.x_Vignette_Mode;
  u_xlatb1.x = (x_221 < 0.5f);
  let x_226 : bool = u_xlatb1.x;
  if (x_226) {
    let x_229 : vec2<f32> = vs_TEXCOORD0;
    let x_233 : vec2<f32> = x_49.x_Vignette_Center;
    let x_235 : vec2<f32> = (x_229 + -(x_233));
    let x_236 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_236.z, x_236.w);
    let x_238 : vec4<f32> = u_xlat1;
    let x_243 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_245 : vec2<f32> = (abs(vec2<f32>(x_238.y, x_238.x)) * vec2<f32>(x_243.x, x_243.x));
    let x_246 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_246.x, x_245.x, x_245.y, x_246.w);
    let x_251 : f32 = x_49.x_ScreenParams.x;
    let x_254 : f32 = x_49.x_ScreenParams.y;
    u_xlat16 = (x_251 / x_254);
    let x_256 : f32 = u_xlat16;
    u_xlat16 = (x_256 + -1.0f);
    let x_259 : f32 = x_49.x_Vignette_Settings.w;
    let x_260 : f32 = u_xlat16;
    u_xlat16 = ((x_259 * x_260) + 1.0f);
    let x_263 : f32 = u_xlat16;
    let x_266 : f32 = u_xlat1.z;
    u_xlat1.x = (x_263 * x_266);
    let x_269 : vec4<f32> = u_xlat1;
    let x_270 : vec2<f32> = vec2<f32>(x_269.x, x_269.y);
    let x_271 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_271.z, x_271.w);
    let x_273 : vec4<f32> = u_xlat1;
    let x_277 : vec2<f32> = clamp(vec2<f32>(x_273.x, x_273.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_278 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_277.x, x_277.y, x_278.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat1;
    let x_282 : vec2<f32> = log2(vec2<f32>(x_280.x, x_280.y));
    let x_283 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
    let x_285 : vec4<f32> = u_xlat1;
    let x_288 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_290 : vec2<f32> = (vec2<f32>(x_285.x, x_285.y) * vec2<f32>(x_288.z, x_288.z));
    let x_291 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_291.z, x_291.w);
    let x_293 : vec4<f32> = u_xlat1;
    let x_295 : vec2<f32> = exp2(vec2<f32>(x_293.x, x_293.y));
    let x_296 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
    let x_298 : vec4<f32> = u_xlat1;
    let x_300 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_298.x, x_298.y), vec2<f32>(x_300.x, x_300.y));
    let x_305 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_305) + 1.0f);
    let x_310 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_310, 0.0f);
    let x_314 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_314);
    let x_318 : f32 = u_xlat1.x;
    let x_320 : f32 = x_49.x_Vignette_Settings.y;
    u_xlat1.x = (x_318 * x_320);
    let x_324 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_324);
    let x_331 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_331) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_335 : vec4<f32> = u_xlat1;
    let x_337 : vec3<f32> = u_xlat6;
    let x_340 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_335.x, x_335.x, x_335.x) * x_337) + x_340);
    let x_342 : vec4<f32> = u_xlat0;
    let x_344 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_342.x, x_342.y, x_342.z) * x_344);
    let x_347 : f32 = u_xlat0.w;
    u_xlat2.x = (x_347 + -1.0f);
    let x_351 : f32 = u_xlat1.x;
    let x_353 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_351 * x_353) + 1.0f);
  } else {
    let x_363 : vec2<f32> = vs_TEXCOORD0;
    let x_364 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_363);
    u_xlat1.x = x_364.w;
    let x_368 : f32 = u_xlat1.x;
    u_xlat3.x = (x_368 * 0.077399381f);
    let x_374 : f32 = u_xlat1.x;
    u_xlat8 = (x_374 + 0.055f);
    let x_377 : f32 = u_xlat8;
    u_xlat8 = (x_377 * 0.947867334f);
    let x_380 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_380), 1.1920929e-07f);
    let x_384 : f32 = u_xlat8;
    u_xlat8 = log2(x_384);
    let x_386 : f32 = u_xlat8;
    u_xlat8 = (x_386 * 2.400000095f);
    let x_389 : f32 = u_xlat8;
    u_xlat8 = exp2(x_389);
    let x_393 : f32 = u_xlat1.x;
    u_xlatb1.x = (0.040449999f >= x_393);
    let x_397 : bool = u_xlatb1.x;
    if (x_397) {
      let x_403 : f32 = u_xlat3.x;
      x_399 = x_403;
    } else {
      let x_405 : f32 = u_xlat8;
      x_399 = x_405;
    }
    let x_406 : f32 = x_399;
    u_xlat1.x = x_406;
    let x_409 : vec3<f32> = x_49.x_Vignette_Color;
    let x_411 : vec3<f32> = (-(x_409) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_412 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
    let x_414 : vec4<f32> = u_xlat1;
    let x_416 : vec4<f32> = u_xlat3;
    let x_420 : vec3<f32> = x_49.x_Vignette_Color;
    let x_421 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.x, x_414.x) * vec3<f32>(x_416.x, x_416.y, x_416.z)) + x_420);
    let x_422 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
    let x_424 : vec4<f32> = u_xlat0;
    let x_426 : vec4<f32> = u_xlat3;
    let x_429 : vec4<f32> = u_xlat0;
    let x_432 : vec3<f32> = ((vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_426.x, x_426.y, x_426.z)) + -(vec3<f32>(x_429.x, x_429.y, x_429.z)));
    let x_433 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_437 : f32 = x_49.x_Vignette_Opacity;
    let x_439 : vec4<f32> = u_xlat3;
    let x_442 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z)) + vec3<f32>(x_442.x, x_442.y, x_442.z));
    let x_446 : f32 = u_xlat0.w;
    u_xlat0.x = (x_446 + -1.0f);
    let x_450 : f32 = u_xlat1.x;
    let x_452 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_450 * x_452) + 1.0f);
  }
  let x_456 : vec2<f32> = vs_TEXCOORD0;
  let x_459 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_463 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_465 : vec2<f32> = ((x_456 * vec2<f32>(x_459.x, x_459.y)) + vec2<f32>(x_463.z, x_463.w));
  let x_466 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
  let x_473 : vec4<f32> = u_xlat0;
  let x_475 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_473.x, x_473.y));
  u_xlat0.x = x_475.w;
  let x_479 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_479 * 2.0f) + -1.0f);
  let x_486 : f32 = u_xlat0.x;
  u_xlat5.x = ((x_486 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_492 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_492, 0.0f, 1.0f);
  let x_496 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_496 * 2.0f) + -1.0f);
  let x_501 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_501)) + 1.0f);
  let x_507 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_507);
  let x_511 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_511) + 1.0f);
  let x_516 : f32 = u_xlat0.x;
  let x_518 : f32 = u_xlat5.x;
  u_xlat0.x = (x_516 * x_518);
  let x_521 : vec3<f32> = u_xlat6;
  u_xlat5 = (x_521 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_525 : vec3<f32> = u_xlat6;
  let x_528 : vec3<f32> = max(abs(x_525), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat3;
  let x_533 : vec3<f32> = log2(vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec4<f32> = u_xlat3;
  let x_540 : vec3<f32> = (vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_541 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec4<f32> = u_xlat3;
  let x_545 : vec3<f32> = exp2(vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec4<f32> = u_xlat3;
  let x_555 : vec3<f32> = ((vec3<f32>(x_548.x, x_548.y, x_548.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_560 : vec3<f32> = u_xlat6;
  let x_563 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_560.x, x_560.y, x_560.z, x_560.x));
  u_xlatb1 = vec3<bool>(x_563.x, x_563.y, x_563.z);
  let x_567 : vec3<f32> = u_xlat5;
  hlslcc_movcTemp = x_567;
  let x_569 : bool = u_xlatb1.x;
  if (x_569) {
    let x_574 : f32 = u_xlat5.x;
    x_570 = x_574;
  } else {
    let x_577 : f32 = u_xlat3.x;
    x_570 = x_577;
  }
  let x_578 : f32 = x_570;
  hlslcc_movcTemp.x = x_578;
  let x_581 : bool = u_xlatb1.y;
  if (x_581) {
    let x_586 : f32 = u_xlat5.y;
    x_582 = x_586;
  } else {
    let x_589 : f32 = u_xlat3.y;
    x_582 = x_589;
  }
  let x_590 : f32 = x_582;
  hlslcc_movcTemp.y = x_590;
  let x_593 : bool = u_xlatb1.z;
  if (x_593) {
    let x_598 : f32 = u_xlat5.z;
    x_594 = x_598;
  } else {
    let x_601 : f32 = u_xlat3.z;
    x_594 = x_601;
  }
  let x_602 : f32 = x_594;
  hlslcc_movcTemp.z = x_602;
  let x_604 : vec3<f32> = hlslcc_movcTemp;
  u_xlat5 = x_604;
  let x_605 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = u_xlat5;
  let x_611 : vec3<f32> = ((vec3<f32>(x_605.x, x_605.x, x_605.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_610);
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat0;
  let x_617 : vec3<f32> = (vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_618 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat0;
  let x_623 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat3;
  let x_629 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_630 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat3;
  let x_635 : vec3<f32> = max(abs(vec3<f32>(x_632.x, x_632.y, x_632.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_636 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat3;
  let x_640 : vec3<f32> = log2(vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat3;
  let x_646 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec4<f32> = u_xlat3;
  let x_651 : vec3<f32> = exp2(vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_656 : vec4<f32> = u_xlat0;
  let x_658 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_656.x, x_656.y, x_656.z, x_656.x));
  u_xlatb0 = vec3<bool>(x_658.x, x_658.y, x_658.z);
  let x_661 : bool = u_xlatb0.x;
  if (x_661) {
    let x_666 : f32 = u_xlat1.x;
    x_662 = x_666;
  } else {
    let x_669 : f32 = u_xlat3.x;
    x_662 = x_669;
  }
  let x_670 : f32 = x_662;
  u_xlat2.x = x_670;
  let x_673 : bool = u_xlatb0.y;
  if (x_673) {
    let x_678 : f32 = u_xlat1.y;
    x_674 = x_678;
  } else {
    let x_681 : f32 = u_xlat3.y;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  u_xlat2.y = x_682;
  let x_685 : bool = u_xlatb0.z;
  if (x_685) {
    let x_690 : f32 = u_xlat1.z;
    x_686 = x_690;
  } else {
    let x_693 : f32 = u_xlat3.z;
    x_686 = x_693;
  }
  let x_694 : f32 = x_686;
  u_xlat2.z = x_694;
  let x_698 : vec4<f32> = u_xlat2;
  SV_Target0 = x_698;
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

