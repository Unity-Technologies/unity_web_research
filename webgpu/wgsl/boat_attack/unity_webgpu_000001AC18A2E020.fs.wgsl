diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_BlitTexture_TexelSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr = array<strided_arr, 9u>;

struct TemporalAAData {
  /* @offset(0) */
  x_TaaMotionVectorTex_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_TaaAccumulationTex_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_TaaFilterWeights : Arr,
  /* @offset(176) */
  x_TaaFrameInfluence : f32,
  /* @offset(180) */
  x_TaaVarianceClampScale : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_70 : TemporalAAData;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat45 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlat16 : f32;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb48 : bool;

var<private> u_xlatb46 : bool;

var<private> u_xlatb45 : bool;

var<private> u_xlatb16 : bool;

@group(0) @binding(2) var x_TaaMotionVectorTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlat36 : vec2<f32>;

@group(0) @binding(3) var x_TaaAccumulationTex : texture_2d<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatb1 : vec2<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_748 : f32;
  var x_767 : vec2<f32>;
  var x_785 : f32;
  var x_793 : f32;
  var x_854 : f32;
  var x_885 : f32;
  var x_894 : f32;
  var x_1350 : vec3<f32>;
  var x_1406 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_42 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_48 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_42.x, x_42.y, x_42.x, x_42.y) * vec4<f32>(0.0f, 1.0f, 1.0f, 0.0f)) + vec4<f32>(x_48.x, x_48.y, x_48.x, x_48.y));
  let x_55 : vec4<f32> = u_xlat1;
  let x_58 : f32 = x_27.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_55.x, x_55.y), x_58);
  let x_60 : vec3<f32> = vec3<f32>(x_59.x, x_59.y, x_59.z);
  let x_61 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_64 : vec4<f32> = u_xlat2;
  let x_73 : f32 = x_70.x_TaaFilterWeights[1i].el;
  u_xlat3 = (vec3<f32>(x_64.x, x_64.y, x_64.z) * vec3<f32>(x_73, x_73, x_73));
  let x_77 : f32 = x_70.x_TaaFilterWeights[0i].el;
  let x_79 : vec3<f32> = u_xlat0;
  let x_81 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_77, x_77, x_77) * x_79) + x_81);
  let x_86 : vec4<f32> = u_xlat1;
  let x_89 : f32 = x_27.x_GlobalMipBias.x;
  let x_90 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_86.z, x_86.w), x_89);
  u_xlat3 = vec3<f32>(x_90.x, x_90.y, x_90.z);
  let x_93 : f32 = x_70.x_TaaFilterWeights[2i].el;
  let x_95 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_93, x_93, x_93) * x_95) + x_97);
  let x_101 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_106 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_101.x, x_101.y, x_101.x, x_101.y) * vec4<f32>(-1.0f, 0.0f, 0.0f, -1.0f)) + vec4<f32>(x_106.x, x_106.y, x_106.x, x_106.y));
  let x_113 : vec4<f32> = u_xlat4;
  let x_116 : f32 = x_27.x_GlobalMipBias.x;
  let x_117 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_113.x, x_113.y), x_116);
  let x_118 : vec3<f32> = vec3<f32>(x_117.x, x_117.y, x_117.z);
  let x_119 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_123 : f32 = x_70.x_TaaFilterWeights[3i].el;
  let x_125 : vec4<f32> = u_xlat5;
  let x_128 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_123, x_123, x_123) * vec3<f32>(x_125.x, x_125.y, x_125.z)) + x_128);
  let x_134 : vec4<f32> = u_xlat4;
  let x_137 : f32 = x_27.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_134.z, x_134.w), x_137);
  u_xlat6 = vec3<f32>(x_138.x, x_138.y, x_138.z);
  let x_142 : f32 = x_70.x_TaaFilterWeights[4i].el;
  let x_144 : vec3<f32> = u_xlat6;
  let x_146 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_142, x_142, x_142) * x_144) + x_146);
  let x_150 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_154 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((vec4<f32>(x_150.x, x_150.y, x_150.x, x_150.y) * vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f)) + vec4<f32>(x_154.x, x_154.y, x_154.x, x_154.y));
  let x_161 : vec4<f32> = u_xlat7;
  let x_164 : f32 = x_27.x_GlobalMipBias.x;
  let x_165 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_161.x, x_161.y), x_164);
  let x_166 : vec3<f32> = vec3<f32>(x_165.x, x_165.y, x_165.z);
  let x_167 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_171 : f32 = x_70.x_TaaFilterWeights[5i].el;
  let x_173 : vec4<f32> = u_xlat8;
  let x_176 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_171, x_171, x_171) * vec3<f32>(x_173.x, x_173.y, x_173.z)) + x_176);
  let x_182 : vec4<f32> = u_xlat7;
  let x_185 : f32 = x_27.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_182.z, x_182.w), x_185);
  u_xlat9 = vec3<f32>(x_186.x, x_186.y, x_186.z);
  let x_190 : f32 = x_70.x_TaaFilterWeights[6i].el;
  let x_192 : vec3<f32> = u_xlat9;
  let x_194 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_190, x_190, x_190) * x_192) + x_194);
  let x_197 : vec2<f32> = vs_TEXCOORD0;
  let x_199 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_201 : vec2<f32> = (x_197 + vec2<f32>(x_199.x, x_199.y));
  let x_202 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_201.x, x_201.y, x_202.z);
  let x_208 : vec3<f32> = u_xlat10;
  let x_211 : f32 = x_27.x_GlobalMipBias.x;
  let x_212 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_208.x, x_208.y), x_211);
  u_xlat11 = vec3<f32>(x_212.x, x_212.y, x_212.z);
  let x_220 : vec3<f32> = u_xlat10;
  let x_223 : f32 = x_27.x_GlobalMipBias.x;
  let x_224 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_220.x, x_220.y), x_223);
  u_xlat45 = x_224.x;
  let x_226 : f32 = u_xlat45;
  u_xlat45 = (-(x_226) + 1.0f);
  let x_231 : f32 = x_70.x_TaaFilterWeights[7i].el;
  let x_233 : vec3<f32> = u_xlat11;
  let x_235 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_231, x_231, x_231) * x_233) + x_235);
  let x_237 : vec2<f32> = vs_TEXCOORD0;
  let x_239 : vec4<f32> = x_27.x_BlitTexture_TexelSize;
  let x_242 : vec2<f32> = (x_237 + -(vec2<f32>(x_239.x, x_239.y)));
  let x_243 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_242.x, x_242.y, x_243.z);
  let x_249 : vec3<f32> = u_xlat10;
  let x_252 : f32 = x_27.x_GlobalMipBias.x;
  let x_253 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_249.x, x_249.y), x_252);
  u_xlat12 = vec3<f32>(x_253.x, x_253.y, x_253.z);
  let x_259 : vec3<f32> = u_xlat10;
  let x_262 : f32 = x_27.x_GlobalMipBias.x;
  let x_263 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_259.x, x_259.y), x_262);
  u_xlat47 = x_263.x;
  let x_265 : f32 = u_xlat47;
  u_xlat47 = (-(x_265) + 1.0f);
  let x_270 : f32 = x_70.x_TaaFilterWeights[8i].el;
  let x_272 : vec3<f32> = u_xlat12;
  let x_274 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_270, x_270, x_270) * x_272) + x_274);
  let x_277 : vec3<f32> = u_xlat0;
  u_xlat48 = dot(vec2<f32>(x_277.x, x_277.z), vec2<f32>(0.5f, -0.5f));
  let x_283 : f32 = u_xlat48;
  u_xlat10.y = (x_283 + 0.50196081399917602539f);
  let x_288 : vec3<f32> = u_xlat0;
  u_xlat48 = dot(vec3<f32>(x_288.x, x_288.z, x_288.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_293 : vec3<f32> = u_xlat0;
  u_xlat10.x = dot(vec3<f32>(x_293.x, x_293.z, x_293.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_299 : f32 = u_xlat48;
  u_xlat10.z = (x_299 + 0.50196081399917602539f);
  let x_303 : vec3<f32> = u_xlat6;
  u_xlat0.x = dot(vec2<f32>(x_303.x, x_303.z), vec2<f32>(0.5f, -0.5f));
  let x_308 : f32 = u_xlat0.x;
  u_xlat0.y = (x_308 + 0.50196081399917602539f);
  let x_311 : vec3<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_311.x, x_311.z, x_311.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_314 : vec3<f32> = u_xlat6;
  u_xlat0.x = dot(vec3<f32>(x_314.x, x_314.z, x_314.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_318 : f32 = u_xlat48;
  u_xlat0.z = (x_318 + 0.50196081399917602539f);
  let x_321 : vec3<f32> = u_xlat0;
  let x_322 : vec3<f32> = u_xlat0;
  u_xlat6 = (x_321 * x_322);
  let x_324 : vec3<f32> = u_xlat10;
  let x_325 : vec3<f32> = u_xlat10;
  let x_327 : vec3<f32> = u_xlat6;
  u_xlat6 = ((x_324 * x_325) + x_327);
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat48 = dot(vec2<f32>(x_329.x, x_329.z), vec2<f32>(0.5f, -0.5f));
  let x_333 : f32 = u_xlat48;
  u_xlat13.y = (x_333 + 0.50196081399917602539f);
  let x_336 : vec4<f32> = u_xlat5;
  u_xlat48 = dot(vec3<f32>(x_336.x, x_336.z, x_336.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_339 : vec4<f32> = u_xlat5;
  u_xlat13.x = dot(vec3<f32>(x_339.x, x_339.z, x_339.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_343 : f32 = u_xlat48;
  u_xlat13.z = (x_343 + 0.50196081399917602539f);
  let x_346 : vec3<f32> = u_xlat13;
  let x_347 : vec3<f32> = u_xlat13;
  let x_349 : vec3<f32> = u_xlat6;
  let x_350 : vec3<f32> = ((x_346 * x_347) + x_349);
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(vec2<f32>(x_353.x, x_353.z), vec2<f32>(0.5f, -0.5f));
  let x_356 : f32 = u_xlat48;
  u_xlat6.y = (x_356 + 0.50196081399917602539f);
  let x_359 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(vec3<f32>(x_359.x, x_359.z, x_359.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_362 : vec3<f32> = u_xlat3;
  u_xlat6.x = dot(vec3<f32>(x_362.x, x_362.z, x_362.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_366 : f32 = u_xlat48;
  u_xlat6.z = (x_366 + 0.50196081399917602539f);
  let x_369 : vec3<f32> = u_xlat6;
  let x_370 : vec3<f32> = u_xlat6;
  let x_372 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_369 * x_370) + vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(vec2<f32>(x_375.x, x_375.z), vec2<f32>(0.5f, -0.5f));
  let x_378 : f32 = u_xlat48;
  u_xlat5.y = (x_378 + 0.50196081399917602539f);
  let x_381 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_381.x, x_381.z, x_381.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec3<f32>(x_384.x, x_384.z, x_384.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_388 : f32 = u_xlat48;
  u_xlat5.z = (x_388 + 0.50196081399917602539f);
  let x_391 : vec4<f32> = u_xlat5;
  let x_393 : vec4<f32> = u_xlat5;
  let x_396 : vec3<f32> = u_xlat3;
  let x_397 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393.x, x_393.y, x_393.z)) + x_396);
  let x_398 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec3<f32> = u_xlat12;
  u_xlat3.x = dot(vec2<f32>(x_400.x, x_400.z), vec2<f32>(0.5f, -0.5f));
  let x_405 : f32 = u_xlat3.x;
  u_xlat3.y = (x_405 + 0.50196081399917602539f);
  let x_408 : vec3<f32> = u_xlat12;
  u_xlat48 = dot(vec3<f32>(x_408.x, x_408.z, x_408.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_411 : vec3<f32> = u_xlat12;
  u_xlat3.x = dot(vec3<f32>(x_411.x, x_411.z, x_411.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_415 : f32 = u_xlat48;
  u_xlat3.z = (x_415 + 0.50196081399917602539f);
  let x_418 : vec3<f32> = u_xlat3;
  let x_419 : vec3<f32> = u_xlat3;
  let x_421 : vec4<f32> = u_xlat2;
  let x_423 : vec3<f32> = ((x_418 * x_419) + vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec3<f32> = u_xlat9;
  u_xlat48 = dot(vec2<f32>(x_426.x, x_426.z), vec2<f32>(0.5f, -0.5f));
  let x_429 : f32 = u_xlat48;
  u_xlat12.y = (x_429 + 0.50196081399917602539f);
  let x_432 : vec3<f32> = u_xlat9;
  u_xlat48 = dot(vec3<f32>(x_432.x, x_432.z, x_432.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_435 : vec3<f32> = u_xlat9;
  u_xlat12.x = dot(vec3<f32>(x_435.x, x_435.z, x_435.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_439 : f32 = u_xlat48;
  u_xlat12.z = (x_439 + 0.50196081399917602539f);
  let x_442 : vec3<f32> = u_xlat12;
  let x_443 : vec3<f32> = u_xlat12;
  let x_445 : vec4<f32> = u_xlat2;
  let x_447 : vec3<f32> = ((x_442 * x_443) + vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat8;
  u_xlat48 = dot(vec2<f32>(x_450.x, x_450.z), vec2<f32>(0.5f, -0.5f));
  let x_453 : f32 = u_xlat48;
  u_xlat9.y = (x_453 + 0.50196081399917602539f);
  let x_456 : vec4<f32> = u_xlat8;
  u_xlat48 = dot(vec3<f32>(x_456.x, x_456.z, x_456.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_459 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(vec3<f32>(x_459.x, x_459.z, x_459.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_463 : f32 = u_xlat48;
  u_xlat9.z = (x_463 + 0.50196081399917602539f);
  let x_466 : vec3<f32> = u_xlat9;
  let x_467 : vec3<f32> = u_xlat9;
  let x_469 : vec4<f32> = u_xlat2;
  let x_471 : vec3<f32> = ((x_466 * x_467) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec3<f32> = u_xlat11;
  u_xlat48 = dot(vec2<f32>(x_474.x, x_474.z), vec2<f32>(0.5f, -0.5f));
  let x_477 : f32 = u_xlat48;
  u_xlat8.y = (x_477 + 0.50196081399917602539f);
  let x_480 : vec3<f32> = u_xlat11;
  u_xlat48 = dot(vec3<f32>(x_480.x, x_480.z, x_480.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_483 : vec3<f32> = u_xlat11;
  u_xlat8.x = dot(vec3<f32>(x_483.x, x_483.z, x_483.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_487 : f32 = u_xlat48;
  u_xlat8.z = (x_487 + 0.50196081399917602539f);
  let x_490 : vec4<f32> = u_xlat8;
  let x_492 : vec4<f32> = u_xlat8;
  let x_495 : vec4<f32> = u_xlat2;
  let x_497 : vec3<f32> = ((vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(x_492.x, x_492.y, x_492.z)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec3<f32> = u_xlat0;
  let x_501 : vec3<f32> = u_xlat10;
  u_xlat11 = (x_500 + x_501);
  let x_503 : vec3<f32> = u_xlat13;
  let x_504 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_503 + x_504);
  let x_506 : vec3<f32> = u_xlat6;
  let x_507 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_506 + x_507);
  let x_509 : vec4<f32> = u_xlat5;
  let x_511 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_509.x, x_509.y, x_509.z) + x_511);
  let x_513 : vec3<f32> = u_xlat3;
  let x_514 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_513 + x_514);
  let x_516 : vec3<f32> = u_xlat12;
  let x_517 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_516 + x_517);
  let x_519 : vec3<f32> = u_xlat9;
  let x_520 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_519 + x_520);
  let x_522 : vec4<f32> = u_xlat8;
  let x_524 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_522.x, x_522.y, x_522.z) + x_524);
  let x_527 : vec3<f32> = u_xlat11;
  u_xlat14 = (x_527 * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f));
  let x_531 : vec3<f32> = u_xlat14;
  let x_532 : vec3<f32> = u_xlat14;
  u_xlat14 = (x_531 * x_532);
  let x_534 : vec4<f32> = u_xlat2;
  let x_537 : vec3<f32> = u_xlat14;
  let x_539 : vec3<f32> = ((vec3<f32>(x_534.x, x_534.y, x_534.z) * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f)) + -(x_537));
  let x_540 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat2;
  let x_545 : vec3<f32> = sqrt(abs(vec3<f32>(x_542.x, x_542.y, x_542.z)));
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec4<f32> = u_xlat2;
  let x_551 : f32 = x_70.x_TaaVarianceClampScale;
  let x_553 : f32 = x_70.x_TaaVarianceClampScale;
  let x_555 : f32 = x_70.x_TaaVarianceClampScale;
  let x_556 : vec3<f32> = vec3<f32>(x_551, x_553, x_555);
  let x_561 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : vec3<f32> = u_xlat11;
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat14 = ((x_564 * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f)) + -(vec3<f32>(x_566.x, x_566.y, x_566.z)));
  let x_570 : vec3<f32> = u_xlat11;
  let x_572 : vec4<f32> = u_xlat2;
  let x_574 : vec3<f32> = ((x_570 * vec3<f32>(0.11111111193895339966f, 0.11111111193895339966f, 0.11111111193895339966f)) + vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec3<f32> = u_xlat10;
  let x_578 : vec3<f32> = u_xlat0;
  u_xlat11 = min(x_577, x_578);
  let x_580 : vec3<f32> = u_xlat10;
  let x_581 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_580, x_581);
  let x_583 : vec3<f32> = u_xlat0;
  let x_584 : vec3<f32> = u_xlat13;
  u_xlat0 = max(x_583, x_584);
  let x_586 : vec3<f32> = u_xlat11;
  let x_587 : vec3<f32> = u_xlat13;
  u_xlat11 = min(x_586, x_587);
  let x_589 : vec3<f32> = u_xlat6;
  let x_590 : vec3<f32> = u_xlat11;
  u_xlat11 = min(x_589, x_590);
  let x_592 : vec3<f32> = u_xlat0;
  let x_593 : vec3<f32> = u_xlat6;
  u_xlat0 = max(x_592, x_593);
  let x_595 : vec3<f32> = u_xlat0;
  let x_596 : vec4<f32> = u_xlat5;
  u_xlat0 = max(x_595, vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat5;
  let x_601 : vec3<f32> = u_xlat11;
  let x_602 : vec3<f32> = min(vec3<f32>(x_599.x, x_599.y, x_599.z), x_601);
  let x_603 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec3<f32> = u_xlat3;
  let x_606 : vec4<f32> = u_xlat5;
  let x_608 : vec3<f32> = min(x_605, vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec3<f32> = u_xlat0;
  let x_612 : vec3<f32> = u_xlat3;
  u_xlat0 = max(x_611, x_612);
  let x_614 : vec3<f32> = u_xlat0;
  let x_615 : vec3<f32> = u_xlat12;
  u_xlat0 = max(x_614, x_615);
  let x_617 : vec4<f32> = u_xlat5;
  let x_619 : vec3<f32> = u_xlat12;
  u_xlat3 = min(vec3<f32>(x_617.x, x_617.y, x_617.z), x_619);
  let x_621 : vec3<f32> = u_xlat3;
  let x_622 : vec3<f32> = u_xlat9;
  u_xlat3 = min(x_621, x_622);
  let x_624 : vec3<f32> = u_xlat0;
  let x_625 : vec3<f32> = u_xlat9;
  u_xlat0 = max(x_624, x_625);
  let x_627 : vec3<f32> = u_xlat0;
  let x_628 : vec4<f32> = u_xlat8;
  u_xlat0 = max(x_627, vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : vec3<f32> = u_xlat3;
  let x_632 : vec4<f32> = u_xlat8;
  u_xlat3 = min(x_631, vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec3<f32> = u_xlat14;
  let x_636 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_635, x_636);
  let x_638 : vec4<f32> = u_xlat2;
  let x_640 : vec3<f32> = u_xlat0;
  u_xlat0 = min(vec3<f32>(x_638.x, x_638.y, x_638.z), x_640);
  let x_642 : vec3<f32> = u_xlat3;
  let x_643 : vec3<f32> = u_xlat0;
  let x_644 : vec3<f32> = (x_642 + x_643);
  let x_645 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec3<f32> = u_xlat3;
  let x_649 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(x_647) + x_649);
  let x_651 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_651 * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_654 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_660 : vec2<f32> = vs_TEXCOORD0;
  let x_662 : f32 = x_27.x_GlobalMipBias.x;
  let x_663 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, x_660, x_662);
  u_xlat48 = x_663.x;
  let x_665 : f32 = u_xlat48;
  u_xlat48 = (-(x_665) + 1.0f);
  let x_668 : f32 = u_xlat48;
  u_xlat48 = min(x_668, 1.0f);
  let x_673 : vec4<f32> = u_xlat1;
  let x_676 : f32 = x_27.x_GlobalMipBias.x;
  let x_677 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_673.z, x_673.w), x_676);
  u_xlat1.z = x_677.x;
  let x_683 : vec4<f32> = u_xlat1;
  let x_686 : f32 = x_27.x_GlobalMipBias.x;
  let x_687 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_683.x, x_683.y), x_686);
  u_xlat1.x = x_687.x;
  let x_690 : vec4<f32> = u_xlat1;
  let x_694 : vec2<f32> = (-(vec2<f32>(x_690.x, x_690.z)) + vec2<f32>(1.0f, 1.0f));
  let x_695 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_695.z, x_695.w);
  let x_701 : f32 = u_xlat1.y;
  let x_702 : f32 = u_xlat48;
  u_xlatb31 = (x_701 < x_702);
  let x_706 : f32 = u_xlat1.y;
  let x_707 : f32 = u_xlat48;
  u_xlat16 = min(x_706, x_707);
  let x_711 : bool = u_xlatb31;
  u_xlat31.x = select(0.0f, 1.0f, x_711);
  let x_718 : vec4<f32> = u_xlat4;
  let x_721 : f32 = x_27.x_GlobalMipBias.x;
  let x_722 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_718.z, x_718.w), x_721);
  u_xlat46 = x_722.x;
  let x_727 : vec4<f32> = u_xlat4;
  let x_730 : f32 = x_27.x_GlobalMipBias.x;
  let x_731 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_727.x, x_727.y), x_730);
  u_xlat48 = x_731.x;
  let x_733 : f32 = u_xlat48;
  u_xlat48 = (-(x_733) + 1.0f);
  let x_736 : f32 = u_xlat46;
  u_xlat46 = (-(x_736) + 1.0f);
  let x_740 : f32 = u_xlat46;
  let x_741 : f32 = u_xlat16;
  u_xlatb4 = (x_740 < x_741);
  let x_743 : f32 = u_xlat46;
  let x_744 : f32 = u_xlat16;
  u_xlat16 = min(x_743, x_744);
  let x_746 : bool = u_xlatb4;
  if (x_746) {
    x_748 = 0.0f;
  } else {
    let x_753 : f32 = u_xlat31.x;
    x_748 = x_753;
  }
  let x_754 : f32 = x_748;
  u_xlat31.x = x_754;
  let x_756 : bool = u_xlatb4;
  u_xlat31.y = select(0.0f, -1.0f, x_756);
  let x_759 : f32 = u_xlat48;
  let x_760 : f32 = u_xlat16;
  u_xlatb4 = (x_759 < x_760);
  let x_762 : f32 = u_xlat48;
  let x_763 : f32 = u_xlat16;
  u_xlat16 = min(x_762, x_763);
  let x_765 : bool = u_xlatb4;
  if (x_765) {
    x_767 = vec2<f32>(-1.0f, 0.0f);
  } else {
    let x_772 : vec2<f32> = u_xlat31;
    x_767 = x_772;
  }
  let x_773 : vec2<f32> = x_767;
  u_xlat31 = x_773;
  let x_776 : f32 = u_xlat1.x;
  let x_777 : f32 = u_xlat16;
  u_xlatb48 = (x_776 < x_777);
  let x_780 : f32 = u_xlat1.x;
  let x_781 : f32 = u_xlat16;
  u_xlat1.x = min(x_780, x_781);
  let x_784 : bool = u_xlatb48;
  if (x_784) {
    x_785 = 0.0f;
  } else {
    let x_790 : f32 = u_xlat31.x;
    x_785 = x_790;
  }
  let x_791 : f32 = x_785;
  u_xlat16 = x_791;
  let x_792 : bool = u_xlatb48;
  if (x_792) {
    x_793 = 1.0f;
  } else {
    let x_798 : f32 = u_xlat31.y;
    x_793 = x_798;
  }
  let x_799 : f32 = x_793;
  u_xlat31.x = x_799;
  let x_802 : f32 = u_xlat47;
  let x_804 : f32 = u_xlat1.x;
  u_xlatb46 = (x_802 < x_804);
  let x_806 : f32 = u_xlat47;
  let x_808 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_806, x_808);
  let x_811 : bool = u_xlatb46;
  let x_812 : f32 = u_xlat16;
  u_xlat16 = select(x_812, -1.0f, x_811);
  let x_817 : vec4<f32> = u_xlat7;
  let x_820 : f32 = x_27.x_GlobalMipBias.x;
  let x_821 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_817.z, x_817.w), x_820);
  u_xlat47 = x_821.x;
  let x_826 : vec4<f32> = u_xlat7;
  let x_829 : f32 = x_27.x_GlobalMipBias.x;
  let x_830 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_PointClamp, vec2<f32>(x_826.x, x_826.y), x_829);
  u_xlat48 = x_830.x;
  let x_832 : f32 = u_xlat48;
  u_xlat48 = (-(x_832) + 1.0f);
  let x_835 : f32 = u_xlat47;
  u_xlat47 = (-(x_835) + 1.0f);
  let x_838 : f32 = u_xlat47;
  let x_840 : f32 = u_xlat1.x;
  u_xlatb4 = (x_838 < x_840);
  let x_843 : f32 = u_xlat1.x;
  let x_844 : f32 = u_xlat47;
  u_xlat1.x = min(x_843, x_844);
  let x_847 : bool = u_xlatb4;
  let x_848 : f32 = u_xlat16;
  u_xlat16 = select(x_848, 1.0f, x_847);
  let x_850 : bool = u_xlatb46;
  let x_851 : bool = u_xlatb4;
  u_xlatb46 = (x_850 | x_851);
  let x_853 : bool = u_xlatb46;
  if (x_853) {
    x_854 = -1.0f;
  } else {
    let x_859 : f32 = u_xlat31.x;
    x_854 = x_859;
  }
  let x_860 : f32 = x_854;
  u_xlat31.x = x_860;
  let x_862 : f32 = u_xlat48;
  let x_864 : f32 = u_xlat1.x;
  u_xlatb46 = (x_862 < x_864);
  let x_866 : f32 = u_xlat48;
  let x_868 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_866, x_868);
  let x_872 : f32 = u_xlat45;
  let x_874 : f32 = u_xlat1.x;
  u_xlatb45 = (x_872 < x_874);
  let x_876 : bool = u_xlatb46;
  let x_877 : f32 = u_xlat16;
  u_xlat1.x = select(x_877, -1.0f, x_876);
  let x_881 : bool = u_xlatb45;
  let x_882 : bool = u_xlatb46;
  u_xlatb16 = (x_881 | x_882);
  let x_884 : bool = u_xlatb45;
  if (x_884) {
    x_885 = 1.0f;
  } else {
    let x_890 : f32 = u_xlat1.x;
    x_885 = x_890;
  }
  let x_891 : f32 = x_885;
  u_xlat4.x = x_891;
  let x_893 : bool = u_xlatb16;
  if (x_893) {
    x_894 = 1.0f;
  } else {
    let x_899 : f32 = u_xlat31.x;
    x_894 = x_899;
  }
  let x_900 : f32 = x_894;
  u_xlat4.y = x_900;
  let x_903 : vec4<f32> = x_70.x_TaaMotionVectorTex_TexelSize;
  let x_905 : vec4<f32> = u_xlat4;
  let x_908 : vec2<f32> = vs_TEXCOORD0;
  let x_909 : vec2<f32> = ((vec2<f32>(x_903.x, x_903.y) * vec2<f32>(x_905.x, x_905.y)) + x_908);
  let x_910 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_909.x, x_909.y, x_910.z, x_910.w);
  let x_917 : vec4<f32> = u_xlat1;
  let x_920 : f32 = x_27.x_GlobalMipBias.x;
  let x_921 : vec4<f32> = textureSampleBias(x_TaaMotionVectorTex, sampler_LinearClamp, vec2<f32>(x_917.x, x_917.y), x_920);
  let x_922 : vec2<f32> = vec2<f32>(x_921.x, x_921.y);
  let x_923 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_922.x, x_922.y, x_923.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat1;
  let x_928 : vec2<f32> = vs_TEXCOORD0;
  u_xlat31 = (-(vec2<f32>(x_925.x, x_925.y)) + x_928);
  let x_930 : vec2<f32> = u_xlat31;
  let x_932 : vec4<f32> = x_70.x_TaaAccumulationTex_TexelSize;
  let x_936 : vec2<f32> = ((x_930 * vec2<f32>(x_932.z, x_932.w)) + vec2<f32>(-0.5f, -0.5f));
  let x_937 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
  let x_939 : vec4<f32> = u_xlat4;
  let x_941 : vec2<f32> = floor(vec2<f32>(x_939.x, x_939.y));
  let x_942 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
  let x_944 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_944.x, x_944.y, x_944.x, x_944.y) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_948 : vec4<f32> = u_xlat4;
  let x_952 : vec2<f32> = (vec2<f32>(x_948.x, x_948.y) + vec2<f32>(2.5f, 2.5f));
  let x_953 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
  let x_955 : vec4<f32> = u_xlat4;
  let x_958 : vec4<f32> = x_70.x_TaaAccumulationTex_TexelSize;
  let x_960 : vec2<f32> = (vec2<f32>(x_955.x, x_955.y) * vec2<f32>(x_958.x, x_958.y));
  let x_961 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
  let x_963 : vec2<f32> = u_xlat31;
  let x_965 : vec4<f32> = x_70.x_TaaAccumulationTex_TexelSize;
  let x_968 : vec4<f32> = u_xlat5;
  u_xlat31 = ((x_963 * vec2<f32>(x_965.z, x_965.w)) + -(vec2<f32>(x_968.x, x_968.y)));
  let x_972 : vec2<f32> = u_xlat31;
  let x_973 : vec2<f32> = u_xlat31;
  let x_974 : vec2<f32> = (x_972 * x_973);
  let x_975 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_974.x, x_974.y, x_975.z);
  let x_977 : vec2<f32> = u_xlat31;
  let x_979 : vec3<f32> = u_xlat6;
  u_xlat7 = (vec4<f32>(x_977.x, x_977.y, x_977.x, x_977.y) * vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y));
  let x_983 : vec4<f32> = u_xlat7;
  let x_986 : vec3<f32> = u_xlat6;
  u_xlat36 = ((vec2<f32>(x_983.w, x_983.z) * vec2<f32>(-0.5f, -0.5f)) + vec2<f32>(x_986.y, x_986.x));
  let x_989 : vec2<f32> = u_xlat31;
  let x_994 : vec2<f32> = u_xlat36;
  u_xlat36 = ((-(vec2<f32>(x_989.y, x_989.x)) * vec2<f32>(0.5f, 0.5f)) + x_994);
  let x_996 : vec4<f32> = u_xlat7;
  let x_1000 : vec2<f32> = (vec2<f32>(x_996.x, x_996.y) * vec2<f32>(-1.5f, -1.5f));
  let x_1001 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
  let x_1003 : vec3<f32> = u_xlat6;
  let x_1008 : vec4<f32> = u_xlat7;
  let x_1010 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_1008.x, x_1008.y));
  let x_1011 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
  let x_1013 : vec3<f32> = u_xlat6;
  u_xlat8 = (vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) * vec4<f32>(2.5f, 2.5f, 0.5f, 0.5f));
  let x_1017 : vec2<f32> = u_xlat31;
  let x_1019 : vec4<f32> = u_xlat7;
  u_xlat31 = ((x_1017 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_1019.x, x_1019.y));
  let x_1022 : vec4<f32> = u_xlat7;
  let x_1027 : vec4<f32> = u_xlat8;
  let x_1030 : vec2<f32> = ((vec2<f32>(x_1022.w, x_1022.z) * vec2<f32>(1.5f, 1.5f)) + -(vec2<f32>(x_1027.y, x_1027.x)));
  let x_1031 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_1030.x, x_1030.y, x_1031.z);
  let x_1033 : vec4<f32> = u_xlat7;
  let x_1036 : vec4<f32> = u_xlat8;
  let x_1039 : vec2<f32> = ((vec2<f32>(x_1033.z, x_1033.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1036.z, x_1036.w)));
  let x_1040 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
  let x_1042 : vec3<f32> = u_xlat6;
  let x_1044 : vec2<f32> = (vec2<f32>(x_1042.x, x_1042.y) + vec2<f32>(1.0f, 1.0f));
  let x_1045 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_1044.x, x_1044.y, x_1045.z);
  let x_1047 : vec2<f32> = u_xlat31;
  let x_1049 : vec3<f32> = u_xlat6;
  let x_1051 : vec2<f32> = (vec2<f32>(x_1047.y, x_1047.x) + vec2<f32>(x_1049.x, x_1049.y));
  let x_1052 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_1051.x, x_1051.y, x_1052.z);
  let x_1054 : vec2<f32> = u_xlat31;
  let x_1055 : vec3<f32> = u_xlat6;
  u_xlat31 = (x_1054 / vec2<f32>(x_1055.y, x_1055.x));
  let x_1058 : vec2<f32> = u_xlat31;
  let x_1059 : vec4<f32> = u_xlat5;
  u_xlat31 = (x_1058 + vec2<f32>(x_1059.x, x_1059.y));
  let x_1062 : vec4<f32> = u_xlat5;
  let x_1065 : vec4<f32> = x_70.x_TaaAccumulationTex_TexelSize;
  let x_1067 : vec2<f32> = (vec2<f32>(x_1062.z, x_1062.w) * vec2<f32>(x_1065.x, x_1065.y));
  let x_1068 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1068.x, x_1068.y, x_1067.x, x_1067.y);
  let x_1070 : vec2<f32> = u_xlat31;
  let x_1072 : vec4<f32> = x_70.x_TaaAccumulationTex_TexelSize;
  let x_1074 : vec2<f32> = (x_1070 * vec2<f32>(x_1072.x, x_1072.y));
  let x_1075 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
  let x_1077 : vec2<f32> = u_xlat36;
  let x_1078 : vec3<f32> = u_xlat6;
  u_xlat31 = (x_1077 * vec2<f32>(x_1078.y, x_1078.x));
  let x_1085 : vec4<f32> = u_xlat5;
  let x_1088 : f32 = x_27.x_GlobalMipBias.x;
  let x_1089 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_1085.z, x_1085.y), x_1088);
  let x_1090 : vec3<f32> = vec3<f32>(x_1089.x, x_1089.y, x_1089.z);
  let x_1091 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1096 : vec4<f32> = u_xlat5;
  let x_1099 : f32 = x_27.x_GlobalMipBias.x;
  let x_1100 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_1096.x, x_1096.w), x_1099);
  u_xlat9 = vec3<f32>(x_1100.x, x_1100.y, x_1100.z);
  let x_1102 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec2<f32>(x_1102.x, x_1102.z), vec2<f32>(0.5f, -0.5f));
  let x_1105 : f32 = u_xlat45;
  u_xlat11.y = (x_1105 + 0.50196081399917602539f);
  let x_1108 : vec4<f32> = u_xlat8;
  u_xlat45 = dot(vec3<f32>(x_1108.x, x_1108.z, x_1108.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_1111 : vec4<f32> = u_xlat8;
  u_xlat11.x = dot(vec3<f32>(x_1111.x, x_1111.z, x_1111.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_1115 : f32 = u_xlat45;
  u_xlat11.z = (x_1115 + 0.50196081399917602539f);
  let x_1118 : vec2<f32> = u_xlat31;
  let x_1120 : vec3<f32> = u_xlat11;
  let x_1121 : vec3<f32> = (vec3<f32>(x_1118.y, x_1118.y, x_1118.y) * x_1120);
  let x_1122 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  let x_1124 : vec3<f32> = u_xlat9;
  u_xlat45 = dot(vec2<f32>(x_1124.x, x_1124.z), vec2<f32>(0.5f, -0.5f));
  let x_1127 : f32 = u_xlat45;
  u_xlat11.y = (x_1127 + 0.50196081399917602539f);
  let x_1130 : vec3<f32> = u_xlat9;
  u_xlat45 = dot(vec3<f32>(x_1130.x, x_1130.z, x_1130.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_1133 : vec3<f32> = u_xlat9;
  u_xlat11.x = dot(vec3<f32>(x_1133.x, x_1133.z, x_1133.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_1137 : f32 = u_xlat45;
  u_xlat11.z = (x_1137 + 0.50196081399917602539f);
  let x_1140 : vec3<f32> = u_xlat11;
  let x_1141 : vec2<f32> = u_xlat31;
  let x_1144 : vec4<f32> = u_xlat8;
  let x_1146 : vec3<f32> = ((x_1140 * vec3<f32>(x_1141.x, x_1141.x, x_1141.x)) + vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1147 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1150 : f32 = u_xlat31.y;
  let x_1152 : f32 = u_xlat31.x;
  u_xlat45 = (x_1150 + x_1152);
  let x_1155 : f32 = u_xlat6.y;
  let x_1157 : f32 = u_xlat6.x;
  let x_1159 : f32 = u_xlat45;
  u_xlat45 = ((x_1155 * x_1157) + x_1159);
  let x_1162 : f32 = u_xlat7.x;
  let x_1164 : f32 = u_xlat6.x;
  let x_1166 : f32 = u_xlat45;
  u_xlat45 = ((x_1162 * x_1164) + x_1166);
  let x_1169 : f32 = u_xlat7.y;
  let x_1171 : f32 = u_xlat6.y;
  let x_1173 : f32 = u_xlat45;
  u_xlat45 = ((x_1169 * x_1171) + x_1173);
  let x_1175 : vec3<f32> = u_xlat6;
  let x_1177 : vec4<f32> = u_xlat7;
  u_xlat31 = (vec2<f32>(x_1175.x, x_1175.y) * vec2<f32>(x_1177.x, x_1177.y));
  let x_1181 : f32 = u_xlat6.x;
  let x_1183 : f32 = u_xlat6.y;
  u_xlat47 = (x_1181 * x_1183);
  let x_1185 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1185);
  let x_1190 : vec4<f32> = u_xlat5;
  let x_1193 : f32 = x_27.x_GlobalMipBias.x;
  let x_1194 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_1190.x, x_1190.y), x_1193);
  u_xlat6 = vec3<f32>(x_1194.x, x_1194.y, x_1194.z);
  let x_1196 : vec4<f32> = u_xlat5;
  let x_1197 : vec2<f32> = vec2<f32>(x_1196.y, x_1196.x);
  let x_1198 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1198.x, x_1198.y, x_1197.x, x_1197.y);
  let x_1200 : vec3<f32> = u_xlat6;
  u_xlat48 = dot(vec2<f32>(x_1200.x, x_1200.z), vec2<f32>(0.5f, -0.5f));
  let x_1203 : f32 = u_xlat48;
  u_xlat5.y = (x_1203 + 0.50196081399917602539f);
  let x_1206 : vec3<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1206.x, x_1206.z, x_1206.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_1209 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(vec3<f32>(x_1209.x, x_1209.z, x_1209.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_1213 : f32 = u_xlat48;
  u_xlat5.z = (x_1213 + 0.50196081399917602539f);
  let x_1216 : vec4<f32> = u_xlat5;
  let x_1218 : f32 = u_xlat47;
  let x_1221 : vec4<f32> = u_xlat8;
  let x_1223 : vec3<f32> = ((vec3<f32>(x_1216.x, x_1216.y, x_1216.z) * vec3<f32>(x_1218, x_1218, x_1218)) + vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  let x_1229 : vec4<f32> = u_xlat4;
  let x_1232 : f32 = x_27.x_GlobalMipBias.x;
  let x_1233 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_1229.x, x_1229.z), x_1232);
  u_xlat6 = vec3<f32>(x_1233.x, x_1233.y, x_1233.z);
  let x_1238 : vec4<f32> = u_xlat4;
  let x_1241 : f32 = x_27.x_GlobalMipBias.x;
  let x_1242 : vec4<f32> = textureSampleBias(x_TaaAccumulationTex, sampler_LinearClamp, vec2<f32>(x_1238.w, x_1238.y), x_1241);
  let x_1243 : vec3<f32> = vec3<f32>(x_1242.x, x_1242.y, x_1242.z);
  let x_1244 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
  let x_1246 : vec3<f32> = u_xlat6;
  u_xlat47 = dot(vec2<f32>(x_1246.x, x_1246.z), vec2<f32>(0.5f, -0.5f));
  let x_1249 : f32 = u_xlat47;
  u_xlat7.y = (x_1249 + 0.50196081399917602539f);
  let x_1252 : vec3<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_1252.x, x_1252.z, x_1252.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_1255 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(vec3<f32>(x_1255.x, x_1255.z, x_1255.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_1259 : f32 = u_xlat47;
  u_xlat7.z = (x_1259 + 0.50196081399917602539f);
  let x_1262 : vec4<f32> = u_xlat7;
  let x_1264 : vec2<f32> = u_xlat31;
  let x_1267 : vec4<f32> = u_xlat5;
  let x_1269 : vec3<f32> = ((vec3<f32>(x_1262.x, x_1262.y, x_1262.z) * vec3<f32>(x_1264.x, x_1264.x, x_1264.x)) + vec3<f32>(x_1267.x, x_1267.y, x_1267.z));
  let x_1270 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
  let x_1272 : vec4<f32> = u_xlat4;
  u_xlat31.x = dot(vec2<f32>(x_1272.x, x_1272.z), vec2<f32>(0.5f, -0.5f));
  let x_1277 : f32 = u_xlat31.x;
  u_xlat6.y = (x_1277 + 0.50196081399917602539f);
  let x_1280 : vec4<f32> = u_xlat4;
  u_xlat31.x = dot(vec3<f32>(x_1280.x, x_1280.z, x_1280.y), vec3<f32>(-0.25f, -0.25f, 0.5f));
  let x_1284 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(vec3<f32>(x_1284.x, x_1284.z, x_1284.y), vec3<f32>(0.25f, 0.25f, 0.5f));
  let x_1289 : f32 = u_xlat31.x;
  u_xlat6.z = (x_1289 + 0.50196081399917602539f);
  let x_1292 : vec3<f32> = u_xlat6;
  let x_1293 : vec2<f32> = u_xlat31;
  let x_1296 : vec4<f32> = u_xlat5;
  let x_1298 : vec3<f32> = ((x_1292 * vec3<f32>(x_1293.y, x_1293.y, x_1293.y)) + vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
  let x_1299 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
  let x_1301 : vec4<f32> = u_xlat4;
  let x_1303 : f32 = u_xlat45;
  let x_1306 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_1301.x, x_1301.y, x_1301.z) * vec3<f32>(x_1303, x_1303, x_1303)) + -(x_1306));
  let x_1309 : f32 = u_xlat45;
  let x_1311 : vec4<f32> = u_xlat4;
  let x_1313 : vec3<f32> = (vec3<f32>(x_1309, x_1309, x_1309) * vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
  let x_1314 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
  let x_1316 : vec3<f32> = u_xlat3;
  let x_1317 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1316 / x_1317);
  let x_1320 : f32 = u_xlat0.y;
  let x_1323 : f32 = u_xlat0.x;
  u_xlat0.x = max(abs(x_1320), abs(x_1323));
  let x_1328 : f32 = u_xlat0.z;
  let x_1331 : f32 = u_xlat0.x;
  u_xlat0.x = max(abs(x_1328), x_1331);
  let x_1335 : vec3<f32> = u_xlat3;
  let x_1336 : vec3<f32> = u_xlat0;
  u_xlat15 = (x_1335 / vec3<f32>(x_1336.x, x_1336.x, x_1336.x));
  let x_1341 : f32 = u_xlat0.x;
  u_xlatb0 = (1.0f < x_1341);
  let x_1343 : vec4<f32> = u_xlat2;
  let x_1346 : vec3<f32> = u_xlat15;
  u_xlat15 = ((vec3<f32>(x_1343.x, x_1343.y, x_1343.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + x_1346);
  let x_1348 : bool = u_xlatb0;
  if (x_1348) {
    let x_1353 : vec3<f32> = u_xlat15;
    x_1350 = x_1353;
  } else {
    let x_1355 : vec4<f32> = u_xlat4;
    x_1350 = vec3<f32>(x_1355.x, x_1355.y, x_1355.z);
  }
  let x_1357 : vec3<f32> = x_1350;
  u_xlat0 = x_1357;
  let x_1359 : f32 = u_xlat0.x;
  u_xlat45 = (x_1359 + 1.0f);
  let x_1361 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1361);
  let x_1363 : f32 = u_xlat45;
  let x_1365 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1363, x_1363, x_1363) * x_1365);
  let x_1368 : f32 = u_xlat10.x;
  u_xlat45 = (x_1368 + 1.0f);
  let x_1370 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1370);
  let x_1372 : vec3<f32> = u_xlat10;
  let x_1373 : f32 = u_xlat45;
  let x_1376 : vec3<f32> = u_xlat0;
  let x_1378 : vec3<f32> = ((x_1372 * vec3<f32>(x_1373, x_1373, x_1373)) + -(x_1376));
  let x_1379 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
  let x_1381 : vec2<f32> = vs_TEXCOORD0;
  u_xlat31 = (x_1381 + vec2<f32>(-0.5f, -0.5f));
  let x_1383 : vec4<f32> = u_xlat1;
  let x_1386 : vec2<f32> = u_xlat31;
  let x_1387 : vec2<f32> = (-(vec2<f32>(x_1383.x, x_1383.y)) + x_1386);
  let x_1388 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1387.x, x_1387.y, x_1388.z, x_1388.w);
  let x_1394 : vec4<f32> = u_xlat1;
  let x_1398 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f) < abs(vec4<f32>(x_1394.x, x_1394.y, x_1394.x, x_1394.x)));
  u_xlatb1 = vec2<bool>(x_1398.x, x_1398.y);
  let x_1401 : bool = u_xlatb1.y;
  let x_1403 : bool = u_xlatb1.x;
  u_xlatb45 = (x_1401 | x_1403);
  let x_1405 : bool = u_xlatb45;
  if (x_1405) {
    x_1406 = 1.0f;
  } else {
    let x_1411 : f32 = x_70.x_TaaFrameInfluence;
    x_1406 = x_1411;
  }
  let x_1412 : f32 = x_1406;
  u_xlat45 = x_1412;
  let x_1413 : f32 = u_xlat45;
  let x_1415 : vec4<f32> = u_xlat2;
  let x_1418 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1413, x_1413, x_1413) * vec3<f32>(x_1415.x, x_1415.y, x_1415.z)) + x_1418);
  let x_1421 : f32 = u_xlat0.x;
  u_xlat45 = (-(x_1421) + 1.0f);
  let x_1424 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1424);
  let x_1426 : vec3<f32> = u_xlat0;
  let x_1428 : f32 = u_xlat45;
  let x_1433 : vec2<f32> = ((vec2<f32>(x_1426.z, x_1426.y) * vec2<f32>(x_1428, x_1428)) + vec2<f32>(-0.50196081399917602539f, -0.50196081399917602539f));
  let x_1434 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1433.x, x_1433.y, x_1434.z);
  let x_1437 : f32 = u_xlat0.x;
  let x_1438 : f32 = u_xlat45;
  let x_1441 : f32 = u_xlat15.y;
  u_xlat1.x = ((x_1437 * x_1438) + -(x_1441));
  let x_1445 : vec3<f32> = u_xlat0;
  let x_1447 : f32 = u_xlat45;
  let x_1450 : vec3<f32> = u_xlat15;
  let x_1452 : vec2<f32> = ((vec2<f32>(x_1445.x, x_1445.x) * vec2<f32>(x_1447, x_1447)) + vec2<f32>(x_1450.y, x_1450.x));
  let x_1453 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1453.x, x_1452.x, x_1452.y, x_1453.w);
  let x_1456 : f32 = u_xlat15.x;
  let x_1459 : f32 = u_xlat1.x;
  u_xlat2.w = (-(x_1456) + x_1459);
  let x_1464 : f32 = u_xlat15.x;
  let x_1467 : f32 = u_xlat2.y;
  u_xlat2.x = (-(x_1464) + x_1467);
  let x_1472 : vec4<f32> = u_xlat2;
  let x_1475 : vec3<f32> = max(vec3<f32>(x_1472.x, x_1472.z, x_1472.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1476 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1475.x, x_1475.y, x_1475.z, x_1476.w);
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


