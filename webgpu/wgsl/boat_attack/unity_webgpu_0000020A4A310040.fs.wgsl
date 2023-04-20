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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(18) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(24) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1002 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : vec2<bool>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

@group(1) @binding(5) var<uniform> x_1078 : LightCookies;

@group(0) @binding(15) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(25) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(17) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1275 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1562 : AdditionalLights;

var<private> u_xlat35 : f32;

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

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1161 : f32;
  var x_1172 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1698 : f32;
  var x_1708 : f32;
  var txVec1 : vec3<f32>;
  var x_2129 : f32;
  var x_2142 : f32;
  var x_2190 : f32;
  var x_2201 : vec3<f32>;
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
  let x_862 : vec4<f32> = vs_TEXCOORD0;
  let x_865 : f32 = x_28.x_GlobalMipBias.x;
  let x_866 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_862.z, x_862.w), x_865);
  u_xlat2 = x_866;
  let x_871 : vec4<f32> = vs_TEXCOORD0;
  let x_874 : f32 = x_28.x_GlobalMipBias.x;
  let x_875 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_871.z, x_871.w), x_874);
  let x_876 : vec3<f32> = vec3<f32>(x_875.x, x_875.y, x_875.z);
  let x_877 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat2;
  let x_883 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_884 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat1;
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : f32 = u_xlat43;
  u_xlat43 = (x_891 + 0.5f);
  let x_893 : f32 = u_xlat43;
  let x_895 : vec4<f32> = u_xlat3;
  let x_897 : vec3<f32> = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_901 : f32 = u_xlat2.w;
  u_xlat43 = max(x_901, 0.00009999999747378752f);
  let x_904 : vec4<f32> = u_xlat2;
  let x_906 : f32 = u_xlat43;
  let x_908 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) / vec3<f32>(x_906, x_906, x_906));
  let x_909 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_912 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_912) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_918 : f32 = u_xlat28;
  let x_919 : f32 = u_xlat43;
  u_xlat44 = (x_918 + -(x_919));
  let x_922 : f32 = u_xlat43;
  let x_924 : vec4<f32> = u_xlat5;
  let x_926 : vec3<f32> = (vec3<f32>(x_922, x_922, x_922) * vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat5;
  let x_933 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_934 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec3<f32> = u_xlat0;
  let x_938 : vec4<f32> = u_xlat4;
  let x_943 : vec3<f32> = ((vec3<f32>(x_936.x, x_936.x, x_936.x) * vec3<f32>(x_938.x, x_938.y, x_938.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_944 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : f32 = u_xlat28;
  u_xlat0.x = (-(x_946) + 1.0f);
  let x_951 : f32 = u_xlat0.x;
  let x_953 : f32 = u_xlat0.x;
  u_xlat28 = (x_951 * x_953);
  let x_955 : f32 = u_xlat28;
  u_xlat28 = max(x_955, 0.0078125f);
  let x_958 : f32 = u_xlat28;
  let x_959 : f32 = u_xlat28;
  u_xlat43 = (x_958 * x_959);
  let x_961 : f32 = u_xlat44;
  u_xlat44 = (x_961 + 1.0f);
  let x_963 : f32 = u_xlat44;
  u_xlat44 = clamp(x_963, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat28;
  u_xlat45 = ((x_966 * 4.0f) + 2.0f);
  let x_969 : f32 = u_xlat14;
  u_xlat14 = min(x_969, 1.0f);
  let x_974 : vec4<f32> = vs_TEXCOORD8;
  let x_975 : vec2<f32> = vec2<f32>(x_974.x, x_974.y);
  let x_978 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_975.x, x_975.y, x_978);
  let x_991 : vec3<f32> = txVec0;
  let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
  u_xlat46 = x_993;
  let x_1004 : f32 = x_1002.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1004) + 1.0f);
  let x_1008 : f32 = u_xlat46;
  let x_1010 : f32 = x_1002.x_MainLightShadowParams.x;
  let x_1013 : f32 = u_xlat5.x;
  u_xlat46 = ((x_1008 * x_1010) + x_1013);
  let x_1017 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_1017);
  let x_1023 : f32 = vs_TEXCOORD8.z;
  u_xlatb19.x = (x_1023 >= 1.0f);
  let x_1027 : bool = u_xlatb19.x;
  let x_1028 : bool = u_xlatb5;
  u_xlatb5 = (x_1027 | x_1028);
  let x_1030 : bool = u_xlatb5;
  let x_1031 : f32 = u_xlat46;
  u_xlat46 = select(x_1031, 1.0f, x_1030);
  let x_1035 : vec3<f32> = vs_TEXCOORD7;
  let x_1038 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1040 : vec3<f32> = (x_1035 + -(x_1038));
  let x_1041 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1043 : vec4<f32> = u_xlat5;
  let x_1045 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1043.x, x_1043.y, x_1043.z), vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1051 : f32 = u_xlat5.x;
  let x_1053 : f32 = x_1002.x_MainLightShadowParams.z;
  let x_1056 : f32 = x_1002.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1051 * x_1053) + x_1056);
  let x_1060 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1060, 0.0f, 1.0f);
  let x_1064 : f32 = u_xlat46;
  u_xlat33 = (-(x_1064) + 1.0f);
  let x_1068 : f32 = u_xlat19.x;
  let x_1069 : f32 = u_xlat33;
  let x_1071 : f32 = u_xlat46;
  u_xlat46 = ((x_1068 * x_1069) + x_1071);
  let x_1080 : f32 = x_1078.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_1080 == -1.0f));
  let x_1084 : bool = u_xlatb19.x;
  if (x_1084) {
    let x_1087 : vec3<f32> = vs_TEXCOORD7;
    let x_1090 : vec4<f32> = x_1078.x_MainLightWorldToLight[1i];
    let x_1092 : vec2<f32> = (vec2<f32>(x_1087.y, x_1087.y) * vec2<f32>(x_1090.x, x_1090.y));
    let x_1093 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1092.x, x_1092.y, x_1093.z);
    let x_1096 : vec4<f32> = x_1078.x_MainLightWorldToLight[0i];
    let x_1098 : vec3<f32> = vs_TEXCOORD7;
    let x_1101 : vec3<f32> = u_xlat19;
    let x_1103 : vec2<f32> = ((vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(x_1098.x, x_1098.x)) + vec2<f32>(x_1101.x, x_1101.y));
    let x_1104 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1103.x, x_1103.y, x_1104.z);
    let x_1107 : vec4<f32> = x_1078.x_MainLightWorldToLight[2i];
    let x_1109 : vec3<f32> = vs_TEXCOORD7;
    let x_1112 : vec3<f32> = u_xlat19;
    let x_1114 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(x_1109.z, x_1109.z)) + vec2<f32>(x_1112.x, x_1112.y));
    let x_1115 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1114.x, x_1114.y, x_1115.z);
    let x_1117 : vec3<f32> = u_xlat19;
    let x_1120 : vec4<f32> = x_1078.x_MainLightWorldToLight[3i];
    let x_1122 : vec2<f32> = (vec2<f32>(x_1117.x, x_1117.y) + vec2<f32>(x_1120.x, x_1120.y));
    let x_1123 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1122.x, x_1122.y, x_1123.z);
    let x_1125 : vec3<f32> = u_xlat19;
    let x_1128 : vec2<f32> = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1129 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1128.x, x_1128.y, x_1129.z);
    let x_1136 : vec3<f32> = u_xlat19;
    let x_1139 : f32 = x_28.x_GlobalMipBias.x;
    let x_1140 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1136.x, x_1136.y), x_1139);
    u_xlat6 = x_1140;
    let x_1142 : f32 = x_1078.x_MainLightCookieTextureFormat;
    let x_1144 : f32 = x_1078.x_MainLightCookieTextureFormat;
    let x_1146 : f32 = x_1078.x_MainLightCookieTextureFormat;
    let x_1148 : f32 = x_1078.x_MainLightCookieTextureFormat;
    let x_1149 : vec4<f32> = vec4<f32>(x_1142, x_1144, x_1146, x_1148);
    let x_1156 : vec4<bool> = (vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1149.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_1156.x, x_1156.y);
    let x_1159 : bool = u_xlatb19.y;
    if (x_1159) {
      let x_1165 : f32 = u_xlat6.w;
      x_1161 = x_1165;
    } else {
      let x_1168 : f32 = u_xlat6.x;
      x_1161 = x_1168;
    }
    let x_1169 : f32 = x_1161;
    u_xlat33 = x_1169;
    let x_1171 : bool = u_xlatb19.x;
    if (x_1171) {
      let x_1175 : vec4<f32> = u_xlat6;
      x_1172 = vec3<f32>(x_1175.x, x_1175.y, x_1175.z);
    } else {
      let x_1178 : f32 = u_xlat33;
      x_1172 = vec3<f32>(x_1178, x_1178, x_1178);
    }
    let x_1180 : vec3<f32> = x_1172;
    u_xlat19 = x_1180;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_1185 : vec3<f32> = u_xlat19;
  let x_1187 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat19 = (x_1185 * vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1191 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1191;
  let x_1194 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1194;
  let x_1197 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1197;
  let x_1200 : vec4<f32> = u_xlat6;
  let x_1203 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(vec3<f32>(x_1200.x, x_1200.y, x_1200.z)), vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : f32 = u_xlat48;
  let x_1207 : f32 = u_xlat48;
  u_xlat48 = (x_1206 + x_1207);
  let x_1209 : vec4<f32> = u_xlat1;
  let x_1211 : f32 = u_xlat48;
  let x_1215 : vec4<f32> = u_xlat6;
  let x_1218 : vec3<f32> = ((vec3<f32>(x_1209.x, x_1209.y, x_1209.z) * -(vec3<f32>(x_1211, x_1211, x_1211))) + -(vec3<f32>(x_1215.x, x_1215.y, x_1215.z)));
  let x_1219 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
  let x_1221 : vec4<f32> = u_xlat1;
  let x_1223 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1221.x, x_1221.y, x_1221.z), vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
  let x_1226 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1226, 0.0f, 1.0f);
  let x_1228 : f32 = u_xlat48;
  u_xlat48 = (-(x_1228) + 1.0f);
  let x_1231 : f32 = u_xlat48;
  let x_1232 : f32 = u_xlat48;
  u_xlat48 = (x_1231 * x_1232);
  let x_1234 : f32 = u_xlat48;
  let x_1235 : f32 = u_xlat48;
  u_xlat48 = (x_1234 * x_1235);
  let x_1239 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_1239) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1246 : f32 = u_xlat0.x;
  let x_1247 : f32 = u_xlat49;
  u_xlat0.x = (x_1246 * x_1247);
  let x_1251 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1251 * 6.0f);
  let x_1263 : vec4<f32> = u_xlat7;
  let x_1266 : f32 = u_xlat0.x;
  let x_1267 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1263.x, x_1263.y, x_1263.z), x_1266);
  u_xlat7 = x_1267;
  let x_1269 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1269 + -1.0f);
  let x_1277 : f32 = x_1275.unity_SpecCube0_HDR.w;
  let x_1279 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1277 * x_1279) + 1.0f);
  let x_1284 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1284, 0.0f);
  let x_1288 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1288);
  let x_1292 : f32 = u_xlat0.x;
  let x_1294 : f32 = x_1275.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1292 * x_1294);
  let x_1298 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1298);
  let x_1302 : f32 = u_xlat0.x;
  let x_1304 : f32 = x_1275.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1302 * x_1304);
  let x_1307 : vec4<f32> = u_xlat7;
  let x_1309 : vec3<f32> = u_xlat0;
  let x_1311 : vec3<f32> = (vec3<f32>(x_1307.x, x_1307.y, x_1307.z) * vec3<f32>(x_1309.x, x_1309.x, x_1309.x));
  let x_1312 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
  let x_1314 : f32 = u_xlat28;
  let x_1316 : f32 = u_xlat28;
  let x_1320 : vec2<f32> = ((vec2<f32>(x_1314, x_1314) * vec2<f32>(x_1316, x_1316)) + vec2<f32>(-1.0f, 1.0f));
  let x_1321 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1320.x, x_1321.y, x_1320.y);
  let x_1324 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1324);
  let x_1326 : vec4<f32> = u_xlat4;
  let x_1329 : f32 = u_xlat44;
  let x_1331 : vec3<f32> = (-(vec3<f32>(x_1326.x, x_1326.y, x_1326.z)) + vec3<f32>(x_1329, x_1329, x_1329));
  let x_1332 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
  let x_1334 : f32 = u_xlat48;
  let x_1336 : vec4<f32> = u_xlat8;
  let x_1339 : vec4<f32> = u_xlat4;
  let x_1341 : vec3<f32> = ((vec3<f32>(x_1334, x_1334, x_1334) * vec3<f32>(x_1336.x, x_1336.y, x_1336.z)) + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
  let x_1344 : f32 = u_xlat28;
  let x_1346 : vec4<f32> = u_xlat8;
  let x_1348 : vec3<f32> = (vec3<f32>(x_1344, x_1344, x_1344) * vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
  let x_1349 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
  let x_1351 : vec4<f32> = u_xlat7;
  let x_1353 : vec4<f32> = u_xlat8;
  let x_1355 : vec3<f32> = (vec3<f32>(x_1351.x, x_1351.y, x_1351.z) * vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
  let x_1356 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1358 : vec4<f32> = u_xlat2;
  let x_1360 : vec4<f32> = u_xlat3;
  let x_1363 : vec4<f32> = u_xlat7;
  let x_1365 : vec3<f32> = ((vec3<f32>(x_1358.x, x_1358.y, x_1358.z) * vec3<f32>(x_1360.x, x_1360.y, x_1360.z)) + vec3<f32>(x_1363.x, x_1363.y, x_1363.z));
  let x_1366 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  let x_1368 : f32 = u_xlat46;
  let x_1370 : f32 = x_1275.unity_LightData.z;
  u_xlat28 = (x_1368 * x_1370);
  let x_1372 : vec4<f32> = u_xlat1;
  let x_1375 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1372.x, x_1372.y, x_1372.z), vec3<f32>(x_1375.x, x_1375.y, x_1375.z));
  let x_1378 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1378, 0.0f, 1.0f);
  let x_1380 : f32 = u_xlat28;
  let x_1381 : f32 = u_xlat44;
  u_xlat28 = (x_1380 * x_1381);
  let x_1383 : f32 = u_xlat28;
  let x_1385 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1383, x_1383, x_1383) * x_1385);
  let x_1387 : vec4<f32> = u_xlat6;
  let x_1390 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1392 : vec3<f32> = (vec3<f32>(x_1387.x, x_1387.y, x_1387.z) + vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
  let x_1395 : vec4<f32> = u_xlat7;
  let x_1397 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1395.x, x_1395.y, x_1395.z), vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : f32 = u_xlat28;
  u_xlat28 = max(x_1400, 1.17549435e-38f);
  let x_1403 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1403);
  let x_1405 : f32 = u_xlat28;
  let x_1407 : vec4<f32> = u_xlat7;
  let x_1409 : vec3<f32> = (vec3<f32>(x_1405, x_1405, x_1405) * vec3<f32>(x_1407.x, x_1407.y, x_1407.z));
  let x_1410 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
  let x_1412 : vec4<f32> = u_xlat1;
  let x_1414 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1412.x, x_1412.y, x_1412.z), vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
  let x_1417 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1417, 0.0f, 1.0f);
  let x_1420 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1422 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1420.x, x_1420.y, x_1420.z), vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
  let x_1425 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1425, 0.0f, 1.0f);
  let x_1427 : f32 = u_xlat28;
  let x_1428 : f32 = u_xlat28;
  u_xlat28 = (x_1427 * x_1428);
  let x_1430 : f32 = u_xlat28;
  let x_1432 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1430 * x_1432) + 1.00001001358032226562f);
  let x_1436 : f32 = u_xlat44;
  let x_1437 : f32 = u_xlat44;
  u_xlat44 = (x_1436 * x_1437);
  let x_1439 : f32 = u_xlat28;
  let x_1440 : f32 = u_xlat28;
  u_xlat28 = (x_1439 * x_1440);
  let x_1442 : f32 = u_xlat44;
  u_xlat44 = max(x_1442, 0.10000000149011611938f);
  let x_1445 : f32 = u_xlat28;
  let x_1446 : f32 = u_xlat44;
  u_xlat28 = (x_1445 * x_1446);
  let x_1448 : f32 = u_xlat45;
  let x_1449 : f32 = u_xlat28;
  u_xlat28 = (x_1448 * x_1449);
  let x_1451 : f32 = u_xlat43;
  let x_1452 : f32 = u_xlat28;
  u_xlat28 = (x_1451 / x_1452);
  let x_1454 : vec4<f32> = u_xlat4;
  let x_1456 : f32 = u_xlat28;
  let x_1459 : vec4<f32> = u_xlat3;
  let x_1461 : vec3<f32> = ((vec3<f32>(x_1454.x, x_1454.y, x_1454.z) * vec3<f32>(x_1456, x_1456, x_1456)) + vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
  let x_1462 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
  let x_1464 : vec3<f32> = u_xlat19;
  let x_1465 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1464 * vec3<f32>(x_1465.x, x_1465.y, x_1465.z));
  let x_1469 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1471 : f32 = x_1275.unity_LightData.y;
  u_xlat28 = min(x_1469, x_1471);
  let x_1475 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1475));
  let x_1479 : f32 = u_xlat5.x;
  let x_1481 : f32 = x_1002.x_AdditionalShadowFadeParams.x;
  let x_1484 : f32 = x_1002.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1479 * x_1481) + x_1484);
  let x_1486 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1486, 0.0f, 1.0f);
  let x_1490 : f32 = x_1078.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1492 : f32 = x_1078.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1494 : f32 = x_1078.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1496 : f32 = x_1078.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1497 : vec4<f32> = vec4<f32>(x_1490, x_1492, x_1494, x_1496);
  let x_1503 : vec4<bool> = (vec4<f32>(x_1497.x, x_1497.y, x_1497.z, x_1497.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1503.x, x_1503.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1515 : u32 = u_xlatu_loop_1;
    let x_1516 : u32 = u_xlatu28;
    if ((x_1515 < x_1516)) {
    } else {
      break;
    }
    let x_1519 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1519 >> 2u);
    let x_1523 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1523 & 3u));
    let x_1526 : u32 = u_xlatu5;
    let x_1529 : vec4<f32> = x_1275.unity_LightIndices[bitcast<i32>(x_1526)];
    let x_1539 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1544 : vec4<u32> = indexable[x_1539];
    u_xlat5.x = dot(x_1529, bitcast<vec4<f32>>(x_1544));
    let x_1550 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1550);
    let x_1552 : vec3<f32> = vs_TEXCOORD7;
    let x_1563 : i32 = u_xlati5;
    let x_1565 : vec4<f32> = x_1562.x_AdditionalLightsPosition[x_1563];
    let x_1568 : i32 = u_xlati5;
    let x_1570 : vec4<f32> = x_1562.x_AdditionalLightsPosition[x_1568];
    let x_1572 : vec3<f32> = ((-(x_1552) * vec3<f32>(x_1565.w, x_1565.w, x_1565.w)) + vec3<f32>(x_1570.x, x_1570.y, x_1570.z));
    let x_1573 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1572.x, x_1572.y, x_1572.z, x_1573.w);
    let x_1575 : vec4<f32> = u_xlat9;
    let x_1577 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1575.x, x_1575.y, x_1575.z), vec3<f32>(x_1577.x, x_1577.y, x_1577.z));
    let x_1580 : f32 = u_xlat48;
    u_xlat48 = max(x_1580, 0.00006103515625f);
    let x_1583 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1583);
    let x_1585 : f32 = u_xlat35;
    let x_1587 : vec4<f32> = u_xlat9;
    let x_1589 : vec3<f32> = (vec3<f32>(x_1585, x_1585, x_1585) * vec3<f32>(x_1587.x, x_1587.y, x_1587.z));
    let x_1590 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
    let x_1592 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1592);
    let x_1594 : f32 = u_xlat48;
    let x_1595 : i32 = u_xlati5;
    let x_1597 : f32 = x_1562.x_AdditionalLightsAttenuation[x_1595].x;
    u_xlat48 = (x_1594 * x_1597);
    let x_1599 : f32 = u_xlat48;
    let x_1601 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1599) * x_1601) + 1.0f);
    let x_1604 : f32 = u_xlat48;
    u_xlat48 = max(x_1604, 0.0f);
    let x_1606 : f32 = u_xlat48;
    let x_1607 : f32 = u_xlat48;
    u_xlat48 = (x_1606 * x_1607);
    let x_1609 : f32 = u_xlat48;
    let x_1610 : f32 = u_xlat49;
    u_xlat48 = (x_1609 * x_1610);
    let x_1612 : i32 = u_xlati5;
    let x_1614 : vec4<f32> = x_1562.x_AdditionalLightsSpotDir[x_1612];
    let x_1616 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1614.x, x_1614.y, x_1614.z), vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
    let x_1619 : f32 = u_xlat49;
    let x_1620 : i32 = u_xlati5;
    let x_1622 : f32 = x_1562.x_AdditionalLightsAttenuation[x_1620].z;
    let x_1624 : i32 = u_xlati5;
    let x_1626 : f32 = x_1562.x_AdditionalLightsAttenuation[x_1624].w;
    u_xlat49 = ((x_1619 * x_1622) + x_1626);
    let x_1628 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1628, 0.0f, 1.0f);
    let x_1630 : f32 = u_xlat49;
    let x_1631 : f32 = u_xlat49;
    u_xlat49 = (x_1630 * x_1631);
    let x_1633 : f32 = u_xlat48;
    let x_1634 : f32 = u_xlat49;
    u_xlat48 = (x_1633 * x_1634);
    let x_1637 : i32 = u_xlati5;
    let x_1639 : f32 = x_1002.x_AdditionalShadowParams[x_1637].w;
    u_xlati49 = i32(x_1639);
    let x_1642 : i32 = u_xlati49;
    u_xlatb50 = (x_1642 >= 0i);
    let x_1644 : bool = u_xlatb50;
    if (x_1644) {
      let x_1648 : i32 = u_xlati5;
      let x_1650 : f32 = x_1002.x_AdditionalShadowParams[x_1648].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1650, x_1650, x_1650, x_1650))));
      let x_1654 : bool = u_xlatb50;
      if (x_1654) {
        let x_1659 : vec4<f32> = u_xlat10;
        let x_1662 : vec4<f32> = u_xlat10;
        let x_1665 : vec4<bool> = (abs(vec4<f32>(x_1659.z, x_1659.z, x_1659.y, x_1659.z)) >= abs(vec4<f32>(x_1662.x, x_1662.y, x_1662.x, x_1662.x)));
        let x_1667 : vec3<bool> = vec3<bool>(x_1665.x, x_1665.y, x_1665.z);
        let x_1668 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
        let x_1671 : bool = u_xlatb11.y;
        let x_1673 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1671 & x_1673);
        let x_1675 : vec4<f32> = u_xlat10;
        let x_1678 : vec4<bool> = (-(vec4<f32>(x_1675.z, x_1675.y, x_1675.z, x_1675.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1679 : vec3<bool> = vec3<bool>(x_1678.x, x_1678.y, x_1678.w);
        let x_1680 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1679.x, x_1679.y, x_1680.z, x_1679.z);
        let x_1683 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1683);
        let x_1688 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1688);
        let x_1694 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1694);
        let x_1697 : bool = u_xlatb11.z;
        if (x_1697) {
          let x_1702 : f32 = u_xlat11.y;
          x_1698 = x_1702;
        } else {
          let x_1704 : f32 = u_xlat51;
          x_1698 = x_1704;
        }
        let x_1705 : f32 = x_1698;
        u_xlat51 = x_1705;
        let x_1707 : bool = u_xlatb50;
        if (x_1707) {
          let x_1712 : f32 = u_xlat11.x;
          x_1708 = x_1712;
        } else {
          let x_1714 : f32 = u_xlat51;
          x_1708 = x_1714;
        }
        let x_1715 : f32 = x_1708;
        u_xlat50 = x_1715;
        let x_1716 : i32 = u_xlati5;
        let x_1718 : f32 = x_1002.x_AdditionalShadowParams[x_1716].w;
        u_xlat51 = trunc(x_1718);
        let x_1720 : f32 = u_xlat50;
        let x_1721 : f32 = u_xlat51;
        u_xlat50 = (x_1720 + x_1721);
        let x_1723 : f32 = u_xlat50;
        u_xlati49 = i32(x_1723);
      }
      let x_1725 : i32 = u_xlati49;
      u_xlati49 = (x_1725 << bitcast<u32>(2i));
      let x_1727 : vec3<f32> = vs_TEXCOORD7;
      let x_1729 : i32 = u_xlati49;
      let x_1732 : i32 = u_xlati49;
      let x_1736 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_1729 + 1i) / 4i)][((x_1732 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1727.y, x_1727.y, x_1727.y, x_1727.y) * x_1736);
      let x_1738 : i32 = u_xlati49;
      let x_1740 : i32 = u_xlati49;
      let x_1743 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[(x_1738 / 4i)][(x_1740 % 4i)];
      let x_1744 : vec3<f32> = vs_TEXCOORD7;
      let x_1747 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1743 * vec4<f32>(x_1744.x, x_1744.x, x_1744.x, x_1744.x)) + x_1747);
      let x_1749 : i32 = u_xlati49;
      let x_1752 : i32 = u_xlati49;
      let x_1756 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_1749 + 2i) / 4i)][((x_1752 + 2i) % 4i)];
      let x_1757 : vec3<f32> = vs_TEXCOORD7;
      let x_1760 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1756 * vec4<f32>(x_1757.z, x_1757.z, x_1757.z, x_1757.z)) + x_1760);
      let x_1762 : vec4<f32> = u_xlat11;
      let x_1763 : i32 = u_xlati49;
      let x_1766 : i32 = u_xlati49;
      let x_1770 : vec4<f32> = x_1002.x_AdditionalLightsWorldToShadow[((x_1763 + 3i) / 4i)][((x_1766 + 3i) % 4i)];
      u_xlat11 = (x_1762 + x_1770);
      let x_1772 : vec4<f32> = u_xlat11;
      let x_1774 : vec4<f32> = u_xlat11;
      let x_1776 : vec3<f32> = (vec3<f32>(x_1772.x, x_1772.y, x_1772.z) / vec3<f32>(x_1774.w, x_1774.w, x_1774.w));
      let x_1777 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);
      let x_1780 : vec4<f32> = u_xlat11;
      let x_1781 : vec2<f32> = vec2<f32>(x_1780.x, x_1780.y);
      let x_1783 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1781.x, x_1781.y, x_1783);
      let x_1791 : vec3<f32> = txVec1;
      let x_1793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1791.xy, x_1791.z);
      u_xlat49 = x_1793;
      let x_1794 : i32 = u_xlati5;
      let x_1796 : f32 = x_1002.x_AdditionalShadowParams[x_1794].x;
      u_xlat50 = (1.0f + -(x_1796));
      let x_1799 : f32 = u_xlat49;
      let x_1800 : i32 = u_xlati5;
      let x_1802 : f32 = x_1002.x_AdditionalShadowParams[x_1800].x;
      let x_1804 : f32 = u_xlat50;
      u_xlat49 = ((x_1799 * x_1802) + x_1804);
      let x_1807 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1807);
      let x_1811 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1811 >= 1.0f);
      let x_1813 : bool = u_xlatb50;
      let x_1814 : bool = u_xlatb51;
      u_xlatb50 = (x_1813 | x_1814);
      let x_1816 : bool = u_xlatb50;
      let x_1817 : f32 = u_xlat49;
      u_xlat49 = select(x_1817, 1.0f, x_1816);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1820 : f32 = u_xlat49;
    u_xlat50 = (-(x_1820) + 1.0f);
    let x_1823 : f32 = u_xlat44;
    let x_1824 : f32 = u_xlat50;
    let x_1826 : f32 = u_xlat49;
    u_xlat49 = ((x_1823 * x_1824) + x_1826);
    let x_1829 : i32 = u_xlati5;
    u_xlati50 = (1i << bitcast<u32>((x_1829 & 31i)));
    let x_1832 : i32 = u_xlati50;
    let x_1835 : f32 = x_1078.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1832) & bitcast<u32>(x_1835)));
    let x_1839 : i32 = u_xlati50;
    if ((x_1839 != 0i)) {
      let x_1843 : i32 = u_xlati5;
      let x_1845 : f32 = x_1078.x_AdditionalLightsLightTypes[x_1843].el;
      u_xlati50 = i32(x_1845);
      let x_1848 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1848 != 0i));
      let x_1852 : i32 = u_xlati5;
      u_xlati52 = (x_1852 << bitcast<u32>(2i));
      let x_1854 : i32 = u_xlati51;
      if ((x_1854 != 0i)) {
        let x_1858 : vec3<f32> = vs_TEXCOORD7;
        let x_1860 : i32 = u_xlati52;
        let x_1863 : i32 = u_xlati52;
        let x_1867 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[((x_1860 + 1i) / 4i)][((x_1863 + 1i) % 4i)];
        let x_1869 : vec3<f32> = (vec3<f32>(x_1858.y, x_1858.y, x_1858.y) * vec3<f32>(x_1867.x, x_1867.y, x_1867.w));
        let x_1870 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
        let x_1872 : i32 = u_xlati52;
        let x_1874 : i32 = u_xlati52;
        let x_1877 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[(x_1872 / 4i)][(x_1874 % 4i)];
        let x_1879 : vec3<f32> = vs_TEXCOORD7;
        let x_1882 : vec4<f32> = u_xlat11;
        let x_1884 : vec3<f32> = ((vec3<f32>(x_1877.x, x_1877.y, x_1877.w) * vec3<f32>(x_1879.x, x_1879.x, x_1879.x)) + vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
        let x_1885 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
        let x_1887 : i32 = u_xlati52;
        let x_1890 : i32 = u_xlati52;
        let x_1894 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[((x_1887 + 2i) / 4i)][((x_1890 + 2i) % 4i)];
        let x_1896 : vec3<f32> = vs_TEXCOORD7;
        let x_1899 : vec4<f32> = u_xlat11;
        let x_1901 : vec3<f32> = ((vec3<f32>(x_1894.x, x_1894.y, x_1894.w) * vec3<f32>(x_1896.z, x_1896.z, x_1896.z)) + vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
        let x_1902 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);
        let x_1904 : vec4<f32> = u_xlat11;
        let x_1906 : i32 = u_xlati52;
        let x_1909 : i32 = u_xlati52;
        let x_1913 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[((x_1906 + 3i) / 4i)][((x_1909 + 3i) % 4i)];
        let x_1915 : vec3<f32> = (vec3<f32>(x_1904.x, x_1904.y, x_1904.z) + vec3<f32>(x_1913.x, x_1913.y, x_1913.w));
        let x_1916 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
        let x_1918 : vec4<f32> = u_xlat11;
        let x_1920 : vec4<f32> = u_xlat11;
        let x_1922 : vec2<f32> = (vec2<f32>(x_1918.x, x_1918.y) / vec2<f32>(x_1920.z, x_1920.z));
        let x_1923 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1922.x, x_1922.y, x_1923.z, x_1923.w);
        let x_1925 : vec4<f32> = u_xlat11;
        let x_1928 : vec2<f32> = ((vec2<f32>(x_1925.x, x_1925.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1929 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1928.x, x_1928.y, x_1929.z, x_1929.w);
        let x_1931 : vec4<f32> = u_xlat11;
        let x_1935 : vec2<f32> = clamp(vec2<f32>(x_1931.x, x_1931.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1936 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1935.x, x_1935.y, x_1936.z, x_1936.w);
        let x_1938 : i32 = u_xlati5;
        let x_1940 : vec4<f32> = x_1078.x_AdditionalLightsCookieAtlasUVRects[x_1938];
        let x_1942 : vec4<f32> = u_xlat11;
        let x_1945 : i32 = u_xlati5;
        let x_1947 : vec4<f32> = x_1078.x_AdditionalLightsCookieAtlasUVRects[x_1945];
        let x_1949 : vec2<f32> = ((vec2<f32>(x_1940.x, x_1940.y) * vec2<f32>(x_1942.x, x_1942.y)) + vec2<f32>(x_1947.z, x_1947.w));
        let x_1950 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1949.x, x_1949.y, x_1950.z, x_1950.w);
      } else {
        let x_1953 : i32 = u_xlati50;
        u_xlatb50 = (x_1953 == 1i);
        let x_1955 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1955);
        let x_1957 : i32 = u_xlati50;
        if ((x_1957 != 0i)) {
          let x_1963 : vec3<f32> = vs_TEXCOORD7;
          let x_1965 : i32 = u_xlati52;
          let x_1968 : i32 = u_xlati52;
          let x_1972 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[((x_1965 + 1i) / 4i)][((x_1968 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1963.y, x_1963.y) * vec2<f32>(x_1972.x, x_1972.y));
          let x_1975 : i32 = u_xlati52;
          let x_1977 : i32 = u_xlati52;
          let x_1980 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[(x_1975 / 4i)][(x_1977 % 4i)];
          let x_1982 : vec3<f32> = vs_TEXCOORD7;
          let x_1985 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1980.x, x_1980.y) * vec2<f32>(x_1982.x, x_1982.x)) + x_1985);
          let x_1987 : i32 = u_xlati52;
          let x_1990 : i32 = u_xlati52;
          let x_1994 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[((x_1987 + 2i) / 4i)][((x_1990 + 2i) % 4i)];
          let x_1996 : vec3<f32> = vs_TEXCOORD7;
          let x_1999 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1994.x, x_1994.y) * vec2<f32>(x_1996.z, x_1996.z)) + x_1999);
          let x_2001 : vec2<f32> = u_xlat39;
          let x_2002 : i32 = u_xlati52;
          let x_2005 : i32 = u_xlati52;
          let x_2009 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[((x_2002 + 3i) / 4i)][((x_2005 + 3i) % 4i)];
          u_xlat39 = (x_2001 + vec2<f32>(x_2009.x, x_2009.y));
          let x_2012 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2012 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2015 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2015);
          let x_2017 : i32 = u_xlati5;
          let x_2019 : vec4<f32> = x_1078.x_AdditionalLightsCookieAtlasUVRects[x_2017];
          let x_2021 : vec2<f32> = u_xlat39;
          let x_2023 : i32 = u_xlati5;
          let x_2025 : vec4<f32> = x_1078.x_AdditionalLightsCookieAtlasUVRects[x_2023];
          let x_2027 : vec2<f32> = ((vec2<f32>(x_2019.x, x_2019.y) * x_2021) + vec2<f32>(x_2025.z, x_2025.w));
          let x_2028 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2027.x, x_2027.y, x_2028.z, x_2028.w);
        } else {
          let x_2031 : vec3<f32> = vs_TEXCOORD7;
          let x_2033 : i32 = u_xlati52;
          let x_2036 : i32 = u_xlati52;
          let x_2040 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[((x_2033 + 1i) / 4i)][((x_2036 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2031.y, x_2031.y, x_2031.y, x_2031.y) * x_2040);
          let x_2042 : i32 = u_xlati52;
          let x_2044 : i32 = u_xlati52;
          let x_2047 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[(x_2042 / 4i)][(x_2044 % 4i)];
          let x_2048 : vec3<f32> = vs_TEXCOORD7;
          let x_2051 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2047 * vec4<f32>(x_2048.x, x_2048.x, x_2048.x, x_2048.x)) + x_2051);
          let x_2053 : i32 = u_xlati52;
          let x_2056 : i32 = u_xlati52;
          let x_2060 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[((x_2053 + 2i) / 4i)][((x_2056 + 2i) % 4i)];
          let x_2061 : vec3<f32> = vs_TEXCOORD7;
          let x_2064 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2060 * vec4<f32>(x_2061.z, x_2061.z, x_2061.z, x_2061.z)) + x_2064);
          let x_2066 : vec4<f32> = u_xlat12;
          let x_2067 : i32 = u_xlati52;
          let x_2070 : i32 = u_xlati52;
          let x_2074 : vec4<f32> = x_1078.x_AdditionalLightsWorldToLights[((x_2067 + 3i) / 4i)][((x_2070 + 3i) % 4i)];
          u_xlat12 = (x_2066 + x_2074);
          let x_2076 : vec4<f32> = u_xlat12;
          let x_2078 : vec4<f32> = u_xlat12;
          let x_2080 : vec3<f32> = (vec3<f32>(x_2076.x, x_2076.y, x_2076.z) / vec3<f32>(x_2078.w, x_2078.w, x_2078.w));
          let x_2081 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
          let x_2083 : vec4<f32> = u_xlat12;
          let x_2085 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2083.x, x_2083.y, x_2083.z), vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
          let x_2088 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2088);
          let x_2090 : f32 = u_xlat50;
          let x_2092 : vec4<f32> = u_xlat12;
          let x_2094 : vec3<f32> = (vec3<f32>(x_2090, x_2090, x_2090) * vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
          let x_2095 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
          let x_2097 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2097.x, x_2097.y, x_2097.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2102 : f32 = u_xlat50;
          u_xlat50 = max(x_2102, 0.00000099999999747524f);
          let x_2105 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2105);
          let x_2107 : f32 = u_xlat50;
          let x_2109 : vec4<f32> = u_xlat12;
          let x_2111 : vec3<f32> = (vec3<f32>(x_2107, x_2107, x_2107) * vec3<f32>(x_2109.z, x_2109.x, x_2109.y));
          let x_2112 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
          let x_2115 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2115);
          let x_2119 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2119, 0.0f, 1.0f);
          let x_2123 : vec4<f32> = u_xlat13;
          let x_2125 : vec4<bool> = (vec4<f32>(x_2123.y, x_2123.z, x_2123.y, x_2123.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2125.x, x_2125.y);
          let x_2128 : bool = u_xlatb39.x;
          if (x_2128) {
            let x_2133 : f32 = u_xlat13.x;
            x_2129 = x_2133;
          } else {
            let x_2136 : f32 = u_xlat13.x;
            x_2129 = -(x_2136);
          }
          let x_2138 : f32 = x_2129;
          u_xlat39.x = x_2138;
          let x_2141 : bool = u_xlatb39.y;
          if (x_2141) {
            let x_2146 : f32 = u_xlat13.x;
            x_2142 = x_2146;
          } else {
            let x_2149 : f32 = u_xlat13.x;
            x_2142 = -(x_2149);
          }
          let x_2151 : f32 = x_2142;
          u_xlat39.y = x_2151;
          let x_2153 : vec4<f32> = u_xlat12;
          let x_2155 : f32 = u_xlat50;
          let x_2158 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2153.x, x_2153.y) * vec2<f32>(x_2155, x_2155)) + x_2158);
          let x_2160 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2160 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2163 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2163, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2167 : i32 = u_xlati5;
          let x_2169 : vec4<f32> = x_1078.x_AdditionalLightsCookieAtlasUVRects[x_2167];
          let x_2171 : vec2<f32> = u_xlat39;
          let x_2173 : i32 = u_xlati5;
          let x_2175 : vec4<f32> = x_1078.x_AdditionalLightsCookieAtlasUVRects[x_2173];
          let x_2177 : vec2<f32> = ((vec2<f32>(x_2169.x, x_2169.y) * x_2171) + vec2<f32>(x_2175.z, x_2175.w));
          let x_2178 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2177.x, x_2177.y, x_2178.z, x_2178.w);
        }
      }
      let x_2185 : vec4<f32> = u_xlat11;
      let x_2187 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2185.x, x_2185.y), 0.0f);
      u_xlat11 = x_2187;
      let x_2189 : bool = u_xlatb7.y;
      if (x_2189) {
        let x_2194 : f32 = u_xlat11.w;
        x_2190 = x_2194;
      } else {
        let x_2197 : f32 = u_xlat11.x;
        x_2190 = x_2197;
      }
      let x_2198 : f32 = x_2190;
      u_xlat50 = x_2198;
      let x_2200 : bool = u_xlatb7.x;
      if (x_2200) {
        let x_2204 : vec4<f32> = u_xlat11;
        x_2201 = vec3<f32>(x_2204.x, x_2204.y, x_2204.z);
      } else {
        let x_2207 : f32 = u_xlat50;
        x_2201 = vec3<f32>(x_2207, x_2207, x_2207);
      }
      let x_2209 : vec3<f32> = x_2201;
      let x_2210 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2209.x, x_2209.y, x_2209.z, x_2210.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2216 : vec4<f32> = u_xlat11;
    let x_2218 : i32 = u_xlati5;
    let x_2220 : vec4<f32> = x_1562.x_AdditionalLightsColor[x_2218];
    let x_2222 : vec3<f32> = (vec3<f32>(x_2216.x, x_2216.y, x_2216.z) * vec3<f32>(x_2220.x, x_2220.y, x_2220.z));
    let x_2223 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2222.x, x_2222.y, x_2222.z, x_2223.w);
    let x_2225 : f32 = u_xlat48;
    let x_2226 : f32 = u_xlat49;
    u_xlat5.x = (x_2225 * x_2226);
    let x_2229 : vec4<f32> = u_xlat1;
    let x_2231 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2229.x, x_2229.y, x_2229.z), vec3<f32>(x_2231.x, x_2231.y, x_2231.z));
    let x_2234 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2234, 0.0f, 1.0f);
    let x_2237 : f32 = u_xlat5.x;
    let x_2238 : f32 = u_xlat48;
    u_xlat5.x = (x_2237 * x_2238);
    let x_2241 : vec4<f32> = u_xlat5;
    let x_2243 : vec4<f32> = u_xlat11;
    let x_2245 : vec3<f32> = (vec3<f32>(x_2241.x, x_2241.x, x_2241.x) * vec3<f32>(x_2243.x, x_2243.y, x_2243.z));
    let x_2246 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2245.x, x_2245.y, x_2245.z, x_2246.w);
    let x_2248 : vec4<f32> = u_xlat9;
    let x_2250 : f32 = u_xlat35;
    let x_2253 : vec4<f32> = u_xlat6;
    let x_2255 : vec3<f32> = ((vec3<f32>(x_2248.x, x_2248.y, x_2248.z) * vec3<f32>(x_2250, x_2250, x_2250)) + vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
    let x_2256 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2255.x, x_2255.y, x_2255.z, x_2256.w);
    let x_2258 : vec4<f32> = u_xlat9;
    let x_2260 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2258.x, x_2258.y, x_2258.z), vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
    let x_2265 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_2265, 1.17549435e-38f);
    let x_2269 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_2269);
    let x_2272 : vec4<f32> = u_xlat5;
    let x_2274 : vec4<f32> = u_xlat9;
    let x_2276 : vec3<f32> = (vec3<f32>(x_2272.x, x_2272.x, x_2272.x) * vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
    let x_2277 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2276.x, x_2276.y, x_2276.z, x_2277.w);
    let x_2279 : vec4<f32> = u_xlat1;
    let x_2281 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2279.x, x_2279.y, x_2279.z), vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
    let x_2286 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_2286, 0.0f, 1.0f);
    let x_2289 : vec4<f32> = u_xlat10;
    let x_2291 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2289.x, x_2289.y, x_2289.z), vec3<f32>(x_2291.x, x_2291.y, x_2291.z));
    let x_2294 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2294, 0.0f, 1.0f);
    let x_2297 : f32 = u_xlat5.x;
    let x_2299 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2297 * x_2299);
    let x_2303 : f32 = u_xlat5.x;
    let x_2305 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_2303 * x_2305) + 1.00001001358032226562f);
    let x_2309 : f32 = u_xlat48;
    let x_2310 : f32 = u_xlat48;
    u_xlat48 = (x_2309 * x_2310);
    let x_2313 : f32 = u_xlat5.x;
    let x_2315 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2313 * x_2315);
    let x_2318 : f32 = u_xlat48;
    u_xlat48 = max(x_2318, 0.10000000149011611938f);
    let x_2321 : f32 = u_xlat5.x;
    let x_2322 : f32 = u_xlat48;
    u_xlat5.x = (x_2321 * x_2322);
    let x_2325 : f32 = u_xlat45;
    let x_2327 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2325 * x_2327);
    let x_2330 : f32 = u_xlat43;
    let x_2332 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2330 / x_2332);
    let x_2335 : vec4<f32> = u_xlat4;
    let x_2337 : vec4<f32> = u_xlat5;
    let x_2340 : vec4<f32> = u_xlat3;
    let x_2342 : vec3<f32> = ((vec3<f32>(x_2335.x, x_2335.y, x_2335.z) * vec3<f32>(x_2337.x, x_2337.x, x_2337.x)) + vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
    let x_2343 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
    let x_2345 : vec4<f32> = u_xlat9;
    let x_2347 : vec4<f32> = u_xlat11;
    let x_2350 : vec4<f32> = u_xlat8;
    let x_2352 : vec3<f32> = ((vec3<f32>(x_2345.x, x_2345.y, x_2345.z) * vec3<f32>(x_2347.x, x_2347.y, x_2347.z)) + vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
    let x_2353 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2352.x, x_2352.y, x_2352.z, x_2353.w);

    continuing {
      let x_2355 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2355 + bitcast<u32>(1i));
    }
  }
  let x_2357 : vec4<f32> = u_xlat2;
  let x_2359 : f32 = u_xlat14;
  let x_2362 : vec3<f32> = u_xlat19;
  u_xlat0 = ((vec3<f32>(x_2357.x, x_2357.y, x_2357.z) * vec3<f32>(x_2359, x_2359, x_2359)) + x_2362);
  let x_2364 : vec4<f32> = u_xlat8;
  let x_2366 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2364.x, x_2364.y, x_2364.z) + x_2366);
  let x_2370 : f32 = u_xlat42;
  let x_2372 : vec3<f32> = u_xlat0;
  let x_2373 : vec3<f32> = (vec3<f32>(x_2370, x_2370, x_2370) * x_2372);
  let x_2374 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


