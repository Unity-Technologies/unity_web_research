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

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat15 : f32;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_495 : f32;
  var x_507 : f32;
  var x_520 : f32;
  var x_644 : f32;
  var x_656 : f32;
  var x_668 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_13.x, x_13.y, x_14.z, x_14.w);
  let x_16 : vec4<f32> = u_xlat0;
  let x_22 : vec2<f32> = clamp(vec2<f32>(x_16.x, x_16.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_23 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_22.x, x_22.y, x_23.z, x_23.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_35 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_37 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_35, x_35));
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_37.x, x_37.y, x_38.z, x_38.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_50.x, x_50.y));
  u_xlat0 = x_52;
  let x_57 : vec4<f32> = x_30.x_BloomTex_TexelSize;
  u_xlat1 = (vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_63 : vec4<f32> = u_xlat1;
  let x_69 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_72 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_63.x, x_63.y, x_63.w, x_63.y)) * vec4<f32>(x_69.x, x_69.x, x_69.x, x_69.x)) + vec4<f32>(x_72.x, x_72.y, x_72.x, x_72.y));
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_75, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_79 : vec4<f32> = u_xlat2;
  let x_81 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat2 = (x_79 * vec4<f32>(x_81, x_81, x_81, x_81));
  let x_88 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_88.x, x_88.y));
  u_xlat3 = x_90;
  let x_94 : vec4<f32> = u_xlat2;
  let x_96 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_94.z, x_94.w));
  u_xlat2 = x_96;
  let x_97 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_97 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_101);
  let x_103 : vec4<f32> = u_xlat1;
  let x_107 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_110 : vec2<f32> = vs_TEXCOORD0;
  let x_111 : vec2<f32> = ((-(vec2<f32>(x_103.z, x_103.y)) * vec2<f32>(x_107.x, x_107.x)) + x_110);
  let x_112 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat3;
  let x_118 : vec2<f32> = clamp(vec2<f32>(x_114.x, x_114.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_118.x, x_118.y, x_119.z, x_119.w);
  let x_121 : vec4<f32> = u_xlat3;
  let x_124 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_126 : vec2<f32> = (vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_124, x_124));
  let x_127 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_126.x, x_126.y, x_127.z, x_127.w);
  let x_132 : vec4<f32> = u_xlat3;
  let x_134 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_132.x, x_132.y));
  u_xlat3 = x_134;
  let x_135 : vec4<f32> = u_xlat2;
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_135 + x_136);
  let x_138 : vec4<f32> = u_xlat1;
  let x_141 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_144 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_138.z, x_138.w, x_138.x, x_138.w) * vec4<f32>(x_141.x, x_141.x, x_141.x, x_141.x)) + vec4<f32>(x_144.x, x_144.y, x_144.x, x_144.y));
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_147, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_151 : vec4<f32> = u_xlat3;
  let x_153 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat3 = (x_151 * vec4<f32>(x_153, x_153, x_153, x_153));
  let x_160 : vec4<f32> = u_xlat3;
  let x_162 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_160.x, x_160.y));
  u_xlat4 = x_162;
  let x_166 : vec4<f32> = u_xlat3;
  let x_168 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_166.z, x_166.w));
  u_xlat3 = x_168;
  let x_169 : vec4<f32> = u_xlat4;
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_169 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_171);
  let x_173 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_173 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_177);
  let x_179 : vec4<f32> = u_xlat3;
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_179 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_181);
  let x_183 : vec4<f32> = u_xlat1;
  let x_186 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_189 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_183.z, x_183.y, x_183.w, x_183.y) * vec4<f32>(x_186.x, x_186.x, x_186.x, x_186.x)) + vec4<f32>(x_189.x, x_189.y, x_189.x, x_189.y));
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_192, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_196 : vec4<f32> = u_xlat1;
  let x_199 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_202 : vec2<f32> = vs_TEXCOORD0;
  let x_203 : vec2<f32> = ((vec2<f32>(x_196.x, x_196.y) * vec2<f32>(x_199.x, x_199.x)) + x_202);
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_204.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat1;
  let x_210 : vec2<f32> = clamp(vec2<f32>(x_206.x, x_206.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_211.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat1;
  let x_216 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_218 : vec2<f32> = (vec2<f32>(x_213.x, x_213.y) * vec2<f32>(x_216, x_216));
  let x_219 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_218.x, x_218.y, x_219.z, x_219.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_224.x, x_224.y));
  u_xlat1 = x_226;
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat2 = (x_227 * vec4<f32>(x_229, x_229, x_229, x_229));
  let x_235 : vec4<f32> = u_xlat2;
  let x_237 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_235.x, x_235.y));
  u_xlat3 = x_237;
  let x_241 : vec4<f32> = u_xlat2;
  let x_243 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_241.z, x_241.w));
  u_xlat2 = x_243;
  let x_244 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_244 + x_245);
  let x_247 : vec4<f32> = u_xlat2;
  let x_249 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_247 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_249);
  let x_251 : vec4<f32> = u_xlat1;
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_251 + x_252);
  let x_254 : vec4<f32> = u_xlat0;
  let x_256 : vec3<f32> = x_30.x_Bloom_Settings;
  u_xlat0 = (x_254 * vec4<f32>(x_256.y, x_256.y, x_256.y, x_256.y));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_259 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_263 : vec4<f32> = u_xlat0;
  let x_266 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat1;
  let x_273 : vec3<f32> = x_30.x_Bloom_Color;
  let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) * x_273);
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_281 : f32 = u_xlat1.w;
  u_xlat2.w = (x_281 * 0.0625f);
  let x_290 : vec2<f32> = vs_TEXCOORD0;
  let x_291 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_290);
  u_xlat15 = x_291.x;
  let x_300 : vec2<f32> = vs_TEXCOORD1;
  let x_301 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_300);
  u_xlat1 = x_301;
  let x_302 : f32 = u_xlat15;
  let x_304 : vec4<f32> = u_xlat1;
  let x_306 : vec3<f32> = (vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat2;
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_309 + x_310);
  let x_312 : vec2<f32> = vs_TEXCOORD0;
  let x_315 : vec4<f32> = x_30.x_Bloom_DirtTileOffset;
  let x_319 : vec4<f32> = x_30.x_Bloom_DirtTileOffset;
  let x_321 : vec2<f32> = ((x_312 * vec2<f32>(x_315.x, x_315.y)) + vec2<f32>(x_319.z, x_319.w));
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_321.x, x_321.y, x_322.z, x_322.w);
  let x_329 : vec4<f32> = u_xlat2;
  let x_331 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_329.x, x_329.y));
  let x_332 : vec3<f32> = vec3<f32>(x_331.x, x_331.y, x_331.z);
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat2;
  let x_338 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_340 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_338.z, x_338.z, x_338.z));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat0;
  let x_345 : vec4<f32> = u_xlat2;
  let x_347 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  u_xlat0.w = 0.0f;
  let x_351 : vec4<f32> = u_xlat0;
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_351 + x_352);
  let x_354 : vec4<f32> = u_xlat0;
  let x_355 : vec3<f32> = vec3<f32>(x_354.x, x_354.y, x_354.z);
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat1;
  let x_362 : vec3<f32> = clamp(vec3<f32>(x_358.x, x_358.y, x_358.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_374 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_374);
  let x_379 : f32 = x_30.x_Grain_Params1.x;
  let x_381 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_379 * -(x_381)) + 1.0f);
  let x_388 : vec2<f32> = vs_TEXCOORD1;
  let x_391 : vec4<f32> = x_30.x_Grain_Params2;
  let x_395 : vec4<f32> = x_30.x_Grain_Params2;
  let x_397 : vec2<f32> = ((x_388 * vec2<f32>(x_391.x, x_391.y)) + vec2<f32>(x_395.z, x_395.w));
  let x_398 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_397.x, x_397.y, x_398.z);
  let x_405 : vec3<f32> = u_xlat6;
  let x_407 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_405.x, x_405.y));
  u_xlat6 = vec3<f32>(x_407.x, x_407.y, x_407.z);
  let x_409 : vec4<f32> = u_xlat0;
  let x_411 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_409.x, x_409.y, x_409.z) * x_411);
  let x_413 : vec3<f32> = u_xlat6;
  let x_416 : f32 = x_30.x_Grain_Params1.y;
  let x_418 : f32 = x_30.x_Grain_Params1.y;
  let x_420 : f32 = x_30.x_Grain_Params1.y;
  u_xlat6 = (x_413 * vec3<f32>(x_416, x_418, x_420));
  let x_423 : vec3<f32> = u_xlat6;
  let x_424 : vec4<f32> = u_xlat1;
  let x_427 : vec4<f32> = u_xlat0;
  let x_429 : vec3<f32> = ((x_423 * vec3<f32>(x_424.x, x_424.x, x_424.x)) + vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_435 : f32 = u_xlat0.w;
  SV_Target0.w = x_435;
  let x_438 : vec4<f32> = u_xlat0;
  let x_443 : vec3<f32> = max(abs(vec3<f32>(x_438.x, x_438.y, x_438.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_444 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec3<f32> = log2(vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat1;
  let x_455 : vec3<f32> = (vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_456 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat1;
  let x_460 : vec3<f32> = exp2(vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat1;
  let x_470 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_471 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec4<f32> = u_xlat0;
  let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.y, x_473.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_478 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_486 : vec4<f32> = u_xlat0;
  let x_489 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_486.x, x_486.y, x_486.z, x_486.x));
  u_xlatb0 = vec3<bool>(x_489.x, x_489.y, x_489.z);
  let x_493 : bool = u_xlatb0.x;
  if (x_493) {
    let x_499 : f32 = u_xlat2.x;
    x_495 = x_499;
  } else {
    let x_502 : f32 = u_xlat1.x;
    x_495 = x_502;
  }
  let x_503 : f32 = x_495;
  u_xlat0.x = x_503;
  let x_506 : bool = u_xlatb0.y;
  if (x_506) {
    let x_511 : f32 = u_xlat2.y;
    x_507 = x_511;
  } else {
    let x_514 : f32 = u_xlat1.y;
    x_507 = x_514;
  }
  let x_515 : f32 = x_507;
  u_xlat0.y = x_515;
  let x_519 : bool = u_xlatb0.z;
  if (x_519) {
    let x_524 : f32 = u_xlat2.z;
    x_520 = x_524;
  } else {
    let x_527 : f32 = u_xlat1.z;
    x_520 = x_527;
  }
  let x_528 : f32 = x_520;
  u_xlat0.z = x_528;
  let x_530 : vec2<f32> = vs_TEXCOORD0;
  let x_533 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_537 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_539 : vec2<f32> = ((x_530 * vec2<f32>(x_533.x, x_533.y)) + vec2<f32>(x_537.z, x_537.w));
  let x_540 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
  let x_547 : vec4<f32> = u_xlat1;
  let x_549 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_547.x, x_547.y));
  u_xlat15 = x_549.w;
  let x_551 : f32 = u_xlat15;
  u_xlat15 = ((x_551 * 2.0f) + -1.0f);
  let x_554 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_554)) + 1.0f);
  let x_559 : f32 = u_xlat15;
  u_xlat15 = ((x_559 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_564 : f32 = u_xlat15;
  u_xlat15 = clamp(x_564, 0.0f, 1.0f);
  let x_566 : f32 = u_xlat15;
  u_xlat15 = ((x_566 * 2.0f) + -1.0f);
  let x_570 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_570);
  let x_574 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_574) + 1.0f);
  let x_578 : f32 = u_xlat15;
  let x_580 : f32 = u_xlat1.x;
  u_xlat15 = (x_578 * x_580);
  let x_582 : f32 = u_xlat15;
  let x_587 : vec4<f32> = u_xlat0;
  let x_589 : vec3<f32> = ((vec3<f32>(x_582, x_582, x_582) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat0;
  let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.y, x_592.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_597 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec4<f32> = u_xlat1;
  let x_603 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_604 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat1;
  let x_609 : vec3<f32> = max(abs(vec3<f32>(x_606.x, x_606.y, x_606.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat1;
  let x_614 : vec3<f32> = log2(vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_615 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec4<f32> = u_xlat1;
  let x_621 : vec3<f32> = (vec3<f32>(x_617.x, x_617.y, x_617.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_622 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat1;
  let x_626 : vec3<f32> = exp2(vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat0;
  let x_633 : vec3<f32> = (vec3<f32>(x_629.x, x_629.y, x_629.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_634 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_638 : vec4<f32> = u_xlat0;
  let x_640 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_638.x, x_638.y, x_638.z, x_638.x));
  u_xlatb0 = vec3<bool>(x_640.x, x_640.y, x_640.z);
  let x_643 : bool = u_xlatb0.x;
  if (x_643) {
    let x_648 : f32 = u_xlat2.x;
    x_644 = x_648;
  } else {
    let x_651 : f32 = u_xlat1.x;
    x_644 = x_651;
  }
  let x_652 : f32 = x_644;
  SV_Target0.x = x_652;
  let x_655 : bool = u_xlatb0.y;
  if (x_655) {
    let x_660 : f32 = u_xlat2.y;
    x_656 = x_660;
  } else {
    let x_663 : f32 = u_xlat1.y;
    x_656 = x_663;
  }
  let x_664 : f32 = x_656;
  SV_Target0.y = x_664;
  let x_667 : bool = u_xlatb0.z;
  if (x_667) {
    let x_672 : f32 = u_xlat2.z;
    x_668 = x_672;
  } else {
    let x_675 : f32 = u_xlat1.z;
    x_668 = x_675;
  }
  let x_676 : f32 = x_668;
  SV_Target0.z = x_676;
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

