diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlat15 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_26 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_18.x, x_18.x, x_18.x, x_18.x) * vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f)) + vec4<f32>(x_26.x, x_26.y, x_26.x, x_26.y));
  let x_40 : vec4<f32> = u_xlat0;
  let x_47 : f32 = x_13.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_40.x, x_40.y), x_47);
  let x_50 : vec3<f32> = vec3<f32>(x_48.x, x_48.y, x_48.z);
  let x_51 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_50.x, x_50.y, x_50.z, x_51.w);
  let x_56 : vec4<f32> = u_xlat0;
  let x_59 : f32 = x_13.x_GlobalMipBias.x;
  let x_60 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_56.z, x_56.w), x_59);
  let x_61 : vec3<f32> = vec3<f32>(x_60.x, x_60.y, x_60.z);
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = u_xlat1;
  let x_68 : vec3<f32> = (vec3<f32>(x_64.x, x_64.y, x_64.z) + vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_72 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_76 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x) * vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_76.x, x_76.y, x_76.x, x_76.y));
  let x_83 : vec4<f32> = u_xlat1;
  let x_86 : f32 = x_13.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_83.x, x_83.y), x_86);
  let x_88 : vec3<f32> = vec3<f32>(x_87.x, x_87.y, x_87.z);
  let x_89 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_94 : vec4<f32> = u_xlat1;
  let x_97 : f32 = x_13.x_GlobalMipBias.x;
  let x_98 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_94.z, x_94.w), x_97);
  let x_99 : vec3<f32> = vec3<f32>(x_98.x, x_98.y, x_98.z);
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
  let x_102 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = u_xlat2;
  let x_106 : vec3<f32> = (vec3<f32>(x_102.x, x_102.y, x_102.z) + vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_109 : vec4<f32> = u_xlat1;
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec3<f32> = (vec3<f32>(x_109.x, x_109.y, x_109.z) + vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec2<f32> = vs_TEXCOORD0;
  let x_118 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_121 : vec2<f32> = (x_116 + -(vec2<f32>(x_118.x, x_118.x)));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
  let x_127 : vec4<f32> = u_xlat1;
  let x_130 : f32 = x_13.x_GlobalMipBias.x;
  let x_131 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_127.x, x_127.y), x_130);
  let x_132 : vec3<f32> = vec3<f32>(x_131.x, x_131.y, x_131.z);
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_136 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_143 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_136.x, x_136.x, x_136.x, x_136.x) * vec4<f32>(0.0f, -1.0f, 1.0f, -1.0f)) + vec4<f32>(x_143.x, x_143.y, x_143.x, x_143.y));
  let x_151 : vec4<f32> = u_xlat2;
  let x_154 : f32 = x_13.x_GlobalMipBias.x;
  let x_155 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_151.x, x_151.y), x_154);
  u_xlat3 = vec3<f32>(x_155.x, x_155.y, x_155.z);
  let x_160 : vec4<f32> = u_xlat2;
  let x_163 : f32 = x_13.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_160.z, x_160.w), x_163);
  let x_165 : vec3<f32> = vec3<f32>(x_164.x, x_164.y, x_164.z);
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec3<f32> = u_xlat3;
  let x_171 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) + x_170);
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec3<f32> = u_xlat3;
  let x_177 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + x_176);
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_183 : vec2<f32> = vs_TEXCOORD0;
  let x_185 : f32 = x_13.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_183, x_185);
  u_xlat3 = vec3<f32>(x_186.x, x_186.y, x_186.z);
  let x_188 : vec4<f32> = u_xlat1;
  let x_190 : vec3<f32> = u_xlat3;
  let x_191 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) + x_190);
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_196 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_200 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_196.x, x_196.x, x_196.x, x_196.x) * vec4<f32>(-1.0f, 0.0f, -1.0f, 1.0f)) + vec4<f32>(x_200.x, x_200.y, x_200.x, x_200.y));
  let x_207 : vec4<f32> = u_xlat4;
  let x_210 : f32 = x_13.x_GlobalMipBias.x;
  let x_211 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_207.x, x_207.y), x_210);
  u_xlat5 = vec3<f32>(x_211.x, x_211.y, x_211.z);
  let x_216 : vec4<f32> = u_xlat4;
  let x_219 : f32 = x_13.x_GlobalMipBias.x;
  let x_220 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_216.z, x_216.w), x_219);
  let x_221 : vec3<f32> = vec3<f32>(x_220.x, x_220.y, x_220.z);
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = u_xlat5;
  let x_227 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + x_226);
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec3<f32> = u_xlat3;
  let x_231 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_230 + x_231);
  let x_233 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(0.03125f, 0.03125f, 0.03125f));
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(0.125f, 0.125f, 0.125f)) + vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_255 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_251.x, x_251.x, x_251.x, x_251.x) * vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f)) + vec4<f32>(x_255.x, x_255.y, x_255.x, x_255.y));
  let x_262 : vec4<f32> = u_xlat1;
  let x_265 : f32 = x_13.x_GlobalMipBias.x;
  let x_266 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_262.x, x_262.y), x_265);
  u_xlat6 = vec3<f32>(x_266.x, x_266.y, x_266.z);
  let x_271 : vec4<f32> = u_xlat1;
  let x_274 : f32 = x_13.x_GlobalMipBias.x;
  let x_275 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_271.z, x_271.w), x_274);
  let x_276 : vec3<f32> = vec3<f32>(x_275.x, x_275.y, x_275.z);
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat2;
  let x_281 : vec3<f32> = u_xlat6;
  let x_282 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) + x_281);
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec3<f32> = u_xlat3;
  let x_286 : vec3<f32> = u_xlat6;
  u_xlat6 = (x_285 + x_286);
  let x_288 : vec3<f32> = u_xlat3;
  let x_289 : vec4<f32> = u_xlat2;
  let x_291 : vec3<f32> = (x_288 + vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat2;
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(0.03125f, 0.03125f, 0.03125f)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : vec3<f32> = u_xlat5;
  let x_305 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + x_304);
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec3<f32> = (vec3<f32>(x_308.x, x_308.y, x_308.z) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat2;
  let x_318 : vec4<f32> = u_xlat0;
  let x_320 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(0.03125f, 0.03125f, 0.03125f)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec2<f32> = vs_TEXCOORD0;
  let x_325 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_327 : vec2<f32> = (x_323 + vec2<f32>(x_325.x, x_325.x));
  let x_328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_328.w);
  let x_333 : vec4<f32> = u_xlat2;
  let x_336 : f32 = x_13.x_GlobalMipBias.x;
  let x_337 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_333.x, x_333.y), x_336);
  let x_338 : vec3<f32> = vec3<f32>(x_337.x, x_337.y, x_337.z);
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat2;
  let x_343 : vec3<f32> = u_xlat6;
  let x_344 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) + x_343);
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat1;
  let x_349 : vec4<f32> = u_xlat2;
  let x_351 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat1;
  let x_357 : vec4<f32> = u_xlat0;
  let x_359 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(0.03125f, 0.03125f, 0.03125f)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = x_13.x_Params;
  let x_368 : vec3<f32> = min(vec3<f32>(x_362.x, x_362.y, x_362.z), vec3<f32>(x_366.y, x_366.y, x_366.y));
  let x_369 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_375 : f32 = u_xlat0.y;
  let x_377 : f32 = u_xlat0.x;
  u_xlat21 = max(x_375, x_377);
  let x_381 : f32 = u_xlat0.z;
  let x_382 : f32 = u_xlat21;
  u_xlat21 = max(x_381, x_382);
  let x_384 : f32 = u_xlat21;
  let x_386 : f32 = x_13.x_Params.z;
  u_xlat1.x = (x_384 + -(x_386));
  let x_390 : f32 = u_xlat21;
  u_xlat21 = max(x_390, 0.00009999999747378752f);
  let x_395 : f32 = u_xlat1.x;
  let x_398 : f32 = x_13.x_Params.w;
  u_xlat8 = (x_395 + x_398);
  let x_400 : f32 = u_xlat8;
  u_xlat8 = max(x_400, 0.0f);
  let x_404 : f32 = x_13.x_Params.w;
  let x_406 : f32 = x_13.x_Params.w;
  u_xlat15 = (x_404 + x_406);
  let x_408 : f32 = u_xlat15;
  let x_409 : f32 = u_xlat8;
  u_xlat8 = min(x_408, x_409);
  let x_411 : f32 = u_xlat8;
  let x_412 : f32 = u_xlat8;
  u_xlat8 = (x_411 * x_412);
  let x_415 : f32 = x_13.x_Params.w;
  u_xlat15 = ((x_415 * 4.0f) + 0.00009999999747378752f);
  let x_419 : f32 = u_xlat8;
  let x_420 : f32 = u_xlat15;
  u_xlat8 = (x_419 / x_420);
  let x_422 : f32 = u_xlat8;
  let x_424 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_422, x_424);
  let x_428 : f32 = u_xlat1.x;
  let x_429 : f32 = u_xlat21;
  u_xlat21 = (x_428 / x_429);
  let x_431 : f32 = u_xlat21;
  let x_433 : vec4<f32> = u_xlat0;
  let x_435 : vec3<f32> = (vec3<f32>(x_431, x_431, x_431) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat0;
  let x_441 : vec3<f32> = max(vec3<f32>(x_438.x, x_438.y, x_438.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_442 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat0;
  let x_446 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) * vec3<f32>(0.125f, 0.125f, 0.125f));
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_450 : f32 = u_xlat0.y;
  let x_452 : f32 = u_xlat0.x;
  u_xlat21 = max(x_450, x_452);
  let x_455 : f32 = u_xlat0.z;
  u_xlat1.x = max(x_455, 0.00000999999974737875f);
  let x_459 : f32 = u_xlat21;
  let x_461 : f32 = u_xlat1.x;
  u_xlat21 = max(x_459, x_461);
  let x_463 : f32 = u_xlat21;
  u_xlat21 = (x_463 * 255.0f);
  let x_466 : f32 = u_xlat21;
  u_xlat21 = ceil(x_466);
  let x_468 : f32 = u_xlat21;
  u_xlat21 = (x_468 * 0.0039215688593685627f);
  let x_473 : vec4<f32> = u_xlat0;
  let x_475 : f32 = u_xlat21;
  let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.y, x_473.z) / vec3<f32>(x_475, x_475, x_475));
  let x_478 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : f32 = u_xlat21;
  SV_Target0.w = x_480;
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


