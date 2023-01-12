struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_Jitter : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_FinalBlendParameters : vec4<f32>,
  x_Sharpness : f32,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_16 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

@group(0) @binding(2) var x_CameraMotionVectorsTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_CameraMotionVectorsTexture : sampler;

@group(0) @binding(1) var x_HistoryTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_HistoryTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat19 : f32;
  var u_xlat13 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_21 : vec2<f32> = x_16.x_Jitter;
  let x_23 : vec2<f32> = (x_13 + -(x_21));
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_23.x, x_23.y, x_24.z, x_24.w);
  let x_26 : vec4<f32> = u_xlat0;
  let x_30 : vec2<f32> = max(vec2<f32>(x_26.x, x_26.y), vec2<f32>(0.0f, 0.0f));
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_30.x, x_30.y, x_31.z, x_31.w);
  let x_33 : vec4<f32> = u_xlat0;
  let x_38 : f32 = x_16.x_RenderViewportScaleFactor;
  let x_40 : vec2<f32> = min(vec2<f32>(x_33.x, x_33.y), vec2<f32>(x_38, x_38));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_41.z, x_41.w);
  let x_48 : vec4<f32> = x_16.x_MainTex_TexelSize;
  let x_54 : vec4<f32> = u_xlat0;
  u_xlat12 = ((-(vec2<f32>(x_48.x, x_48.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_54.x, x_54.y));
  let x_57 : vec2<f32> = u_xlat12;
  u_xlat12 = max(x_57, vec2<f32>(0.0f, 0.0f));
  let x_59 : vec2<f32> = u_xlat12;
  let x_61 : f32 = x_16.x_RenderViewportScaleFactor;
  u_xlat12 = min(x_59, vec2<f32>(x_61, x_61));
  let x_75 : vec2<f32> = u_xlat12;
  let x_76 : vec4<f32> = textureSample(x_MainTex, sampler_LinearClamp, x_75);
  u_xlat1 = x_76;
  let x_78 : vec4<f32> = x_16.x_MainTex_TexelSize;
  let x_81 : vec4<f32> = u_xlat0;
  u_xlat12 = ((vec2<f32>(x_78.x, x_78.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_81.x, x_81.y));
  let x_88 : vec4<f32> = u_xlat0;
  let x_90 : vec4<f32> = textureSample(x_MainTex, sampler_LinearClamp, vec2<f32>(x_88.x, x_88.y));
  u_xlat2 = x_90;
  let x_91 : vec2<f32> = u_xlat12;
  let x_92 : vec2<f32> = max(x_91, vec2<f32>(0.0f, 0.0f));
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_93.z, x_93.w);
  let x_95 : vec4<f32> = u_xlat0;
  let x_98 : f32 = x_16.x_RenderViewportScaleFactor;
  let x_100 : vec2<f32> = min(vec2<f32>(x_95.x, x_95.y), vec2<f32>(x_98, x_98));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = textureSample(x_MainTex, sampler_LinearClamp, vec2<f32>(x_106.x, x_106.y));
  u_xlat0 = x_108;
  let x_110 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat1;
  u_xlat3 = (x_110 + x_111);
  let x_114 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat4 = (x_114 + x_115);
  let x_117 : vec4<f32> = u_xlat3;
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_117 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + -(x_121));
  let x_124 : vec4<f32> = u_xlat3;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat4 = ((-(x_124) * vec4<f32>(0.166666999f, 0.166666999f, 0.166666999f, 0.166666999f)) + x_129);
  let x_131 : vec4<f32> = u_xlat4;
  let x_134 : f32 = x_16.x_Sharpness;
  u_xlat4 = (x_131 * vec4<f32>(x_134, x_134, x_134, x_134));
  let x_137 : vec4<f32> = u_xlat4;
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_137 * vec4<f32>(2.718281984f, 2.718281984f, 2.718281984f, 2.718281984f)) + x_141);
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_143, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_146, vec4<f32>(65472.0f, 65472.0f, 65472.0f, 65472.0f));
  let x_151 : vec4<f32> = u_xlat2;
  let x_153 : vec4<f32> = u_xlat3;
  let x_155 : vec3<f32> = (vec3<f32>(x_151.x, x_151.y, x_151.z) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec4<f32> = u_xlat3;
  let x_162 : vec3<f32> = (vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(0.142857f, 0.142857f, 0.142857f));
  let x_163 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_175 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_178 : f32 = u_xlat18;
  let x_179 : f32 = u_xlat19;
  u_xlat18 = (x_178 + -(x_179));
  let x_182 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = u_xlat0;
  let x_186 : vec3<f32> = min(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : vec4<f32> = u_xlat0;
  let x_191 : vec4<f32> = u_xlat1;
  let x_193 : vec3<f32> = max(vec3<f32>(x_189.x, x_189.y, x_189.z), vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_201 : vec2<f32> = vs_TEXCOORD1;
  let x_202 : vec4<f32> = textureSample(x_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture, x_201);
  let x_203 : vec2<f32> = vec2<f32>(x_202.x, x_202.y);
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_204.z, x_204.w);
  let x_207 : vec4<f32> = u_xlat1;
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec2<f32>(x_207.x, x_207.y), vec2<f32>(x_209.x, x_209.y));
  let x_212 : vec4<f32> = u_xlat1;
  let x_215 : vec2<f32> = vs_TEXCOORD1;
  let x_216 : vec2<f32> = (-(vec2<f32>(x_212.x, x_212.y)) + x_215);
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_217.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec2<f32> = max(vec2<f32>(x_219.x, x_219.y), vec2<f32>(0.0f, 0.0f));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_222.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_227 : f32 = x_16.x_RenderViewportScaleFactor;
  let x_229 : vec2<f32> = min(vec2<f32>(x_224.x, x_224.y), vec2<f32>(x_227, x_227));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_230.z, x_230.w);
  let x_237 : vec4<f32> = u_xlat1;
  let x_239 : vec4<f32> = textureSample(x_HistoryTex, sampler_HistoryTex, vec2<f32>(x_237.x, x_237.y));
  u_xlat4 = x_239;
  let x_240 : f32 = u_xlat13;
  u_xlat1.x = sqrt(x_240);
  let x_248 : f32 = u_xlat1.x;
  u_xlat7.x = (x_248 * 100.0f);
  let x_253 : f32 = u_xlat1.x;
  let x_257 : f32 = x_16.x_FinalBlendParameters.z;
  u_xlat1.x = (x_253 * x_257);
  let x_261 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_261, 1.0f);
  let x_266 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_266 * -3.75f) + 4.0f);
  let x_271 : vec3<f32> = u_xlat7;
  let x_274 : f32 = u_xlat18;
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec3<f32> = ((-(vec3<f32>(x_271.x, x_271.x, x_271.x)) * abs(vec3<f32>(x_274, x_274, x_274))) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec3<f32> = u_xlat7;
  let x_285 : f32 = u_xlat18;
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.x, x_283.x) * abs(vec3<f32>(x_285, x_285, x_285))) + vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat3;
  let x_297 : vec4<f32> = u_xlat0;
  u_xlat7 = (-(vec3<f32>(x_294.x, x_294.y, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat3;
  let x_302 : vec4<f32> = u_xlat0;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec3<f32> = u_xlat7;
  u_xlat7 = (x_307 * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_310 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : vec3<f32> = ((-(vec3<f32>(x_310.x, x_310.y, x_310.z)) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = (vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_325 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec3<f32>(x_325.x, x_325.y, x_325.z) + vec3<f32>(0.0001f, 0.0001f, 0.0001f));
  let x_330 : vec3<f32> = u_xlat7;
  let x_331 : vec3<f32> = u_xlat5;
  u_xlat7 = (x_330 / x_331);
  let x_335 : f32 = u_xlat7.y;
  let x_338 : f32 = u_xlat7.x;
  u_xlat18 = min(abs(x_335), abs(x_338));
  let x_342 : f32 = u_xlat7.z;
  let x_344 : f32 = u_xlat18;
  u_xlat18 = min(abs(x_342), x_344);
  let x_346 : f32 = u_xlat18;
  u_xlat18 = min(x_346, 1.0f);
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : f32 = u_xlat18;
  let x_353 : vec4<f32> = u_xlat0;
  let x_355 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350, x_350, x_350)) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat2;
  let x_360 : vec4<f32> = u_xlat4;
  u_xlat0 = (-(x_358) + x_360);
  let x_363 : f32 = x_16.x_FinalBlendParameters.x;
  let x_366 : f32 = x_16.x_FinalBlendParameters.y;
  u_xlat7.x = (-(x_363) + x_366);
  let x_370 : f32 = u_xlat1.x;
  let x_372 : f32 = u_xlat7.x;
  let x_375 : f32 = x_16.x_FinalBlendParameters.x;
  u_xlat1.x = ((x_370 * x_372) + x_375);
  let x_379 : f32 = u_xlat1.x;
  let x_381 : f32 = x_16.x_FinalBlendParameters.y;
  u_xlat1.x = max(x_379, x_381);
  let x_385 : f32 = u_xlat1.x;
  let x_387 : f32 = x_16.x_FinalBlendParameters.x;
  u_xlat1.x = min(x_385, x_387);
  let x_390 : vec4<f32> = u_xlat1;
  let x_392 : vec4<f32> = u_xlat0;
  let x_394 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec4<f32>(x_390.x, x_390.x, x_390.x, x_390.x) * x_392) + x_394);
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_396, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_398 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_398, vec4<f32>(65472.0f, 65472.0f, 65472.0f, 65472.0f));
  let x_402 : vec4<f32> = u_xlat0;
  SV_Target0 = x_402;
  let x_404 : vec4<f32> = u_xlat0;
  SV_Target1 = x_404;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

