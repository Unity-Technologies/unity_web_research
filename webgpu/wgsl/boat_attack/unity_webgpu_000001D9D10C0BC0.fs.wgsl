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
}

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_13 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_110 : PGlobals;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

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

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_837 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_995 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : vec2<bool>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

@group(1) @binding(5) var<uniform> x_1071 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu0 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu46 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlati46 : i32;

@group(1) @binding(1) var<uniform> x_1568 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu43 : u32;

var<private> u_xlatb46 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1154 : f32;
  var x_1165 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1723 : f32;
  var x_1732 : f32;
  var txVec1 : vec3<f32>;
  var x_2153 : f32;
  var x_2166 : f32;
  var x_2214 : f32;
  var x_2225 : vec3<f32>;
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
  u_xlat2 = ((vec3<f32>(x_45.x, x_45.y, x_45.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_50.x, x_50.y, x_50.w));
  let x_56 : vec4<f32> = x_13.x_MaskMapRemapScale3;
  let x_61 : vec4<f32> = x_13.x_MaskMapRemapOffset3;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.w, x_56.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_61.x, x_61.w, x_61.y));
  let x_64 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_63.z);
  let x_70 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_74 : vec2<f32> = (vec2<f32>(x_70.z, x_70.w) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_79 : vec4<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = u_xlat4;
  let x_85 : vec2<f32> = ((vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(0.5f, 0.5f));
  let x_86 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat4;
  let x_91 : vec4<f32> = x_13.x_Control_TexelSize;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_91.x, x_91.y));
  let x_94 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_106 : vec4<f32> = u_xlat4;
  let x_116 : f32 = x_110.x_GlobalMipBias.x;
  let x_117 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_106.x, x_106.y), x_116);
  u_xlat4 = x_117;
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_120, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_131 : vec4<f32> = vs_TEXCOORD1;
  let x_134 : f32 = x_110.x_GlobalMipBias.x;
  let x_135 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_131.x, x_131.y), x_134);
  u_xlat5 = x_135;
  let x_141 : vec4<f32> = vs_TEXCOORD1;
  let x_144 : f32 = x_110.x_GlobalMipBias.x;
  let x_145 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_141.z, x_141.w), x_144);
  u_xlat6 = x_145;
  let x_152 : vec4<f32> = vs_TEXCOORD2;
  let x_155 : f32 = x_110.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_152.x, x_152.y), x_155);
  u_xlat7 = x_156;
  let x_162 : vec4<f32> = vs_TEXCOORD2;
  let x_165 : f32 = x_110.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_162.z, x_162.w), x_165);
  u_xlat8 = x_166;
  let x_170 : f32 = u_xlat5.w;
  u_xlat9.x = x_170;
  let x_173 : f32 = u_xlat6.w;
  u_xlat9.y = x_173;
  let x_177 : f32 = u_xlat7.w;
  u_xlat9.z = x_177;
  let x_181 : f32 = u_xlat8.w;
  u_xlat9.w = x_181;
  let x_184 : vec4<f32> = u_xlat9;
  let x_187 : f32 = x_13.x_Smoothness0;
  let x_190 : f32 = x_13.x_Smoothness1;
  let x_193 : f32 = x_13.x_Smoothness2;
  let x_196 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_184 * vec4<f32>(x_187, x_190, x_193, x_196));
  let x_205 : f32 = x_13.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_205);
  let x_208 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_208) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_211 : vec4<f32> = u_xlat9;
  let x_212 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_211 + -(x_212));
  let x_215 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_215 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_219 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_219, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat4;
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_224 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_228);
  let x_231 : vec4<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_231 + -(x_232));
  let x_237 : f32 = u_xlat12.x;
  let x_240 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_237 * x_240);
  let x_244 : f32 = u_xlat12.y;
  let x_247 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_244 * x_247);
  let x_251 : f32 = u_xlat12.z;
  let x_254 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_251 * x_254);
  let x_258 : f32 = u_xlat12.w;
  let x_261 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_258 * x_261);
  let x_264 : vec4<f32> = u_xlat11;
  let x_265 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_264 + x_265);
  let x_267 : bool = u_xlatb43;
  let x_268 : vec4<f32> = u_xlat11;
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_269, x_268, vec4<bool>(x_267, x_267, x_267, x_267));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_274, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_278 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_278);
  let x_280 : bool = u_xlatb44;
  if (((select(0i, 1i, x_280) * -1i) != 0i)) {
    discard;
  }
  let x_289 : f32 = u_xlat43;
  u_xlat43 = (x_289 + 0.00006103515625f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat43;
  u_xlat4 = (x_292 / vec4<f32>(x_293, x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat12;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat11;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.z, x_329.z, x_329.z) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.w, x_347.w, x_347.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_370 : vec4<f32> = vs_TEXCOORD1;
  let x_373 : f32 = x_110.x_GlobalMipBias.x;
  let x_374 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_370.x, x_370.y), x_373);
  let x_375 : vec3<f32> = vec3<f32>(x_374.x, x_374.y, x_374.w);
  let x_376 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = u_xlat6.x;
  let x_381 : f32 = u_xlat6.z;
  u_xlat6.x = (x_379 * x_381);
  let x_384 : vec4<f32> = u_xlat6;
  let x_389 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat6;
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_392.x, x_392.y), vec2<f32>(x_394.x, x_394.y));
  let x_397 : f32 = u_xlat43;
  u_xlat43 = min(x_397, 1.0f);
  let x_399 : f32 = u_xlat43;
  u_xlat43 = (-(x_399) + 1.0f);
  let x_402 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_402);
  let x_404 : f32 = u_xlat43;
  u_xlat7.z = max(x_404, 0.0000000000000001f);
  let x_408 : vec4<f32> = u_xlat6;
  let x_411 : f32 = x_13.x_NormalScale0;
  let x_413 : vec2<f32> = (vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_411, x_411));
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_420 : vec4<f32> = vs_TEXCOORD1;
  let x_423 : f32 = x_110.x_GlobalMipBias.x;
  let x_424 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_420.z, x_420.w), x_423);
  let x_425 : vec3<f32> = vec3<f32>(x_424.x, x_424.y, x_424.w);
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = u_xlat6.x;
  let x_431 : f32 = u_xlat6.z;
  u_xlat6.x = (x_429 * x_431);
  let x_434 : vec4<f32> = u_xlat6;
  let x_437 : vec2<f32> = ((vec2<f32>(x_434.x, x_434.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_438 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat6;
  let x_442 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_440.x, x_440.y), vec2<f32>(x_442.x, x_442.y));
  let x_445 : f32 = u_xlat43;
  u_xlat43 = min(x_445, 1.0f);
  let x_447 : f32 = u_xlat43;
  u_xlat43 = (-(x_447) + 1.0f);
  let x_450 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_450);
  let x_452 : f32 = u_xlat43;
  u_xlat8.z = max(x_452, 0.0000000000000001f);
  let x_455 : vec4<f32> = u_xlat6;
  let x_458 : f32 = x_13.x_NormalScale1;
  let x_460 : f32 = x_13.x_NormalScale1;
  let x_461 : vec2<f32> = vec2<f32>(x_458, x_460);
  let x_465 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) * vec2<f32>(x_461.x, x_461.y));
  let x_466 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat4;
  let x_470 : vec4<f32> = u_xlat8;
  let x_472 : vec3<f32> = (vec3<f32>(x_468.y, x_468.y, x_468.y) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : vec4<f32> = u_xlat6;
  let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.x, x_475.x) * vec3<f32>(x_477.x, x_477.y, x_477.z)) + vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_489 : vec4<f32> = vs_TEXCOORD2;
  let x_492 : f32 = x_110.x_GlobalMipBias.x;
  let x_493 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_489.x, x_489.y), x_492);
  let x_494 : vec3<f32> = vec3<f32>(x_493.x, x_493.y, x_493.w);
  let x_495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_498 : f32 = u_xlat7.x;
  let x_500 : f32 = u_xlat7.z;
  u_xlat7.x = (x_498 * x_500);
  let x_503 : vec4<f32> = u_xlat7;
  let x_506 : vec2<f32> = ((vec2<f32>(x_503.x, x_503.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat7;
  let x_511 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_509.x, x_509.y), vec2<f32>(x_511.x, x_511.y));
  let x_514 : f32 = u_xlat43;
  u_xlat43 = min(x_514, 1.0f);
  let x_516 : f32 = u_xlat43;
  u_xlat43 = (-(x_516) + 1.0f);
  let x_519 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_519);
  let x_521 : f32 = u_xlat43;
  u_xlat8.z = max(x_521, 0.0000000000000001f);
  let x_524 : vec4<f32> = u_xlat7;
  let x_528 : f32 = x_13.x_NormalScale2;
  let x_530 : f32 = x_13.x_NormalScale2;
  let x_531 : vec2<f32> = vec2<f32>(x_528, x_530);
  let x_535 : vec2<f32> = (vec2<f32>(x_524.x, x_524.y) * vec2<f32>(x_531.x, x_531.y));
  let x_536 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat8;
  let x_543 : vec4<f32> = u_xlat6;
  let x_545 : vec3<f32> = ((vec3<f32>(x_538.z, x_538.z, x_538.z) * vec3<f32>(x_540.x, x_540.y, x_540.z)) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_552 : vec4<f32> = vs_TEXCOORD2;
  let x_555 : f32 = x_110.x_GlobalMipBias.x;
  let x_556 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_552.z, x_552.w), x_555);
  let x_557 : vec3<f32> = vec3<f32>(x_556.x, x_556.y, x_556.w);
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : f32 = u_xlat7.x;
  let x_563 : f32 = u_xlat7.z;
  u_xlat7.x = (x_561 * x_563);
  let x_566 : vec4<f32> = u_xlat7;
  let x_569 : vec2<f32> = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
  let x_572 : vec4<f32> = u_xlat7;
  let x_574 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_572.x, x_572.y), vec2<f32>(x_574.x, x_574.y));
  let x_577 : f32 = u_xlat43;
  u_xlat43 = min(x_577, 1.0f);
  let x_579 : f32 = u_xlat43;
  u_xlat43 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_582);
  let x_584 : f32 = u_xlat43;
  u_xlat8.z = max(x_584, 0.0000000000000001f);
  let x_587 : vec4<f32> = u_xlat7;
  let x_591 : f32 = x_13.x_NormalScale3;
  let x_593 : f32 = x_13.x_NormalScale3;
  let x_594 : vec2<f32> = vec2<f32>(x_591, x_593);
  let x_598 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_594.x, x_594.y));
  let x_599 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat4;
  let x_603 : vec4<f32> = u_xlat8;
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec3<f32> = ((vec3<f32>(x_601.w, x_601.w, x_601.w) * vec3<f32>(x_603.x, x_603.y, x_603.z)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : f32 = u_xlat6.z;
  u_xlat6.w = (x_612 + 0.00000999999974737875f);
  let x_616 : vec4<f32> = u_xlat6;
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_616.x, x_616.y, x_616.w), vec3<f32>(x_618.x, x_618.y, x_618.w));
  let x_621 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_621);
  let x_623 : f32 = u_xlat43;
  let x_625 : vec4<f32> = u_xlat6;
  let x_627 : vec3<f32> = (vec3<f32>(x_623, x_623, x_623) * vec3<f32>(x_625.x, x_625.y, x_625.w));
  let x_628 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_631;
  let x_634 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_640;
  let x_643 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_643;
  let x_646 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_646;
  let x_649 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_649;
  let x_652 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_652;
  let x_654 : vec4<f32> = u_xlat7;
  let x_655 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_654 + x_655);
  let x_658 : f32 = u_xlat0.z;
  u_xlat8.x = x_658;
  let x_661 : f32 = u_xlat1.z;
  u_xlat8.y = x_661;
  let x_664 : f32 = u_xlat2.z;
  u_xlat8.z = x_664;
  let x_667 : f32 = u_xlat3.y;
  u_xlat8.w = x_667;
  let x_669 : vec4<f32> = u_xlat9;
  let x_672 : f32 = x_13.x_Smoothness0;
  let x_674 : f32 = x_13.x_Smoothness1;
  let x_676 : f32 = x_13.x_Smoothness2;
  let x_678 : f32 = x_13.x_Smoothness3;
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_669) * vec4<f32>(x_672, x_674, x_676, x_678)) + x_681);
  let x_685 : f32 = x_13.x_LayerHasMask0;
  let x_688 : f32 = x_13.x_LayerHasMask1;
  let x_691 : f32 = x_13.x_LayerHasMask2;
  let x_694 : f32 = x_13.x_LayerHasMask3;
  let x_696 : vec4<f32> = u_xlat8;
  let x_698 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_685, x_688, x_691, x_694) * x_696) + x_698);
  let x_701 : vec4<f32> = u_xlat4;
  let x_702 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_701, x_702);
  let x_705 : f32 = u_xlat0.x;
  u_xlat8.x = x_705;
  let x_708 : f32 = u_xlat1.x;
  u_xlat8.y = x_708;
  let x_711 : f32 = u_xlat2.x;
  u_xlat8.z = x_711;
  let x_714 : f32 = u_xlat3.x;
  u_xlat8.w = x_714;
  let x_716 : vec4<f32> = u_xlat8;
  let x_719 : f32 = x_13.x_Metallic0;
  let x_722 : f32 = x_13.x_Metallic1;
  let x_725 : f32 = x_13.x_Metallic2;
  let x_728 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_716 + -(vec4<f32>(x_719, x_722, x_725, x_728)));
  let x_733 : f32 = x_13.x_LayerHasMask0;
  let x_735 : f32 = x_13.x_LayerHasMask1;
  let x_737 : f32 = x_13.x_LayerHasMask2;
  let x_739 : f32 = x_13.x_LayerHasMask3;
  let x_741 : vec4<f32> = u_xlat8;
  let x_744 : f32 = x_13.x_Metallic0;
  let x_746 : f32 = x_13.x_Metallic1;
  let x_748 : f32 = x_13.x_Metallic2;
  let x_750 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_733, x_735, x_737, x_739) * x_741) + vec4<f32>(x_744, x_746, x_748, x_750));
  let x_753 : vec4<f32> = u_xlat4;
  let x_754 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_753, x_754);
  let x_758 : f32 = u_xlat0.y;
  u_xlat3.x = x_758;
  let x_761 : f32 = u_xlat1.y;
  u_xlat3.y = x_761;
  let x_764 : f32 = u_xlat2.y;
  u_xlat3.z = x_764;
  let x_766 : vec4<f32> = u_xlat7;
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_766) + x_768);
  let x_771 : f32 = x_13.x_LayerHasMask0;
  let x_773 : f32 = x_13.x_LayerHasMask1;
  let x_775 : f32 = x_13.x_LayerHasMask2;
  let x_777 : f32 = x_13.x_LayerHasMask3;
  let x_779 : vec4<f32> = u_xlat1;
  let x_781 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_771, x_773, x_775, x_777) * x_779) + x_781);
  let x_784 : vec4<f32> = u_xlat4;
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_784, x_785);
  let x_787 : vec4<f32> = u_xlat6;
  let x_790 : vec4<f32> = vs_TEXCOORD5;
  let x_792 : vec3<f32> = (vec3<f32>(x_787.y, x_787.y, x_787.y) * vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat6;
  let x_798 : vec4<f32> = vs_TEXCOORD4;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.x, x_795.x) * -(vec3<f32>(x_798.x, x_798.y, x_798.z))) + vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat6;
  let x_810 : vec4<f32> = vs_TEXCOORD3;
  let x_813 : vec4<f32> = u_xlat1;
  let x_815 : vec3<f32> = ((vec3<f32>(x_807.z, x_807.z, x_807.z) * vec3<f32>(x_810.x, x_810.y, x_810.z)) + vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_818.x, x_818.y, x_818.z), vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_823);
  let x_825 : f32 = u_xlat43;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = (vec3<f32>(x_825, x_825, x_825) * vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  u_xlat1.w = 1.0f;
  let x_839 : vec4<f32> = x_837.unity_SHAr;
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_839, x_840);
  let x_844 : vec4<f32> = x_837.unity_SHAg;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_844, x_845);
  let x_849 : vec4<f32> = x_837.unity_SHAb;
  let x_850 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_849, x_850);
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_853.y, x_853.z, x_853.z, x_853.x) * vec4<f32>(x_855.x, x_855.y, x_855.z, x_855.z));
  let x_859 : vec4<f32> = x_837.unity_SHBr;
  let x_860 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_859, x_860);
  let x_864 : vec4<f32> = x_837.unity_SHBg;
  let x_865 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_864, x_865);
  let x_869 : vec4<f32> = x_837.unity_SHBb;
  let x_870 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_869, x_870);
  let x_874 : f32 = u_xlat1.y;
  let x_876 : f32 = u_xlat1.y;
  u_xlat43 = (x_874 * x_876);
  let x_879 : f32 = u_xlat1.x;
  let x_881 : f32 = u_xlat1.x;
  let x_883 : f32 = u_xlat43;
  u_xlat43 = ((x_879 * x_881) + -(x_883));
  let x_888 : vec4<f32> = x_837.unity_SHC;
  let x_890 : f32 = u_xlat43;
  let x_893 : vec4<f32> = u_xlat4;
  let x_895 : vec3<f32> = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(x_890, x_890, x_890)) + vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec3<f32> = u_xlat2;
  let x_899 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_898 + vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_902, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_906 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_906) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_912 : f32 = u_xlat43;
  u_xlat44 = (-(x_912) + 1.0f);
  let x_915 : f32 = u_xlat43;
  let x_917 : vec4<f32> = u_xlat5;
  let x_919 : vec3<f32> = (vec3<f32>(x_915, x_915, x_915) * vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : vec4<f32> = u_xlat5;
  let x_926 : vec3<f32> = (vec3<f32>(x_922.x, x_922.y, x_922.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_927 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec3<f32> = u_xlat0;
  let x_931 : vec4<f32> = u_xlat4;
  let x_936 : vec3<f32> = ((vec3<f32>(x_929.x, x_929.x, x_929.x) * vec3<f32>(x_931.x, x_931.y, x_931.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_937 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : f32 = u_xlat28;
  u_xlat0.x = (-(x_939) + 1.0f);
  let x_944 : f32 = u_xlat0.x;
  let x_946 : f32 = u_xlat0.x;
  u_xlat43 = (x_944 * x_946);
  let x_948 : f32 = u_xlat43;
  u_xlat43 = max(x_948, 0.0078125f);
  let x_952 : f32 = u_xlat43;
  let x_953 : f32 = u_xlat43;
  u_xlat45 = (x_952 * x_953);
  let x_955 : f32 = u_xlat28;
  let x_956 : f32 = u_xlat44;
  u_xlat28 = (x_955 + x_956);
  let x_958 : f32 = u_xlat28;
  u_xlat28 = clamp(x_958, 0.0f, 1.0f);
  let x_960 : f32 = u_xlat43;
  u_xlat44 = ((x_960 * 4.0f) + 2.0f);
  let x_963 : f32 = u_xlat14;
  u_xlat14 = min(x_963, 1.0f);
  let x_968 : vec4<f32> = vs_TEXCOORD8;
  let x_969 : vec2<f32> = vec2<f32>(x_968.x, x_968.y);
  let x_972 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_969.x, x_969.y, x_972);
  let x_985 : vec3<f32> = txVec0;
  let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_985.xy, x_985.z);
  u_xlat46 = x_987;
  let x_997 : f32 = x_995.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_997) + 1.0f);
  let x_1001 : f32 = u_xlat46;
  let x_1003 : f32 = x_995.x_MainLightShadowParams.x;
  let x_1006 : f32 = u_xlat5.x;
  u_xlat46 = ((x_1001 * x_1003) + x_1006);
  let x_1010 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_1010);
  let x_1016 : f32 = vs_TEXCOORD8.z;
  u_xlatb19.x = (x_1016 >= 1.0f);
  let x_1020 : bool = u_xlatb19.x;
  let x_1021 : bool = u_xlatb5;
  u_xlatb5 = (x_1020 | x_1021);
  let x_1023 : bool = u_xlatb5;
  let x_1024 : f32 = u_xlat46;
  u_xlat46 = select(x_1024, 1.0f, x_1023);
  let x_1028 : vec3<f32> = vs_TEXCOORD7;
  let x_1031 : vec3<f32> = x_110.x_WorldSpaceCameraPos;
  let x_1033 : vec3<f32> = (x_1028 + -(x_1031));
  let x_1034 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1036 : vec4<f32> = u_xlat5;
  let x_1038 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1036.x, x_1036.y, x_1036.z), vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1044 : f32 = u_xlat5.x;
  let x_1046 : f32 = x_995.x_MainLightShadowParams.z;
  let x_1049 : f32 = x_995.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1044 * x_1046) + x_1049);
  let x_1053 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1053, 0.0f, 1.0f);
  let x_1057 : f32 = u_xlat46;
  u_xlat33 = (-(x_1057) + 1.0f);
  let x_1061 : f32 = u_xlat19.x;
  let x_1062 : f32 = u_xlat33;
  let x_1064 : f32 = u_xlat46;
  u_xlat46 = ((x_1061 * x_1062) + x_1064);
  let x_1073 : f32 = x_1071.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_1073 == -1.0f));
  let x_1077 : bool = u_xlatb19.x;
  if (x_1077) {
    let x_1080 : vec3<f32> = vs_TEXCOORD7;
    let x_1083 : vec4<f32> = x_1071.x_MainLightWorldToLight[1i];
    let x_1085 : vec2<f32> = (vec2<f32>(x_1080.y, x_1080.y) * vec2<f32>(x_1083.x, x_1083.y));
    let x_1086 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1085.x, x_1085.y, x_1086.z);
    let x_1089 : vec4<f32> = x_1071.x_MainLightWorldToLight[0i];
    let x_1091 : vec3<f32> = vs_TEXCOORD7;
    let x_1094 : vec3<f32> = u_xlat19;
    let x_1096 : vec2<f32> = ((vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(x_1091.x, x_1091.x)) + vec2<f32>(x_1094.x, x_1094.y));
    let x_1097 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1096.x, x_1096.y, x_1097.z);
    let x_1100 : vec4<f32> = x_1071.x_MainLightWorldToLight[2i];
    let x_1102 : vec3<f32> = vs_TEXCOORD7;
    let x_1105 : vec3<f32> = u_xlat19;
    let x_1107 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1102.z, x_1102.z)) + vec2<f32>(x_1105.x, x_1105.y));
    let x_1108 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1107.x, x_1107.y, x_1108.z);
    let x_1110 : vec3<f32> = u_xlat19;
    let x_1113 : vec4<f32> = x_1071.x_MainLightWorldToLight[3i];
    let x_1115 : vec2<f32> = (vec2<f32>(x_1110.x, x_1110.y) + vec2<f32>(x_1113.x, x_1113.y));
    let x_1116 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1115.x, x_1115.y, x_1116.z);
    let x_1118 : vec3<f32> = u_xlat19;
    let x_1121 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1122 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1121.x, x_1121.y, x_1122.z);
    let x_1129 : vec3<f32> = u_xlat19;
    let x_1132 : f32 = x_110.x_GlobalMipBias.x;
    let x_1133 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1129.x, x_1129.y), x_1132);
    u_xlat6 = x_1133;
    let x_1135 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1137 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1139 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1141 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1142 : vec4<f32> = vec4<f32>(x_1135, x_1137, x_1139, x_1141);
    let x_1149 : vec4<bool> = (vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1142.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_1149.x, x_1149.y);
    let x_1152 : bool = u_xlatb19.y;
    if (x_1152) {
      let x_1158 : f32 = u_xlat6.w;
      x_1154 = x_1158;
    } else {
      let x_1161 : f32 = u_xlat6.x;
      x_1154 = x_1161;
    }
    let x_1162 : f32 = x_1154;
    u_xlat33 = x_1162;
    let x_1164 : bool = u_xlatb19.x;
    if (x_1164) {
      let x_1168 : vec4<f32> = u_xlat6;
      x_1165 = vec3<f32>(x_1168.x, x_1168.y, x_1168.z);
    } else {
      let x_1171 : f32 = u_xlat33;
      x_1165 = vec3<f32>(x_1171, x_1171, x_1171);
    }
    let x_1173 : vec3<f32> = x_1165;
    u_xlat19 = x_1173;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_1178 : vec3<f32> = u_xlat19;
  let x_1180 : vec4<f32> = x_110.x_MainLightColor;
  u_xlat19 = (x_1178 * vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1184 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1184;
  let x_1187 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1187;
  let x_1190 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1190;
  let x_1193 : vec4<f32> = u_xlat6;
  let x_1196 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(vec3<f32>(x_1193.x, x_1193.y, x_1193.z)), vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : f32 = u_xlat48;
  let x_1200 : f32 = u_xlat48;
  u_xlat48 = (x_1199 + x_1200);
  let x_1202 : vec4<f32> = u_xlat1;
  let x_1204 : f32 = u_xlat48;
  let x_1208 : vec4<f32> = u_xlat6;
  let x_1211 : vec3<f32> = ((vec3<f32>(x_1202.x, x_1202.y, x_1202.z) * -(vec3<f32>(x_1204, x_1204, x_1204))) + -(vec3<f32>(x_1208.x, x_1208.y, x_1208.z)));
  let x_1212 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
  let x_1214 : vec4<f32> = u_xlat1;
  let x_1216 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1214.x, x_1214.y, x_1214.z), vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
  let x_1219 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1219, 0.0f, 1.0f);
  let x_1221 : f32 = u_xlat48;
  u_xlat48 = (-(x_1221) + 1.0f);
  let x_1224 : f32 = u_xlat48;
  let x_1225 : f32 = u_xlat48;
  u_xlat48 = (x_1224 * x_1225);
  let x_1227 : f32 = u_xlat48;
  let x_1228 : f32 = u_xlat48;
  u_xlat48 = (x_1227 * x_1228);
  let x_1232 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_1232) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1239 : f32 = u_xlat0.x;
  let x_1240 : f32 = u_xlat49;
  u_xlat0.x = (x_1239 * x_1240);
  let x_1244 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1244 * 6.0f);
  let x_1256 : vec4<f32> = u_xlat7;
  let x_1259 : f32 = u_xlat0.x;
  let x_1260 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1256.x, x_1256.y, x_1256.z), x_1259);
  u_xlat7 = x_1260;
  let x_1262 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1262 + -1.0f);
  let x_1266 : f32 = x_837.unity_SpecCube0_HDR.w;
  let x_1268 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1266 * x_1268) + 1.0f);
  let x_1273 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1273, 0.0f);
  let x_1277 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1277);
  let x_1281 : f32 = u_xlat0.x;
  let x_1283 : f32 = x_837.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1281 * x_1283);
  let x_1287 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1287);
  let x_1291 : f32 = u_xlat0.x;
  let x_1293 : f32 = x_837.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1291 * x_1293);
  let x_1296 : vec4<f32> = u_xlat7;
  let x_1298 : vec3<f32> = u_xlat0;
  let x_1300 : vec3<f32> = (vec3<f32>(x_1296.x, x_1296.y, x_1296.z) * vec3<f32>(x_1298.x, x_1298.x, x_1298.x));
  let x_1301 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
  let x_1303 : f32 = u_xlat43;
  let x_1305 : f32 = u_xlat43;
  let x_1309 : vec2<f32> = ((vec2<f32>(x_1303, x_1303) * vec2<f32>(x_1305, x_1305)) + vec2<f32>(-1.0f, 1.0f));
  let x_1310 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
  let x_1313 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_1313);
  let x_1317 : vec4<f32> = u_xlat4;
  let x_1320 : f32 = u_xlat28;
  u_xlat22 = (-(vec3<f32>(x_1317.x, x_1317.y, x_1317.z)) + vec3<f32>(x_1320, x_1320, x_1320));
  let x_1323 : f32 = u_xlat48;
  let x_1325 : vec3<f32> = u_xlat22;
  let x_1327 : vec4<f32> = u_xlat4;
  u_xlat22 = ((vec3<f32>(x_1323, x_1323, x_1323) * x_1325) + vec3<f32>(x_1327.x, x_1327.y, x_1327.z));
  let x_1330 : vec3<f32> = u_xlat0;
  let x_1332 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1330.x, x_1330.x, x_1330.x) * x_1332);
  let x_1334 : vec4<f32> = u_xlat7;
  let x_1336 : vec3<f32> = u_xlat22;
  let x_1337 : vec3<f32> = (vec3<f32>(x_1334.x, x_1334.y, x_1334.z) * x_1336);
  let x_1338 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : vec3<f32> = u_xlat2;
  let x_1341 : vec4<f32> = u_xlat3;
  let x_1344 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_1340 * vec3<f32>(x_1341.x, x_1341.y, x_1341.z)) + vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
  let x_1347 : f32 = u_xlat46;
  let x_1349 : f32 = x_837.unity_LightData.z;
  u_xlat0.x = (x_1347 * x_1349);
  let x_1352 : vec4<f32> = u_xlat1;
  let x_1355 : vec4<f32> = x_110.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1352.x, x_1352.y, x_1352.z), vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
  let x_1358 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1358, 0.0f, 1.0f);
  let x_1360 : f32 = u_xlat28;
  let x_1362 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1360 * x_1362);
  let x_1365 : vec3<f32> = u_xlat0;
  let x_1367 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1365.x, x_1365.x, x_1365.x) * x_1367);
  let x_1369 : vec4<f32> = u_xlat6;
  let x_1372 : vec4<f32> = x_110.x_MainLightPosition;
  let x_1374 : vec3<f32> = (vec3<f32>(x_1369.x, x_1369.y, x_1369.z) + vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1375 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
  let x_1377 : vec4<f32> = u_xlat7;
  let x_1379 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1377.x, x_1377.y, x_1377.z), vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
  let x_1384 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1384, 1.17549435e-38f);
  let x_1389 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1389);
  let x_1392 : vec3<f32> = u_xlat0;
  let x_1394 : vec4<f32> = u_xlat7;
  let x_1396 : vec3<f32> = (vec3<f32>(x_1392.x, x_1392.x, x_1392.x) * vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
  let x_1397 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
  let x_1399 : vec4<f32> = u_xlat1;
  let x_1401 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1399.x, x_1399.y, x_1399.z), vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
  let x_1406 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1406, 0.0f, 1.0f);
  let x_1410 : vec4<f32> = x_110.x_MainLightPosition;
  let x_1412 : vec4<f32> = u_xlat7;
  u_xlat0.z = dot(vec3<f32>(x_1410.x, x_1410.y, x_1410.z), vec3<f32>(x_1412.x, x_1412.y, x_1412.z));
  let x_1417 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1417, 0.0f, 1.0f);
  let x_1420 : vec3<f32> = u_xlat0;
  let x_1422 : vec3<f32> = u_xlat0;
  let x_1424 : vec2<f32> = (vec2<f32>(x_1420.x, x_1420.z) * vec2<f32>(x_1422.x, x_1422.z));
  let x_1425 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1424.x, x_1425.y, x_1424.y);
  let x_1428 : f32 = u_xlat0.x;
  let x_1430 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1428 * x_1430) + 1.00001001358032226562f);
  let x_1436 : f32 = u_xlat0.x;
  let x_1438 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1436 * x_1438);
  let x_1442 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1442, 0.10000000149011611938f);
  let x_1445 : f32 = u_xlat28;
  let x_1447 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1445 * x_1447);
  let x_1450 : f32 = u_xlat44;
  let x_1452 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1450 * x_1452);
  let x_1455 : f32 = u_xlat45;
  let x_1457 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1455 / x_1457);
  let x_1460 : vec4<f32> = u_xlat4;
  let x_1462 : vec3<f32> = u_xlat0;
  let x_1465 : vec4<f32> = u_xlat3;
  let x_1467 : vec3<f32> = ((vec3<f32>(x_1460.x, x_1460.y, x_1460.z) * vec3<f32>(x_1462.x, x_1462.x, x_1462.x)) + vec3<f32>(x_1465.x, x_1465.y, x_1465.z));
  let x_1468 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
  let x_1470 : vec3<f32> = u_xlat19;
  let x_1471 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1470 * vec3<f32>(x_1471.x, x_1471.y, x_1471.z));
  let x_1475 : f32 = x_110.x_AdditionalLightsCount.x;
  let x_1477 : f32 = x_837.unity_LightData.y;
  u_xlat0.x = min(x_1475, x_1477);
  let x_1483 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1483));
  let x_1487 : f32 = u_xlat5.x;
  let x_1489 : f32 = x_995.x_AdditionalShadowFadeParams.x;
  let x_1492 : f32 = x_995.x_AdditionalShadowFadeParams.y;
  u_xlat28 = ((x_1487 * x_1489) + x_1492);
  let x_1494 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1494, 0.0f, 1.0f);
  let x_1498 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1500 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1502 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1504 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1505 : vec4<f32> = vec4<f32>(x_1498, x_1500, x_1502, x_1504);
  let x_1511 : vec4<bool> = (vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1505.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1511.x, x_1511.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1523 : u32 = u_xlatu_loop_1;
    let x_1524 : u32 = u_xlatu0;
    if ((x_1523 < x_1524)) {
    } else {
      break;
    }
    let x_1527 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1527 >> 2u);
    let x_1531 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1531 & 3u));
    let x_1534 : u32 = u_xlatu46;
    let x_1537 : vec4<f32> = x_837.unity_LightIndices[bitcast<i32>(x_1534)];
    let x_1547 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1552 : vec4<u32> = indexable[x_1547];
    u_xlat46 = dot(x_1537, bitcast<vec4<f32>>(x_1552));
    let x_1556 : f32 = u_xlat46;
    u_xlati46 = i32(x_1556);
    let x_1558 : vec3<f32> = vs_TEXCOORD7;
    let x_1569 : i32 = u_xlati46;
    let x_1571 : vec4<f32> = x_1568.x_AdditionalLightsPosition[x_1569];
    let x_1574 : i32 = u_xlati46;
    let x_1576 : vec4<f32> = x_1568.x_AdditionalLightsPosition[x_1574];
    let x_1578 : vec3<f32> = ((-(x_1558) * vec3<f32>(x_1571.w, x_1571.w, x_1571.w)) + vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
    let x_1579 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
    let x_1581 : vec4<f32> = u_xlat9;
    let x_1583 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_1581.x, x_1581.y, x_1581.z), vec3<f32>(x_1583.x, x_1583.y, x_1583.z));
    let x_1588 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1588, 0.00006103515625f);
    let x_1592 : f32 = u_xlat5.x;
    u_xlat48 = inverseSqrt(x_1592);
    let x_1594 : f32 = u_xlat48;
    let x_1596 : vec4<f32> = u_xlat9;
    let x_1598 : vec3<f32> = (vec3<f32>(x_1594, x_1594, x_1594) * vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
    let x_1599 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
    let x_1603 : f32 = u_xlat5.x;
    u_xlat35 = (1.0f / x_1603);
    let x_1606 : f32 = u_xlat5.x;
    let x_1607 : i32 = u_xlati46;
    let x_1609 : f32 = x_1568.x_AdditionalLightsAttenuation[x_1607].x;
    u_xlat5.x = (x_1606 * x_1609);
    let x_1613 : f32 = u_xlat5.x;
    let x_1616 : f32 = u_xlat5.x;
    u_xlat5.x = ((-(x_1613) * x_1616) + 1.0f);
    let x_1621 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_1621, 0.0f);
    let x_1625 : f32 = u_xlat5.x;
    let x_1627 : f32 = u_xlat5.x;
    u_xlat5.x = (x_1625 * x_1627);
    let x_1631 : f32 = u_xlat5.x;
    let x_1632 : f32 = u_xlat35;
    u_xlat5.x = (x_1631 * x_1632);
    let x_1635 : i32 = u_xlati46;
    let x_1637 : vec4<f32> = x_1568.x_AdditionalLightsSpotDir[x_1635];
    let x_1639 : vec4<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1637.x, x_1637.y, x_1637.z), vec3<f32>(x_1639.x, x_1639.y, x_1639.z));
    let x_1642 : f32 = u_xlat35;
    let x_1643 : i32 = u_xlati46;
    let x_1645 : f32 = x_1568.x_AdditionalLightsAttenuation[x_1643].z;
    let x_1647 : i32 = u_xlati46;
    let x_1649 : f32 = x_1568.x_AdditionalLightsAttenuation[x_1647].w;
    u_xlat35 = ((x_1642 * x_1645) + x_1649);
    let x_1651 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1651, 0.0f, 1.0f);
    let x_1653 : f32 = u_xlat35;
    let x_1654 : f32 = u_xlat35;
    u_xlat35 = (x_1653 * x_1654);
    let x_1657 : f32 = u_xlat5.x;
    let x_1658 : f32 = u_xlat35;
    u_xlat5.x = (x_1657 * x_1658);
    let x_1662 : i32 = u_xlati46;
    let x_1664 : f32 = x_995.x_AdditionalShadowParams[x_1662].w;
    u_xlati35 = i32(x_1664);
    let x_1667 : i32 = u_xlati35;
    u_xlatb49 = (x_1667 >= 0i);
    let x_1669 : bool = u_xlatb49;
    if (x_1669) {
      let x_1673 : i32 = u_xlati46;
      let x_1675 : f32 = x_995.x_AdditionalShadowParams[x_1673].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1675, x_1675, x_1675, x_1675))));
      let x_1679 : bool = u_xlatb49;
      if (x_1679) {
        let x_1684 : vec4<f32> = u_xlat10;
        let x_1687 : vec4<f32> = u_xlat10;
        let x_1690 : vec4<bool> = (abs(vec4<f32>(x_1684.z, x_1684.z, x_1684.y, x_1684.z)) >= abs(vec4<f32>(x_1687.x, x_1687.y, x_1687.x, x_1687.x)));
        let x_1692 : vec3<bool> = vec3<bool>(x_1690.x, x_1690.y, x_1690.z);
        let x_1693 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
        let x_1696 : bool = u_xlatb11.y;
        let x_1698 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1696 & x_1698);
        let x_1700 : vec4<f32> = u_xlat10;
        let x_1703 : vec4<bool> = (-(vec4<f32>(x_1700.z, x_1700.y, x_1700.z, x_1700.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1704 : vec3<bool> = vec3<bool>(x_1703.x, x_1703.y, x_1703.w);
        let x_1705 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1704.x, x_1704.y, x_1705.z, x_1704.z);
        let x_1708 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1708);
        let x_1713 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1713);
        let x_1719 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1719);
        let x_1722 : bool = u_xlatb11.z;
        if (x_1722) {
          let x_1727 : f32 = u_xlat11.y;
          x_1723 = x_1727;
        } else {
          let x_1729 : f32 = u_xlat51;
          x_1723 = x_1729;
        }
        let x_1730 : f32 = x_1723;
        u_xlat51 = x_1730;
        let x_1731 : bool = u_xlatb49;
        if (x_1731) {
          let x_1736 : f32 = u_xlat11.x;
          x_1732 = x_1736;
        } else {
          let x_1738 : f32 = u_xlat51;
          x_1732 = x_1738;
        }
        let x_1739 : f32 = x_1732;
        u_xlat49 = x_1739;
        let x_1740 : i32 = u_xlati46;
        let x_1742 : f32 = x_995.x_AdditionalShadowParams[x_1740].w;
        u_xlat51 = trunc(x_1742);
        let x_1744 : f32 = u_xlat49;
        let x_1745 : f32 = u_xlat51;
        u_xlat49 = (x_1744 + x_1745);
        let x_1747 : f32 = u_xlat49;
        u_xlati35 = i32(x_1747);
      }
      let x_1749 : i32 = u_xlati35;
      u_xlati35 = (x_1749 << bitcast<u32>(2i));
      let x_1751 : vec3<f32> = vs_TEXCOORD7;
      let x_1753 : i32 = u_xlati35;
      let x_1756 : i32 = u_xlati35;
      let x_1760 : vec4<f32> = x_995.x_AdditionalLightsWorldToShadow[((x_1753 + 1i) / 4i)][((x_1756 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1751.y, x_1751.y, x_1751.y, x_1751.y) * x_1760);
      let x_1762 : i32 = u_xlati35;
      let x_1764 : i32 = u_xlati35;
      let x_1767 : vec4<f32> = x_995.x_AdditionalLightsWorldToShadow[(x_1762 / 4i)][(x_1764 % 4i)];
      let x_1768 : vec3<f32> = vs_TEXCOORD7;
      let x_1771 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1767 * vec4<f32>(x_1768.x, x_1768.x, x_1768.x, x_1768.x)) + x_1771);
      let x_1773 : i32 = u_xlati35;
      let x_1776 : i32 = u_xlati35;
      let x_1780 : vec4<f32> = x_995.x_AdditionalLightsWorldToShadow[((x_1773 + 2i) / 4i)][((x_1776 + 2i) % 4i)];
      let x_1781 : vec3<f32> = vs_TEXCOORD7;
      let x_1784 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1780 * vec4<f32>(x_1781.z, x_1781.z, x_1781.z, x_1781.z)) + x_1784);
      let x_1786 : vec4<f32> = u_xlat11;
      let x_1787 : i32 = u_xlati35;
      let x_1790 : i32 = u_xlati35;
      let x_1794 : vec4<f32> = x_995.x_AdditionalLightsWorldToShadow[((x_1787 + 3i) / 4i)][((x_1790 + 3i) % 4i)];
      u_xlat11 = (x_1786 + x_1794);
      let x_1796 : vec4<f32> = u_xlat11;
      let x_1798 : vec4<f32> = u_xlat11;
      let x_1800 : vec3<f32> = (vec3<f32>(x_1796.x, x_1796.y, x_1796.z) / vec3<f32>(x_1798.w, x_1798.w, x_1798.w));
      let x_1801 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
      let x_1804 : vec4<f32> = u_xlat11;
      let x_1805 : vec2<f32> = vec2<f32>(x_1804.x, x_1804.y);
      let x_1807 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1805.x, x_1805.y, x_1807);
      let x_1815 : vec3<f32> = txVec1;
      let x_1817 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1815.xy, x_1815.z);
      u_xlat35 = x_1817;
      let x_1818 : i32 = u_xlati46;
      let x_1820 : f32 = x_995.x_AdditionalShadowParams[x_1818].x;
      u_xlat49 = (1.0f + -(x_1820));
      let x_1823 : f32 = u_xlat35;
      let x_1824 : i32 = u_xlati46;
      let x_1826 : f32 = x_995.x_AdditionalShadowParams[x_1824].x;
      let x_1828 : f32 = u_xlat49;
      u_xlat35 = ((x_1823 * x_1826) + x_1828);
      let x_1831 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1831);
      let x_1835 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1835 >= 1.0f);
      let x_1837 : bool = u_xlatb49;
      let x_1838 : bool = u_xlatb51;
      u_xlatb49 = (x_1837 | x_1838);
      let x_1840 : bool = u_xlatb49;
      let x_1841 : f32 = u_xlat35;
      u_xlat35 = select(x_1841, 1.0f, x_1840);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_1844 : f32 = u_xlat35;
    u_xlat49 = (-(x_1844) + 1.0f);
    let x_1847 : f32 = u_xlat28;
    let x_1848 : f32 = u_xlat49;
    let x_1850 : f32 = u_xlat35;
    u_xlat35 = ((x_1847 * x_1848) + x_1850);
    let x_1853 : i32 = u_xlati46;
    u_xlati49 = (1i << bitcast<u32>((x_1853 & 31i)));
    let x_1856 : i32 = u_xlati49;
    let x_1859 : f32 = x_1071.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1856) & bitcast<u32>(x_1859)));
    let x_1863 : i32 = u_xlati49;
    if ((x_1863 != 0i)) {
      let x_1867 : i32 = u_xlati46;
      let x_1869 : f32 = x_1071.x_AdditionalLightsLightTypes[x_1867].el;
      u_xlati49 = i32(x_1869);
      let x_1872 : i32 = u_xlati49;
      u_xlati51 = select(1i, 0i, (x_1872 != 0i));
      let x_1876 : i32 = u_xlati46;
      u_xlati52 = (x_1876 << bitcast<u32>(2i));
      let x_1878 : i32 = u_xlati51;
      if ((x_1878 != 0i)) {
        let x_1882 : vec3<f32> = vs_TEXCOORD7;
        let x_1884 : i32 = u_xlati52;
        let x_1887 : i32 = u_xlati52;
        let x_1891 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1884 + 1i) / 4i)][((x_1887 + 1i) % 4i)];
        let x_1893 : vec3<f32> = (vec3<f32>(x_1882.y, x_1882.y, x_1882.y) * vec3<f32>(x_1891.x, x_1891.y, x_1891.w));
        let x_1894 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
        let x_1896 : i32 = u_xlati52;
        let x_1898 : i32 = u_xlati52;
        let x_1901 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[(x_1896 / 4i)][(x_1898 % 4i)];
        let x_1903 : vec3<f32> = vs_TEXCOORD7;
        let x_1906 : vec4<f32> = u_xlat11;
        let x_1908 : vec3<f32> = ((vec3<f32>(x_1901.x, x_1901.y, x_1901.w) * vec3<f32>(x_1903.x, x_1903.x, x_1903.x)) + vec3<f32>(x_1906.x, x_1906.y, x_1906.z));
        let x_1909 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1908.x, x_1908.y, x_1908.z, x_1909.w);
        let x_1911 : i32 = u_xlati52;
        let x_1914 : i32 = u_xlati52;
        let x_1918 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1911 + 2i) / 4i)][((x_1914 + 2i) % 4i)];
        let x_1920 : vec3<f32> = vs_TEXCOORD7;
        let x_1923 : vec4<f32> = u_xlat11;
        let x_1925 : vec3<f32> = ((vec3<f32>(x_1918.x, x_1918.y, x_1918.w) * vec3<f32>(x_1920.z, x_1920.z, x_1920.z)) + vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
        let x_1926 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1926.w);
        let x_1928 : vec4<f32> = u_xlat11;
        let x_1930 : i32 = u_xlati52;
        let x_1933 : i32 = u_xlati52;
        let x_1937 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1930 + 3i) / 4i)][((x_1933 + 3i) % 4i)];
        let x_1939 : vec3<f32> = (vec3<f32>(x_1928.x, x_1928.y, x_1928.z) + vec3<f32>(x_1937.x, x_1937.y, x_1937.w));
        let x_1940 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1939.x, x_1939.y, x_1939.z, x_1940.w);
        let x_1942 : vec4<f32> = u_xlat11;
        let x_1944 : vec4<f32> = u_xlat11;
        let x_1946 : vec2<f32> = (vec2<f32>(x_1942.x, x_1942.y) / vec2<f32>(x_1944.z, x_1944.z));
        let x_1947 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1946.x, x_1946.y, x_1947.z, x_1947.w);
        let x_1949 : vec4<f32> = u_xlat11;
        let x_1952 : vec2<f32> = ((vec2<f32>(x_1949.x, x_1949.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1953 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1952.x, x_1952.y, x_1953.z, x_1953.w);
        let x_1955 : vec4<f32> = u_xlat11;
        let x_1959 : vec2<f32> = clamp(vec2<f32>(x_1955.x, x_1955.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1960 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1959.x, x_1959.y, x_1960.z, x_1960.w);
        let x_1962 : i32 = u_xlati46;
        let x_1964 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_1962];
        let x_1966 : vec4<f32> = u_xlat11;
        let x_1969 : i32 = u_xlati46;
        let x_1971 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_1969];
        let x_1973 : vec2<f32> = ((vec2<f32>(x_1964.x, x_1964.y) * vec2<f32>(x_1966.x, x_1966.y)) + vec2<f32>(x_1971.z, x_1971.w));
        let x_1974 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1973.x, x_1973.y, x_1974.z, x_1974.w);
      } else {
        let x_1977 : i32 = u_xlati49;
        u_xlatb49 = (x_1977 == 1i);
        let x_1979 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1979);
        let x_1981 : i32 = u_xlati49;
        if ((x_1981 != 0i)) {
          let x_1987 : vec3<f32> = vs_TEXCOORD7;
          let x_1989 : i32 = u_xlati52;
          let x_1992 : i32 = u_xlati52;
          let x_1996 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_1989 + 1i) / 4i)][((x_1992 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1987.y, x_1987.y) * vec2<f32>(x_1996.x, x_1996.y));
          let x_1999 : i32 = u_xlati52;
          let x_2001 : i32 = u_xlati52;
          let x_2004 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[(x_1999 / 4i)][(x_2001 % 4i)];
          let x_2006 : vec3<f32> = vs_TEXCOORD7;
          let x_2009 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2004.x, x_2004.y) * vec2<f32>(x_2006.x, x_2006.x)) + x_2009);
          let x_2011 : i32 = u_xlati52;
          let x_2014 : i32 = u_xlati52;
          let x_2018 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_2011 + 2i) / 4i)][((x_2014 + 2i) % 4i)];
          let x_2020 : vec3<f32> = vs_TEXCOORD7;
          let x_2023 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2018.x, x_2018.y) * vec2<f32>(x_2020.z, x_2020.z)) + x_2023);
          let x_2025 : vec2<f32> = u_xlat39;
          let x_2026 : i32 = u_xlati52;
          let x_2029 : i32 = u_xlati52;
          let x_2033 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_2026 + 3i) / 4i)][((x_2029 + 3i) % 4i)];
          u_xlat39 = (x_2025 + vec2<f32>(x_2033.x, x_2033.y));
          let x_2036 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2036 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2039 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2039);
          let x_2041 : i32 = u_xlati46;
          let x_2043 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_2041];
          let x_2045 : vec2<f32> = u_xlat39;
          let x_2047 : i32 = u_xlati46;
          let x_2049 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_2047];
          let x_2051 : vec2<f32> = ((vec2<f32>(x_2043.x, x_2043.y) * x_2045) + vec2<f32>(x_2049.z, x_2049.w));
          let x_2052 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2051.x, x_2051.y, x_2052.z, x_2052.w);
        } else {
          let x_2055 : vec3<f32> = vs_TEXCOORD7;
          let x_2057 : i32 = u_xlati52;
          let x_2060 : i32 = u_xlati52;
          let x_2064 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_2057 + 1i) / 4i)][((x_2060 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2055.y, x_2055.y, x_2055.y, x_2055.y) * x_2064);
          let x_2066 : i32 = u_xlati52;
          let x_2068 : i32 = u_xlati52;
          let x_2071 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[(x_2066 / 4i)][(x_2068 % 4i)];
          let x_2072 : vec3<f32> = vs_TEXCOORD7;
          let x_2075 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2071 * vec4<f32>(x_2072.x, x_2072.x, x_2072.x, x_2072.x)) + x_2075);
          let x_2077 : i32 = u_xlati52;
          let x_2080 : i32 = u_xlati52;
          let x_2084 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_2077 + 2i) / 4i)][((x_2080 + 2i) % 4i)];
          let x_2085 : vec3<f32> = vs_TEXCOORD7;
          let x_2088 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2084 * vec4<f32>(x_2085.z, x_2085.z, x_2085.z, x_2085.z)) + x_2088);
          let x_2090 : vec4<f32> = u_xlat12;
          let x_2091 : i32 = u_xlati52;
          let x_2094 : i32 = u_xlati52;
          let x_2098 : vec4<f32> = x_1071.x_AdditionalLightsWorldToLights[((x_2091 + 3i) / 4i)][((x_2094 + 3i) % 4i)];
          u_xlat12 = (x_2090 + x_2098);
          let x_2100 : vec4<f32> = u_xlat12;
          let x_2102 : vec4<f32> = u_xlat12;
          let x_2104 : vec3<f32> = (vec3<f32>(x_2100.x, x_2100.y, x_2100.z) / vec3<f32>(x_2102.w, x_2102.w, x_2102.w));
          let x_2105 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
          let x_2107 : vec4<f32> = u_xlat12;
          let x_2109 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_2107.x, x_2107.y, x_2107.z), vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
          let x_2112 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_2112);
          let x_2114 : f32 = u_xlat49;
          let x_2116 : vec4<f32> = u_xlat12;
          let x_2118 : vec3<f32> = (vec3<f32>(x_2114, x_2114, x_2114) * vec3<f32>(x_2116.x, x_2116.y, x_2116.z));
          let x_2119 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2119.w);
          let x_2121 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_2121.x, x_2121.y, x_2121.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2126 : f32 = u_xlat49;
          u_xlat49 = max(x_2126, 0.00000099999999747524f);
          let x_2129 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_2129);
          let x_2131 : f32 = u_xlat49;
          let x_2133 : vec4<f32> = u_xlat12;
          let x_2135 : vec3<f32> = (vec3<f32>(x_2131, x_2131, x_2131) * vec3<f32>(x_2133.z, x_2133.x, x_2133.y));
          let x_2136 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
          let x_2139 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2139);
          let x_2143 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2143, 0.0f, 1.0f);
          let x_2147 : vec4<f32> = u_xlat13;
          let x_2149 : vec4<bool> = (vec4<f32>(x_2147.y, x_2147.z, x_2147.y, x_2147.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2149.x, x_2149.y);
          let x_2152 : bool = u_xlatb39.x;
          if (x_2152) {
            let x_2157 : f32 = u_xlat13.x;
            x_2153 = x_2157;
          } else {
            let x_2160 : f32 = u_xlat13.x;
            x_2153 = -(x_2160);
          }
          let x_2162 : f32 = x_2153;
          u_xlat39.x = x_2162;
          let x_2165 : bool = u_xlatb39.y;
          if (x_2165) {
            let x_2170 : f32 = u_xlat13.x;
            x_2166 = x_2170;
          } else {
            let x_2173 : f32 = u_xlat13.x;
            x_2166 = -(x_2173);
          }
          let x_2175 : f32 = x_2166;
          u_xlat39.y = x_2175;
          let x_2177 : vec4<f32> = u_xlat12;
          let x_2179 : f32 = u_xlat49;
          let x_2182 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2177.x, x_2177.y) * vec2<f32>(x_2179, x_2179)) + x_2182);
          let x_2184 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2184 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2187 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2187, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2191 : i32 = u_xlati46;
          let x_2193 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_2191];
          let x_2195 : vec2<f32> = u_xlat39;
          let x_2197 : i32 = u_xlati46;
          let x_2199 : vec4<f32> = x_1071.x_AdditionalLightsCookieAtlasUVRects[x_2197];
          let x_2201 : vec2<f32> = ((vec2<f32>(x_2193.x, x_2193.y) * x_2195) + vec2<f32>(x_2199.z, x_2199.w));
          let x_2202 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2201.x, x_2201.y, x_2202.z, x_2202.w);
        }
      }
      let x_2209 : vec4<f32> = u_xlat11;
      let x_2211 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2209.x, x_2209.y), 0.0f);
      u_xlat11 = x_2211;
      let x_2213 : bool = u_xlatb7.y;
      if (x_2213) {
        let x_2218 : f32 = u_xlat11.w;
        x_2214 = x_2218;
      } else {
        let x_2221 : f32 = u_xlat11.x;
        x_2214 = x_2221;
      }
      let x_2222 : f32 = x_2214;
      u_xlat49 = x_2222;
      let x_2224 : bool = u_xlatb7.x;
      if (x_2224) {
        let x_2228 : vec4<f32> = u_xlat11;
        x_2225 = vec3<f32>(x_2228.x, x_2228.y, x_2228.z);
      } else {
        let x_2231 : f32 = u_xlat49;
        x_2225 = vec3<f32>(x_2231, x_2231, x_2231);
      }
      let x_2233 : vec3<f32> = x_2225;
      let x_2234 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2240 : vec4<f32> = u_xlat11;
    let x_2242 : i32 = u_xlati46;
    let x_2244 : vec4<f32> = x_1568.x_AdditionalLightsColor[x_2242];
    let x_2246 : vec3<f32> = (vec3<f32>(x_2240.x, x_2240.y, x_2240.z) * vec3<f32>(x_2244.x, x_2244.y, x_2244.z));
    let x_2247 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
    let x_2250 : f32 = u_xlat5.x;
    let x_2251 : f32 = u_xlat35;
    u_xlat46 = (x_2250 * x_2251);
    let x_2253 : vec4<f32> = u_xlat1;
    let x_2255 : vec4<f32> = u_xlat10;
    u_xlat5.x = dot(vec3<f32>(x_2253.x, x_2253.y, x_2253.z), vec3<f32>(x_2255.x, x_2255.y, x_2255.z));
    let x_2260 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_2260, 0.0f, 1.0f);
    let x_2263 : f32 = u_xlat46;
    let x_2265 : f32 = u_xlat5.x;
    u_xlat46 = (x_2263 * x_2265);
    let x_2267 : f32 = u_xlat46;
    let x_2269 : vec4<f32> = u_xlat11;
    let x_2271 : vec3<f32> = (vec3<f32>(x_2267, x_2267, x_2267) * vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
    let x_2272 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
    let x_2274 : vec4<f32> = u_xlat9;
    let x_2276 : f32 = u_xlat48;
    let x_2279 : vec4<f32> = u_xlat6;
    let x_2281 : vec3<f32> = ((vec3<f32>(x_2274.x, x_2274.y, x_2274.z) * vec3<f32>(x_2276, x_2276, x_2276)) + vec3<f32>(x_2279.x, x_2279.y, x_2279.z));
    let x_2282 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
    let x_2284 : vec4<f32> = u_xlat9;
    let x_2286 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2284.x, x_2284.y, x_2284.z), vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
    let x_2289 : f32 = u_xlat46;
    u_xlat46 = max(x_2289, 1.17549435e-38f);
    let x_2291 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2291);
    let x_2293 : f32 = u_xlat46;
    let x_2295 : vec4<f32> = u_xlat9;
    let x_2297 : vec3<f32> = (vec3<f32>(x_2293, x_2293, x_2293) * vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
    let x_2298 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2297.x, x_2297.y, x_2297.z, x_2298.w);
    let x_2300 : vec4<f32> = u_xlat1;
    let x_2302 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2300.x, x_2300.y, x_2300.z), vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
    let x_2305 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2305, 0.0f, 1.0f);
    let x_2307 : vec4<f32> = u_xlat10;
    let x_2309 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2307.x, x_2307.y, x_2307.z), vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
    let x_2314 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_2314, 0.0f, 1.0f);
    let x_2317 : f32 = u_xlat46;
    let x_2318 : f32 = u_xlat46;
    u_xlat46 = (x_2317 * x_2318);
    let x_2320 : f32 = u_xlat46;
    let x_2322 : f32 = u_xlat8.x;
    u_xlat46 = ((x_2320 * x_2322) + 1.00001001358032226562f);
    let x_2326 : f32 = u_xlat5.x;
    let x_2328 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2326 * x_2328);
    let x_2331 : f32 = u_xlat46;
    let x_2332 : f32 = u_xlat46;
    u_xlat46 = (x_2331 * x_2332);
    let x_2335 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_2335, 0.10000000149011611938f);
    let x_2338 : f32 = u_xlat46;
    let x_2340 : f32 = u_xlat5.x;
    u_xlat46 = (x_2338 * x_2340);
    let x_2342 : f32 = u_xlat44;
    let x_2343 : f32 = u_xlat46;
    u_xlat46 = (x_2342 * x_2343);
    let x_2345 : f32 = u_xlat45;
    let x_2346 : f32 = u_xlat46;
    u_xlat46 = (x_2345 / x_2346);
    let x_2348 : vec4<f32> = u_xlat4;
    let x_2350 : f32 = u_xlat46;
    let x_2353 : vec4<f32> = u_xlat3;
    let x_2355 : vec3<f32> = ((vec3<f32>(x_2348.x, x_2348.y, x_2348.z) * vec3<f32>(x_2350, x_2350, x_2350)) + vec3<f32>(x_2353.x, x_2353.y, x_2353.z));
    let x_2356 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2355.x, x_2355.y, x_2355.z, x_2356.w);
    let x_2358 : vec4<f32> = u_xlat9;
    let x_2360 : vec4<f32> = u_xlat11;
    let x_2363 : vec3<f32> = u_xlat22;
    u_xlat22 = ((vec3<f32>(x_2358.x, x_2358.y, x_2358.z) * vec3<f32>(x_2360.x, x_2360.y, x_2360.z)) + x_2363);

    continuing {
      let x_2365 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2365 + bitcast<u32>(1i));
    }
  }
  let x_2367 : vec3<f32> = u_xlat2;
  let x_2368 : f32 = u_xlat14;
  let x_2371 : vec3<f32> = u_xlat19;
  u_xlat0 = ((x_2367 * vec3<f32>(x_2368, x_2368, x_2368)) + x_2371);
  let x_2373 : vec3<f32> = u_xlat22;
  let x_2374 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2373 + x_2374);
  let x_2378 : f32 = u_xlat42;
  let x_2380 : vec3<f32> = u_xlat0;
  let x_2381 : vec3<f32> = (vec3<f32>(x_2378, x_2378, x_2378) * x_2380);
  let x_2382 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
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


