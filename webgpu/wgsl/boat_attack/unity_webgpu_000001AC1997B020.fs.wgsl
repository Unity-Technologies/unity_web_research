diagnostic(off, derivative_uniformity);

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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(18) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Splat0 : sampler;

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

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat19 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_1012 : LightShadows;

var<private> u_xlatb19 : bool;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1095 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1294 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu34 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlati34 : i32;

@group(1) @binding(1) var<uniform> x_1604 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu19 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1044 : f32;
  var x_1162 : f32;
  var x_1173 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1742 : f32;
  var x_1752 : f32;
  var txVec1 : vec3<f32>;
  var x_2181 : f32;
  var x_2194 : f32;
  var x_2252 : f32;
  var x_2263 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_MaskMapRemapScale0;
  let x_25 : vec4<f32> = x_13.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_18.x, x_18.y, x_18.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_25.x, x_25.y, x_25.w));
  let x_32 : vec4<f32> = x_13.x_MaskMapRemapScale1;
  let x_37 : vec4<f32> = x_13.x_MaskMapRemapOffset1;
  let x_39 : vec3<f32> = ((vec3<f32>(x_32.x, x_32.y, x_32.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_37.x, x_37.y, x_37.w));
  let x_40 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_39.x, x_39.y, x_39.z, x_40.w);
  let x_45 : vec4<f32> = x_13.x_MaskMapRemapScale2;
  let x_50 : vec4<f32> = x_13.x_MaskMapRemapOffset2;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_53 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_58 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_63 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_65 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.w, x_58.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_63.x, x_63.w, x_63.y));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_65.z);
  let x_72 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_76 : vec2<f32> = (vec2<f32>(x_72.z, x_72.w) + vec2<f32>(-1.0f, -1.0f));
  let x_77 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = u_xlat4;
  let x_87 : vec2<f32> = ((vec2<f32>(x_81.x, x_81.y) * vec2<f32>(x_83.x, x_83.y)) + vec2<f32>(0.5f, 0.5f));
  let x_88 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  let x_93 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_95 : vec2<f32> = (vec2<f32>(x_90.x, x_90.y) * vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_108 : vec4<f32> = u_xlat4;
  let x_119 : f32 = x_113.x_GlobalMipBias.x;
  let x_120 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_119);
  u_xlat4 = x_120;
  let x_123 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_134 : vec4<f32> = vs_TEXCOORD1;
  let x_137 : f32 = x_113.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_134.x, x_134.y), x_137);
  u_xlat5 = x_138;
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_113.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_144.z, x_144.w), x_147);
  u_xlat6 = x_148;
  let x_155 : vec4<f32> = vs_TEXCOORD2;
  let x_158 : f32 = x_113.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_155.x, x_155.y), x_158);
  u_xlat7 = x_159;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_113.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_165.z, x_165.w), x_168);
  u_xlat8 = x_169;
  let x_173 : f32 = u_xlat5.w;
  u_xlat9.x = x_173;
  let x_176 : f32 = u_xlat6.w;
  u_xlat9.y = x_176;
  let x_180 : f32 = u_xlat7.w;
  u_xlat9.z = x_180;
  let x_184 : f32 = u_xlat8.w;
  u_xlat9.w = x_184;
  let x_187 : vec4<f32> = u_xlat9;
  let x_190 : f32 = x_13.x_Smoothness0;
  let x_193 : f32 = x_13.x_Smoothness1;
  let x_196 : f32 = x_13.x_Smoothness2;
  let x_199 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_187 * vec4<f32>(x_190, x_193, x_196, x_199));
  let x_208 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_208);
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_211) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat9;
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_214 + -(x_215));
  let x_218 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_218 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_222 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_222, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : vec4<f32> = u_xlat4;
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_227 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_234 + -(x_235));
  let x_240 : f32 = u_xlat12.x;
  let x_243 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_240 * x_243);
  let x_247 : f32 = u_xlat12.y;
  let x_250 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_247 * x_250);
  let x_254 : f32 = u_xlat12.z;
  let x_257 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_254 * x_257);
  let x_261 : f32 = u_xlat12.w;
  let x_264 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_261 * x_264);
  let x_267 : vec4<f32> = u_xlat11;
  let x_268 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_267 + x_268);
  let x_270 : bool = u_xlatb43;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_279 : f32 = u_xlat43;
  u_xlat43 = (x_279 + 0.00006103515625f);
  let x_282 : vec4<f32> = u_xlat4;
  let x_283 : f32 = u_xlat43;
  u_xlat4 = (x_282 / vec4<f32>(x_283, x_283, x_283, x_283));
  let x_286 : vec4<f32> = u_xlat4;
  let x_289 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat4;
  let x_297 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_299 : vec3<f32> = (vec3<f32>(x_294.y, x_294.y, x_294.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat6;
  let x_304 : vec4<f32> = u_xlat12;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = u_xlat11;
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.y, x_311.z)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.z, x_319.z, x_319.z) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat7;
  let x_329 : vec4<f32> = u_xlat6;
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.x, x_329.y, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_340 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_342 : vec3<f32> = (vec3<f32>(x_337.w, x_337.w, x_337.w) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat8;
  let x_347 : vec4<f32> = u_xlat6;
  let x_350 : vec4<f32> = u_xlat5;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_360 : vec4<f32> = vs_TEXCOORD1;
  let x_363 : f32 = x_113.x_GlobalMipBias.x;
  let x_364 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_360.x, x_360.y), x_363);
  let x_365 : vec3<f32> = vec3<f32>(x_364.x, x_364.y, x_364.w);
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = u_xlat6.x;
  let x_371 : f32 = u_xlat6.z;
  u_xlat6.x = (x_369 * x_371);
  let x_374 : vec4<f32> = u_xlat6;
  let x_379 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_382.x, x_382.y), vec2<f32>(x_384.x, x_384.y));
  let x_387 : f32 = u_xlat43;
  u_xlat43 = min(x_387, 1.0f);
  let x_389 : f32 = u_xlat43;
  u_xlat43 = (-(x_389) + 1.0f);
  let x_392 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_392);
  let x_394 : f32 = u_xlat43;
  u_xlat7.z = max(x_394, 0.0000000000000001f);
  let x_398 : vec4<f32> = u_xlat6;
  let x_401 : f32 = x_13.x_NormalScale0;
  let x_403 : vec2<f32> = (vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_401, x_401));
  let x_404 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_410 : vec4<f32> = vs_TEXCOORD1;
  let x_413 : f32 = x_113.x_GlobalMipBias.x;
  let x_414 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_410.z, x_410.w), x_413);
  let x_415 : vec3<f32> = vec3<f32>(x_414.x, x_414.y, x_414.w);
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_419 : f32 = u_xlat6.x;
  let x_421 : f32 = u_xlat6.z;
  u_xlat6.x = (x_419 * x_421);
  let x_424 : vec4<f32> = u_xlat6;
  let x_427 : vec2<f32> = ((vec2<f32>(x_424.x, x_424.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat6;
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_430.x, x_430.y), vec2<f32>(x_432.x, x_432.y));
  let x_435 : f32 = u_xlat43;
  u_xlat43 = min(x_435, 1.0f);
  let x_437 : f32 = u_xlat43;
  u_xlat43 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_440);
  let x_442 : f32 = u_xlat43;
  u_xlat8.z = max(x_442, 0.0000000000000001f);
  let x_445 : vec4<f32> = u_xlat6;
  let x_449 : f32 = x_13.x_NormalScale1;
  let x_451 : f32 = x_13.x_NormalScale1;
  let x_452 : vec2<f32> = vec2<f32>(x_449, x_451);
  let x_456 : vec2<f32> = (vec2<f32>(x_445.x, x_445.y) * vec2<f32>(x_452.x, x_452.y));
  let x_457 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat8;
  let x_463 : vec3<f32> = (vec3<f32>(x_459.y, x_459.y, x_459.y) * vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat4;
  let x_468 : vec4<f32> = u_xlat7;
  let x_471 : vec4<f32> = u_xlat6;
  let x_473 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.x, x_466.x) * vec3<f32>(x_468.x, x_468.y, x_468.z)) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_480 : vec4<f32> = vs_TEXCOORD2;
  let x_483 : f32 = x_113.x_GlobalMipBias.x;
  let x_484 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_480.x, x_480.y), x_483);
  let x_485 : vec3<f32> = vec3<f32>(x_484.x, x_484.y, x_484.w);
  let x_486 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = u_xlat7.x;
  let x_491 : f32 = u_xlat7.z;
  u_xlat7.x = (x_489 * x_491);
  let x_494 : vec4<f32> = u_xlat7;
  let x_497 : vec2<f32> = ((vec2<f32>(x_494.x, x_494.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat7;
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_500.x, x_500.y), vec2<f32>(x_502.x, x_502.y));
  let x_505 : f32 = u_xlat43;
  u_xlat43 = min(x_505, 1.0f);
  let x_507 : f32 = u_xlat43;
  u_xlat43 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_510);
  let x_512 : f32 = u_xlat43;
  u_xlat8.z = max(x_512, 0.0000000000000001f);
  let x_515 : vec4<f32> = u_xlat7;
  let x_519 : f32 = x_13.x_NormalScale2;
  let x_521 : f32 = x_13.x_NormalScale2;
  let x_522 : vec2<f32> = vec2<f32>(x_519, x_521);
  let x_526 : vec2<f32> = (vec2<f32>(x_515.x, x_515.y) * vec2<f32>(x_522.x, x_522.y));
  let x_527 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat4;
  let x_531 : vec4<f32> = u_xlat8;
  let x_534 : vec4<f32> = u_xlat6;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.z, x_529.z, x_529.z) * vec3<f32>(x_531.x, x_531.y, x_531.z)) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_543 : vec4<f32> = vs_TEXCOORD2;
  let x_546 : f32 = x_113.x_GlobalMipBias.x;
  let x_547 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_543.z, x_543.w), x_546);
  let x_548 : vec3<f32> = vec3<f32>(x_547.x, x_547.y, x_547.w);
  let x_549 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_552 : f32 = u_xlat7.x;
  let x_554 : f32 = u_xlat7.z;
  u_xlat7.x = (x_552 * x_554);
  let x_557 : vec4<f32> = u_xlat7;
  let x_560 : vec2<f32> = ((vec2<f32>(x_557.x, x_557.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat7;
  let x_565 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_563.x, x_563.y), vec2<f32>(x_565.x, x_565.y));
  let x_568 : f32 = u_xlat43;
  u_xlat43 = min(x_568, 1.0f);
  let x_570 : f32 = u_xlat43;
  u_xlat43 = (-(x_570) + 1.0f);
  let x_573 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_573);
  let x_575 : f32 = u_xlat43;
  u_xlat8.z = max(x_575, 0.0000000000000001f);
  let x_578 : vec4<f32> = u_xlat7;
  let x_582 : f32 = x_13.x_NormalScale3;
  let x_584 : f32 = x_13.x_NormalScale3;
  let x_585 : vec2<f32> = vec2<f32>(x_582, x_584);
  let x_589 : vec2<f32> = (vec2<f32>(x_578.x, x_578.y) * vec2<f32>(x_585.x, x_585.y));
  let x_590 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec4<f32> = u_xlat8;
  let x_597 : vec4<f32> = u_xlat6;
  let x_599 : vec3<f32> = ((vec3<f32>(x_592.w, x_592.w, x_592.w) * vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = u_xlat6.z;
  u_xlat6.w = (x_603 + 0.00000999999974737875f);
  let x_607 : vec4<f32> = u_xlat6;
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_607.x, x_607.y, x_607.w), vec3<f32>(x_609.x, x_609.y, x_609.w));
  let x_612 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_612);
  let x_614 : f32 = u_xlat43;
  let x_616 : vec4<f32> = u_xlat6;
  let x_618 : vec3<f32> = (vec3<f32>(x_614, x_614, x_614) * vec3<f32>(x_616.x, x_616.y, x_616.w));
  let x_619 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_622;
  let x_625 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_625;
  let x_628 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_628;
  let x_631 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_631;
  let x_634 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_643;
  let x_645 : vec4<f32> = u_xlat7;
  let x_646 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_645 + x_646);
  let x_649 : f32 = u_xlat0.z;
  u_xlat8.x = x_649;
  let x_652 : f32 = u_xlat1.z;
  u_xlat8.y = x_652;
  let x_655 : f32 = u_xlat2.z;
  u_xlat8.z = x_655;
  let x_658 : f32 = u_xlat3.y;
  u_xlat8.w = x_658;
  let x_660 : vec4<f32> = u_xlat9;
  let x_663 : f32 = x_13.x_Smoothness0;
  let x_665 : f32 = x_13.x_Smoothness1;
  let x_667 : f32 = x_13.x_Smoothness2;
  let x_669 : f32 = x_13.x_Smoothness3;
  let x_672 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_660) * vec4<f32>(x_663, x_665, x_667, x_669)) + x_672);
  let x_676 : f32 = x_13.x_LayerHasMask0;
  let x_679 : f32 = x_13.x_LayerHasMask1;
  let x_682 : f32 = x_13.x_LayerHasMask2;
  let x_685 : f32 = x_13.x_LayerHasMask3;
  let x_687 : vec4<f32> = u_xlat8;
  let x_689 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_676, x_679, x_682, x_685) * x_687) + x_689);
  let x_692 : vec4<f32> = u_xlat4;
  let x_693 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_692, x_693);
  let x_696 : f32 = u_xlat0.x;
  u_xlat8.x = x_696;
  let x_699 : f32 = u_xlat1.x;
  u_xlat8.y = x_699;
  let x_702 : f32 = u_xlat2.x;
  u_xlat8.z = x_702;
  let x_705 : f32 = u_xlat3.x;
  u_xlat8.w = x_705;
  let x_707 : vec4<f32> = u_xlat8;
  let x_710 : f32 = x_13.x_Metallic0;
  let x_713 : f32 = x_13.x_Metallic1;
  let x_716 : f32 = x_13.x_Metallic2;
  let x_719 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_707 + -(vec4<f32>(x_710, x_713, x_716, x_719)));
  let x_724 : f32 = x_13.x_LayerHasMask0;
  let x_726 : f32 = x_13.x_LayerHasMask1;
  let x_728 : f32 = x_13.x_LayerHasMask2;
  let x_730 : f32 = x_13.x_LayerHasMask3;
  let x_732 : vec4<f32> = u_xlat8;
  let x_735 : f32 = x_13.x_Metallic0;
  let x_737 : f32 = x_13.x_Metallic1;
  let x_739 : f32 = x_13.x_Metallic2;
  let x_741 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_724, x_726, x_728, x_730) * x_732) + vec4<f32>(x_735, x_737, x_739, x_741));
  let x_744 : vec4<f32> = u_xlat4;
  let x_745 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_744, x_745);
  let x_749 : f32 = u_xlat0.y;
  u_xlat3.x = x_749;
  let x_752 : f32 = u_xlat1.y;
  u_xlat3.y = x_752;
  let x_755 : f32 = u_xlat2.y;
  u_xlat3.z = x_755;
  let x_757 : vec4<f32> = u_xlat7;
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_757) + x_759);
  let x_762 : f32 = x_13.x_LayerHasMask0;
  let x_764 : f32 = x_13.x_LayerHasMask1;
  let x_766 : f32 = x_13.x_LayerHasMask2;
  let x_768 : f32 = x_13.x_LayerHasMask3;
  let x_770 : vec4<f32> = u_xlat1;
  let x_772 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_762, x_764, x_766, x_768) * x_770) + x_772);
  let x_775 : vec4<f32> = u_xlat4;
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_775, x_776);
  let x_778 : vec4<f32> = u_xlat6;
  let x_781 : vec4<f32> = vs_TEXCOORD5;
  let x_783 : vec3<f32> = (vec3<f32>(x_778.y, x_778.y, x_778.y) * vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat6;
  let x_789 : vec4<f32> = vs_TEXCOORD4;
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : vec3<f32> = ((vec3<f32>(x_786.x, x_786.x, x_786.x) * -(vec3<f32>(x_789.x, x_789.y, x_789.z))) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD3;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_798.z, x_798.z, x_798.z) * vec3<f32>(x_801.x, x_801.y, x_801.z)) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat1;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_814);
  let x_816 : f32 = u_xlat43;
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec3<f32> = (vec3<f32>(x_816, x_816, x_816) * vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_827 : f32 = vs_TEXCOORD7.y;
  let x_829 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat43 = (x_827 * x_829);
  let x_832 : f32 = x_113.unity_MatrixV[0i].z;
  let x_834 : f32 = vs_TEXCOORD7.x;
  let x_836 : f32 = u_xlat43;
  u_xlat43 = ((x_832 * x_834) + x_836);
  let x_839 : f32 = x_113.unity_MatrixV[2i].z;
  let x_841 : f32 = vs_TEXCOORD7.z;
  let x_843 : f32 = u_xlat43;
  u_xlat43 = ((x_839 * x_841) + x_843);
  let x_845 : f32 = u_xlat43;
  let x_847 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat43 = (x_845 + x_847);
  let x_849 : f32 = u_xlat43;
  let x_852 : f32 = x_113.x_ProjectionParams.y;
  u_xlat43 = (-(x_849) + -(x_852));
  let x_855 : f32 = u_xlat43;
  u_xlat43 = max(x_855, 0.0f);
  let x_857 : f32 = u_xlat43;
  let x_859 : f32 = x_113.unity_FogParams.x;
  u_xlat43 = (x_857 * x_859);
  let x_866 : vec4<f32> = vs_TEXCOORD0;
  let x_869 : f32 = x_113.x_GlobalMipBias.x;
  let x_870 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_866.z, x_866.w), x_869);
  u_xlat2 = x_870;
  let x_875 : vec4<f32> = vs_TEXCOORD0;
  let x_878 : f32 = x_113.x_GlobalMipBias.x;
  let x_879 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_875.z, x_875.w), x_878);
  let x_880 : vec3<f32> = vec3<f32>(x_879.x, x_879.y, x_879.z);
  let x_881 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat2;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat1;
  let x_892 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_890.x, x_890.y, x_890.z), vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_897 : f32 = u_xlat2.x;
  u_xlat2.x = (x_897 + 0.5f);
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat3;
  let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.x, x_900.x) * vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_909 : f32 = u_xlat2.w;
  u_xlat44 = max(x_909, 0.00009999999747378752f);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : f32 = u_xlat44;
  let x_916 : vec3<f32> = (vec3<f32>(x_912.x, x_912.y, x_912.z) / vec3<f32>(x_914, x_914, x_914));
  let x_917 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_920 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_920) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_925 : f32 = u_xlat28;
  let x_926 : f32 = u_xlat44;
  u_xlat3.x = (x_925 + -(x_926));
  let x_931 : f32 = u_xlat44;
  let x_933 : vec4<f32> = u_xlat5;
  u_xlat17 = (vec3<f32>(x_931, x_931, x_931) * vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat5;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_941 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec3<f32> = u_xlat0;
  let x_945 : vec4<f32> = u_xlat4;
  let x_950 : vec3<f32> = ((vec3<f32>(x_943.x, x_943.x, x_943.x) * vec3<f32>(x_945.x, x_945.y, x_945.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_951 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : f32 = u_xlat28;
  u_xlat0.x = (-(x_953) + 1.0f);
  let x_958 : f32 = u_xlat0.x;
  let x_960 : f32 = u_xlat0.x;
  u_xlat28 = (x_958 * x_960);
  let x_962 : f32 = u_xlat28;
  u_xlat28 = max(x_962, 0.0078125f);
  let x_965 : f32 = u_xlat28;
  let x_966 : f32 = u_xlat28;
  u_xlat44 = (x_965 * x_966);
  let x_969 : f32 = u_xlat3.x;
  u_xlat3.x = (x_969 + 1.0f);
  let x_973 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_973, 0.0f, 1.0f);
  let x_977 : f32 = u_xlat28;
  u_xlat46 = ((x_977 * 4.0f) + 2.0f);
  let x_980 : f32 = u_xlat14;
  u_xlat14 = min(x_980, 1.0f);
  let x_985 : vec4<f32> = vs_TEXCOORD8;
  let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
  let x_988 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_986.x, x_986.y, x_988);
  let x_1000 : vec3<f32> = txVec0;
  let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1000.xy, x_1000.z);
  u_xlat5.x = x_1002;
  let x_1014 : f32 = x_1012.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_1014) + 1.0f);
  let x_1019 : f32 = u_xlat5.x;
  let x_1021 : f32 = x_1012.x_MainLightShadowParams.x;
  let x_1024 : f32 = u_xlat19.x;
  u_xlat5.x = ((x_1019 * x_1021) + x_1024);
  let x_1029 : f32 = vs_TEXCOORD8.z;
  u_xlatb19 = (0.0f >= x_1029);
  let x_1035 : f32 = vs_TEXCOORD8.z;
  u_xlatb33.x = (x_1035 >= 1.0f);
  let x_1039 : bool = u_xlatb33.x;
  let x_1040 : bool = u_xlatb19;
  u_xlatb19 = (x_1039 | x_1040);
  let x_1042 : bool = u_xlatb19;
  if (x_1042) {
    x_1044 = 1.0f;
  } else {
    let x_1049 : f32 = u_xlat5.x;
    x_1044 = x_1049;
  }
  let x_1050 : f32 = x_1044;
  u_xlat5.x = x_1050;
  let x_1052 : vec3<f32> = vs_TEXCOORD7;
  let x_1055 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat19 = (x_1052 + -(x_1055));
  let x_1058 : vec3<f32> = u_xlat19;
  let x_1059 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_1058, x_1059);
  let x_1065 : f32 = u_xlat19.x;
  let x_1067 : f32 = x_1012.x_MainLightShadowParams.z;
  let x_1070 : f32 = x_1012.x_MainLightShadowParams.w;
  u_xlat33.x = ((x_1065 * x_1067) + x_1070);
  let x_1074 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1074, 0.0f, 1.0f);
  let x_1079 : f32 = u_xlat5.x;
  u_xlat47 = (-(x_1079) + 1.0f);
  let x_1083 : f32 = u_xlat33.x;
  let x_1084 : f32 = u_xlat47;
  let x_1087 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1083 * x_1084) + x_1087);
  let x_1097 : f32 = x_1095.x_MainLightCookieTextureFormat;
  u_xlatb33.x = !((x_1097 == -1.0f));
  let x_1101 : bool = u_xlatb33.x;
  if (x_1101) {
    let x_1104 : vec3<f32> = vs_TEXCOORD7;
    let x_1107 : vec4<f32> = x_1095.x_MainLightWorldToLight[1i];
    u_xlat33 = (vec2<f32>(x_1104.y, x_1104.y) * vec2<f32>(x_1107.x, x_1107.y));
    let x_1111 : vec4<f32> = x_1095.x_MainLightWorldToLight[0i];
    let x_1113 : vec3<f32> = vs_TEXCOORD7;
    let x_1116 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1111.x, x_1111.y) * vec2<f32>(x_1113.x, x_1113.x)) + x_1116);
    let x_1119 : vec4<f32> = x_1095.x_MainLightWorldToLight[2i];
    let x_1121 : vec3<f32> = vs_TEXCOORD7;
    let x_1124 : vec2<f32> = u_xlat33;
    u_xlat33 = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1121.z, x_1121.z)) + x_1124);
    let x_1126 : vec2<f32> = u_xlat33;
    let x_1128 : vec4<f32> = x_1095.x_MainLightWorldToLight[3i];
    u_xlat33 = (x_1126 + vec2<f32>(x_1128.x, x_1128.y));
    let x_1131 : vec2<f32> = u_xlat33;
    u_xlat33 = ((x_1131 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1139 : vec2<f32> = u_xlat33;
    let x_1141 : f32 = x_113.x_GlobalMipBias.x;
    let x_1142 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1139, x_1141);
    u_xlat6 = x_1142;
    let x_1144 : f32 = x_1095.x_MainLightCookieTextureFormat;
    let x_1146 : f32 = x_1095.x_MainLightCookieTextureFormat;
    let x_1148 : f32 = x_1095.x_MainLightCookieTextureFormat;
    let x_1150 : f32 = x_1095.x_MainLightCookieTextureFormat;
    let x_1151 : vec4<f32> = vec4<f32>(x_1144, x_1146, x_1148, x_1150);
    let x_1158 : vec4<bool> = (vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1151.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb33 = vec2<bool>(x_1158.x, x_1158.y);
    let x_1161 : bool = u_xlatb33.y;
    if (x_1161) {
      let x_1166 : f32 = u_xlat6.w;
      x_1162 = x_1166;
    } else {
      let x_1169 : f32 = u_xlat6.x;
      x_1162 = x_1169;
    }
    let x_1170 : f32 = x_1162;
    u_xlat47 = x_1170;
    let x_1172 : bool = u_xlatb33.x;
    if (x_1172) {
      let x_1176 : vec4<f32> = u_xlat6;
      x_1173 = vec3<f32>(x_1176.x, x_1176.y, x_1176.z);
    } else {
      let x_1179 : f32 = u_xlat47;
      x_1173 = vec3<f32>(x_1179, x_1179, x_1179);
    }
    let x_1181 : vec3<f32> = x_1173;
    let x_1182 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1188 : vec4<f32> = u_xlat6;
  let x_1191 : vec4<f32> = x_113.x_MainLightColor;
  let x_1193 : vec3<f32> = (vec3<f32>(x_1188.x, x_1188.y, x_1188.z) * vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1197 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1197;
  let x_1200 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1200;
  let x_1203 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1203;
  let x_1205 : vec4<f32> = u_xlat7;
  let x_1208 : vec4<f32> = u_xlat1;
  u_xlat33.x = dot(-(vec3<f32>(x_1205.x, x_1205.y, x_1205.z)), vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1213 : f32 = u_xlat33.x;
  let x_1215 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1213 + x_1215);
  let x_1218 : vec4<f32> = u_xlat1;
  let x_1220 : vec2<f32> = u_xlat33;
  let x_1224 : vec4<f32> = u_xlat7;
  let x_1227 : vec3<f32> = ((vec3<f32>(x_1218.x, x_1218.y, x_1218.z) * -(vec3<f32>(x_1220.x, x_1220.x, x_1220.x))) + -(vec3<f32>(x_1224.x, x_1224.y, x_1224.z)));
  let x_1228 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
  let x_1230 : vec4<f32> = u_xlat1;
  let x_1232 : vec4<f32> = u_xlat7;
  u_xlat33.x = dot(vec3<f32>(x_1230.x, x_1230.y, x_1230.z), vec3<f32>(x_1232.x, x_1232.y, x_1232.z));
  let x_1237 : f32 = u_xlat33.x;
  u_xlat33.x = clamp(x_1237, 0.0f, 1.0f);
  let x_1241 : f32 = u_xlat33.x;
  u_xlat33.x = (-(x_1241) + 1.0f);
  let x_1246 : f32 = u_xlat33.x;
  let x_1248 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1246 * x_1248);
  let x_1252 : f32 = u_xlat33.x;
  let x_1254 : f32 = u_xlat33.x;
  u_xlat33.x = (x_1252 * x_1254);
  let x_1258 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1258) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1265 : f32 = u_xlat0.x;
  let x_1266 : f32 = u_xlat47;
  u_xlat0.x = (x_1265 * x_1266);
  let x_1270 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1270 * 6.0f);
  let x_1282 : vec4<f32> = u_xlat8;
  let x_1285 : f32 = u_xlat0.x;
  let x_1286 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1282.x, x_1282.y, x_1282.z), x_1285);
  u_xlat8 = x_1286;
  let x_1288 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1288 + -1.0f);
  let x_1296 : f32 = x_1294.unity_SpecCube0_HDR.w;
  let x_1298 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1296 * x_1298) + 1.0f);
  let x_1303 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1303, 0.0f);
  let x_1307 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1307);
  let x_1311 : f32 = u_xlat0.x;
  let x_1313 : f32 = x_1294.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1311 * x_1313);
  let x_1317 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1317);
  let x_1321 : f32 = u_xlat0.x;
  let x_1323 : f32 = x_1294.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1321 * x_1323);
  let x_1326 : vec4<f32> = u_xlat8;
  let x_1328 : vec3<f32> = u_xlat0;
  let x_1330 : vec3<f32> = (vec3<f32>(x_1326.x, x_1326.y, x_1326.z) * vec3<f32>(x_1328.x, x_1328.x, x_1328.x));
  let x_1331 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
  let x_1333 : f32 = u_xlat28;
  let x_1335 : f32 = u_xlat28;
  let x_1339 : vec2<f32> = ((vec2<f32>(x_1333, x_1333) * vec2<f32>(x_1335, x_1335)) + vec2<f32>(-1.0f, 1.0f));
  let x_1340 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1339.x, x_1340.y, x_1339.y);
  let x_1343 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1343);
  let x_1345 : vec4<f32> = u_xlat4;
  let x_1348 : vec4<f32> = u_xlat3;
  let x_1350 : vec3<f32> = (-(vec3<f32>(x_1345.x, x_1345.y, x_1345.z)) + vec3<f32>(x_1348.x, x_1348.x, x_1348.x));
  let x_1351 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
  let x_1353 : vec2<f32> = u_xlat33;
  let x_1355 : vec4<f32> = u_xlat9;
  let x_1358 : vec4<f32> = u_xlat4;
  let x_1360 : vec3<f32> = ((vec3<f32>(x_1353.x, x_1353.x, x_1353.x) * vec3<f32>(x_1355.x, x_1355.y, x_1355.z)) + vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
  let x_1361 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  let x_1363 : f32 = u_xlat28;
  let x_1365 : vec4<f32> = u_xlat9;
  let x_1367 : vec3<f32> = (vec3<f32>(x_1363, x_1363, x_1363) * vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
  let x_1368 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1370 : vec4<f32> = u_xlat8;
  let x_1372 : vec4<f32> = u_xlat9;
  let x_1374 : vec3<f32> = (vec3<f32>(x_1370.x, x_1370.y, x_1370.z) * vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1375 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
  let x_1377 : vec4<f32> = u_xlat2;
  let x_1379 : vec3<f32> = u_xlat17;
  let x_1381 : vec4<f32> = u_xlat8;
  let x_1383 : vec3<f32> = ((vec3<f32>(x_1377.x, x_1377.y, x_1377.z) * x_1379) + vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
  let x_1384 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
  let x_1387 : f32 = u_xlat5.x;
  let x_1389 : f32 = x_1294.unity_LightData.z;
  u_xlat28 = (x_1387 * x_1389);
  let x_1391 : vec4<f32> = u_xlat1;
  let x_1394 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1391.x, x_1391.y, x_1391.z), vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
  let x_1399 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1399, 0.0f, 1.0f);
  let x_1402 : f32 = u_xlat28;
  let x_1404 : f32 = u_xlat3.x;
  u_xlat28 = (x_1402 * x_1404);
  let x_1406 : f32 = u_xlat28;
  let x_1408 : vec4<f32> = u_xlat6;
  let x_1410 : vec3<f32> = (vec3<f32>(x_1406, x_1406, x_1406) * vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
  let x_1411 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1410.x, x_1411.y, x_1410.y, x_1410.z);
  let x_1413 : vec4<f32> = u_xlat7;
  let x_1416 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1418 : vec3<f32> = (vec3<f32>(x_1413.x, x_1413.y, x_1413.z) + vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
  let x_1419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  let x_1421 : vec4<f32> = u_xlat6;
  let x_1423 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1421.x, x_1421.y, x_1421.z), vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
  let x_1426 : f32 = u_xlat28;
  u_xlat28 = max(x_1426, 1.17549435e-38f);
  let x_1429 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1429);
  let x_1431 : f32 = u_xlat28;
  let x_1433 : vec4<f32> = u_xlat6;
  let x_1435 : vec3<f32> = (vec3<f32>(x_1431, x_1431, x_1431) * vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
  let x_1436 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
  let x_1438 : vec4<f32> = u_xlat1;
  let x_1440 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_1438.x, x_1438.y, x_1438.z), vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
  let x_1443 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1443, 0.0f, 1.0f);
  let x_1446 : vec4<f32> = x_113.x_MainLightPosition;
  let x_1448 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_1446.x, x_1446.y, x_1446.z), vec3<f32>(x_1448.x, x_1448.y, x_1448.z));
  let x_1453 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1453, 0.0f, 1.0f);
  let x_1456 : f32 = u_xlat28;
  let x_1457 : f32 = u_xlat28;
  u_xlat28 = (x_1456 * x_1457);
  let x_1459 : f32 = u_xlat28;
  let x_1461 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1459 * x_1461) + 1.00001001358032226562f);
  let x_1466 : f32 = u_xlat3.x;
  let x_1468 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1466 * x_1468);
  let x_1471 : f32 = u_xlat28;
  let x_1472 : f32 = u_xlat28;
  u_xlat28 = (x_1471 * x_1472);
  let x_1475 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1475, 0.10000000149011611938f);
  let x_1479 : f32 = u_xlat28;
  let x_1481 : f32 = u_xlat3.x;
  u_xlat28 = (x_1479 * x_1481);
  let x_1483 : f32 = u_xlat46;
  let x_1484 : f32 = u_xlat28;
  u_xlat28 = (x_1483 * x_1484);
  let x_1486 : f32 = u_xlat44;
  let x_1487 : f32 = u_xlat28;
  u_xlat28 = (x_1486 / x_1487);
  let x_1489 : vec4<f32> = u_xlat4;
  let x_1491 : f32 = u_xlat28;
  let x_1494 : vec3<f32> = u_xlat17;
  let x_1495 : vec3<f32> = ((vec3<f32>(x_1489.x, x_1489.y, x_1489.z) * vec3<f32>(x_1491, x_1491, x_1491)) + x_1494);
  let x_1496 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
  let x_1498 : vec4<f32> = u_xlat5;
  let x_1500 : vec4<f32> = u_xlat6;
  let x_1502 : vec3<f32> = (vec3<f32>(x_1498.x, x_1498.z, x_1498.w) * vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
  let x_1503 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1502.x, x_1503.y, x_1502.y, x_1502.z);
  let x_1506 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_1508 : f32 = x_1294.unity_LightData.y;
  u_xlat28 = min(x_1506, x_1508);
  let x_1512 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1512));
  let x_1516 : f32 = u_xlat19.x;
  let x_1518 : f32 = x_1012.x_AdditionalShadowFadeParams.x;
  let x_1521 : f32 = x_1012.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1516 * x_1518) + x_1521);
  let x_1525 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1525, 0.0f, 1.0f);
  let x_1530 : f32 = x_1095.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1532 : f32 = x_1095.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1534 : f32 = x_1095.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1536 : f32 = x_1095.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1537 : vec4<f32> = vec4<f32>(x_1530, x_1532, x_1534, x_1536);
  let x_1544 : vec4<bool> = (vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1537.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1544.x, x_1544.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1556 : u32 = u_xlatu_loop_1;
    let x_1557 : u32 = u_xlatu28;
    if ((x_1556 < x_1557)) {
    } else {
      break;
    }
    let x_1560 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_1560 >> 2u);
    let x_1564 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1564 & 3u));
    let x_1568 : u32 = u_xlatu34;
    let x_1571 : vec4<f32> = x_1294.unity_LightIndices[bitcast<i32>(x_1568)];
    let x_1581 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1586 : vec4<u32> = indexable[x_1581];
    u_xlat34.x = dot(x_1571, bitcast<vec4<f32>>(x_1586));
    let x_1592 : f32 = u_xlat34.x;
    u_xlati34 = i32(x_1592);
    let x_1594 : vec3<f32> = vs_TEXCOORD7;
    let x_1605 : i32 = u_xlati34;
    let x_1607 : vec4<f32> = x_1604.x_AdditionalLightsPosition[x_1605];
    let x_1610 : i32 = u_xlati34;
    let x_1612 : vec4<f32> = x_1604.x_AdditionalLightsPosition[x_1610];
    let x_1614 : vec3<f32> = ((-(x_1594) * vec3<f32>(x_1607.w, x_1607.w, x_1607.w)) + vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
    let x_1615 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
    let x_1618 : vec4<f32> = u_xlat9;
    let x_1620 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1618.x, x_1618.y, x_1618.z), vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
    let x_1623 : f32 = u_xlat48;
    u_xlat48 = max(x_1623, 0.00006103515625f);
    let x_1626 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1626);
    let x_1628 : f32 = u_xlat49;
    let x_1630 : vec4<f32> = u_xlat9;
    let x_1632 : vec3<f32> = (vec3<f32>(x_1628, x_1628, x_1628) * vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
    let x_1633 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
    let x_1636 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1636);
    let x_1638 : f32 = u_xlat48;
    let x_1639 : i32 = u_xlati34;
    let x_1641 : f32 = x_1604.x_AdditionalLightsAttenuation[x_1639].x;
    u_xlat48 = (x_1638 * x_1641);
    let x_1643 : f32 = u_xlat48;
    let x_1645 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1643) * x_1645) + 1.0f);
    let x_1648 : f32 = u_xlat48;
    u_xlat48 = max(x_1648, 0.0f);
    let x_1650 : f32 = u_xlat48;
    let x_1651 : f32 = u_xlat48;
    u_xlat48 = (x_1650 * x_1651);
    let x_1653 : f32 = u_xlat48;
    let x_1654 : f32 = u_xlat50;
    u_xlat48 = (x_1653 * x_1654);
    let x_1656 : i32 = u_xlati34;
    let x_1658 : vec4<f32> = x_1604.x_AdditionalLightsSpotDir[x_1656];
    let x_1660 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1658.x, x_1658.y, x_1658.z), vec3<f32>(x_1660.x, x_1660.y, x_1660.z));
    let x_1663 : f32 = u_xlat50;
    let x_1664 : i32 = u_xlati34;
    let x_1666 : f32 = x_1604.x_AdditionalLightsAttenuation[x_1664].z;
    let x_1668 : i32 = u_xlati34;
    let x_1670 : f32 = x_1604.x_AdditionalLightsAttenuation[x_1668].w;
    u_xlat50 = ((x_1663 * x_1666) + x_1670);
    let x_1672 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1672, 0.0f, 1.0f);
    let x_1674 : f32 = u_xlat50;
    let x_1675 : f32 = u_xlat50;
    u_xlat50 = (x_1674 * x_1675);
    let x_1677 : f32 = u_xlat48;
    let x_1678 : f32 = u_xlat50;
    u_xlat48 = (x_1677 * x_1678);
    let x_1681 : i32 = u_xlati34;
    let x_1683 : f32 = x_1012.x_AdditionalShadowParams[x_1681].w;
    u_xlati50 = i32(x_1683);
    let x_1686 : i32 = u_xlati50;
    u_xlatb51 = (x_1686 >= 0i);
    let x_1688 : bool = u_xlatb51;
    if (x_1688) {
      let x_1692 : i32 = u_xlati34;
      let x_1694 : f32 = x_1012.x_AdditionalShadowParams[x_1692].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1694, x_1694, x_1694, x_1694))));
      let x_1698 : bool = u_xlatb51;
      if (x_1698) {
        let x_1703 : vec4<f32> = u_xlat10;
        let x_1706 : vec4<f32> = u_xlat10;
        let x_1709 : vec4<bool> = (abs(vec4<f32>(x_1703.z, x_1703.z, x_1703.y, x_1703.z)) >= abs(vec4<f32>(x_1706.x, x_1706.y, x_1706.x, x_1706.x)));
        let x_1711 : vec3<bool> = vec3<bool>(x_1709.x, x_1709.y, x_1709.z);
        let x_1712 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
        let x_1715 : bool = u_xlatb11.y;
        let x_1717 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1715 & x_1717);
        let x_1719 : vec4<f32> = u_xlat10;
        let x_1722 : vec4<bool> = (-(vec4<f32>(x_1719.z, x_1719.y, x_1719.z, x_1719.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1723 : vec3<bool> = vec3<bool>(x_1722.x, x_1722.y, x_1722.w);
        let x_1724 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1723.x, x_1723.y, x_1724.z, x_1723.z);
        let x_1727 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1727);
        let x_1732 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1732);
        let x_1738 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1738);
        let x_1741 : bool = u_xlatb11.z;
        if (x_1741) {
          let x_1746 : f32 = u_xlat11.y;
          x_1742 = x_1746;
        } else {
          let x_1748 : f32 = u_xlat52;
          x_1742 = x_1748;
        }
        let x_1749 : f32 = x_1742;
        u_xlat52 = x_1749;
        let x_1751 : bool = u_xlatb51;
        if (x_1751) {
          let x_1756 : f32 = u_xlat11.x;
          x_1752 = x_1756;
        } else {
          let x_1758 : f32 = u_xlat52;
          x_1752 = x_1758;
        }
        let x_1759 : f32 = x_1752;
        u_xlat51 = x_1759;
        let x_1760 : i32 = u_xlati34;
        let x_1762 : f32 = x_1012.x_AdditionalShadowParams[x_1760].w;
        u_xlat52 = trunc(x_1762);
        let x_1764 : f32 = u_xlat51;
        let x_1765 : f32 = u_xlat52;
        u_xlat51 = (x_1764 + x_1765);
        let x_1767 : f32 = u_xlat51;
        u_xlati50 = i32(x_1767);
      }
      let x_1769 : i32 = u_xlati50;
      u_xlati50 = (x_1769 << bitcast<u32>(2i));
      let x_1771 : vec3<f32> = vs_TEXCOORD7;
      let x_1773 : i32 = u_xlati50;
      let x_1776 : i32 = u_xlati50;
      let x_1780 : vec4<f32> = x_1012.x_AdditionalLightsWorldToShadow[((x_1773 + 1i) / 4i)][((x_1776 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1771.y, x_1771.y, x_1771.y, x_1771.y) * x_1780);
      let x_1782 : i32 = u_xlati50;
      let x_1784 : i32 = u_xlati50;
      let x_1787 : vec4<f32> = x_1012.x_AdditionalLightsWorldToShadow[(x_1782 / 4i)][(x_1784 % 4i)];
      let x_1788 : vec3<f32> = vs_TEXCOORD7;
      let x_1791 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1787 * vec4<f32>(x_1788.x, x_1788.x, x_1788.x, x_1788.x)) + x_1791);
      let x_1793 : i32 = u_xlati50;
      let x_1796 : i32 = u_xlati50;
      let x_1800 : vec4<f32> = x_1012.x_AdditionalLightsWorldToShadow[((x_1793 + 2i) / 4i)][((x_1796 + 2i) % 4i)];
      let x_1801 : vec3<f32> = vs_TEXCOORD7;
      let x_1804 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1800 * vec4<f32>(x_1801.z, x_1801.z, x_1801.z, x_1801.z)) + x_1804);
      let x_1806 : vec4<f32> = u_xlat11;
      let x_1807 : i32 = u_xlati50;
      let x_1810 : i32 = u_xlati50;
      let x_1814 : vec4<f32> = x_1012.x_AdditionalLightsWorldToShadow[((x_1807 + 3i) / 4i)][((x_1810 + 3i) % 4i)];
      u_xlat11 = (x_1806 + x_1814);
      let x_1816 : vec4<f32> = u_xlat11;
      let x_1818 : vec4<f32> = u_xlat11;
      let x_1820 : vec3<f32> = (vec3<f32>(x_1816.x, x_1816.y, x_1816.z) / vec3<f32>(x_1818.w, x_1818.w, x_1818.w));
      let x_1821 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1820.x, x_1820.y, x_1820.z, x_1821.w);
      let x_1824 : vec4<f32> = u_xlat11;
      let x_1825 : vec2<f32> = vec2<f32>(x_1824.x, x_1824.y);
      let x_1827 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1825.x, x_1825.y, x_1827);
      let x_1835 : vec3<f32> = txVec1;
      let x_1837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1835.xy, x_1835.z);
      u_xlat50 = x_1837;
      let x_1838 : i32 = u_xlati34;
      let x_1840 : f32 = x_1012.x_AdditionalShadowParams[x_1838].x;
      u_xlat51 = (1.0f + -(x_1840));
      let x_1843 : f32 = u_xlat50;
      let x_1844 : i32 = u_xlati34;
      let x_1846 : f32 = x_1012.x_AdditionalShadowParams[x_1844].x;
      let x_1848 : f32 = u_xlat51;
      u_xlat50 = ((x_1843 * x_1846) + x_1848);
      let x_1851 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1851);
      let x_1855 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1855 >= 1.0f);
      let x_1857 : bool = u_xlatb51;
      let x_1858 : bool = u_xlatb52;
      u_xlatb51 = (x_1857 | x_1858);
      let x_1860 : bool = u_xlatb51;
      let x_1861 : f32 = u_xlat50;
      u_xlat50 = select(x_1861, 1.0f, x_1860);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1864 : f32 = u_xlat50;
    u_xlat51 = (-(x_1864) + 1.0f);
    let x_1868 : f32 = u_xlat3.x;
    let x_1869 : f32 = u_xlat51;
    let x_1871 : f32 = u_xlat50;
    u_xlat50 = ((x_1868 * x_1869) + x_1871);
    let x_1874 : i32 = u_xlati34;
    u_xlati51 = (1i << bitcast<u32>((x_1874 & 31i)));
    let x_1877 : i32 = u_xlati51;
    let x_1880 : f32 = x_1095.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1877) & bitcast<u32>(x_1880)));
    let x_1884 : i32 = u_xlati51;
    if ((x_1884 != 0i)) {
      let x_1888 : i32 = u_xlati34;
      let x_1890 : f32 = x_1095.x_AdditionalLightsLightTypes[x_1888].el;
      u_xlati51 = i32(x_1890);
      let x_1893 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1893 != 0i));
      let x_1897 : i32 = u_xlati34;
      u_xlati11 = (x_1897 << bitcast<u32>(2i));
      let x_1899 : i32 = u_xlati52;
      if ((x_1899 != 0i)) {
        let x_1904 : vec3<f32> = vs_TEXCOORD7;
        let x_1906 : i32 = u_xlati11;
        let x_1909 : i32 = u_xlati11;
        let x_1913 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[((x_1906 + 1i) / 4i)][((x_1909 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1904.y, x_1904.y, x_1904.y) * vec3<f32>(x_1913.x, x_1913.y, x_1913.w));
        let x_1916 : i32 = u_xlati11;
        let x_1918 : i32 = u_xlati11;
        let x_1921 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[(x_1916 / 4i)][(x_1918 % 4i)];
        let x_1923 : vec3<f32> = vs_TEXCOORD7;
        let x_1926 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1921.x, x_1921.y, x_1921.w) * vec3<f32>(x_1923.x, x_1923.x, x_1923.x)) + x_1926);
        let x_1928 : i32 = u_xlati11;
        let x_1931 : i32 = u_xlati11;
        let x_1935 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[((x_1928 + 2i) / 4i)][((x_1931 + 2i) % 4i)];
        let x_1937 : vec3<f32> = vs_TEXCOORD7;
        let x_1940 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1935.x, x_1935.y, x_1935.w) * vec3<f32>(x_1937.z, x_1937.z, x_1937.z)) + x_1940);
        let x_1942 : vec3<f32> = u_xlat25;
        let x_1943 : i32 = u_xlati11;
        let x_1946 : i32 = u_xlati11;
        let x_1950 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[((x_1943 + 3i) / 4i)][((x_1946 + 3i) % 4i)];
        u_xlat25 = (x_1942 + vec3<f32>(x_1950.x, x_1950.y, x_1950.w));
        let x_1953 : vec3<f32> = u_xlat25;
        let x_1955 : vec3<f32> = u_xlat25;
        let x_1957 : vec2<f32> = (vec2<f32>(x_1953.x, x_1953.y) / vec2<f32>(x_1955.z, x_1955.z));
        let x_1958 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1957.x, x_1957.y, x_1958.z);
        let x_1960 : vec3<f32> = u_xlat25;
        let x_1963 : vec2<f32> = ((vec2<f32>(x_1960.x, x_1960.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1964 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1963.x, x_1963.y, x_1964.z);
        let x_1966 : vec3<f32> = u_xlat25;
        let x_1970 : vec2<f32> = clamp(vec2<f32>(x_1966.x, x_1966.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1971 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1970.x, x_1970.y, x_1971.z);
        let x_1973 : i32 = u_xlati34;
        let x_1975 : vec4<f32> = x_1095.x_AdditionalLightsCookieAtlasUVRects[x_1973];
        let x_1977 : vec3<f32> = u_xlat25;
        let x_1980 : i32 = u_xlati34;
        let x_1982 : vec4<f32> = x_1095.x_AdditionalLightsCookieAtlasUVRects[x_1980];
        let x_1984 : vec2<f32> = ((vec2<f32>(x_1975.x, x_1975.y) * vec2<f32>(x_1977.x, x_1977.y)) + vec2<f32>(x_1982.z, x_1982.w));
        let x_1985 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1984.x, x_1984.y, x_1985.z);
      } else {
        let x_1988 : i32 = u_xlati51;
        u_xlatb51 = (x_1988 == 1i);
        let x_1990 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1990);
        let x_1992 : i32 = u_xlati51;
        if ((x_1992 != 0i)) {
          let x_1996 : vec3<f32> = vs_TEXCOORD7;
          let x_1998 : i32 = u_xlati11;
          let x_2001 : i32 = u_xlati11;
          let x_2005 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[((x_1998 + 1i) / 4i)][((x_2001 + 1i) % 4i)];
          let x_2007 : vec2<f32> = (vec2<f32>(x_1996.y, x_1996.y) * vec2<f32>(x_2005.x, x_2005.y));
          let x_2008 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2007.x, x_2007.y, x_2008.z, x_2008.w);
          let x_2010 : i32 = u_xlati11;
          let x_2012 : i32 = u_xlati11;
          let x_2015 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[(x_2010 / 4i)][(x_2012 % 4i)];
          let x_2017 : vec3<f32> = vs_TEXCOORD7;
          let x_2020 : vec4<f32> = u_xlat12;
          let x_2022 : vec2<f32> = ((vec2<f32>(x_2015.x, x_2015.y) * vec2<f32>(x_2017.x, x_2017.x)) + vec2<f32>(x_2020.x, x_2020.y));
          let x_2023 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2022.x, x_2022.y, x_2023.z, x_2023.w);
          let x_2025 : i32 = u_xlati11;
          let x_2028 : i32 = u_xlati11;
          let x_2032 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[((x_2025 + 2i) / 4i)][((x_2028 + 2i) % 4i)];
          let x_2034 : vec3<f32> = vs_TEXCOORD7;
          let x_2037 : vec4<f32> = u_xlat12;
          let x_2039 : vec2<f32> = ((vec2<f32>(x_2032.x, x_2032.y) * vec2<f32>(x_2034.z, x_2034.z)) + vec2<f32>(x_2037.x, x_2037.y));
          let x_2040 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2039.x, x_2039.y, x_2040.z, x_2040.w);
          let x_2042 : vec4<f32> = u_xlat12;
          let x_2044 : i32 = u_xlati11;
          let x_2047 : i32 = u_xlati11;
          let x_2051 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[((x_2044 + 3i) / 4i)][((x_2047 + 3i) % 4i)];
          let x_2053 : vec2<f32> = (vec2<f32>(x_2042.x, x_2042.y) + vec2<f32>(x_2051.x, x_2051.y));
          let x_2054 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2053.x, x_2053.y, x_2054.z, x_2054.w);
          let x_2056 : vec4<f32> = u_xlat12;
          let x_2059 : vec2<f32> = ((vec2<f32>(x_2056.x, x_2056.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2060 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2059.x, x_2059.y, x_2060.z, x_2060.w);
          let x_2062 : vec4<f32> = u_xlat12;
          let x_2064 : vec2<f32> = fract(vec2<f32>(x_2062.x, x_2062.y));
          let x_2065 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2064.x, x_2064.y, x_2065.z, x_2065.w);
          let x_2067 : i32 = u_xlati34;
          let x_2069 : vec4<f32> = x_1095.x_AdditionalLightsCookieAtlasUVRects[x_2067];
          let x_2071 : vec4<f32> = u_xlat12;
          let x_2074 : i32 = u_xlati34;
          let x_2076 : vec4<f32> = x_1095.x_AdditionalLightsCookieAtlasUVRects[x_2074];
          let x_2078 : vec2<f32> = ((vec2<f32>(x_2069.x, x_2069.y) * vec2<f32>(x_2071.x, x_2071.y)) + vec2<f32>(x_2076.z, x_2076.w));
          let x_2079 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2078.x, x_2078.y, x_2079.z);
        } else {
          let x_2082 : vec3<f32> = vs_TEXCOORD7;
          let x_2084 : i32 = u_xlati11;
          let x_2087 : i32 = u_xlati11;
          let x_2091 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[((x_2084 + 1i) / 4i)][((x_2087 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2082.y, x_2082.y, x_2082.y, x_2082.y) * x_2091);
          let x_2093 : i32 = u_xlati11;
          let x_2095 : i32 = u_xlati11;
          let x_2098 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[(x_2093 / 4i)][(x_2095 % 4i)];
          let x_2099 : vec3<f32> = vs_TEXCOORD7;
          let x_2102 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2098 * vec4<f32>(x_2099.x, x_2099.x, x_2099.x, x_2099.x)) + x_2102);
          let x_2104 : i32 = u_xlati11;
          let x_2107 : i32 = u_xlati11;
          let x_2111 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[((x_2104 + 2i) / 4i)][((x_2107 + 2i) % 4i)];
          let x_2112 : vec3<f32> = vs_TEXCOORD7;
          let x_2115 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2111 * vec4<f32>(x_2112.z, x_2112.z, x_2112.z, x_2112.z)) + x_2115);
          let x_2117 : vec4<f32> = u_xlat12;
          let x_2118 : i32 = u_xlati11;
          let x_2121 : i32 = u_xlati11;
          let x_2125 : vec4<f32> = x_1095.x_AdditionalLightsWorldToLights[((x_2118 + 3i) / 4i)][((x_2121 + 3i) % 4i)];
          u_xlat12 = (x_2117 + x_2125);
          let x_2127 : vec4<f32> = u_xlat12;
          let x_2129 : vec4<f32> = u_xlat12;
          let x_2131 : vec3<f32> = (vec3<f32>(x_2127.x, x_2127.y, x_2127.z) / vec3<f32>(x_2129.w, x_2129.w, x_2129.w));
          let x_2132 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
          let x_2134 : vec4<f32> = u_xlat12;
          let x_2136 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2134.x, x_2134.y, x_2134.z), vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
          let x_2139 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2139);
          let x_2141 : f32 = u_xlat51;
          let x_2143 : vec4<f32> = u_xlat12;
          let x_2145 : vec3<f32> = (vec3<f32>(x_2141, x_2141, x_2141) * vec3<f32>(x_2143.x, x_2143.y, x_2143.z));
          let x_2146 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2145.x, x_2145.y, x_2145.z, x_2146.w);
          let x_2148 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2148.x, x_2148.y, x_2148.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2153 : f32 = u_xlat51;
          u_xlat51 = max(x_2153, 0.00000099999999747524f);
          let x_2156 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2156);
          let x_2158 : f32 = u_xlat51;
          let x_2160 : vec4<f32> = u_xlat12;
          let x_2162 : vec3<f32> = (vec3<f32>(x_2158, x_2158, x_2158) * vec3<f32>(x_2160.z, x_2160.x, x_2160.y));
          let x_2163 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
          let x_2166 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2166);
          let x_2170 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2170, 0.0f, 1.0f);
          let x_2173 : vec4<f32> = u_xlat13;
          let x_2175 : vec4<bool> = (vec4<f32>(x_2173.y, x_2173.y, x_2173.y, x_2173.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2176 : vec2<bool> = vec2<bool>(x_2175.x, x_2175.w);
          let x_2177 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2176.x, x_2177.y, x_2177.z, x_2176.y);
          let x_2180 : bool = u_xlatb11.x;
          if (x_2180) {
            let x_2185 : f32 = u_xlat13.x;
            x_2181 = x_2185;
          } else {
            let x_2188 : f32 = u_xlat13.x;
            x_2181 = -(x_2188);
          }
          let x_2190 : f32 = x_2181;
          u_xlat11.x = x_2190;
          let x_2193 : bool = u_xlatb11.w;
          if (x_2193) {
            let x_2198 : f32 = u_xlat13.x;
            x_2194 = x_2198;
          } else {
            let x_2201 : f32 = u_xlat13.x;
            x_2194 = -(x_2201);
          }
          let x_2203 : f32 = x_2194;
          u_xlat11.w = x_2203;
          let x_2205 : vec4<f32> = u_xlat12;
          let x_2207 : f32 = u_xlat51;
          let x_2210 : vec4<f32> = u_xlat11;
          let x_2212 : vec2<f32> = ((vec2<f32>(x_2205.x, x_2205.y) * vec2<f32>(x_2207, x_2207)) + vec2<f32>(x_2210.x, x_2210.w));
          let x_2213 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2212.x, x_2213.y, x_2213.z, x_2212.y);
          let x_2215 : vec4<f32> = u_xlat11;
          let x_2218 : vec2<f32> = ((vec2<f32>(x_2215.x, x_2215.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2219 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2218.x, x_2219.y, x_2219.z, x_2218.y);
          let x_2221 : vec4<f32> = u_xlat11;
          let x_2225 : vec2<f32> = clamp(vec2<f32>(x_2221.x, x_2221.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2226 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2225.x, x_2226.y, x_2226.z, x_2225.y);
          let x_2228 : i32 = u_xlati34;
          let x_2230 : vec4<f32> = x_1095.x_AdditionalLightsCookieAtlasUVRects[x_2228];
          let x_2232 : vec4<f32> = u_xlat11;
          let x_2235 : i32 = u_xlati34;
          let x_2237 : vec4<f32> = x_1095.x_AdditionalLightsCookieAtlasUVRects[x_2235];
          let x_2239 : vec2<f32> = ((vec2<f32>(x_2230.x, x_2230.y) * vec2<f32>(x_2232.x, x_2232.w)) + vec2<f32>(x_2237.z, x_2237.w));
          let x_2240 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2239.x, x_2239.y, x_2240.z);
        }
      }
      let x_2247 : vec3<f32> = u_xlat25;
      let x_2249 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2247.x, x_2247.y), 0.0f);
      u_xlat11 = x_2249;
      let x_2251 : bool = u_xlatb6.y;
      if (x_2251) {
        let x_2256 : f32 = u_xlat11.w;
        x_2252 = x_2256;
      } else {
        let x_2259 : f32 = u_xlat11.x;
        x_2252 = x_2259;
      }
      let x_2260 : f32 = x_2252;
      u_xlat51 = x_2260;
      let x_2262 : bool = u_xlatb6.x;
      if (x_2262) {
        let x_2266 : vec4<f32> = u_xlat11;
        x_2263 = vec3<f32>(x_2266.x, x_2266.y, x_2266.z);
      } else {
        let x_2269 : f32 = u_xlat51;
        x_2263 = vec3<f32>(x_2269, x_2269, x_2269);
      }
      let x_2271 : vec3<f32> = x_2263;
      let x_2272 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2278 : vec4<f32> = u_xlat11;
    let x_2280 : i32 = u_xlati34;
    let x_2282 : vec4<f32> = x_1604.x_AdditionalLightsColor[x_2280];
    let x_2284 : vec3<f32> = (vec3<f32>(x_2278.x, x_2278.y, x_2278.z) * vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
    let x_2285 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
    let x_2287 : f32 = u_xlat48;
    let x_2288 : f32 = u_xlat50;
    u_xlat34.x = (x_2287 * x_2288);
    let x_2291 : vec4<f32> = u_xlat1;
    let x_2293 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2291.x, x_2291.y, x_2291.z), vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
    let x_2296 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2296, 0.0f, 1.0f);
    let x_2298 : f32 = u_xlat48;
    let x_2300 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2298 * x_2300);
    let x_2303 : vec2<f32> = u_xlat34;
    let x_2305 : vec4<f32> = u_xlat11;
    let x_2307 : vec3<f32> = (vec3<f32>(x_2303.x, x_2303.x, x_2303.x) * vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
    let x_2308 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
    let x_2310 : vec4<f32> = u_xlat9;
    let x_2312 : f32 = u_xlat49;
    let x_2315 : vec4<f32> = u_xlat7;
    let x_2317 : vec3<f32> = ((vec3<f32>(x_2310.x, x_2310.y, x_2310.z) * vec3<f32>(x_2312, x_2312, x_2312)) + vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
    let x_2318 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
    let x_2320 : vec4<f32> = u_xlat9;
    let x_2322 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2320.x, x_2320.y, x_2320.z), vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
    let x_2327 : f32 = u_xlat34.x;
    u_xlat34.x = max(x_2327, 1.17549435e-38f);
    let x_2331 : f32 = u_xlat34.x;
    u_xlat34.x = inverseSqrt(x_2331);
    let x_2334 : vec2<f32> = u_xlat34;
    let x_2336 : vec4<f32> = u_xlat9;
    let x_2338 : vec3<f32> = (vec3<f32>(x_2334.x, x_2334.x, x_2334.x) * vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
    let x_2339 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
    let x_2341 : vec4<f32> = u_xlat1;
    let x_2343 : vec4<f32> = u_xlat9;
    u_xlat34.x = dot(vec3<f32>(x_2341.x, x_2341.y, x_2341.z), vec3<f32>(x_2343.x, x_2343.y, x_2343.z));
    let x_2348 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_2348, 0.0f, 1.0f);
    let x_2351 : vec4<f32> = u_xlat10;
    let x_2353 : vec4<f32> = u_xlat9;
    u_xlat34.y = dot(vec3<f32>(x_2351.x, x_2351.y, x_2351.z), vec3<f32>(x_2353.x, x_2353.y, x_2353.z));
    let x_2358 : f32 = u_xlat34.y;
    u_xlat34.y = clamp(x_2358, 0.0f, 1.0f);
    let x_2361 : vec2<f32> = u_xlat34;
    let x_2362 : vec2<f32> = u_xlat34;
    u_xlat34 = (x_2361 * x_2362);
    let x_2365 : f32 = u_xlat34.x;
    let x_2367 : f32 = u_xlat0.x;
    u_xlat34.x = ((x_2365 * x_2367) + 1.00001001358032226562f);
    let x_2372 : f32 = u_xlat34.x;
    let x_2374 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2372 * x_2374);
    let x_2378 : f32 = u_xlat34.y;
    u_xlat48 = max(x_2378, 0.10000000149011611938f);
    let x_2380 : f32 = u_xlat48;
    let x_2382 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2380 * x_2382);
    let x_2385 : f32 = u_xlat46;
    let x_2387 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2385 * x_2387);
    let x_2390 : f32 = u_xlat44;
    let x_2392 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2390 / x_2392);
    let x_2395 : vec4<f32> = u_xlat4;
    let x_2397 : vec2<f32> = u_xlat34;
    let x_2400 : vec3<f32> = u_xlat17;
    let x_2401 : vec3<f32> = ((vec3<f32>(x_2395.x, x_2395.y, x_2395.z) * vec3<f32>(x_2397.x, x_2397.x, x_2397.x)) + x_2400);
    let x_2402 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
    let x_2404 : vec4<f32> = u_xlat9;
    let x_2406 : vec4<f32> = u_xlat11;
    let x_2409 : vec4<f32> = u_xlat8;
    let x_2411 : vec3<f32> = ((vec3<f32>(x_2404.x, x_2404.y, x_2404.z) * vec3<f32>(x_2406.x, x_2406.y, x_2406.z)) + vec3<f32>(x_2409.x, x_2409.y, x_2409.z));
    let x_2412 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);

    continuing {
      let x_2414 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2414 + bitcast<u32>(1i));
    }
  }
  let x_2416 : vec4<f32> = u_xlat2;
  let x_2418 : f32 = u_xlat14;
  let x_2421 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_2416.x, x_2416.y, x_2416.z) * vec3<f32>(x_2418, x_2418, x_2418)) + vec3<f32>(x_2421.x, x_2421.z, x_2421.w));
  let x_2424 : vec4<f32> = u_xlat8;
  let x_2426 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2424.x, x_2424.y, x_2424.z) + x_2426);
  let x_2428 : f32 = u_xlat43;
  let x_2429 : f32 = u_xlat43;
  u_xlat1.x = (x_2428 * -(x_2429));
  let x_2434 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2434);
  let x_2437 : vec3<f32> = u_xlat0;
  let x_2438 : f32 = u_xlat42;
  let x_2442 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_2437 * vec3<f32>(x_2438, x_2438, x_2438)) + -(vec3<f32>(x_2442.x, x_2442.y, x_2442.z)));
  let x_2448 : vec4<f32> = u_xlat1;
  let x_2450 : vec3<f32> = u_xlat0;
  let x_2453 : vec4<f32> = x_113.unity_FogColor;
  let x_2455 : vec3<f32> = ((vec3<f32>(x_2448.x, x_2448.x, x_2448.x) * x_2450) + vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
  let x_2456 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


