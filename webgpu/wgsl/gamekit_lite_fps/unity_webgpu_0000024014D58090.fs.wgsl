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
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

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

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat12 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_413 : f32;
  var x_425 : f32;
  var x_437 : f32;
  var x_562 : f32;
  var x_574 : f32;
  var x_586 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_18.x, x_18.y, x_18.x, x_18.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_30 : f32 = x_13.x_Bloom_Settings.x;
  u_xlat1.x = (x_30 * 0.5f);
  let x_36 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = u_xlat1;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_36.x, x_36.y, x_36.z, x_36.y) * vec4<f32>(x_38.x, x_38.x, x_38.x, x_38.x)) + vec4<f32>(x_44.x, x_44.y, x_44.x, x_44.y));
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_47, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_52.x, x_52.w, x_52.z, x_52.w) * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_60, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_67 : f32 = x_13.x_RenderViewportScaleFactor;
  u_xlat0 = (x_64 * vec4<f32>(x_67, x_67, x_67, x_67));
  let x_70 : vec4<f32> = u_xlat2;
  let x_72 : f32 = x_13.x_RenderViewportScaleFactor;
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
  let x_118 : vec3<f32> = x_13.x_Bloom_Settings;
  u_xlat0 = (x_115 * vec4<f32>(x_118.y, x_118.y, x_118.y, x_118.y));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_121 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_125 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_128 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = x_13.x_Bloom_Color;
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
  let x_172 : vec4<f32> = x_13.x_Bloom_DirtTileOffset;
  let x_176 : vec4<f32> = x_13.x_Bloom_DirtTileOffset;
  let x_178 : vec2<f32> = ((x_169 * vec2<f32>(x_172.x, x_172.y)) + vec2<f32>(x_176.z, x_176.w));
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_178.x, x_178.y, x_179.z, x_179.w);
  let x_186 : vec4<f32> = u_xlat2;
  let x_188 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_186.x, x_186.y));
  let x_189 : vec3<f32> = vec3<f32>(x_188.x, x_188.y, x_188.z);
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat2;
  let x_195 : vec3<f32> = x_13.x_Bloom_Settings;
  let x_197 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(x_195.z, x_195.z, x_195.z));
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  u_xlat2.w = 0.0f;
  let x_201 : vec4<f32> = u_xlat2;
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_201 * x_202) + x_204);
  let x_206 : vec4<f32> = u_xlat0;
  let x_209 : f32 = x_13.x_PostExposure;
  let x_211 : f32 = x_13.x_PostExposure;
  let x_213 : f32 = x_13.x_PostExposure;
  let x_215 : f32 = x_13.x_PostExposure;
  let x_216 : vec4<f32> = vec4<f32>(x_209, x_211, x_213, x_215);
  u_xlat0 = (x_206 * vec4<f32>(x_216.x, x_216.y, x_216.z, x_216.w));
  let x_223 : vec4<f32> = u_xlat0;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.z, x_223.x, x_223.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
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
  let x_263 : vec4<f32> = u_xlat0;
  let x_267 : vec3<f32> = x_13.x_Lut2D_Params;
  u_xlat4 = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_267.z, x_267.z, x_267.z));
  let x_271 : f32 = u_xlat4.x;
  u_xlat4.x = floor(x_271);
  let x_275 : f32 = u_xlat0.x;
  let x_278 : f32 = x_13.x_Lut2D_Params.z;
  let x_281 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_275 * x_278) + -(x_281));
  let x_286 : vec3<f32> = x_13.x_Lut2D_Params;
  let x_289 : vec2<f32> = (vec2<f32>(x_286.x, x_286.y) * vec2<f32>(0.5f, 0.5f));
  let x_290 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_289.x, x_289.y, x_290.z, x_290.w);
  let x_292 : vec3<f32> = u_xlat4;
  let x_295 : vec3<f32> = x_13.x_Lut2D_Params;
  let x_298 : vec4<f32> = u_xlat1;
  let x_300 : vec2<f32> = ((vec2<f32>(x_292.y, x_292.z) * vec2<f32>(x_295.x, x_295.y)) + vec2<f32>(x_298.x, x_298.y));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_301.x, x_300.x, x_300.y, x_301.w);
  let x_304 : f32 = u_xlat4.x;
  let x_307 : f32 = x_13.x_Lut2D_Params.y;
  let x_310 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_304 * x_307) + x_310);
  let x_314 : f32 = x_13.x_Lut2D_Params.y;
  u_xlat2.x = x_314;
  u_xlat2.y = 0.0f;
  let x_317 : vec4<f32> = u_xlat1;
  let x_319 : vec4<f32> = u_xlat2;
  let x_321 : vec2<f32> = (vec2<f32>(x_317.x, x_317.z) + vec2<f32>(x_319.x, x_319.y));
  let x_322 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_321.x, x_321.y, x_322.z);
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_329.x, x_329.z));
  let x_332 : vec3<f32> = vec3<f32>(x_331.x, x_331.y, x_331.z);
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_338 : vec3<f32> = u_xlat4;
  let x_340 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_338.x, x_338.y));
  u_xlat4 = vec3<f32>(x_340.x, x_340.y, x_340.z);
  let x_342 : vec4<f32> = u_xlat1;
  let x_345 : vec3<f32> = u_xlat4;
  u_xlat4 = (-(vec3<f32>(x_342.x, x_342.y, x_342.z)) + x_345);
  let x_347 : vec4<f32> = u_xlat0;
  let x_349 : vec3<f32> = u_xlat4;
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec3<f32> = ((vec3<f32>(x_347.x, x_347.x, x_347.x) * x_349) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat0;
  let x_361 : vec3<f32> = max(abs(vec3<f32>(x_356.x, x_356.y, x_356.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat1;
  let x_366 : vec3<f32> = log2(vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec4<f32> = u_xlat1;
  let x_373 : vec3<f32> = (vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_374 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec4<f32> = u_xlat1;
  let x_378 : vec3<f32> = exp2(vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat1;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat0;
  let x_395 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_404 : vec4<f32> = u_xlat0;
  let x_407 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_404.x, x_404.y, x_404.z, x_404.x));
  u_xlatb0 = vec3<bool>(x_407.x, x_407.y, x_407.z);
  let x_411 : bool = u_xlatb0.x;
  if (x_411) {
    let x_417 : f32 = u_xlat2.x;
    x_413 = x_417;
  } else {
    let x_420 : f32 = u_xlat1.x;
    x_413 = x_420;
  }
  let x_421 : f32 = x_413;
  u_xlat0.x = x_421;
  let x_424 : bool = u_xlatb0.y;
  if (x_424) {
    let x_429 : f32 = u_xlat2.y;
    x_425 = x_429;
  } else {
    let x_432 : f32 = u_xlat1.y;
    x_425 = x_432;
  }
  let x_433 : f32 = x_425;
  u_xlat0.y = x_433;
  let x_436 : bool = u_xlatb0.z;
  if (x_436) {
    let x_441 : f32 = u_xlat2.z;
    x_437 = x_441;
  } else {
    let x_444 : f32 = u_xlat1.z;
    x_437 = x_444;
  }
  let x_445 : f32 = x_437;
  u_xlat0.z = x_445;
  let x_447 : vec2<f32> = vs_TEXCOORD0;
  let x_450 : vec4<f32> = x_13.x_Dithering_Coords;
  let x_454 : vec4<f32> = x_13.x_Dithering_Coords;
  let x_456 : vec2<f32> = ((x_447 * vec2<f32>(x_450.x, x_450.y)) + vec2<f32>(x_454.z, x_454.w));
  let x_457 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_465.x, x_465.y));
  u_xlat12 = x_467.w;
  let x_469 : f32 = u_xlat12;
  u_xlat12 = ((x_469 * 2.0f) + -1.0f);
  let x_473 : f32 = u_xlat12;
  u_xlat1.x = (-(abs(x_473)) + 1.0f);
  let x_478 : f32 = u_xlat12;
  u_xlat12 = ((x_478 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_482 : f32 = u_xlat12;
  u_xlat12 = clamp(x_482, 0.0f, 1.0f);
  let x_484 : f32 = u_xlat12;
  u_xlat12 = ((x_484 * 2.0f) + -1.0f);
  let x_488 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_488);
  let x_492 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_492) + 1.0f);
  let x_496 : f32 = u_xlat12;
  let x_498 : f32 = u_xlat1.x;
  u_xlat12 = (x_496 * x_498);
  let x_500 : f32 = u_xlat12;
  let x_505 : vec4<f32> = u_xlat0;
  let x_507 : vec3<f32> = ((vec3<f32>(x_500, x_500, x_500) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat0;
  let x_514 : vec3<f32> = (vec3<f32>(x_510.x, x_510.y, x_510.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_515 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat1;
  let x_521 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat1;
  let x_527 : vec3<f32> = max(abs(vec3<f32>(x_524.x, x_524.y, x_524.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_528 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec4<f32> = u_xlat1;
  let x_532 : vec3<f32> = log2(vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_535 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = (vec3<f32>(x_535.x, x_535.y, x_535.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_540 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat1;
  let x_544 : vec3<f32> = exp2(vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat0;
  let x_551 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_552 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_556 : vec4<f32> = u_xlat0;
  let x_558 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_556.x, x_556.y, x_556.z, x_556.x));
  u_xlatb0 = vec3<bool>(x_558.x, x_558.y, x_558.z);
  let x_561 : bool = u_xlatb0.x;
  if (x_561) {
    let x_566 : f32 = u_xlat2.x;
    x_562 = x_566;
  } else {
    let x_569 : f32 = u_xlat1.x;
    x_562 = x_569;
  }
  let x_570 : f32 = x_562;
  SV_Target0.x = x_570;
  let x_573 : bool = u_xlatb0.y;
  if (x_573) {
    let x_578 : f32 = u_xlat2.y;
    x_574 = x_578;
  } else {
    let x_581 : f32 = u_xlat1.y;
    x_574 = x_581;
  }
  let x_582 : f32 = x_574;
  SV_Target0.y = x_582;
  let x_585 : bool = u_xlatb0.z;
  if (x_585) {
    let x_590 : f32 = u_xlat2.z;
    x_586 = x_590;
  } else {
    let x_593 : f32 = u_xlat1.z;
    x_586 = x_593;
  }
  let x_594 : f32 = x_586;
  SV_Target0.z = x_594;
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

