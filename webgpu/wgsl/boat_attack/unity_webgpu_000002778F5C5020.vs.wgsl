diagnostic(off, derivative_uniformity);

alias Arr = array<vec3<f32>, 4u>;

alias Arr_1 = array<vec4<f32>, 4u>;

struct VGlobals {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  glstate_lightmodel_ambient : vec4<f32>,
  /* @offset(80) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(144) */
  x_TreeInstanceColor : vec4<f32>,
  /* @offset(160) */
  x_TreeInstanceScale : vec4<f32>,
  /* @offset(176) */
  x_TerrainEngineBendTree : mat4x4<f32>,
  /* @offset(240) */
  x_SquashPlaneNormal : vec4<f32>,
  /* @offset(256) */
  x_SquashAmount : f32,
  /* @offset(260) */
  x_Occlusion : f32,
  /* @offset(264) */
  x_AO : f32,
  /* @offset(268) */
  x_BaseLight : f32,
  /* @offset(272) */
  x_Color : vec4<f32>,
  /* @offset(288) */
  x_TerrainTreeLightDirections : Arr,
  /* @offset(352) */
  x_TerrainTreeLightColors : Arr_1,
  /* @offset(416) */
  x_HalfOverCutoff : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_22 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_22.x_TreeInstanceScale;
  let x_29 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_22.x_TerrainEngineBendTree[1i];
  let x_40 : vec3<f32> = (vec3<f32>(x_33.y, x_33.y, x_33.y) * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_22.x_TerrainEngineBendTree[0i];
  let x_47 : vec4<f32> = u_xlat0;
  let x_50 : vec4<f32> = u_xlat1;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.x, x_47.x, x_47.x)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_57 : vec4<f32> = x_22.x_TerrainEngineBendTree[2i];
  let x_59 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat1;
  let x_64 : vec3<f32> = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * vec3<f32>(x_59.z, x_59.z, x_59.z)) + vec3<f32>(x_62.x, x_62.y, x_62.z));
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_64.x, x_64.y, x_64.z, x_65.w);
  let x_67 : vec4<f32> = in_POSITION0;
  let x_71 : vec4<f32> = x_22.x_TreeInstanceScale;
  let x_74 : vec4<f32> = u_xlat1;
  let x_76 : vec3<f32> = ((-(vec3<f32>(x_67.x, x_67.y, x_67.z)) * vec3<f32>(x_71.x, x_71.y, x_71.z)) + vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_80 : vec4<f32> = in_COLOR0;
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat0;
  let x_87 : vec3<f32> = ((vec3<f32>(x_80.w, x_80.w, x_80.w) * vec3<f32>(x_82.x, x_82.y, x_82.z)) + vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_94 : vec4<f32> = x_22.x_SquashPlaneNormal;
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_94.x, x_94.y, x_94.z), vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_99 : f32 = u_xlat6;
  let x_103 : f32 = x_22.x_SquashPlaneNormal.w;
  u_xlat6 = (x_99 + x_103);
  let x_105 : f32 = u_xlat6;
  let x_109 : vec4<f32> = x_22.x_SquashPlaneNormal;
  let x_112 : vec4<f32> = u_xlat0;
  let x_114 : vec3<f32> = ((-(vec3<f32>(x_105, x_105, x_105)) * vec3<f32>(x_109.x, x_109.y, x_109.z)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = u_xlat1;
  let x_122 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.z) + -(vec3<f32>(x_119.x, x_119.y, x_119.z)));
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_127 : f32 = x_22.x_SquashAmount;
  let x_129 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = u_xlat1;
  let x_134 : vec3<f32> = ((vec3<f32>(x_127, x_127, x_127) * vec3<f32>(x_129.x, x_129.y, x_129.z)) + vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : vec4<f32> = u_xlat0;
  let x_140 : vec4<f32> = x_22.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_137.y, x_137.y, x_137.y, x_137.y) * x_140);
  let x_143 : vec4<f32> = x_22.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_143 * vec4<f32>(x_144.x, x_144.x, x_144.x, x_144.x)) + x_147);
  let x_150 : vec4<f32> = x_22.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_150 * vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_22.unity_ObjectToWorld[3i];
  u_xlat0 = (x_156 + x_159);
  let x_161 : vec4<f32> = u_xlat0;
  let x_164 : vec4<f32> = x_22.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_161.y, x_161.y, x_161.y, x_161.y) * x_164);
  let x_167 : vec4<f32> = x_22.unity_MatrixVP[0i];
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_167 * vec4<f32>(x_168.x, x_168.x, x_168.x, x_168.x)) + x_171);
  let x_174 : vec4<f32> = x_22.unity_MatrixVP[2i];
  let x_175 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_174 * vec4<f32>(x_175.z, x_175.z, x_175.z, x_175.z)) + x_178);
  let x_186 : vec4<f32> = x_22.unity_MatrixVP[3i];
  let x_187 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = u_xlat1;
  gl_Position = ((x_186 * vec4<f32>(x_187.w, x_187.w, x_187.w, x_187.w)) + x_190);
  let x_196 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_196;
  let x_199 : f32 = x_22.x_Occlusion;
  let x_204 : vec3<f32> = x_22.x_TerrainTreeLightDirections[0i];
  let x_205 : vec3<f32> = (vec3<f32>(x_199, x_199, x_199) * x_204);
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_210 : f32 = x_22.x_AO;
  u_xlat0.w = x_210;
  let x_213 : vec4<f32> = in_TANGENT0;
  let x_214 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_213, x_214);
  let x_219 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_219, 0.0f);
  let x_224 : f32 = u_xlat0.x;
  let x_227 : f32 = x_22.x_BaseLight;
  u_xlat0.x = (x_224 + x_227);
  let x_233 : vec4<f32> = x_22.glstate_lightmodel_ambient;
  let x_236 : vec4<f32> = x_22.glstate_lightmodel_ambient;
  u_xlat2 = (vec3<f32>(x_233.x, x_233.y, x_233.z) + vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_241 : vec4<f32> = x_22.x_TerrainTreeLightColors[0i];
  let x_243 : vec4<f32> = u_xlat0;
  let x_246 : vec3<f32> = u_xlat2;
  let x_247 : vec3<f32> = ((vec3<f32>(x_241.x, x_241.y, x_241.z) * vec3<f32>(x_243.x, x_243.x, x_243.x)) + x_246);
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : f32 = x_22.x_Occlusion;
  let x_254 : vec3<f32> = x_22.x_TerrainTreeLightDirections[1i];
  let x_255 : vec3<f32> = (vec3<f32>(x_251, x_251, x_251) * x_254);
  let x_256 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : f32 = x_22.x_AO;
  u_xlat1.w = x_259;
  let x_261 : vec4<f32> = in_TANGENT0;
  let x_262 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(x_261, x_262);
  let x_264 : f32 = u_xlat6;
  u_xlat6 = max(x_264, 0.0f);
  let x_266 : f32 = u_xlat6;
  let x_268 : f32 = x_22.x_BaseLight;
  u_xlat6 = (x_266 + x_268);
  let x_271 : vec4<f32> = x_22.x_TerrainTreeLightColors[1i];
  let x_273 : f32 = u_xlat6;
  let x_276 : vec4<f32> = u_xlat0;
  let x_278 : vec3<f32> = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_273, x_273, x_273)) + vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : f32 = x_22.x_Occlusion;
  let x_285 : vec3<f32> = x_22.x_TerrainTreeLightDirections[2i];
  let x_286 : vec3<f32> = (vec3<f32>(x_282, x_282, x_282) * x_285);
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_290 : f32 = x_22.x_AO;
  u_xlat1.w = x_290;
  let x_292 : vec4<f32> = in_TANGENT0;
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(x_292, x_293);
  let x_295 : f32 = u_xlat6;
  u_xlat6 = max(x_295, 0.0f);
  let x_297 : f32 = u_xlat6;
  let x_299 : f32 = x_22.x_BaseLight;
  u_xlat6 = (x_297 + x_299);
  let x_302 : vec4<f32> = x_22.x_TerrainTreeLightColors[2i];
  let x_304 : f32 = u_xlat6;
  let x_307 : vec4<f32> = u_xlat0;
  let x_309 : vec3<f32> = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304, x_304, x_304)) + vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : f32 = x_22.x_Occlusion;
  let x_316 : vec3<f32> = x_22.x_TerrainTreeLightDirections[3i];
  let x_317 : vec3<f32> = (vec3<f32>(x_313, x_313, x_313) * x_316);
  let x_318 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_321 : f32 = x_22.x_AO;
  u_xlat1.w = x_321;
  let x_323 : vec4<f32> = in_TANGENT0;
  let x_324 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(x_323, x_324);
  let x_326 : f32 = u_xlat6;
  u_xlat6 = max(x_326, 0.0f);
  let x_328 : f32 = u_xlat6;
  let x_330 : f32 = x_22.x_BaseLight;
  u_xlat6 = (x_328 + x_330);
  let x_333 : vec4<f32> = x_22.x_TerrainTreeLightColors[3i];
  let x_335 : f32 = u_xlat6;
  let x_338 : vec4<f32> = u_xlat0;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335, x_335, x_335)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat0;
  let x_347 : vec4<f32> = x_22.x_Color;
  let x_349 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : vec4<f32> = u_xlat0;
  let x_356 : vec4<f32> = x_22.x_TreeInstanceColor;
  let x_358 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_363 : f32 = x_22.x_HalfOverCutoff;
  vs_TEXCOORD1.w = (x_363 * 0.5f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1);
}


