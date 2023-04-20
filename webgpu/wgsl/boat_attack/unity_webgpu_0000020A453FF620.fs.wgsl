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

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLightTypes : Arr_8,
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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(10) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_58 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_868 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat16 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1048 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb16 : bool;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_1279 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatu30 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati30 : i32;

@group(1) @binding(1) var<uniform> x_1789 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(12) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(14) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1229 : f32;
  var x_1362 : f32;
  var x_1373 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1919 : f32;
  var x_1929 : f32;
  var txVec1 : vec3<f32>;
  var x_2350 : f32;
  var x_2363 : f32;
  var x_2411 : f32;
  var x_2422 : vec3<f32>;
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
  u_xlat2.x = dot(x_972, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_978 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_978) + 4.0f);
  let x_985 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_985);
  let x_989 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_989) << bitcast<u32>(2i));
  let x_993 : vec3<f32> = vs_TEXCOORD7;
  let x_995 : i32 = u_xlati2;
  let x_998 : i32 = u_xlati2;
  let x_1002 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_995 + 1i) / 4i)][((x_998 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_993.y, x_993.y, x_993.y) * vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : i32 = u_xlati2;
  let x_1007 : i32 = u_xlati2;
  let x_1010 : vec4<f32> = x_868.x_MainLightWorldToShadow[(x_1005 / 4i)][(x_1007 % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.x, x_1012.x, x_1012.x)) + x_1015);
  let x_1017 : i32 = u_xlati2;
  let x_1020 : i32 = u_xlati2;
  let x_1024 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
  let x_1026 : vec3<f32> = vs_TEXCOORD7;
  let x_1029 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.z, x_1026.z, x_1026.z)) + x_1029);
  let x_1031 : vec3<f32> = u_xlat16;
  let x_1032 : i32 = u_xlati2;
  let x_1035 : i32 = u_xlati2;
  let x_1039 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1032 + 3i) / 4i)][((x_1035 + 3i) % 4i)];
  let x_1041 : vec3<f32> = (x_1031 + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  u_xlat1.w = 1.0f;
  let x_1050 : vec4<f32> = x_1048.unity_SHAr;
  let x_1051 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1050, x_1051);
  let x_1055 : vec4<f32> = x_1048.unity_SHAg;
  let x_1056 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1055, x_1056);
  let x_1060 : vec4<f32> = x_1048.unity_SHAb;
  let x_1061 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1060, x_1061);
  let x_1064 : vec4<f32> = u_xlat1;
  let x_1066 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1064.y, x_1064.z, x_1064.z, x_1064.x) * vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1066.z));
  let x_1070 : vec4<f32> = x_1048.unity_SHBr;
  let x_1071 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1070, x_1071);
  let x_1075 : vec4<f32> = x_1048.unity_SHBg;
  let x_1076 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1075, x_1076);
  let x_1080 : vec4<f32> = x_1048.unity_SHBb;
  let x_1081 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1080, x_1081);
  let x_1085 : f32 = u_xlat1.y;
  let x_1087 : f32 = u_xlat1.y;
  u_xlat43 = (x_1085 * x_1087);
  let x_1090 : f32 = u_xlat1.x;
  let x_1092 : f32 = u_xlat1.x;
  let x_1094 : f32 = u_xlat43;
  u_xlat43 = ((x_1090 * x_1092) + -(x_1094));
  let x_1099 : vec4<f32> = x_1048.unity_SHC;
  let x_1101 : f32 = u_xlat43;
  let x_1104 : vec4<f32> = u_xlat6;
  let x_1106 : vec3<f32> = ((vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(x_1101, x_1101, x_1101)) + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1109 : vec4<f32> = u_xlat3;
  let x_1111 : vec4<f32> = u_xlat4;
  let x_1113 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) + vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
  let x_1114 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1116 : vec4<f32> = u_xlat3;
  let x_1118 : vec3<f32> = max(vec3<f32>(x_1116.x, x_1116.y, x_1116.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1122 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1122) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1128 : f32 = u_xlat43;
  u_xlat44 = (-(x_1128) + 1.0f);
  let x_1131 : f32 = u_xlat43;
  let x_1133 : vec4<f32> = u_xlat5;
  let x_1135 : vec3<f32> = (vec3<f32>(x_1131, x_1131, x_1131) * vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat5;
  let x_1142 : vec3<f32> = (vec3<f32>(x_1138.x, x_1138.y, x_1138.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1143 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : vec3<f32> = u_xlat0;
  let x_1147 : vec4<f32> = u_xlat5;
  let x_1152 : vec3<f32> = ((vec3<f32>(x_1145.x, x_1145.x, x_1145.x) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1153 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1155) + 1.0f);
  let x_1160 : f32 = u_xlat0.x;
  let x_1162 : f32 = u_xlat0.x;
  u_xlat43 = (x_1160 * x_1162);
  let x_1164 : f32 = u_xlat43;
  u_xlat43 = max(x_1164, 0.0078125f);
  let x_1168 : f32 = u_xlat43;
  let x_1169 : f32 = u_xlat43;
  u_xlat45 = (x_1168 * x_1169);
  let x_1171 : f32 = u_xlat28;
  let x_1172 : f32 = u_xlat44;
  u_xlat28 = (x_1171 + x_1172);
  let x_1174 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1174, 0.0f, 1.0f);
  let x_1176 : f32 = u_xlat43;
  u_xlat44 = ((x_1176 * 4.0f) + 2.0f);
  let x_1179 : f32 = u_xlat14;
  u_xlat14 = min(x_1179, 1.0f);
  let x_1183 : vec4<f32> = u_xlat2;
  let x_1184 : vec2<f32> = vec2<f32>(x_1183.x, x_1183.y);
  let x_1186 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1184.x, x_1184.y, x_1186);
  let x_1198 : vec3<f32> = txVec0;
  let x_1200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1198.xy, x_1198.z);
  u_xlat2.x = x_1200;
  let x_1203 : f32 = x_868.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1203) + 1.0f);
  let x_1208 : f32 = u_xlat2.x;
  let x_1210 : f32 = x_868.x_MainLightShadowParams.x;
  let x_1213 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1208 * x_1210) + x_1213);
  let x_1218 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1218);
  let x_1222 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1222 >= 1.0f);
  let x_1224 : bool = u_xlatb30;
  let x_1225 : bool = u_xlatb16;
  u_xlatb16 = (x_1224 | x_1225);
  let x_1227 : bool = u_xlatb16;
  if (x_1227) {
    x_1229 = 1.0f;
  } else {
    let x_1234 : f32 = u_xlat2.x;
    x_1229 = x_1234;
  }
  let x_1235 : f32 = x_1229;
  u_xlat2.x = x_1235;
  let x_1237 : vec3<f32> = vs_TEXCOORD7;
  let x_1240 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1242 : vec3<f32> = (x_1237 + -(x_1240));
  let x_1243 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
  let x_1245 : vec4<f32> = u_xlat6;
  let x_1247 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_1245.x, x_1245.y, x_1245.z), vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1253 : f32 = u_xlat16.x;
  let x_1255 : f32 = x_868.x_MainLightShadowParams.z;
  let x_1258 : f32 = x_868.x_MainLightShadowParams.w;
  u_xlat30 = ((x_1253 * x_1255) + x_1258);
  let x_1260 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1260, 0.0f, 1.0f);
  let x_1264 : f32 = u_xlat2.x;
  u_xlat46 = (-(x_1264) + 1.0f);
  let x_1267 : f32 = u_xlat30;
  let x_1268 : f32 = u_xlat46;
  let x_1271 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1267 * x_1268) + x_1271);
  let x_1281 : f32 = x_1279.x_MainLightCookieTextureFormat;
  u_xlatb30 = !((x_1281 == -1.0f));
  let x_1283 : bool = u_xlatb30;
  if (x_1283) {
    let x_1286 : vec3<f32> = vs_TEXCOORD7;
    let x_1289 : vec4<f32> = x_1279.x_MainLightWorldToLight[1i];
    let x_1291 : vec2<f32> = (vec2<f32>(x_1286.y, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y));
    let x_1292 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1292.w);
    let x_1295 : vec4<f32> = x_1279.x_MainLightWorldToLight[0i];
    let x_1297 : vec3<f32> = vs_TEXCOORD7;
    let x_1300 : vec4<f32> = u_xlat6;
    let x_1302 : vec2<f32> = ((vec2<f32>(x_1295.x, x_1295.y) * vec2<f32>(x_1297.x, x_1297.x)) + vec2<f32>(x_1300.x, x_1300.y));
    let x_1303 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1303.w);
    let x_1306 : vec4<f32> = x_1279.x_MainLightWorldToLight[2i];
    let x_1308 : vec3<f32> = vs_TEXCOORD7;
    let x_1311 : vec4<f32> = u_xlat6;
    let x_1313 : vec2<f32> = ((vec2<f32>(x_1306.x, x_1306.y) * vec2<f32>(x_1308.z, x_1308.z)) + vec2<f32>(x_1311.x, x_1311.y));
    let x_1314 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
    let x_1316 : vec4<f32> = u_xlat6;
    let x_1319 : vec4<f32> = x_1279.x_MainLightWorldToLight[3i];
    let x_1321 : vec2<f32> = (vec2<f32>(x_1316.x, x_1316.y) + vec2<f32>(x_1319.x, x_1319.y));
    let x_1322 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1322.w);
    let x_1324 : vec4<f32> = u_xlat6;
    let x_1327 : vec2<f32> = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1328 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1327.x, x_1327.y, x_1328.z, x_1328.w);
    let x_1335 : vec4<f32> = u_xlat6;
    let x_1338 : f32 = x_28.x_GlobalMipBias.x;
    let x_1339 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1335.x, x_1335.y), x_1338);
    u_xlat6 = x_1339;
    let x_1344 : f32 = x_1279.x_MainLightCookieTextureFormat;
    let x_1346 : f32 = x_1279.x_MainLightCookieTextureFormat;
    let x_1348 : f32 = x_1279.x_MainLightCookieTextureFormat;
    let x_1350 : f32 = x_1279.x_MainLightCookieTextureFormat;
    let x_1351 : vec4<f32> = vec4<f32>(x_1344, x_1346, x_1348, x_1350);
    let x_1358 : vec4<bool> = (vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1351.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1358.x, x_1358.y);
    let x_1361 : bool = u_xlatb7.y;
    if (x_1361) {
      let x_1366 : f32 = u_xlat6.w;
      x_1362 = x_1366;
    } else {
      let x_1369 : f32 = u_xlat6.x;
      x_1362 = x_1369;
    }
    let x_1370 : f32 = x_1362;
    u_xlat30 = x_1370;
    let x_1372 : bool = u_xlatb7.x;
    if (x_1372) {
      let x_1376 : vec4<f32> = u_xlat6;
      x_1373 = vec3<f32>(x_1376.x, x_1376.y, x_1376.z);
    } else {
      let x_1379 : f32 = u_xlat30;
      x_1373 = vec3<f32>(x_1379, x_1379, x_1379);
    }
    let x_1381 : vec3<f32> = x_1373;
    let x_1382 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1388 : vec4<f32> = u_xlat6;
  let x_1391 : vec4<f32> = x_28.x_MainLightColor;
  let x_1393 : vec3<f32> = (vec3<f32>(x_1388.x, x_1388.y, x_1388.z) * vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
  let x_1394 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
  let x_1398 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1398;
  let x_1401 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1401;
  let x_1404 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1404;
  let x_1406 : vec4<f32> = u_xlat7;
  let x_1409 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(-(vec3<f32>(x_1406.x, x_1406.y, x_1406.z)), vec3<f32>(x_1409.x, x_1409.y, x_1409.z));
  let x_1412 : f32 = u_xlat30;
  let x_1413 : f32 = u_xlat30;
  u_xlat30 = (x_1412 + x_1413);
  let x_1415 : vec4<f32> = u_xlat1;
  let x_1417 : f32 = u_xlat30;
  let x_1421 : vec4<f32> = u_xlat7;
  let x_1424 : vec3<f32> = ((vec3<f32>(x_1415.x, x_1415.y, x_1415.z) * -(vec3<f32>(x_1417, x_1417, x_1417))) + -(vec3<f32>(x_1421.x, x_1421.y, x_1421.z)));
  let x_1425 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
  let x_1427 : vec4<f32> = u_xlat1;
  let x_1429 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_1427.x, x_1427.y, x_1427.z), vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
  let x_1432 : f32 = u_xlat30;
  u_xlat30 = clamp(x_1432, 0.0f, 1.0f);
  let x_1434 : f32 = u_xlat30;
  u_xlat30 = (-(x_1434) + 1.0f);
  let x_1437 : f32 = u_xlat30;
  let x_1438 : f32 = u_xlat30;
  u_xlat30 = (x_1437 * x_1438);
  let x_1440 : f32 = u_xlat30;
  let x_1441 : f32 = u_xlat30;
  u_xlat30 = (x_1440 * x_1441);
  let x_1444 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1444) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1451 : f32 = u_xlat0.x;
  let x_1452 : f32 = u_xlat46;
  u_xlat0.x = (x_1451 * x_1452);
  let x_1456 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1456 * 6.0f);
  let x_1468 : vec4<f32> = u_xlat8;
  let x_1471 : f32 = u_xlat0.x;
  let x_1472 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1468.x, x_1468.y, x_1468.z), x_1471);
  u_xlat8 = x_1472;
  let x_1474 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1474 + -1.0f);
  let x_1478 : f32 = x_1048.unity_SpecCube0_HDR.w;
  let x_1480 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1478 * x_1480) + 1.0f);
  let x_1485 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1485, 0.0f);
  let x_1489 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1489);
  let x_1493 : f32 = u_xlat0.x;
  let x_1495 : f32 = x_1048.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1493 * x_1495);
  let x_1499 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1499);
  let x_1503 : f32 = u_xlat0.x;
  let x_1505 : f32 = x_1048.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1503 * x_1505);
  let x_1508 : vec4<f32> = u_xlat8;
  let x_1510 : vec3<f32> = u_xlat0;
  let x_1512 : vec3<f32> = (vec3<f32>(x_1508.x, x_1508.y, x_1508.z) * vec3<f32>(x_1510.x, x_1510.x, x_1510.x));
  let x_1513 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
  let x_1515 : f32 = u_xlat43;
  let x_1517 : f32 = u_xlat43;
  let x_1521 : vec2<f32> = ((vec2<f32>(x_1515, x_1515) * vec2<f32>(x_1517, x_1517)) + vec2<f32>(-1.0f, 1.0f));
  let x_1522 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1521.x, x_1521.y, x_1522.z, x_1522.w);
  let x_1525 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_1525);
  let x_1529 : vec4<f32> = u_xlat5;
  let x_1532 : f32 = u_xlat28;
  u_xlat23 = (-(vec3<f32>(x_1529.x, x_1529.y, x_1529.z)) + vec3<f32>(x_1532, x_1532, x_1532));
  let x_1535 : f32 = u_xlat30;
  let x_1537 : vec3<f32> = u_xlat23;
  let x_1539 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_1535, x_1535, x_1535) * x_1537) + vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
  let x_1542 : vec3<f32> = u_xlat0;
  let x_1544 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1542.x, x_1542.x, x_1542.x) * x_1544);
  let x_1546 : vec4<f32> = u_xlat8;
  let x_1548 : vec3<f32> = u_xlat23;
  let x_1549 : vec3<f32> = (vec3<f32>(x_1546.x, x_1546.y, x_1546.z) * x_1548);
  let x_1550 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1549.x, x_1549.y, x_1549.z, x_1550.w);
  let x_1552 : vec4<f32> = u_xlat3;
  let x_1554 : vec4<f32> = u_xlat4;
  let x_1557 : vec4<f32> = u_xlat8;
  let x_1559 : vec3<f32> = ((vec3<f32>(x_1552.x, x_1552.y, x_1552.z) * vec3<f32>(x_1554.x, x_1554.y, x_1554.z)) + vec3<f32>(x_1557.x, x_1557.y, x_1557.z));
  let x_1560 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
  let x_1563 : f32 = u_xlat2.x;
  let x_1565 : f32 = x_1048.unity_LightData.z;
  u_xlat0.x = (x_1563 * x_1565);
  let x_1568 : vec4<f32> = u_xlat1;
  let x_1571 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1568.x, x_1568.y, x_1568.z), vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
  let x_1574 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1574, 0.0f, 1.0f);
  let x_1576 : f32 = u_xlat28;
  let x_1578 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1576 * x_1578);
  let x_1581 : vec3<f32> = u_xlat0;
  let x_1583 : vec4<f32> = u_xlat6;
  let x_1585 : vec3<f32> = (vec3<f32>(x_1581.x, x_1581.x, x_1581.x) * vec3<f32>(x_1583.x, x_1583.y, x_1583.z));
  let x_1586 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1585.x, x_1585.y, x_1585.z, x_1586.w);
  let x_1588 : vec4<f32> = u_xlat7;
  let x_1591 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1593 : vec3<f32> = (vec3<f32>(x_1588.x, x_1588.y, x_1588.z) + vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
  let x_1594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
  let x_1596 : vec4<f32> = u_xlat8;
  let x_1598 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1596.x, x_1596.y, x_1596.z), vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
  let x_1603 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1603, 1.17549435e-38f);
  let x_1608 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1608);
  let x_1611 : vec3<f32> = u_xlat0;
  let x_1613 : vec4<f32> = u_xlat8;
  let x_1615 : vec3<f32> = (vec3<f32>(x_1611.x, x_1611.x, x_1611.x) * vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
  let x_1616 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  let x_1618 : vec4<f32> = u_xlat1;
  let x_1620 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1618.x, x_1618.y, x_1618.z), vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
  let x_1625 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1625, 0.0f, 1.0f);
  let x_1629 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1631 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_1629.x, x_1629.y, x_1629.z), vec3<f32>(x_1631.x, x_1631.y, x_1631.z));
  let x_1636 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1636, 0.0f, 1.0f);
  let x_1639 : vec3<f32> = u_xlat0;
  let x_1641 : vec3<f32> = u_xlat0;
  let x_1643 : vec2<f32> = (vec2<f32>(x_1639.x, x_1639.z) * vec2<f32>(x_1641.x, x_1641.z));
  let x_1644 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1643.x, x_1644.y, x_1643.y);
  let x_1647 : f32 = u_xlat0.x;
  let x_1649 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1647 * x_1649) + 1.00001001358032226562f);
  let x_1655 : f32 = u_xlat0.x;
  let x_1657 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1655 * x_1657);
  let x_1661 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1661, 0.10000000149011611938f);
  let x_1664 : f32 = u_xlat28;
  let x_1666 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1664 * x_1666);
  let x_1669 : f32 = u_xlat44;
  let x_1671 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1669 * x_1671);
  let x_1674 : f32 = u_xlat45;
  let x_1676 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1674 / x_1676);
  let x_1679 : vec4<f32> = u_xlat5;
  let x_1681 : vec3<f32> = u_xlat0;
  let x_1684 : vec4<f32> = u_xlat4;
  let x_1686 : vec3<f32> = ((vec3<f32>(x_1679.x, x_1679.y, x_1679.z) * vec3<f32>(x_1681.x, x_1681.x, x_1681.x)) + vec3<f32>(x_1684.x, x_1684.y, x_1684.z));
  let x_1687 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1687.w);
  let x_1689 : vec4<f32> = u_xlat6;
  let x_1691 : vec4<f32> = u_xlat8;
  let x_1693 : vec3<f32> = (vec3<f32>(x_1689.x, x_1689.y, x_1689.z) * vec3<f32>(x_1691.x, x_1691.y, x_1691.z));
  let x_1694 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1694.w);
  let x_1697 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1699 : f32 = x_1048.unity_LightData.y;
  u_xlat0.x = min(x_1697, x_1699);
  let x_1704 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1704));
  let x_1708 : f32 = u_xlat16.x;
  let x_1710 : f32 = x_868.x_AdditionalShadowFadeParams.x;
  let x_1713 : f32 = x_868.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1708 * x_1710) + x_1713);
  let x_1715 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1715, 0.0f, 1.0f);
  let x_1718 : f32 = x_1279.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1720 : f32 = x_1279.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1722 : f32 = x_1279.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1724 : f32 = x_1279.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1725 : vec4<f32> = vec4<f32>(x_1718, x_1720, x_1722, x_1724);
  let x_1731 : vec4<bool> = (vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1725.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1732 : vec2<bool> = vec2<bool>(x_1731.x, x_1731.y);
  let x_1733 : vec4<bool> = u_xlatb2;
  u_xlatb2 = vec4<bool>(x_1732.x, x_1732.y, x_1733.z, x_1733.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1745 : u32 = u_xlatu_loop_1;
    let x_1746 : u32 = u_xlatu0;
    if ((x_1745 < x_1746)) {
    } else {
      break;
    }
    let x_1749 : u32 = u_xlatu_loop_1;
    u_xlatu30 = (x_1749 >> 2u);
    let x_1752 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1752 & 3u));
    let x_1755 : u32 = u_xlatu30;
    let x_1758 : vec4<f32> = x_1048.unity_LightIndices[bitcast<i32>(x_1755)];
    let x_1768 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1773 : vec4<u32> = indexable[x_1768];
    u_xlat30 = dot(x_1758, bitcast<vec4<f32>>(x_1773));
    let x_1777 : f32 = u_xlat30;
    u_xlati30 = i32(x_1777);
    let x_1779 : vec3<f32> = vs_TEXCOORD7;
    let x_1790 : i32 = u_xlati30;
    let x_1792 : vec4<f32> = x_1789.x_AdditionalLightsPosition[x_1790];
    let x_1795 : i32 = u_xlati30;
    let x_1797 : vec4<f32> = x_1789.x_AdditionalLightsPosition[x_1795];
    u_xlat23 = ((-(x_1779) * vec3<f32>(x_1792.w, x_1792.w, x_1792.w)) + vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
    let x_1800 : vec3<f32> = u_xlat23;
    let x_1801 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1800, x_1801);
    let x_1803 : f32 = u_xlat46;
    u_xlat46 = max(x_1803, 0.00006103515625f);
    let x_1806 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1806);
    let x_1808 : f32 = u_xlat47;
    let x_1810 : vec3<f32> = u_xlat23;
    let x_1811 : vec3<f32> = (vec3<f32>(x_1808, x_1808, x_1808) * x_1810);
    let x_1812 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
    let x_1815 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1815);
    let x_1817 : f32 = u_xlat46;
    let x_1818 : i32 = u_xlati30;
    let x_1820 : f32 = x_1789.x_AdditionalLightsAttenuation[x_1818].x;
    u_xlat46 = (x_1817 * x_1820);
    let x_1822 : f32 = u_xlat46;
    let x_1824 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1822) * x_1824) + 1.0f);
    let x_1827 : f32 = u_xlat46;
    u_xlat46 = max(x_1827, 0.0f);
    let x_1829 : f32 = u_xlat46;
    let x_1830 : f32 = u_xlat46;
    u_xlat46 = (x_1829 * x_1830);
    let x_1832 : f32 = u_xlat46;
    let x_1833 : f32 = u_xlat48;
    u_xlat46 = (x_1832 * x_1833);
    let x_1835 : i32 = u_xlati30;
    let x_1837 : vec4<f32> = x_1789.x_AdditionalLightsSpotDir[x_1835];
    let x_1839 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1837.x, x_1837.y, x_1837.z), vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
    let x_1842 : f32 = u_xlat48;
    let x_1843 : i32 = u_xlati30;
    let x_1845 : f32 = x_1789.x_AdditionalLightsAttenuation[x_1843].z;
    let x_1847 : i32 = u_xlati30;
    let x_1849 : f32 = x_1789.x_AdditionalLightsAttenuation[x_1847].w;
    u_xlat48 = ((x_1842 * x_1845) + x_1849);
    let x_1851 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1851, 0.0f, 1.0f);
    let x_1853 : f32 = u_xlat48;
    let x_1854 : f32 = u_xlat48;
    u_xlat48 = (x_1853 * x_1854);
    let x_1856 : f32 = u_xlat46;
    let x_1857 : f32 = u_xlat48;
    u_xlat46 = (x_1856 * x_1857);
    let x_1860 : i32 = u_xlati30;
    let x_1862 : f32 = x_868.x_AdditionalShadowParams[x_1860].w;
    u_xlati48 = i32(x_1862);
    let x_1865 : i32 = u_xlati48;
    u_xlatb49 = (x_1865 >= 0i);
    let x_1867 : bool = u_xlatb49;
    if (x_1867) {
      let x_1871 : i32 = u_xlati30;
      let x_1873 : f32 = x_868.x_AdditionalShadowParams[x_1871].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1873, x_1873, x_1873, x_1873))));
      let x_1877 : bool = u_xlatb49;
      if (x_1877) {
        let x_1881 : vec4<f32> = u_xlat10;
        let x_1884 : vec4<f32> = u_xlat10;
        let x_1887 : vec4<bool> = (abs(vec4<f32>(x_1881.z, x_1881.z, x_1881.y, x_1881.z)) >= abs(vec4<f32>(x_1884.x, x_1884.y, x_1884.x, x_1884.x)));
        let x_1889 : vec3<bool> = vec3<bool>(x_1887.x, x_1887.y, x_1887.z);
        let x_1890 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
        let x_1893 : bool = u_xlatb11.y;
        let x_1895 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1893 & x_1895);
        let x_1897 : vec4<f32> = u_xlat10;
        let x_1900 : vec4<bool> = (-(vec4<f32>(x_1897.z, x_1897.y, x_1897.z, x_1897.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1901 : vec3<bool> = vec3<bool>(x_1900.x, x_1900.y, x_1900.w);
        let x_1902 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1901.x, x_1901.y, x_1902.z, x_1901.z);
        let x_1905 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1905);
        let x_1910 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1910);
        let x_1915 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1915);
        let x_1918 : bool = u_xlatb11.z;
        if (x_1918) {
          let x_1923 : f32 = u_xlat11.y;
          x_1919 = x_1923;
        } else {
          let x_1925 : f32 = u_xlat50;
          x_1919 = x_1925;
        }
        let x_1926 : f32 = x_1919;
        u_xlat50 = x_1926;
        let x_1928 : bool = u_xlatb49;
        if (x_1928) {
          let x_1933 : f32 = u_xlat11.x;
          x_1929 = x_1933;
        } else {
          let x_1935 : f32 = u_xlat50;
          x_1929 = x_1935;
        }
        let x_1936 : f32 = x_1929;
        u_xlat49 = x_1936;
        let x_1937 : i32 = u_xlati30;
        let x_1939 : f32 = x_868.x_AdditionalShadowParams[x_1937].w;
        u_xlat50 = trunc(x_1939);
        let x_1941 : f32 = u_xlat49;
        let x_1942 : f32 = u_xlat50;
        u_xlat49 = (x_1941 + x_1942);
        let x_1944 : f32 = u_xlat49;
        u_xlati48 = i32(x_1944);
      }
      let x_1946 : i32 = u_xlati48;
      u_xlati48 = (x_1946 << bitcast<u32>(2i));
      let x_1948 : vec3<f32> = vs_TEXCOORD7;
      let x_1950 : i32 = u_xlati48;
      let x_1953 : i32 = u_xlati48;
      let x_1957 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1950 + 1i) / 4i)][((x_1953 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1948.y, x_1948.y, x_1948.y, x_1948.y) * x_1957);
      let x_1959 : i32 = u_xlati48;
      let x_1961 : i32 = u_xlati48;
      let x_1964 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[(x_1959 / 4i)][(x_1961 % 4i)];
      let x_1965 : vec3<f32> = vs_TEXCOORD7;
      let x_1968 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1964 * vec4<f32>(x_1965.x, x_1965.x, x_1965.x, x_1965.x)) + x_1968);
      let x_1970 : i32 = u_xlati48;
      let x_1973 : i32 = u_xlati48;
      let x_1977 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1970 + 2i) / 4i)][((x_1973 + 2i) % 4i)];
      let x_1978 : vec3<f32> = vs_TEXCOORD7;
      let x_1981 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1977 * vec4<f32>(x_1978.z, x_1978.z, x_1978.z, x_1978.z)) + x_1981);
      let x_1983 : vec4<f32> = u_xlat11;
      let x_1984 : i32 = u_xlati48;
      let x_1987 : i32 = u_xlati48;
      let x_1991 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_1984 + 3i) / 4i)][((x_1987 + 3i) % 4i)];
      u_xlat11 = (x_1983 + x_1991);
      let x_1993 : vec4<f32> = u_xlat11;
      let x_1995 : vec4<f32> = u_xlat11;
      let x_1997 : vec3<f32> = (vec3<f32>(x_1993.x, x_1993.y, x_1993.z) / vec3<f32>(x_1995.w, x_1995.w, x_1995.w));
      let x_1998 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1997.x, x_1997.y, x_1997.z, x_1998.w);
      let x_2001 : vec4<f32> = u_xlat11;
      let x_2002 : vec2<f32> = vec2<f32>(x_2001.x, x_2001.y);
      let x_2004 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_2002.x, x_2002.y, x_2004);
      let x_2012 : vec3<f32> = txVec1;
      let x_2014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2012.xy, x_2012.z);
      u_xlat48 = x_2014;
      let x_2015 : i32 = u_xlati30;
      let x_2017 : f32 = x_868.x_AdditionalShadowParams[x_2015].x;
      u_xlat49 = (1.0f + -(x_2017));
      let x_2020 : f32 = u_xlat48;
      let x_2021 : i32 = u_xlati30;
      let x_2023 : f32 = x_868.x_AdditionalShadowParams[x_2021].x;
      let x_2025 : f32 = u_xlat49;
      u_xlat48 = ((x_2020 * x_2023) + x_2025);
      let x_2028 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_2028);
      let x_2032 : f32 = u_xlat11.z;
      u_xlatb50 = (x_2032 >= 1.0f);
      let x_2034 : bool = u_xlatb49;
      let x_2035 : bool = u_xlatb50;
      u_xlatb49 = (x_2034 | x_2035);
      let x_2037 : bool = u_xlatb49;
      let x_2038 : f32 = u_xlat48;
      u_xlat48 = select(x_2038, 1.0f, x_2037);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_2041 : f32 = u_xlat48;
    u_xlat49 = (-(x_2041) + 1.0f);
    let x_2044 : f32 = u_xlat28;
    let x_2045 : f32 = u_xlat49;
    let x_2047 : f32 = u_xlat48;
    u_xlat48 = ((x_2044 * x_2045) + x_2047);
    let x_2050 : i32 = u_xlati30;
    u_xlati49 = (1i << bitcast<u32>((x_2050 & 31i)));
    let x_2053 : i32 = u_xlati49;
    let x_2056 : f32 = x_1279.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_2053) & bitcast<u32>(x_2056)));
    let x_2060 : i32 = u_xlati49;
    if ((x_2060 != 0i)) {
      let x_2064 : i32 = u_xlati30;
      let x_2066 : f32 = x_1279.x_AdditionalLightsLightTypes[x_2064].el;
      u_xlati49 = i32(x_2066);
      let x_2069 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_2069 != 0i));
      let x_2073 : i32 = u_xlati30;
      u_xlati52 = (x_2073 << bitcast<u32>(2i));
      let x_2075 : i32 = u_xlati50;
      if ((x_2075 != 0i)) {
        let x_2079 : vec3<f32> = vs_TEXCOORD7;
        let x_2081 : i32 = u_xlati52;
        let x_2084 : i32 = u_xlati52;
        let x_2088 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[((x_2081 + 1i) / 4i)][((x_2084 + 1i) % 4i)];
        let x_2090 : vec3<f32> = (vec3<f32>(x_2079.y, x_2079.y, x_2079.y) * vec3<f32>(x_2088.x, x_2088.y, x_2088.w));
        let x_2091 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
        let x_2093 : i32 = u_xlati52;
        let x_2095 : i32 = u_xlati52;
        let x_2098 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[(x_2093 / 4i)][(x_2095 % 4i)];
        let x_2100 : vec3<f32> = vs_TEXCOORD7;
        let x_2103 : vec4<f32> = u_xlat11;
        let x_2105 : vec3<f32> = ((vec3<f32>(x_2098.x, x_2098.y, x_2098.w) * vec3<f32>(x_2100.x, x_2100.x, x_2100.x)) + vec3<f32>(x_2103.x, x_2103.y, x_2103.z));
        let x_2106 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2105.x, x_2105.y, x_2105.z, x_2106.w);
        let x_2108 : i32 = u_xlati52;
        let x_2111 : i32 = u_xlati52;
        let x_2115 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[((x_2108 + 2i) / 4i)][((x_2111 + 2i) % 4i)];
        let x_2117 : vec3<f32> = vs_TEXCOORD7;
        let x_2120 : vec4<f32> = u_xlat11;
        let x_2122 : vec3<f32> = ((vec3<f32>(x_2115.x, x_2115.y, x_2115.w) * vec3<f32>(x_2117.z, x_2117.z, x_2117.z)) + vec3<f32>(x_2120.x, x_2120.y, x_2120.z));
        let x_2123 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2122.x, x_2122.y, x_2122.z, x_2123.w);
        let x_2125 : vec4<f32> = u_xlat11;
        let x_2127 : i32 = u_xlati52;
        let x_2130 : i32 = u_xlati52;
        let x_2134 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[((x_2127 + 3i) / 4i)][((x_2130 + 3i) % 4i)];
        let x_2136 : vec3<f32> = (vec3<f32>(x_2125.x, x_2125.y, x_2125.z) + vec3<f32>(x_2134.x, x_2134.y, x_2134.w));
        let x_2137 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
        let x_2139 : vec4<f32> = u_xlat11;
        let x_2141 : vec4<f32> = u_xlat11;
        let x_2143 : vec2<f32> = (vec2<f32>(x_2139.x, x_2139.y) / vec2<f32>(x_2141.z, x_2141.z));
        let x_2144 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2143.x, x_2143.y, x_2144.z, x_2144.w);
        let x_2146 : vec4<f32> = u_xlat11;
        let x_2149 : vec2<f32> = ((vec2<f32>(x_2146.x, x_2146.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2150 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2149.x, x_2149.y, x_2150.z, x_2150.w);
        let x_2152 : vec4<f32> = u_xlat11;
        let x_2156 : vec2<f32> = clamp(vec2<f32>(x_2152.x, x_2152.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2157 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2156.x, x_2156.y, x_2157.z, x_2157.w);
        let x_2159 : i32 = u_xlati30;
        let x_2161 : vec4<f32> = x_1279.x_AdditionalLightsCookieAtlasUVRects[x_2159];
        let x_2163 : vec4<f32> = u_xlat11;
        let x_2166 : i32 = u_xlati30;
        let x_2168 : vec4<f32> = x_1279.x_AdditionalLightsCookieAtlasUVRects[x_2166];
        let x_2170 : vec2<f32> = ((vec2<f32>(x_2161.x, x_2161.y) * vec2<f32>(x_2163.x, x_2163.y)) + vec2<f32>(x_2168.z, x_2168.w));
        let x_2171 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2170.x, x_2170.y, x_2171.z, x_2171.w);
      } else {
        let x_2174 : i32 = u_xlati49;
        u_xlatb49 = (x_2174 == 1i);
        let x_2176 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_2176);
        let x_2178 : i32 = u_xlati49;
        if ((x_2178 != 0i)) {
          let x_2184 : vec3<f32> = vs_TEXCOORD7;
          let x_2186 : i32 = u_xlati52;
          let x_2189 : i32 = u_xlati52;
          let x_2193 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[((x_2186 + 1i) / 4i)][((x_2189 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_2184.y, x_2184.y) * vec2<f32>(x_2193.x, x_2193.y));
          let x_2196 : i32 = u_xlati52;
          let x_2198 : i32 = u_xlati52;
          let x_2201 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[(x_2196 / 4i)][(x_2198 % 4i)];
          let x_2203 : vec3<f32> = vs_TEXCOORD7;
          let x_2206 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2201.x, x_2201.y) * vec2<f32>(x_2203.x, x_2203.x)) + x_2206);
          let x_2208 : i32 = u_xlati52;
          let x_2211 : i32 = u_xlati52;
          let x_2215 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[((x_2208 + 2i) / 4i)][((x_2211 + 2i) % 4i)];
          let x_2217 : vec3<f32> = vs_TEXCOORD7;
          let x_2220 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2215.x, x_2215.y) * vec2<f32>(x_2217.z, x_2217.z)) + x_2220);
          let x_2222 : vec2<f32> = u_xlat39;
          let x_2223 : i32 = u_xlati52;
          let x_2226 : i32 = u_xlati52;
          let x_2230 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[((x_2223 + 3i) / 4i)][((x_2226 + 3i) % 4i)];
          u_xlat39 = (x_2222 + vec2<f32>(x_2230.x, x_2230.y));
          let x_2233 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2233 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2236 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2236);
          let x_2238 : i32 = u_xlati30;
          let x_2240 : vec4<f32> = x_1279.x_AdditionalLightsCookieAtlasUVRects[x_2238];
          let x_2242 : vec2<f32> = u_xlat39;
          let x_2244 : i32 = u_xlati30;
          let x_2246 : vec4<f32> = x_1279.x_AdditionalLightsCookieAtlasUVRects[x_2244];
          let x_2248 : vec2<f32> = ((vec2<f32>(x_2240.x, x_2240.y) * x_2242) + vec2<f32>(x_2246.z, x_2246.w));
          let x_2249 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2248.x, x_2248.y, x_2249.z, x_2249.w);
        } else {
          let x_2252 : vec3<f32> = vs_TEXCOORD7;
          let x_2254 : i32 = u_xlati52;
          let x_2257 : i32 = u_xlati52;
          let x_2261 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[((x_2254 + 1i) / 4i)][((x_2257 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2252.y, x_2252.y, x_2252.y, x_2252.y) * x_2261);
          let x_2263 : i32 = u_xlati52;
          let x_2265 : i32 = u_xlati52;
          let x_2268 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[(x_2263 / 4i)][(x_2265 % 4i)];
          let x_2269 : vec3<f32> = vs_TEXCOORD7;
          let x_2272 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2268 * vec4<f32>(x_2269.x, x_2269.x, x_2269.x, x_2269.x)) + x_2272);
          let x_2274 : i32 = u_xlati52;
          let x_2277 : i32 = u_xlati52;
          let x_2281 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[((x_2274 + 2i) / 4i)][((x_2277 + 2i) % 4i)];
          let x_2282 : vec3<f32> = vs_TEXCOORD7;
          let x_2285 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2281 * vec4<f32>(x_2282.z, x_2282.z, x_2282.z, x_2282.z)) + x_2285);
          let x_2287 : vec4<f32> = u_xlat12;
          let x_2288 : i32 = u_xlati52;
          let x_2291 : i32 = u_xlati52;
          let x_2295 : vec4<f32> = x_1279.x_AdditionalLightsWorldToLights[((x_2288 + 3i) / 4i)][((x_2291 + 3i) % 4i)];
          u_xlat12 = (x_2287 + x_2295);
          let x_2297 : vec4<f32> = u_xlat12;
          let x_2299 : vec4<f32> = u_xlat12;
          let x_2301 : vec3<f32> = (vec3<f32>(x_2297.x, x_2297.y, x_2297.z) / vec3<f32>(x_2299.w, x_2299.w, x_2299.w));
          let x_2302 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
          let x_2304 : vec4<f32> = u_xlat12;
          let x_2306 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_2304.x, x_2304.y, x_2304.z), vec3<f32>(x_2306.x, x_2306.y, x_2306.z));
          let x_2309 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_2309);
          let x_2311 : f32 = u_xlat49;
          let x_2313 : vec4<f32> = u_xlat12;
          let x_2315 : vec3<f32> = (vec3<f32>(x_2311, x_2311, x_2311) * vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
          let x_2316 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
          let x_2318 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_2318.x, x_2318.y, x_2318.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2323 : f32 = u_xlat49;
          u_xlat49 = max(x_2323, 0.00000099999999747524f);
          let x_2326 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_2326);
          let x_2328 : f32 = u_xlat49;
          let x_2330 : vec4<f32> = u_xlat12;
          let x_2332 : vec3<f32> = (vec3<f32>(x_2328, x_2328, x_2328) * vec3<f32>(x_2330.z, x_2330.x, x_2330.y));
          let x_2333 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2332.x, x_2332.y, x_2332.z, x_2333.w);
          let x_2336 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2336);
          let x_2340 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2340, 0.0f, 1.0f);
          let x_2344 : vec4<f32> = u_xlat13;
          let x_2346 : vec4<bool> = (vec4<f32>(x_2344.y, x_2344.z, x_2344.y, x_2344.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2346.x, x_2346.y);
          let x_2349 : bool = u_xlatb39.x;
          if (x_2349) {
            let x_2354 : f32 = u_xlat13.x;
            x_2350 = x_2354;
          } else {
            let x_2357 : f32 = u_xlat13.x;
            x_2350 = -(x_2357);
          }
          let x_2359 : f32 = x_2350;
          u_xlat39.x = x_2359;
          let x_2362 : bool = u_xlatb39.y;
          if (x_2362) {
            let x_2367 : f32 = u_xlat13.x;
            x_2363 = x_2367;
          } else {
            let x_2370 : f32 = u_xlat13.x;
            x_2363 = -(x_2370);
          }
          let x_2372 : f32 = x_2363;
          u_xlat39.y = x_2372;
          let x_2374 : vec4<f32> = u_xlat12;
          let x_2376 : f32 = u_xlat49;
          let x_2379 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2374.x, x_2374.y) * vec2<f32>(x_2376, x_2376)) + x_2379);
          let x_2381 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2381 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2384 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2384, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2388 : i32 = u_xlati30;
          let x_2390 : vec4<f32> = x_1279.x_AdditionalLightsCookieAtlasUVRects[x_2388];
          let x_2392 : vec2<f32> = u_xlat39;
          let x_2394 : i32 = u_xlati30;
          let x_2396 : vec4<f32> = x_1279.x_AdditionalLightsCookieAtlasUVRects[x_2394];
          let x_2398 : vec2<f32> = ((vec2<f32>(x_2390.x, x_2390.y) * x_2392) + vec2<f32>(x_2396.z, x_2396.w));
          let x_2399 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2398.x, x_2398.y, x_2399.z, x_2399.w);
        }
      }
      let x_2406 : vec4<f32> = u_xlat11;
      let x_2408 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2406.x, x_2406.y), 0.0f);
      u_xlat11 = x_2408;
      let x_2410 : bool = u_xlatb2.y;
      if (x_2410) {
        let x_2415 : f32 = u_xlat11.w;
        x_2411 = x_2415;
      } else {
        let x_2418 : f32 = u_xlat11.x;
        x_2411 = x_2418;
      }
      let x_2419 : f32 = x_2411;
      u_xlat49 = x_2419;
      let x_2421 : bool = u_xlatb2.x;
      if (x_2421) {
        let x_2425 : vec4<f32> = u_xlat11;
        x_2422 = vec3<f32>(x_2425.x, x_2425.y, x_2425.z);
      } else {
        let x_2428 : f32 = u_xlat49;
        x_2422 = vec3<f32>(x_2428, x_2428, x_2428);
      }
      let x_2430 : vec3<f32> = x_2422;
      let x_2431 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2437 : vec4<f32> = u_xlat11;
    let x_2439 : i32 = u_xlati30;
    let x_2441 : vec4<f32> = x_1789.x_AdditionalLightsColor[x_2439];
    let x_2443 : vec3<f32> = (vec3<f32>(x_2437.x, x_2437.y, x_2437.z) * vec3<f32>(x_2441.x, x_2441.y, x_2441.z));
    let x_2444 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2443.x, x_2443.y, x_2443.z, x_2444.w);
    let x_2446 : f32 = u_xlat46;
    let x_2447 : f32 = u_xlat48;
    u_xlat30 = (x_2446 * x_2447);
    let x_2449 : vec4<f32> = u_xlat1;
    let x_2451 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2449.x, x_2449.y, x_2449.z), vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
    let x_2454 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2454, 0.0f, 1.0f);
    let x_2456 : f32 = u_xlat30;
    let x_2457 : f32 = u_xlat46;
    u_xlat30 = (x_2456 * x_2457);
    let x_2459 : f32 = u_xlat30;
    let x_2461 : vec4<f32> = u_xlat11;
    let x_2463 : vec3<f32> = (vec3<f32>(x_2459, x_2459, x_2459) * vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
    let x_2464 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
    let x_2466 : vec3<f32> = u_xlat23;
    let x_2467 : f32 = u_xlat47;
    let x_2470 : vec4<f32> = u_xlat7;
    u_xlat23 = ((x_2466 * vec3<f32>(x_2467, x_2467, x_2467)) + vec3<f32>(x_2470.x, x_2470.y, x_2470.z));
    let x_2473 : vec3<f32> = u_xlat23;
    let x_2474 : vec3<f32> = u_xlat23;
    u_xlat30 = dot(x_2473, x_2474);
    let x_2476 : f32 = u_xlat30;
    u_xlat30 = max(x_2476, 1.17549435e-38f);
    let x_2478 : f32 = u_xlat30;
    u_xlat30 = inverseSqrt(x_2478);
    let x_2480 : f32 = u_xlat30;
    let x_2482 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2480, x_2480, x_2480) * x_2482);
    let x_2484 : vec4<f32> = u_xlat1;
    let x_2486 : vec3<f32> = u_xlat23;
    u_xlat30 = dot(vec3<f32>(x_2484.x, x_2484.y, x_2484.z), x_2486);
    let x_2488 : f32 = u_xlat30;
    u_xlat30 = clamp(x_2488, 0.0f, 1.0f);
    let x_2490 : vec4<f32> = u_xlat10;
    let x_2492 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(vec3<f32>(x_2490.x, x_2490.y, x_2490.z), x_2492);
    let x_2494 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2494, 0.0f, 1.0f);
    let x_2496 : f32 = u_xlat30;
    let x_2497 : f32 = u_xlat30;
    u_xlat30 = (x_2496 * x_2497);
    let x_2499 : f32 = u_xlat30;
    let x_2501 : f32 = u_xlat9.x;
    u_xlat30 = ((x_2499 * x_2501) + 1.00001001358032226562f);
    let x_2504 : f32 = u_xlat46;
    let x_2505 : f32 = u_xlat46;
    u_xlat46 = (x_2504 * x_2505);
    let x_2507 : f32 = u_xlat30;
    let x_2508 : f32 = u_xlat30;
    u_xlat30 = (x_2507 * x_2508);
    let x_2510 : f32 = u_xlat46;
    u_xlat46 = max(x_2510, 0.10000000149011611938f);
    let x_2512 : f32 = u_xlat30;
    let x_2513 : f32 = u_xlat46;
    u_xlat30 = (x_2512 * x_2513);
    let x_2515 : f32 = u_xlat44;
    let x_2516 : f32 = u_xlat30;
    u_xlat30 = (x_2515 * x_2516);
    let x_2518 : f32 = u_xlat45;
    let x_2519 : f32 = u_xlat30;
    u_xlat30 = (x_2518 / x_2519);
    let x_2521 : vec4<f32> = u_xlat5;
    let x_2523 : f32 = u_xlat30;
    let x_2526 : vec4<f32> = u_xlat4;
    u_xlat23 = ((vec3<f32>(x_2521.x, x_2521.y, x_2521.z) * vec3<f32>(x_2523, x_2523, x_2523)) + vec3<f32>(x_2526.x, x_2526.y, x_2526.z));
    let x_2529 : vec3<f32> = u_xlat23;
    let x_2530 : vec4<f32> = u_xlat11;
    let x_2533 : vec4<f32> = u_xlat8;
    let x_2535 : vec3<f32> = ((x_2529 * vec3<f32>(x_2530.x, x_2530.y, x_2530.z)) + vec3<f32>(x_2533.x, x_2533.y, x_2533.z));
    let x_2536 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);

    continuing {
      let x_2538 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2538 + bitcast<u32>(1i));
    }
  }
  let x_2540 : vec4<f32> = u_xlat3;
  let x_2542 : f32 = u_xlat14;
  let x_2545 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2540.x, x_2540.y, x_2540.z) * vec3<f32>(x_2542, x_2542, x_2542)) + vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
  let x_2548 : vec4<f32> = u_xlat8;
  let x_2550 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2548.x, x_2548.y, x_2548.z) + x_2550);
  let x_2554 : f32 = u_xlat42;
  let x_2556 : vec3<f32> = u_xlat0;
  let x_2557 : vec3<f32> = (vec3<f32>(x_2554, x_2554, x_2554) * x_2556);
  let x_2558 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2558.w);
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


