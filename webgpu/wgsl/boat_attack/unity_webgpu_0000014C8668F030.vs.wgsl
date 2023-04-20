diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  unity_InstanceCount : i32,
}

struct TerrainArray_Type {
  /* @offset(0) */
  x_TerrainPatchInstanceData : vec4<f32>,
}

alias Arr = array<TerrainArray_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_Terrain {
  /* @offset(0) */
  TerrainArray : Arr,
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

alias Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_1,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(32) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(96) */
  unity_MatrixVP : mat4x4<f32>,
}

alias Arr_2 = array<mat4x4<f32>, 5u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_2,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(6) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat4 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(8) var<uniform> x_35 : UnityInstancing_Terrain;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(1) @binding(7) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_71 : UnityPerDraw;

var<private> u_xlatu1 : vec4<u32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(16) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(0) @binding(15) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_253 : VGlobals;

var<private> u_xlatb12 : bool;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

@group(1) @binding(3) var<uniform> x_405 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_276 : f32;
  var x_342 : f32;
  var x_354 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_27 : vec4<f32> = in_POSITION0;
  let x_36 : i32 = u_xlati0;
  let x_39 : vec4<f32> = x_35.TerrainArray[x_36].x_TerrainPatchInstanceData;
  u_xlat4 = (vec2<f32>(x_27.x, x_27.y) + vec2<f32>(x_39.x, x_39.y));
  let x_44 : vec2<f32> = u_xlat4;
  let x_45 : i32 = u_xlati0;
  let x_47 : vec4<f32> = x_35.TerrainArray[x_45].x_TerrainPatchInstanceData;
  let x_49 : vec2<f32> = (x_44 * vec2<f32>(x_47.z, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_50.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_TerrainHeightmapRecipSize;
  u_xlat8 = (vec2<f32>(x_53.x, x_53.y) * vec2<f32>(x_60.z, x_60.w));
  let x_65 : vec2<f32> = u_xlat8;
  let x_74 : vec4<f32> = x_71.unity_LightmapST;
  let x_78 : vec4<f32> = x_71.unity_LightmapST;
  let x_80 : vec2<f32> = ((x_65 * vec2<f32>(x_74.x, x_74.y)) + vec2<f32>(x_78.z, x_78.w));
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_81.x, x_81.y, x_80.x, x_80.y);
  let x_83 : vec2<f32> = u_xlat8;
  let x_84 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_89 : vec4<f32> = u_xlat0;
  let x_94 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_89.x, x_89.y)));
  let x_95 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_94.x, x_94.y, x_95.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = x_57.x_TerrainHeightmapScale;
  let x_103 : vec2<f32> = (vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_101.x, x_101.z));
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_104.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_118 : vec4<u32> = u_xlatu1;
  let x_122 : u32 = u_xlatu1.w;
  let x_124 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_118.x, x_118.y)), bitcast<i32>(x_122));
  u_xlat2 = vec3<f32>(x_124.x, x_124.y, x_124.z);
  let x_128 : vec4<u32> = u_xlatu1;
  let x_132 : u32 = u_xlatu1.w;
  let x_134 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_128.x, x_128.y)), bitcast<i32>(x_132));
  u_xlat8 = vec2<f32>(x_134.x, x_134.y);
  let x_139 : f32 = u_xlat8.y;
  let x_143 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_139 * 256.0f) + x_143);
  let x_147 : f32 = u_xlat8.x;
  let x_150 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat8.x = (x_147 * x_150);
  let x_154 : f32 = u_xlat8.x;
  u_xlat8.x = (x_154 * 0.00389105058275163174f);
  let x_159 : vec2<f32> = u_xlat8;
  let x_163 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  let x_165 : vec3<f32> = (vec3<f32>(x_159.x, x_159.x, x_159.x) * vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_171 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.x, x_171.x, x_171.x)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_177.y, x_176.y, x_176.z);
  let x_181 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_183 : vec4<f32> = u_xlat0;
  let x_186 : vec4<f32> = u_xlat0;
  let x_188 : vec3<f32> = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183.y, x_183.y, x_183.y)) + vec3<f32>(x_186.x, x_186.z, x_186.w));
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_197 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_200 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_200.z, x_200.x, x_200.y, x_200.z) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_208 : vec4<f32> = u_xlat1;
  let x_211 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_208.z, x_208.z, x_208.z) * vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_215 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_217 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(x_217.y, x_217.y, x_217.y)) + x_220);
  let x_223 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.w, x_225.w, x_225.w)) + x_228);
  let x_231 : vec3<f32> = u_xlat2;
  let x_232 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_231, x_232);
  let x_234 : f32 = u_xlat12;
  u_xlat12 = max(x_234, 1.17549435e-38f);
  let x_237 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_237);
  let x_239 : f32 = u_xlat12;
  let x_241 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_239, x_239, x_239) * x_241);
  let x_244 : vec3<f32> = u_xlat2;
  let x_245 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_248 : vec4<f32> = u_xlat0;
  let x_256 : vec3<f32> = x_253.x_WorldSpaceCameraPos;
  u_xlat3 = (-(vec3<f32>(x_248.x, x_248.y, x_248.z)) + x_256);
  let x_258 : vec3<f32> = u_xlat3;
  let x_259 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_258, x_259);
  let x_261 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_261);
  let x_263 : f32 = u_xlat12;
  let x_265 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_263, x_263, x_263) * x_265);
  let x_271 : f32 = x_253.unity_OrthoParams.w;
  u_xlatb12 = (x_271 == 0.0f);
  let x_274 : bool = u_xlatb12;
  if (x_274) {
    let x_280 : f32 = u_xlat3.x;
    x_276 = x_280;
  } else {
    let x_283 : f32 = x_253.unity_MatrixV[0i].z;
    x_276 = x_283;
  }
  let x_284 : f32 = x_276;
  vs_TEXCOORD3.w = x_284;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat9 = (vec2<f32>(x_288.z, x_288.w) * vec2<f32>(1.0f, 0.0f));
  let x_293 : vec4<f32> = u_xlat1;
  let x_297 : vec2<f32> = u_xlat9;
  let x_299 : vec2<f32> = ((vec2<f32>(x_293.x, x_293.y) * vec2<f32>(0.0f, 1.0f)) + -(x_297));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_299.y, x_300.z, x_300.w);
  let x_303 : vec4<f32> = u_xlat1;
  let x_306 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_303.y, x_303.y, x_303.y) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_310 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_312 : vec4<f32> = u_xlat1;
  let x_315 : vec3<f32> = u_xlat5;
  let x_316 : vec3<f32> = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_312.x, x_312.x, x_312.x)) + x_315);
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_320.x, x_320.y, x_320.z), vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : f32 = u_xlat13;
  u_xlat13 = max(x_325, 1.17549435e-38f);
  let x_327 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_327);
  let x_329 : f32 = u_xlat13;
  let x_331 : vec4<f32> = u_xlat1;
  let x_333 : vec3<f32> = (vec3<f32>(x_329, x_329, x_329) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : vec4<f32> = u_xlat1;
  let x_338 : vec3<f32> = vec3<f32>(x_337.x, x_337.y, x_337.z);
  let x_339 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : bool = u_xlatb12;
  if (x_341) {
    let x_346 : f32 = u_xlat3.y;
    x_342 = x_346;
  } else {
    let x_349 : f32 = x_253.unity_MatrixV[1i].z;
    x_342 = x_349;
  }
  let x_350 : f32 = x_342;
  vs_TEXCOORD4.w = x_350;
  let x_353 : bool = u_xlatb12;
  if (x_353) {
    let x_358 : f32 = u_xlat3.z;
    x_354 = x_358;
  } else {
    let x_361 : f32 = x_253.unity_MatrixV[2i].z;
    x_354 = x_361;
  }
  let x_362 : f32 = x_354;
  vs_TEXCOORD5.w = x_362;
  let x_364 : vec4<f32> = u_xlat1;
  let x_366 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_364.y, x_364.z, x_364.x) * vec3<f32>(x_366.z, x_366.x, x_366.y));
  let x_369 : vec3<f32> = u_xlat2;
  let x_371 : vec4<f32> = u_xlat1;
  let x_374 : vec3<f32> = u_xlat3;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369.y, x_369.z, x_369.x) * vec3<f32>(x_371.z, x_371.x, x_371.y)) + -(x_374));
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = x_71.unity_WorldTransformParams.w;
  u_xlatb12 = (x_380 >= 0.0f);
  let x_382 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_382);
  let x_384 : f32 = u_xlat12;
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec3<f32> = (vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_393 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_393.x, x_393.y, x_393.z);
  vs_TEXCOORD6 = 0.0f;
  let x_396 : vec4<f32> = u_xlat0;
  let x_407 : vec4<f32> = x_405.x_MainLightWorldToShadow[0i][1i];
  let x_409 : vec3<f32> = (vec3<f32>(x_396.y, x_396.y, x_396.y) * vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_413 : vec4<f32> = x_405.x_MainLightWorldToShadow[0i][0i];
  let x_415 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = u_xlat1;
  let x_420 : vec3<f32> = ((vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_415.x, x_415.x, x_415.x)) + vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_424 : vec4<f32> = x_405.x_MainLightWorldToShadow[0i][2i];
  let x_426 : vec4<f32> = u_xlat0;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = ((vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_426.z, x_426.z, x_426.z)) + vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_435 : vec4<f32> = u_xlat1;
  let x_438 : vec4<f32> = x_405.x_MainLightWorldToShadow[0i][3i];
  let x_440 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) + vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = vs_TEXCOORD8;
  vs_TEXCOORD8 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  vs_TEXCOORD8.w = 0.0f;
  let x_444 : vec4<f32> = u_xlat0;
  let x_447 : vec4<f32> = x_253.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_444.y, x_444.y, x_444.y, x_444.y) * x_447);
  let x_450 : vec4<f32> = x_253.unity_MatrixVP[0i];
  let x_451 : vec4<f32> = u_xlat0;
  let x_454 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_450 * vec4<f32>(x_451.x, x_451.x, x_451.x, x_451.x)) + x_454);
  let x_457 : vec4<f32> = x_253.unity_MatrixVP[2i];
  let x_458 : vec4<f32> = u_xlat0;
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_457 * vec4<f32>(x_458.z, x_458.z, x_458.z, x_458.z)) + x_461);
  let x_467 : vec4<f32> = u_xlat0;
  let x_469 : vec4<f32> = x_253.unity_MatrixVP[3i];
  gl_Position = (x_467 + x_469);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD8_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, vs_TEXCOORD8, gl_Position);
}


const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;

