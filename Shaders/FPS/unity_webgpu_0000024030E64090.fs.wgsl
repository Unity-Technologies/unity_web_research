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
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
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

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat12 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_347 : f32;
  var x_359 : f32;
  var x_372 : f32;
  var x_497 : f32;
  var x_509 : f32;
  var x_521 : f32;
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
  let x_287 : f32 = u_xlat0.w;
  SV_Target0.w = x_287;
  let x_290 : vec4<f32> = u_xlat0;
  let x_295 : vec3<f32> = max(abs(vec3<f32>(x_290.x, x_290.y, x_290.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_296 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : vec4<f32> = u_xlat1;
  let x_300 : vec3<f32> = log2(vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat1;
  let x_307 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat1;
  let x_312 : vec3<f32> = exp2(vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat1;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_338 : vec4<f32> = u_xlat0;
  let x_341 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_338.x, x_338.y, x_338.z, x_338.x));
  u_xlatb0 = vec3<bool>(x_341.x, x_341.y, x_341.z);
  let x_345 : bool = u_xlatb0.x;
  if (x_345) {
    let x_351 : f32 = u_xlat2.x;
    x_347 = x_351;
  } else {
    let x_354 : f32 = u_xlat1.x;
    x_347 = x_354;
  }
  let x_355 : f32 = x_347;
  u_xlat0.x = x_355;
  let x_358 : bool = u_xlatb0.y;
  if (x_358) {
    let x_363 : f32 = u_xlat2.y;
    x_359 = x_363;
  } else {
    let x_366 : f32 = u_xlat1.y;
    x_359 = x_366;
  }
  let x_367 : f32 = x_359;
  u_xlat0.y = x_367;
  let x_371 : bool = u_xlatb0.z;
  if (x_371) {
    let x_376 : f32 = u_xlat2.z;
    x_372 = x_376;
  } else {
    let x_379 : f32 = u_xlat1.z;
    x_372 = x_379;
  }
  let x_380 : f32 = x_372;
  u_xlat0.z = x_380;
  let x_382 : vec2<f32> = vs_TEXCOORD0;
  let x_385 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_389 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_391 : vec2<f32> = ((x_382 * vec2<f32>(x_385.x, x_385.y)) + vec2<f32>(x_389.z, x_389.w));
  let x_392 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_400 : vec4<f32> = u_xlat1;
  let x_402 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_400.x, x_400.y));
  u_xlat12 = x_402.w;
  let x_404 : f32 = u_xlat12;
  u_xlat12 = ((x_404 * 2.0f) + -1.0f);
  let x_408 : f32 = u_xlat12;
  u_xlat1.x = (-(abs(x_408)) + 1.0f);
  let x_413 : f32 = u_xlat12;
  u_xlat12 = ((x_413 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_417 : f32 = u_xlat12;
  u_xlat12 = clamp(x_417, 0.0f, 1.0f);
  let x_419 : f32 = u_xlat12;
  u_xlat12 = ((x_419 * 2.0f) + -1.0f);
  let x_423 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_423);
  let x_427 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_427) + 1.0f);
  let x_431 : f32 = u_xlat12;
  let x_433 : f32 = u_xlat1.x;
  u_xlat12 = (x_431 * x_433);
  let x_435 : f32 = u_xlat12;
  let x_440 : vec4<f32> = u_xlat0;
  let x_442 : vec3<f32> = ((vec3<f32>(x_435, x_435, x_435) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat0;
  let x_449 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_450 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat1;
  let x_456 : vec3<f32> = (vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_457 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat1;
  let x_462 : vec3<f32> = max(abs(vec3<f32>(x_459.x, x_459.y, x_459.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : vec3<f32> = log2(vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat1;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_475 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat1;
  let x_479 : vec3<f32> = exp2(vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat0;
  let x_486 : vec3<f32> = (vec3<f32>(x_482.x, x_482.y, x_482.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_491.x, x_491.y, x_491.z, x_491.x));
  u_xlatb0 = vec3<bool>(x_493.x, x_493.y, x_493.z);
  let x_496 : bool = u_xlatb0.x;
  if (x_496) {
    let x_501 : f32 = u_xlat2.x;
    x_497 = x_501;
  } else {
    let x_504 : f32 = u_xlat1.x;
    x_497 = x_504;
  }
  let x_505 : f32 = x_497;
  SV_Target0.x = x_505;
  let x_508 : bool = u_xlatb0.y;
  if (x_508) {
    let x_513 : f32 = u_xlat2.y;
    x_509 = x_513;
  } else {
    let x_516 : f32 = u_xlat1.y;
    x_509 = x_516;
  }
  let x_517 : f32 = x_509;
  SV_Target0.y = x_517;
  let x_520 : bool = u_xlatb0.z;
  if (x_520) {
    let x_525 : f32 = u_xlat2.z;
    x_521 = x_525;
  } else {
    let x_528 : f32 = u_xlat1.z;
    x_521 = x_528;
  }
  let x_529 : f32 = x_521;
  SV_Target0.z = x_529;
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

