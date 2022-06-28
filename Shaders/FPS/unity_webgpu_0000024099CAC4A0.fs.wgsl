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

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlat16 : f32;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> u_xlat11 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_366 : f32;
  var x_378 : f32;
  var x_391 : f32;
  var x_548 : f32;
  var x_560 : f32;
  var x_572 : f32;
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
    let x_370 : f32 = u_xlat2.x;
    x_366 = x_370;
  } else {
    let x_373 : f32 = u_xlat3.x;
    x_366 = x_373;
  }
  let x_374 : f32 = x_366;
  u_xlat1.x = x_374;
  let x_377 : bool = u_xlatb1.y;
  if (x_377) {
    let x_382 : f32 = u_xlat2.y;
    x_378 = x_382;
  } else {
    let x_385 : f32 = u_xlat3.y;
    x_378 = x_385;
  }
  let x_386 : f32 = x_378;
  u_xlat1.y = x_386;
  let x_390 : bool = u_xlatb1.z;
  if (x_390) {
    let x_395 : f32 = u_xlat2.z;
    x_391 = x_395;
  } else {
    let x_398 : f32 = u_xlat3.z;
    x_391 = x_398;
  }
  let x_399 : f32 = x_391;
  u_xlat1.z = x_399;
  let x_403 : vec4<f32> = u_xlat1;
  let x_407 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_407.z, x_407.z, x_407.z));
  let x_411 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_411);
  let x_415 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_418 : vec2<f32> = (vec2<f32>(x_415.x, x_415.y) * vec2<f32>(0.5f, 0.5f));
  let x_419 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
  let x_421 : vec3<f32> = u_xlat6;
  let x_424 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_427 : vec4<f32> = u_xlat2;
  let x_429 : vec2<f32> = ((vec2<f32>(x_421.y, x_421.z) * vec2<f32>(x_424.x, x_424.y)) + vec2<f32>(x_427.x, x_427.y));
  let x_430 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_430.x, x_429.x, x_429.y, x_430.w);
  let x_433 : f32 = u_xlat6.x;
  let x_435 : f32 = x_49.x_Lut2D_Params.y;
  let x_438 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_433 * x_435) + x_438);
  let x_446 : vec4<f32> = u_xlat2;
  let x_448 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_446.x, x_446.z));
  let x_449 : vec3<f32> = vec3<f32>(x_448.x, x_448.y, x_448.z);
  let x_450 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_453;
  u_xlat4.y = 0.0f;
  let x_458 : vec4<f32> = u_xlat2;
  let x_460 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_458.x, x_458.z) + vec2<f32>(x_460.x, x_460.y));
  let x_466 : vec2<f32> = u_xlat11;
  let x_467 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_466);
  let x_468 : vec3<f32> = vec3<f32>(x_467.x, x_467.y, x_467.z);
  let x_469 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : f32 = u_xlat1.x;
  let x_474 : f32 = x_49.x_Lut2D_Params.z;
  let x_477 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_472 * x_474) + -(x_477));
  let x_481 : vec4<f32> = u_xlat3;
  let x_484 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_481.x, x_481.y, x_481.z)) + vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat1;
  let x_489 : vec3<f32> = u_xlat6;
  let x_491 : vec4<f32> = u_xlat3;
  let x_493 : vec3<f32> = ((vec3<f32>(x_487.x, x_487.x, x_487.x) * x_489) + vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat1;
  let x_500 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_501 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat1;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_508 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat3;
  let x_514 : vec3<f32> = (vec3<f32>(x_510.x, x_510.y, x_510.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_515 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat3;
  let x_520 : vec3<f32> = max(abs(vec3<f32>(x_517.x, x_517.y, x_517.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_521 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat3;
  let x_525 : vec3<f32> = log2(vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat3;
  let x_532 : vec3<f32> = (vec3<f32>(x_528.x, x_528.y, x_528.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_533 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_535 : vec4<f32> = u_xlat3;
  let x_537 : vec3<f32> = exp2(vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_542 : vec4<f32> = u_xlat1;
  let x_544 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_542.x, x_542.y, x_542.z, x_542.x));
  u_xlatb1 = vec3<bool>(x_544.x, x_544.y, x_544.z);
  let x_547 : bool = u_xlatb1.x;
  if (x_547) {
    let x_552 : f32 = u_xlat2.x;
    x_548 = x_552;
  } else {
    let x_555 : f32 = u_xlat3.x;
    x_548 = x_555;
  }
  let x_556 : f32 = x_548;
  u_xlat0.x = x_556;
  let x_559 : bool = u_xlatb1.y;
  if (x_559) {
    let x_564 : f32 = u_xlat2.y;
    x_560 = x_564;
  } else {
    let x_567 : f32 = u_xlat3.y;
    x_560 = x_567;
  }
  let x_568 : f32 = x_560;
  u_xlat0.y = x_568;
  let x_571 : bool = u_xlatb1.z;
  if (x_571) {
    let x_576 : f32 = u_xlat2.z;
    x_572 = x_576;
  } else {
    let x_579 : f32 = u_xlat3.z;
    x_572 = x_579;
  }
  let x_580 : f32 = x_572;
  u_xlat0.z = x_580;
  let x_584 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_584);
  let x_588 : bool = u_xlatb1.x;
  if (x_588) {
    let x_591 : vec4<f32> = u_xlat0;
    let x_592 : vec3<f32> = vec3<f32>(x_591.x, x_591.y, x_591.z);
    let x_593 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
    let x_595 : vec4<f32> = u_xlat1;
    let x_599 : vec3<f32> = clamp(vec3<f32>(x_595.x, x_595.y, x_595.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_600 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
    let x_602 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_602.x, x_602.y, x_602.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_608 : vec4<f32> = u_xlat0;
  SV_Target0 = x_608;
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

