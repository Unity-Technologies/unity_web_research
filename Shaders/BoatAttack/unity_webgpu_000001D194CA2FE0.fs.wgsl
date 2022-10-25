struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_SourceSize : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var sampler_PointClamp : sampler;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

@group(0) @binding(2) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlati0 : vec4<i32>;
  var u_xlati1 : vec4<i32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatu0 : vec4<u32>;
  var u_xlatu1 : vec4<u32>;
  var u_xlatu2 : vec4<u32>;
  var u_xlatu3 : vec4<u32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat10 : f32;
  var u_xlat15 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb1 : bool;
  var u_xlatb0 : vec3<bool>;
  var x_517 : vec3<f32>;
  var x_637 : f32;
  var x_649 : f32;
  var x_661 : f32;
  var x_704 : f32;
  var x_716 : f32;
  var x_728 : f32;
  var u_xlatb15 : bool;
  var x_847 : f32;
  var x_860 : f32;
  var x_872 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_SourceSize;
  u_xlat0 = (vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(x_22.x, x_22.y, x_22.x, x_22.y));
  let x_28 : vec4<f32> = u_xlat0;
  u_xlati0 = vec4<i32>(x_28);
  let x_31 : vec4<i32> = u_xlati0;
  u_xlati1 = (vec4<i32>(x_31.z, x_31.w, x_31.z, x_31.w) + vec4<i32>(-1i, -1i, 1i, -1i));
  let x_36 : vec4<i32> = u_xlati0;
  u_xlati0 = (x_36 + vec4<i32>(-1i, 1i, 1i, 1i));
  let x_39 : vec4<i32> = u_xlati0;
  u_xlat0 = vec4<f32>(x_39);
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_41, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_46 : vec4<i32> = u_xlati1;
  u_xlat1 = vec4<f32>(x_46);
  let x_48 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_48, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_52 : vec4<f32> = x_17.x_SourceSize;
  u_xlat2 = (vec4<f32>(x_52.x, x_52.y, x_52.x, x_52.y) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_57 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_57, x_58);
  let x_60 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat2;
  u_xlat0 = min(x_60, x_61);
  let x_67 : vec4<f32> = u_xlat0;
  u_xlatu0 = bitcast<vec4<u32>>(vec4<i32>(vec4<f32>(x_67.z, x_67.w, x_67.x, x_67.y)));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlatu1 = bitcast<vec4<u32>>(vec4<i32>(vec4<f32>(x_72.z, x_72.w, x_72.x, x_72.y)));
  let x_78 : vec4<u32> = u_xlatu1;
  let x_79 : vec2<u32> = vec2<u32>(x_78.z, x_78.w);
  let x_80 : vec4<u32> = u_xlatu2;
  u_xlatu2 = vec4<u32>(x_79.x, x_79.y, x_80.z, x_80.w);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  let x_92 : vec4<u32> = u_xlatu2;
  let x_97 : u32 = u_xlatu2.w;
  let x_99 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_92.x, x_92.y)), bitcast<i32>(x_97));
  let x_101 : vec3<f32> = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_104 : vec4<f32> = u_xlat2;
  let x_105 : vec3<f32> = vec3<f32>(x_104.x, x_104.y, x_104.z);
  let x_106 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_108 : vec4<f32> = u_xlat2;
  let x_113 : vec3<f32> = clamp(vec3<f32>(x_108.x, x_108.y, x_108.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_116.x, x_116.y, x_116.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_126 : vec4<u32> = u_xlatu0;
  let x_127 : vec2<u32> = vec2<u32>(x_126.z, x_126.w);
  let x_128 : vec4<u32> = u_xlatu3;
  u_xlatu3 = vec4<u32>(x_127.x, x_127.y, x_128.z, x_128.w);
  u_xlatu3.z = 0u;
  u_xlatu3.w = 0u;
  let x_135 : vec4<u32> = u_xlatu3;
  let x_139 : u32 = u_xlatu3.w;
  let x_141 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_135.x, x_135.y)), bitcast<i32>(x_139));
  u_xlat7 = vec3<f32>(x_141.x, x_141.y, x_141.z);
  let x_143 : vec3<f32> = u_xlat7;
  u_xlat7 = x_143;
  let x_144 : vec3<f32> = u_xlat7;
  u_xlat7 = clamp(x_144, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_148 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(x_148, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_153 : f32 = u_xlat7.x;
  let x_155 : f32 = u_xlat2.x;
  u_xlat12 = (x_153 + x_155);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_160 : vec4<u32> = u_xlatu1;
  let x_164 : u32 = u_xlatu1.w;
  let x_166 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_160.x, x_160.y)), bitcast<i32>(x_164));
  let x_167 : vec3<f32> = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat1;
  let x_171 : vec3<f32> = vec3<f32>(x_170.x, x_170.y, x_170.z);
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat1;
  let x_178 : vec3<f32> = clamp(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_188 : vec4<u32> = u_xlatu0;
  let x_192 : u32 = u_xlatu0.w;
  let x_194 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_188.x, x_188.y)), bitcast<i32>(x_192));
  let x_195 : vec3<f32> = vec3<f32>(x_194.x, x_194.y, x_194.z);
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : vec4<f32> = u_xlat0;
  let x_199 : vec3<f32> = vec3<f32>(x_198.x, x_198.y, x_198.z);
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat0;
  let x_206 : vec3<f32> = clamp(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_215 : f32 = u_xlat0.x;
  let x_217 : f32 = u_xlat1.x;
  u_xlat5.x = (x_215 + x_217);
  let x_221 : vec3<f32> = u_xlat5;
  let x_224 : f32 = u_xlat12;
  let x_226 : vec2<f32> = (-(vec2<f32>(x_221.x, x_221.x)) + vec2<f32>(x_224, x_224));
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_227.x, x_226.x, x_227.z, x_226.y);
  let x_230 : f32 = u_xlat1.x;
  let x_232 : f32 = u_xlat2.x;
  u_xlat5.x = (x_230 + x_232);
  let x_237 : f32 = u_xlat0.x;
  let x_239 : f32 = u_xlat7.x;
  u_xlat10 = (x_237 + x_239);
  let x_241 : f32 = u_xlat10;
  let x_244 : f32 = u_xlat5.x;
  u_xlat10 = (-(x_241) + x_244);
  let x_247 : f32 = u_xlat7.x;
  let x_249 : f32 = u_xlat5.x;
  u_xlat5.x = (x_247 + x_249);
  let x_253 : f32 = u_xlat0.x;
  let x_255 : f32 = u_xlat5.x;
  u_xlat5.x = (x_253 + x_255);
  let x_259 : f32 = u_xlat5.x;
  u_xlat5.x = (x_259 * 0.03125f);
  let x_264 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_264, 0.0078125f);
  let x_270 : f32 = u_xlat3.w;
  let x_272 : f32 = u_xlat10;
  u_xlat15 = min(abs(x_270), abs(x_272));
  let x_275 : f32 = u_xlat10;
  let x_277 : vec2<f32> = -(vec2<f32>(x_275, x_275));
  let x_278 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_277.x, x_278.y, x_277.y, x_278.w);
  let x_281 : f32 = u_xlat5.x;
  let x_282 : f32 = u_xlat15;
  u_xlat5.x = (x_281 + x_282);
  let x_286 : f32 = u_xlat5.x;
  u_xlat5.x = (1.0f / x_286);
  let x_289 : vec3<f32> = u_xlat5;
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_289.x, x_289.x, x_289.x, x_289.x) * x_291);
  let x_293 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_293, vec4<f32>(-8.0f, -8.0f, -8.0f, -8.0f));
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = min(x_297, vec4<f32>(8.0f, 8.0f, 8.0f, 8.0f));
  let x_301 : vec4<f32> = u_xlat3;
  let x_303 : vec4<f32> = x_17.x_SourceSize;
  u_xlat3 = (x_301 * vec4<f32>(x_303.z, x_303.w, x_303.z, x_303.w));
  let x_307 : vec4<f32> = u_xlat3;
  let x_313 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_307.z, x_307.w, x_307.z, x_307.w) * vec4<f32>(-0.5f, -0.5f, -0.166666672f, -0.166666672f)) + vec4<f32>(x_313.x, x_313.y, x_313.x, x_313.y));
  let x_316 : vec4<f32> = u_xlat3;
  let x_321 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((x_316 * vec4<f32>(0.166666672f, 0.166666672f, 0.5f, 0.5f)) + vec4<f32>(x_321.x, x_321.y, x_321.x, x_321.y));
  let x_331 : vec4<f32> = u_xlat4;
  let x_336 : f32 = x_17.x_GlobalMipBias.x;
  let x_337 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_331.x, x_331.y), x_336);
  u_xlat5 = vec3<f32>(x_337.x, x_337.y, x_337.z);
  let x_343 : vec4<f32> = u_xlat4;
  let x_346 : f32 = x_17.x_GlobalMipBias.x;
  let x_347 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_343.z, x_343.w), x_346);
  u_xlat6 = vec3<f32>(x_347.x, x_347.y, x_347.z);
  let x_349 : vec3<f32> = u_xlat6;
  u_xlat6 = x_349;
  let x_350 : vec3<f32> = u_xlat6;
  u_xlat6 = clamp(x_350, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_354 : vec3<f32> = u_xlat5;
  u_xlat5 = x_354;
  let x_355 : vec3<f32> = u_xlat5;
  u_xlat5 = clamp(x_355, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_362 : vec4<f32> = u_xlat3;
  let x_365 : f32 = x_17.x_GlobalMipBias.x;
  let x_366 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_362.z, x_362.w), x_365);
  let x_367 : vec3<f32> = vec3<f32>(x_366.x, x_366.y, x_366.z);
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_373 : vec4<f32> = u_xlat3;
  let x_376 : f32 = x_17.x_GlobalMipBias.x;
  let x_377 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_373.x, x_373.y), x_376);
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.z);
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat3;
  let x_382 : vec3<f32> = vec3<f32>(x_381.x, x_381.y, x_381.z);
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat3;
  let x_389 : vec3<f32> = clamp(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec3<f32> = u_xlat6;
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat6 = (x_392 + vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat4;
  let x_397 : vec3<f32> = vec3<f32>(x_396.x, x_396.y, x_396.z);
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat4;
  let x_404 : vec3<f32> = clamp(vec3<f32>(x_400.x, x_400.y, x_400.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_405 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec3<f32> = u_xlat5;
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat5 = (x_407 + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_411 * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_415 : vec3<f32> = u_xlat6;
  let x_417 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_415 * vec3<f32>(0.25f, 0.25f, 0.25f)) + x_417);
  let x_419 : vec3<f32> = u_xlat6;
  u_xlat6 = (x_419 * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_422 : vec3<f32> = u_xlat5;
  u_xlat12 = dot(x_422, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_426 : f32 = u_xlat7.x;
  let x_428 : f32 = u_xlat1.x;
  u_xlat17 = min(x_426, x_428);
  let x_431 : f32 = u_xlat7.x;
  let x_433 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_431, x_433);
  let x_437 : f32 = u_xlat0.x;
  let x_439 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_437, x_439);
  let x_443 : f32 = u_xlat0.x;
  let x_444 : f32 = u_xlat17;
  u_xlat0.x = min(x_443, x_444);
  let x_451 : vec2<f32> = vs_TEXCOORD0;
  let x_453 : f32 = x_17.x_GlobalMipBias.x;
  let x_454 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_451, x_453);
  let x_455 : vec3<f32> = vec3<f32>(x_454.x, x_454.y, x_454.z);
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat3;
  let x_459 : vec3<f32> = vec3<f32>(x_458.x, x_458.y, x_458.z);
  let x_460 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat3;
  let x_466 : vec3<f32> = clamp(vec3<f32>(x_462.x, x_462.y, x_462.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_467 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(vec3<f32>(x_469.x, x_469.y, x_469.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_474 : f32 = u_xlat2.x;
  let x_476 : f32 = u_xlat7.x;
  u_xlat17 = min(x_474, x_476);
  let x_479 : f32 = u_xlat2.x;
  let x_481 : f32 = u_xlat7.x;
  u_xlat2.x = max(x_479, x_481);
  let x_485 : f32 = u_xlat1.x;
  let x_487 : f32 = u_xlat2.x;
  u_xlat1.x = max(x_485, x_487);
  let x_494 : f32 = u_xlat1.x;
  let x_495 : f32 = u_xlat12;
  u_xlatb1 = (x_494 < x_495);
  let x_498 : f32 = u_xlat0.x;
  let x_499 : f32 = u_xlat17;
  u_xlat0.x = min(x_498, x_499);
  let x_505 : f32 = u_xlat12;
  let x_507 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_505 < x_507);
  let x_510 : bool = u_xlatb1;
  let x_512 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_510 | x_512);
  let x_516 : bool = u_xlatb0.x;
  if (x_516) {
    let x_520 : vec3<f32> = u_xlat6;
    x_517 = x_520;
  } else {
    let x_522 : vec3<f32> = u_xlat5;
    x_517 = x_522;
  }
  let x_523 : vec3<f32> = x_517;
  let x_524 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec2<f32> = vs_TEXCOORD0;
  let x_529 : vec4<f32> = x_17.x_Grain_TilingParams;
  let x_533 : vec4<f32> = x_17.x_Grain_TilingParams;
  let x_535 : vec2<f32> = ((x_526 * vec2<f32>(x_529.x, x_529.y)) + vec2<f32>(x_533.z, x_533.w));
  let x_536 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
  let x_543 : vec4<f32> = u_xlat1;
  let x_546 : f32 = x_17.x_GlobalMipBias.x;
  let x_547 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_543.x, x_543.y), x_546);
  u_xlat15 = x_547.w;
  let x_549 : f32 = u_xlat15;
  u_xlat15 = (x_549 + -0.5f);
  let x_551 : f32 = u_xlat15;
  let x_552 : f32 = u_xlat15;
  u_xlat15 = (x_551 + x_552);
  let x_554 : f32 = u_xlat15;
  let x_556 : vec4<f32> = u_xlat0;
  let x_558 : vec3<f32> = (vec3<f32>(x_554, x_554, x_554) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat1;
  let x_566 : vec2<f32> = x_17.x_Grain_Params;
  let x_568 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) * vec3<f32>(x_566.x, x_566.x, x_566.x));
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_571.x, x_571.y, x_571.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_574 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_574);
  let x_578 : f32 = x_17.x_Grain_Params.y;
  let x_579 : f32 = u_xlat15;
  u_xlat15 = ((x_578 * -(x_579)) + 1.0f);
  let x_583 : vec4<f32> = u_xlat1;
  let x_585 : f32 = u_xlat15;
  let x_588 : vec4<f32> = u_xlat0;
  let x_590 : vec3<f32> = ((vec3<f32>(x_583.x, x_583.y, x_583.z) * vec3<f32>(x_585, x_585, x_585)) + vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec4<f32> = u_xlat0;
  let x_596 : vec3<f32> = log2(abs(vec3<f32>(x_593.x, x_593.y, x_593.z)));
  let x_597 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec4<f32> = u_xlat1;
  let x_603 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_604 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat1;
  let x_608 : vec3<f32> = exp2(vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat1;
  let x_618 : vec3<f32> = ((vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat0;
  let x_625 : vec3<f32> = (vec3<f32>(x_621.x, x_621.y, x_621.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_630 : vec4<f32> = u_xlat0;
  let x_633 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_630.x, x_630.y, x_630.z, x_630.x));
  u_xlatb0 = vec3<bool>(x_633.x, x_633.y, x_633.z);
  let x_636 : bool = u_xlatb0.x;
  if (x_636) {
    let x_641 : f32 = u_xlat2.x;
    x_637 = x_641;
  } else {
    let x_644 : f32 = u_xlat1.x;
    x_637 = x_644;
  }
  let x_645 : f32 = x_637;
  u_xlat0.x = x_645;
  let x_648 : bool = u_xlatb0.y;
  if (x_648) {
    let x_653 : f32 = u_xlat2.y;
    x_649 = x_653;
  } else {
    let x_656 : f32 = u_xlat1.y;
    x_649 = x_656;
  }
  let x_657 : f32 = x_649;
  u_xlat0.y = x_657;
  let x_660 : bool = u_xlatb0.z;
  if (x_660) {
    let x_665 : f32 = u_xlat2.z;
    x_661 = x_665;
  } else {
    let x_668 : f32 = u_xlat1.z;
    x_661 = x_668;
  }
  let x_669 : f32 = x_661;
  u_xlat0.z = x_669;
  let x_671 : vec4<f32> = u_xlat0;
  let x_674 : vec3<f32> = log2(abs(vec3<f32>(x_671.x, x_671.y, x_671.z)));
  let x_675 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec4<f32> = u_xlat1;
  let x_679 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_680 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat1;
  let x_684 : vec3<f32> = exp2(vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat1;
  let x_690 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat0;
  let x_695 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_696 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat0;
  let x_700 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_698.x, x_698.y, x_698.z, x_698.x));
  u_xlatb0 = vec3<bool>(x_700.x, x_700.y, x_700.z);
  let x_703 : bool = u_xlatb0.x;
  if (x_703) {
    let x_708 : f32 = u_xlat2.x;
    x_704 = x_708;
  } else {
    let x_711 : f32 = u_xlat1.x;
    x_704 = x_711;
  }
  let x_712 : f32 = x_704;
  u_xlat0.x = x_712;
  let x_715 : bool = u_xlatb0.y;
  if (x_715) {
    let x_720 : f32 = u_xlat2.y;
    x_716 = x_720;
  } else {
    let x_723 : f32 = u_xlat1.y;
    x_716 = x_723;
  }
  let x_724 : f32 = x_716;
  u_xlat0.y = x_724;
  let x_727 : bool = u_xlatb0.z;
  if (x_727) {
    let x_732 : f32 = u_xlat2.z;
    x_728 = x_732;
  } else {
    let x_735 : f32 = u_xlat1.z;
    x_728 = x_735;
  }
  let x_736 : f32 = x_728;
  u_xlat0.z = x_736;
  let x_738 : vec2<f32> = vs_TEXCOORD0;
  let x_741 : vec4<f32> = x_17.x_Dithering_Params;
  let x_745 : vec4<f32> = x_17.x_Dithering_Params;
  let x_747 : vec2<f32> = ((x_738 * vec2<f32>(x_741.x, x_741.y)) + vec2<f32>(x_745.z, x_745.w));
  let x_748 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
  let x_755 : vec4<f32> = u_xlat1;
  let x_758 : f32 = x_17.x_GlobalMipBias.x;
  let x_759 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_755.x, x_755.y), x_758);
  u_xlat15 = x_759.w;
  let x_761 : f32 = u_xlat15;
  u_xlat15 = ((x_761 * 2.0f) + -1.0f);
  let x_765 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_765)) + 1.0f);
  let x_771 : f32 = u_xlat15;
  u_xlatb15 = (x_771 >= 0.0f);
  let x_773 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_773);
  let x_776 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_776);
  let x_780 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_780) + 1.0f);
  let x_784 : f32 = u_xlat15;
  let x_786 : f32 = u_xlat1.x;
  u_xlat15 = (x_784 * x_786);
  let x_788 : f32 = u_xlat15;
  let x_793 : vec4<f32> = u_xlat0;
  let x_795 : vec3<f32> = ((vec3<f32>(x_788, x_788, x_788) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat0;
  let x_802 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_803 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat1;
  let x_809 : vec3<f32> = (vec3<f32>(x_805.x, x_805.y, x_805.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec4<f32> = u_xlat1;
  let x_815 : vec3<f32> = log2(abs(vec3<f32>(x_812.x, x_812.y, x_812.z)));
  let x_816 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat1;
  let x_822 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat1;
  let x_827 : vec3<f32> = exp2(vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat0;
  let x_834 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_835 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_839 : vec4<f32> = u_xlat0;
  let x_841 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_839.x, x_839.y, x_839.z, x_839.x));
  u_xlatb0 = vec3<bool>(x_841.x, x_841.y, x_841.z);
  let x_846 : bool = u_xlatb0.x;
  if (x_846) {
    let x_851 : f32 = u_xlat2.x;
    x_847 = x_851;
  } else {
    let x_854 : f32 = u_xlat1.x;
    x_847 = x_854;
  }
  let x_855 : f32 = x_847;
  SV_Target0.x = x_855;
  let x_859 : bool = u_xlatb0.y;
  if (x_859) {
    let x_864 : f32 = u_xlat2.y;
    x_860 = x_864;
  } else {
    let x_867 : f32 = u_xlat1.y;
    x_860 = x_867;
  }
  let x_868 : f32 = x_860;
  SV_Target0.y = x_868;
  let x_871 : bool = u_xlatb0.z;
  if (x_871) {
    let x_876 : f32 = u_xlat2.z;
    x_872 = x_876;
  } else {
    let x_879 : f32 = u_xlat1.z;
    x_872 = x_879;
  }
  let x_880 : f32 = x_872;
  SV_Target0.z = x_880;
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
