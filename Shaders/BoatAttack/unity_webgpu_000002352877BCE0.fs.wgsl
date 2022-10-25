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
  var x_636 : f32;
  var x_648 : f32;
  var x_660 : f32;
  var u_xlatb15 : bool;
  var x_779 : f32;
  var x_792 : f32;
  var x_804 : f32;
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
  let x_603 : vec4<f32> = u_xlat0;
  let x_606 : vec3<f32> = log2(abs(vec3<f32>(x_603.x, x_603.y, x_603.z)));
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec4<f32> = u_xlat1;
  let x_611 : vec3<f32> = (vec3<f32>(x_609.x, x_609.y, x_609.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_612 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat1;
  let x_616 : vec3<f32> = exp2(vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat1;
  let x_622 : vec3<f32> = ((vec3<f32>(x_619.x, x_619.y, x_619.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_623 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = (vec3<f32>(x_625.x, x_625.y, x_625.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec4<f32> = u_xlat0;
  let x_632 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_630.x, x_630.y, x_630.z, x_630.x));
  u_xlatb0 = vec3<bool>(x_632.x, x_632.y, x_632.z);
  let x_635 : bool = u_xlatb0.x;
  if (x_635) {
    let x_640 : f32 = u_xlat2.x;
    x_636 = x_640;
  } else {
    let x_643 : f32 = u_xlat1.x;
    x_636 = x_643;
  }
  let x_644 : f32 = x_636;
  u_xlat0.x = x_644;
  let x_647 : bool = u_xlatb0.y;
  if (x_647) {
    let x_652 : f32 = u_xlat2.y;
    x_648 = x_652;
  } else {
    let x_655 : f32 = u_xlat1.y;
    x_648 = x_655;
  }
  let x_656 : f32 = x_648;
  u_xlat0.y = x_656;
  let x_659 : bool = u_xlatb0.z;
  if (x_659) {
    let x_664 : f32 = u_xlat2.z;
    x_660 = x_664;
  } else {
    let x_667 : f32 = u_xlat1.z;
    x_660 = x_667;
  }
  let x_668 : f32 = x_660;
  u_xlat0.z = x_668;
  let x_670 : vec2<f32> = vs_TEXCOORD0;
  let x_673 : vec4<f32> = x_17.x_Dithering_Params;
  let x_677 : vec4<f32> = x_17.x_Dithering_Params;
  let x_679 : vec2<f32> = ((x_670 * vec2<f32>(x_673.x, x_673.y)) + vec2<f32>(x_677.z, x_677.w));
  let x_680 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
  let x_687 : vec4<f32> = u_xlat1;
  let x_690 : f32 = x_17.x_GlobalMipBias.x;
  let x_691 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_687.x, x_687.y), x_690);
  u_xlat15 = x_691.w;
  let x_693 : f32 = u_xlat15;
  u_xlat15 = ((x_693 * 2.0f) + -1.0f);
  let x_697 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_697)) + 1.0f);
  let x_703 : f32 = u_xlat15;
  u_xlatb15 = (x_703 >= 0.0f);
  let x_705 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_705);
  let x_708 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_708);
  let x_712 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_712) + 1.0f);
  let x_716 : f32 = u_xlat15;
  let x_718 : f32 = u_xlat1.x;
  u_xlat15 = (x_716 * x_718);
  let x_720 : f32 = u_xlat15;
  let x_725 : vec4<f32> = u_xlat0;
  let x_727 : vec3<f32> = ((vec3<f32>(x_720, x_720, x_720) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec4<f32> = u_xlat0;
  let x_734 : vec3<f32> = (vec3<f32>(x_730.x, x_730.y, x_730.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_735 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec4<f32> = u_xlat1;
  let x_741 : vec3<f32> = (vec3<f32>(x_737.x, x_737.y, x_737.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_742 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat1;
  let x_747 : vec3<f32> = log2(abs(vec3<f32>(x_744.x, x_744.y, x_744.z)));
  let x_748 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec4<f32> = u_xlat1;
  let x_754 : vec3<f32> = (vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_755 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat1;
  let x_759 : vec3<f32> = exp2(vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat0;
  let x_766 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_767 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_771 : vec4<f32> = u_xlat0;
  let x_773 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_771.x, x_771.y, x_771.z, x_771.x));
  u_xlatb0 = vec3<bool>(x_773.x, x_773.y, x_773.z);
  let x_778 : bool = u_xlatb0.x;
  if (x_778) {
    let x_783 : f32 = u_xlat2.x;
    x_779 = x_783;
  } else {
    let x_786 : f32 = u_xlat1.x;
    x_779 = x_786;
  }
  let x_787 : f32 = x_779;
  SV_Target0.x = x_787;
  let x_791 : bool = u_xlatb0.y;
  if (x_791) {
    let x_796 : f32 = u_xlat2.y;
    x_792 = x_796;
  } else {
    let x_799 : f32 = u_xlat1.y;
    x_792 = x_799;
  }
  let x_800 : f32 = x_792;
  SV_Target0.y = x_800;
  let x_803 : bool = u_xlatb0.z;
  if (x_803) {
    let x_808 : f32 = u_xlat2.z;
    x_804 = x_808;
  } else {
    let x_811 : f32 = u_xlat1.z;
    x_804 = x_811;
  }
  let x_812 : f32 = x_804;
  SV_Target0.z = x_812;
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

