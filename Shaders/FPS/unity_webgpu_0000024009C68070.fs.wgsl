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

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

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

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(12) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_393 : f32;
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
    let x_347 : f32 = u_xlat1.x;
    let x_349 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_347 * x_349) + 1.0f);
  } else {
    let x_359 : vec2<f32> = vs_TEXCOORD0;
    let x_360 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_359);
    u_xlat1.x = x_360.w;
    let x_364 : f32 = u_xlat1.x;
    u_xlat3.x = (x_364 * 0.077399381f);
    let x_370 : f32 = u_xlat1.x;
    u_xlat8 = (x_370 + 0.055f);
    let x_373 : f32 = u_xlat8;
    u_xlat8 = (x_373 * 0.947867334f);
    let x_376 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_376), 1.1920929e-07f);
    let x_380 : f32 = u_xlat8;
    u_xlat8 = log2(x_380);
    let x_382 : f32 = u_xlat8;
    u_xlat8 = (x_382 * 2.400000095f);
    let x_385 : f32 = u_xlat8;
    u_xlat8 = exp2(x_385);
    let x_389 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_389);
    let x_391 : bool = u_xlatb1;
    if (x_391) {
      let x_397 : f32 = u_xlat3.x;
      x_393 = x_397;
    } else {
      let x_399 : f32 = u_xlat8;
      x_393 = x_399;
    }
    let x_400 : f32 = x_393;
    u_xlat1.x = x_400;
    let x_403 : vec3<f32> = x_49.x_Vignette_Color;
    let x_405 : vec3<f32> = (-(x_403) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_406 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
    let x_408 : vec4<f32> = u_xlat1;
    let x_410 : vec4<f32> = u_xlat3;
    let x_414 : vec3<f32> = x_49.x_Vignette_Color;
    let x_415 : vec3<f32> = ((vec3<f32>(x_408.x, x_408.x, x_408.x) * vec3<f32>(x_410.x, x_410.y, x_410.z)) + x_414);
    let x_416 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
    let x_418 : vec4<f32> = u_xlat0;
    let x_420 : vec4<f32> = u_xlat3;
    let x_423 : vec4<f32> = u_xlat0;
    let x_426 : vec3<f32> = ((vec3<f32>(x_418.x, x_418.y, x_418.z) * vec3<f32>(x_420.x, x_420.y, x_420.z)) + -(vec3<f32>(x_423.x, x_423.y, x_423.z)));
    let x_427 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
    let x_431 : f32 = x_49.x_Vignette_Opacity;
    let x_433 : vec4<f32> = u_xlat3;
    let x_436 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_431, x_431, x_431) * vec3<f32>(x_433.x, x_433.y, x_433.z)) + vec3<f32>(x_436.x, x_436.y, x_436.z));
    let x_440 : f32 = u_xlat0.w;
    u_xlat0.x = (x_440 + -1.0f);
    let x_444 : f32 = u_xlat1.x;
    let x_446 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_444 * x_446) + 1.0f);
  }
  let x_450 : vec2<f32> = vs_TEXCOORD1;
  let x_453 : vec4<f32> = x_49.x_Grain_Params2;
  let x_457 : vec4<f32> = x_49.x_Grain_Params2;
  let x_459 : vec2<f32> = ((x_450 * vec2<f32>(x_453.x, x_453.y)) + vec2<f32>(x_457.z, x_457.w));
  let x_460 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
  let x_467 : vec4<f32> = u_xlat0;
  let x_469 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_467.x, x_467.y));
  let x_470 : vec3<f32> = vec3<f32>(x_469.x, x_469.y, x_469.z);
  let x_471 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec3<f32> = u_xlat6;
  let x_474 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat3;
  let x_480 : vec3<f32> = clamp(vec3<f32>(x_476.x, x_476.y, x_476.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_481 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_484 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_484.x, x_484.y, x_484.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_491 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_491);
  let x_495 : f32 = x_49.x_Grain_Params1.x;
  let x_496 : f32 = u_xlat15;
  u_xlat15 = ((x_495 * -(x_496)) + 1.0f);
  let x_500 : vec4<f32> = u_xlat0;
  let x_502 : vec3<f32> = u_xlat6;
  let x_503 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) * x_502);
  let x_504 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat0;
  let x_509 : f32 = x_49.x_Grain_Params1.y;
  let x_511 : f32 = x_49.x_Grain_Params1.y;
  let x_513 : f32 = x_49.x_Grain_Params1.y;
  let x_515 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_509, x_511, x_513));
  let x_516 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : f32 = u_xlat15;
  let x_523 : vec3<f32> = u_xlat6;
  let x_524 : vec3<f32> = ((vec3<f32>(x_518.x, x_518.y, x_518.z) * vec3<f32>(x_520, x_520, x_520)) + x_523);
  let x_525 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat2;
  let x_531 : f32 = x_49.x_PostExposure;
  let x_533 : f32 = x_49.x_PostExposure;
  let x_535 : f32 = x_49.x_PostExposure;
  let x_537 : f32 = x_49.x_PostExposure;
  let x_538 : vec4<f32> = vec4<f32>(x_531, x_533, x_535, x_537);
  u_xlat0 = (vec4<f32>(x_527.w, x_527.x, x_527.y, x_527.z) * vec4<f32>(x_538.x, x_538.y, x_538.z, x_538.w));
  let x_545 : vec4<f32> = u_xlat0;
  let x_552 : vec3<f32> = ((vec3<f32>(x_545.y, x_545.z, x_545.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_553 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec4<f32> = u_xlat1;
  let x_557 : vec3<f32> = log2(vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat1;
  let x_567 : vec3<f32> = ((vec3<f32>(x_560.x, x_560.y, x_560.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_568 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat1;
  let x_574 : vec3<f32> = clamp(vec3<f32>(x_570.x, x_570.y, x_570.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_575 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat1;
  let x_581 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_583 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(x_581.y, x_581.y, x_581.y));
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_587 : f32 = x_49.x_Lut3D_Params.x;
  u_xlat16 = (x_587 * 0.5f);
  let x_589 : vec4<f32> = u_xlat1;
  let x_592 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_595 : f32 = u_xlat16;
  let x_597 : vec3<f32> = ((vec3<f32>(x_589.x, x_589.y, x_589.z) * vec3<f32>(x_592.x, x_592.x, x_592.x)) + vec3<f32>(x_595, x_595, x_595));
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_608 : vec4<f32> = u_xlat1;
  let x_610 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec3<f32> = vec3<f32>(x_610.x, x_610.y, x_610.z);
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_612.x, x_611.x, x_611.y, x_611.z);
  let x_616 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_616);
  let x_618 : bool = u_xlatb1;
  if (x_618) {
    let x_621 : vec4<f32> = u_xlat0;
    let x_622 : vec3<f32> = vec3<f32>(x_621.y, x_621.z, x_621.w);
    let x_623 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
    let x_625 : vec4<f32> = u_xlat1;
    let x_629 : vec3<f32> = clamp(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_630 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
    let x_632 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_632.x, x_632.y, x_632.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_638 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_638.y, x_638.z, x_638.w, x_638.x);
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

