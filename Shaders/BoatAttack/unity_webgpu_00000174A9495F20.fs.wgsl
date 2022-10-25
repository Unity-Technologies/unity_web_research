struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Bloom_Texture_TexelSize : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat13 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlat18 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_520 : f32;
  var x_532 : f32;
  var x_544 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_714 : f32;
  var x_726 : f32;
  var x_738 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_874 : f32;
  var x_886 : f32;
  var x_898 : f32;
  var x_988 : f32;
  var x_1000 : f32;
  var x_1012 : f32;
  var x_1069 : f32;
  var x_1081 : f32;
  var x_1093 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_33);
  let x_36 : vec3<f32> = vec3<f32>(x_34.x, x_34.y, x_34.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_44 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  let x_49 : vec2<f32> = ((x_40 * vec2<f32>(x_44.z, x_44.w)) + vec2<f32>(0.5f, 0.5f));
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_49.x, x_49.y, x_50.z, x_50.w);
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat13 = floor(vec2<f32>(x_54.x, x_54.y));
  let x_57 : vec4<f32> = u_xlat1;
  let x_59 : vec2<f32> = fract(vec2<f32>(x_57.x, x_57.y));
  let x_60 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_59.x, x_59.y, x_60.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat2 = ((-(vec4<f32>(x_63.x, x_63.y, x_63.x, x_63.y)) * vec4<f32>(0.5f, 0.5f, 0.166666672f, 0.166666672f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_71 : vec4<f32> = u_xlat1;
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_71.x, x_71.y, x_71.x, x_71.y) * x_73) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_79 : vec4<f32> = u_xlat1;
  let x_84 : vec2<f32> = ((vec2<f32>(x_79.x, x_79.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_85 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_84.x, x_84.y, x_85.z, x_85.w);
  let x_88 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_90.x, x_90.y));
  let x_93 : vec2<f32> = u_xlat15;
  let x_94 : vec4<f32> = u_xlat3;
  let x_99 : vec2<f32> = ((x_93 * vec2<f32>(x_94.x, x_94.y)) + vec2<f32>(0.666666687f, 0.666666687f));
  let x_100 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_100.w);
  let x_102 : vec4<f32> = u_xlat1;
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_102.x, x_102.y, x_102.x, x_102.y) * x_104) + vec4<f32>(0.166666672f, 0.166666672f, 0.166666672f, 0.166666672f));
  let x_108 : vec4<f32> = u_xlat3;
  let x_113 : vec2<f32> = (-(vec2<f32>(x_108.x, x_108.y)) + vec2<f32>(1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_119 : vec4<f32> = u_xlat1;
  let x_121 : vec2<f32> = (-(vec2<f32>(x_116.x, x_116.y)) + vec2<f32>(x_119.x, x_119.y));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec2<f32> = (-(vec2<f32>(x_124.z, x_124.w)) + vec2<f32>(x_127.x, x_127.y));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_133 : vec4<f32> = u_xlat3;
  let x_135 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec2<f32>(x_133.x, x_133.y) + vec2<f32>(x_135.z, x_135.w));
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec4<f32> = u_xlat2;
  let x_142 : vec2<f32> = (vec2<f32>(x_138.x, x_138.y) + vec2<f32>(x_140.x, x_140.y));
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_142.x, x_142.y, x_143.z, x_143.w);
  let x_145 : vec2<f32> = u_xlat14;
  u_xlat15 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_145.x, x_145.y));
  let x_150 : vec4<f32> = u_xlat3;
  let x_152 : vec2<f32> = u_xlat15;
  let x_154 : vec2<f32> = ((vec2<f32>(x_150.x, x_150.y) * x_152) + vec2<f32>(-1.0f, -1.0f));
  let x_155 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_155.x, x_155.y, x_154.x, x_154.y);
  let x_158 : vec4<f32> = u_xlat2;
  let x_159 : vec2<f32> = vec2<f32>(x_158.x, x_158.y);
  let x_163 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_159.x, x_159.y));
  let x_164 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_163.x, x_163.y, x_164.z, x_164.w);
  let x_166 : vec4<f32> = u_xlat1;
  let x_168 : vec4<f32> = u_xlat4;
  let x_171 : vec2<f32> = ((vec2<f32>(x_166.x, x_166.y) * vec2<f32>(x_168.x, x_168.y)) + vec2<f32>(1.0f, 1.0f));
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_171.x, x_171.y, x_172.z, x_172.w);
  let x_174 : vec2<f32> = u_xlat13;
  let x_176 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_174.x, x_174.y, x_174.x, x_174.y) + vec4<f32>(x_176.z, x_176.w, x_176.x, x_176.w));
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_179 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_182 : vec4<f32> = u_xlat4;
  let x_184 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  u_xlat4 = (x_182 * vec4<f32>(x_184.x, x_184.y, x_184.x, x_184.y));
  let x_187 : vec4<f32> = u_xlat4;
  u_xlat4 = min(x_187, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_195 : vec4<f32> = u_xlat4;
  let x_198 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_195.x, x_195.y), 0.0f);
  u_xlat5 = x_198;
  let x_202 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_202.z, x_202.w), 0.0f);
  u_xlat4 = x_204;
  let x_205 : vec4<f32> = u_xlat2;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat4 = (vec4<f32>(x_205.x, x_205.x, x_205.x, x_205.x) * x_207);
  let x_209 : vec2<f32> = u_xlat14;
  let x_211 : vec4<f32> = u_xlat5;
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_209.x, x_209.x, x_209.x, x_209.x) * x_211) + x_213);
  let x_215 : vec2<f32> = u_xlat13;
  let x_217 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_215.x, x_215.y, x_215.x, x_215.y) + vec4<f32>(x_217.z, x_217.y, x_217.x, x_217.y));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_220 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  u_xlat1 = (x_222 * vec4<f32>(x_224.x, x_224.y, x_224.x, x_224.y));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = min(x_227, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_232.x, x_232.y), 0.0f);
  u_xlat3 = x_234;
  let x_238 : vec4<f32> = u_xlat1;
  let x_240 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_238.z, x_238.w), 0.0f);
  u_xlat1 = x_240;
  let x_241 : vec4<f32> = u_xlat1;
  let x_242 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_241 * vec4<f32>(x_242.x, x_242.x, x_242.x, x_242.x));
  let x_245 : vec2<f32> = u_xlat14;
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_245.x, x_245.x, x_245.x, x_245.x) * x_247) + x_249);
  let x_251 : vec4<f32> = u_xlat1;
  let x_252 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_251 * vec4<f32>(x_252.y, x_252.y, x_252.y, x_252.y));
  let x_255 : vec2<f32> = u_xlat14;
  let x_257 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_255.y, x_255.y, x_255.y, x_255.y) * x_257) + x_259);
  let x_266 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb18 = (0.0f < x_266);
  let x_268 : bool = u_xlatb18;
  if (x_268) {
    let x_271 : vec4<f32> = u_xlat1;
    let x_273 : vec4<f32> = u_xlat1;
    let x_275 : vec3<f32> = (vec3<f32>(x_271.w, x_271.w, x_271.w) * vec3<f32>(x_273.x, x_273.y, x_273.z));
    let x_276 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
    let x_278 : vec4<f32> = u_xlat2;
    let x_282 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_283 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  }
  let x_285 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = x_26.x_Bloom_Params;
  let x_291 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_289.x, x_289.x, x_289.x));
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = x_26.x_Bloom_Params;
  let x_300 : vec4<f32> = u_xlat0;
  let x_302 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_297.y, x_297.z, x_297.w)) + vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_308 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_308);
  let x_310 : bool = u_xlatb18;
  if (x_310) {
    let x_313 : vec2<f32> = vs_TEXCOORD0;
    let x_315 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_318 : vec2<f32> = (x_313 + -(vec2<f32>(x_315.x, x_315.y)));
    let x_319 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_318.x, x_318.y, x_319.z, x_319.w);
    let x_321 : vec4<f32> = u_xlat1;
    let x_325 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_327 : vec2<f32> = (abs(vec2<f32>(x_321.x, x_321.y)) * vec2<f32>(x_325.z, x_325.z));
    let x_328 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_328.x, x_327.x, x_327.y, x_328.w);
    let x_333 : f32 = u_xlat1.y;
    let x_337 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_333 * x_337);
    let x_341 : vec4<f32> = u_xlat1;
    let x_343 : vec4<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_341.x, x_341.z), vec2<f32>(x_343.x, x_343.z));
    let x_346 : f32 = u_xlat18;
    u_xlat18 = (-(x_346) + 1.0f);
    let x_349 : f32 = u_xlat18;
    u_xlat18 = max(x_349, 0.0f);
    let x_351 : f32 = u_xlat18;
    u_xlat18 = log2(x_351);
    let x_353 : f32 = u_xlat18;
    let x_355 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat18 = (x_353 * x_355);
    let x_357 : f32 = u_xlat18;
    u_xlat18 = exp2(x_357);
    let x_360 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_364 : vec3<f32> = (-(vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_365 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_367 : f32 = u_xlat18;
    let x_369 : vec4<f32> = u_xlat1;
    let x_373 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_375 : vec3<f32> = ((vec3<f32>(x_367, x_367, x_367) * vec3<f32>(x_369.x, x_369.y, x_369.z)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
    let x_376 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
    let x_378 : vec4<f32> = u_xlat0;
    let x_380 : vec4<f32> = u_xlat1;
    let x_382 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(x_380.x, x_380.y, x_380.z));
    let x_383 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  }
  let x_385 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = x_26.x_Lut_Params;
  let x_391 : vec3<f32> = (vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_389.w, x_389.w, x_389.w));
  let x_392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat0;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_399 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat0;
  let x_408 : vec3<f32> = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat1;
  let x_413 : vec4<f32> = u_xlat2;
  let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.x, x_413.y, x_413.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_419 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat0;
  let x_426 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec4<f32> = u_xlat0;
  let x_436 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_431.x, x_431.y, x_431.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat2;
  let x_441 : vec4<f32> = u_xlat0;
  let x_443 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) / vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat0;
  let x_450 : vec3<f32> = (vec3<f32>(x_446.x, x_446.y, x_446.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_451 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat0;
  let x_455 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_456 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat0;
  let x_462 : vec3<f32> = clamp(vec3<f32>(x_458.x, x_458.y, x_458.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_463 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_467 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_467);
  let x_469 : bool = u_xlatb18;
  if (x_469) {
    let x_472 : vec4<f32> = u_xlat0;
    let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_477 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
    let x_479 : vec4<f32> = u_xlat0;
    let x_481 : vec3<f32> = log2(vec3<f32>(x_479.x, x_479.y, x_479.z));
    let x_482 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
    let x_484 : vec4<f32> = u_xlat2;
    let x_488 : vec3<f32> = (vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_489 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
    let x_491 : vec4<f32> = u_xlat2;
    let x_493 : vec3<f32> = exp2(vec3<f32>(x_491.x, x_491.y, x_491.z));
    let x_494 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
    let x_496 : vec4<f32> = u_xlat2;
    let x_503 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_504 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
    let x_511 : vec4<f32> = u_xlat0;
    let x_514 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_511.x, x_511.y, x_511.z, x_511.x));
    u_xlatb3 = vec3<bool>(x_514.x, x_514.y, x_514.z);
    let x_517 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_517;
    let x_519 : bool = u_xlatb3.x;
    if (x_519) {
      let x_524 : f32 = u_xlat1.x;
      x_520 = x_524;
    } else {
      let x_527 : f32 = u_xlat2.x;
      x_520 = x_527;
    }
    let x_528 : f32 = x_520;
    hlslcc_movcTemp.x = x_528;
    let x_531 : bool = u_xlatb3.y;
    if (x_531) {
      let x_536 : f32 = u_xlat1.y;
      x_532 = x_536;
    } else {
      let x_539 : f32 = u_xlat2.y;
      x_532 = x_539;
    }
    let x_540 : f32 = x_532;
    hlslcc_movcTemp.y = x_540;
    let x_543 : bool = u_xlatb3.z;
    if (x_543) {
      let x_548 : f32 = u_xlat1.z;
      x_544 = x_548;
    } else {
      let x_551 : f32 = u_xlat2.z;
      x_544 = x_551;
    }
    let x_552 : f32 = x_544;
    hlslcc_movcTemp.z = x_552;
    let x_554 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_554;
    let x_555 : vec4<f32> = u_xlat1;
    let x_558 : vec4<f32> = x_26.x_UserLut_Params;
    let x_560 : vec3<f32> = (vec3<f32>(x_555.z, x_555.x, x_555.y) * vec3<f32>(x_558.z, x_558.z, x_558.z));
    let x_561 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
    let x_564 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_564);
    let x_567 : vec4<f32> = x_26.x_UserLut_Params;
    let x_569 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) * vec2<f32>(0.5f, 0.5f));
    let x_570 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_569.x, x_570.y, x_570.z, x_569.y);
    let x_572 : vec4<f32> = u_xlat2;
    let x_575 : vec4<f32> = x_26.x_UserLut_Params;
    let x_578 : vec4<f32> = u_xlat2;
    let x_580 : vec2<f32> = ((vec2<f32>(x_572.y, x_572.z) * vec2<f32>(x_575.x, x_575.y)) + vec2<f32>(x_578.x, x_578.w));
    let x_581 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_581.x, x_580.x, x_580.y, x_581.w);
    let x_583 : f32 = u_xlat18;
    let x_585 : f32 = x_26.x_UserLut_Params.y;
    let x_588 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_583 * x_585) + x_588);
    let x_595 : vec4<f32> = u_xlat2;
    let x_597 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_595.x, x_595.z), 0.0f);
    let x_598 : vec3<f32> = vec3<f32>(x_597.x, x_597.y, x_597.z);
    let x_599 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
    let x_602 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_602;
    u_xlat4.y = 0.0f;
    let x_605 : vec4<f32> = u_xlat2;
    let x_607 : vec4<f32> = u_xlat4;
    let x_609 : vec2<f32> = (vec2<f32>(x_605.x, x_605.z) + vec2<f32>(x_607.x, x_607.y));
    let x_610 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
    let x_615 : vec4<f32> = u_xlat2;
    let x_617 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_615.x, x_615.y), 0.0f);
    let x_618 : vec3<f32> = vec3<f32>(x_617.x, x_617.y, x_617.z);
    let x_619 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
    let x_622 : f32 = u_xlat1.z;
    let x_624 : f32 = x_26.x_UserLut_Params.z;
    let x_626 : f32 = u_xlat18;
    u_xlat18 = ((x_622 * x_624) + -(x_626));
    let x_629 : vec4<f32> = u_xlat3;
    let x_632 : vec4<f32> = u_xlat2;
    let x_634 : vec3<f32> = (-(vec3<f32>(x_629.x, x_629.y, x_629.z)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
    let x_635 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
    let x_637 : f32 = u_xlat18;
    let x_639 : vec4<f32> = u_xlat2;
    let x_642 : vec4<f32> = u_xlat3;
    let x_644 : vec3<f32> = ((vec3<f32>(x_637, x_637, x_637) * vec3<f32>(x_639.x, x_639.y, x_639.z)) + vec3<f32>(x_642.x, x_642.y, x_642.z));
    let x_645 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
    let x_647 : vec4<f32> = u_xlat1;
    let x_650 : vec4<f32> = u_xlat2;
    let x_652 : vec3<f32> = (-(vec3<f32>(x_647.x, x_647.y, x_647.z)) + vec3<f32>(x_650.x, x_650.y, x_650.z));
    let x_653 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
    let x_656 : vec4<f32> = x_26.x_UserLut_Params;
    let x_658 : vec4<f32> = u_xlat2;
    let x_661 : vec4<f32> = u_xlat1;
    let x_663 : vec3<f32> = ((vec3<f32>(x_656.w, x_656.w, x_656.w) * vec3<f32>(x_658.x, x_658.y, x_658.z)) + vec3<f32>(x_661.x, x_661.y, x_661.z));
    let x_664 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
    let x_666 : vec4<f32> = u_xlat1;
    let x_670 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_671 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
    let x_673 : vec4<f32> = u_xlat1;
    let x_677 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_678 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
    let x_680 : vec4<f32> = u_xlat3;
    let x_684 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_685 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
    let x_687 : vec4<f32> = u_xlat3;
    let x_690 : vec3<f32> = log2(abs(vec3<f32>(x_687.x, x_687.y, x_687.z)));
    let x_691 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
    let x_693 : vec4<f32> = u_xlat3;
    let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_698 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
    let x_700 : vec4<f32> = u_xlat3;
    let x_702 : vec3<f32> = exp2(vec3<f32>(x_700.x, x_700.y, x_700.z));
    let x_703 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
    let x_708 : vec4<f32> = u_xlat1;
    let x_710 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_708.x, x_708.y, x_708.z, x_708.x));
    u_xlatb1 = vec3<bool>(x_710.x, x_710.y, x_710.z);
    let x_713 : bool = u_xlatb1.x;
    if (x_713) {
      let x_718 : f32 = u_xlat2.x;
      x_714 = x_718;
    } else {
      let x_721 : f32 = u_xlat3.x;
      x_714 = x_721;
    }
    let x_722 : f32 = x_714;
    u_xlat0.x = x_722;
    let x_725 : bool = u_xlatb1.y;
    if (x_725) {
      let x_730 : f32 = u_xlat2.y;
      x_726 = x_730;
    } else {
      let x_733 : f32 = u_xlat3.y;
      x_726 = x_733;
    }
    let x_734 : f32 = x_726;
    u_xlat0.y = x_734;
    let x_737 : bool = u_xlatb1.z;
    if (x_737) {
      let x_742 : f32 = u_xlat2.z;
      x_738 = x_742;
    } else {
      let x_745 : f32 = u_xlat3.z;
      x_738 = x_745;
    }
    let x_746 : f32 = x_738;
    u_xlat0.z = x_746;
  }
  let x_748 : vec4<f32> = u_xlat0;
  let x_751 : vec4<f32> = x_26.x_Lut_Params;
  let x_753 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(x_751.z, x_751.z, x_751.z));
  let x_754 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_753.z);
  let x_757 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_757);
  let x_760 : vec4<f32> = x_26.x_Lut_Params;
  let x_762 : vec2<f32> = (vec2<f32>(x_760.x, x_760.y) * vec2<f32>(0.5f, 0.5f));
  let x_763 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat0;
  let x_768 : vec4<f32> = x_26.x_Lut_Params;
  let x_771 : vec4<f32> = u_xlat1;
  let x_773 : vec2<f32> = ((vec2<f32>(x_765.x, x_765.y) * vec2<f32>(x_768.x, x_768.y)) + vec2<f32>(x_771.x, x_771.y));
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_774.x, x_773.x, x_773.y, x_774.w);
  let x_776 : f32 = u_xlat18;
  let x_778 : f32 = x_26.x_Lut_Params.y;
  let x_781 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_776 * x_778) + x_781);
  let x_788 : vec4<f32> = u_xlat1;
  let x_790 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_788.x, x_788.z), 0.0f);
  let x_791 : vec3<f32> = vec3<f32>(x_790.x, x_790.y, x_790.z);
  let x_792 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_795 : f32 = x_26.x_Lut_Params.y;
  u_xlat0.x = x_795;
  u_xlat0.y = 0.0f;
  let x_798 : vec4<f32> = u_xlat0;
  let x_800 : vec4<f32> = u_xlat1;
  let x_802 : vec2<f32> = (vec2<f32>(x_798.x, x_798.y) + vec2<f32>(x_800.x, x_800.z));
  let x_803 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
  let x_808 : vec4<f32> = u_xlat0;
  let x_810 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_808.x, x_808.y), 0.0f);
  let x_811 : vec3<f32> = vec3<f32>(x_810.x, x_810.y, x_810.z);
  let x_812 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_815 : f32 = u_xlat0.z;
  let x_817 : f32 = x_26.x_Lut_Params.z;
  let x_819 : f32 = u_xlat18;
  u_xlat0.x = ((x_815 * x_817) + -(x_819));
  let x_825 : vec4<f32> = u_xlat2;
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_825.x, x_825.y, x_825.z)) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat0;
  let x_833 : vec3<f32> = u_xlat6;
  let x_835 : vec4<f32> = u_xlat2;
  let x_837 : vec3<f32> = ((vec3<f32>(x_831.x, x_831.x, x_831.x) * x_833) + vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat0;
  let x_842 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat0;
  let x_848 : vec3<f32> = log2(abs(vec3<f32>(x_845.x, x_845.y, x_845.z)));
  let x_849 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec4<f32> = u_xlat2;
  let x_853 : vec3<f32> = (vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_854 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat2;
  let x_858 : vec3<f32> = exp2(vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat2;
  let x_864 : vec3<f32> = ((vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_865 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_868 : vec4<f32> = u_xlat0;
  let x_870 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_868.x, x_868.y, x_868.z, x_868.x));
  u_xlatb0 = vec3<bool>(x_870.x, x_870.y, x_870.z);
  let x_873 : bool = u_xlatb0.x;
  if (x_873) {
    let x_878 : f32 = u_xlat1.x;
    x_874 = x_878;
  } else {
    let x_881 : f32 = u_xlat2.x;
    x_874 = x_881;
  }
  let x_882 : f32 = x_874;
  u_xlat0.x = x_882;
  let x_885 : bool = u_xlatb0.y;
  if (x_885) {
    let x_890 : f32 = u_xlat1.y;
    x_886 = x_890;
  } else {
    let x_893 : f32 = u_xlat2.y;
    x_886 = x_893;
  }
  let x_894 : f32 = x_886;
  u_xlat0.y = x_894;
  let x_897 : bool = u_xlatb0.z;
  if (x_897) {
    let x_902 : f32 = u_xlat1.z;
    x_898 = x_902;
  } else {
    let x_905 : f32 = u_xlat2.z;
    x_898 = x_905;
  }
  let x_906 : f32 = x_898;
  u_xlat0.z = x_906;
  let x_908 : vec2<f32> = vs_TEXCOORD0;
  let x_911 : vec4<f32> = x_26.x_Dithering_Params;
  let x_915 : vec4<f32> = x_26.x_Dithering_Params;
  let x_917 : vec2<f32> = ((x_908 * vec2<f32>(x_911.x, x_911.y)) + vec2<f32>(x_915.z, x_915.w));
  let x_918 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
  let x_925 : vec4<f32> = u_xlat1;
  let x_928 : f32 = x_26.x_GlobalMipBias.x;
  let x_929 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_925.x, x_925.y), x_928);
  u_xlat18 = x_929.w;
  let x_931 : f32 = u_xlat18;
  u_xlat18 = ((x_931 * 2.0f) + -1.0f);
  let x_935 : f32 = u_xlat18;
  u_xlatb1.x = (x_935 >= 0.0f);
  let x_939 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_939);
  let x_942 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_942)) + 1.0f);
  let x_946 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_946);
  let x_948 : f32 = u_xlat18;
  u_xlat18 = (-(x_948) + 1.0f);
  let x_951 : f32 = u_xlat18;
  let x_953 : f32 = u_xlat1.x;
  u_xlat18 = (x_951 * x_953);
  let x_955 : vec4<f32> = u_xlat0;
  let x_957 : vec3<f32> = (vec3<f32>(x_955.x, x_955.y, x_955.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_958 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_960 : vec4<f32> = u_xlat0;
  let x_963 : vec3<f32> = log2(abs(vec3<f32>(x_960.x, x_960.y, x_960.z)));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat2;
  let x_968 : vec3<f32> = (vec3<f32>(x_966.x, x_966.y, x_966.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_969 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : vec4<f32> = u_xlat2;
  let x_973 : vec3<f32> = exp2(vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat2;
  let x_979 : vec3<f32> = ((vec3<f32>(x_976.x, x_976.y, x_976.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_980 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec4<f32> = u_xlat0;
  let x_984 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_982.x, x_982.y, x_982.z, x_982.x));
  u_xlatb0 = vec3<bool>(x_984.x, x_984.y, x_984.z);
  let x_987 : bool = u_xlatb0.x;
  if (x_987) {
    let x_992 : f32 = u_xlat1.x;
    x_988 = x_992;
  } else {
    let x_995 : f32 = u_xlat2.x;
    x_988 = x_995;
  }
  let x_996 : f32 = x_988;
  u_xlat0.x = x_996;
  let x_999 : bool = u_xlatb0.y;
  if (x_999) {
    let x_1004 : f32 = u_xlat1.y;
    x_1000 = x_1004;
  } else {
    let x_1007 : f32 = u_xlat2.y;
    x_1000 = x_1007;
  }
  let x_1008 : f32 = x_1000;
  u_xlat0.y = x_1008;
  let x_1011 : bool = u_xlatb0.z;
  if (x_1011) {
    let x_1016 : f32 = u_xlat1.z;
    x_1012 = x_1016;
  } else {
    let x_1019 : f32 = u_xlat2.z;
    x_1012 = x_1019;
  }
  let x_1020 : f32 = x_1012;
  u_xlat0.z = x_1020;
  let x_1022 : f32 = u_xlat18;
  let x_1027 : vec4<f32> = u_xlat0;
  let x_1029 : vec3<f32> = ((vec3<f32>(x_1022, x_1022, x_1022) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat0;
  let x_1034 : vec3<f32> = (vec3<f32>(x_1032.x, x_1032.y, x_1032.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1035 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec4<f32> = u_xlat0;
  let x_1039 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.y, x_1037.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1040 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1042 : vec4<f32> = u_xlat2;
  let x_1044 : vec3<f32> = (vec3<f32>(x_1042.x, x_1042.y, x_1042.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1045 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat2;
  let x_1050 : vec3<f32> = log2(abs(vec3<f32>(x_1047.x, x_1047.y, x_1047.z)));
  let x_1051 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1053 : vec4<f32> = u_xlat2;
  let x_1055 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.y, x_1053.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1056 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
  let x_1058 : vec4<f32> = u_xlat2;
  let x_1060 : vec3<f32> = exp2(vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec4<f32> = u_xlat0;
  let x_1065 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1063.x));
  u_xlatb0 = vec3<bool>(x_1065.x, x_1065.y, x_1065.z);
  let x_1068 : bool = u_xlatb0.x;
  if (x_1068) {
    let x_1073 : f32 = u_xlat1.x;
    x_1069 = x_1073;
  } else {
    let x_1076 : f32 = u_xlat2.x;
    x_1069 = x_1076;
  }
  let x_1077 : f32 = x_1069;
  u_xlat0.x = x_1077;
  let x_1080 : bool = u_xlatb0.y;
  if (x_1080) {
    let x_1085 : f32 = u_xlat1.y;
    x_1081 = x_1085;
  } else {
    let x_1088 : f32 = u_xlat2.y;
    x_1081 = x_1088;
  }
  let x_1089 : f32 = x_1081;
  u_xlat0.y = x_1089;
  let x_1092 : bool = u_xlatb0.z;
  if (x_1092) {
    let x_1097 : f32 = u_xlat1.z;
    x_1093 = x_1097;
  } else {
    let x_1100 : f32 = u_xlat2.z;
    x_1093 = x_1100;
  }
  let x_1101 : f32 = x_1093;
  u_xlat0.z = x_1101;
  let x_1105 : vec4<f32> = u_xlat0;
  let x_1108 : vec3<f32> = max(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1109 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

