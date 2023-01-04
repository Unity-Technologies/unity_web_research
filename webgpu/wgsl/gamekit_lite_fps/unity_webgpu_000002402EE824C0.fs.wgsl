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

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : f32;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(13) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_397 : f32;
  var x_649 : f32;
  var x_661 : f32;
  var x_673 : f32;
  var x_742 : f32;
  var x_755 : f32;
  var x_767 : f32;
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
      let x_401 : f32 = u_xlat6.x;
      x_397 = x_401;
    } else {
      let x_403 : f32 = u_xlat11;
      x_397 = x_403;
    }
    let x_404 : f32 = x_397;
    u_xlat1.x = x_404;
    let x_407 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_407) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_410 : vec4<f32> = u_xlat1;
    let x_412 : vec3<f32> = u_xlat6;
    let x_415 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_410.x, x_410.x, x_410.x) * x_412) + x_415);
    let x_417 : vec4<f32> = u_xlat0;
    let x_419 : vec3<f32> = u_xlat6;
    let x_421 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_417.x, x_417.y, x_417.z) * x_419) + -(vec3<f32>(x_421.x, x_421.y, x_421.z)));
    let x_427 : f32 = x_49.x_Vignette_Opacity;
    let x_429 : vec3<f32> = u_xlat6;
    let x_431 : vec4<f32> = u_xlat0;
    let x_433 : vec3<f32> = ((vec3<f32>(x_427, x_427, x_427) * x_429) + vec3<f32>(x_431.x, x_431.y, x_431.z));
    let x_434 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
    let x_437 : f32 = u_xlat0.w;
    u_xlat0.x = (x_437 + -1.0f);
    let x_441 : f32 = u_xlat1.x;
    let x_443 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_441 * x_443) + 1.0f);
  }
  let x_447 : vec4<f32> = u_xlat2;
  let x_450 : f32 = x_49.x_PostExposure;
  let x_452 : f32 = x_49.x_PostExposure;
  let x_454 : f32 = x_49.x_PostExposure;
  let x_456 : f32 = x_49.x_PostExposure;
  let x_457 : vec4<f32> = vec4<f32>(x_450, x_452, x_454, x_456);
  u_xlat0 = (x_447 * vec4<f32>(x_457.x, x_457.y, x_457.z, x_457.w));
  let x_464 : vec4<f32> = u_xlat0;
  let x_471 : vec3<f32> = ((vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_472 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat0;
  let x_476 : vec3<f32> = log2(vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat0;
  let x_486 : vec3<f32> = ((vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = clamp(vec3<f32>(x_489.x, x_489.y, x_489.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat0;
  let x_500 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_502 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_500.y, x_500.y, x_500.y));
  let x_503 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : f32 = x_49.x_Lut3D_Params.x;
  u_xlat1.x = (x_506 * 0.5f);
  let x_509 : vec4<f32> = u_xlat0;
  let x_512 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec3<f32> = ((vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_512.x, x_512.x, x_512.x)) + vec3<f32>(x_515.x, x_515.x, x_515.x));
  let x_518 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_528 : vec4<f32> = u_xlat0;
  let x_530 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec3<f32> = vec3<f32>(x_530.x, x_530.y, x_530.z);
  let x_532 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec2<f32> = vs_TEXCOORD0;
  let x_537 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_541 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_543 : vec2<f32> = ((x_534 * vec2<f32>(x_537.x, x_537.y)) + vec2<f32>(x_541.z, x_541.w));
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_551.x, x_551.y));
  u_xlat1.x = x_553.w;
  let x_557 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_557 * 2.0f) + -1.0f);
  let x_563 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_563 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_569 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_569, 0.0f, 1.0f);
  let x_573 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_573 * 2.0f) + -1.0f);
  let x_578 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_578)) + 1.0f);
  let x_584 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_584);
  let x_588 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_588) + 1.0f);
  let x_593 : f32 = u_xlat1.x;
  let x_595 : f32 = u_xlat6.x;
  u_xlat1.x = (x_593 * x_595);
  let x_598 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_598.x, x_598.y, x_598.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_603 : vec4<f32> = u_xlat0;
  let x_607 : vec3<f32> = max(abs(vec3<f32>(x_603.x, x_603.y, x_603.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_608 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec4<f32> = u_xlat2;
  let x_612 : vec3<f32> = log2(vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat2;
  let x_619 : vec3<f32> = (vec3<f32>(x_615.x, x_615.y, x_615.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_620 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec4<f32> = u_xlat2;
  let x_624 : vec3<f32> = exp2(vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat2;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_635 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_642 : vec4<f32> = u_xlat0;
  let x_645 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_642.x, x_642.y, x_642.z, x_642.x));
  u_xlatb0 = vec3<bool>(x_645.x, x_645.y, x_645.z);
  let x_648 : bool = u_xlatb0.x;
  if (x_648) {
    let x_653 : f32 = u_xlat6.x;
    x_649 = x_653;
  } else {
    let x_656 : f32 = u_xlat2.x;
    x_649 = x_656;
  }
  let x_657 : f32 = x_649;
  u_xlat0.x = x_657;
  let x_660 : bool = u_xlatb0.y;
  if (x_660) {
    let x_665 : f32 = u_xlat6.y;
    x_661 = x_665;
  } else {
    let x_668 : f32 = u_xlat2.y;
    x_661 = x_668;
  }
  let x_669 : f32 = x_661;
  u_xlat0.y = x_669;
  let x_672 : bool = u_xlatb0.z;
  if (x_672) {
    let x_677 : f32 = u_xlat6.z;
    x_673 = x_677;
  } else {
    let x_680 : f32 = u_xlat2.z;
    x_673 = x_680;
  }
  let x_681 : f32 = x_673;
  u_xlat0.z = x_681;
  let x_683 : vec4<f32> = u_xlat1;
  let x_688 : vec4<f32> = u_xlat0;
  let x_690 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat0;
  let x_696 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : vec4<f32> = u_xlat0;
  let x_702 : vec3<f32> = (vec3<f32>(x_699.x, x_699.y, x_699.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_703 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat2;
  let x_708 : vec3<f32> = (vec3<f32>(x_705.x, x_705.y, x_705.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_709 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat2;
  let x_714 : vec3<f32> = max(abs(vec3<f32>(x_711.x, x_711.y, x_711.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat2;
  let x_719 : vec3<f32> = log2(vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat2;
  let x_725 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_726 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat2;
  let x_730 : vec3<f32> = exp2(vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_734 : vec4<f32> = u_xlat0;
  let x_736 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_734.x, x_734.y, x_734.z, x_734.x));
  u_xlatb0 = vec3<bool>(x_736.x, x_736.y, x_736.z);
  let x_741 : bool = u_xlatb0.x;
  if (x_741) {
    let x_746 : f32 = u_xlat1.x;
    x_742 = x_746;
  } else {
    let x_749 : f32 = u_xlat2.x;
    x_742 = x_749;
  }
  let x_750 : f32 = x_742;
  SV_Target0.x = x_750;
  let x_754 : bool = u_xlatb0.y;
  if (x_754) {
    let x_759 : f32 = u_xlat1.y;
    x_755 = x_759;
  } else {
    let x_762 : f32 = u_xlat2.y;
    x_755 = x_762;
  }
  let x_763 : f32 = x_755;
  SV_Target0.y = x_763;
  let x_766 : bool = u_xlatb0.z;
  if (x_766) {
    let x_771 : f32 = u_xlat1.z;
    x_767 = x_771;
  } else {
    let x_774 : f32 = u_xlat2.z;
    x_767 = x_774;
  }
  let x_775 : f32 = x_767;
  SV_Target0.z = x_775;
  let x_778 : f32 = u_xlat0.w;
  SV_Target0.w = x_778;
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

