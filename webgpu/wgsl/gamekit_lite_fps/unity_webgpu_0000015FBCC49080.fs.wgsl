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

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

var<private> u_xlat4 : vec4<f32>;

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
  var x_497 : f32;
  var x_509 : f32;
  var x_522 : f32;
  var x_680 : f32;
  var x_692 : f32;
  var x_704 : f32;
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
  u_xlat0 = (vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_62 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_62.x, x_62.y, x_62.w, x_62.y)) * vec4<f32>(x_68.x, x_68.x, x_68.x, x_68.x)) + vec4<f32>(x_71.x, x_71.y, x_71.x, x_71.y));
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_74, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_78 : vec4<f32> = u_xlat2;
  let x_82 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat2 = (x_78 * vec4<f32>(x_82, x_82, x_82, x_82));
  let x_91 : vec4<f32> = u_xlat2;
  let x_93 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_91.x, x_91.y));
  u_xlat3 = x_93;
  let x_97 : vec4<f32> = u_xlat2;
  let x_99 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_97.z, x_97.w));
  u_xlat2 = x_99;
  let x_100 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_100 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_104);
  let x_106 : vec4<f32> = u_xlat0;
  let x_110 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_113 : vec2<f32> = vs_TEXCOORD0;
  let x_114 : vec2<f32> = ((-(vec2<f32>(x_106.z, x_106.y)) * vec2<f32>(x_110.x, x_110.x)) + x_113);
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat3;
  let x_121 : vec2<f32> = clamp(vec2<f32>(x_117.x, x_117.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_122 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat3;
  let x_127 : f32 = x_49.x_RenderViewportScaleFactor;
  let x_129 : vec2<f32> = (vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_127, x_127));
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_135 : vec4<f32> = u_xlat3;
  let x_137 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_135.x, x_135.y));
  u_xlat3 = x_137;
  let x_138 : vec4<f32> = u_xlat2;
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_138 + x_139);
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_147 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_141.z, x_141.w, x_141.x, x_141.w) * vec4<f32>(x_144.x, x_144.x, x_144.x, x_144.x)) + vec4<f32>(x_147.x, x_147.y, x_147.x, x_147.y));
  let x_150 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_150, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_154 : vec4<f32> = u_xlat3;
  let x_156 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat3 = (x_154 * vec4<f32>(x_156, x_156, x_156, x_156));
  let x_163 : vec4<f32> = u_xlat3;
  let x_165 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_163.x, x_163.y));
  u_xlat4 = x_165;
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_166 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_168);
  let x_170 : vec2<f32> = vs_TEXCOORD0;
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat3;
  let x_177 : vec2<f32> = clamp(vec2<f32>(x_173.x, x_173.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_178.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat3;
  let x_183 : f32 = x_49.x_RenderViewportScaleFactor;
  let x_185 : vec2<f32> = (vec2<f32>(x_180.x, x_180.y) * vec2<f32>(x_183, x_183));
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_191.x, x_191.y));
  u_xlat4 = x_193;
  let x_194 : vec4<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_194 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_198);
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_203.z, x_203.w));
  u_xlat3 = x_205;
  let x_206 : vec4<f32> = u_xlat3;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_206 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_208);
  let x_210 : vec4<f32> = u_xlat0;
  let x_213 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_216 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_210.z, x_210.y, x_210.w, x_210.y) * vec4<f32>(x_213.x, x_213.x, x_213.x, x_213.x)) + vec4<f32>(x_216.x, x_216.y, x_216.x, x_216.y));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_219, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_223 : vec4<f32> = u_xlat3;
  let x_225 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat3 = (x_223 * vec4<f32>(x_225, x_225, x_225, x_225));
  let x_231 : vec4<f32> = u_xlat3;
  let x_233 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_231.x, x_231.y));
  u_xlat4 = x_233;
  let x_234 : vec4<f32> = u_xlat2;
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_234 + x_235);
  let x_240 : vec4<f32> = u_xlat3;
  let x_242 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_240.z, x_240.w));
  u_xlat3 = x_242;
  let x_243 : vec4<f32> = u_xlat3;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_243 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_245);
  let x_247 : vec4<f32> = u_xlat0;
  let x_250 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_253 : vec2<f32> = vs_TEXCOORD0;
  let x_254 : vec2<f32> = ((vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_250.x, x_250.x)) + x_253);
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_254.x, x_254.y, x_255.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_261 : vec2<f32> = clamp(vec2<f32>(x_257.x, x_257.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_261.x, x_261.y, x_262.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat0;
  let x_267 : f32 = x_49.x_RenderViewportScaleFactor;
  let x_269 : vec2<f32> = (vec2<f32>(x_264.x, x_264.y) * vec2<f32>(x_267, x_267));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_270.z, x_270.w);
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_275.x, x_275.y));
  u_xlat0 = x_277;
  let x_278 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_278 + x_279);
  let x_281 : vec4<f32> = u_xlat0;
  let x_283 : vec3<f32> = x_49.x_Bloom_Settings;
  u_xlat0 = (x_281 * vec4<f32>(x_283.y, x_283.y, x_283.y, x_283.y));
  let x_286 : vec2<f32> = vs_TEXCOORD0;
  let x_289 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_293 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_295 : vec2<f32> = ((x_286 * vec2<f32>(x_289.x, x_289.y)) + vec2<f32>(x_293.z, x_293.w));
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  let x_303 : vec4<f32> = u_xlat2;
  let x_305 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_303.x, x_303.y));
  let x_306 : vec3<f32> = vec3<f32>(x_305.x, x_305.y, x_305.z);
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_309 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_313 : vec4<f32> = u_xlat2;
  let x_316 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_318 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_316.z, x_316.z, x_316.z));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  u_xlat2.w = 0.0f;
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_323 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_326 : vec4<f32> = u_xlat0;
  let x_330 : vec3<f32> = x_49.x_Bloom_Color;
  let x_331 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) * x_330);
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : f32 = u_xlat0.w;
  u_xlat4.w = (x_335 * 0.0625f);
  let x_338 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_338 + x_339);
  let x_341 : vec4<f32> = u_xlat2;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_341 * x_342) + x_344);
  let x_346 : vec2<f32> = vs_TEXCOORD1;
  let x_349 : vec4<f32> = x_49.x_Grain_Params2;
  let x_353 : vec4<f32> = x_49.x_Grain_Params2;
  let x_355 : vec2<f32> = ((x_346 * vec2<f32>(x_349.x, x_349.y)) + vec2<f32>(x_353.z, x_353.w));
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_355.x, x_355.y, x_356.z, x_356.w);
  let x_363 : vec4<f32> = u_xlat1;
  let x_365 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_363.x, x_363.y));
  let x_366 : vec3<f32> = vec3<f32>(x_365.x, x_365.y, x_365.z);
  let x_367 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec4<f32> = u_xlat0;
  let x_370 : vec3<f32> = vec3<f32>(x_369.x, x_369.y, x_369.z);
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = clamp(vec3<f32>(x_373.x, x_373.y, x_373.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_378 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_388 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_388);
  let x_392 : f32 = x_49.x_Grain_Params1.x;
  let x_393 : f32 = u_xlat16;
  u_xlat16 = ((x_392 * -(x_393)) + 1.0f);
  let x_397 : vec4<f32> = u_xlat0;
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat1;
  let x_408 : f32 = x_49.x_Grain_Params1.y;
  let x_410 : f32 = x_49.x_Grain_Params1.y;
  let x_412 : f32 = x_49.x_Grain_Params1.y;
  let x_414 : vec3<f32> = (vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_408, x_410, x_412));
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat1;
  let x_419 : f32 = u_xlat16;
  let x_422 : vec4<f32> = u_xlat0;
  let x_424 : vec3<f32> = ((vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_419, x_419, x_419)) + vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = clamp(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_435 : f32 = u_xlat0.w;
  u_xlat0.w = x_435;
  let x_438 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_438, 0.0f, 1.0f);
  let x_441 : vec4<f32> = u_xlat1;
  let x_445 : vec3<f32> = (vec3<f32>(x_441.z, x_441.x, x_441.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat1;
  let x_452 : vec3<f32> = max(vec3<f32>(x_448.z, x_448.x, x_448.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_453 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat3;
  let x_457 : vec3<f32> = log2(vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat3;
  let x_464 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat3;
  let x_469 : vec3<f32> = exp2(vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat3;
  let x_479 : vec3<f32> = ((vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_480 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_488 : vec4<f32> = u_xlat1;
  let x_491 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_488.z, x_488.x, x_488.y, x_488.z));
  u_xlatb1 = vec3<bool>(x_491.x, x_491.y, x_491.z);
  let x_495 : bool = u_xlatb1.x;
  if (x_495) {
    let x_501 : f32 = u_xlat2.x;
    x_497 = x_501;
  } else {
    let x_504 : f32 = u_xlat3.x;
    x_497 = x_504;
  }
  let x_505 : f32 = x_497;
  u_xlat1.x = x_505;
  let x_508 : bool = u_xlatb1.y;
  if (x_508) {
    let x_513 : f32 = u_xlat2.y;
    x_509 = x_513;
  } else {
    let x_516 : f32 = u_xlat3.y;
    x_509 = x_516;
  }
  let x_517 : f32 = x_509;
  u_xlat1.y = x_517;
  let x_521 : bool = u_xlatb1.z;
  if (x_521) {
    let x_526 : f32 = u_xlat2.z;
    x_522 = x_526;
  } else {
    let x_529 : f32 = u_xlat3.z;
    x_522 = x_529;
  }
  let x_530 : f32 = x_522;
  u_xlat1.z = x_530;
  let x_534 : vec4<f32> = u_xlat1;
  let x_538 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_534.x, x_534.y, x_534.z) * vec3<f32>(x_538.z, x_538.z, x_538.z));
  let x_542 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_542);
  let x_546 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_550 : vec2<f32> = (vec2<f32>(x_546.x, x_546.y) * vec2<f32>(0.5f, 0.5f));
  let x_551 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
  let x_553 : vec3<f32> = u_xlat6;
  let x_556 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_559 : vec4<f32> = u_xlat2;
  let x_561 : vec2<f32> = ((vec2<f32>(x_553.y, x_553.z) * vec2<f32>(x_556.x, x_556.y)) + vec2<f32>(x_559.x, x_559.y));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_562.x, x_561.x, x_561.y, x_562.w);
  let x_565 : f32 = u_xlat6.x;
  let x_567 : f32 = x_49.x_Lut2D_Params.y;
  let x_570 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_565 * x_567) + x_570);
  let x_578 : vec4<f32> = u_xlat2;
  let x_580 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_578.x, x_578.z));
  let x_581 : vec3<f32> = vec3<f32>(x_580.x, x_580.y, x_580.z);
  let x_582 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_585 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_585;
  u_xlat4.y = 0.0f;
  let x_590 : vec4<f32> = u_xlat2;
  let x_592 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_590.x, x_590.z) + vec2<f32>(x_592.x, x_592.y));
  let x_598 : vec2<f32> = u_xlat11;
  let x_599 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_598);
  let x_600 : vec3<f32> = vec3<f32>(x_599.x, x_599.y, x_599.z);
  let x_601 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_604 : f32 = u_xlat1.x;
  let x_606 : f32 = x_49.x_Lut2D_Params.z;
  let x_609 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_604 * x_606) + -(x_609));
  let x_613 : vec4<f32> = u_xlat3;
  let x_616 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_613.x, x_613.y, x_613.z)) + vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : vec4<f32> = u_xlat1;
  let x_621 : vec3<f32> = u_xlat6;
  let x_623 : vec4<f32> = u_xlat3;
  let x_625 : vec3<f32> = ((vec3<f32>(x_619.x, x_619.x, x_619.x) * x_621) + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat1;
  let x_632 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_633 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat1;
  let x_639 : vec3<f32> = (vec3<f32>(x_635.x, x_635.y, x_635.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_640 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat3;
  let x_646 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec4<f32> = u_xlat3;
  let x_652 : vec3<f32> = max(abs(vec3<f32>(x_649.x, x_649.y, x_649.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_653 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat3;
  let x_657 : vec3<f32> = log2(vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat3;
  let x_664 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_665 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : vec4<f32> = u_xlat3;
  let x_669 : vec3<f32> = exp2(vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_674 : vec4<f32> = u_xlat1;
  let x_676 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_674.x, x_674.y, x_674.z, x_674.x));
  u_xlatb1 = vec3<bool>(x_676.x, x_676.y, x_676.z);
  let x_679 : bool = u_xlatb1.x;
  if (x_679) {
    let x_684 : f32 = u_xlat2.x;
    x_680 = x_684;
  } else {
    let x_687 : f32 = u_xlat3.x;
    x_680 = x_687;
  }
  let x_688 : f32 = x_680;
  u_xlat0.x = x_688;
  let x_691 : bool = u_xlatb1.y;
  if (x_691) {
    let x_696 : f32 = u_xlat2.y;
    x_692 = x_696;
  } else {
    let x_699 : f32 = u_xlat3.y;
    x_692 = x_699;
  }
  let x_700 : f32 = x_692;
  u_xlat0.y = x_700;
  let x_703 : bool = u_xlatb1.z;
  if (x_703) {
    let x_708 : f32 = u_xlat2.z;
    x_704 = x_708;
  } else {
    let x_711 : f32 = u_xlat3.z;
    x_704 = x_711;
  }
  let x_712 : f32 = x_704;
  u_xlat0.z = x_712;
  let x_716 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_716);
  let x_720 : bool = u_xlatb1.x;
  if (x_720) {
    let x_723 : vec4<f32> = u_xlat0;
    let x_724 : vec3<f32> = vec3<f32>(x_723.x, x_723.y, x_723.z);
    let x_725 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
    let x_727 : vec4<f32> = u_xlat1;
    let x_731 : vec3<f32> = clamp(vec3<f32>(x_727.x, x_727.y, x_727.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_732 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
    let x_734 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_734.x, x_734.y, x_734.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_740 : vec4<f32> = u_xlat0;
  SV_Target0 = x_740;
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

