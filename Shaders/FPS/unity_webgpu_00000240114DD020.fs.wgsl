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
  @size(4)
  padding_3 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat12 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_357 : f32;
  var x_369 : f32;
  var x_382 : f32;
  var x_536 : f32;
  var x_548 : f32;
  var x_560 : f32;
  var x_608 : f32;
  var x_620 : f32;
  var x_632 : f32;
  var x_746 : f32;
  var x_758 : f32;
  var x_770 : f32;
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
  let x_207 : vec3<f32> = vec3<f32>(x_206.x, x_206.y, x_206.z);
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_210 : vec4<f32> = u_xlat1;
  let x_214 : vec3<f32> = clamp(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_226 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_226);
  let x_231 : f32 = x_14.x_Grain_Params1.x;
  let x_233 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_231 * -(x_233)) + 1.0f);
  let x_240 : vec2<f32> = vs_TEXCOORD1;
  let x_243 : vec4<f32> = x_14.x_Grain_Params2;
  let x_247 : vec4<f32> = x_14.x_Grain_Params2;
  let x_249 : vec2<f32> = ((x_240 * vec2<f32>(x_243.x, x_243.y)) + vec2<f32>(x_247.z, x_247.w));
  let x_250 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_249.x, x_249.y, x_250.z);
  let x_257 : vec3<f32> = u_xlat5;
  let x_259 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_257.x, x_257.y));
  u_xlat5 = vec3<f32>(x_259.x, x_259.y, x_259.z);
  let x_261 : vec4<f32> = u_xlat0;
  let x_263 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_261.x, x_261.y, x_261.z) * x_263);
  let x_265 : vec3<f32> = u_xlat5;
  let x_268 : f32 = x_14.x_Grain_Params1.y;
  let x_270 : f32 = x_14.x_Grain_Params1.y;
  let x_272 : f32 = x_14.x_Grain_Params1.y;
  u_xlat5 = (x_265 * vec3<f32>(x_268, x_270, x_272));
  let x_275 : vec3<f32> = u_xlat5;
  let x_276 : vec4<f32> = u_xlat1;
  let x_279 : vec4<f32> = u_xlat0;
  let x_281 : vec3<f32> = ((x_275 * vec3<f32>(x_276.x, x_276.x, x_276.x)) + vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = clamp(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_293 : f32 = u_xlat0.w;
  u_xlat12 = x_293;
  let x_294 : f32 = u_xlat12;
  u_xlat12 = clamp(x_294, 0.0f, 1.0f);
  let x_298 : f32 = u_xlat12;
  SV_Target0.w = x_298;
  let x_301 : vec4<f32> = u_xlat0;
  let x_305 : vec3<f32> = max(vec3<f32>(x_301.z, x_301.x, x_301.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
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
  let x_339 : vec3<f32> = (vec3<f32>(x_335.z, x_335.x, x_335.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_348 : vec4<f32> = u_xlat0;
  let x_351 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_348.z, x_348.x, x_348.y, x_348.z));
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
  let x_368 : bool = u_xlatb0.y;
  if (x_368) {
    let x_373 : f32 = u_xlat2.y;
    x_369 = x_373;
  } else {
    let x_376 : f32 = u_xlat1.y;
    x_369 = x_376;
  }
  let x_377 : f32 = x_369;
  u_xlat0.y = x_377;
  let x_381 : bool = u_xlatb0.z;
  if (x_381) {
    let x_386 : f32 = u_xlat2.z;
    x_382 = x_386;
  } else {
    let x_389 : f32 = u_xlat1.z;
    x_382 = x_389;
  }
  let x_390 : f32 = x_382;
  u_xlat0.z = x_390;
  let x_393 : vec4<f32> = u_xlat0;
  let x_397 : vec3<f32> = x_14.x_Lut2D_Params;
  u_xlat4 = (vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_397.z, x_397.z, x_397.z));
  let x_401 : f32 = u_xlat4.x;
  u_xlat4.x = floor(x_401);
  let x_405 : f32 = u_xlat0.x;
  let x_407 : f32 = x_14.x_Lut2D_Params.z;
  let x_410 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_405 * x_407) + -(x_410));
  let x_415 : vec3<f32> = x_14.x_Lut2D_Params;
  let x_418 : vec2<f32> = (vec2<f32>(x_415.x, x_415.y) * vec2<f32>(0.5f, 0.5f));
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
  let x_421 : vec3<f32> = u_xlat4;
  let x_424 : vec3<f32> = x_14.x_Lut2D_Params;
  let x_427 : vec4<f32> = u_xlat1;
  let x_429 : vec2<f32> = ((vec2<f32>(x_421.y, x_421.z) * vec2<f32>(x_424.x, x_424.y)) + vec2<f32>(x_427.x, x_427.y));
  let x_430 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_430.x, x_429.x, x_429.y, x_430.w);
  let x_433 : f32 = u_xlat4.x;
  let x_435 : f32 = x_14.x_Lut2D_Params.y;
  let x_438 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_433 * x_435) + x_438);
  let x_442 : f32 = x_14.x_Lut2D_Params.y;
  u_xlat2.x = x_442;
  u_xlat2.y = 0.0f;
  let x_445 : vec4<f32> = u_xlat1;
  let x_447 : vec4<f32> = u_xlat2;
  let x_449 : vec2<f32> = (vec2<f32>(x_445.x, x_445.z) + vec2<f32>(x_447.x, x_447.y));
  let x_450 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_449.x, x_449.y, x_450.z);
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_457.x, x_457.z));
  let x_460 : vec3<f32> = vec3<f32>(x_459.x, x_459.y, x_459.z);
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_466 : vec3<f32> = u_xlat4;
  let x_468 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_466.x, x_466.y));
  u_xlat4 = vec3<f32>(x_468.x, x_468.y, x_468.z);
  let x_470 : vec4<f32> = u_xlat1;
  let x_473 : vec3<f32> = u_xlat4;
  u_xlat4 = (-(vec3<f32>(x_470.x, x_470.y, x_470.z)) + x_473);
  let x_475 : vec4<f32> = u_xlat0;
  let x_477 : vec3<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat1;
  let x_481 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.x, x_475.x) * x_477) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat0;
  let x_488 : vec3<f32> = (vec3<f32>(x_484.x, x_484.y, x_484.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat1;
  let x_495 : vec3<f32> = (vec3<f32>(x_491.x, x_491.y, x_491.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_496 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat1;
  let x_501 : vec3<f32> = max(abs(vec3<f32>(x_498.x, x_498.y, x_498.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_502 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec4<f32> = u_xlat1;
  let x_506 : vec3<f32> = log2(vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat1;
  let x_513 : vec3<f32> = (vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_514 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec3<f32> = exp2(vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat0;
  let x_525 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_526 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_530 : vec4<f32> = u_xlat0;
  let x_532 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_530.x, x_530.y, x_530.z, x_530.x));
  u_xlatb0 = vec3<bool>(x_532.x, x_532.y, x_532.z);
  let x_535 : bool = u_xlatb0.x;
  if (x_535) {
    let x_540 : f32 = u_xlat2.x;
    x_536 = x_540;
  } else {
    let x_543 : f32 = u_xlat1.x;
    x_536 = x_543;
  }
  let x_544 : f32 = x_536;
  u_xlat0.x = x_544;
  let x_547 : bool = u_xlatb0.y;
  if (x_547) {
    let x_552 : f32 = u_xlat2.y;
    x_548 = x_552;
  } else {
    let x_555 : f32 = u_xlat1.y;
    x_548 = x_555;
  }
  let x_556 : f32 = x_548;
  u_xlat0.y = x_556;
  let x_559 : bool = u_xlatb0.z;
  if (x_559) {
    let x_564 : f32 = u_xlat2.z;
    x_560 = x_564;
  } else {
    let x_567 : f32 = u_xlat1.z;
    x_560 = x_567;
  }
  let x_568 : f32 = x_560;
  u_xlat0.z = x_568;
  let x_570 : vec4<f32> = u_xlat0;
  let x_573 : vec3<f32> = max(abs(vec3<f32>(x_570.x, x_570.y, x_570.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_574 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_576 : vec4<f32> = u_xlat1;
  let x_578 : vec3<f32> = log2(vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat1;
  let x_583 : vec3<f32> = (vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat1;
  let x_588 : vec3<f32> = exp2(vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat1;
  let x_594 : vec3<f32> = ((vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat0;
  let x_599 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_600 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_602.x, x_602.y, x_602.z, x_602.x));
  u_xlatb0 = vec3<bool>(x_604.x, x_604.y, x_604.z);
  let x_607 : bool = u_xlatb0.x;
  if (x_607) {
    let x_612 : f32 = u_xlat2.x;
    x_608 = x_612;
  } else {
    let x_615 : f32 = u_xlat1.x;
    x_608 = x_615;
  }
  let x_616 : f32 = x_608;
  u_xlat0.x = x_616;
  let x_619 : bool = u_xlatb0.y;
  if (x_619) {
    let x_624 : f32 = u_xlat2.y;
    x_620 = x_624;
  } else {
    let x_627 : f32 = u_xlat1.y;
    x_620 = x_627;
  }
  let x_628 : f32 = x_620;
  u_xlat0.y = x_628;
  let x_631 : bool = u_xlatb0.z;
  if (x_631) {
    let x_636 : f32 = u_xlat2.z;
    x_632 = x_636;
  } else {
    let x_639 : f32 = u_xlat1.z;
    x_632 = x_639;
  }
  let x_640 : f32 = x_632;
  u_xlat0.z = x_640;
  let x_642 : vec2<f32> = vs_TEXCOORD0;
  let x_645 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_649 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_651 : vec2<f32> = ((x_642 * vec2<f32>(x_645.x, x_645.y)) + vec2<f32>(x_649.z, x_649.w));
  let x_652 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
  let x_659 : vec4<f32> = u_xlat1;
  let x_661 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_659.x, x_659.y));
  u_xlat12 = x_661.w;
  let x_663 : f32 = u_xlat12;
  u_xlat12 = ((x_663 * 2.0f) + -1.0f);
  let x_667 : f32 = u_xlat12;
  u_xlat1.x = (-(abs(x_667)) + 1.0f);
  let x_672 : f32 = u_xlat12;
  u_xlat12 = ((x_672 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_676 : f32 = u_xlat12;
  u_xlat12 = clamp(x_676, 0.0f, 1.0f);
  let x_678 : f32 = u_xlat12;
  u_xlat12 = ((x_678 * 2.0f) + -1.0f);
  let x_682 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_682);
  let x_686 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_686) + 1.0f);
  let x_690 : f32 = u_xlat12;
  let x_692 : f32 = u_xlat1.x;
  u_xlat12 = (x_690 * x_692);
  let x_694 : f32 = u_xlat12;
  let x_699 : vec4<f32> = u_xlat0;
  let x_701 : vec3<f32> = ((vec3<f32>(x_694, x_694, x_694) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat0;
  let x_706 : vec3<f32> = (vec3<f32>(x_704.x, x_704.y, x_704.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_707 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat1;
  let x_711 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat1;
  let x_717 : vec3<f32> = max(abs(vec3<f32>(x_714.x, x_714.y, x_714.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_718 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat1;
  let x_722 : vec3<f32> = log2(vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat1;
  let x_727 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec4<f32> = u_xlat1;
  let x_732 : vec3<f32> = exp2(vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec4<f32> = u_xlat0;
  let x_737 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_738 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat0;
  let x_742 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_740.x, x_740.y, x_740.z, x_740.x));
  u_xlatb0 = vec3<bool>(x_742.x, x_742.y, x_742.z);
  let x_745 : bool = u_xlatb0.x;
  if (x_745) {
    let x_750 : f32 = u_xlat2.x;
    x_746 = x_750;
  } else {
    let x_753 : f32 = u_xlat1.x;
    x_746 = x_753;
  }
  let x_754 : f32 = x_746;
  SV_Target0.x = x_754;
  let x_757 : bool = u_xlatb0.y;
  if (x_757) {
    let x_762 : f32 = u_xlat2.y;
    x_758 = x_762;
  } else {
    let x_765 : f32 = u_xlat1.y;
    x_758 = x_765;
  }
  let x_766 : f32 = x_758;
  SV_Target0.y = x_766;
  let x_769 : bool = u_xlatb0.z;
  if (x_769) {
    let x_774 : f32 = u_xlat2.z;
    x_770 = x_774;
  } else {
    let x_777 : f32 = u_xlat1.z;
    x_770 = x_777;
  }
  let x_778 : f32 = x_770;
  SV_Target0.z = x_778;
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

