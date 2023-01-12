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
  var x_496 : f32;
  var x_508 : f32;
  var x_521 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var x_679 : f32;
  var x_691 : f32;
  var x_703 : f32;
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
    let x_500 : f32 = u_xlat2.x;
    x_496 = x_500;
  } else {
    let x_503 : f32 = u_xlat3.x;
    x_496 = x_503;
  }
  let x_504 : f32 = x_496;
  u_xlat1.x = x_504;
  let x_507 : bool = u_xlatb1.y;
  if (x_507) {
    let x_512 : f32 = u_xlat2.y;
    x_508 = x_512;
  } else {
    let x_515 : f32 = u_xlat3.y;
    x_508 = x_515;
  }
  let x_516 : f32 = x_508;
  u_xlat1.y = x_516;
  let x_520 : bool = u_xlatb1.z;
  if (x_520) {
    let x_525 : f32 = u_xlat2.z;
    x_521 = x_525;
  } else {
    let x_528 : f32 = u_xlat3.z;
    x_521 = x_528;
  }
  let x_529 : f32 = x_521;
  u_xlat1.z = x_529;
  let x_533 : vec4<f32> = u_xlat1;
  let x_537 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(x_537.z, x_537.z, x_537.z));
  let x_541 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_541);
  let x_545 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_549 : vec2<f32> = (vec2<f32>(x_545.x, x_545.y) * vec2<f32>(0.5f, 0.5f));
  let x_550 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
  let x_552 : vec3<f32> = u_xlat6;
  let x_555 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_558 : vec4<f32> = u_xlat2;
  let x_560 : vec2<f32> = ((vec2<f32>(x_552.y, x_552.z) * vec2<f32>(x_555.x, x_555.y)) + vec2<f32>(x_558.x, x_558.y));
  let x_561 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_560.x, x_560.y, x_561.w);
  let x_564 : f32 = u_xlat6.x;
  let x_566 : f32 = x_49.x_Lut2D_Params.y;
  let x_569 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_564 * x_566) + x_569);
  let x_577 : vec4<f32> = u_xlat2;
  let x_579 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_577.x, x_577.z));
  let x_580 : vec3<f32> = vec3<f32>(x_579.x, x_579.y, x_579.z);
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_584;
  u_xlat4.y = 0.0f;
  let x_589 : vec4<f32> = u_xlat2;
  let x_591 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_589.x, x_589.z) + vec2<f32>(x_591.x, x_591.y));
  let x_597 : vec2<f32> = u_xlat11;
  let x_598 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_597);
  let x_599 : vec3<f32> = vec3<f32>(x_598.x, x_598.y, x_598.z);
  let x_600 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = u_xlat1.x;
  let x_605 : f32 = x_49.x_Lut2D_Params.z;
  let x_608 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_603 * x_605) + -(x_608));
  let x_612 : vec4<f32> = u_xlat3;
  let x_615 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_612.x, x_612.y, x_612.z)) + vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat1;
  let x_620 : vec3<f32> = u_xlat6;
  let x_622 : vec4<f32> = u_xlat3;
  let x_624 : vec3<f32> = ((vec3<f32>(x_618.x, x_618.x, x_618.x) * x_620) + vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat1;
  let x_631 : vec3<f32> = (vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_632 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat1;
  let x_638 : vec3<f32> = (vec3<f32>(x_634.x, x_634.y, x_634.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_639 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat3;
  let x_645 : vec3<f32> = (vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : vec4<f32> = u_xlat3;
  let x_651 : vec3<f32> = max(abs(vec3<f32>(x_648.x, x_648.y, x_648.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_652 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec3<f32> = log2(vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat3;
  let x_663 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_664 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat3;
  let x_668 : vec3<f32> = exp2(vec3<f32>(x_666.x, x_666.y, x_666.z));
  let x_669 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_673 : vec4<f32> = u_xlat1;
  let x_675 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_673.x, x_673.y, x_673.z, x_673.x));
  u_xlatb1 = vec3<bool>(x_675.x, x_675.y, x_675.z);
  let x_678 : bool = u_xlatb1.x;
  if (x_678) {
    let x_683 : f32 = u_xlat2.x;
    x_679 = x_683;
  } else {
    let x_686 : f32 = u_xlat3.x;
    x_679 = x_686;
  }
  let x_687 : f32 = x_679;
  u_xlat0.x = x_687;
  let x_690 : bool = u_xlatb1.y;
  if (x_690) {
    let x_695 : f32 = u_xlat2.y;
    x_691 = x_695;
  } else {
    let x_698 : f32 = u_xlat3.y;
    x_691 = x_698;
  }
  let x_699 : f32 = x_691;
  u_xlat0.y = x_699;
  let x_702 : bool = u_xlatb1.z;
  if (x_702) {
    let x_707 : f32 = u_xlat2.z;
    x_703 = x_707;
  } else {
    let x_710 : f32 = u_xlat3.z;
    x_703 = x_710;
  }
  let x_711 : f32 = x_703;
  u_xlat0.z = x_711;
  let x_715 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_715);
  let x_719 : bool = u_xlatb1.x;
  if (x_719) {
    let x_722 : vec4<f32> = u_xlat0;
    let x_723 : vec3<f32> = vec3<f32>(x_722.x, x_722.y, x_722.z);
    let x_724 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
    let x_726 : vec4<f32> = u_xlat1;
    let x_730 : vec3<f32> = clamp(vec3<f32>(x_726.x, x_726.y, x_726.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_731 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
    let x_733 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_733.x, x_733.y, x_733.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_739 : vec4<f32> = u_xlat0;
  SV_Target0 = x_739;
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

