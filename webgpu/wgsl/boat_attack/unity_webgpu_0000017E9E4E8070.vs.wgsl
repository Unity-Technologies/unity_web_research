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
  x_AO : f32,
  /* @offset(264) */
  x_BaseLight : f32,
  /* @offset(272) */
  x_Color : vec4<f32>,
  /* @offset(288) */
  x_TerrainTreeLightDirections : Arr,
  /* @offset(352) */
  x_TerrainTreeLightColors : Arr_1,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_22 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

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
  let x_198 : vec4<f32> = x_22.glstate_lightmodel_ambient;
  let x_201 : vec4<f32> = x_22.glstate_lightmodel_ambient;
  let x_203 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) + vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_208 : vec3<f32> = in_NORMAL0;
  let x_212 : vec3<f32> = x_22.x_TerrainTreeLightDirections[0i];
  u_xlat6 = dot(x_208, x_212);
  let x_214 : f32 = u_xlat6;
  u_xlat6 = max(x_214, 0.0f);
  let x_219 : f32 = x_22.x_AO;
  let x_223 : f32 = in_TANGENT0.w;
  let x_227 : f32 = x_22.x_BaseLight;
  u_xlat1.x = ((x_219 * x_223) + x_227);
  let x_231 : f32 = u_xlat6;
  let x_233 : f32 = u_xlat1.x;
  u_xlat6 = (x_231 * x_233);
  let x_237 : vec4<f32> = x_22.x_TerrainTreeLightColors[0i];
  let x_239 : f32 = u_xlat6;
  let x_242 : vec4<f32> = u_xlat0;
  let x_244 : vec3<f32> = ((vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_239, x_239, x_239)) + vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec3<f32> = in_NORMAL0;
  let x_249 : vec3<f32> = x_22.x_TerrainTreeLightDirections[1i];
  u_xlat6 = dot(x_247, x_249);
  let x_251 : f32 = u_xlat6;
  u_xlat6 = max(x_251, 0.0f);
  let x_254 : f32 = u_xlat1.x;
  let x_255 : f32 = u_xlat6;
  u_xlat6 = (x_254 * x_255);
  let x_258 : vec4<f32> = x_22.x_TerrainTreeLightColors[1i];
  let x_260 : f32 = u_xlat6;
  let x_263 : vec4<f32> = u_xlat0;
  let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260, x_260, x_260)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec3<f32> = in_NORMAL0;
  let x_270 : vec3<f32> = x_22.x_TerrainTreeLightDirections[2i];
  u_xlat6 = dot(x_268, x_270);
  let x_272 : f32 = u_xlat6;
  u_xlat6 = max(x_272, 0.0f);
  let x_275 : f32 = u_xlat1.x;
  let x_276 : f32 = u_xlat6;
  u_xlat6 = (x_275 * x_276);
  let x_279 : vec4<f32> = x_22.x_TerrainTreeLightColors[2i];
  let x_281 : f32 = u_xlat6;
  let x_284 : vec4<f32> = u_xlat0;
  let x_286 : vec3<f32> = ((vec3<f32>(x_279.x, x_279.y, x_279.z) * vec3<f32>(x_281, x_281, x_281)) + vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec3<f32> = in_NORMAL0;
  let x_291 : vec3<f32> = x_22.x_TerrainTreeLightDirections[3i];
  u_xlat6 = dot(x_289, x_291);
  let x_293 : f32 = u_xlat6;
  u_xlat6 = max(x_293, 0.0f);
  let x_296 : f32 = u_xlat1.x;
  let x_297 : f32 = u_xlat6;
  u_xlat6 = (x_296 * x_297);
  let x_300 : vec4<f32> = x_22.x_TerrainTreeLightColors[3i];
  let x_302 : f32 = u_xlat6;
  let x_305 : vec4<f32> = u_xlat0;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302, x_302, x_302)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = x_22.x_Color;
  let x_316 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : vec4<f32> = u_xlat0;
  let x_323 : vec4<f32> = x_22.x_TreeInstanceColor;
  let x_325 : vec3<f32> = (vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  vs_TEXCOORD1.w = 1.0f;
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
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(4) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1);
}


