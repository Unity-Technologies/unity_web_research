type Arr = array<vec4<f32>, 4u>;

type Arr_1 = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  unity_ShadowSplitSpheres : Arr,
  unity_ShadowSplitSqRadii : vec4<f32>,
  unity_WorldToShadow : Arr_1,
  x_LightShadowData : vec4<f32>,
}

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(2) var sampler_ShadowMapTexture : sampler_comparison;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : f32;
  var u_xlat8 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb1 : vec4<bool>;
  var u_xlat3 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.x;
  let x_43 : f32 = x_38.x_ZBufferParams.x;
  let x_45 : f32 = u_xlat0.x;
  let x_49 : f32 = x_38.x_ZBufferParams.y;
  u_xlat4 = ((x_43 * x_45) + x_49);
  let x_52 : f32 = u_xlat4;
  u_xlat4 = (1.0f / x_52);
  let x_55 : f32 = u_xlat4;
  let x_58 : f32 = u_xlat0.x;
  u_xlat8 = (-(x_55) + x_58);
  let x_63 : f32 = x_38.unity_OrthoParams.w;
  let x_64 : f32 = u_xlat8;
  let x_66 : f32 = u_xlat4;
  u_xlat4 = ((x_63 * x_64) + x_66);
  let x_69 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_69) + 1.0f);
  let x_77 : vec3<f32> = vs_TEXCOORD2;
  let x_80 : vec3<f32> = vs_TEXCOORD3;
  let x_81 : vec3<f32> = (-(x_77) + x_80);
  let x_82 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_84 : vec4<f32> = u_xlat0;
  let x_86 : vec4<f32> = u_xlat1;
  let x_89 : vec3<f32> = vs_TEXCOORD2;
  let x_90 : vec3<f32> = ((vec3<f32>(x_84.x, x_84.x, x_84.x) * vec3<f32>(x_86.x, x_86.y, x_86.z)) + x_89);
  let x_91 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_90.x, x_91.y, x_90.y, x_90.z);
  let x_94 : vec3<f32> = vs_TEXCOORD1;
  let x_96 : f32 = u_xlat4;
  let x_99 : vec4<f32> = u_xlat0;
  let x_101 : vec3<f32> = ((-(x_94) * vec3<f32>(x_96, x_96, x_96)) + vec3<f32>(x_99.x, x_99.z, x_99.w));
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_101.x, x_102.y, x_101.y, x_101.z);
  let x_104 : f32 = u_xlat4;
  let x_106 : vec3<f32> = vs_TEXCOORD1;
  let x_107 : vec3<f32> = (vec3<f32>(x_104, x_104, x_104) * x_106);
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_112 : vec4<f32> = x_38.unity_OrthoParams;
  let x_114 : vec4<f32> = u_xlat0;
  let x_117 : vec4<f32> = u_xlat1;
  let x_119 : vec3<f32> = ((vec3<f32>(x_112.w, x_112.w, x_112.w) * vec3<f32>(x_114.x, x_114.z, x_114.w)) + vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = x_38.unity_CameraToWorld[1i];
  u_xlat1 = (vec4<f32>(x_122.y, x_122.y, x_122.y, x_122.y) * x_126);
  let x_129 : vec4<f32> = x_38.unity_CameraToWorld[0i];
  let x_130 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_129 * vec4<f32>(x_130.x, x_130.x, x_130.x, x_130.x)) + x_133);
  let x_136 : vec4<f32> = x_38.unity_CameraToWorld[2i];
  let x_137 : vec4<f32> = u_xlat0;
  let x_140 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_136 * vec4<f32>(x_137.z, x_137.z, x_137.z, x_137.z)) + x_140);
  let x_142 : vec4<f32> = u_xlat0;
  let x_145 : vec4<f32> = x_38.unity_CameraToWorld[3i];
  u_xlat0 = (x_142 + x_145);
  let x_147 : vec4<f32> = u_xlat0;
  let x_150 : vec4<f32> = x_38.unity_ShadowSplitSpheres[0i];
  let x_153 : vec3<f32> = (vec3<f32>(x_147.x, x_147.y, x_147.z) + -(vec3<f32>(x_150.x, x_150.y, x_150.z)));
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat1;
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_164 : vec4<f32> = u_xlat0;
  let x_167 : vec4<f32> = x_38.unity_ShadowSplitSpheres[1i];
  u_xlat2 = (vec3<f32>(x_164.x, x_164.y, x_164.z) + -(vec3<f32>(x_167.x, x_167.y, x_167.z)));
  let x_171 : vec3<f32> = u_xlat2;
  let x_172 : vec3<f32> = u_xlat2;
  u_xlat1.y = dot(x_171, x_172);
  let x_175 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = x_38.unity_ShadowSplitSpheres[2i];
  u_xlat2 = (vec3<f32>(x_175.x, x_175.y, x_175.z) + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec3<f32> = u_xlat2;
  let x_183 : vec3<f32> = u_xlat2;
  u_xlat1.z = dot(x_182, x_183);
  let x_187 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = x_38.unity_ShadowSplitSpheres[3i];
  u_xlat2 = (vec3<f32>(x_187.x, x_187.y, x_187.z) + -(vec3<f32>(x_190.x, x_190.y, x_190.z)));
  let x_194 : vec3<f32> = u_xlat2;
  let x_195 : vec3<f32> = u_xlat2;
  u_xlat1.w = dot(x_194, x_195);
  let x_202 : vec4<f32> = u_xlat1;
  let x_205 : vec4<f32> = x_38.unity_ShadowSplitSqRadii;
  u_xlatb1 = (x_202 < x_205);
  let x_209 : bool = u_xlatb1.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_209);
  let x_215 : bool = u_xlatb1.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_215);
  let x_219 : bool = u_xlatb1.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_219);
  let x_223 : bool = u_xlatb1.x;
  u_xlat1.x = select(0.0f, 1.0f, x_223);
  let x_228 : bool = u_xlatb1.y;
  u_xlat1.y = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb1.z;
  u_xlat1.z = select(0.0f, 1.0f, x_232);
  let x_236 : bool = u_xlatb1.w;
  u_xlat1.w = select(0.0f, 1.0f, x_236);
  let x_239 : vec3<f32> = u_xlat2;
  let x_240 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_239 + vec3<f32>(x_240.y, x_240.z, x_240.w));
  let x_243 : vec3<f32> = u_xlat2;
  let x_245 : vec3<f32> = max(x_243, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_245.x, x_245.y, x_245.z);
  let x_248 : vec4<f32> = u_xlat0;
  let x_252 : vec4<f32> = x_38.unity_WorldToShadow[1i][1i];
  u_xlat2 = (vec3<f32>(x_248.y, x_248.y, x_248.y) * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_256 : vec4<f32> = x_38.unity_WorldToShadow[1i][0i];
  let x_258 : vec4<f32> = u_xlat0;
  let x_261 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.x, x_258.x, x_258.x)) + x_261);
  let x_264 : vec4<f32> = x_38.unity_WorldToShadow[1i][2i];
  let x_266 : vec4<f32> = u_xlat0;
  let x_269 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.z, x_266.z, x_266.z)) + x_269);
  let x_272 : vec4<f32> = x_38.unity_WorldToShadow[1i][3i];
  let x_274 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(x_274.w, x_274.w, x_274.w)) + x_277);
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_279.y, x_279.y, x_279.y) * x_281);
  let x_284 : vec4<f32> = u_xlat0;
  let x_287 : vec4<f32> = x_38.unity_WorldToShadow[0i][1i];
  u_xlat3 = (vec3<f32>(x_284.y, x_284.y, x_284.y) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec4<f32> = x_38.unity_WorldToShadow[0i][0i];
  let x_293 : vec4<f32> = u_xlat0;
  let x_296 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.x, x_293.x, x_293.x)) + x_296);
  let x_299 : vec4<f32> = x_38.unity_WorldToShadow[0i][2i];
  let x_301 : vec4<f32> = u_xlat0;
  let x_304 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.z, x_301.z, x_301.z)) + x_304);
  let x_307 : vec4<f32> = x_38.unity_WorldToShadow[0i][3i];
  let x_309 : vec4<f32> = u_xlat0;
  let x_312 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.w, x_309.w, x_309.w)) + x_312);
  let x_314 : vec3<f32> = u_xlat3;
  let x_315 : vec4<f32> = u_xlat1;
  let x_318 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_314 * vec3<f32>(x_315.x, x_315.x, x_315.x)) + x_318);
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_320, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_324 : vec4<f32> = u_xlat0;
  let x_327 : vec4<f32> = x_38.unity_WorldToShadow[2i][1i];
  u_xlat3 = (vec3<f32>(x_324.y, x_324.y, x_324.y) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : vec4<f32> = x_38.unity_WorldToShadow[2i][0i];
  let x_333 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.x, x_333.x, x_333.x)) + x_336);
  let x_339 : vec4<f32> = x_38.unity_WorldToShadow[2i][2i];
  let x_341 : vec4<f32> = u_xlat0;
  let x_344 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.z, x_341.z, x_341.z)) + x_344);
  let x_347 : vec4<f32> = x_38.unity_WorldToShadow[2i][3i];
  let x_349 : vec4<f32> = u_xlat0;
  let x_352 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_349.w, x_349.w, x_349.w)) + x_352);
  let x_354 : vec3<f32> = u_xlat3;
  let x_355 : vec4<f32> = u_xlat1;
  let x_358 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_354 * vec3<f32>(x_355.z, x_355.z, x_355.z)) + x_358);
  let x_360 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = x_38.unity_WorldToShadow[3i][1i];
  u_xlat3 = (vec3<f32>(x_360.y, x_360.y, x_360.y) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_367 : vec4<f32> = x_38.unity_WorldToShadow[3i][0i];
  let x_369 : vec4<f32> = u_xlat0;
  let x_372 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_367.x, x_367.y, x_367.z) * vec3<f32>(x_369.x, x_369.x, x_369.x)) + x_372);
  let x_375 : vec4<f32> = x_38.unity_WorldToShadow[3i][2i];
  let x_377 : vec4<f32> = u_xlat0;
  let x_380 : vec3<f32> = u_xlat3;
  let x_381 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_377.z, x_377.z, x_377.z)) + x_380);
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : vec4<f32> = x_38.unity_WorldToShadow[3i][3i];
  let x_387 : vec4<f32> = u_xlat0;
  let x_390 : vec4<f32> = u_xlat0;
  let x_392 : vec3<f32> = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387.w, x_387.w, x_387.w)) + vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat0;
  let x_397 : vec4<f32> = u_xlat1;
  let x_400 : vec3<f32> = u_xlat2;
  let x_401 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.w, x_397.w, x_397.w)) + x_400);
  let x_402 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : f32 = u_xlat1.x;
  let x_408 : f32 = u_xlat0.z;
  u_xlat8 = (-(x_405) + x_408);
  let x_410 : f32 = u_xlat8;
  u_xlat8 = (x_410 + 1.0f);
  let x_413 : vec4<f32> = u_xlat0;
  let x_414 : vec2<f32> = vec2<f32>(x_413.x, x_413.y);
  let x_415 : f32 = u_xlat8;
  txVec0 = vec3<f32>(x_414.x, x_414.y, x_415);
  let x_427 : vec3<f32> = txVec0;
  let x_429 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_427.xy, x_427.z);
  u_xlat0.x = x_429;
  let x_433 : f32 = x_38.x_LightShadowData.x;
  u_xlat4 = (-(x_433) + 1.0f);
  let x_438 : vec4<f32> = u_xlat0;
  let x_440 : f32 = u_xlat4;
  let x_444 : vec4<f32> = x_38.x_LightShadowData;
  SV_Target0 = ((vec4<f32>(x_438.x, x_438.x, x_438.x, x_438.x) * vec4<f32>(x_440, x_440, x_440, x_440)) + vec4<f32>(x_444.x, x_444.x, x_444.x, x_444.x));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

