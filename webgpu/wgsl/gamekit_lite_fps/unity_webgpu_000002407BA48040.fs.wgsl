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
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
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

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat16 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : vec2<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_405 : f32;
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
    let x_381 : f32 = u_xlat6.y;
    u_xlat11.x = max(abs(x_381), 1.1920929e-07f);
    let x_387 : f32 = u_xlat11.x;
    u_xlat11.x = log2(x_387);
    let x_391 : f32 = u_xlat11.x;
    u_xlat11.x = (x_391 * 2.400000095f);
    let x_396 : f32 = u_xlat11.x;
    u_xlat11.x = exp2(x_396);
    let x_401 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_401);
    let x_403 : bool = u_xlatb1;
    if (x_403) {
      let x_409 : f32 = u_xlat6.x;
      x_405 = x_409;
    } else {
      let x_412 : f32 = u_xlat11.x;
      x_405 = x_412;
    }
    let x_413 : f32 = x_405;
    u_xlat1.x = x_413;
    let x_416 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_416) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_419 : vec4<f32> = u_xlat1;
    let x_421 : vec3<f32> = u_xlat6;
    let x_424 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_419.x, x_419.x, x_419.x) * x_421) + x_424);
    let x_426 : vec4<f32> = u_xlat0;
    let x_428 : vec3<f32> = u_xlat6;
    let x_430 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_426.x, x_426.y, x_426.z) * x_428) + -(vec3<f32>(x_430.x, x_430.y, x_430.z)));
    let x_436 : f32 = x_49.x_Vignette_Opacity;
    let x_438 : vec3<f32> = u_xlat6;
    let x_440 : vec4<f32> = u_xlat0;
    let x_442 : vec3<f32> = ((vec3<f32>(x_436, x_436, x_436) * x_438) + vec3<f32>(x_440.x, x_440.y, x_440.z));
    let x_443 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
    let x_446 : f32 = u_xlat0.w;
    u_xlat0.x = (x_446 + -1.0f);
    let x_450 : f32 = u_xlat1.x;
    let x_452 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_450 * x_452) + 1.0f);
  }
  let x_456 : vec4<f32> = u_xlat2;
  let x_459 : f32 = x_49.x_PostExposure;
  let x_461 : f32 = x_49.x_PostExposure;
  let x_463 : f32 = x_49.x_PostExposure;
  let x_465 : f32 = x_49.x_PostExposure;
  let x_466 : vec4<f32> = vec4<f32>(x_459, x_461, x_463, x_465);
  u_xlat0 = (x_456 * vec4<f32>(x_466.x, x_466.y, x_466.z, x_466.w));
  let x_473 : vec4<f32> = u_xlat0;
  let x_480 : vec3<f32> = ((vec3<f32>(x_473.z, x_473.x, x_473.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_481 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat1;
  let x_485 : vec3<f32> = log2(vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat1;
  let x_495 : vec3<f32> = ((vec3<f32>(x_488.x, x_488.y, x_488.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_496 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat1;
  let x_502 : vec3<f32> = clamp(vec3<f32>(x_498.x, x_498.y, x_498.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_503 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : vec4<f32> = u_xlat1;
  let x_509 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(x_509.z, x_509.z, x_509.z));
  let x_513 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_513);
  let x_517 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_520 : vec2<f32> = (vec2<f32>(x_517.x, x_517.y) * vec2<f32>(0.5f, 0.5f));
  let x_521 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
  let x_523 : vec3<f32> = u_xlat6;
  let x_526 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_529 : vec4<f32> = u_xlat2;
  let x_531 : vec2<f32> = ((vec2<f32>(x_523.y, x_523.z) * vec2<f32>(x_526.x, x_526.y)) + vec2<f32>(x_529.x, x_529.y));
  let x_532 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_532.x, x_531.x, x_531.y, x_532.w);
  let x_535 : f32 = u_xlat6.x;
  let x_537 : f32 = x_49.x_Lut2D_Params.y;
  let x_540 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_535 * x_537) + x_540);
  let x_548 : vec4<f32> = u_xlat2;
  let x_550 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_548.x, x_548.z));
  let x_551 : vec3<f32> = vec3<f32>(x_550.x, x_550.y, x_550.z);
  let x_552 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_555 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_555;
  u_xlat4.y = 0.0f;
  let x_558 : vec4<f32> = u_xlat2;
  let x_560 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_558.x, x_558.z) + vec2<f32>(x_560.x, x_560.y));
  let x_566 : vec2<f32> = u_xlat11;
  let x_567 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_566);
  let x_568 : vec3<f32> = vec3<f32>(x_567.x, x_567.y, x_567.z);
  let x_569 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_572 : f32 = u_xlat1.x;
  let x_574 : f32 = x_49.x_Lut2D_Params.z;
  let x_577 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_572 * x_574) + -(x_577));
  let x_581 : vec4<f32> = u_xlat3;
  let x_584 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_581.x, x_581.y, x_581.z)) + vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : vec4<f32> = u_xlat1;
  let x_589 : vec3<f32> = u_xlat6;
  let x_591 : vec4<f32> = u_xlat3;
  let x_593 : vec3<f32> = ((vec3<f32>(x_587.x, x_587.x, x_587.x) * x_589) + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_598 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_598);
  let x_600 : bool = u_xlatb1;
  if (x_600) {
    let x_603 : vec4<f32> = u_xlat0;
    let x_604 : vec3<f32> = vec3<f32>(x_603.x, x_603.y, x_603.z);
    let x_605 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
    let x_607 : vec4<f32> = u_xlat1;
    let x_611 : vec3<f32> = clamp(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_612 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
    let x_614 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_614.x, x_614.y, x_614.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_624 : vec4<f32> = u_xlat0;
  SV_Target0 = x_624;
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

