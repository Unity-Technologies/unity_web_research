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
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(12) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

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
  var u_xlat11 : f32;
  var x_396 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_648 : f32;
  var x_660 : f32;
  var x_672 : f32;
  var x_741 : f32;
  var x_754 : f32;
  var x_766 : f32;
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
    let x_341 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * x_340);
    let x_342 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
    let x_345 : f32 = u_xlat0.w;
    u_xlat6.x = (x_345 + -1.0f);
    let x_349 : f32 = u_xlat1.x;
    let x_351 : f32 = u_xlat6.x;
    u_xlat2.w = ((x_349 * x_351) + 1.0f);
  } else {
    let x_361 : vec2<f32> = vs_TEXCOORD0;
    let x_362 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_361);
    u_xlat1.x = x_362.w;
    let x_366 : f32 = u_xlat1.x;
    u_xlat1.z = (x_366 + 0.055f);
    let x_370 : vec4<f32> = u_xlat1;
    let x_375 : vec2<f32> = (vec2<f32>(x_370.x, x_370.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_376 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_375.x, x_375.y, x_376.z);
    let x_380 : f32 = u_xlat6.y;
    u_xlat11 = max(abs(x_380), 1.1920929e-07f);
    let x_384 : f32 = u_xlat11;
    u_xlat11 = log2(x_384);
    let x_386 : f32 = u_xlat11;
    u_xlat11 = (x_386 * 2.400000095f);
    let x_389 : f32 = u_xlat11;
    u_xlat11 = exp2(x_389);
    let x_393 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_393);
    let x_395 : bool = u_xlatb1;
    if (x_395) {
      let x_400 : f32 = u_xlat6.x;
      x_396 = x_400;
    } else {
      let x_402 : f32 = u_xlat11;
      x_396 = x_402;
    }
    let x_403 : f32 = x_396;
    u_xlat1.x = x_403;
    let x_406 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_406) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_409 : vec4<f32> = u_xlat1;
    let x_411 : vec3<f32> = u_xlat6;
    let x_414 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_409.x, x_409.x, x_409.x) * x_411) + x_414);
    let x_416 : vec4<f32> = u_xlat0;
    let x_418 : vec3<f32> = u_xlat6;
    let x_420 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_416.x, x_416.y, x_416.z) * x_418) + -(vec3<f32>(x_420.x, x_420.y, x_420.z)));
    let x_426 : f32 = x_49.x_Vignette_Opacity;
    let x_428 : vec3<f32> = u_xlat6;
    let x_430 : vec4<f32> = u_xlat0;
    let x_432 : vec3<f32> = ((vec3<f32>(x_426, x_426, x_426) * x_428) + vec3<f32>(x_430.x, x_430.y, x_430.z));
    let x_433 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_436 : f32 = u_xlat0.w;
    u_xlat0.x = (x_436 + -1.0f);
    let x_440 : f32 = u_xlat1.x;
    let x_442 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_440 * x_442) + 1.0f);
  }
  let x_446 : vec4<f32> = u_xlat2;
  let x_449 : f32 = x_49.x_PostExposure;
  let x_451 : f32 = x_49.x_PostExposure;
  let x_453 : f32 = x_49.x_PostExposure;
  let x_455 : f32 = x_49.x_PostExposure;
  let x_456 : vec4<f32> = vec4<f32>(x_449, x_451, x_453, x_455);
  u_xlat0 = (x_446 * vec4<f32>(x_456.x, x_456.y, x_456.z, x_456.w));
  let x_463 : vec4<f32> = u_xlat0;
  let x_470 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_471 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec4<f32> = u_xlat0;
  let x_475 : vec3<f32> = log2(vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat0;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_486 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat0;
  let x_492 : vec3<f32> = clamp(vec3<f32>(x_488.x, x_488.y, x_488.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat0;
  let x_499 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_501 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(x_499.y, x_499.y, x_499.y));
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_505 : f32 = x_49.x_Lut3D_Params.x;
  u_xlat1.x = (x_505 * 0.5f);
  let x_508 : vec4<f32> = u_xlat0;
  let x_511 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec3<f32> = ((vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_511.x, x_511.x, x_511.x)) + vec3<f32>(x_514.x, x_514.x, x_514.x));
  let x_517 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_527 : vec4<f32> = u_xlat0;
  let x_529 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : vec3<f32> = vec3<f32>(x_529.x, x_529.y, x_529.z);
  let x_531 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec2<f32> = vs_TEXCOORD0;
  let x_536 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_540 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_542 : vec2<f32> = ((x_533 * vec2<f32>(x_536.x, x_536.y)) + vec2<f32>(x_540.z, x_540.w));
  let x_543 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
  let x_550 : vec4<f32> = u_xlat1;
  let x_552 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_550.x, x_550.y));
  u_xlat1.x = x_552.w;
  let x_556 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_556 * 2.0f) + -1.0f);
  let x_562 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_562 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_568 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_568, 0.0f, 1.0f);
  let x_572 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_572 * 2.0f) + -1.0f);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_577)) + 1.0f);
  let x_583 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_583);
  let x_587 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_587) + 1.0f);
  let x_592 : f32 = u_xlat1.x;
  let x_594 : f32 = u_xlat6.x;
  u_xlat1.x = (x_592 * x_594);
  let x_597 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_602 : vec4<f32> = u_xlat0;
  let x_606 : vec3<f32> = max(abs(vec3<f32>(x_602.x, x_602.y, x_602.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_607 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec4<f32> = u_xlat2;
  let x_611 : vec3<f32> = log2(vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat2;
  let x_618 : vec3<f32> = (vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_619 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat2;
  let x_623 : vec3<f32> = exp2(vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_624 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat2;
  let x_633 : vec3<f32> = ((vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_634 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_641 : vec4<f32> = u_xlat0;
  let x_644 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_641.x, x_641.y, x_641.z, x_641.x));
  u_xlatb0 = vec3<bool>(x_644.x, x_644.y, x_644.z);
  let x_647 : bool = u_xlatb0.x;
  if (x_647) {
    let x_652 : f32 = u_xlat6.x;
    x_648 = x_652;
  } else {
    let x_655 : f32 = u_xlat2.x;
    x_648 = x_655;
  }
  let x_656 : f32 = x_648;
  u_xlat0.x = x_656;
  let x_659 : bool = u_xlatb0.y;
  if (x_659) {
    let x_664 : f32 = u_xlat6.y;
    x_660 = x_664;
  } else {
    let x_667 : f32 = u_xlat2.y;
    x_660 = x_667;
  }
  let x_668 : f32 = x_660;
  u_xlat0.y = x_668;
  let x_671 : bool = u_xlatb0.z;
  if (x_671) {
    let x_676 : f32 = u_xlat6.z;
    x_672 = x_676;
  } else {
    let x_679 : f32 = u_xlat2.z;
    x_672 = x_679;
  }
  let x_680 : f32 = x_672;
  u_xlat0.z = x_680;
  let x_682 : vec4<f32> = u_xlat1;
  let x_687 : vec4<f32> = u_xlat0;
  let x_689 : vec3<f32> = ((vec3<f32>(x_682.x, x_682.x, x_682.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat0;
  let x_695 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_696 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat0;
  let x_701 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_702 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat2;
  let x_707 : vec3<f32> = (vec3<f32>(x_704.x, x_704.y, x_704.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_708 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat2;
  let x_713 : vec3<f32> = max(abs(vec3<f32>(x_710.x, x_710.y, x_710.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_714 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_716 : vec4<f32> = u_xlat2;
  let x_718 : vec3<f32> = log2(vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat2;
  let x_724 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_725 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec4<f32> = u_xlat2;
  let x_729 : vec3<f32> = exp2(vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_733 : vec4<f32> = u_xlat0;
  let x_735 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_733.x, x_733.y, x_733.z, x_733.x));
  u_xlatb0 = vec3<bool>(x_735.x, x_735.y, x_735.z);
  let x_740 : bool = u_xlatb0.x;
  if (x_740) {
    let x_745 : f32 = u_xlat1.x;
    x_741 = x_745;
  } else {
    let x_748 : f32 = u_xlat2.x;
    x_741 = x_748;
  }
  let x_749 : f32 = x_741;
  SV_Target0.x = x_749;
  let x_753 : bool = u_xlatb0.y;
  if (x_753) {
    let x_758 : f32 = u_xlat1.y;
    x_754 = x_758;
  } else {
    let x_761 : f32 = u_xlat2.y;
    x_754 = x_761;
  }
  let x_762 : f32 = x_754;
  SV_Target0.y = x_762;
  let x_765 : bool = u_xlatb0.z;
  if (x_765) {
    let x_770 : f32 = u_xlat1.z;
    x_766 = x_770;
  } else {
    let x_773 : f32 = u_xlat2.z;
    x_766 = x_773;
  }
  let x_774 : f32 = x_766;
  SV_Target0.z = x_774;
  let x_777 : f32 = u_xlat0.w;
  SV_Target0.w = x_777;
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

