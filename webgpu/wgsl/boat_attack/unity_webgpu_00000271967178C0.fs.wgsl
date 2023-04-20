diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_Normal0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> u_xlat1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_99 : x_Terrain;

@group(0) @binding(2) var x_Normal1 : texture_2d<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var x_Control : texture_2d<f32>;

@group(0) @binding(6) var sampler_Control : sampler;

@group(0) @binding(3) var x_Normal2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat10 : f32;

@group(0) @binding(4) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat7 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_34);
  u_xlat0.x = x_35.x;
  let x_43 : f32 = u_xlat0.x;
  u_xlatb0 = (x_43 == 0.0f);
  let x_46 : bool = u_xlatb0;
  if (((select(0i, 1i, x_46) * -1i) != 0i)) {
    discard;
  }
  let x_61 : vec4<f32> = vs_TEXCOORD1;
  let x_64 : f32 = x_27.x_GlobalMipBias.x;
  let x_65 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_61.x, x_61.y), x_64);
  let x_67 : vec3<f32> = vec3<f32>(x_65.x, x_65.y, x_65.w);
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_71 : f32 = u_xlat0.x;
  let x_74 : f32 = u_xlat0.z;
  u_xlat0.x = (x_71 * x_74);
  let x_77 : vec4<f32> = u_xlat0;
  let x_84 : vec2<f32> = ((vec2<f32>(x_77.x, x_77.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_85 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_84.x, x_84.y, x_85.z, x_85.w);
  let x_88 : vec4<f32> = u_xlat0;
  let x_90 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec2<f32>(x_88.x, x_88.y), vec2<f32>(x_90.x, x_90.y));
  let x_95 : vec4<f32> = u_xlat0;
  let x_101 : f32 = x_99.x_NormalScale0;
  let x_103 : vec2<f32> = (vec2<f32>(x_95.x, x_95.y) * vec2<f32>(x_101, x_101));
  let x_104 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_103.x, x_103.y, x_104.z);
  let x_106 : f32 = u_xlat6;
  u_xlat0.x = min(x_106, 1.0f);
  let x_111 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_111) + 1.0f);
  let x_116 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_116);
  let x_120 : f32 = u_xlat0.x;
  u_xlat1.z = max(x_120, 0.0000000000000001f);
  let x_128 : vec4<f32> = vs_TEXCOORD1;
  let x_131 : f32 = x_27.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_128.z, x_128.w), x_131);
  let x_133 : vec3<f32> = vec3<f32>(x_132.x, x_132.y, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : f32 = u_xlat0.x;
  let x_139 : f32 = u_xlat0.z;
  u_xlat0.x = (x_137 * x_139);
  let x_142 : vec4<f32> = u_xlat0;
  let x_145 : vec2<f32> = ((vec2<f32>(x_142.x, x_142.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_145.x, x_145.y, x_146.z, x_146.w);
  let x_148 : vec4<f32> = u_xlat0;
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec2<f32>(x_148.x, x_148.y), vec2<f32>(x_150.x, x_150.y));
  let x_154 : vec4<f32> = u_xlat0;
  let x_157 : f32 = x_99.x_NormalScale1;
  let x_159 : f32 = x_99.x_NormalScale1;
  let x_160 : vec2<f32> = vec2<f32>(x_157, x_159);
  let x_164 : vec2<f32> = (vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_160.x, x_160.y));
  let x_165 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_164.x, x_164.y, x_165.z);
  let x_167 : f32 = u_xlat6;
  u_xlat0.x = min(x_167, 1.0f);
  let x_171 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_171) + 1.0f);
  let x_176 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_176);
  let x_180 : f32 = u_xlat0.x;
  u_xlat2.z = max(x_180, 0.0000000000000001f);
  let x_186 : vec4<f32> = x_99.x_Control_TexelSize;
  let x_188 : vec2<f32> = (vec2<f32>(x_186.z, x_186.w) + vec2<f32>(-1.0f, -1.0f));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_189.z, x_189.w);
  let x_191 : vec4<f32> = vs_TEXCOORD0;
  let x_193 : vec4<f32> = u_xlat0;
  let x_198 : vec2<f32> = ((vec2<f32>(x_191.x, x_191.y) * vec2<f32>(x_193.x, x_193.y)) + vec2<f32>(0.5f, 0.5f));
  let x_199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_198.x, x_198.y, x_199.z, x_199.w);
  let x_201 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = x_99.x_Control_TexelSize;
  let x_206 : vec2<f32> = (vec2<f32>(x_201.x, x_201.y) * vec2<f32>(x_204.x, x_204.y));
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_206.x, x_206.y, x_207.z, x_207.w);
  let x_214 : vec4<f32> = u_xlat0;
  let x_217 : f32 = x_27.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_214.x, x_214.y), x_217);
  u_xlat0 = x_218;
  let x_219 : vec3<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat2 = (x_219 * vec3<f32>(x_220.y, x_220.y, x_220.y));
  let x_223 : vec4<f32> = u_xlat0;
  let x_225 : vec3<f32> = u_xlat1;
  let x_227 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_223.x, x_223.x, x_223.x) * x_225) + x_227);
  let x_234 : vec4<f32> = vs_TEXCOORD2;
  let x_237 : f32 = x_27.x_GlobalMipBias.x;
  let x_238 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_234.x, x_234.y), x_237);
  u_xlat2 = vec3<f32>(x_238.x, x_238.y, x_238.w);
  let x_241 : f32 = u_xlat2.x;
  let x_243 : f32 = u_xlat2.z;
  u_xlat2.x = (x_241 * x_243);
  let x_246 : vec3<f32> = u_xlat2;
  let x_249 : vec2<f32> = ((vec2<f32>(x_246.x, x_246.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_250.z, x_250.w);
  let x_253 : vec4<f32> = u_xlat0;
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat10 = dot(vec2<f32>(x_253.x, x_253.y), vec2<f32>(x_255.x, x_255.y));
  let x_258 : vec4<f32> = u_xlat0;
  let x_262 : f32 = x_99.x_NormalScale2;
  let x_264 : f32 = x_99.x_NormalScale2;
  let x_265 : vec2<f32> = vec2<f32>(x_262, x_264);
  let x_269 : vec2<f32> = (vec2<f32>(x_258.x, x_258.y) * vec2<f32>(x_265.x, x_265.y));
  let x_270 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_269.x, x_269.y, x_270.z);
  let x_272 : f32 = u_xlat10;
  u_xlat0.x = min(x_272, 1.0f);
  let x_276 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_276) + 1.0f);
  let x_281 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_281);
  let x_285 : f32 = u_xlat0.x;
  u_xlat2.z = max(x_285, 0.0000000000000001f);
  let x_288 : vec4<f32> = u_xlat0;
  let x_290 : vec3<f32> = u_xlat2;
  let x_292 : vec3<f32> = u_xlat1;
  let x_293 : vec3<f32> = ((vec3<f32>(x_288.z, x_288.z, x_288.z) * x_290) + x_292);
  let x_294 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_300 : vec4<f32> = vs_TEXCOORD2;
  let x_303 : f32 = x_27.x_GlobalMipBias.x;
  let x_304 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_300.z, x_300.w), x_303);
  u_xlat1 = vec3<f32>(x_304.x, x_304.y, x_304.w);
  let x_307 : f32 = u_xlat1.x;
  let x_309 : f32 = u_xlat1.z;
  u_xlat1.x = (x_307 * x_309);
  let x_312 : vec3<f32> = u_xlat1;
  let x_315 : vec2<f32> = ((vec2<f32>(x_312.x, x_312.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_316 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_315.x, x_315.y, x_316.z);
  let x_319 : vec3<f32> = u_xlat1;
  let x_321 : vec3<f32> = u_xlat1;
  u_xlat7 = dot(vec2<f32>(x_319.x, x_319.y), vec2<f32>(x_321.x, x_321.y));
  let x_324 : vec3<f32> = u_xlat1;
  let x_328 : f32 = x_99.x_NormalScale3;
  let x_330 : f32 = x_99.x_NormalScale3;
  let x_331 : vec2<f32> = vec2<f32>(x_328, x_330);
  let x_335 : vec2<f32> = (vec2<f32>(x_324.x, x_324.y) * vec2<f32>(x_331.x, x_331.y));
  let x_336 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_335.x, x_335.y, x_336.z);
  let x_338 : f32 = u_xlat7;
  u_xlat1.x = min(x_338, 1.0f);
  let x_342 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_342) + 1.0f);
  let x_347 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_347);
  let x_351 : f32 = u_xlat1.x;
  u_xlat2.z = max(x_351, 0.0000000000000001f);
  let x_354 : vec4<f32> = u_xlat0;
  let x_356 : vec3<f32> = u_xlat2;
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec3<f32> = ((vec3<f32>(x_354.w, x_354.w, x_354.w) * x_356) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : f32 = u_xlat0.z;
  u_xlat0.w = (x_364 + 0.00000999999974737875f);
  let x_369 : vec4<f32> = u_xlat0;
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_369.x, x_369.y, x_369.w), vec3<f32>(x_371.x, x_371.y, x_371.w));
  let x_374 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_374);
  let x_376 : f32 = u_xlat6;
  let x_378 : vec4<f32> = u_xlat0;
  let x_380 : vec3<f32> = (vec3<f32>(x_376, x_376, x_376) * vec3<f32>(x_378.x, x_378.y, x_378.w));
  let x_381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = vs_TEXCOORD5;
  u_xlat1 = (vec3<f32>(x_383.y, x_383.y, x_383.y) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat0;
  let x_392 : vec4<f32> = vs_TEXCOORD4;
  let x_396 : vec3<f32> = u_xlat1;
  let x_397 : vec3<f32> = ((vec3<f32>(x_389.x, x_389.x, x_389.x) * -(vec3<f32>(x_392.x, x_392.y, x_392.z))) + x_396);
  let x_398 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_397.z);
  let x_400 : vec4<f32> = u_xlat0;
  let x_403 : vec4<f32> = vs_TEXCOORD3;
  let x_406 : vec4<f32> = u_xlat0;
  let x_408 : vec3<f32> = ((vec3<f32>(x_400.z, x_400.z, x_400.z) * vec3<f32>(x_403.x, x_403.y, x_403.z)) + vec3<f32>(x_406.x, x_406.y, x_406.w));
  let x_409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_412 : vec4<f32> = u_xlat0;
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_417);
  let x_421 : f32 = u_xlat9;
  let x_423 : vec4<f32> = u_xlat0;
  let x_425 : vec3<f32> = (vec3<f32>(x_421, x_421, x_421) * vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


