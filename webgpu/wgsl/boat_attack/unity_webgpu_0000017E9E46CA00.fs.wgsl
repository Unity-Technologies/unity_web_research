diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  unity_MatrixInvVP : mat4x4<f32>,
  /* @offset(96) */
  x_CameraDepthTexture_TexelSize : vec4<f32>,
  /* @offset(112) */
  x_ViewProjM : mat4x4<f32>,
  /* @offset(176) */
  x_PrevViewProjM : mat4x4<f32>,
  /* @offset(240) */
  x_Intensity : f32,
  /* @offset(244) */
  x_Clamp : f32,
  /* @offset(256) */
  x_SourceSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_PointClamp : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_262 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_14.x_CameraDepthTexture_TexelSize;
  let x_27 : vec2<f32> = ((-(vec2<f32>(x_19.x, x_19.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(1.0f, 1.0f));
  let x_28 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_27.x, x_27.y, x_28.z, x_28.w);
  let x_30 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : vec2<f32> = min(vec2<f32>(x_30.x, x_30.y), vec2<f32>(x_34.x, x_34.y));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_37.z, x_37.w);
  let x_39 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_14.x_RTHandleScale;
  let x_45 : vec2<f32> = (vec2<f32>(x_39.x, x_39.y) * vec2<f32>(x_43.x, x_43.y));
  let x_46 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_45.x, x_45.y, x_46.z, x_46.w);
  let x_58 : vec4<f32> = u_xlat0;
  let x_65 : f32 = x_14.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_58.x, x_58.y), x_65);
  u_xlat0.x = x_66.x;
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec2<f32>(x_72.x, x_72.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_81 : vec2<f32> = u_xlat4;
  let x_86 : vec4<f32> = x_14.unity_MatrixInvVP[1i];
  u_xlat1 = (-(vec4<f32>(x_81.y, x_81.y, x_81.y, x_81.y)) * x_86);
  let x_89 : vec4<f32> = x_14.unity_MatrixInvVP[0i];
  let x_90 : vec2<f32> = u_xlat4;
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_89 * vec4<f32>(x_90.x, x_90.x, x_90.x, x_90.x)) + x_93);
  let x_96 : vec4<f32> = x_14.unity_MatrixInvVP[2i];
  let x_97 : vec4<f32> = u_xlat0;
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_96 * vec4<f32>(x_97.x, x_97.x, x_97.x, x_97.x)) + x_100);
  let x_102 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = x_14.unity_MatrixInvVP[3i];
  u_xlat0 = (x_102 + x_104);
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = u_xlat0;
  let x_111 : vec3<f32> = (vec3<f32>(x_107.x, x_107.y, x_107.z) / vec3<f32>(x_109.w, x_109.w, x_109.w));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat0;
  let x_118 : vec4<f32> = x_14.x_PrevViewProjM[1i];
  let x_120 : vec3<f32> = (vec3<f32>(x_114.y, x_114.y, x_114.y) * vec3<f32>(x_118.x, x_118.y, x_118.w));
  let x_121 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : vec4<f32> = x_14.x_PrevViewProjM[0i];
  let x_126 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = u_xlat1;
  let x_131 : vec3<f32> = ((vec3<f32>(x_124.x, x_124.y, x_124.w) * vec3<f32>(x_126.x, x_126.x, x_126.x)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_135 : vec4<f32> = x_14.x_PrevViewProjM[2i];
  let x_137 : vec4<f32> = u_xlat0;
  let x_140 : vec4<f32> = u_xlat1;
  let x_142 : vec3<f32> = ((vec3<f32>(x_135.x, x_135.y, x_135.w) * vec3<f32>(x_137.z, x_137.z, x_137.z)) + vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat1;
  let x_148 : vec4<f32> = x_14.x_PrevViewProjM[3i];
  let x_150 : vec3<f32> = (vec3<f32>(x_145.x, x_145.y, x_145.z) + vec3<f32>(x_148.x, x_148.y, x_148.w));
  let x_151 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_153 : vec4<f32> = u_xlat1;
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : vec2<f32> = (vec2<f32>(x_153.x, x_153.y) / vec2<f32>(x_155.z, x_155.z));
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_157.x, x_157.y, x_158.z, x_158.w);
  let x_162 : vec4<f32> = u_xlat0;
  let x_166 : vec4<f32> = x_14.x_ViewProjM[1i];
  u_xlat2 = (vec3<f32>(x_162.y, x_162.y, x_162.y) * vec3<f32>(x_166.x, x_166.y, x_166.w));
  let x_170 : vec4<f32> = x_14.x_ViewProjM[0i];
  let x_172 : vec4<f32> = u_xlat0;
  let x_175 : vec3<f32> = u_xlat2;
  let x_176 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.w) * vec3<f32>(x_172.x, x_172.x, x_172.x)) + x_175);
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_176.z);
  let x_180 : vec4<f32> = x_14.x_ViewProjM[2i];
  let x_182 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = u_xlat0;
  let x_187 : vec3<f32> = ((vec3<f32>(x_180.x, x_180.y, x_180.w) * vec3<f32>(x_182.z, x_182.z, x_182.z)) + vec3<f32>(x_185.x, x_185.y, x_185.w));
  let x_188 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = x_14.x_ViewProjM[3i];
  let x_195 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + vec3<f32>(x_193.x, x_193.y, x_193.w));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat0;
  let x_202 : vec2<f32> = (vec2<f32>(x_198.x, x_198.y) / vec2<f32>(x_200.z, x_200.z));
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_202.x, x_202.y, x_203.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec2<f32> = (-(vec2<f32>(x_205.x, x_205.y)) + vec2<f32>(x_208.x, x_208.y));
  let x_211 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_210.x, x_210.y, x_211.z, x_211.w);
  let x_215 : f32 = u_xlat0.y;
  u_xlat0.z = -(x_215);
  let x_219 : vec4<f32> = u_xlat0;
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat4.x = dot(vec2<f32>(x_219.x, x_219.z), vec2<f32>(x_221.x, x_221.z));
  let x_226 : f32 = u_xlat4.x;
  u_xlat4.x = sqrt(x_226);
  let x_231 : f32 = u_xlat4.x;
  u_xlat12 = (1.0f / x_231);
  let x_233 : f32 = u_xlat12;
  let x_235 : vec4<f32> = u_xlat0;
  let x_237 : vec2<f32> = (vec2<f32>(x_233, x_233) * vec2<f32>(x_235.x, x_235.z));
  let x_238 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_237.x, x_238.y, x_237.y, x_238.w);
  let x_241 : f32 = u_xlat4.x;
  let x_244 : f32 = x_14.x_Clamp;
  u_xlat12 = min(x_241, x_244);
  let x_251 : f32 = u_xlat4.x;
  u_xlatb4 = (0.0f < x_251);
  let x_253 : vec4<f32> = u_xlat0;
  let x_255 : f32 = u_xlat12;
  let x_257 : vec2<f32> = (vec2<f32>(x_253.x, x_253.z) * vec2<f32>(x_255, x_255));
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_257.x, x_258.y, x_257.y, x_258.w);
  let x_260 : bool = u_xlatb4;
  if (x_260) {
    let x_265 : vec4<f32> = u_xlat0;
    x_262 = vec2<f32>(x_265.x, x_265.z);
  } else {
    x_262 = vec2<f32>(0.0f, 0.0f);
  }
  let x_269 : vec2<f32> = x_262;
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_270.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat0;
  let x_276 : f32 = x_14.x_Intensity;
  let x_278 : vec2<f32> = (vec2<f32>(x_272.x, x_272.y) * vec2<f32>(x_276, x_276));
  let x_279 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_278.x, x_278.y, x_279.z, x_279.w);
  let x_282 : vec4<f32> = vs_TEXCOORD0;
  let x_286 : vec4<f32> = x_14.x_SourceSize;
  u_xlat8 = (vec2<f32>(x_282.x, x_282.y) * vec2<f32>(x_286.x, x_286.y));
  let x_289 : vec2<f32> = u_xlat8;
  u_xlat8.x = dot(x_289, vec2<f32>(0.0671105608344078064f, 0.00583714991807937622f));
  let x_296 : f32 = u_xlat8.x;
  u_xlat8.x = fract(x_296);
  let x_300 : f32 = u_xlat8.x;
  u_xlat8.x = (x_300 * 52.98291778564453125f);
  let x_305 : f32 = u_xlat8.x;
  u_xlat8.x = fract(x_305);
  let x_309 : f32 = u_xlat8.x;
  u_xlat12 = (x_309 * 0.25f);
  let x_312 : vec2<f32> = u_xlat8;
  let x_316 : vec2<f32> = (vec2<f32>(x_312.x, x_312.x) + vec2<f32>(-0.5f, 1.0f));
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_316.x, x_316.y, x_317.z, x_317.w);
  let x_319 : f32 = u_xlat12;
  let x_321 : vec4<f32> = u_xlat0;
  let x_324 : vec4<f32> = vs_TEXCOORD0;
  u_xlat8 = ((vec2<f32>(x_319, x_319) * vec2<f32>(x_321.x, x_321.y)) + vec2<f32>(x_324.x, x_324.y));
  let x_332 : vec2<f32> = u_xlat8;
  let x_334 : f32 = x_14.x_GlobalMipBias.x;
  let x_335 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_332, x_334);
  u_xlat2 = vec3<f32>(x_335.x, x_335.y, x_335.z);
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat3 = (-(vec4<f32>(x_338.x, x_338.x, x_338.x, x_338.x)) + vec4<f32>(0.5f, 0.5f, 1.5f, 1.5f));
  let x_345 : f32 = u_xlat1.y;
  u_xlat8.x = (x_345 * 0.25f);
  let x_348 : vec2<f32> = u_xlat8;
  let x_350 : vec4<f32> = u_xlat0;
  let x_353 : vec4<f32> = vs_TEXCOORD0;
  u_xlat8 = ((vec2<f32>(x_348.x, x_348.x) * vec2<f32>(x_350.x, x_350.y)) + vec2<f32>(x_353.x, x_353.y));
  let x_359 : vec2<f32> = u_xlat8;
  let x_361 : f32 = x_14.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_359, x_361);
  let x_363 : vec3<f32> = vec3<f32>(x_362.x, x_362.y, x_362.z);
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_366 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_369 : vec4<f32> = u_xlat3;
  let x_371 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = vs_TEXCOORD0;
  u_xlat0 = ((-(x_369) * vec4<f32>(x_371.x, x_371.y, x_371.x, x_371.y)) + vec4<f32>(x_374.x, x_374.y, x_374.x, x_374.y));
  let x_380 : vec4<f32> = u_xlat0;
  let x_383 : f32 = x_14.x_GlobalMipBias.x;
  let x_384 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_380.x, x_380.y), x_383);
  let x_385 : vec3<f32> = vec3<f32>(x_384.x, x_384.y, x_384.z);
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_391 : vec4<f32> = u_xlat0;
  let x_394 : f32 = x_14.x_GlobalMipBias.x;
  let x_395 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_391.z, x_391.w), x_394);
  let x_396 : vec3<f32> = vec3<f32>(x_395.x, x_395.y, x_395.z);
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec3<f32> = u_xlat2;
  let x_400 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_399 + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat0;
  let x_405 : vec3<f32> = u_xlat2;
  let x_406 : vec3<f32> = (vec3<f32>(x_403.x, x_403.y, x_403.z) + x_405);
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.z) + vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_418 : vec4<f32> = u_xlat0;
  let x_421 : vec3<f32> = (vec3<f32>(x_418.x, x_418.y, x_418.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_422 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


