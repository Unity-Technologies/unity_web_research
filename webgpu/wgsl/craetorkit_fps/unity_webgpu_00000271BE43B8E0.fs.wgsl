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

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

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
  var u_xlat7 : f32;
  var x_395 : f32;
  var u_xlat15 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_634 : f32;
  var x_646 : f32;
  var x_658 : f32;
  var x_725 : f32;
  var x_737 : f32;
  var x_749 : f32;
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
      let x_399 : f32 = u_xlat2.x;
      x_395 = x_399;
    } else {
      let x_401 : f32 = u_xlat7;
      x_395 = x_401;
    }
    let x_402 : f32 = x_395;
    u_xlat1.x = x_402;
    let x_405 : vec3<f32> = x_49.x_Vignette_Color;
    let x_407 : vec3<f32> = (-(x_405) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_408 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
    let x_410 : vec4<f32> = u_xlat1;
    let x_412 : vec4<f32> = u_xlat2;
    let x_416 : vec3<f32> = x_49.x_Vignette_Color;
    let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.x, x_410.x) * vec3<f32>(x_412.x, x_412.y, x_412.z)) + x_416);
    let x_418 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_420 : vec4<f32> = u_xlat0;
    let x_422 : vec4<f32> = u_xlat2;
    let x_425 : vec4<f32> = u_xlat0;
    let x_428 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_422.x, x_422.y, x_422.z)) + -(vec3<f32>(x_425.x, x_425.y, x_425.z)));
    let x_429 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
    let x_433 : f32 = x_49.x_Vignette_Opacity;
    let x_435 : vec4<f32> = u_xlat2;
    let x_438 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_433, x_433, x_433) * vec3<f32>(x_435.x, x_435.y, x_435.z)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
    let x_442 : f32 = u_xlat0.w;
    u_xlat0.x = (x_442 + -1.0f);
    let x_446 : f32 = u_xlat1.x;
    let x_448 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_446 * x_448) + 1.0f);
  }
  let x_452 : vec2<f32> = vs_TEXCOORD1;
  let x_455 : vec4<f32> = x_49.x_Grain_Params2;
  let x_459 : vec4<f32> = x_49.x_Grain_Params2;
  let x_461 : vec2<f32> = ((x_452 * vec2<f32>(x_455.x, x_455.y)) + vec2<f32>(x_459.z, x_459.w));
  let x_462 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
  let x_469 : vec4<f32> = u_xlat0;
  let x_471 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_469.x, x_469.y));
  let x_472 : vec3<f32> = vec3<f32>(x_471.x, x_471.y, x_471.z);
  let x_473 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec3<f32> = u_xlat6;
  let x_476 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat2;
  let x_482 : vec3<f32> = clamp(vec3<f32>(x_478.x, x_478.y, x_478.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_483 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_486 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_493 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_493);
  let x_497 : f32 = x_49.x_Grain_Params1.x;
  let x_498 : f32 = u_xlat15;
  u_xlat15 = ((x_497 * -(x_498)) + 1.0f);
  let x_502 : vec4<f32> = u_xlat0;
  let x_504 : vec3<f32> = u_xlat6;
  let x_505 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) * x_504);
  let x_506 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat0;
  let x_511 : f32 = x_49.x_Grain_Params1.y;
  let x_513 : f32 = x_49.x_Grain_Params1.y;
  let x_515 : f32 = x_49.x_Grain_Params1.y;
  let x_517 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_511, x_513, x_515));
  let x_518 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat0;
  let x_522 : f32 = u_xlat15;
  let x_525 : vec3<f32> = u_xlat6;
  let x_526 : vec3<f32> = ((vec3<f32>(x_520.x, x_520.y, x_520.z) * vec3<f32>(x_522, x_522, x_522)) + x_525);
  let x_527 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec2<f32> = vs_TEXCOORD0;
  let x_532 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_536 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_538 : vec2<f32> = ((x_529 * vec2<f32>(x_532.x, x_532.y)) + vec2<f32>(x_536.z, x_536.w));
  let x_539 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_546 : vec4<f32> = u_xlat1;
  let x_548 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_546.x, x_546.y));
  u_xlat15 = x_548.w;
  let x_550 : f32 = u_xlat15;
  u_xlat15 = ((x_550 * 2.0f) + -1.0f);
  let x_554 : f32 = u_xlat15;
  u_xlat1.x = ((x_554 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_560 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_560, 0.0f, 1.0f);
  let x_564 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_564 * 2.0f) + -1.0f);
  let x_568 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_568)) + 1.0f);
  let x_572 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_572);
  let x_574 : f32 = u_xlat15;
  u_xlat15 = (-(x_574) + 1.0f);
  let x_577 : f32 = u_xlat15;
  let x_579 : f32 = u_xlat1.x;
  u_xlat15 = (x_577 * x_579);
  let x_581 : vec4<f32> = u_xlat0;
  let x_585 : vec3<f32> = (vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_586 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec4<f32> = u_xlat0;
  let x_592 : vec3<f32> = max(abs(vec3<f32>(x_588.x, x_588.y, x_588.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_593 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat2;
  let x_597 : vec3<f32> = log2(vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec4<f32> = u_xlat2;
  let x_604 : vec3<f32> = (vec3<f32>(x_600.x, x_600.y, x_600.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat2;
  let x_609 : vec3<f32> = exp2(vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat2;
  let x_619 : vec3<f32> = ((vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_620 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_627 : vec4<f32> = u_xlat0;
  let x_630 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_627.x, x_627.y, x_627.z, x_627.x));
  u_xlatb0 = vec3<bool>(x_630.x, x_630.y, x_630.z);
  let x_633 : bool = u_xlatb0.x;
  if (x_633) {
    let x_638 : f32 = u_xlat1.x;
    x_634 = x_638;
  } else {
    let x_641 : f32 = u_xlat2.x;
    x_634 = x_641;
  }
  let x_642 : f32 = x_634;
  u_xlat0.x = x_642;
  let x_645 : bool = u_xlatb0.y;
  if (x_645) {
    let x_650 : f32 = u_xlat1.y;
    x_646 = x_650;
  } else {
    let x_653 : f32 = u_xlat2.y;
    x_646 = x_653;
  }
  let x_654 : f32 = x_646;
  u_xlat0.y = x_654;
  let x_657 : bool = u_xlatb0.z;
  if (x_657) {
    let x_662 : f32 = u_xlat1.z;
    x_658 = x_662;
  } else {
    let x_665 : f32 = u_xlat2.z;
    x_658 = x_665;
  }
  let x_666 : f32 = x_658;
  u_xlat0.z = x_666;
  let x_668 : f32 = u_xlat15;
  let x_673 : vec4<f32> = u_xlat0;
  let x_675 : vec3<f32> = ((vec3<f32>(x_668, x_668, x_668) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : vec4<f32> = u_xlat0;
  let x_681 : vec3<f32> = (vec3<f32>(x_678.x, x_678.y, x_678.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_682 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_684 : vec4<f32> = u_xlat0;
  let x_687 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_688 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat2;
  let x_693 : vec3<f32> = (vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_694 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat2;
  let x_699 : vec3<f32> = max(abs(vec3<f32>(x_696.x, x_696.y, x_696.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_700 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat2;
  let x_704 : vec3<f32> = log2(vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec4<f32> = u_xlat2;
  let x_710 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_711 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat2;
  let x_715 : vec3<f32> = exp2(vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_719 : vec4<f32> = u_xlat0;
  let x_721 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_719.x, x_719.y, x_719.z, x_719.x));
  u_xlatb0 = vec3<bool>(x_721.x, x_721.y, x_721.z);
  let x_724 : bool = u_xlatb0.x;
  if (x_724) {
    let x_729 : f32 = u_xlat1.x;
    x_725 = x_729;
  } else {
    let x_732 : f32 = u_xlat2.x;
    x_725 = x_732;
  }
  let x_733 : f32 = x_725;
  SV_Target0.x = x_733;
  let x_736 : bool = u_xlatb0.y;
  if (x_736) {
    let x_741 : f32 = u_xlat1.y;
    x_737 = x_741;
  } else {
    let x_744 : f32 = u_xlat2.y;
    x_737 = x_744;
  }
  let x_745 : f32 = x_737;
  SV_Target0.y = x_745;
  let x_748 : bool = u_xlatb0.z;
  if (x_748) {
    let x_753 : f32 = u_xlat1.z;
    x_749 = x_753;
  } else {
    let x_756 : f32 = u_xlat2.z;
    x_749 = x_756;
  }
  let x_757 : f32 = x_749;
  SV_Target0.z = x_757;
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

