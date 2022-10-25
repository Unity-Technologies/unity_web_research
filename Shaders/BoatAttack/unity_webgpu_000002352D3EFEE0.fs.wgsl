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

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(3) var sampler_PointRepeat : sampler;

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
  var x_516 : vec3<f32>;
  var x_568 : f32;
  var x_581 : f32;
  var x_593 : f32;
  var u_xlatb15 : bool;
  var x_712 : f32;
  var x_725 : f32;
  var x_737 : f32;
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
  let x_450 : vec2<f32> = vs_TEXCOORD0;
  let x_452 : f32 = x_17.x_GlobalMipBias.x;
  let x_453 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_450, x_452);
  let x_454 : vec3<f32> = vec3<f32>(x_453.x, x_453.y, x_453.z);
  let x_455 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat3;
  let x_458 : vec3<f32> = vec3<f32>(x_457.x, x_457.y, x_457.z);
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat3;
  let x_465 : vec3<f32> = clamp(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_466 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_473 : f32 = u_xlat2.x;
  let x_475 : f32 = u_xlat7.x;
  u_xlat17 = min(x_473, x_475);
  let x_478 : f32 = u_xlat2.x;
  let x_480 : f32 = u_xlat7.x;
  u_xlat2.x = max(x_478, x_480);
  let x_484 : f32 = u_xlat1.x;
  let x_486 : f32 = u_xlat2.x;
  u_xlat1.x = max(x_484, x_486);
  let x_493 : f32 = u_xlat1.x;
  let x_494 : f32 = u_xlat12;
  u_xlatb1 = (x_493 < x_494);
  let x_497 : f32 = u_xlat0.x;
  let x_498 : f32 = u_xlat17;
  u_xlat0.x = min(x_497, x_498);
  let x_504 : f32 = u_xlat12;
  let x_506 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_504 < x_506);
  let x_509 : bool = u_xlatb1;
  let x_511 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_509 | x_511);
  let x_515 : bool = u_xlatb0.x;
  if (x_515) {
    let x_519 : vec3<f32> = u_xlat6;
    x_516 = x_519;
  } else {
    let x_521 : vec3<f32> = u_xlat5;
    x_516 = x_521;
  }
  let x_522 : vec3<f32> = x_516;
  let x_523 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat0;
  let x_527 : vec3<f32> = log2(vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec4<f32> = u_xlat1;
  let x_534 : vec3<f32> = (vec3<f32>(x_530.x, x_530.y, x_530.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = exp2(vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat1;
  let x_549 : vec3<f32> = ((vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_550 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_552 : vec4<f32> = u_xlat0;
  let x_556 : vec3<f32> = (vec3<f32>(x_552.x, x_552.y, x_552.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_557 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_561 : vec4<f32> = u_xlat0;
  let x_564 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_561.x, x_561.y, x_561.z, x_561.x));
  u_xlatb0 = vec3<bool>(x_564.x, x_564.y, x_564.z);
  let x_567 : bool = u_xlatb0.x;
  if (x_567) {
    let x_572 : f32 = u_xlat2.x;
    x_568 = x_572;
  } else {
    let x_575 : f32 = u_xlat1.x;
    x_568 = x_575;
  }
  let x_576 : f32 = x_568;
  u_xlat0.x = x_576;
  let x_580 : bool = u_xlatb0.y;
  if (x_580) {
    let x_585 : f32 = u_xlat2.y;
    x_581 = x_585;
  } else {
    let x_588 : f32 = u_xlat1.y;
    x_581 = x_588;
  }
  let x_589 : f32 = x_581;
  u_xlat0.y = x_589;
  let x_592 : bool = u_xlatb0.z;
  if (x_592) {
    let x_597 : f32 = u_xlat2.z;
    x_593 = x_597;
  } else {
    let x_600 : f32 = u_xlat1.z;
    x_593 = x_600;
  }
  let x_601 : f32 = x_593;
  u_xlat0.z = x_601;
  let x_603 : vec2<f32> = vs_TEXCOORD0;
  let x_606 : vec4<f32> = x_17.x_Dithering_Params;
  let x_610 : vec4<f32> = x_17.x_Dithering_Params;
  let x_612 : vec2<f32> = ((x_603 * vec2<f32>(x_606.x, x_606.y)) + vec2<f32>(x_610.z, x_610.w));
  let x_613 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
  let x_620 : vec4<f32> = u_xlat1;
  let x_623 : f32 = x_17.x_GlobalMipBias.x;
  let x_624 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_620.x, x_620.y), x_623);
  u_xlat15 = x_624.w;
  let x_626 : f32 = u_xlat15;
  u_xlat15 = ((x_626 * 2.0f) + -1.0f);
  let x_630 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_630)) + 1.0f);
  let x_636 : f32 = u_xlat15;
  u_xlatb15 = (x_636 >= 0.0f);
  let x_638 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_638);
  let x_641 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_641);
  let x_645 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_645) + 1.0f);
  let x_649 : f32 = u_xlat15;
  let x_651 : f32 = u_xlat1.x;
  u_xlat15 = (x_649 * x_651);
  let x_653 : f32 = u_xlat15;
  let x_658 : vec4<f32> = u_xlat0;
  let x_660 : vec3<f32> = ((vec3<f32>(x_653, x_653, x_653) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat0;
  let x_667 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_668 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat1;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_675 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec4<f32> = u_xlat1;
  let x_680 : vec3<f32> = log2(abs(vec3<f32>(x_677.x, x_677.y, x_677.z)));
  let x_681 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec4<f32> = u_xlat1;
  let x_687 : vec3<f32> = (vec3<f32>(x_683.x, x_683.y, x_683.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_688 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat1;
  let x_692 : vec3<f32> = exp2(vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat0;
  let x_699 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_700 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_704 : vec4<f32> = u_xlat0;
  let x_706 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_704.x, x_704.y, x_704.z, x_704.x));
  u_xlatb0 = vec3<bool>(x_706.x, x_706.y, x_706.z);
  let x_711 : bool = u_xlatb0.x;
  if (x_711) {
    let x_716 : f32 = u_xlat2.x;
    x_712 = x_716;
  } else {
    let x_719 : f32 = u_xlat1.x;
    x_712 = x_719;
  }
  let x_720 : f32 = x_712;
  SV_Target0.x = x_720;
  let x_724 : bool = u_xlatb0.y;
  if (x_724) {
    let x_729 : f32 = u_xlat2.y;
    x_725 = x_729;
  } else {
    let x_732 : f32 = u_xlat1.y;
    x_725 = x_732;
  }
  let x_733 : f32 = x_725;
  SV_Target0.y = x_733;
  let x_736 : bool = u_xlatb0.z;
  if (x_736) {
    let x_741 : f32 = u_xlat2.z;
    x_737 = x_741;
  } else {
    let x_744 : f32 = u_xlat1.z;
    x_737 = x_744;
  }
  let x_745 : f32 = x_737;
  SV_Target0.z = x_745;
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

