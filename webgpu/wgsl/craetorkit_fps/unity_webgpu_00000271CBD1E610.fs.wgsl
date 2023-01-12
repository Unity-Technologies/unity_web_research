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

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb1 : vec3<bool>;
  var u_xlat16 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var x_398 : f32;
  var u_xlat5 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_568 : f32;
  var x_580 : f32;
  var x_592 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_660 : f32;
  var x_672 : f32;
  var x_684 : f32;
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
      let x_402 : f32 = u_xlat3.x;
      x_398 = x_402;
    } else {
      let x_404 : f32 = u_xlat8;
      x_398 = x_404;
    }
    let x_405 : f32 = x_398;
    u_xlat1.x = x_405;
    let x_408 : vec3<f32> = x_49.x_Vignette_Color;
    let x_410 : vec3<f32> = (-(x_408) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_411 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
    let x_413 : vec4<f32> = u_xlat1;
    let x_415 : vec4<f32> = u_xlat3;
    let x_419 : vec3<f32> = x_49.x_Vignette_Color;
    let x_420 : vec3<f32> = ((vec3<f32>(x_413.x, x_413.x, x_413.x) * vec3<f32>(x_415.x, x_415.y, x_415.z)) + x_419);
    let x_421 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
    let x_423 : vec4<f32> = u_xlat0;
    let x_425 : vec4<f32> = u_xlat3;
    let x_428 : vec4<f32> = u_xlat0;
    let x_431 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.x, x_425.y, x_425.z)) + -(vec3<f32>(x_428.x, x_428.y, x_428.z)));
    let x_432 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
    let x_436 : f32 = x_49.x_Vignette_Opacity;
    let x_438 : vec4<f32> = u_xlat3;
    let x_441 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_436, x_436, x_436) * vec3<f32>(x_438.x, x_438.y, x_438.z)) + vec3<f32>(x_441.x, x_441.y, x_441.z));
    let x_445 : f32 = u_xlat0.w;
    u_xlat0.x = (x_445 + -1.0f);
    let x_449 : f32 = u_xlat1.x;
    let x_451 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_449 * x_451) + 1.0f);
  }
  let x_455 : vec2<f32> = vs_TEXCOORD0;
  let x_458 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_462 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_464 : vec2<f32> = ((x_455 * vec2<f32>(x_458.x, x_458.y)) + vec2<f32>(x_462.z, x_462.w));
  let x_465 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
  let x_472 : vec4<f32> = u_xlat0;
  let x_474 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_472.x, x_472.y));
  u_xlat0.x = x_474.w;
  let x_478 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_478 * 2.0f) + -1.0f);
  let x_485 : f32 = u_xlat0.x;
  u_xlat5.x = ((x_485 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_491 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_491, 0.0f, 1.0f);
  let x_495 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_495 * 2.0f) + -1.0f);
  let x_500 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_500)) + 1.0f);
  let x_506 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_506);
  let x_510 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_510) + 1.0f);
  let x_515 : f32 = u_xlat0.x;
  let x_517 : f32 = u_xlat5.x;
  u_xlat0.x = (x_515 * x_517);
  let x_520 : vec3<f32> = u_xlat6;
  u_xlat5 = (x_520 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_524 : vec3<f32> = u_xlat6;
  let x_527 : vec3<f32> = max(abs(x_524), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_528 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec4<f32> = u_xlat3;
  let x_532 : vec3<f32> = log2(vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_535 : vec4<f32> = u_xlat3;
  let x_539 : vec3<f32> = (vec3<f32>(x_535.x, x_535.y, x_535.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat3;
  let x_544 : vec3<f32> = exp2(vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat3;
  let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_555 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_559 : vec3<f32> = u_xlat6;
  let x_562 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_559.x, x_559.y, x_559.z, x_559.x));
  u_xlatb1 = vec3<bool>(x_562.x, x_562.y, x_562.z);
  let x_565 : vec3<f32> = u_xlat5;
  hlslcc_movcTemp = x_565;
  let x_567 : bool = u_xlatb1.x;
  if (x_567) {
    let x_572 : f32 = u_xlat5.x;
    x_568 = x_572;
  } else {
    let x_575 : f32 = u_xlat3.x;
    x_568 = x_575;
  }
  let x_576 : f32 = x_568;
  hlslcc_movcTemp.x = x_576;
  let x_579 : bool = u_xlatb1.y;
  if (x_579) {
    let x_584 : f32 = u_xlat5.y;
    x_580 = x_584;
  } else {
    let x_587 : f32 = u_xlat3.y;
    x_580 = x_587;
  }
  let x_588 : f32 = x_580;
  hlslcc_movcTemp.y = x_588;
  let x_591 : bool = u_xlatb1.z;
  if (x_591) {
    let x_596 : f32 = u_xlat5.z;
    x_592 = x_596;
  } else {
    let x_599 : f32 = u_xlat3.z;
    x_592 = x_599;
  }
  let x_600 : f32 = x_592;
  hlslcc_movcTemp.z = x_600;
  let x_602 : vec3<f32> = hlslcc_movcTemp;
  u_xlat5 = x_602;
  let x_603 : vec4<f32> = u_xlat0;
  let x_608 : vec3<f32> = u_xlat5;
  let x_609 : vec3<f32> = ((vec3<f32>(x_603.x, x_603.x, x_603.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_608);
  let x_610 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat0;
  let x_615 : vec3<f32> = (vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_616 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat0;
  let x_621 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_622 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat3;
  let x_627 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_628 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec4<f32> = u_xlat3;
  let x_633 : vec3<f32> = max(abs(vec3<f32>(x_630.x, x_630.y, x_630.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_634 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat3;
  let x_638 : vec3<f32> = log2(vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat3;
  let x_644 : vec3<f32> = (vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat3;
  let x_649 : vec3<f32> = exp2(vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_654.x, x_654.y, x_654.z, x_654.x));
  u_xlatb0 = vec3<bool>(x_656.x, x_656.y, x_656.z);
  let x_659 : bool = u_xlatb0.x;
  if (x_659) {
    let x_664 : f32 = u_xlat1.x;
    x_660 = x_664;
  } else {
    let x_667 : f32 = u_xlat3.x;
    x_660 = x_667;
  }
  let x_668 : f32 = x_660;
  u_xlat2.x = x_668;
  let x_671 : bool = u_xlatb0.y;
  if (x_671) {
    let x_676 : f32 = u_xlat1.y;
    x_672 = x_676;
  } else {
    let x_679 : f32 = u_xlat3.y;
    x_672 = x_679;
  }
  let x_680 : f32 = x_672;
  u_xlat2.y = x_680;
  let x_683 : bool = u_xlatb0.z;
  if (x_683) {
    let x_688 : f32 = u_xlat1.z;
    x_684 = x_688;
  } else {
    let x_691 : f32 = u_xlat3.z;
    x_684 = x_691;
  }
  let x_692 : f32 = x_684;
  u_xlat2.z = x_692;
  let x_696 : vec4<f32> = u_xlat2;
  SV_Target0 = x_696;
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

