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
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_Normal0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat6 : f32;

var<private> u_xlat1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_70 : x_Terrain;

@group(0) @binding(2) var x_Normal1 : texture_2d<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_Control : texture_2d<f32>;

@group(0) @binding(5) var sampler_Control : sampler;

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
  let x_23 : vec4<f32> = vs_TEXCOORD1;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_23.x, x_23.y), x_34);
  let x_37 : vec3<f32> = vec3<f32>(x_35.x, x_35.y, x_35.w);
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_37.x, x_37.y, x_37.z, x_38.w);
  let x_42 : f32 = u_xlat0.x;
  let x_45 : f32 = u_xlat0.z;
  u_xlat0.x = (x_42 * x_45);
  let x_48 : vec4<f32> = u_xlat0;
  let x_55 : vec2<f32> = ((vec2<f32>(x_48.x, x_48.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_66 : vec4<f32> = u_xlat0;
  let x_72 : f32 = x_70.x_NormalScale0;
  let x_74 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_72, x_72));
  let x_75 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_74.x, x_74.y, x_75.z);
  let x_77 : f32 = u_xlat6;
  u_xlat0.x = min(x_77, 1.0f);
  let x_82 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_82) + 1.0f);
  let x_87 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_87);
  let x_91 : f32 = u_xlat0.x;
  u_xlat1.z = max(x_91, 0.0000000000000001f);
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  let x_102 : f32 = x_27.x_GlobalMipBias.x;
  let x_103 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_99.z, x_99.w), x_102);
  let x_104 : vec3<f32> = vec3<f32>(x_103.x, x_103.y, x_103.w);
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_108 : f32 = u_xlat0.x;
  let x_110 : f32 = u_xlat0.z;
  u_xlat0.x = (x_108 * x_110);
  let x_113 : vec4<f32> = u_xlat0;
  let x_116 : vec2<f32> = ((vec2<f32>(x_113.x, x_113.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_117 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_116.x, x_116.y, x_117.z, x_117.w);
  let x_119 : vec4<f32> = u_xlat0;
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec2<f32>(x_119.x, x_119.y), vec2<f32>(x_121.x, x_121.y));
  let x_125 : vec4<f32> = u_xlat0;
  let x_129 : f32 = x_70.x_NormalScale1;
  let x_131 : f32 = x_70.x_NormalScale1;
  let x_132 : vec2<f32> = vec2<f32>(x_129, x_131);
  let x_136 : vec2<f32> = (vec2<f32>(x_125.x, x_125.y) * vec2<f32>(x_132.x, x_132.y));
  let x_137 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_136.x, x_136.y, x_137.z);
  let x_139 : f32 = u_xlat6;
  u_xlat0.x = min(x_139, 1.0f);
  let x_143 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_143) + 1.0f);
  let x_148 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat2.z = max(x_152, 0.0000000000000001f);
  let x_158 : vec4<f32> = x_70.x_Control_TexelSize;
  let x_160 : vec2<f32> = (vec2<f32>(x_158.z, x_158.w) + vec2<f32>(-1.0f, -1.0f));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_161.z, x_161.w);
  let x_164 : vec4<f32> = vs_TEXCOORD0;
  let x_166 : vec4<f32> = u_xlat0;
  let x_171 : vec2<f32> = ((vec2<f32>(x_164.x, x_164.y) * vec2<f32>(x_166.x, x_166.y)) + vec2<f32>(0.5f, 0.5f));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_172.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = x_70.x_Control_TexelSize;
  let x_179 : vec2<f32> = (vec2<f32>(x_174.x, x_174.y) * vec2<f32>(x_177.x, x_177.y));
  let x_180 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_179.x, x_179.y, x_180.z, x_180.w);
  let x_187 : vec4<f32> = u_xlat0;
  let x_190 : f32 = x_27.x_GlobalMipBias.x;
  let x_191 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_187.x, x_187.y), x_190);
  u_xlat0 = x_191;
  let x_192 : vec3<f32> = u_xlat2;
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat2 = (x_192 * vec3<f32>(x_193.y, x_193.y, x_193.y));
  let x_196 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = u_xlat1;
  let x_200 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_196.x, x_196.x, x_196.x) * x_198) + x_200);
  let x_207 : vec4<f32> = vs_TEXCOORD2;
  let x_210 : f32 = x_27.x_GlobalMipBias.x;
  let x_211 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_207.x, x_207.y), x_210);
  u_xlat2 = vec3<f32>(x_211.x, x_211.y, x_211.w);
  let x_214 : f32 = u_xlat2.x;
  let x_216 : f32 = u_xlat2.z;
  u_xlat2.x = (x_214 * x_216);
  let x_219 : vec3<f32> = u_xlat2;
  let x_222 : vec2<f32> = ((vec2<f32>(x_219.x, x_219.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_222.x, x_222.y, x_223.z, x_223.w);
  let x_226 : vec4<f32> = u_xlat0;
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat10 = dot(vec2<f32>(x_226.x, x_226.y), vec2<f32>(x_228.x, x_228.y));
  let x_231 : vec4<f32> = u_xlat0;
  let x_235 : f32 = x_70.x_NormalScale2;
  let x_237 : f32 = x_70.x_NormalScale2;
  let x_238 : vec2<f32> = vec2<f32>(x_235, x_237);
  let x_242 : vec2<f32> = (vec2<f32>(x_231.x, x_231.y) * vec2<f32>(x_238.x, x_238.y));
  let x_243 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_242.x, x_242.y, x_243.z);
  let x_245 : f32 = u_xlat10;
  u_xlat0.x = min(x_245, 1.0f);
  let x_249 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_249) + 1.0f);
  let x_254 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_254);
  let x_258 : f32 = u_xlat0.x;
  u_xlat2.z = max(x_258, 0.0000000000000001f);
  let x_261 : vec4<f32> = u_xlat0;
  let x_263 : vec3<f32> = u_xlat2;
  let x_265 : vec3<f32> = u_xlat1;
  let x_266 : vec3<f32> = ((vec3<f32>(x_261.z, x_261.z, x_261.z) * x_263) + x_265);
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_273 : vec4<f32> = vs_TEXCOORD2;
  let x_276 : f32 = x_27.x_GlobalMipBias.x;
  let x_277 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_273.z, x_273.w), x_276);
  u_xlat1 = vec3<f32>(x_277.x, x_277.y, x_277.w);
  let x_280 : f32 = u_xlat1.x;
  let x_282 : f32 = u_xlat1.z;
  u_xlat1.x = (x_280 * x_282);
  let x_285 : vec3<f32> = u_xlat1;
  let x_288 : vec2<f32> = ((vec2<f32>(x_285.x, x_285.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_289 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_288.x, x_288.y, x_289.z);
  let x_292 : vec3<f32> = u_xlat1;
  let x_294 : vec3<f32> = u_xlat1;
  u_xlat7 = dot(vec2<f32>(x_292.x, x_292.y), vec2<f32>(x_294.x, x_294.y));
  let x_297 : vec3<f32> = u_xlat1;
  let x_301 : f32 = x_70.x_NormalScale3;
  let x_303 : f32 = x_70.x_NormalScale3;
  let x_304 : vec2<f32> = vec2<f32>(x_301, x_303);
  let x_308 : vec2<f32> = (vec2<f32>(x_297.x, x_297.y) * vec2<f32>(x_304.x, x_304.y));
  let x_309 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_308.x, x_308.y, x_309.z);
  let x_311 : f32 = u_xlat7;
  u_xlat1.x = min(x_311, 1.0f);
  let x_315 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_315) + 1.0f);
  let x_320 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_320);
  let x_324 : f32 = u_xlat1.x;
  u_xlat2.z = max(x_324, 0.0000000000000001f);
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = u_xlat2;
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = ((vec3<f32>(x_327.w, x_327.w, x_327.w) * x_329) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : f32 = u_xlat0.z;
  u_xlat0.w = (x_337 + 0.00000999999974737875f);
  let x_342 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_342.x, x_342.y, x_342.w), vec3<f32>(x_344.x, x_344.y, x_344.w));
  let x_347 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_347);
  let x_349 : f32 = u_xlat6;
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = (vec3<f32>(x_349, x_349, x_349) * vec3<f32>(x_351.x, x_351.y, x_351.w));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat0;
  let x_359 : vec4<f32> = vs_TEXCOORD5;
  u_xlat1 = (vec3<f32>(x_356.y, x_356.y, x_356.y) * vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = vs_TEXCOORD4;
  let x_369 : vec3<f32> = u_xlat1;
  let x_370 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.x, x_362.x) * -(vec3<f32>(x_365.x, x_365.y, x_365.z))) + x_369);
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_370.z);
  let x_373 : vec4<f32> = u_xlat0;
  let x_376 : vec4<f32> = vs_TEXCOORD3;
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = ((vec3<f32>(x_373.z, x_373.z, x_373.z) * vec3<f32>(x_376.x, x_376.y, x_376.z)) + vec3<f32>(x_379.x, x_379.y, x_379.w));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : vec4<f32> = u_xlat0;
  let x_387 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_390);
  let x_394 : f32 = u_xlat9;
  let x_396 : vec4<f32> = u_xlat0;
  let x_398 : vec3<f32> = (vec3<f32>(x_394, x_394, x_394) * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


