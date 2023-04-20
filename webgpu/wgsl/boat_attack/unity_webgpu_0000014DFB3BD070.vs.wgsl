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

@group(1) @binding(7) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat4 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(8) var<uniform> x_35 : UnityInstancing_Terrain;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_71 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlatu1 : vec4<u32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(25) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(0) @binding(24) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(6) var<uniform> x_303 : VGlobals;

var<private> u_xlatb12 : bool;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

@group(1) @binding(4) var<uniform> x_455 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_326 : f32;
  var x_392 : f32;
  var x_404 : f32;
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
  let x_168 : vec4<u32> = u_xlatu1;
  let x_172 : u32 = u_xlatu1.w;
  let x_174 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_168.x, x_168.y)), bitcast<i32>(x_172));
  u_xlat2 = vec3<f32>(x_174.x, x_174.y, x_174.z);
  let x_178 : vec4<u32> = u_xlatu1;
  let x_182 : u32 = u_xlatu1.w;
  let x_184 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_178.x, x_178.y)), bitcast<i32>(x_182));
  u_xlat8 = vec2<f32>(x_184.x, x_184.y);
  let x_189 : f32 = u_xlat8.y;
  let x_193 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_189 * 256.0f) + x_193);
  let x_197 : f32 = u_xlat8.x;
  let x_200 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat8.x = (x_197 * x_200);
  let x_204 : f32 = u_xlat8.x;
  u_xlat8.x = (x_204 * 0.00389105058275163174f);
  let x_209 : vec2<f32> = u_xlat8;
  let x_213 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  let x_215 : vec3<f32> = (vec3<f32>(x_209.x, x_209.x, x_209.x) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_219 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_221 : vec4<f32> = u_xlat0;
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.x, x_221.x, x_221.x)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_226.x, x_227.y, x_226.y, x_226.z);
  let x_231 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_233 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat0;
  let x_238 : vec3<f32> = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233.y, x_233.y, x_233.y)) + vec3<f32>(x_236.x, x_236.z, x_236.w));
  let x_239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_247 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) + vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_250.z, x_250.x, x_250.y, x_250.z) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_258 : vec4<f32> = u_xlat1;
  let x_261 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_258.z, x_258.z, x_258.z) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_265 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_267 : vec4<f32> = u_xlat1;
  let x_270 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_267.y, x_267.y, x_267.y)) + x_270);
  let x_273 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_275 : vec4<f32> = u_xlat1;
  let x_278 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.w, x_275.w, x_275.w)) + x_278);
  let x_281 : vec3<f32> = u_xlat2;
  let x_282 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_281, x_282);
  let x_284 : f32 = u_xlat12;
  u_xlat12 = max(x_284, 1.17549435e-38f);
  let x_287 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_287);
  let x_289 : f32 = u_xlat12;
  let x_291 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_289, x_289, x_289) * x_291);
  let x_294 : vec3<f32> = u_xlat2;
  let x_295 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_298 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = x_303.x_WorldSpaceCameraPos;
  u_xlat3 = (-(vec3<f32>(x_298.x, x_298.y, x_298.z)) + x_306);
  let x_308 : vec3<f32> = u_xlat3;
  let x_309 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_308, x_309);
  let x_311 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_311);
  let x_313 : f32 = u_xlat12;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_313, x_313, x_313) * x_315);
  let x_321 : f32 = x_303.unity_OrthoParams.w;
  u_xlatb12 = (x_321 == 0.0f);
  let x_324 : bool = u_xlatb12;
  if (x_324) {
    let x_330 : f32 = u_xlat3.x;
    x_326 = x_330;
  } else {
    let x_333 : f32 = x_303.unity_MatrixV[0i].z;
    x_326 = x_333;
  }
  let x_334 : f32 = x_326;
  vs_TEXCOORD3.w = x_334;
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat9 = (vec2<f32>(x_338.z, x_338.w) * vec2<f32>(1.0f, 0.0f));
  let x_343 : vec4<f32> = u_xlat1;
  let x_347 : vec2<f32> = u_xlat9;
  let x_349 : vec2<f32> = ((vec2<f32>(x_343.x, x_343.y) * vec2<f32>(0.0f, 1.0f)) + -(x_347));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_349.y, x_350.z, x_350.w);
  let x_353 : vec4<f32> = u_xlat1;
  let x_356 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_353.y, x_353.y, x_353.y) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_360 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_362 : vec4<f32> = u_xlat1;
  let x_365 : vec3<f32> = u_xlat5;
  let x_366 : vec3<f32> = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_362.x, x_362.x, x_362.x)) + x_365);
  let x_367 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_370 : vec4<f32> = u_xlat1;
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : f32 = u_xlat13;
  u_xlat13 = max(x_375, 1.17549435e-38f);
  let x_377 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_377);
  let x_379 : f32 = u_xlat13;
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec3<f32> = (vec3<f32>(x_379, x_379, x_379) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_387 : vec4<f32> = u_xlat1;
  let x_388 : vec3<f32> = vec3<f32>(x_387.x, x_387.y, x_387.z);
  let x_389 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : bool = u_xlatb12;
  if (x_391) {
    let x_396 : f32 = u_xlat3.y;
    x_392 = x_396;
  } else {
    let x_399 : f32 = x_303.unity_MatrixV[1i].z;
    x_392 = x_399;
  }
  let x_400 : f32 = x_392;
  vs_TEXCOORD4.w = x_400;
  let x_403 : bool = u_xlatb12;
  if (x_403) {
    let x_408 : f32 = u_xlat3.z;
    x_404 = x_408;
  } else {
    let x_411 : f32 = x_303.unity_MatrixV[2i].z;
    x_404 = x_411;
  }
  let x_412 : f32 = x_404;
  vs_TEXCOORD5.w = x_412;
  let x_414 : vec4<f32> = u_xlat1;
  let x_416 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_414.y, x_414.z, x_414.x) * vec3<f32>(x_416.z, x_416.x, x_416.y));
  let x_419 : vec3<f32> = u_xlat2;
  let x_421 : vec4<f32> = u_xlat1;
  let x_424 : vec3<f32> = u_xlat3;
  let x_426 : vec3<f32> = ((vec3<f32>(x_419.y, x_419.z, x_419.x) * vec3<f32>(x_421.z, x_421.x, x_421.y)) + -(x_424));
  let x_427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : f32 = x_71.unity_WorldTransformParams.w;
  u_xlatb12 = (x_430 >= 0.0f);
  let x_432 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_432);
  let x_434 : f32 = u_xlat12;
  let x_436 : vec4<f32> = u_xlat1;
  let x_438 : vec3<f32> = (vec3<f32>(x_434, x_434, x_434) * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_443 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_443.x, x_443.y, x_443.z);
  vs_TEXCOORD6 = 0.0f;
  let x_446 : vec4<f32> = u_xlat0;
  let x_457 : vec4<f32> = x_455.x_MainLightWorldToShadow[0i][1i];
  let x_459 : vec3<f32> = (vec3<f32>(x_446.y, x_446.y, x_446.y) * vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_463 : vec4<f32> = x_455.x_MainLightWorldToShadow[0i][0i];
  let x_465 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = u_xlat1;
  let x_470 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(x_465.x, x_465.x, x_465.x)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : vec4<f32> = x_455.x_MainLightWorldToShadow[0i][2i];
  let x_476 : vec4<f32> = u_xlat0;
  let x_479 : vec4<f32> = u_xlat1;
  let x_481 : vec3<f32> = ((vec3<f32>(x_474.x, x_474.y, x_474.z) * vec3<f32>(x_476.z, x_476.z, x_476.z)) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : vec4<f32> = u_xlat1;
  let x_488 : vec4<f32> = x_455.x_MainLightWorldToShadow[0i][3i];
  let x_490 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) + vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : vec4<f32> = vs_TEXCOORD8;
  vs_TEXCOORD8 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  vs_TEXCOORD8.w = 0.0f;
  let x_494 : vec4<f32> = u_xlat0;
  let x_497 : vec4<f32> = x_303.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_494.y, x_494.y, x_494.y, x_494.y) * x_497);
  let x_500 : vec4<f32> = x_303.unity_MatrixVP[0i];
  let x_501 : vec4<f32> = u_xlat0;
  let x_504 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_500 * vec4<f32>(x_501.x, x_501.x, x_501.x, x_501.x)) + x_504);
  let x_507 : vec4<f32> = x_303.unity_MatrixVP[2i];
  let x_508 : vec4<f32> = u_xlat0;
  let x_511 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_507 * vec4<f32>(x_508.z, x_508.z, x_508.z, x_508.z)) + x_511);
  let x_517 : vec4<f32> = u_xlat0;
  let x_519 : vec4<f32> = x_303.unity_MatrixVP[3i];
  gl_Position = (x_517 + x_519);
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
  @location(6)
  vs_TEXCOORD7_1 : vec3<f32>,
  @location(7)
  vs_TEXCOORD8_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, vs_TEXCOORD8, gl_Position);
}


const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;

