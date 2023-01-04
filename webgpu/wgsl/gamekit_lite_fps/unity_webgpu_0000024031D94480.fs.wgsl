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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_49 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat16 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

var<private> u_xlat7 : f32;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat15 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_396 : f32;
  var x_635 : f32;
  var x_647 : f32;
  var x_659 : f32;
  var x_726 : f32;
  var x_738 : f32;
  var x_750 : f32;
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
  let x_220 : f32 = x_49.x_Vignette_Mode;
  u_xlatb1 = (x_220 < 0.5f);
  let x_222 : bool = u_xlatb1;
  if (x_222) {
    let x_225 : vec2<f32> = vs_TEXCOORD0;
    let x_229 : vec2<f32> = x_49.x_Vignette_Center;
    let x_231 : vec2<f32> = (x_225 + -(x_229));
    let x_232 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_232.w);
    let x_234 : vec4<f32> = u_xlat1;
    let x_239 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_241 : vec2<f32> = (abs(vec2<f32>(x_234.y, x_234.x)) * vec2<f32>(x_239.x, x_239.x));
    let x_242 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_242.x, x_241.x, x_241.y, x_242.w);
    let x_247 : f32 = x_49.x_ScreenParams.x;
    let x_250 : f32 = x_49.x_ScreenParams.y;
    u_xlat16 = (x_247 / x_250);
    let x_252 : f32 = u_xlat16;
    u_xlat16 = (x_252 + -1.0f);
    let x_255 : f32 = x_49.x_Vignette_Settings.w;
    let x_256 : f32 = u_xlat16;
    u_xlat16 = ((x_255 * x_256) + 1.0f);
    let x_259 : f32 = u_xlat16;
    let x_262 : f32 = u_xlat1.z;
    u_xlat1.x = (x_259 * x_262);
    let x_265 : vec4<f32> = u_xlat1;
    let x_266 : vec2<f32> = vec2<f32>(x_265.x, x_265.y);
    let x_267 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_266.x, x_266.y, x_267.z, x_267.w);
    let x_269 : vec4<f32> = u_xlat1;
    let x_273 : vec2<f32> = clamp(vec2<f32>(x_269.x, x_269.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_274 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_273.x, x_273.y, x_274.z, x_274.w);
    let x_276 : vec4<f32> = u_xlat1;
    let x_278 : vec2<f32> = log2(vec2<f32>(x_276.x, x_276.y));
    let x_279 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_278.x, x_278.y, x_279.z, x_279.w);
    let x_281 : vec4<f32> = u_xlat1;
    let x_284 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_286 : vec2<f32> = (vec2<f32>(x_281.x, x_281.y) * vec2<f32>(x_284.z, x_284.z));
    let x_287 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_287.z, x_287.w);
    let x_289 : vec4<f32> = u_xlat1;
    let x_291 : vec2<f32> = exp2(vec2<f32>(x_289.x, x_289.y));
    let x_292 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_291.x, x_291.y, x_292.z, x_292.w);
    let x_294 : vec4<f32> = u_xlat1;
    let x_296 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_294.x, x_294.y), vec2<f32>(x_296.x, x_296.y));
    let x_301 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_301) + 1.0f);
    let x_306 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_306, 0.0f);
    let x_310 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_310);
    let x_314 : f32 = u_xlat1.x;
    let x_316 : f32 = x_49.x_Vignette_Settings.y;
    u_xlat1.x = (x_314 * x_316);
    let x_320 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_320);
    let x_327 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_327) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_331 : vec4<f32> = u_xlat1;
    let x_333 : vec3<f32> = u_xlat6;
    let x_336 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_331.x, x_331.x, x_331.x) * x_333) + x_336);
    let x_338 : vec4<f32> = u_xlat0;
    let x_340 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_338.x, x_338.y, x_338.z) * x_340);
    let x_343 : f32 = u_xlat0.w;
    u_xlat2.x = (x_343 + -1.0f);
    let x_349 : f32 = u_xlat1.x;
    let x_351 : f32 = u_xlat2.x;
    SV_Target0.w = ((x_349 * x_351) + 1.0f);
  } else {
    let x_362 : vec2<f32> = vs_TEXCOORD0;
    let x_363 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_362);
    u_xlat1.x = x_363.w;
    let x_367 : f32 = u_xlat1.x;
    u_xlat2.x = (x_367 * 0.077399381f);
    let x_373 : f32 = u_xlat1.x;
    u_xlat7 = (x_373 + 0.055f);
    let x_376 : f32 = u_xlat7;
    u_xlat7 = (x_376 * 0.947867334f);
    let x_379 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_379), 1.1920929e-07f);
    let x_383 : f32 = u_xlat7;
    u_xlat7 = log2(x_383);
    let x_385 : f32 = u_xlat7;
    u_xlat7 = (x_385 * 2.400000095f);
    let x_388 : f32 = u_xlat7;
    u_xlat7 = exp2(x_388);
    let x_392 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_392);
    let x_394 : bool = u_xlatb1;
    if (x_394) {
      let x_400 : f32 = u_xlat2.x;
      x_396 = x_400;
    } else {
      let x_402 : f32 = u_xlat7;
      x_396 = x_402;
    }
    let x_403 : f32 = x_396;
    u_xlat1.x = x_403;
    let x_406 : vec3<f32> = x_49.x_Vignette_Color;
    let x_408 : vec3<f32> = (-(x_406) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_409 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
    let x_411 : vec4<f32> = u_xlat1;
    let x_413 : vec4<f32> = u_xlat2;
    let x_417 : vec3<f32> = x_49.x_Vignette_Color;
    let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.x, x_411.x) * vec3<f32>(x_413.x, x_413.y, x_413.z)) + x_417);
    let x_419 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
    let x_421 : vec4<f32> = u_xlat0;
    let x_423 : vec4<f32> = u_xlat2;
    let x_426 : vec4<f32> = u_xlat0;
    let x_429 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_423.x, x_423.y, x_423.z)) + -(vec3<f32>(x_426.x, x_426.y, x_426.z)));
    let x_430 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
    let x_434 : f32 = x_49.x_Vignette_Opacity;
    let x_436 : vec4<f32> = u_xlat2;
    let x_439 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_434, x_434, x_434) * vec3<f32>(x_436.x, x_436.y, x_436.z)) + vec3<f32>(x_439.x, x_439.y, x_439.z));
    let x_443 : f32 = u_xlat0.w;
    u_xlat0.x = (x_443 + -1.0f);
    let x_447 : f32 = u_xlat1.x;
    let x_449 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_447 * x_449) + 1.0f);
  }
  let x_453 : vec2<f32> = vs_TEXCOORD1;
  let x_456 : vec4<f32> = x_49.x_Grain_Params2;
  let x_460 : vec4<f32> = x_49.x_Grain_Params2;
  let x_462 : vec2<f32> = ((x_453 * vec2<f32>(x_456.x, x_456.y)) + vec2<f32>(x_460.z, x_460.w));
  let x_463 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_470 : vec4<f32> = u_xlat0;
  let x_472 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_470.x, x_470.y));
  let x_473 : vec3<f32> = vec3<f32>(x_472.x, x_472.y, x_472.z);
  let x_474 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec3<f32> = u_xlat6;
  let x_477 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat2;
  let x_483 : vec3<f32> = clamp(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_484 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_487.x, x_487.y, x_487.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_494 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_494);
  let x_498 : f32 = x_49.x_Grain_Params1.x;
  let x_499 : f32 = u_xlat15;
  u_xlat15 = ((x_498 * -(x_499)) + 1.0f);
  let x_503 : vec4<f32> = u_xlat0;
  let x_505 : vec3<f32> = u_xlat6;
  let x_506 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) * x_505);
  let x_507 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat0;
  let x_512 : f32 = x_49.x_Grain_Params1.y;
  let x_514 : f32 = x_49.x_Grain_Params1.y;
  let x_516 : f32 = x_49.x_Grain_Params1.y;
  let x_518 : vec3<f32> = (vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_512, x_514, x_516));
  let x_519 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat0;
  let x_523 : f32 = u_xlat15;
  let x_526 : vec3<f32> = u_xlat6;
  let x_527 : vec3<f32> = ((vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(x_523, x_523, x_523)) + x_526);
  let x_528 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec2<f32> = vs_TEXCOORD0;
  let x_533 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_537 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_539 : vec2<f32> = ((x_530 * vec2<f32>(x_533.x, x_533.y)) + vec2<f32>(x_537.z, x_537.w));
  let x_540 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
  let x_547 : vec4<f32> = u_xlat1;
  let x_549 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_547.x, x_547.y));
  u_xlat15 = x_549.w;
  let x_551 : f32 = u_xlat15;
  u_xlat15 = ((x_551 * 2.0f) + -1.0f);
  let x_555 : f32 = u_xlat15;
  u_xlat1.x = ((x_555 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_561 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_561, 0.0f, 1.0f);
  let x_565 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_565 * 2.0f) + -1.0f);
  let x_569 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_569)) + 1.0f);
  let x_573 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_573);
  let x_575 : f32 = u_xlat15;
  u_xlat15 = (-(x_575) + 1.0f);
  let x_578 : f32 = u_xlat15;
  let x_580 : f32 = u_xlat1.x;
  u_xlat15 = (x_578 * x_580);
  let x_582 : vec4<f32> = u_xlat0;
  let x_586 : vec3<f32> = (vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_587 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_589 : vec4<f32> = u_xlat0;
  let x_593 : vec3<f32> = max(abs(vec3<f32>(x_589.x, x_589.y, x_589.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_594 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat2;
  let x_598 : vec3<f32> = log2(vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat2;
  let x_605 : vec3<f32> = (vec3<f32>(x_601.x, x_601.y, x_601.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat2;
  let x_610 : vec3<f32> = exp2(vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat2;
  let x_620 : vec3<f32> = ((vec3<f32>(x_613.x, x_613.y, x_613.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_628 : vec4<f32> = u_xlat0;
  let x_631 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_628.x, x_628.y, x_628.z, x_628.x));
  u_xlatb0 = vec3<bool>(x_631.x, x_631.y, x_631.z);
  let x_634 : bool = u_xlatb0.x;
  if (x_634) {
    let x_639 : f32 = u_xlat1.x;
    x_635 = x_639;
  } else {
    let x_642 : f32 = u_xlat2.x;
    x_635 = x_642;
  }
  let x_643 : f32 = x_635;
  u_xlat0.x = x_643;
  let x_646 : bool = u_xlatb0.y;
  if (x_646) {
    let x_651 : f32 = u_xlat1.y;
    x_647 = x_651;
  } else {
    let x_654 : f32 = u_xlat2.y;
    x_647 = x_654;
  }
  let x_655 : f32 = x_647;
  u_xlat0.y = x_655;
  let x_658 : bool = u_xlatb0.z;
  if (x_658) {
    let x_663 : f32 = u_xlat1.z;
    x_659 = x_663;
  } else {
    let x_666 : f32 = u_xlat2.z;
    x_659 = x_666;
  }
  let x_667 : f32 = x_659;
  u_xlat0.z = x_667;
  let x_669 : f32 = u_xlat15;
  let x_674 : vec4<f32> = u_xlat0;
  let x_676 : vec3<f32> = ((vec3<f32>(x_669, x_669, x_669) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat0;
  let x_682 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_683 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat0;
  let x_688 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_689 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat2;
  let x_694 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_695 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat2;
  let x_700 : vec3<f32> = max(abs(vec3<f32>(x_697.x, x_697.y, x_697.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_701 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat2;
  let x_705 : vec3<f32> = log2(vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_706 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat2;
  let x_711 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_712 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat2;
  let x_716 : vec3<f32> = exp2(vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_720 : vec4<f32> = u_xlat0;
  let x_722 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_720.x, x_720.y, x_720.z, x_720.x));
  u_xlatb0 = vec3<bool>(x_722.x, x_722.y, x_722.z);
  let x_725 : bool = u_xlatb0.x;
  if (x_725) {
    let x_730 : f32 = u_xlat1.x;
    x_726 = x_730;
  } else {
    let x_733 : f32 = u_xlat2.x;
    x_726 = x_733;
  }
  let x_734 : f32 = x_726;
  SV_Target0.x = x_734;
  let x_737 : bool = u_xlatb0.y;
  if (x_737) {
    let x_742 : f32 = u_xlat1.y;
    x_738 = x_742;
  } else {
    let x_745 : f32 = u_xlat2.y;
    x_738 = x_745;
  }
  let x_746 : f32 = x_738;
  SV_Target0.y = x_746;
  let x_749 : bool = u_xlatb0.z;
  if (x_749) {
    let x_754 : f32 = u_xlat1.z;
    x_750 = x_754;
  } else {
    let x_757 : f32 = u_xlat2.z;
    x_750 = x_757;
  }
  let x_758 : f32 = x_750;
  SV_Target0.z = x_758;
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

