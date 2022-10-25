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
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Bloom_Texture_TexelSize : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

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
  var x_456 : f32;
  var x_468 : f32;
  var x_480 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_650 : f32;
  var x_662 : f32;
  var x_674 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
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
  let x_398 : vec3<f32> = clamp(vec3<f32>(x_394.x, x_394.y, x_394.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_403 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_403);
  let x_405 : bool = u_xlatb18;
  if (x_405) {
    let x_408 : vec4<f32> = u_xlat0;
    let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_413 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
    let x_415 : vec4<f32> = u_xlat0;
    let x_417 : vec3<f32> = log2(vec3<f32>(x_415.x, x_415.y, x_415.z));
    let x_418 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_420 : vec4<f32> = u_xlat2;
    let x_424 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_425 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
    let x_427 : vec4<f32> = u_xlat2;
    let x_429 : vec3<f32> = exp2(vec3<f32>(x_427.x, x_427.y, x_427.z));
    let x_430 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
    let x_432 : vec4<f32> = u_xlat2;
    let x_439 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_440 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
    let x_447 : vec4<f32> = u_xlat0;
    let x_450 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_447.x, x_447.y, x_447.z, x_447.x));
    u_xlatb3 = vec3<bool>(x_450.x, x_450.y, x_450.z);
    let x_453 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_453;
    let x_455 : bool = u_xlatb3.x;
    if (x_455) {
      let x_460 : f32 = u_xlat1.x;
      x_456 = x_460;
    } else {
      let x_463 : f32 = u_xlat2.x;
      x_456 = x_463;
    }
    let x_464 : f32 = x_456;
    hlslcc_movcTemp.x = x_464;
    let x_467 : bool = u_xlatb3.y;
    if (x_467) {
      let x_472 : f32 = u_xlat1.y;
      x_468 = x_472;
    } else {
      let x_475 : f32 = u_xlat2.y;
      x_468 = x_475;
    }
    let x_476 : f32 = x_468;
    hlslcc_movcTemp.y = x_476;
    let x_479 : bool = u_xlatb3.z;
    if (x_479) {
      let x_484 : f32 = u_xlat1.z;
      x_480 = x_484;
    } else {
      let x_487 : f32 = u_xlat2.z;
      x_480 = x_487;
    }
    let x_488 : f32 = x_480;
    hlslcc_movcTemp.z = x_488;
    let x_490 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_490;
    let x_491 : vec4<f32> = u_xlat1;
    let x_494 : vec4<f32> = x_26.x_UserLut_Params;
    let x_496 : vec3<f32> = (vec3<f32>(x_491.z, x_491.x, x_491.y) * vec3<f32>(x_494.z, x_494.z, x_494.z));
    let x_497 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
    let x_500 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_500);
    let x_503 : vec4<f32> = x_26.x_UserLut_Params;
    let x_505 : vec2<f32> = (vec2<f32>(x_503.x, x_503.y) * vec2<f32>(0.5f, 0.5f));
    let x_506 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_505.x, x_506.y, x_506.z, x_505.y);
    let x_508 : vec4<f32> = u_xlat2;
    let x_511 : vec4<f32> = x_26.x_UserLut_Params;
    let x_514 : vec4<f32> = u_xlat2;
    let x_516 : vec2<f32> = ((vec2<f32>(x_508.y, x_508.z) * vec2<f32>(x_511.x, x_511.y)) + vec2<f32>(x_514.x, x_514.w));
    let x_517 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_517.x, x_516.x, x_516.y, x_517.w);
    let x_519 : f32 = u_xlat18;
    let x_521 : f32 = x_26.x_UserLut_Params.y;
    let x_524 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_519 * x_521) + x_524);
    let x_531 : vec4<f32> = u_xlat2;
    let x_533 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_531.x, x_531.z), 0.0f);
    let x_534 : vec3<f32> = vec3<f32>(x_533.x, x_533.y, x_533.z);
    let x_535 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
    let x_538 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_538;
    u_xlat4.y = 0.0f;
    let x_541 : vec4<f32> = u_xlat2;
    let x_543 : vec4<f32> = u_xlat4;
    let x_545 : vec2<f32> = (vec2<f32>(x_541.x, x_541.z) + vec2<f32>(x_543.x, x_543.y));
    let x_546 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
    let x_551 : vec4<f32> = u_xlat2;
    let x_553 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_551.x, x_551.y), 0.0f);
    let x_554 : vec3<f32> = vec3<f32>(x_553.x, x_553.y, x_553.z);
    let x_555 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
    let x_558 : f32 = u_xlat1.z;
    let x_560 : f32 = x_26.x_UserLut_Params.z;
    let x_562 : f32 = u_xlat18;
    u_xlat18 = ((x_558 * x_560) + -(x_562));
    let x_565 : vec4<f32> = u_xlat3;
    let x_568 : vec4<f32> = u_xlat2;
    let x_570 : vec3<f32> = (-(vec3<f32>(x_565.x, x_565.y, x_565.z)) + vec3<f32>(x_568.x, x_568.y, x_568.z));
    let x_571 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
    let x_573 : f32 = u_xlat18;
    let x_575 : vec4<f32> = u_xlat2;
    let x_578 : vec4<f32> = u_xlat3;
    let x_580 : vec3<f32> = ((vec3<f32>(x_573, x_573, x_573) * vec3<f32>(x_575.x, x_575.y, x_575.z)) + vec3<f32>(x_578.x, x_578.y, x_578.z));
    let x_581 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
    let x_583 : vec4<f32> = u_xlat1;
    let x_586 : vec4<f32> = u_xlat2;
    let x_588 : vec3<f32> = (-(vec3<f32>(x_583.x, x_583.y, x_583.z)) + vec3<f32>(x_586.x, x_586.y, x_586.z));
    let x_589 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
    let x_592 : vec4<f32> = x_26.x_UserLut_Params;
    let x_594 : vec4<f32> = u_xlat2;
    let x_597 : vec4<f32> = u_xlat1;
    let x_599 : vec3<f32> = ((vec3<f32>(x_592.w, x_592.w, x_592.w) * vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(x_597.x, x_597.y, x_597.z));
    let x_600 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
    let x_602 : vec4<f32> = u_xlat1;
    let x_606 : vec3<f32> = (vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_607 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
    let x_609 : vec4<f32> = u_xlat1;
    let x_613 : vec3<f32> = (vec3<f32>(x_609.x, x_609.y, x_609.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_614 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
    let x_616 : vec4<f32> = u_xlat3;
    let x_620 : vec3<f32> = (vec3<f32>(x_616.x, x_616.y, x_616.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_621 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
    let x_623 : vec4<f32> = u_xlat3;
    let x_626 : vec3<f32> = log2(abs(vec3<f32>(x_623.x, x_623.y, x_623.z)));
    let x_627 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
    let x_629 : vec4<f32> = u_xlat3;
    let x_633 : vec3<f32> = (vec3<f32>(x_629.x, x_629.y, x_629.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_634 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
    let x_636 : vec4<f32> = u_xlat3;
    let x_638 : vec3<f32> = exp2(vec3<f32>(x_636.x, x_636.y, x_636.z));
    let x_639 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
    let x_644 : vec4<f32> = u_xlat1;
    let x_646 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_644.x, x_644.y, x_644.z, x_644.x));
    u_xlatb1 = vec3<bool>(x_646.x, x_646.y, x_646.z);
    let x_649 : bool = u_xlatb1.x;
    if (x_649) {
      let x_654 : f32 = u_xlat2.x;
      x_650 = x_654;
    } else {
      let x_657 : f32 = u_xlat3.x;
      x_650 = x_657;
    }
    let x_658 : f32 = x_650;
    u_xlat0.x = x_658;
    let x_661 : bool = u_xlatb1.y;
    if (x_661) {
      let x_666 : f32 = u_xlat2.y;
      x_662 = x_666;
    } else {
      let x_669 : f32 = u_xlat3.y;
      x_662 = x_669;
    }
    let x_670 : f32 = x_662;
    u_xlat0.y = x_670;
    let x_673 : bool = u_xlatb1.z;
    if (x_673) {
      let x_678 : f32 = u_xlat2.z;
      x_674 = x_678;
    } else {
      let x_681 : f32 = u_xlat3.z;
      x_674 = x_681;
    }
    let x_682 : f32 = x_674;
    u_xlat0.z = x_682;
  }
  let x_684 : vec4<f32> = u_xlat0;
  let x_687 : vec4<f32> = x_26.x_Lut_Params;
  let x_689 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(x_687.z, x_687.z, x_687.z));
  let x_690 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_689.z);
  let x_693 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_693);
  let x_696 : vec4<f32> = x_26.x_Lut_Params;
  let x_698 : vec2<f32> = (vec2<f32>(x_696.x, x_696.y) * vec2<f32>(0.5f, 0.5f));
  let x_699 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat0;
  let x_704 : vec4<f32> = x_26.x_Lut_Params;
  let x_707 : vec4<f32> = u_xlat1;
  let x_709 : vec2<f32> = ((vec2<f32>(x_701.x, x_701.y) * vec2<f32>(x_704.x, x_704.y)) + vec2<f32>(x_707.x, x_707.y));
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_710.x, x_709.x, x_709.y, x_710.w);
  let x_712 : f32 = u_xlat18;
  let x_714 : f32 = x_26.x_Lut_Params.y;
  let x_717 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_712 * x_714) + x_717);
  let x_724 : vec4<f32> = u_xlat1;
  let x_726 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_724.x, x_724.z), 0.0f);
  let x_727 : vec3<f32> = vec3<f32>(x_726.x, x_726.y, x_726.z);
  let x_728 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_731 : f32 = x_26.x_Lut_Params.y;
  u_xlat0.x = x_731;
  u_xlat0.y = 0.0f;
  let x_734 : vec4<f32> = u_xlat0;
  let x_736 : vec4<f32> = u_xlat1;
  let x_738 : vec2<f32> = (vec2<f32>(x_734.x, x_734.y) + vec2<f32>(x_736.x, x_736.z));
  let x_739 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_738.x, x_738.y, x_739.z, x_739.w);
  let x_744 : vec4<f32> = u_xlat0;
  let x_746 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_744.x, x_744.y), 0.0f);
  let x_747 : vec3<f32> = vec3<f32>(x_746.x, x_746.y, x_746.z);
  let x_748 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_751 : f32 = u_xlat0.z;
  let x_753 : f32 = x_26.x_Lut_Params.z;
  let x_755 : f32 = u_xlat18;
  u_xlat0.x = ((x_751 * x_753) + -(x_755));
  let x_761 : vec4<f32> = u_xlat2;
  let x_764 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_761.x, x_761.y, x_761.z)) + vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat0;
  let x_769 : vec3<f32> = u_xlat6;
  let x_771 : vec4<f32> = u_xlat2;
  let x_773 : vec3<f32> = ((vec3<f32>(x_767.x, x_767.x, x_767.x) * x_769) + vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec2<f32> = vs_TEXCOORD0;
  let x_779 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_783 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_785 : vec2<f32> = ((x_776 * vec2<f32>(x_779.x, x_779.y)) + vec2<f32>(x_783.z, x_783.w));
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_785.x, x_785.y, x_786.z, x_786.w);
  let x_793 : vec4<f32> = u_xlat1;
  let x_796 : f32 = x_26.x_GlobalMipBias.x;
  let x_797 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_793.x, x_793.y), x_796);
  u_xlat18 = x_797.w;
  let x_799 : f32 = u_xlat18;
  u_xlat18 = (x_799 + -0.5f);
  let x_801 : f32 = u_xlat18;
  let x_802 : f32 = u_xlat18;
  u_xlat18 = (x_801 + x_802);
  let x_804 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_804.x, x_804.y, x_804.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_813 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_813);
  let x_818 : f32 = x_26.x_Grain_Params.y;
  let x_820 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_818 * -(x_820)) + 1.0f);
  let x_826 : f32 = u_xlat18;
  let x_828 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_826, x_826, x_826) * vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec3<f32> = u_xlat7;
  let x_834 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat7 = (x_831 * vec3<f32>(x_834.x, x_834.x, x_834.x));
  let x_839 : vec3<f32> = u_xlat7;
  let x_840 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = u_xlat0;
  let x_845 : vec3<f32> = ((x_839 * vec3<f32>(x_840.x, x_840.x, x_840.x)) + vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
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

