struct PGlobals {
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
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat12 : f32;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(12) var sampler_Lut3D : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_357 : f32;
  var x_370 : f32;
  var x_383 : f32;
  var x_507 : f32;
  var x_519 : f32;
  var x_531 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_14.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_19.x, x_19.y, x_19.x, x_19.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_31 : f32 = x_14.x_Bloom_Settings.x;
  u_xlat1.x = (x_31 * 0.5f);
  let x_37 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = u_xlat1;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_37.x, x_37.y, x_37.z, x_37.y) * vec4<f32>(x_39.x, x_39.x, x_39.x, x_39.x)) + vec4<f32>(x_44.x, x_44.y, x_44.x, x_44.y));
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_47, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_52.x, x_52.w, x_52.z, x_52.w) * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_60, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_67 : f32 = x_14.x_RenderViewportScaleFactor;
  u_xlat0 = (x_64 * vec4<f32>(x_67, x_67, x_67, x_67));
  let x_70 : vec4<f32> = u_xlat2;
  let x_72 : f32 = x_14.x_RenderViewportScaleFactor;
  u_xlat1 = (x_70 * vec4<f32>(x_72, x_72, x_72, x_72));
  let x_85 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_85.x, x_85.y));
  u_xlat2 = x_87;
  let x_91 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_91.z, x_91.w));
  u_xlat1 = x_93;
  let x_94 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_94 + x_95);
  let x_100 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_100.x, x_100.y));
  u_xlat2 = x_102;
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_106.z, x_106.w));
  u_xlat0 = x_108;
  let x_109 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_109 + x_110);
  let x_112 : vec4<f32> = u_xlat0;
  let x_113 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_112 + x_113);
  let x_115 : vec4<f32> = u_xlat0;
  let x_118 : vec3<f32> = x_14.x_Bloom_Settings;
  u_xlat0 = (x_115 * vec4<f32>(x_118.y, x_118.y, x_118.y, x_118.y));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_121 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_125 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_128 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = x_14.x_Bloom_Color;
  let x_133 : vec3<f32> = (vec3<f32>(x_128.x, x_128.y, x_128.z) * x_132);
  let x_134 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_138 : f32 = u_xlat1.w;
  u_xlat2.w = (x_138 * 0.25f);
  let x_146 : vec2<f32> = vs_TEXCOORD0;
  let x_147 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_146);
  u_xlat1.x = x_147.x;
  let x_157 : vec2<f32> = vs_TEXCOORD1;
  let x_158 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_157);
  u_xlat3 = x_158;
  let x_159 : vec4<f32> = u_xlat1;
  let x_161 : vec4<f32> = u_xlat3;
  let x_163 : vec3<f32> = (vec3<f32>(x_159.x, x_159.x, x_159.x) * vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_166 : vec4<f32> = u_xlat2;
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_166 + x_167);
  let x_169 : vec2<f32> = vs_TEXCOORD0;
  let x_172 : vec4<f32> = x_14.x_Bloom_DirtTileOffset;
  let x_176 : vec4<f32> = x_14.x_Bloom_DirtTileOffset;
  let x_178 : vec2<f32> = ((x_169 * vec2<f32>(x_172.x, x_172.y)) + vec2<f32>(x_176.z, x_176.w));
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_178.x, x_178.y, x_179.z, x_179.w);
  let x_186 : vec4<f32> = u_xlat2;
  let x_188 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_186.x, x_186.y));
  let x_189 : vec3<f32> = vec3<f32>(x_188.x, x_188.y, x_188.z);
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat2;
  let x_195 : vec3<f32> = x_14.x_Bloom_Settings;
  let x_197 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(x_195.z, x_195.z, x_195.z));
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  u_xlat2.w = 0.0f;
  let x_201 : vec4<f32> = u_xlat2;
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_201 * x_202) + x_204);
  let x_206 : vec4<f32> = u_xlat0;
  let x_209 : f32 = x_14.x_PostExposure;
  let x_211 : f32 = x_14.x_PostExposure;
  let x_213 : f32 = x_14.x_PostExposure;
  let x_215 : f32 = x_14.x_PostExposure;
  let x_216 : vec4<f32> = vec4<f32>(x_209, x_211, x_213, x_215);
  u_xlat0 = (x_206 * vec4<f32>(x_216.x, x_216.y, x_216.z, x_216.w));
  let x_223 : vec4<f32> = u_xlat0;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_236 : f32 = u_xlat0.w;
  SV_Target0.w = x_236;
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : vec3<f32> = log2(vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat0;
  let x_258 : vec3<f32> = clamp(vec3<f32>(x_254.x, x_254.y, x_254.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat0;
  let x_266 : vec2<f32> = x_14.x_Lut3D_Params;
  let x_268 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_266.y, x_266.y, x_266.y));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_273 : f32 = x_14.x_Lut3D_Params.x;
  u_xlat12 = (x_273 * 0.5f);
  let x_275 : vec4<f32> = u_xlat0;
  let x_278 : vec2<f32> = x_14.x_Lut3D_Params;
  let x_281 : f32 = u_xlat12;
  let x_283 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_278.x, x_278.x, x_278.x)) + vec3<f32>(x_281, x_281, x_281));
  let x_284 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_294 : vec4<f32> = u_xlat0;
  let x_296 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec3<f32> = vec3<f32>(x_296.x, x_296.y, x_296.z);
  let x_298 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat0;
  let x_305 : vec3<f32> = max(abs(vec3<f32>(x_300.x, x_300.y, x_300.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat1;
  let x_310 : vec3<f32> = log2(vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat1;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_318 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec3<f32> = exp2(vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat1;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat0;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_348 : vec4<f32> = u_xlat0;
  let x_351 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_348.x, x_348.y, x_348.z, x_348.x));
  u_xlatb0 = vec3<bool>(x_351.x, x_351.y, x_351.z);
  let x_355 : bool = u_xlatb0.x;
  if (x_355) {
    let x_361 : f32 = u_xlat2.x;
    x_357 = x_361;
  } else {
    let x_364 : f32 = u_xlat1.x;
    x_357 = x_364;
  }
  let x_365 : f32 = x_357;
  u_xlat0.x = x_365;
  let x_369 : bool = u_xlatb0.y;
  if (x_369) {
    let x_374 : f32 = u_xlat2.y;
    x_370 = x_374;
  } else {
    let x_377 : f32 = u_xlat1.y;
    x_370 = x_377;
  }
  let x_378 : f32 = x_370;
  u_xlat0.y = x_378;
  let x_382 : bool = u_xlatb0.z;
  if (x_382) {
    let x_387 : f32 = u_xlat2.z;
    x_383 = x_387;
  } else {
    let x_390 : f32 = u_xlat1.z;
    x_383 = x_390;
  }
  let x_391 : f32 = x_383;
  u_xlat0.z = x_391;
  let x_393 : vec2<f32> = vs_TEXCOORD0;
  let x_396 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_400 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_402 : vec2<f32> = ((x_393 * vec2<f32>(x_396.x, x_396.y)) + vec2<f32>(x_400.z, x_400.w));
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_410 : vec4<f32> = u_xlat1;
  let x_412 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_410.x, x_410.y));
  u_xlat12 = x_412.w;
  let x_414 : f32 = u_xlat12;
  u_xlat12 = ((x_414 * 2.0f) + -1.0f);
  let x_418 : f32 = u_xlat12;
  u_xlat1.x = (-(abs(x_418)) + 1.0f);
  let x_423 : f32 = u_xlat12;
  u_xlat12 = ((x_423 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_427 : f32 = u_xlat12;
  u_xlat12 = clamp(x_427, 0.0f, 1.0f);
  let x_429 : f32 = u_xlat12;
  u_xlat12 = ((x_429 * 2.0f) + -1.0f);
  let x_433 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_433);
  let x_437 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_437) + 1.0f);
  let x_441 : f32 = u_xlat12;
  let x_443 : f32 = u_xlat1.x;
  u_xlat12 = (x_441 * x_443);
  let x_445 : f32 = u_xlat12;
  let x_450 : vec4<f32> = u_xlat0;
  let x_452 : vec3<f32> = ((vec3<f32>(x_445, x_445, x_445) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat0;
  let x_459 : vec3<f32> = (vec3<f32>(x_455.x, x_455.y, x_455.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat1;
  let x_466 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat1;
  let x_472 : vec3<f32> = max(abs(vec3<f32>(x_469.x, x_469.y, x_469.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_473 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat1;
  let x_477 : vec3<f32> = log2(vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat1;
  let x_484 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat1;
  let x_489 : vec3<f32> = exp2(vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat0;
  let x_496 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_497 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_501 : vec4<f32> = u_xlat0;
  let x_503 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_501.x, x_501.y, x_501.z, x_501.x));
  u_xlatb0 = vec3<bool>(x_503.x, x_503.y, x_503.z);
  let x_506 : bool = u_xlatb0.x;
  if (x_506) {
    let x_511 : f32 = u_xlat2.x;
    x_507 = x_511;
  } else {
    let x_514 : f32 = u_xlat1.x;
    x_507 = x_514;
  }
  let x_515 : f32 = x_507;
  SV_Target0.x = x_515;
  let x_518 : bool = u_xlatb0.y;
  if (x_518) {
    let x_523 : f32 = u_xlat2.y;
    x_519 = x_523;
  } else {
    let x_526 : f32 = u_xlat1.y;
    x_519 = x_526;
  }
  let x_527 : f32 = x_519;
  SV_Target0.y = x_527;
  let x_530 : bool = u_xlatb0.z;
  if (x_530) {
    let x_535 : f32 = u_xlat2.z;
    x_531 = x_535;
  } else {
    let x_538 : f32 = u_xlat1.z;
    x_531 = x_538;
  }
  let x_539 : f32 = x_531;
  SV_Target0.z = x_539;
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

