struct PGlobals {
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
  @size(4)
  padding_3 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_365 : f32;
  var x_377 : f32;
  var x_390 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var x_547 : f32;
  var x_559 : f32;
  var x_571 : f32;
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
  let x_215 : vec2<f32> = vs_TEXCOORD1;
  let x_218 : vec4<f32> = x_49.x_Grain_Params2;
  let x_222 : vec4<f32> = x_49.x_Grain_Params2;
  let x_224 : vec2<f32> = ((x_215 * vec2<f32>(x_218.x, x_218.y)) + vec2<f32>(x_222.z, x_222.w));
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_224.x, x_224.y, x_225.z, x_225.w);
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_232.x, x_232.y));
  let x_235 : vec3<f32> = vec3<f32>(x_234.x, x_234.y, x_234.z);
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat0;
  let x_239 : vec3<f32> = vec3<f32>(x_238.x, x_238.y, x_238.z);
  let x_240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat2;
  let x_246 : vec3<f32> = clamp(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_247 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_257 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_257);
  let x_261 : f32 = x_49.x_Grain_Params1.x;
  let x_262 : f32 = u_xlat16;
  u_xlat16 = ((x_261 * -(x_262)) + 1.0f);
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat1;
  let x_277 : f32 = x_49.x_Grain_Params1.y;
  let x_279 : f32 = x_49.x_Grain_Params1.y;
  let x_281 : f32 = x_49.x_Grain_Params1.y;
  let x_283 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_277, x_279, x_281));
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat1;
  let x_288 : f32 = u_xlat16;
  let x_291 : vec4<f32> = u_xlat0;
  let x_293 : vec3<f32> = ((vec3<f32>(x_286.x, x_286.y, x_286.z) * vec3<f32>(x_288, x_288, x_288)) + vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat1;
  let x_300 : vec3<f32> = clamp(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_304 : f32 = u_xlat0.w;
  u_xlat0.w = x_304;
  let x_307 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_307, 0.0f, 1.0f);
  let x_310 : vec4<f32> = u_xlat1;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.z, x_310.x, x_310.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_315 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat1;
  let x_321 : vec3<f32> = max(vec3<f32>(x_317.z, x_317.x, x_317.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = log2(vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec3<f32> = exp2(vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat3;
  let x_348 : vec3<f32> = ((vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_357 : vec4<f32> = u_xlat1;
  let x_360 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_357.z, x_357.x, x_357.y, x_357.z));
  u_xlatb1 = vec3<bool>(x_360.x, x_360.y, x_360.z);
  let x_364 : bool = u_xlatb1.x;
  if (x_364) {
    let x_369 : f32 = u_xlat2.x;
    x_365 = x_369;
  } else {
    let x_372 : f32 = u_xlat3.x;
    x_365 = x_372;
  }
  let x_373 : f32 = x_365;
  u_xlat1.x = x_373;
  let x_376 : bool = u_xlatb1.y;
  if (x_376) {
    let x_381 : f32 = u_xlat2.y;
    x_377 = x_381;
  } else {
    let x_384 : f32 = u_xlat3.y;
    x_377 = x_384;
  }
  let x_385 : f32 = x_377;
  u_xlat1.y = x_385;
  let x_389 : bool = u_xlatb1.z;
  if (x_389) {
    let x_394 : f32 = u_xlat2.z;
    x_390 = x_394;
  } else {
    let x_397 : f32 = u_xlat3.z;
    x_390 = x_397;
  }
  let x_398 : f32 = x_390;
  u_xlat1.z = x_398;
  let x_402 : vec4<f32> = u_xlat1;
  let x_406 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_402.x, x_402.y, x_402.z) * vec3<f32>(x_406.z, x_406.z, x_406.z));
  let x_410 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_410);
  let x_414 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_417 : vec2<f32> = (vec2<f32>(x_414.x, x_414.y) * vec2<f32>(0.5f, 0.5f));
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
  let x_420 : vec3<f32> = u_xlat6;
  let x_423 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_426 : vec4<f32> = u_xlat2;
  let x_428 : vec2<f32> = ((vec2<f32>(x_420.y, x_420.z) * vec2<f32>(x_423.x, x_423.y)) + vec2<f32>(x_426.x, x_426.y));
  let x_429 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_429.x, x_428.x, x_428.y, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = x_49.x_Lut2D_Params.y;
  let x_437 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_432 * x_434) + x_437);
  let x_445 : vec4<f32> = u_xlat2;
  let x_447 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_445.x, x_445.z));
  let x_448 : vec3<f32> = vec3<f32>(x_447.x, x_447.y, x_447.z);
  let x_449 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_452 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_452;
  u_xlat4.y = 0.0f;
  let x_457 : vec4<f32> = u_xlat2;
  let x_459 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_457.x, x_457.z) + vec2<f32>(x_459.x, x_459.y));
  let x_465 : vec2<f32> = u_xlat11;
  let x_466 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_465);
  let x_467 : vec3<f32> = vec3<f32>(x_466.x, x_466.y, x_466.z);
  let x_468 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_471 : f32 = u_xlat1.x;
  let x_473 : f32 = x_49.x_Lut2D_Params.z;
  let x_476 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_471 * x_473) + -(x_476));
  let x_480 : vec4<f32> = u_xlat3;
  let x_483 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = u_xlat6;
  let x_490 : vec4<f32> = u_xlat3;
  let x_492 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.x, x_486.x) * x_488) + vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat1;
  let x_499 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_500 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat1;
  let x_506 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_507 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat3;
  let x_513 : vec3<f32> = (vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_514 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat3;
  let x_519 : vec3<f32> = max(abs(vec3<f32>(x_516.x, x_516.y, x_516.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat3;
  let x_524 : vec3<f32> = log2(vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat3;
  let x_531 : vec3<f32> = (vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_532 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat3;
  let x_536 : vec3<f32> = exp2(vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_541 : vec4<f32> = u_xlat1;
  let x_543 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_541.x, x_541.y, x_541.z, x_541.x));
  u_xlatb1 = vec3<bool>(x_543.x, x_543.y, x_543.z);
  let x_546 : bool = u_xlatb1.x;
  if (x_546) {
    let x_551 : f32 = u_xlat2.x;
    x_547 = x_551;
  } else {
    let x_554 : f32 = u_xlat3.x;
    x_547 = x_554;
  }
  let x_555 : f32 = x_547;
  u_xlat0.x = x_555;
  let x_558 : bool = u_xlatb1.y;
  if (x_558) {
    let x_563 : f32 = u_xlat2.y;
    x_559 = x_563;
  } else {
    let x_566 : f32 = u_xlat3.y;
    x_559 = x_566;
  }
  let x_567 : f32 = x_559;
  u_xlat0.y = x_567;
  let x_570 : bool = u_xlatb1.z;
  if (x_570) {
    let x_575 : f32 = u_xlat2.z;
    x_571 = x_575;
  } else {
    let x_578 : f32 = u_xlat3.z;
    x_571 = x_578;
  }
  let x_579 : f32 = x_571;
  u_xlat0.z = x_579;
  let x_583 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_583);
  let x_587 : bool = u_xlatb1.x;
  if (x_587) {
    let x_590 : vec4<f32> = u_xlat0;
    let x_591 : vec3<f32> = vec3<f32>(x_590.x, x_590.y, x_590.z);
    let x_592 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
    let x_594 : vec4<f32> = u_xlat1;
    let x_598 : vec3<f32> = clamp(vec3<f32>(x_594.x, x_594.y, x_594.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_599 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
    let x_601 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_601.x, x_601.y, x_601.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_607 : vec4<f32> = u_xlat0;
  SV_Target0 = x_607;
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

