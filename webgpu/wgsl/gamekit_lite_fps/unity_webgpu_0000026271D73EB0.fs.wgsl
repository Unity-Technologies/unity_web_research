type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  unity_CameraInvProjection : mat4x4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightSplitsNear : vec4<f32>,
  x_LightSplitsFar : vec4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_61 : PGlobals;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat8 : f32;

@group(0) @binding(2) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat4 : f32;

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
  let x_32 : f32 = u_xlat0.x;
  u_xlat0.z = (-(x_32) + 1.0f);
  let x_38 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec2<f32> = vec2<f32>(x_38.z, x_38.w);
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_39.x, x_39.y, x_40.z, x_40.w);
  let x_43 : vec4<f32> = u_xlat0;
  let x_50 : vec3<f32> = ((vec3<f32>(x_43.x, x_43.y, x_43.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_51 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_50.x, x_50.y, x_50.z, x_51.w);
  let x_54 : vec4<f32> = u_xlat0;
  let x_67 : vec4<f32> = x_61.unity_CameraInvProjection[1i];
  u_xlat1 = (vec4<f32>(x_54.y, x_54.y, x_54.y, x_54.y) * x_67);
  let x_70 : vec4<f32> = x_61.unity_CameraInvProjection[0i];
  let x_71 : vec4<f32> = u_xlat0;
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_78 : vec4<f32> = x_61.unity_CameraInvProjection[2i];
  let x_79 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_78 * vec4<f32>(x_79.z, x_79.z, x_79.z, x_79.z)) + x_82);
  let x_84 : vec4<f32> = u_xlat0;
  let x_87 : vec4<f32> = x_61.unity_CameraInvProjection[3i];
  u_xlat0 = (x_84 + x_87);
  let x_89 : vec4<f32> = u_xlat0;
  let x_91 : vec4<f32> = u_xlat0;
  let x_93 : vec3<f32> = (vec3<f32>(x_89.x, x_89.y, x_89.z) / vec3<f32>(x_91.w, x_91.w, x_91.w));
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_100 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = x_61.x_LightSplitsNear;
  u_xlatb1 = (-(vec4<f32>(x_100.z, x_100.z, x_100.z, x_100.z)) >= x_104);
  let x_108 : bool = u_xlatb1.x;
  u_xlat1.x = select(0.0f, 1.0f, x_108);
  let x_114 : bool = u_xlatb1.y;
  u_xlat1.y = select(0.0f, 1.0f, x_114);
  let x_118 : bool = u_xlatb1.z;
  u_xlat1.z = select(0.0f, 1.0f, x_118);
  let x_123 : bool = u_xlatb1.w;
  u_xlat1.w = select(0.0f, 1.0f, x_123);
  let x_127 : vec4<f32> = u_xlat0;
  let x_131 : vec4<f32> = x_61.x_LightSplitsFar;
  u_xlatb2 = (-(vec4<f32>(x_127.z, x_127.z, x_127.z, x_127.z)) < x_131);
  let x_135 : bool = u_xlatb2.x;
  u_xlat2.x = select(0.0f, 1.0f, x_135);
  let x_139 : bool = u_xlatb2.y;
  u_xlat2.y = select(0.0f, 1.0f, x_139);
  let x_143 : bool = u_xlatb2.z;
  u_xlat2.z = select(0.0f, 1.0f, x_143);
  let x_147 : bool = u_xlatb2.w;
  u_xlat2.w = select(0.0f, 1.0f, x_147);
  let x_150 : vec4<f32> = u_xlat1;
  let x_151 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_150 * x_151);
  let x_153 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = x_61.unity_CameraToWorld[1i];
  u_xlat2 = (vec4<f32>(x_153.y, x_153.y, x_153.y, x_153.y) * x_156);
  let x_159 : vec4<f32> = x_61.unity_CameraToWorld[0i];
  let x_160 : vec4<f32> = u_xlat0;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_159 * vec4<f32>(x_160.x, x_160.x, x_160.x, x_160.x)) + x_163);
  let x_166 : vec4<f32> = x_61.unity_CameraToWorld[2i];
  let x_167 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_166 * -(vec4<f32>(x_167.z, x_167.z, x_167.z, x_167.z))) + x_171);
  let x_173 : vec4<f32> = u_xlat0;
  let x_175 : vec4<f32> = x_61.unity_CameraToWorld[3i];
  u_xlat0 = (x_173 + x_175);
  let x_177 : vec4<f32> = u_xlat0;
  let x_181 : vec4<f32> = x_61.unity_WorldToShadow[1i][1i];
  let x_183 : vec3<f32> = (vec3<f32>(x_177.y, x_177.y, x_177.y) * vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec4<f32> = x_61.unity_WorldToShadow[1i][0i];
  let x_189 : vec4<f32> = u_xlat0;
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec3<f32> = ((vec3<f32>(x_187.x, x_187.y, x_187.z) * vec3<f32>(x_189.x, x_189.x, x_189.x)) + vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_198 : vec4<f32> = x_61.unity_WorldToShadow[1i][2i];
  let x_200 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = u_xlat2;
  let x_205 : vec3<f32> = ((vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.z, x_200.z, x_200.z)) + vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_209 : vec4<f32> = x_61.unity_WorldToShadow[1i][3i];
  let x_211 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = u_xlat2;
  let x_216 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_211.w, x_211.w, x_211.w)) + vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec4<f32> = u_xlat2;
  let x_223 : vec3<f32> = (vec3<f32>(x_219.y, x_219.y, x_219.y) * vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_228 : vec4<f32> = u_xlat0;
  let x_231 : vec4<f32> = x_61.unity_WorldToShadow[0i][1i];
  u_xlat3 = (vec3<f32>(x_228.y, x_228.y, x_228.y) * vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_235 : vec4<f32> = x_61.unity_WorldToShadow[0i][0i];
  let x_237 : vec4<f32> = u_xlat0;
  let x_240 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_237.x, x_237.x, x_237.x)) + x_240);
  let x_243 : vec4<f32> = x_61.unity_WorldToShadow[0i][2i];
  let x_245 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.z, x_245.z, x_245.z)) + x_248);
  let x_251 : vec4<f32> = x_61.unity_WorldToShadow[0i][3i];
  let x_253 : vec4<f32> = u_xlat0;
  let x_256 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253.w, x_253.w, x_253.w)) + x_256);
  let x_258 : vec3<f32> = u_xlat3;
  let x_259 : vec4<f32> = u_xlat1;
  let x_262 : vec4<f32> = u_xlat2;
  let x_264 : vec3<f32> = ((x_258 * vec3<f32>(x_259.x, x_259.x, x_259.x)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat0;
  let x_270 : vec4<f32> = x_61.unity_WorldToShadow[2i][1i];
  u_xlat3 = (vec3<f32>(x_267.y, x_267.y, x_267.y) * vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_274 : vec4<f32> = x_61.unity_WorldToShadow[2i][0i];
  let x_276 : vec4<f32> = u_xlat0;
  let x_279 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_276.x, x_276.x, x_276.x)) + x_279);
  let x_282 : vec4<f32> = x_61.unity_WorldToShadow[2i][2i];
  let x_284 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284.z, x_284.z, x_284.z)) + x_287);
  let x_290 : vec4<f32> = x_61.unity_WorldToShadow[2i][3i];
  let x_292 : vec4<f32> = u_xlat0;
  let x_295 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_290.x, x_290.y, x_290.z) * vec3<f32>(x_292.w, x_292.w, x_292.w)) + x_295);
  let x_297 : vec3<f32> = u_xlat3;
  let x_298 : vec4<f32> = u_xlat1;
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec3<f32> = ((x_297 * vec3<f32>(x_298.z, x_298.z, x_298.z)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat0;
  let x_309 : vec4<f32> = x_61.unity_WorldToShadow[3i][1i];
  u_xlat3 = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_313 : vec4<f32> = x_61.unity_WorldToShadow[3i][0i];
  let x_315 : vec4<f32> = u_xlat0;
  let x_318 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.x, x_315.x)) + x_318);
  let x_321 : vec4<f32> = x_61.unity_WorldToShadow[3i][2i];
  let x_323 : vec4<f32> = u_xlat0;
  let x_326 : vec3<f32> = u_xlat3;
  let x_327 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.z, x_323.z, x_323.z)) + x_326);
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : vec4<f32> = x_61.unity_WorldToShadow[3i][3i];
  let x_333 : vec4<f32> = u_xlat0;
  let x_336 : vec4<f32> = u_xlat0;
  let x_338 : vec3<f32> = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_333.w, x_333.w, x_333.w)) + vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat0;
  let x_343 : vec4<f32> = u_xlat1;
  let x_346 : vec4<f32> = u_xlat2;
  let x_348 : vec3<f32> = ((vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_343.w, x_343.w, x_343.w)) + vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(x_352, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_356 : f32 = u_xlat12;
  let x_359 : f32 = u_xlat0.z;
  u_xlat8 = (-(x_356) + x_359);
  let x_361 : f32 = u_xlat8;
  u_xlat8 = (x_361 + 1.0f);
  let x_365 : vec4<f32> = u_xlat0;
  let x_366 : vec2<f32> = vec2<f32>(x_365.x, x_365.y);
  let x_367 : f32 = u_xlat8;
  txVec0 = vec3<f32>(x_366.x, x_366.y, x_367);
  let x_379 : vec3<f32> = txVec0;
  let x_381 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_379.xy, x_379.z);
  u_xlat0.x = x_381;
  let x_387 : f32 = x_61.x_LightShadowData.x;
  u_xlat4 = (-(x_387) + 1.0f);
  let x_392 : vec4<f32> = u_xlat0;
  let x_394 : f32 = u_xlat4;
  let x_398 : vec4<f32> = x_61.x_LightShadowData;
  SV_Target0 = ((vec4<f32>(x_392.x, x_392.x, x_392.x, x_392.x) * vec4<f32>(x_394, x_394, x_394, x_394)) + vec4<f32>(x_398.x, x_398.x, x_398.x, x_398.x));
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

