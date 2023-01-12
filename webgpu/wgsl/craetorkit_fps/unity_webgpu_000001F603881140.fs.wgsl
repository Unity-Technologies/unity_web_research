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
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_276 : f32;
  var x_289 : f32;
  var x_302 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_461 : f32;
  var x_473 : f32;
  var x_485 : f32;
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
  let x_215 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_215, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_219 : vec4<f32> = u_xlat0;
  let x_223 : vec3<f32> = (vec3<f32>(x_219.z, x_219.x, x_219.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat0;
  let x_230 : vec3<f32> = max(vec3<f32>(x_226.z, x_226.x, x_226.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat2;
  let x_235 : vec3<f32> = log2(vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat2;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_243 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat2;
  let x_247 : vec3<f32> = exp2(vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat2;
  let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_266 : vec4<f32> = u_xlat0;
  let x_269 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_266.z, x_266.x, x_266.y, x_266.z));
  u_xlatb3 = vec3<bool>(x_269.x, x_269.y, x_269.z);
  let x_272 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_272;
  let x_275 : bool = u_xlatb3.x;
  if (x_275) {
    let x_280 : f32 = u_xlat1.x;
    x_276 = x_280;
  } else {
    let x_283 : f32 = u_xlat2.x;
    x_276 = x_283;
  }
  let x_284 : f32 = x_276;
  hlslcc_movcTemp.x = x_284;
  let x_288 : bool = u_xlatb3.y;
  if (x_288) {
    let x_293 : f32 = u_xlat1.y;
    x_289 = x_293;
  } else {
    let x_296 : f32 = u_xlat2.y;
    x_289 = x_296;
  }
  let x_297 : f32 = x_289;
  hlslcc_movcTemp.y = x_297;
  let x_301 : bool = u_xlatb3.z;
  if (x_301) {
    let x_306 : f32 = u_xlat1.z;
    x_302 = x_306;
  } else {
    let x_309 : f32 = u_xlat2.z;
    x_302 = x_309;
  }
  let x_310 : f32 = x_302;
  hlslcc_movcTemp.z = x_310;
  let x_312 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_312;
  let x_315 : vec4<f32> = u_xlat1;
  let x_319 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_319.z, x_319.z, x_319.z));
  let x_323 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_323);
  let x_327 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_330 : vec2<f32> = (vec2<f32>(x_327.x, x_327.y) * vec2<f32>(0.5f, 0.5f));
  let x_331 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_330.x, x_330.y, x_331.z, x_331.w);
  let x_333 : vec3<f32> = u_xlat6;
  let x_336 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_339 : vec4<f32> = u_xlat2;
  let x_341 : vec2<f32> = ((vec2<f32>(x_333.y, x_333.z) * vec2<f32>(x_336.x, x_336.y)) + vec2<f32>(x_339.x, x_339.y));
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_342.x, x_341.x, x_341.y, x_342.w);
  let x_345 : f32 = u_xlat6.x;
  let x_347 : f32 = x_49.x_Lut2D_Params.y;
  let x_350 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_345 * x_347) + x_350);
  let x_358 : vec4<f32> = u_xlat2;
  let x_360 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_358.x, x_358.z));
  let x_361 : vec3<f32> = vec3<f32>(x_360.x, x_360.y, x_360.z);
  let x_362 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_365;
  u_xlat4.y = 0.0f;
  let x_370 : vec4<f32> = u_xlat2;
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_370.x, x_370.z) + vec2<f32>(x_372.x, x_372.y));
  let x_378 : vec2<f32> = u_xlat11;
  let x_379 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_378);
  let x_380 : vec3<f32> = vec3<f32>(x_379.x, x_379.y, x_379.z);
  let x_381 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : f32 = u_xlat1.x;
  let x_386 : f32 = x_49.x_Lut2D_Params.z;
  let x_389 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_384 * x_386) + -(x_389));
  let x_393 : vec4<f32> = u_xlat3;
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_393.x, x_393.y, x_393.z)) + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec3<f32> = u_xlat6;
  let x_403 : vec4<f32> = u_xlat3;
  let x_405 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.x, x_399.x) * x_401) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat1;
  let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_413 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat1;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat3;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_427 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat3;
  let x_432 : vec3<f32> = max(abs(vec3<f32>(x_429.x, x_429.y, x_429.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_433 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : vec4<f32> = u_xlat3;
  let x_437 : vec3<f32> = log2(vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat3;
  let x_444 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_445 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat3;
  let x_449 : vec3<f32> = exp2(vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_455 : vec4<f32> = u_xlat1;
  let x_457 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_455.x, x_455.y, x_455.z, x_455.x));
  u_xlatb1 = vec3<bool>(x_457.x, x_457.y, x_457.z);
  let x_460 : bool = u_xlatb1.x;
  if (x_460) {
    let x_465 : f32 = u_xlat2.x;
    x_461 = x_465;
  } else {
    let x_468 : f32 = u_xlat3.x;
    x_461 = x_468;
  }
  let x_469 : f32 = x_461;
  u_xlat0.x = x_469;
  let x_472 : bool = u_xlatb1.y;
  if (x_472) {
    let x_477 : f32 = u_xlat2.y;
    x_473 = x_477;
  } else {
    let x_480 : f32 = u_xlat3.y;
    x_473 = x_480;
  }
  let x_481 : f32 = x_473;
  u_xlat0.y = x_481;
  let x_484 : bool = u_xlatb1.z;
  if (x_484) {
    let x_489 : f32 = u_xlat2.z;
    x_485 = x_489;
  } else {
    let x_492 : f32 = u_xlat3.z;
    x_485 = x_492;
  }
  let x_493 : f32 = x_485;
  u_xlat0.z = x_493;
  let x_497 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_497);
  let x_501 : bool = u_xlatb1.x;
  if (x_501) {
    let x_504 : vec4<f32> = u_xlat0;
    let x_505 : vec3<f32> = vec3<f32>(x_504.x, x_504.y, x_504.z);
    let x_506 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
    let x_508 : vec4<f32> = u_xlat1;
    let x_512 : vec3<f32> = clamp(vec3<f32>(x_508.x, x_508.y, x_508.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_513 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
    let x_515 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_515.x, x_515.y, x_515.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_525 : vec4<f32> = u_xlat0;
  SV_Target0 = x_525;
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

