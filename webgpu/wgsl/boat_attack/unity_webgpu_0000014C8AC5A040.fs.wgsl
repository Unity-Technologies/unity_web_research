diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(12) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_58 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(19) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(21) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_868 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(18) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(24) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat16 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_1257 : LightCookies;

@group(0) @binding(15) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(25) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(17) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1458 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu47 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlat47 : f32;

var<private> u_xlati47 : i32;

@group(1) @binding(1) var<uniform> x_1752 : AdditionalLights;

var<private> u_xlat34 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(14) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(16) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1209 : f32;
  var x_1340 : f32;
  var x_1351 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1888 : f32;
  var x_1898 : f32;
  var txVec1 : vec3<f32>;
  var x_2319 : f32;
  var x_2332 : f32;
  var x_2380 : f32;
  var x_2391 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = x_58.x_MaskMapRemapScale0;
  let x_69 : vec4<f32> = x_58.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_62.x, x_62.y, x_62.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_69.x, x_69.y, x_69.w));
  let x_76 : vec4<f32> = x_58.x_MaskMapRemapScale1;
  let x_81 : vec4<f32> = x_58.x_MaskMapRemapOffset1;
  let x_83 : vec3<f32> = ((vec3<f32>(x_76.x, x_76.y, x_76.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_81.x, x_81.y, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_89 : vec4<f32> = x_58.x_MaskMapRemapScale2;
  let x_94 : vec4<f32> = x_58.x_MaskMapRemapOffset2;
  let x_96 : vec3<f32> = ((vec3<f32>(x_89.x, x_89.y, x_89.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_94.x, x_94.y, x_94.w));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_102 : vec4<f32> = x_58.x_MaskMapRemapScale3;
  let x_107 : vec4<f32> = x_58.x_MaskMapRemapOffset3;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.w, x_102.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_107.x, x_107.w, x_107.y));
  let x_110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_109.z);
  let x_115 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_119 : vec2<f32> = (vec2<f32>(x_115.z, x_115.w) + vec2<f32>(-1.0f, -1.0f));
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_122 : vec4<f32> = vs_TEXCOORD0;
  let x_124 : vec4<f32> = u_xlat4;
  let x_128 : vec2<f32> = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(0.5f, 0.5f));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat4;
  let x_134 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_136 : vec2<f32> = (vec2<f32>(x_131.x, x_131.y) * vec2<f32>(x_134.x, x_134.y));
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_136.x, x_136.y, x_137.z, x_137.w);
  let x_144 : vec4<f32> = u_xlat4;
  let x_147 : f32 = x_28.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat4 = x_148;
  let x_150 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_150, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_161 : vec4<f32> = vs_TEXCOORD1;
  let x_164 : f32 = x_28.x_GlobalMipBias.x;
  let x_165 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_161.x, x_161.y), x_164);
  u_xlat5 = x_165;
  let x_171 : vec4<f32> = vs_TEXCOORD1;
  let x_174 : f32 = x_28.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_171.z, x_171.w), x_174);
  u_xlat6 = x_175;
  let x_182 : vec4<f32> = vs_TEXCOORD2;
  let x_185 : f32 = x_28.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_182.x, x_182.y), x_185);
  u_xlat7 = x_186;
  let x_192 : vec4<f32> = vs_TEXCOORD2;
  let x_195 : f32 = x_28.x_GlobalMipBias.x;
  let x_196 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_192.z, x_192.w), x_195);
  u_xlat8 = x_196;
  let x_200 : f32 = u_xlat5.w;
  u_xlat9.x = x_200;
  let x_203 : f32 = u_xlat6.w;
  u_xlat9.y = x_203;
  let x_207 : f32 = u_xlat7.w;
  u_xlat9.z = x_207;
  let x_211 : f32 = u_xlat8.w;
  u_xlat9.w = x_211;
  let x_214 : vec4<f32> = u_xlat9;
  let x_217 : f32 = x_58.x_Smoothness0;
  let x_220 : f32 = x_58.x_Smoothness1;
  let x_223 : f32 = x_58.x_Smoothness2;
  let x_226 : f32 = x_58.x_Smoothness3;
  u_xlat10 = (x_214 * vec4<f32>(x_217, x_220, x_223, x_226));
  let x_233 : f32 = x_58.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_233);
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_236) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_239 : vec4<f32> = u_xlat9;
  let x_240 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_239 + -(x_240));
  let x_243 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_243 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_247 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_247, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_251 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_251 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_255);
  let x_258 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_258 + -(x_259));
  let x_264 : f32 = u_xlat12.x;
  let x_267 : f32 = x_58.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.y;
  let x_274 : f32 = x_58.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_271 * x_274);
  let x_278 : f32 = u_xlat12.z;
  let x_281 : f32 = x_58.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_278 * x_281);
  let x_285 : f32 = u_xlat12.w;
  let x_288 : f32 = x_58.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_285 * x_288);
  let x_291 : vec4<f32> = u_xlat11;
  let x_292 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_291 + x_292);
  let x_294 : bool = u_xlatb43;
  let x_295 : vec4<f32> = u_xlat11;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_296, x_295, vec4<bool>(x_294, x_294, x_294, x_294));
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_301, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_305 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_305);
  let x_307 : bool = u_xlatb44;
  if (((select(0i, 1i, x_307) * -1i) != 0i)) {
    discard;
  }
  let x_314 : f32 = u_xlat43;
  u_xlat43 = (x_314 + 0.00006103515625f);
  let x_317 : vec4<f32> = u_xlat4;
  let x_318 : f32 = u_xlat43;
  u_xlat4 = (x_317 / vec4<f32>(x_318, x_318, x_318, x_318));
  let x_321 : vec4<f32> = u_xlat4;
  let x_324 : vec4<f32> = x_58.x_DiffuseRemapScale0;
  let x_326 : vec3<f32> = (vec3<f32>(x_321.x, x_321.x, x_321.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_58.x_DiffuseRemapScale1;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec4<f32> = u_xlat12;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec4<f32> = u_xlat11;
  let x_349 : vec4<f32> = u_xlat6;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat4;
  let x_357 : vec4<f32> = x_58.x_DiffuseRemapScale2;
  let x_359 : vec3<f32> = (vec3<f32>(x_354.z, x_354.z, x_354.z) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec4<f32> = u_xlat6;
  let x_367 : vec4<f32> = u_xlat5;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec4<f32> = u_xlat4;
  let x_375 : vec4<f32> = x_58.x_DiffuseRemapScale3;
  let x_377 : vec3<f32> = (vec3<f32>(x_372.w, x_372.w, x_372.w) * vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat8;
  let x_382 : vec4<f32> = u_xlat6;
  let x_385 : vec4<f32> = u_xlat5;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382.x, x_382.y, x_382.z)) + vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_395 : vec4<f32> = vs_TEXCOORD1;
  let x_398 : f32 = x_28.x_GlobalMipBias.x;
  let x_399 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_395.x, x_395.y), x_398);
  let x_400 : vec3<f32> = vec3<f32>(x_399.x, x_399.y, x_399.w);
  let x_401 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : f32 = u_xlat6.x;
  let x_406 : f32 = u_xlat6.z;
  u_xlat6.x = (x_404 * x_406);
  let x_409 : vec4<f32> = u_xlat6;
  let x_414 : vec2<f32> = ((vec2<f32>(x_409.x, x_409.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_417.x, x_417.y), vec2<f32>(x_419.x, x_419.y));
  let x_422 : f32 = u_xlat43;
  u_xlat43 = min(x_422, 1.0f);
  let x_424 : f32 = u_xlat43;
  u_xlat43 = (-(x_424) + 1.0f);
  let x_427 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_427);
  let x_429 : f32 = u_xlat43;
  u_xlat7.z = max(x_429, 0.0000000000000001f);
  let x_433 : vec4<f32> = u_xlat6;
  let x_436 : f32 = x_58.x_NormalScale0;
  let x_438 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_436, x_436));
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_445 : vec4<f32> = vs_TEXCOORD1;
  let x_448 : f32 = x_28.x_GlobalMipBias.x;
  let x_449 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_445.z, x_445.w), x_448);
  let x_450 : vec3<f32> = vec3<f32>(x_449.x, x_449.y, x_449.w);
  let x_451 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : f32 = u_xlat6.x;
  let x_456 : f32 = u_xlat6.z;
  u_xlat6.x = (x_454 * x_456);
  let x_459 : vec4<f32> = u_xlat6;
  let x_462 : vec2<f32> = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat6;
  let x_467 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_465.x, x_465.y), vec2<f32>(x_467.x, x_467.y));
  let x_470 : f32 = u_xlat43;
  u_xlat43 = min(x_470, 1.0f);
  let x_472 : f32 = u_xlat43;
  u_xlat43 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_475);
  let x_477 : f32 = u_xlat43;
  u_xlat8.z = max(x_477, 0.0000000000000001f);
  let x_480 : vec4<f32> = u_xlat6;
  let x_483 : f32 = x_58.x_NormalScale1;
  let x_485 : f32 = x_58.x_NormalScale1;
  let x_486 : vec2<f32> = vec2<f32>(x_483, x_485);
  let x_490 : vec2<f32> = (vec2<f32>(x_480.x, x_480.y) * vec2<f32>(x_486.x, x_486.y));
  let x_491 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat4;
  let x_495 : vec4<f32> = u_xlat8;
  let x_497 : vec3<f32> = (vec3<f32>(x_493.y, x_493.y, x_493.y) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  let x_505 : vec4<f32> = u_xlat6;
  let x_507 : vec3<f32> = ((vec3<f32>(x_500.x, x_500.x, x_500.x) * vec3<f32>(x_502.x, x_502.y, x_502.z)) + vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_514 : vec4<f32> = vs_TEXCOORD2;
  let x_517 : f32 = x_28.x_GlobalMipBias.x;
  let x_518 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_514.x, x_514.y), x_517);
  let x_519 : vec3<f32> = vec3<f32>(x_518.x, x_518.y, x_518.w);
  let x_520 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = u_xlat7.x;
  let x_525 : f32 = u_xlat7.z;
  u_xlat7.x = (x_523 * x_525);
  let x_528 : vec4<f32> = u_xlat7;
  let x_531 : vec2<f32> = ((vec2<f32>(x_528.x, x_528.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat7;
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_534.x, x_534.y), vec2<f32>(x_536.x, x_536.y));
  let x_539 : f32 = u_xlat43;
  u_xlat43 = min(x_539, 1.0f);
  let x_541 : f32 = u_xlat43;
  u_xlat43 = (-(x_541) + 1.0f);
  let x_544 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_544);
  let x_546 : f32 = u_xlat43;
  u_xlat8.z = max(x_546, 0.0000000000000001f);
  let x_549 : vec4<f32> = u_xlat7;
  let x_553 : f32 = x_58.x_NormalScale2;
  let x_555 : f32 = x_58.x_NormalScale2;
  let x_556 : vec2<f32> = vec2<f32>(x_553, x_555);
  let x_560 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) * vec2<f32>(x_556.x, x_556.y));
  let x_561 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec4<f32> = u_xlat8;
  let x_568 : vec4<f32> = u_xlat6;
  let x_570 : vec3<f32> = ((vec3<f32>(x_563.z, x_563.z, x_563.z) * vec3<f32>(x_565.x, x_565.y, x_565.z)) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_577 : vec4<f32> = vs_TEXCOORD2;
  let x_580 : f32 = x_28.x_GlobalMipBias.x;
  let x_581 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_577.z, x_577.w), x_580);
  let x_582 : vec3<f32> = vec3<f32>(x_581.x, x_581.y, x_581.w);
  let x_583 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_586 : f32 = u_xlat7.x;
  let x_588 : f32 = u_xlat7.z;
  u_xlat7.x = (x_586 * x_588);
  let x_591 : vec4<f32> = u_xlat7;
  let x_594 : vec2<f32> = ((vec2<f32>(x_591.x, x_591.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_595 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat7;
  let x_599 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_597.x, x_597.y), vec2<f32>(x_599.x, x_599.y));
  let x_602 : f32 = u_xlat43;
  u_xlat43 = min(x_602, 1.0f);
  let x_604 : f32 = u_xlat43;
  u_xlat43 = (-(x_604) + 1.0f);
  let x_607 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_607);
  let x_609 : f32 = u_xlat43;
  u_xlat8.z = max(x_609, 0.0000000000000001f);
  let x_612 : vec4<f32> = u_xlat7;
  let x_616 : f32 = x_58.x_NormalScale3;
  let x_618 : f32 = x_58.x_NormalScale3;
  let x_619 : vec2<f32> = vec2<f32>(x_616, x_618);
  let x_623 : vec2<f32> = (vec2<f32>(x_612.x, x_612.y) * vec2<f32>(x_619.x, x_619.y));
  let x_624 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat4;
  let x_628 : vec4<f32> = u_xlat8;
  let x_631 : vec4<f32> = u_xlat6;
  let x_633 : vec3<f32> = ((vec3<f32>(x_626.w, x_626.w, x_626.w) * vec3<f32>(x_628.x, x_628.y, x_628.z)) + vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : f32 = u_xlat6.z;
  u_xlat6.w = (x_637 + 0.00000999999974737875f);
  let x_641 : vec4<f32> = u_xlat6;
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_641.x, x_641.y, x_641.w), vec3<f32>(x_643.x, x_643.y, x_643.w));
  let x_646 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat43;
  let x_650 : vec4<f32> = u_xlat6;
  let x_652 : vec3<f32> = (vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.y, x_650.w));
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_656 : f32 = x_58.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_656;
  let x_659 : f32 = x_58.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_659;
  let x_662 : f32 = x_58.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_662;
  let x_665 : f32 = x_58.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_665;
  let x_668 : f32 = x_58.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_668;
  let x_671 : f32 = x_58.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_671;
  let x_674 : f32 = x_58.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_674;
  let x_677 : f32 = x_58.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_677;
  let x_679 : vec4<f32> = u_xlat7;
  let x_680 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_679 + x_680);
  let x_683 : f32 = u_xlat0.z;
  u_xlat8.x = x_683;
  let x_686 : f32 = u_xlat1.z;
  u_xlat8.y = x_686;
  let x_689 : f32 = u_xlat2.z;
  u_xlat8.z = x_689;
  let x_692 : f32 = u_xlat3.y;
  u_xlat8.w = x_692;
  let x_694 : vec4<f32> = u_xlat9;
  let x_697 : f32 = x_58.x_Smoothness0;
  let x_699 : f32 = x_58.x_Smoothness1;
  let x_701 : f32 = x_58.x_Smoothness2;
  let x_703 : f32 = x_58.x_Smoothness3;
  let x_706 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_694) * vec4<f32>(x_697, x_699, x_701, x_703)) + x_706);
  let x_710 : f32 = x_58.x_LayerHasMask0;
  let x_713 : f32 = x_58.x_LayerHasMask1;
  let x_716 : f32 = x_58.x_LayerHasMask2;
  let x_719 : f32 = x_58.x_LayerHasMask3;
  let x_721 : vec4<f32> = u_xlat8;
  let x_723 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_710, x_713, x_716, x_719) * x_721) + x_723);
  let x_726 : vec4<f32> = u_xlat4;
  let x_727 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_726, x_727);
  let x_730 : f32 = u_xlat0.x;
  u_xlat8.x = x_730;
  let x_733 : f32 = u_xlat1.x;
  u_xlat8.y = x_733;
  let x_736 : f32 = u_xlat2.x;
  u_xlat8.z = x_736;
  let x_739 : f32 = u_xlat3.x;
  u_xlat8.w = x_739;
  let x_741 : vec4<f32> = u_xlat8;
  let x_744 : f32 = x_58.x_Metallic0;
  let x_747 : f32 = x_58.x_Metallic1;
  let x_750 : f32 = x_58.x_Metallic2;
  let x_753 : f32 = x_58.x_Metallic3;
  u_xlat8 = (x_741 + -(vec4<f32>(x_744, x_747, x_750, x_753)));
  let x_758 : f32 = x_58.x_LayerHasMask0;
  let x_760 : f32 = x_58.x_LayerHasMask1;
  let x_762 : f32 = x_58.x_LayerHasMask2;
  let x_764 : f32 = x_58.x_LayerHasMask3;
  let x_766 : vec4<f32> = u_xlat8;
  let x_769 : f32 = x_58.x_Metallic0;
  let x_771 : f32 = x_58.x_Metallic1;
  let x_773 : f32 = x_58.x_Metallic2;
  let x_775 : f32 = x_58.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_758, x_760, x_762, x_764) * x_766) + vec4<f32>(x_769, x_771, x_773, x_775));
  let x_778 : vec4<f32> = u_xlat4;
  let x_779 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_778, x_779);
  let x_783 : f32 = u_xlat0.y;
  u_xlat3.x = x_783;
  let x_786 : f32 = u_xlat1.y;
  u_xlat3.y = x_786;
  let x_789 : f32 = u_xlat2.y;
  u_xlat3.z = x_789;
  let x_791 : vec4<f32> = u_xlat7;
  let x_793 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_791) + x_793);
  let x_796 : f32 = x_58.x_LayerHasMask0;
  let x_798 : f32 = x_58.x_LayerHasMask1;
  let x_800 : f32 = x_58.x_LayerHasMask2;
  let x_802 : f32 = x_58.x_LayerHasMask3;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_796, x_798, x_800, x_802) * x_804) + x_806);
  let x_809 : vec4<f32> = u_xlat4;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_809, x_810);
  let x_812 : vec4<f32> = u_xlat6;
  let x_815 : vec4<f32> = vs_TEXCOORD5;
  let x_817 : vec3<f32> = (vec3<f32>(x_812.y, x_812.y, x_812.y) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : vec4<f32> = vs_TEXCOORD4;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.x, x_820.x) * -(vec3<f32>(x_823.x, x_823.y, x_823.z))) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat6;
  let x_835 : vec4<f32> = vs_TEXCOORD3;
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec3<f32> = ((vec3<f32>(x_832.z, x_832.z, x_832.z) * vec3<f32>(x_835.x, x_835.y, x_835.z)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat1;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_848);
  let x_850 : f32 = u_xlat43;
  let x_852 : vec4<f32> = u_xlat1;
  let x_854 : vec3<f32> = (vec3<f32>(x_850, x_850, x_850) * vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_859 : vec3<f32> = vs_TEXCOORD7;
  let x_870 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres0;
  let x_873 : vec3<f32> = (x_859 + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec3<f32> = vs_TEXCOORD7;
  let x_878 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres1;
  let x_881 : vec3<f32> = (x_876 + -(vec3<f32>(x_878.x, x_878.y, x_878.z)));
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec3<f32> = vs_TEXCOORD7;
  let x_886 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres2;
  let x_889 : vec3<f32> = (x_884 + -(vec3<f32>(x_886.x, x_886.y, x_886.z)));
  let x_890 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec3<f32> = vs_TEXCOORD7;
  let x_894 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres3;
  let x_897 : vec3<f32> = (x_892 + -(vec3<f32>(x_894.x, x_894.y, x_894.z)));
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_906 : vec4<f32> = u_xlat3;
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_906.x, x_906.y, x_906.z), vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_912 : vec4<f32> = u_xlat4;
  let x_914 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_918 : vec4<f32> = u_xlat6;
  let x_920 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_926 : vec4<f32> = u_xlat2;
  let x_928 : vec4<f32> = x_868.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_926 < x_928);
  let x_931 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_931);
  let x_935 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_935);
  let x_939 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_939);
  let x_943 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_943);
  let x_947 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_947);
  let x_952 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_952);
  let x_956 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_956);
  let x_959 : vec4<f32> = u_xlat2;
  let x_961 : vec4<f32> = u_xlat3;
  let x_963 : vec3<f32> = (vec3<f32>(x_959.x, x_959.y, x_959.z) + vec3<f32>(x_961.y, x_961.z, x_961.w));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat2;
  let x_969 : vec3<f32> = max(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_970 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_970.x, x_969.x, x_969.y, x_969.z);
  let x_972 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(x_972, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_976 : f32 = u_xlat43;
  u_xlat43 = (-(x_976) + 4.0f);
  let x_981 : f32 = u_xlat43;
  u_xlatu43 = u32(x_981);
  let x_985 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_985) << bitcast<u32>(2i));
  let x_988 : vec3<f32> = vs_TEXCOORD7;
  let x_990 : i32 = u_xlati43;
  let x_993 : i32 = u_xlati43;
  let x_997 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_990 + 1i) / 4i)][((x_993 + 1i) % 4i)];
  let x_999 : vec3<f32> = (vec3<f32>(x_988.y, x_988.y, x_988.y) * vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : i32 = u_xlati43;
  let x_1004 : i32 = u_xlati43;
  let x_1007 : vec4<f32> = x_868.x_MainLightWorldToShadow[(x_1002 / 4i)][(x_1004 % 4i)];
  let x_1009 : vec3<f32> = vs_TEXCOORD7;
  let x_1012 : vec4<f32> = u_xlat2;
  let x_1014 : vec3<f32> = ((vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * vec3<f32>(x_1009.x, x_1009.x, x_1009.x)) + vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : i32 = u_xlati43;
  let x_1020 : i32 = u_xlati43;
  let x_1024 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
  let x_1026 : vec3<f32> = vs_TEXCOORD7;
  let x_1029 : vec4<f32> = u_xlat2;
  let x_1031 : vec3<f32> = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.z, x_1026.z, x_1026.z)) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1034 : vec4<f32> = u_xlat2;
  let x_1036 : i32 = u_xlati43;
  let x_1039 : i32 = u_xlati43;
  let x_1043 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1036 + 3i) / 4i)][((x_1039 + 3i) % 4i)];
  let x_1045 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) + vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1046 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1053 : vec4<f32> = vs_TEXCOORD0;
  let x_1056 : f32 = x_28.x_GlobalMipBias.x;
  let x_1057 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1053.z, x_1053.w), x_1056);
  u_xlat3 = x_1057;
  let x_1062 : vec4<f32> = vs_TEXCOORD0;
  let x_1065 : f32 = x_28.x_GlobalMipBias.x;
  let x_1066 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1062.z, x_1062.w), x_1065);
  let x_1067 : vec3<f32> = vec3<f32>(x_1066.x, x_1066.y, x_1066.z);
  let x_1068 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1070 : vec4<f32> = u_xlat3;
  let x_1074 : vec3<f32> = (vec3<f32>(x_1070.x, x_1070.y, x_1070.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1075 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1077 : vec4<f32> = u_xlat1;
  let x_1079 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_1077.x, x_1077.y, x_1077.z), vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : f32 = u_xlat43;
  u_xlat43 = (x_1082 + 0.5f);
  let x_1084 : f32 = u_xlat43;
  let x_1086 : vec4<f32> = u_xlat4;
  let x_1088 : vec3<f32> = (vec3<f32>(x_1084, x_1084, x_1084) * vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1092 : f32 = u_xlat3.w;
  u_xlat43 = max(x_1092, 0.00009999999747378752f);
  let x_1095 : vec4<f32> = u_xlat3;
  let x_1097 : f32 = u_xlat43;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1095.x, x_1095.y, x_1095.z) / vec3<f32>(x_1097, x_1097, x_1097));
  let x_1100 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1103 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1103) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1109 : f32 = u_xlat28;
  let x_1110 : f32 = u_xlat43;
  u_xlat44 = (x_1109 + -(x_1110));
  let x_1113 : f32 = u_xlat43;
  let x_1115 : vec4<f32> = u_xlat5;
  let x_1117 : vec3<f32> = (vec3<f32>(x_1113, x_1113, x_1113) * vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : vec4<f32> = u_xlat5;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1125 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1127 : vec3<f32> = u_xlat0;
  let x_1129 : vec4<f32> = u_xlat5;
  let x_1134 : vec3<f32> = ((vec3<f32>(x_1127.x, x_1127.x, x_1127.x) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1135 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1137) + 1.0f);
  let x_1142 : f32 = u_xlat0.x;
  let x_1144 : f32 = u_xlat0.x;
  u_xlat28 = (x_1142 * x_1144);
  let x_1146 : f32 = u_xlat28;
  u_xlat28 = max(x_1146, 0.0078125f);
  let x_1149 : f32 = u_xlat28;
  let x_1150 : f32 = u_xlat28;
  u_xlat43 = (x_1149 * x_1150);
  let x_1152 : f32 = u_xlat44;
  u_xlat44 = (x_1152 + 1.0f);
  let x_1154 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1154, 0.0f, 1.0f);
  let x_1157 : f32 = u_xlat28;
  u_xlat45 = ((x_1157 * 4.0f) + 2.0f);
  let x_1160 : f32 = u_xlat14;
  u_xlat14 = min(x_1160, 1.0f);
  let x_1164 : vec4<f32> = u_xlat2;
  let x_1165 : vec2<f32> = vec2<f32>(x_1164.x, x_1164.y);
  let x_1167 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1165.x, x_1165.y, x_1167);
  let x_1179 : vec3<f32> = txVec0;
  let x_1181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1179.xy, x_1179.z);
  u_xlat2.x = x_1181;
  let x_1185 : f32 = x_868.x_MainLightShadowParams.x;
  u_xlat16 = (-(x_1185) + 1.0f);
  let x_1189 : f32 = u_xlat2.x;
  let x_1191 : f32 = x_868.x_MainLightShadowParams.x;
  let x_1193 : f32 = u_xlat16;
  u_xlat2.x = ((x_1189 * x_1191) + x_1193);
  let x_1198 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1198);
  let x_1202 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1202 >= 1.0f);
  let x_1204 : bool = u_xlatb30;
  let x_1205 : bool = u_xlatb16;
  u_xlatb16 = (x_1204 | x_1205);
  let x_1207 : bool = u_xlatb16;
  if (x_1207) {
    x_1209 = 1.0f;
  } else {
    let x_1214 : f32 = u_xlat2.x;
    x_1209 = x_1214;
  }
  let x_1215 : f32 = x_1209;
  u_xlat2.x = x_1215;
  let x_1217 : vec3<f32> = vs_TEXCOORD7;
  let x_1220 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1222 : vec3<f32> = (x_1217 + -(x_1220));
  let x_1223 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1225 : vec4<f32> = u_xlat6;
  let x_1227 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_1225.x, x_1225.y, x_1225.z), vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1231 : f32 = u_xlat16;
  let x_1233 : f32 = x_868.x_MainLightShadowParams.z;
  let x_1236 : f32 = x_868.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1231 * x_1233) + x_1236);
  let x_1238 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1238, 0.0f, 1.0f);
  let x_1242 : f32 = u_xlat2.x;
  u_xlat46 = (-(x_1242) + 1.0f);
  let x_1245 : f32 = u_xlat30;
  let x_1246 : f32 = u_xlat46;
  let x_1249 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1245 * x_1246) + x_1249);
  let x_1259 : f32 = x_1257.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_1259 == -1.0f));
  let x_1261 : bool = u_xlatb30;
  if (x_1261) {
    let x_1264 : vec3<f32> = vs_TEXCOORD7;
    let x_1267 : vec4<f32> = x_1257.x_MainLightWorldToLight[1i];
    let x_1269 : vec2<f32> = (vec2<f32>(x_1264.y, x_1264.y) * vec2<f32>(x_1267.x, x_1267.y));
    let x_1270 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1269.x, x_1269.y, x_1270.z, x_1270.w);
    let x_1273 : vec4<f32> = x_1257.x_MainLightWorldToLight[0i];
    let x_1275 : vec3<f32> = vs_TEXCOORD7;
    let x_1278 : vec4<f32> = u_xlat6;
    let x_1280 : vec2<f32> = ((vec2<f32>(x_1273.x, x_1273.y) * vec2<f32>(x_1275.x, x_1275.x)) + vec2<f32>(x_1278.x, x_1278.y));
    let x_1281 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1280.x, x_1280.y, x_1281.z, x_1281.w);
    let x_1284 : vec4<f32> = x_1257.x_MainLightWorldToLight[2i];
    let x_1286 : vec3<f32> = vs_TEXCOORD7;
    let x_1289 : vec4<f32> = u_xlat6;
    let x_1291 : vec2<f32> = ((vec2<f32>(x_1284.x, x_1284.y) * vec2<f32>(x_1286.z, x_1286.z)) + vec2<f32>(x_1289.x, x_1289.y));
    let x_1292 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1292.w);
    let x_1294 : vec4<f32> = u_xlat6;
    let x_1297 : vec4<f32> = x_1257.x_MainLightWorldToLight[3i];
    let x_1299 : vec2<f32> = (vec2<f32>(x_1294.x, x_1294.y) + vec2<f32>(x_1297.x, x_1297.y));
    let x_1300 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
    let x_1302 : vec4<f32> = u_xlat6;
    let x_1305 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1306 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1305.x, x_1305.y, x_1306.z, x_1306.w);
    let x_1313 : vec4<f32> = u_xlat6;
    let x_1316 : f32 = x_28.x_GlobalMipBias.x;
    let x_1317 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1313.x, x_1313.y), x_1316);
    u_xlat6 = x_1317;
    let x_1322 : f32 = x_1257.x_MainLightCookieTextureFormat;
    let x_1324 : f32 = x_1257.x_MainLightCookieTextureFormat;
    let x_1326 : f32 = x_1257.x_MainLightCookieTextureFormat;
    let x_1328 : f32 = x_1257.x_MainLightCookieTextureFormat;
    let x_1329 : vec4<f32> = vec4<f32>(x_1322, x_1324, x_1326, x_1328);
    let x_1336 : vec4<bool> = (vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1329.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1336.x, x_1336.y);
    let x_1339 : bool = u_xlatb7.y;
    if (x_1339) {
      let x_1344 : f32 = u_xlat6.w;
      x_1340 = x_1344;
    } else {
      let x_1347 : f32 = u_xlat6.x;
      x_1340 = x_1347;
    }
    let x_1348 : f32 = x_1340;
    u_xlat30 = x_1348;
    let x_1350 : bool = u_xlatb7.x;
    if (x_1350) {
      let x_1354 : vec4<f32> = u_xlat6;
      x_1351 = vec3<f32>(x_1354.x, x_1354.y, x_1354.z);
    } else {
      let x_1357 : f32 = u_xlat30;
      x_1351 = vec3<f32>(x_1357, x_1357, x_1357);
    }
    let x_1359 : vec3<f32> = x_1351;
    let x_1360 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1366 : vec4<f32> = u_xlat6;
  let x_1369 : vec4<f32> = x_28.x_MainLightColor;
  let x_1371 : vec3<f32> = (vec3<f32>(x_1366.x, x_1366.y, x_1366.z) * vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
  let x_1372 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
  let x_1376 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1376;
  let x_1379 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1379;
  let x_1382 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1382;
  let x_1384 : vec4<f32> = u_xlat7;
  let x_1387 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1384.x, x_1384.y, x_1384.z)), vec3<f32>(x_1387.x, x_1387.y, x_1387.z));
  let x_1390 : f32 = u_xlat30;
  let x_1391 : f32 = u_xlat30;
  u_xlat30 = (x_1390 + x_1391);
  let x_1393 : vec4<f32> = u_xlat1;
  let x_1395 : f32 = u_xlat30;
  let x_1399 : vec4<f32> = u_xlat7;
  let x_1402 : vec3<f32> = ((vec3<f32>(x_1393.x, x_1393.y, x_1393.z) * -(vec3<f32>(x_1395, x_1395, x_1395))) + -(vec3<f32>(x_1399.x, x_1399.y, x_1399.z)));
  let x_1403 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
  let x_1405 : vec4<f32> = u_xlat1;
  let x_1407 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1405.x, x_1405.y, x_1405.z), vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
  let x_1410 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1410, 0.0f, 1.0f);
  let x_1412 : f32 = u_xlat30;
  u_xlat30 = (-(x_1412) + 1.0f);
  let x_1415 : f32 = u_xlat30;
  let x_1416 : f32 = u_xlat30;
  u_xlat30 = (x_1415 * x_1416);
  let x_1418 : f32 = u_xlat30;
  let x_1419 : f32 = u_xlat30;
  u_xlat30 = (x_1418 * x_1419);
  let x_1422 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1422) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1429 : f32 = u_xlat0.x;
  let x_1430 : f32 = u_xlat46;
  u_xlat0.x = (x_1429 * x_1430);
  let x_1434 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1434 * 6.0f);
  let x_1446 : vec4<f32> = u_xlat8;
  let x_1449 : f32 = u_xlat0.x;
  let x_1450 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1446.x, x_1446.y, x_1446.z), x_1449);
  u_xlat8 = x_1450;
  let x_1452 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1452 + -1.0f);
  let x_1460 : f32 = x_1458.unity_SpecCube0_HDR.w;
  let x_1462 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1460 * x_1462) + 1.0f);
  let x_1467 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1467, 0.0f);
  let x_1471 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1471);
  let x_1475 : f32 = u_xlat0.x;
  let x_1477 : f32 = x_1458.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1475 * x_1477);
  let x_1481 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1481);
  let x_1485 : f32 = u_xlat0.x;
  let x_1487 : f32 = x_1458.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1485 * x_1487);
  let x_1490 : vec4<f32> = u_xlat8;
  let x_1492 : vec3<f32> = u_xlat0;
  let x_1494 : vec3<f32> = (vec3<f32>(x_1490.x, x_1490.y, x_1490.z) * vec3<f32>(x_1492.x, x_1492.x, x_1492.x));
  let x_1495 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
  let x_1497 : f32 = u_xlat28;
  let x_1499 : f32 = u_xlat28;
  let x_1503 : vec2<f32> = ((vec2<f32>(x_1497, x_1497) * vec2<f32>(x_1499, x_1499)) + vec2<f32>(-1.0f, 1.0f));
  let x_1504 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1503.x, x_1504.y, x_1503.y);
  let x_1507 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1507);
  let x_1509 : vec4<f32> = u_xlat5;
  let x_1512 : f32 = u_xlat44;
  let x_1514 : vec3<f32> = (-(vec3<f32>(x_1509.x, x_1509.y, x_1509.z)) + vec3<f32>(x_1512, x_1512, x_1512));
  let x_1515 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
  let x_1517 : f32 = u_xlat30;
  let x_1519 : vec4<f32> = u_xlat9;
  let x_1522 : vec4<f32> = u_xlat5;
  let x_1524 : vec3<f32> = ((vec3<f32>(x_1517, x_1517, x_1517) * vec3<f32>(x_1519.x, x_1519.y, x_1519.z)) + vec3<f32>(x_1522.x, x_1522.y, x_1522.z));
  let x_1525 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);
  let x_1527 : f32 = u_xlat28;
  let x_1529 : vec4<f32> = u_xlat9;
  let x_1531 : vec3<f32> = (vec3<f32>(x_1527, x_1527, x_1527) * vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
  let x_1532 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
  let x_1534 : vec4<f32> = u_xlat8;
  let x_1536 : vec4<f32> = u_xlat9;
  let x_1538 : vec3<f32> = (vec3<f32>(x_1534.x, x_1534.y, x_1534.z) * vec3<f32>(x_1536.x, x_1536.y, x_1536.z));
  let x_1539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1538.x, x_1538.y, x_1538.z, x_1539.w);
  let x_1541 : vec4<f32> = u_xlat3;
  let x_1543 : vec4<f32> = u_xlat4;
  let x_1546 : vec4<f32> = u_xlat8;
  let x_1548 : vec3<f32> = ((vec3<f32>(x_1541.x, x_1541.y, x_1541.z) * vec3<f32>(x_1543.x, x_1543.y, x_1543.z)) + vec3<f32>(x_1546.x, x_1546.y, x_1546.z));
  let x_1549 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1548.x, x_1548.y, x_1548.z, x_1549.w);
  let x_1552 : f32 = u_xlat2.x;
  let x_1554 : f32 = x_1458.unity_LightData.z;
  u_xlat28 = (x_1552 * x_1554);
  let x_1556 : vec4<f32> = u_xlat1;
  let x_1559 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1556.x, x_1556.y, x_1556.z), vec3<f32>(x_1559.x, x_1559.y, x_1559.z));
  let x_1564 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1564, 0.0f, 1.0f);
  let x_1567 : f32 = u_xlat28;
  let x_1569 : f32 = u_xlat2.x;
  u_xlat28 = (x_1567 * x_1569);
  let x_1571 : f32 = u_xlat28;
  let x_1573 : vec4<f32> = u_xlat6;
  let x_1575 : vec3<f32> = (vec3<f32>(x_1571, x_1571, x_1571) * vec3<f32>(x_1573.x, x_1573.y, x_1573.z));
  let x_1576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1575.x, x_1576.y, x_1575.y, x_1575.z);
  let x_1578 : vec4<f32> = u_xlat7;
  let x_1581 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1583 : vec3<f32> = (vec3<f32>(x_1578.x, x_1578.y, x_1578.z) + vec3<f32>(x_1581.x, x_1581.y, x_1581.z));
  let x_1584 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1584.w);
  let x_1586 : vec4<f32> = u_xlat6;
  let x_1588 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1586.x, x_1586.y, x_1586.z), vec3<f32>(x_1588.x, x_1588.y, x_1588.z));
  let x_1591 : f32 = u_xlat28;
  u_xlat28 = max(x_1591, 1.17549435e-38f);
  let x_1594 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1594);
  let x_1596 : f32 = u_xlat28;
  let x_1598 : vec4<f32> = u_xlat6;
  let x_1600 : vec3<f32> = (vec3<f32>(x_1596, x_1596, x_1596) * vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
  let x_1601 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1603 : vec4<f32> = u_xlat1;
  let x_1605 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1603.x, x_1603.y, x_1603.z), vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
  let x_1608 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1608, 0.0f, 1.0f);
  let x_1611 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1613 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1611.x, x_1611.y, x_1611.z), vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
  let x_1616 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1616, 0.0f, 1.0f);
  let x_1618 : f32 = u_xlat28;
  let x_1619 : f32 = u_xlat28;
  u_xlat28 = (x_1618 * x_1619);
  let x_1621 : f32 = u_xlat28;
  let x_1623 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1621 * x_1623) + 1.00001001358032226562f);
  let x_1627 : f32 = u_xlat46;
  let x_1628 : f32 = u_xlat46;
  u_xlat46 = (x_1627 * x_1628);
  let x_1630 : f32 = u_xlat28;
  let x_1631 : f32 = u_xlat28;
  u_xlat28 = (x_1630 * x_1631);
  let x_1633 : f32 = u_xlat46;
  u_xlat46 = max(x_1633, 0.10000000149011611938f);
  let x_1636 : f32 = u_xlat28;
  let x_1637 : f32 = u_xlat46;
  u_xlat28 = (x_1636 * x_1637);
  let x_1639 : f32 = u_xlat45;
  let x_1640 : f32 = u_xlat28;
  u_xlat28 = (x_1639 * x_1640);
  let x_1642 : f32 = u_xlat43;
  let x_1643 : f32 = u_xlat28;
  u_xlat28 = (x_1642 / x_1643);
  let x_1645 : vec4<f32> = u_xlat5;
  let x_1647 : f32 = u_xlat28;
  let x_1650 : vec4<f32> = u_xlat4;
  let x_1652 : vec3<f32> = ((vec3<f32>(x_1645.x, x_1645.y, x_1645.z) * vec3<f32>(x_1647, x_1647, x_1647)) + vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
  let x_1653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1653.w);
  let x_1655 : vec4<f32> = u_xlat2;
  let x_1657 : vec4<f32> = u_xlat6;
  let x_1659 : vec3<f32> = (vec3<f32>(x_1655.x, x_1655.z, x_1655.w) * vec3<f32>(x_1657.x, x_1657.y, x_1657.z));
  let x_1660 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1659.x, x_1660.y, x_1659.y, x_1659.z);
  let x_1663 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1665 : f32 = x_1458.unity_LightData.y;
  u_xlat28 = min(x_1663, x_1665);
  let x_1668 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1668));
  let x_1671 : f32 = u_xlat16;
  let x_1673 : f32 = x_868.x_AdditionalShadowFadeParams.x;
  let x_1676 : f32 = x_868.x_AdditionalShadowFadeParams.y;
  u_xlat16 = ((x_1671 * x_1673) + x_1676);
  let x_1678 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1678, 0.0f, 1.0f);
  let x_1682 : f32 = x_1257.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1684 : f32 = x_1257.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1686 : f32 = x_1257.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1688 : f32 = x_1257.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1689 : vec4<f32> = vec4<f32>(x_1682, x_1684, x_1686, x_1688);
  let x_1695 : vec4<bool> = (vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1689.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1695.x, x_1695.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1707 : u32 = u_xlatu_loop_1;
    let x_1708 : u32 = u_xlatu28;
    if ((x_1707 < x_1708)) {
    } else {
      break;
    }
    let x_1711 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1711 >> 2u);
    let x_1714 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_1714 & 3u));
    let x_1718 : u32 = u_xlatu47;
    let x_1721 : vec4<f32> = x_1458.unity_LightIndices[bitcast<i32>(x_1718)];
    let x_1731 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1736 : vec4<u32> = indexable[x_1731];
    u_xlat47 = dot(x_1721, bitcast<vec4<f32>>(x_1736));
    let x_1740 : f32 = u_xlat47;
    u_xlati47 = i32(x_1740);
    let x_1742 : vec3<f32> = vs_TEXCOORD7;
    let x_1753 : i32 = u_xlati47;
    let x_1755 : vec4<f32> = x_1752.x_AdditionalLightsPosition[x_1753];
    let x_1758 : i32 = u_xlati47;
    let x_1760 : vec4<f32> = x_1752.x_AdditionalLightsPosition[x_1758];
    let x_1762 : vec3<f32> = ((-(x_1742) * vec3<f32>(x_1755.w, x_1755.w, x_1755.w)) + vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
    let x_1763 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
    let x_1766 : vec4<f32> = u_xlat9;
    let x_1768 : vec4<f32> = u_xlat9;
    u_xlat34 = dot(vec3<f32>(x_1766.x, x_1766.y, x_1766.z), vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
    let x_1771 : f32 = u_xlat34;
    u_xlat34 = max(x_1771, 0.00006103515625f);
    let x_1774 : f32 = u_xlat34;
    u_xlat48 = inverseSqrt(x_1774);
    let x_1776 : f32 = u_xlat48;
    let x_1778 : vec4<f32> = u_xlat9;
    let x_1780 : vec3<f32> = (vec3<f32>(x_1776, x_1776, x_1776) * vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
    let x_1781 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
    let x_1784 : f32 = u_xlat34;
    u_xlat49 = (1.0f / x_1784);
    let x_1786 : f32 = u_xlat34;
    let x_1787 : i32 = u_xlati47;
    let x_1789 : f32 = x_1752.x_AdditionalLightsAttenuation[x_1787].x;
    u_xlat34 = (x_1786 * x_1789);
    let x_1791 : f32 = u_xlat34;
    let x_1793 : f32 = u_xlat34;
    u_xlat34 = ((-(x_1791) * x_1793) + 1.0f);
    let x_1796 : f32 = u_xlat34;
    u_xlat34 = max(x_1796, 0.0f);
    let x_1798 : f32 = u_xlat34;
    let x_1799 : f32 = u_xlat34;
    u_xlat34 = (x_1798 * x_1799);
    let x_1801 : f32 = u_xlat34;
    let x_1802 : f32 = u_xlat49;
    u_xlat34 = (x_1801 * x_1802);
    let x_1804 : i32 = u_xlati47;
    let x_1806 : vec4<f32> = x_1752.x_AdditionalLightsSpotDir[x_1804];
    let x_1808 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1806.x, x_1806.y, x_1806.z), vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
    let x_1811 : f32 = u_xlat49;
    let x_1812 : i32 = u_xlati47;
    let x_1814 : f32 = x_1752.x_AdditionalLightsAttenuation[x_1812].z;
    let x_1816 : i32 = u_xlati47;
    let x_1818 : f32 = x_1752.x_AdditionalLightsAttenuation[x_1816].w;
    u_xlat49 = ((x_1811 * x_1814) + x_1818);
    let x_1820 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1820, 0.0f, 1.0f);
    let x_1822 : f32 = u_xlat49;
    let x_1823 : f32 = u_xlat49;
    u_xlat49 = (x_1822 * x_1823);
    let x_1825 : f32 = u_xlat34;
    let x_1826 : f32 = u_xlat49;
    u_xlat34 = (x_1825 * x_1826);
    let x_1829 : i32 = u_xlati47;
    let x_1831 : f32 = x_868.x_AdditionalShadowParams[x_1829].w;
    u_xlati49 = i32(x_1831);
    let x_1834 : i32 = u_xlati49;
    u_xlatb50 = (x_1834 >= 0i);
    let x_1836 : bool = u_xlatb50;
    if (x_1836) {
      let x_1840 : i32 = u_xlati47;
      let x_1842 : f32 = x_868.x_AdditionalShadowParams[x_1840].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1842, x_1842, x_1842, x_1842))));
      let x_1846 : bool = u_xlatb50;
      if (x_1846) {
        let x_1850 : vec4<f32> = u_xlat10;
        let x_1853 : vec4<f32> = u_xlat10;
        let x_1856 : vec4<bool> = (abs(vec4<f32>(x_1850.z, x_1850.z, x_1850.y, x_1850.z)) >= abs(vec4<f32>(x_1853.x, x_1853.y, x_1853.x, x_1853.x)));
        let x_1858 : vec3<bool> = vec3<bool>(x_1856.x, x_1856.y, x_1856.z);
        let x_1859 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
        let x_1862 : bool = u_xlatb11.y;
        let x_1864 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1862 & x_1864);
        let x_1866 : vec4<f32> = u_xlat10;
        let x_1869 : vec4<bool> = (-(vec4<f32>(x_1866.z, x_1866.y, x_1866.z, x_1866.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1870 : vec3<bool> = vec3<bool>(x_1869.x, x_1869.y, x_1869.w);
        let x_1871 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1870.x, x_1870.y, x_1871.z, x_1870.z);
        let x_1874 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1874);
        let x_1879 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1879);
        let x_1884 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1884);
        let x_1887 : bool = u_xlatb11.z;
        if (x_1887) {
          let x_1892 : f32 = u_xlat11.y;
          x_1888 = x_1892;
        } else {
          let x_1894 : f32 = u_xlat51;
          x_1888 = x_1894;
        }
        let x_1895 : f32 = x_1888;
        u_xlat51 = x_1895;
        let x_1897 : bool = u_xlatb50;
        if (x_1897) {
          let x_1902 : f32 = u_xlat11.x;
          x_1898 = x_1902;
        } else {
          let x_1904 : f32 = u_xlat51;
          x_1898 = x_1904;
        }
        let x_1905 : f32 = x_1898;
        u_xlat50 = x_1905;
        let x_1906 : i32 = u_xlati47;
        let x_1908 : f32 = x_868.x_AdditionalShadowParams[x_1906].w;
        u_xlat51 = trunc(x_1908);
        let x_1910 : f32 = u_xlat50;
        let x_1911 : f32 = u_xlat51;
        u_xlat50 = (x_1910 + x_1911);
        let x_1913 : f32 = u_xlat50;
        u_xlati49 = i32(x_1913);
      }
      let x_1915 : i32 = u_xlati49;
      u_xlati49 = (x_1915 << bitcast<u32>(2i));
      let x_1917 : vec3<f32> = vs_TEXCOORD7;
      let x_1919 : i32 = u_xlati49;
      let x_1922 : i32 = u_xlati49;
      let x_1926 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1919 + 1i) / 4i)][((x_1922 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1917.y, x_1917.y, x_1917.y, x_1917.y) * x_1926);
      let x_1928 : i32 = u_xlati49;
      let x_1930 : i32 = u_xlati49;
      let x_1933 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[(x_1928 / 4i)][(x_1930 % 4i)];
      let x_1934 : vec3<f32> = vs_TEXCOORD7;
      let x_1937 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1933 * vec4<f32>(x_1934.x, x_1934.x, x_1934.x, x_1934.x)) + x_1937);
      let x_1939 : i32 = u_xlati49;
      let x_1942 : i32 = u_xlati49;
      let x_1946 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1939 + 2i) / 4i)][((x_1942 + 2i) % 4i)];
      let x_1947 : vec3<f32> = vs_TEXCOORD7;
      let x_1950 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1946 * vec4<f32>(x_1947.z, x_1947.z, x_1947.z, x_1947.z)) + x_1950);
      let x_1952 : vec4<f32> = u_xlat11;
      let x_1953 : i32 = u_xlati49;
      let x_1956 : i32 = u_xlati49;
      let x_1960 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1953 + 3i) / 4i)][((x_1956 + 3i) % 4i)];
      u_xlat11 = (x_1952 + x_1960);
      let x_1962 : vec4<f32> = u_xlat11;
      let x_1964 : vec4<f32> = u_xlat11;
      let x_1966 : vec3<f32> = (vec3<f32>(x_1962.x, x_1962.y, x_1962.z) / vec3<f32>(x_1964.w, x_1964.w, x_1964.w));
      let x_1967 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
      let x_1970 : vec4<f32> = u_xlat11;
      let x_1971 : vec2<f32> = vec2<f32>(x_1970.x, x_1970.y);
      let x_1973 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1971.x, x_1971.y, x_1973);
      let x_1981 : vec3<f32> = txVec1;
      let x_1983 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1981.xy, x_1981.z);
      u_xlat49 = x_1983;
      let x_1984 : i32 = u_xlati47;
      let x_1986 : f32 = x_868.x_AdditionalShadowParams[x_1984].x;
      u_xlat50 = (1.0f + -(x_1986));
      let x_1989 : f32 = u_xlat49;
      let x_1990 : i32 = u_xlati47;
      let x_1992 : f32 = x_868.x_AdditionalShadowParams[x_1990].x;
      let x_1994 : f32 = u_xlat50;
      u_xlat49 = ((x_1989 * x_1992) + x_1994);
      let x_1997 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1997);
      let x_2001 : f32 = u_xlat11.z;
      u_xlatb51 = (x_2001 >= 1.0f);
      let x_2003 : bool = u_xlatb50;
      let x_2004 : bool = u_xlatb51;
      u_xlatb50 = (x_2003 | x_2004);
      let x_2006 : bool = u_xlatb50;
      let x_2007 : f32 = u_xlat49;
      u_xlat49 = select(x_2007, 1.0f, x_2006);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_2010 : f32 = u_xlat49;
    u_xlat50 = (-(x_2010) + 1.0f);
    let x_2013 : f32 = u_xlat16;
    let x_2014 : f32 = u_xlat50;
    let x_2016 : f32 = u_xlat49;
    u_xlat49 = ((x_2013 * x_2014) + x_2016);
    let x_2019 : i32 = u_xlati47;
    u_xlati50 = (1i << bitcast<u32>((x_2019 & 31i)));
    let x_2022 : i32 = u_xlati50;
    let x_2025 : f32 = x_1257.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_2022) & bitcast<u32>(x_2025)));
    let x_2029 : i32 = u_xlati50;
    if ((x_2029 != 0i)) {
      let x_2033 : i32 = u_xlati47;
      let x_2035 : f32 = x_1257.x_AdditionalLightsLightTypes[x_2033].el;
      u_xlati50 = i32(x_2035);
      let x_2038 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_2038 != 0i));
      let x_2042 : i32 = u_xlati47;
      u_xlati52 = (x_2042 << bitcast<u32>(2i));
      let x_2044 : i32 = u_xlati51;
      if ((x_2044 != 0i)) {
        let x_2048 : vec3<f32> = vs_TEXCOORD7;
        let x_2050 : i32 = u_xlati52;
        let x_2053 : i32 = u_xlati52;
        let x_2057 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[((x_2050 + 1i) / 4i)][((x_2053 + 1i) % 4i)];
        let x_2059 : vec3<f32> = (vec3<f32>(x_2048.y, x_2048.y, x_2048.y) * vec3<f32>(x_2057.x, x_2057.y, x_2057.w));
        let x_2060 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
        let x_2062 : i32 = u_xlati52;
        let x_2064 : i32 = u_xlati52;
        let x_2067 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[(x_2062 / 4i)][(x_2064 % 4i)];
        let x_2069 : vec3<f32> = vs_TEXCOORD7;
        let x_2072 : vec4<f32> = u_xlat11;
        let x_2074 : vec3<f32> = ((vec3<f32>(x_2067.x, x_2067.y, x_2067.w) * vec3<f32>(x_2069.x, x_2069.x, x_2069.x)) + vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
        let x_2075 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
        let x_2077 : i32 = u_xlati52;
        let x_2080 : i32 = u_xlati52;
        let x_2084 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[((x_2077 + 2i) / 4i)][((x_2080 + 2i) % 4i)];
        let x_2086 : vec3<f32> = vs_TEXCOORD7;
        let x_2089 : vec4<f32> = u_xlat11;
        let x_2091 : vec3<f32> = ((vec3<f32>(x_2084.x, x_2084.y, x_2084.w) * vec3<f32>(x_2086.z, x_2086.z, x_2086.z)) + vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
        let x_2092 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
        let x_2094 : vec4<f32> = u_xlat11;
        let x_2096 : i32 = u_xlati52;
        let x_2099 : i32 = u_xlati52;
        let x_2103 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[((x_2096 + 3i) / 4i)][((x_2099 + 3i) % 4i)];
        let x_2105 : vec3<f32> = (vec3<f32>(x_2094.x, x_2094.y, x_2094.z) + vec3<f32>(x_2103.x, x_2103.y, x_2103.w));
        let x_2106 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2105.x, x_2105.y, x_2105.z, x_2106.w);
        let x_2108 : vec4<f32> = u_xlat11;
        let x_2110 : vec4<f32> = u_xlat11;
        let x_2112 : vec2<f32> = (vec2<f32>(x_2108.x, x_2108.y) / vec2<f32>(x_2110.z, x_2110.z));
        let x_2113 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2112.x, x_2112.y, x_2113.z, x_2113.w);
        let x_2115 : vec4<f32> = u_xlat11;
        let x_2118 : vec2<f32> = ((vec2<f32>(x_2115.x, x_2115.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2119 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2118.x, x_2118.y, x_2119.z, x_2119.w);
        let x_2121 : vec4<f32> = u_xlat11;
        let x_2125 : vec2<f32> = clamp(vec2<f32>(x_2121.x, x_2121.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2126 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2125.x, x_2125.y, x_2126.z, x_2126.w);
        let x_2128 : i32 = u_xlati47;
        let x_2130 : vec4<f32> = x_1257.x_AdditionalLightsCookieAtlasUVRects[x_2128];
        let x_2132 : vec4<f32> = u_xlat11;
        let x_2135 : i32 = u_xlati47;
        let x_2137 : vec4<f32> = x_1257.x_AdditionalLightsCookieAtlasUVRects[x_2135];
        let x_2139 : vec2<f32> = ((vec2<f32>(x_2130.x, x_2130.y) * vec2<f32>(x_2132.x, x_2132.y)) + vec2<f32>(x_2137.z, x_2137.w));
        let x_2140 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2139.x, x_2139.y, x_2140.z, x_2140.w);
      } else {
        let x_2143 : i32 = u_xlati50;
        u_xlatb50 = (x_2143 == 1i);
        let x_2145 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_2145);
        let x_2147 : i32 = u_xlati50;
        if ((x_2147 != 0i)) {
          let x_2153 : vec3<f32> = vs_TEXCOORD7;
          let x_2155 : i32 = u_xlati52;
          let x_2158 : i32 = u_xlati52;
          let x_2162 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[((x_2155 + 1i) / 4i)][((x_2158 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_2153.y, x_2153.y) * vec2<f32>(x_2162.x, x_2162.y));
          let x_2165 : i32 = u_xlati52;
          let x_2167 : i32 = u_xlati52;
          let x_2170 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[(x_2165 / 4i)][(x_2167 % 4i)];
          let x_2172 : vec3<f32> = vs_TEXCOORD7;
          let x_2175 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2170.x, x_2170.y) * vec2<f32>(x_2172.x, x_2172.x)) + x_2175);
          let x_2177 : i32 = u_xlati52;
          let x_2180 : i32 = u_xlati52;
          let x_2184 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[((x_2177 + 2i) / 4i)][((x_2180 + 2i) % 4i)];
          let x_2186 : vec3<f32> = vs_TEXCOORD7;
          let x_2189 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2184.x, x_2184.y) * vec2<f32>(x_2186.z, x_2186.z)) + x_2189);
          let x_2191 : vec2<f32> = u_xlat39;
          let x_2192 : i32 = u_xlati52;
          let x_2195 : i32 = u_xlati52;
          let x_2199 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[((x_2192 + 3i) / 4i)][((x_2195 + 3i) % 4i)];
          u_xlat39 = (x_2191 + vec2<f32>(x_2199.x, x_2199.y));
          let x_2202 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2202 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2205 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2205);
          let x_2207 : i32 = u_xlati47;
          let x_2209 : vec4<f32> = x_1257.x_AdditionalLightsCookieAtlasUVRects[x_2207];
          let x_2211 : vec2<f32> = u_xlat39;
          let x_2213 : i32 = u_xlati47;
          let x_2215 : vec4<f32> = x_1257.x_AdditionalLightsCookieAtlasUVRects[x_2213];
          let x_2217 : vec2<f32> = ((vec2<f32>(x_2209.x, x_2209.y) * x_2211) + vec2<f32>(x_2215.z, x_2215.w));
          let x_2218 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2217.x, x_2217.y, x_2218.z, x_2218.w);
        } else {
          let x_2221 : vec3<f32> = vs_TEXCOORD7;
          let x_2223 : i32 = u_xlati52;
          let x_2226 : i32 = u_xlati52;
          let x_2230 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[((x_2223 + 1i) / 4i)][((x_2226 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2221.y, x_2221.y, x_2221.y, x_2221.y) * x_2230);
          let x_2232 : i32 = u_xlati52;
          let x_2234 : i32 = u_xlati52;
          let x_2237 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[(x_2232 / 4i)][(x_2234 % 4i)];
          let x_2238 : vec3<f32> = vs_TEXCOORD7;
          let x_2241 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2237 * vec4<f32>(x_2238.x, x_2238.x, x_2238.x, x_2238.x)) + x_2241);
          let x_2243 : i32 = u_xlati52;
          let x_2246 : i32 = u_xlati52;
          let x_2250 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[((x_2243 + 2i) / 4i)][((x_2246 + 2i) % 4i)];
          let x_2251 : vec3<f32> = vs_TEXCOORD7;
          let x_2254 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2250 * vec4<f32>(x_2251.z, x_2251.z, x_2251.z, x_2251.z)) + x_2254);
          let x_2256 : vec4<f32> = u_xlat12;
          let x_2257 : i32 = u_xlati52;
          let x_2260 : i32 = u_xlati52;
          let x_2264 : vec4<f32> = x_1257.x_AdditionalLightsWorldToLights[((x_2257 + 3i) / 4i)][((x_2260 + 3i) % 4i)];
          u_xlat12 = (x_2256 + x_2264);
          let x_2266 : vec4<f32> = u_xlat12;
          let x_2268 : vec4<f32> = u_xlat12;
          let x_2270 : vec3<f32> = (vec3<f32>(x_2266.x, x_2266.y, x_2266.z) / vec3<f32>(x_2268.w, x_2268.w, x_2268.w));
          let x_2271 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2270.x, x_2270.y, x_2270.z, x_2271.w);
          let x_2273 : vec4<f32> = u_xlat12;
          let x_2275 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2273.x, x_2273.y, x_2273.z), vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
          let x_2278 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2278);
          let x_2280 : f32 = u_xlat50;
          let x_2282 : vec4<f32> = u_xlat12;
          let x_2284 : vec3<f32> = (vec3<f32>(x_2280, x_2280, x_2280) * vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
          let x_2285 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
          let x_2287 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2287.x, x_2287.y, x_2287.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2292 : f32 = u_xlat50;
          u_xlat50 = max(x_2292, 0.00000099999999747524f);
          let x_2295 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2295);
          let x_2297 : f32 = u_xlat50;
          let x_2299 : vec4<f32> = u_xlat12;
          let x_2301 : vec3<f32> = (vec3<f32>(x_2297, x_2297, x_2297) * vec3<f32>(x_2299.z, x_2299.x, x_2299.y));
          let x_2302 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
          let x_2305 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2305);
          let x_2309 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2309, 0.0f, 1.0f);
          let x_2313 : vec4<f32> = u_xlat13;
          let x_2315 : vec4<bool> = (vec4<f32>(x_2313.y, x_2313.z, x_2313.y, x_2313.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2315.x, x_2315.y);
          let x_2318 : bool = u_xlatb39.x;
          if (x_2318) {
            let x_2323 : f32 = u_xlat13.x;
            x_2319 = x_2323;
          } else {
            let x_2326 : f32 = u_xlat13.x;
            x_2319 = -(x_2326);
          }
          let x_2328 : f32 = x_2319;
          u_xlat39.x = x_2328;
          let x_2331 : bool = u_xlatb39.y;
          if (x_2331) {
            let x_2336 : f32 = u_xlat13.x;
            x_2332 = x_2336;
          } else {
            let x_2339 : f32 = u_xlat13.x;
            x_2332 = -(x_2339);
          }
          let x_2341 : f32 = x_2332;
          u_xlat39.y = x_2341;
          let x_2343 : vec4<f32> = u_xlat12;
          let x_2345 : f32 = u_xlat50;
          let x_2348 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2343.x, x_2343.y) * vec2<f32>(x_2345, x_2345)) + x_2348);
          let x_2350 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2350 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2353 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2353, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2357 : i32 = u_xlati47;
          let x_2359 : vec4<f32> = x_1257.x_AdditionalLightsCookieAtlasUVRects[x_2357];
          let x_2361 : vec2<f32> = u_xlat39;
          let x_2363 : i32 = u_xlati47;
          let x_2365 : vec4<f32> = x_1257.x_AdditionalLightsCookieAtlasUVRects[x_2363];
          let x_2367 : vec2<f32> = ((vec2<f32>(x_2359.x, x_2359.y) * x_2361) + vec2<f32>(x_2365.z, x_2365.w));
          let x_2368 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2367.x, x_2367.y, x_2368.z, x_2368.w);
        }
      }
      let x_2375 : vec4<f32> = u_xlat11;
      let x_2377 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2375.x, x_2375.y), 0.0f);
      u_xlat11 = x_2377;
      let x_2379 : bool = u_xlatb6.y;
      if (x_2379) {
        let x_2384 : f32 = u_xlat11.w;
        x_2380 = x_2384;
      } else {
        let x_2387 : f32 = u_xlat11.x;
        x_2380 = x_2387;
      }
      let x_2388 : f32 = x_2380;
      u_xlat50 = x_2388;
      let x_2390 : bool = u_xlatb6.x;
      if (x_2390) {
        let x_2394 : vec4<f32> = u_xlat11;
        x_2391 = vec3<f32>(x_2394.x, x_2394.y, x_2394.z);
      } else {
        let x_2397 : f32 = u_xlat50;
        x_2391 = vec3<f32>(x_2397, x_2397, x_2397);
      }
      let x_2399 : vec3<f32> = x_2391;
      let x_2400 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2406 : vec4<f32> = u_xlat11;
    let x_2408 : i32 = u_xlati47;
    let x_2410 : vec4<f32> = x_1752.x_AdditionalLightsColor[x_2408];
    let x_2412 : vec3<f32> = (vec3<f32>(x_2406.x, x_2406.y, x_2406.z) * vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
    let x_2413 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
    let x_2415 : f32 = u_xlat34;
    let x_2416 : f32 = u_xlat49;
    u_xlat47 = (x_2415 * x_2416);
    let x_2418 : vec4<f32> = u_xlat1;
    let x_2420 : vec4<f32> = u_xlat10;
    u_xlat34 = dot(vec3<f32>(x_2418.x, x_2418.y, x_2418.z), vec3<f32>(x_2420.x, x_2420.y, x_2420.z));
    let x_2423 : f32 = u_xlat34;
    u_xlat34 = clamp(x_2423, 0.0f, 1.0f);
    let x_2425 : f32 = u_xlat47;
    let x_2426 : f32 = u_xlat34;
    u_xlat47 = (x_2425 * x_2426);
    let x_2428 : f32 = u_xlat47;
    let x_2430 : vec4<f32> = u_xlat11;
    let x_2432 : vec3<f32> = (vec3<f32>(x_2428, x_2428, x_2428) * vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
    let x_2433 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2432.x, x_2432.y, x_2432.z, x_2433.w);
    let x_2435 : vec4<f32> = u_xlat9;
    let x_2437 : f32 = u_xlat48;
    let x_2440 : vec4<f32> = u_xlat7;
    let x_2442 : vec3<f32> = ((vec3<f32>(x_2435.x, x_2435.y, x_2435.z) * vec3<f32>(x_2437, x_2437, x_2437)) + vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
    let x_2443 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
    let x_2445 : vec4<f32> = u_xlat9;
    let x_2447 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2445.x, x_2445.y, x_2445.z), vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
    let x_2450 : f32 = u_xlat47;
    u_xlat47 = max(x_2450, 1.17549435e-38f);
    let x_2452 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_2452);
    let x_2454 : f32 = u_xlat47;
    let x_2456 : vec4<f32> = u_xlat9;
    let x_2458 : vec3<f32> = (vec3<f32>(x_2454, x_2454, x_2454) * vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
    let x_2459 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
    let x_2461 : vec4<f32> = u_xlat1;
    let x_2463 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2461.x, x_2461.y, x_2461.z), vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
    let x_2466 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2466, 0.0f, 1.0f);
    let x_2468 : vec4<f32> = u_xlat10;
    let x_2470 : vec4<f32> = u_xlat9;
    u_xlat34 = dot(vec3<f32>(x_2468.x, x_2468.y, x_2468.z), vec3<f32>(x_2470.x, x_2470.y, x_2470.z));
    let x_2473 : f32 = u_xlat34;
    u_xlat34 = clamp(x_2473, 0.0f, 1.0f);
    let x_2475 : f32 = u_xlat47;
    let x_2476 : f32 = u_xlat47;
    u_xlat47 = (x_2475 * x_2476);
    let x_2478 : f32 = u_xlat47;
    let x_2480 : f32 = u_xlat0.x;
    u_xlat47 = ((x_2478 * x_2480) + 1.00001001358032226562f);
    let x_2483 : f32 = u_xlat34;
    let x_2484 : f32 = u_xlat34;
    u_xlat34 = (x_2483 * x_2484);
    let x_2486 : f32 = u_xlat47;
    let x_2487 : f32 = u_xlat47;
    u_xlat47 = (x_2486 * x_2487);
    let x_2489 : f32 = u_xlat34;
    u_xlat34 = max(x_2489, 0.10000000149011611938f);
    let x_2491 : f32 = u_xlat47;
    let x_2492 : f32 = u_xlat34;
    u_xlat47 = (x_2491 * x_2492);
    let x_2494 : f32 = u_xlat45;
    let x_2495 : f32 = u_xlat47;
    u_xlat47 = (x_2494 * x_2495);
    let x_2497 : f32 = u_xlat43;
    let x_2498 : f32 = u_xlat47;
    u_xlat47 = (x_2497 / x_2498);
    let x_2500 : vec4<f32> = u_xlat5;
    let x_2502 : f32 = u_xlat47;
    let x_2505 : vec4<f32> = u_xlat4;
    let x_2507 : vec3<f32> = ((vec3<f32>(x_2500.x, x_2500.y, x_2500.z) * vec3<f32>(x_2502, x_2502, x_2502)) + vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
    let x_2508 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
    let x_2510 : vec4<f32> = u_xlat9;
    let x_2512 : vec4<f32> = u_xlat11;
    let x_2515 : vec4<f32> = u_xlat8;
    let x_2517 : vec3<f32> = ((vec3<f32>(x_2510.x, x_2510.y, x_2510.z) * vec3<f32>(x_2512.x, x_2512.y, x_2512.z)) + vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
    let x_2518 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);

    continuing {
      let x_2520 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2520 + bitcast<u32>(1i));
    }
  }
  let x_2522 : vec4<f32> = u_xlat3;
  let x_2524 : f32 = u_xlat14;
  let x_2527 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_2522.x, x_2522.y, x_2522.z) * vec3<f32>(x_2524, x_2524, x_2524)) + vec3<f32>(x_2527.x, x_2527.z, x_2527.w));
  let x_2530 : vec4<f32> = u_xlat8;
  let x_2532 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2530.x, x_2530.y, x_2530.z) + x_2532);
  let x_2536 : f32 = u_xlat42;
  let x_2538 : vec3<f32> = u_xlat0;
  let x_2539 : vec3<f32> = (vec3<f32>(x_2536, x_2536, x_2536) * x_2538);
  let x_2540 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


