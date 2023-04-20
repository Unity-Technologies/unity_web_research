diagnostic(off, derivative_uniformity);

alias Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(16) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(32) */
  unity_CameraToWorld : mat4x4<f32>,
  /* @offset(96) */
  x_LightSplitsNear : vec4<f32>,
  /* @offset(112) */
  x_LightSplitsFar : vec4<f32>,
  /* @offset(128) */
  unity_WorldToShadow : Arr,
  /* @offset(384) */
  x_LightShadowData : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : f32;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat8 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat12 : f32;

@group(0) @binding(1) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(2) var sampler_ShadowMapTexture : sampler_comparison;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.x;
  let x_42 : f32 = x_37.x_ZBufferParams.x;
  let x_44 : f32 = u_xlat0.x;
  let x_48 : f32 = x_37.x_ZBufferParams.y;
  u_xlat4 = ((x_42 * x_44) + x_48);
  let x_51 : f32 = u_xlat4;
  u_xlat4 = (1.0f / x_51);
  let x_54 : f32 = u_xlat4;
  let x_57 : f32 = u_xlat0.x;
  u_xlat8 = (-(x_54) + x_57);
  let x_62 : f32 = x_37.unity_OrthoParams.w;
  let x_63 : f32 = u_xlat8;
  let x_65 : f32 = u_xlat4;
  u_xlat4 = ((x_62 * x_63) + x_65);
  let x_68 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_68) + 1.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  let x_79 : vec3<f32> = vs_TEXCOORD3;
  let x_80 : vec3<f32> = (-(x_76) + x_79);
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec3<f32> = vs_TEXCOORD2;
  let x_89 : vec3<f32> = ((vec3<f32>(x_83.x, x_83.x, x_83.x) * vec3<f32>(x_85.x, x_85.y, x_85.z)) + x_88);
  let x_90 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_89.x, x_90.y, x_89.y, x_89.z);
  let x_93 : vec3<f32> = vs_TEXCOORD1;
  let x_95 : f32 = u_xlat4;
  let x_98 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = ((-(x_93) * vec3<f32>(x_95, x_95, x_95)) + vec3<f32>(x_98.x, x_98.z, x_98.w));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_101.y, x_100.y, x_100.z);
  let x_103 : f32 = u_xlat4;
  let x_105 : vec3<f32> = vs_TEXCOORD1;
  let x_106 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * x_105);
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_111 : vec4<f32> = x_37.unity_OrthoParams;
  let x_113 : vec4<f32> = u_xlat0;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = ((vec3<f32>(x_111.w, x_111.w, x_111.w) * vec3<f32>(x_113.x, x_113.z, x_113.w)) + vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_125 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = x_37.x_LightSplitsNear;
  u_xlatb1 = (vec4<f32>(x_125.z, x_125.z, x_125.z, x_125.z) >= x_129);
  let x_133 : bool = u_xlatb1.x;
  u_xlat1.x = select(0.0f, 1.0f, x_133);
  let x_138 : bool = u_xlatb1.y;
  u_xlat1.y = select(0.0f, 1.0f, x_138);
  let x_143 : bool = u_xlatb1.z;
  u_xlat1.z = select(0.0f, 1.0f, x_143);
  let x_147 : bool = u_xlatb1.w;
  u_xlat1.w = select(0.0f, 1.0f, x_147);
  let x_151 : vec4<f32> = u_xlat0;
  let x_155 : vec4<f32> = x_37.x_LightSplitsFar;
  u_xlatb2 = (vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z) < x_155);
  let x_159 : bool = u_xlatb2.x;
  u_xlat2.x = select(0.0f, 1.0f, x_159);
  let x_163 : bool = u_xlatb2.y;
  u_xlat2.y = select(0.0f, 1.0f, x_163);
  let x_167 : bool = u_xlatb2.z;
  u_xlat2.z = select(0.0f, 1.0f, x_167);
  let x_171 : bool = u_xlatb2.w;
  u_xlat2.w = select(0.0f, 1.0f, x_171);
  let x_174 : vec4<f32> = u_xlat1;
  let x_175 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_174 * x_175);
  let x_177 : vec4<f32> = u_xlat0;
  let x_181 : vec4<f32> = x_37.unity_CameraToWorld[1i];
  u_xlat2 = (vec4<f32>(x_177.y, x_177.y, x_177.y, x_177.y) * x_181);
  let x_184 : vec4<f32> = x_37.unity_CameraToWorld[0i];
  let x_185 : vec4<f32> = u_xlat0;
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_184 * vec4<f32>(x_185.x, x_185.x, x_185.x, x_185.x)) + x_188);
  let x_191 : vec4<f32> = x_37.unity_CameraToWorld[2i];
  let x_192 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_191 * vec4<f32>(x_192.z, x_192.z, x_192.z, x_192.z)) + x_195);
  let x_197 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = x_37.unity_CameraToWorld[3i];
  u_xlat0 = (x_197 + x_199);
  let x_201 : vec4<f32> = u_xlat0;
  let x_205 : vec4<f32> = x_37.unity_WorldToShadow[1i][1i];
  let x_207 : vec3<f32> = (vec3<f32>(x_201.y, x_201.y, x_201.y) * vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec4<f32> = x_37.unity_WorldToShadow[1i][0i];
  let x_213 : vec4<f32> = u_xlat0;
  let x_216 : vec4<f32> = u_xlat2;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.x, x_213.x, x_213.x)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_222 : vec4<f32> = x_37.unity_WorldToShadow[1i][2i];
  let x_224 : vec4<f32> = u_xlat0;
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.z, x_224.z, x_224.z)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = x_37.unity_WorldToShadow[1i][3i];
  let x_235 : vec4<f32> = u_xlat0;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.w, x_235.w, x_235.w)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec4<f32> = u_xlat2;
  let x_247 : vec3<f32> = (vec3<f32>(x_243.y, x_243.y, x_243.y) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_252 : vec4<f32> = u_xlat0;
  let x_255 : vec4<f32> = x_37.unity_WorldToShadow[0i][1i];
  u_xlat3 = (vec3<f32>(x_252.y, x_252.y, x_252.y) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_259 : vec4<f32> = x_37.unity_WorldToShadow[0i][0i];
  let x_261 : vec4<f32> = u_xlat0;
  let x_264 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.x, x_261.x, x_261.x)) + x_264);
  let x_267 : vec4<f32> = x_37.unity_WorldToShadow[0i][2i];
  let x_269 : vec4<f32> = u_xlat0;
  let x_272 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269.z, x_269.z, x_269.z)) + x_272);
  let x_275 : vec4<f32> = x_37.unity_WorldToShadow[0i][3i];
  let x_277 : vec4<f32> = u_xlat0;
  let x_280 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.w, x_277.w, x_277.w)) + x_280);
  let x_282 : vec3<f32> = u_xlat3;
  let x_283 : vec4<f32> = u_xlat1;
  let x_286 : vec4<f32> = u_xlat2;
  let x_288 : vec3<f32> = ((x_282 * vec3<f32>(x_283.x, x_283.x, x_283.x)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = x_37.unity_WorldToShadow[2i][1i];
  u_xlat3 = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_298 : vec4<f32> = x_37.unity_WorldToShadow[2i][0i];
  let x_300 : vec4<f32> = u_xlat0;
  let x_303 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300.x, x_300.x, x_300.x)) + x_303);
  let x_306 : vec4<f32> = x_37.unity_WorldToShadow[2i][2i];
  let x_308 : vec4<f32> = u_xlat0;
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.z, x_308.z, x_308.z)) + x_311);
  let x_314 : vec4<f32> = x_37.unity_WorldToShadow[2i][3i];
  let x_316 : vec4<f32> = u_xlat0;
  let x_319 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.w, x_316.w, x_316.w)) + x_319);
  let x_321 : vec3<f32> = u_xlat3;
  let x_322 : vec4<f32> = u_xlat1;
  let x_325 : vec4<f32> = u_xlat2;
  let x_327 : vec3<f32> = ((x_321 * vec3<f32>(x_322.z, x_322.z, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat0;
  let x_333 : vec4<f32> = x_37.unity_WorldToShadow[3i][1i];
  u_xlat3 = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_337 : vec4<f32> = x_37.unity_WorldToShadow[3i][0i];
  let x_339 : vec4<f32> = u_xlat0;
  let x_342 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.x, x_339.x)) + x_342);
  let x_345 : vec4<f32> = x_37.unity_WorldToShadow[3i][2i];
  let x_347 : vec4<f32> = u_xlat0;
  let x_350 : vec3<f32> = u_xlat3;
  let x_351 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.z, x_347.z, x_347.z)) + x_350);
  let x_352 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_355 : vec4<f32> = x_37.unity_WorldToShadow[3i][3i];
  let x_357 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = u_xlat0;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.w, x_357.w, x_357.w)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : vec4<f32> = u_xlat0;
  let x_367 : vec4<f32> = u_xlat1;
  let x_370 : vec4<f32> = u_xlat2;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.w, x_367.w, x_367.w)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(x_376, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_379 : f32 = u_xlat12;
  let x_382 : f32 = u_xlat0.z;
  u_xlat8 = (-(x_379) + x_382);
  let x_384 : f32 = u_xlat8;
  u_xlat8 = (x_384 + 1.0f);
  let x_388 : vec4<f32> = u_xlat0;
  let x_389 : vec2<f32> = vec2<f32>(x_388.x, x_388.y);
  let x_390 : f32 = u_xlat8;
  txVec0 = vec3<f32>(x_389.x, x_389.y, x_390);
  let x_402 : vec3<f32> = txVec0;
  let x_404 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_402.xy, x_402.z);
  u_xlat0.x = x_404;
  let x_408 : f32 = x_37.x_LightShadowData.x;
  u_xlat4 = (-(x_408) + 1.0f);
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : f32 = u_xlat4;
  let x_419 : vec4<f32> = x_37.x_LightShadowData;
  SV_Target0 = ((vec4<f32>(x_413.x, x_413.x, x_413.x, x_413.x) * vec4<f32>(x_415, x_415, x_415, x_415)) + vec4<f32>(x_419.x, x_419.x, x_419.x, x_419.x));
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


