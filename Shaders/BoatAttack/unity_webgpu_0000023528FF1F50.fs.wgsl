struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_SourceSize : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

@group(0) @binding(2) var sampler_PointClamp : sampler;

@group(0) @binding(1) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(4) var sampler_PointRepeat : sampler;

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
  var x_569 : f32;
  var x_582 : f32;
  var x_594 : f32;
  var x_637 : f32;
  var x_649 : f32;
  var x_661 : f32;
  var u_xlatb15 : bool;
  var x_780 : f32;
  var x_793 : f32;
  var x_805 : f32;
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
  let x_526 : vec4<f32> = u_xlat0;
  let x_528 : vec3<f32> = log2(vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat1;
  let x_535 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_536 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec3<f32> = exp2(vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec4<f32> = u_xlat1;
  let x_550 : vec3<f32> = ((vec3<f32>(x_543.x, x_543.y, x_543.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_551 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat0;
  let x_557 : vec3<f32> = (vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_558 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_562 : vec4<f32> = u_xlat0;
  let x_565 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_562.x, x_562.y, x_562.z, x_562.x));
  u_xlatb0 = vec3<bool>(x_565.x, x_565.y, x_565.z);
  let x_568 : bool = u_xlatb0.x;
  if (x_568) {
    let x_573 : f32 = u_xlat2.x;
    x_569 = x_573;
  } else {
    let x_576 : f32 = u_xlat1.x;
    x_569 = x_576;
  }
  let x_577 : f32 = x_569;
  u_xlat0.x = x_577;
  let x_581 : bool = u_xlatb0.y;
  if (x_581) {
    let x_586 : f32 = u_xlat2.y;
    x_582 = x_586;
  } else {
    let x_589 : f32 = u_xlat1.y;
    x_582 = x_589;
  }
  let x_590 : f32 = x_582;
  u_xlat0.y = x_590;
  let x_593 : bool = u_xlatb0.z;
  if (x_593) {
    let x_598 : f32 = u_xlat2.z;
    x_594 = x_598;
  } else {
    let x_601 : f32 = u_xlat1.z;
    x_594 = x_601;
  }
  let x_602 : f32 = x_594;
  u_xlat0.z = x_602;
  let x_604 : vec4<f32> = u_xlat0;
  let x_607 : vec3<f32> = log2(abs(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec4<f32> = u_xlat1;
  let x_612 : vec3<f32> = (vec3<f32>(x_610.x, x_610.y, x_610.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_613 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec3<f32> = exp2(vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat1;
  let x_623 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_624 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat0;
  let x_628 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_629 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat0;
  let x_633 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.x));
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
  let x_671 : vec2<f32> = vs_TEXCOORD0;
  let x_674 : vec4<f32> = x_17.x_Dithering_Params;
  let x_678 : vec4<f32> = x_17.x_Dithering_Params;
  let x_680 : vec2<f32> = ((x_671 * vec2<f32>(x_674.x, x_674.y)) + vec2<f32>(x_678.z, x_678.w));
  let x_681 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
  let x_688 : vec4<f32> = u_xlat1;
  let x_691 : f32 = x_17.x_GlobalMipBias.x;
  let x_692 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_688.x, x_688.y), x_691);
  u_xlat15 = x_692.w;
  let x_694 : f32 = u_xlat15;
  u_xlat15 = ((x_694 * 2.0f) + -1.0f);
  let x_698 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_698)) + 1.0f);
  let x_704 : f32 = u_xlat15;
  u_xlatb15 = (x_704 >= 0.0f);
  let x_706 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_706);
  let x_709 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_709);
  let x_713 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_713) + 1.0f);
  let x_717 : f32 = u_xlat15;
  let x_719 : f32 = u_xlat1.x;
  u_xlat15 = (x_717 * x_719);
  let x_721 : f32 = u_xlat15;
  let x_726 : vec4<f32> = u_xlat0;
  let x_728 : vec3<f32> = ((vec3<f32>(x_721, x_721, x_721) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : vec4<f32> = u_xlat0;
  let x_735 : vec3<f32> = (vec3<f32>(x_731.x, x_731.y, x_731.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_736 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : vec4<f32> = u_xlat1;
  let x_742 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat1;
  let x_748 : vec3<f32> = log2(abs(vec3<f32>(x_745.x, x_745.y, x_745.z)));
  let x_749 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat1;
  let x_755 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat1;
  let x_760 : vec3<f32> = exp2(vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat0;
  let x_767 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_768 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_772 : vec4<f32> = u_xlat0;
  let x_774 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_772.x, x_772.y, x_772.z, x_772.x));
  u_xlatb0 = vec3<bool>(x_774.x, x_774.y, x_774.z);
  let x_779 : bool = u_xlatb0.x;
  if (x_779) {
    let x_784 : f32 = u_xlat2.x;
    x_780 = x_784;
  } else {
    let x_787 : f32 = u_xlat1.x;
    x_780 = x_787;
  }
  let x_788 : f32 = x_780;
  SV_Target0.x = x_788;
  let x_792 : bool = u_xlatb0.y;
  if (x_792) {
    let x_797 : f32 = u_xlat2.y;
    x_793 = x_797;
  } else {
    let x_800 : f32 = u_xlat1.y;
    x_793 = x_800;
  }
  let x_801 : f32 = x_793;
  SV_Target0.y = x_801;
  let x_804 : bool = u_xlatb0.z;
  if (x_804) {
    let x_809 : f32 = u_xlat2.z;
    x_805 = x_809;
  } else {
    let x_812 : f32 = u_xlat1.z;
    x_805 = x_812;
  }
  let x_813 : f32 = x_805;
  SV_Target0.z = x_813;
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

