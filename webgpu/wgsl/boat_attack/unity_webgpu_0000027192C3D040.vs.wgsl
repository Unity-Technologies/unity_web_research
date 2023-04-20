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

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(4) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat4 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_35 : UnityInstancing_Terrain;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(1) @binding(1) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_71 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlatu1 : vec4<u32>;

@group(0) @binding(9) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(10) var x_TerrainNormalmapTexture : texture_2d<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_262 : VGlobals;

var<private> u_xlat12 : f32;

var<private> u_xlatb12 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_287 : f32;
  var x_396 : f32;
  var x_408 : f32;
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
  let x_87 : vec2<f32> = u_xlat8;
  let x_90 : vec4<f32> = x_57.x_Splat0_ST;
  let x_94 : vec4<f32> = x_57.x_Splat0_ST;
  let x_96 : vec2<f32> = ((x_87 * vec2<f32>(x_90.x, x_90.y)) + vec2<f32>(x_94.z, x_94.w));
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_99 : vec2<f32> = u_xlat8;
  let x_102 : vec4<f32> = x_57.x_Splat1_ST;
  let x_106 : vec4<f32> = x_57.x_Splat1_ST;
  let x_108 : vec2<f32> = ((x_99 * vec2<f32>(x_102.x, x_102.y)) + vec2<f32>(x_106.z, x_106.w));
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_109.x, x_109.y, x_108.x, x_108.y);
  let x_112 : vec2<f32> = u_xlat8;
  let x_115 : vec4<f32> = x_57.x_Splat2_ST;
  let x_119 : vec4<f32> = x_57.x_Splat2_ST;
  let x_121 : vec2<f32> = ((x_112 * vec2<f32>(x_115.x, x_115.y)) + vec2<f32>(x_119.z, x_119.w));
  let x_122 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
  let x_124 : vec2<f32> = u_xlat8;
  let x_127 : vec4<f32> = x_57.x_Splat3_ST;
  let x_131 : vec4<f32> = x_57.x_Splat3_ST;
  let x_133 : vec2<f32> = ((x_124 * vec2<f32>(x_127.x, x_127.y)) + vec2<f32>(x_131.z, x_131.w));
  let x_134 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_134.x, x_134.y, x_133.x, x_133.y);
  let x_139 : vec4<f32> = u_xlat0;
  let x_144 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_139.x, x_139.y)));
  let x_145 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_144.x, x_144.y, x_145.z, x_145.w);
  let x_147 : vec4<f32> = u_xlat0;
  let x_151 : vec4<f32> = x_57.x_TerrainHeightmapScale;
  let x_153 : vec2<f32> = (vec2<f32>(x_147.x, x_147.y) * vec2<f32>(x_151.x, x_151.z));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_154.z, x_154.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_165 : vec4<u32> = u_xlatu1;
  let x_169 : u32 = u_xlatu1.w;
  let x_171 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_165.x, x_165.y)), bitcast<i32>(x_169));
  u_xlat8 = vec2<f32>(x_171.x, x_171.y);
  let x_176 : vec4<u32> = u_xlatu1;
  let x_180 : u32 = u_xlatu1.w;
  let x_182 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_176.x, x_176.y)), bitcast<i32>(x_180));
  let x_184 : vec3<f32> = vec3<f32>(x_182.x, x_182.y, x_182.z);
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_187.z, x_187.x, x_187.y, x_187.z) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_198 : f32 = u_xlat8.y;
  let x_202 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_198 * 256.0f) + x_202);
  let x_206 : f32 = u_xlat8.x;
  let x_209 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat8.x = (x_206 * x_209);
  let x_213 : f32 = u_xlat8.x;
  u_xlat8.x = (x_213 * 0.00389105058275163174f);
  let x_219 : vec2<f32> = u_xlat8;
  let x_223 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_219.x, x_219.x, x_219.x) * vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_227 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_229 : vec4<f32> = u_xlat0;
  let x_232 : vec3<f32> = u_xlat2;
  let x_233 : vec3<f32> = ((vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229.x, x_229.x, x_229.x)) + x_232);
  let x_234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_233.x, x_234.y, x_233.y, x_233.z);
  let x_238 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_240 : vec4<f32> = u_xlat0;
  let x_243 : vec4<f32> = u_xlat0;
  let x_245 : vec3<f32> = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.y, x_240.y, x_240.y)) + vec3<f32>(x_243.x, x_243.z, x_243.w));
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_248 : vec4<f32> = u_xlat0;
  let x_252 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_254 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_265 : vec3<f32> = x_262.x_WorldSpaceCameraPos;
  u_xlat2 = (-(vec3<f32>(x_257.x, x_257.y, x_257.z)) + x_265);
  let x_268 : vec3<f32> = u_xlat2;
  let x_269 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_268, x_269);
  let x_271 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_271);
  let x_273 : f32 = u_xlat12;
  let x_275 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_273, x_273, x_273) * x_275);
  let x_281 : f32 = x_262.unity_OrthoParams.w;
  u_xlatb12 = (x_281 == 0.0f);
  let x_285 : bool = u_xlatb12;
  if (x_285) {
    let x_291 : f32 = u_xlat2.x;
    x_287 = x_291;
  } else {
    let x_294 : f32 = x_262.unity_MatrixV[0i].z;
    x_287 = x_294;
  }
  let x_295 : f32 = x_287;
  vs_TEXCOORD3.w = x_295;
  let x_299 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_299.z, x_299.z, x_299.z) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_306 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_308 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.y, x_308.y, x_308.y)) + x_311);
  let x_314 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_316 : vec4<f32> = u_xlat1;
  let x_319 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.w, x_316.w, x_316.w)) + x_319);
  let x_321 : vec3<f32> = u_xlat3;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat2.x = dot(x_321, x_322);
  let x_326 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_326, 1.17549435e-38f);
  let x_331 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_331);
  let x_334 : vec3<f32> = u_xlat2;
  let x_336 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_334.x, x_334.x, x_334.x) * x_336);
  let x_338 : vec3<f32> = u_xlat3;
  let x_339 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat9 = (vec2<f32>(x_342.z, x_342.w) * vec2<f32>(1.0f, 0.0f));
  let x_347 : vec4<f32> = u_xlat1;
  let x_351 : vec2<f32> = u_xlat9;
  let x_353 : vec2<f32> = ((vec2<f32>(x_347.x, x_347.y) * vec2<f32>(0.0f, 1.0f)) + -(x_351));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_353.x, x_353.y, x_354.z, x_354.w);
  let x_357 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_357.y, x_357.y, x_357.y) * vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_364 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_366 : vec4<f32> = u_xlat1;
  let x_369 : vec3<f32> = u_xlat5;
  let x_370 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.x, x_366.x, x_366.x)) + x_369);
  let x_371 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : f32 = u_xlat13;
  u_xlat13 = max(x_379, 1.17549435e-38f);
  let x_381 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_381);
  let x_383 : f32 = u_xlat13;
  let x_385 : vec4<f32> = u_xlat1;
  let x_387 : vec3<f32> = (vec3<f32>(x_383, x_383, x_383) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_392 : vec3<f32> = vec3<f32>(x_391.x, x_391.y, x_391.z);
  let x_393 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : bool = u_xlatb12;
  if (x_395) {
    let x_400 : f32 = u_xlat2.y;
    x_396 = x_400;
  } else {
    let x_403 : f32 = x_262.unity_MatrixV[1i].z;
    x_396 = x_403;
  }
  let x_404 : f32 = x_396;
  vs_TEXCOORD4.w = x_404;
  let x_407 : bool = u_xlatb12;
  if (x_407) {
    let x_412 : f32 = u_xlat2.z;
    x_408 = x_412;
  } else {
    let x_415 : f32 = x_262.unity_MatrixV[2i].z;
    x_408 = x_415;
  }
  let x_416 : f32 = x_408;
  vs_TEXCOORD5.w = x_416;
  let x_418 : vec4<f32> = u_xlat1;
  let x_420 : vec3<f32> = u_xlat3;
  u_xlat2 = (vec3<f32>(x_418.y, x_418.z, x_418.x) * vec3<f32>(x_420.z, x_420.x, x_420.y));
  let x_423 : vec3<f32> = u_xlat3;
  let x_425 : vec4<f32> = u_xlat1;
  let x_428 : vec3<f32> = u_xlat2;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.y, x_423.z, x_423.x) * vec3<f32>(x_425.z, x_425.x, x_425.y)) + -(x_428));
  let x_431 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : f32 = x_71.unity_WorldTransformParams.w;
  u_xlatb12 = (x_434 >= 0.0f);
  let x_436 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_436);
  let x_438 : f32 = u_xlat12;
  let x_440 : vec4<f32> = u_xlat1;
  let x_442 : vec3<f32> = (vec3<f32>(x_438, x_438, x_438) * vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat0;
  let x_448 : vec4<f32> = x_262.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_445.y, x_445.y, x_445.y, x_445.y) * x_448);
  let x_451 : vec4<f32> = x_262.unity_MatrixVP[0i];
  let x_452 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_451 * vec4<f32>(x_452.x, x_452.x, x_452.x, x_452.x)) + x_455);
  let x_458 : vec4<f32> = x_262.unity_MatrixVP[2i];
  let x_459 : vec4<f32> = u_xlat0;
  let x_462 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_458 * vec4<f32>(x_459.z, x_459.z, x_459.z, x_459.z)) + x_462);
  let x_468 : vec4<f32> = u_xlat0;
  let x_470 : vec4<f32> = x_262.unity_MatrixVP[3i];
  gl_Position = (x_468 + x_470);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, gl_Position);
}


const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;

