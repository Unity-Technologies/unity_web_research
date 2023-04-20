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

@group(1) @binding(2) var<uniform> x_825 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(10) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_983 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : vec2<bool>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

@group(1) @binding(5) var<uniform> x_1059 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1536 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(11) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1142 : f32;
  var x_1153 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1672 : f32;
  var x_1682 : f32;
  var txVec1 : vec3<f32>;
  var x_2103 : f32;
  var x_2116 : f32;
  var x_2164 : f32;
  var x_2175 : vec3<f32>;
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
  let x_276 : f32 = u_xlat43;
  u_xlat43 = (x_276 + 0.00006103515625f);
  let x_279 : vec4<f32> = u_xlat4;
  let x_280 : f32 = u_xlat43;
  u_xlat4 = (x_279 / vec4<f32>(x_280, x_280, x_280, x_280));
  let x_283 : vec4<f32> = u_xlat4;
  let x_286 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_288 : vec3<f32> = (vec3<f32>(x_283.x, x_283.x, x_283.x) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_296 : vec3<f32> = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : vec4<f32> = u_xlat6;
  let x_301 : vec4<f32> = u_xlat12;
  let x_303 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat5;
  let x_308 : vec4<f32> = u_xlat11;
  let x_311 : vec4<f32> = u_xlat6;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.x, x_308.y, x_308.z)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat4;
  let x_319 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_321 : vec3<f32> = (vec3<f32>(x_316.z, x_316.z, x_316.z) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat7;
  let x_326 : vec4<f32> = u_xlat6;
  let x_329 : vec4<f32> = u_xlat5;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.x, x_326.y, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat4;
  let x_337 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_339 : vec3<f32> = (vec3<f32>(x_334.w, x_334.w, x_334.w) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat8;
  let x_344 : vec4<f32> = u_xlat6;
  let x_347 : vec4<f32> = u_xlat5;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.x, x_344.y, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_357 : vec4<f32> = vs_TEXCOORD1;
  let x_360 : f32 = x_110.x_GlobalMipBias.x;
  let x_361 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_357.x, x_357.y), x_360);
  let x_362 : vec3<f32> = vec3<f32>(x_361.x, x_361.y, x_361.w);
  let x_363 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = u_xlat6.x;
  let x_368 : f32 = u_xlat6.z;
  u_xlat6.x = (x_366 * x_368);
  let x_371 : vec4<f32> = u_xlat6;
  let x_376 : vec2<f32> = ((vec2<f32>(x_371.x, x_371.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat6;
  let x_381 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_379.x, x_379.y), vec2<f32>(x_381.x, x_381.y));
  let x_384 : f32 = u_xlat43;
  u_xlat43 = min(x_384, 1.0f);
  let x_386 : f32 = u_xlat43;
  u_xlat43 = (-(x_386) + 1.0f);
  let x_389 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_389);
  let x_391 : f32 = u_xlat43;
  u_xlat7.z = max(x_391, 0.0000000000000001f);
  let x_395 : vec4<f32> = u_xlat6;
  let x_398 : f32 = x_13.x_NormalScale0;
  let x_400 : vec2<f32> = (vec2<f32>(x_395.x, x_395.y) * vec2<f32>(x_398, x_398));
  let x_401 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
  let x_407 : vec4<f32> = vs_TEXCOORD1;
  let x_410 : f32 = x_110.x_GlobalMipBias.x;
  let x_411 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_407.z, x_407.w), x_410);
  let x_412 : vec3<f32> = vec3<f32>(x_411.x, x_411.y, x_411.w);
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat6.x;
  let x_418 : f32 = u_xlat6.z;
  u_xlat6.x = (x_416 * x_418);
  let x_421 : vec4<f32> = u_xlat6;
  let x_424 : vec2<f32> = ((vec2<f32>(x_421.x, x_421.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_425 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat6;
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_427.x, x_427.y), vec2<f32>(x_429.x, x_429.y));
  let x_432 : f32 = u_xlat43;
  u_xlat43 = min(x_432, 1.0f);
  let x_434 : f32 = u_xlat43;
  u_xlat43 = (-(x_434) + 1.0f);
  let x_437 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_437);
  let x_439 : f32 = u_xlat43;
  u_xlat8.z = max(x_439, 0.0000000000000001f);
  let x_442 : vec4<f32> = u_xlat6;
  let x_446 : f32 = x_13.x_NormalScale1;
  let x_448 : f32 = x_13.x_NormalScale1;
  let x_449 : vec2<f32> = vec2<f32>(x_446, x_448);
  let x_453 : vec2<f32> = (vec2<f32>(x_442.x, x_442.y) * vec2<f32>(x_449.x, x_449.y));
  let x_454 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat4;
  let x_458 : vec4<f32> = u_xlat8;
  let x_460 : vec3<f32> = (vec3<f32>(x_456.y, x_456.y, x_456.y) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat4;
  let x_465 : vec4<f32> = u_xlat7;
  let x_468 : vec4<f32> = u_xlat6;
  let x_470 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.x, x_463.x) * vec3<f32>(x_465.x, x_465.y, x_465.z)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_477 : vec4<f32> = vs_TEXCOORD2;
  let x_480 : f32 = x_110.x_GlobalMipBias.x;
  let x_481 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_477.x, x_477.y), x_480);
  let x_482 : vec3<f32> = vec3<f32>(x_481.x, x_481.y, x_481.w);
  let x_483 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_486 : f32 = u_xlat7.x;
  let x_488 : f32 = u_xlat7.z;
  u_xlat7.x = (x_486 * x_488);
  let x_491 : vec4<f32> = u_xlat7;
  let x_494 : vec2<f32> = ((vec2<f32>(x_491.x, x_491.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  let x_499 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_497.x, x_497.y), vec2<f32>(x_499.x, x_499.y));
  let x_502 : f32 = u_xlat43;
  u_xlat43 = min(x_502, 1.0f);
  let x_504 : f32 = u_xlat43;
  u_xlat43 = (-(x_504) + 1.0f);
  let x_507 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_507);
  let x_509 : f32 = u_xlat43;
  u_xlat8.z = max(x_509, 0.0000000000000001f);
  let x_512 : vec4<f32> = u_xlat7;
  let x_516 : f32 = x_13.x_NormalScale2;
  let x_518 : f32 = x_13.x_NormalScale2;
  let x_519 : vec2<f32> = vec2<f32>(x_516, x_518);
  let x_523 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) * vec2<f32>(x_519.x, x_519.y));
  let x_524 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat4;
  let x_528 : vec4<f32> = u_xlat8;
  let x_531 : vec4<f32> = u_xlat6;
  let x_533 : vec3<f32> = ((vec3<f32>(x_526.z, x_526.z, x_526.z) * vec3<f32>(x_528.x, x_528.y, x_528.z)) + vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_540 : vec4<f32> = vs_TEXCOORD2;
  let x_543 : f32 = x_110.x_GlobalMipBias.x;
  let x_544 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_540.z, x_540.w), x_543);
  let x_545 : vec3<f32> = vec3<f32>(x_544.x, x_544.y, x_544.w);
  let x_546 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : f32 = u_xlat7.x;
  let x_551 : f32 = u_xlat7.z;
  u_xlat7.x = (x_549 * x_551);
  let x_554 : vec4<f32> = u_xlat7;
  let x_557 : vec2<f32> = ((vec2<f32>(x_554.x, x_554.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_558.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  let x_562 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_560.x, x_560.y), vec2<f32>(x_562.x, x_562.y));
  let x_565 : f32 = u_xlat43;
  u_xlat43 = min(x_565, 1.0f);
  let x_567 : f32 = u_xlat43;
  u_xlat43 = (-(x_567) + 1.0f);
  let x_570 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_570);
  let x_572 : f32 = u_xlat43;
  u_xlat8.z = max(x_572, 0.0000000000000001f);
  let x_575 : vec4<f32> = u_xlat7;
  let x_579 : f32 = x_13.x_NormalScale3;
  let x_581 : f32 = x_13.x_NormalScale3;
  let x_582 : vec2<f32> = vec2<f32>(x_579, x_581);
  let x_586 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) * vec2<f32>(x_582.x, x_582.y));
  let x_587 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
  let x_589 : vec4<f32> = u_xlat4;
  let x_591 : vec4<f32> = u_xlat8;
  let x_594 : vec4<f32> = u_xlat6;
  let x_596 : vec3<f32> = ((vec3<f32>(x_589.w, x_589.w, x_589.w) * vec3<f32>(x_591.x, x_591.y, x_591.z)) + vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_600 : f32 = u_xlat6.z;
  u_xlat6.w = (x_600 + 0.00000999999974737875f);
  let x_604 : vec4<f32> = u_xlat6;
  let x_606 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_604.x, x_604.y, x_604.w), vec3<f32>(x_606.x, x_606.y, x_606.w));
  let x_609 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_609);
  let x_611 : f32 = u_xlat43;
  let x_613 : vec4<f32> = u_xlat6;
  let x_615 : vec3<f32> = (vec3<f32>(x_611, x_611, x_611) * vec3<f32>(x_613.x, x_613.y, x_613.w));
  let x_616 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_619 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_619;
  let x_622 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_622;
  let x_625 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_625;
  let x_628 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_628;
  let x_631 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_631;
  let x_634 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_634;
  let x_637 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_637;
  let x_640 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_640;
  let x_642 : vec4<f32> = u_xlat7;
  let x_643 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_642 + x_643);
  let x_646 : f32 = u_xlat0.z;
  u_xlat8.x = x_646;
  let x_649 : f32 = u_xlat1.z;
  u_xlat8.y = x_649;
  let x_652 : f32 = u_xlat2.z;
  u_xlat8.z = x_652;
  let x_655 : f32 = u_xlat3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat9;
  let x_660 : f32 = x_13.x_Smoothness0;
  let x_662 : f32 = x_13.x_Smoothness1;
  let x_664 : f32 = x_13.x_Smoothness2;
  let x_666 : f32 = x_13.x_Smoothness3;
  let x_669 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_657) * vec4<f32>(x_660, x_662, x_664, x_666)) + x_669);
  let x_673 : f32 = x_13.x_LayerHasMask0;
  let x_676 : f32 = x_13.x_LayerHasMask1;
  let x_679 : f32 = x_13.x_LayerHasMask2;
  let x_682 : f32 = x_13.x_LayerHasMask3;
  let x_684 : vec4<f32> = u_xlat8;
  let x_686 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_673, x_676, x_679, x_682) * x_684) + x_686);
  let x_689 : vec4<f32> = u_xlat4;
  let x_690 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_689, x_690);
  let x_693 : f32 = u_xlat0.x;
  u_xlat8.x = x_693;
  let x_696 : f32 = u_xlat1.x;
  u_xlat8.y = x_696;
  let x_699 : f32 = u_xlat2.x;
  u_xlat8.z = x_699;
  let x_702 : f32 = u_xlat3.x;
  u_xlat8.w = x_702;
  let x_704 : vec4<f32> = u_xlat8;
  let x_707 : f32 = x_13.x_Metallic0;
  let x_710 : f32 = x_13.x_Metallic1;
  let x_713 : f32 = x_13.x_Metallic2;
  let x_716 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_704 + -(vec4<f32>(x_707, x_710, x_713, x_716)));
  let x_721 : f32 = x_13.x_LayerHasMask0;
  let x_723 : f32 = x_13.x_LayerHasMask1;
  let x_725 : f32 = x_13.x_LayerHasMask2;
  let x_727 : f32 = x_13.x_LayerHasMask3;
  let x_729 : vec4<f32> = u_xlat8;
  let x_732 : f32 = x_13.x_Metallic0;
  let x_734 : f32 = x_13.x_Metallic1;
  let x_736 : f32 = x_13.x_Metallic2;
  let x_738 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_721, x_723, x_725, x_727) * x_729) + vec4<f32>(x_732, x_734, x_736, x_738));
  let x_741 : vec4<f32> = u_xlat4;
  let x_742 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_741, x_742);
  let x_746 : f32 = u_xlat0.y;
  u_xlat3.x = x_746;
  let x_749 : f32 = u_xlat1.y;
  u_xlat3.y = x_749;
  let x_752 : f32 = u_xlat2.y;
  u_xlat3.z = x_752;
  let x_754 : vec4<f32> = u_xlat7;
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_754) + x_756);
  let x_759 : f32 = x_13.x_LayerHasMask0;
  let x_761 : f32 = x_13.x_LayerHasMask1;
  let x_763 : f32 = x_13.x_LayerHasMask2;
  let x_765 : f32 = x_13.x_LayerHasMask3;
  let x_767 : vec4<f32> = u_xlat1;
  let x_769 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_759, x_761, x_763, x_765) * x_767) + x_769);
  let x_772 : vec4<f32> = u_xlat4;
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_772, x_773);
  let x_775 : vec4<f32> = u_xlat6;
  let x_778 : vec4<f32> = vs_TEXCOORD5;
  let x_780 : vec3<f32> = (vec3<f32>(x_775.y, x_775.y, x_775.y) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat6;
  let x_786 : vec4<f32> = vs_TEXCOORD4;
  let x_790 : vec4<f32> = u_xlat1;
  let x_792 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.x, x_783.x) * -(vec3<f32>(x_786.x, x_786.y, x_786.z))) + vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat6;
  let x_798 : vec4<f32> = vs_TEXCOORD3;
  let x_801 : vec4<f32> = u_xlat1;
  let x_803 : vec3<f32> = ((vec3<f32>(x_795.z, x_795.z, x_795.z) * vec3<f32>(x_798.x, x_798.y, x_798.z)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat1;
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_806.x, x_806.y, x_806.z), vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_811);
  let x_813 : f32 = u_xlat43;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = (vec3<f32>(x_813, x_813, x_813) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  u_xlat1.w = 1.0f;
  let x_827 : vec4<f32> = x_825.unity_SHAr;
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_827, x_828);
  let x_832 : vec4<f32> = x_825.unity_SHAg;
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_832, x_833);
  let x_837 : vec4<f32> = x_825.unity_SHAb;
  let x_838 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_837, x_838);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_841.y, x_841.z, x_841.z, x_841.x) * vec4<f32>(x_843.x, x_843.y, x_843.z, x_843.z));
  let x_847 : vec4<f32> = x_825.unity_SHBr;
  let x_848 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_847, x_848);
  let x_852 : vec4<f32> = x_825.unity_SHBg;
  let x_853 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_852, x_853);
  let x_857 : vec4<f32> = x_825.unity_SHBb;
  let x_858 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_857, x_858);
  let x_862 : f32 = u_xlat1.y;
  let x_864 : f32 = u_xlat1.y;
  u_xlat43 = (x_862 * x_864);
  let x_867 : f32 = u_xlat1.x;
  let x_869 : f32 = u_xlat1.x;
  let x_871 : f32 = u_xlat43;
  u_xlat43 = ((x_867 * x_869) + -(x_871));
  let x_876 : vec4<f32> = x_825.unity_SHC;
  let x_878 : f32 = u_xlat43;
  let x_881 : vec4<f32> = u_xlat4;
  let x_883 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(x_878, x_878, x_878)) + vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec3<f32> = u_xlat2;
  let x_887 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_886 + vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_890, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_894 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_894) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_900 : f32 = u_xlat28;
  let x_901 : f32 = u_xlat43;
  u_xlat44 = (x_900 + -(x_901));
  let x_904 : f32 = u_xlat43;
  let x_906 : vec4<f32> = u_xlat5;
  let x_908 : vec3<f32> = (vec3<f32>(x_904, x_904, x_904) * vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat5;
  let x_915 : vec3<f32> = (vec3<f32>(x_911.x, x_911.y, x_911.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_916 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec3<f32> = u_xlat0;
  let x_920 : vec4<f32> = u_xlat4;
  let x_925 : vec3<f32> = ((vec3<f32>(x_918.x, x_918.x, x_918.x) * vec3<f32>(x_920.x, x_920.y, x_920.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_926 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : f32 = u_xlat28;
  u_xlat0.x = (-(x_928) + 1.0f);
  let x_933 : f32 = u_xlat0.x;
  let x_935 : f32 = u_xlat0.x;
  u_xlat28 = (x_933 * x_935);
  let x_937 : f32 = u_xlat28;
  u_xlat28 = max(x_937, 0.0078125f);
  let x_940 : f32 = u_xlat28;
  let x_941 : f32 = u_xlat28;
  u_xlat43 = (x_940 * x_941);
  let x_943 : f32 = u_xlat44;
  u_xlat44 = (x_943 + 1.0f);
  let x_945 : f32 = u_xlat44;
  u_xlat44 = clamp(x_945, 0.0f, 1.0f);
  let x_948 : f32 = u_xlat28;
  u_xlat45 = ((x_948 * 4.0f) + 2.0f);
  let x_951 : f32 = u_xlat14;
  u_xlat14 = min(x_951, 1.0f);
  let x_956 : vec4<f32> = vs_TEXCOORD8;
  let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
  let x_960 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_957.x, x_957.y, x_960);
  let x_973 : vec3<f32> = txVec0;
  let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_973.xy, x_973.z);
  u_xlat46 = x_975;
  let x_985 : f32 = x_983.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_985) + 1.0f);
  let x_989 : f32 = u_xlat46;
  let x_991 : f32 = x_983.x_MainLightShadowParams.x;
  let x_994 : f32 = u_xlat5.x;
  u_xlat46 = ((x_989 * x_991) + x_994);
  let x_998 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_998);
  let x_1004 : f32 = vs_TEXCOORD8.z;
  u_xlatb19.x = (x_1004 >= 1.0f);
  let x_1008 : bool = u_xlatb19.x;
  let x_1009 : bool = u_xlatb5;
  u_xlatb5 = (x_1008 | x_1009);
  let x_1011 : bool = u_xlatb5;
  let x_1012 : f32 = u_xlat46;
  u_xlat46 = select(x_1012, 1.0f, x_1011);
  let x_1016 : vec3<f32> = vs_TEXCOORD7;
  let x_1019 : vec3<f32> = x_110.x_WorldSpaceCameraPos;
  let x_1021 : vec3<f32> = (x_1016 + -(x_1019));
  let x_1022 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : vec4<f32> = u_xlat5;
  let x_1026 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1024.x, x_1024.y, x_1024.z), vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
  let x_1032 : f32 = u_xlat5.x;
  let x_1034 : f32 = x_983.x_MainLightShadowParams.z;
  let x_1037 : f32 = x_983.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1032 * x_1034) + x_1037);
  let x_1041 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1041, 0.0f, 1.0f);
  let x_1045 : f32 = u_xlat46;
  u_xlat33 = (-(x_1045) + 1.0f);
  let x_1049 : f32 = u_xlat19.x;
  let x_1050 : f32 = u_xlat33;
  let x_1052 : f32 = u_xlat46;
  u_xlat46 = ((x_1049 * x_1050) + x_1052);
  let x_1061 : f32 = x_1059.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_1061 == -1.0f));
  let x_1065 : bool = u_xlatb19.x;
  if (x_1065) {
    let x_1068 : vec3<f32> = vs_TEXCOORD7;
    let x_1071 : vec4<f32> = x_1059.x_MainLightWorldToLight[1i];
    let x_1073 : vec2<f32> = (vec2<f32>(x_1068.y, x_1068.y) * vec2<f32>(x_1071.x, x_1071.y));
    let x_1074 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1073.x, x_1073.y, x_1074.z);
    let x_1077 : vec4<f32> = x_1059.x_MainLightWorldToLight[0i];
    let x_1079 : vec3<f32> = vs_TEXCOORD7;
    let x_1082 : vec3<f32> = u_xlat19;
    let x_1084 : vec2<f32> = ((vec2<f32>(x_1077.x, x_1077.y) * vec2<f32>(x_1079.x, x_1079.x)) + vec2<f32>(x_1082.x, x_1082.y));
    let x_1085 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1084.x, x_1084.y, x_1085.z);
    let x_1088 : vec4<f32> = x_1059.x_MainLightWorldToLight[2i];
    let x_1090 : vec3<f32> = vs_TEXCOORD7;
    let x_1093 : vec3<f32> = u_xlat19;
    let x_1095 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(x_1090.z, x_1090.z)) + vec2<f32>(x_1093.x, x_1093.y));
    let x_1096 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1095.x, x_1095.y, x_1096.z);
    let x_1098 : vec3<f32> = u_xlat19;
    let x_1101 : vec4<f32> = x_1059.x_MainLightWorldToLight[3i];
    let x_1103 : vec2<f32> = (vec2<f32>(x_1098.x, x_1098.y) + vec2<f32>(x_1101.x, x_1101.y));
    let x_1104 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1103.x, x_1103.y, x_1104.z);
    let x_1106 : vec3<f32> = u_xlat19;
    let x_1109 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1110 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1109.x, x_1109.y, x_1110.z);
    let x_1117 : vec3<f32> = u_xlat19;
    let x_1120 : f32 = x_110.x_GlobalMipBias.x;
    let x_1121 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1117.x, x_1117.y), x_1120);
    u_xlat6 = x_1121;
    let x_1123 : f32 = x_1059.x_MainLightCookieTextureFormat;
    let x_1125 : f32 = x_1059.x_MainLightCookieTextureFormat;
    let x_1127 : f32 = x_1059.x_MainLightCookieTextureFormat;
    let x_1129 : f32 = x_1059.x_MainLightCookieTextureFormat;
    let x_1130 : vec4<f32> = vec4<f32>(x_1123, x_1125, x_1127, x_1129);
    let x_1137 : vec4<bool> = (vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1130.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_1137.x, x_1137.y);
    let x_1140 : bool = u_xlatb19.y;
    if (x_1140) {
      let x_1146 : f32 = u_xlat6.w;
      x_1142 = x_1146;
    } else {
      let x_1149 : f32 = u_xlat6.x;
      x_1142 = x_1149;
    }
    let x_1150 : f32 = x_1142;
    u_xlat33 = x_1150;
    let x_1152 : bool = u_xlatb19.x;
    if (x_1152) {
      let x_1156 : vec4<f32> = u_xlat6;
      x_1153 = vec3<f32>(x_1156.x, x_1156.y, x_1156.z);
    } else {
      let x_1159 : f32 = u_xlat33;
      x_1153 = vec3<f32>(x_1159, x_1159, x_1159);
    }
    let x_1161 : vec3<f32> = x_1153;
    u_xlat19 = x_1161;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_1166 : vec3<f32> = u_xlat19;
  let x_1168 : vec4<f32> = x_110.x_MainLightColor;
  u_xlat19 = (x_1166 * vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
  let x_1172 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1172;
  let x_1175 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1175;
  let x_1178 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1178;
  let x_1181 : vec4<f32> = u_xlat6;
  let x_1184 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(vec3<f32>(x_1181.x, x_1181.y, x_1181.z)), vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : f32 = u_xlat48;
  let x_1188 : f32 = u_xlat48;
  u_xlat48 = (x_1187 + x_1188);
  let x_1190 : vec4<f32> = u_xlat1;
  let x_1192 : f32 = u_xlat48;
  let x_1196 : vec4<f32> = u_xlat6;
  let x_1199 : vec3<f32> = ((vec3<f32>(x_1190.x, x_1190.y, x_1190.z) * -(vec3<f32>(x_1192, x_1192, x_1192))) + -(vec3<f32>(x_1196.x, x_1196.y, x_1196.z)));
  let x_1200 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  let x_1202 : vec4<f32> = u_xlat1;
  let x_1204 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1207 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1207, 0.0f, 1.0f);
  let x_1209 : f32 = u_xlat48;
  u_xlat48 = (-(x_1209) + 1.0f);
  let x_1212 : f32 = u_xlat48;
  let x_1213 : f32 = u_xlat48;
  u_xlat48 = (x_1212 * x_1213);
  let x_1215 : f32 = u_xlat48;
  let x_1216 : f32 = u_xlat48;
  u_xlat48 = (x_1215 * x_1216);
  let x_1220 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_1220) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1227 : f32 = u_xlat0.x;
  let x_1228 : f32 = u_xlat49;
  u_xlat0.x = (x_1227 * x_1228);
  let x_1232 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1232 * 6.0f);
  let x_1244 : vec4<f32> = u_xlat7;
  let x_1247 : f32 = u_xlat0.x;
  let x_1248 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1244.x, x_1244.y, x_1244.z), x_1247);
  u_xlat7 = x_1248;
  let x_1250 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1250 + -1.0f);
  let x_1254 : f32 = x_825.unity_SpecCube0_HDR.w;
  let x_1256 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1254 * x_1256) + 1.0f);
  let x_1261 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1261, 0.0f);
  let x_1265 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1265);
  let x_1269 : f32 = u_xlat0.x;
  let x_1271 : f32 = x_825.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1269 * x_1271);
  let x_1275 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1275);
  let x_1279 : f32 = u_xlat0.x;
  let x_1281 : f32 = x_825.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1279 * x_1281);
  let x_1284 : vec4<f32> = u_xlat7;
  let x_1286 : vec3<f32> = u_xlat0;
  let x_1288 : vec3<f32> = (vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * vec3<f32>(x_1286.x, x_1286.x, x_1286.x));
  let x_1289 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
  let x_1291 : f32 = u_xlat28;
  let x_1293 : f32 = u_xlat28;
  let x_1297 : vec2<f32> = ((vec2<f32>(x_1291, x_1291) * vec2<f32>(x_1293, x_1293)) + vec2<f32>(-1.0f, 1.0f));
  let x_1298 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1297.x, x_1298.y, x_1297.y);
  let x_1301 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1301);
  let x_1303 : vec4<f32> = u_xlat4;
  let x_1306 : f32 = u_xlat44;
  let x_1308 : vec3<f32> = (-(vec3<f32>(x_1303.x, x_1303.y, x_1303.z)) + vec3<f32>(x_1306, x_1306, x_1306));
  let x_1309 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1311 : f32 = u_xlat48;
  let x_1313 : vec4<f32> = u_xlat8;
  let x_1316 : vec4<f32> = u_xlat4;
  let x_1318 : vec3<f32> = ((vec3<f32>(x_1311, x_1311, x_1311) * vec3<f32>(x_1313.x, x_1313.y, x_1313.z)) + vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1319 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
  let x_1321 : f32 = u_xlat28;
  let x_1323 : vec4<f32> = u_xlat8;
  let x_1325 : vec3<f32> = (vec3<f32>(x_1321, x_1321, x_1321) * vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : vec4<f32> = u_xlat7;
  let x_1330 : vec4<f32> = u_xlat8;
  let x_1332 : vec3<f32> = (vec3<f32>(x_1328.x, x_1328.y, x_1328.z) * vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
  let x_1333 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
  let x_1335 : vec3<f32> = u_xlat2;
  let x_1336 : vec4<f32> = u_xlat3;
  let x_1339 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_1335 * vec3<f32>(x_1336.x, x_1336.y, x_1336.z)) + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : f32 = u_xlat46;
  let x_1344 : f32 = x_825.unity_LightData.z;
  u_xlat28 = (x_1342 * x_1344);
  let x_1346 : vec4<f32> = u_xlat1;
  let x_1349 : vec4<f32> = x_110.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1346.x, x_1346.y, x_1346.z), vec3<f32>(x_1349.x, x_1349.y, x_1349.z));
  let x_1352 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1352, 0.0f, 1.0f);
  let x_1354 : f32 = u_xlat28;
  let x_1355 : f32 = u_xlat44;
  u_xlat28 = (x_1354 * x_1355);
  let x_1357 : f32 = u_xlat28;
  let x_1359 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1357, x_1357, x_1357) * x_1359);
  let x_1361 : vec4<f32> = u_xlat6;
  let x_1364 : vec4<f32> = x_110.x_MainLightPosition;
  let x_1366 : vec3<f32> = (vec3<f32>(x_1361.x, x_1361.y, x_1361.z) + vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
  let x_1367 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1366.x, x_1366.y, x_1366.z, x_1367.w);
  let x_1369 : vec4<f32> = u_xlat7;
  let x_1371 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1369.x, x_1369.y, x_1369.z), vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
  let x_1374 : f32 = u_xlat28;
  u_xlat28 = max(x_1374, 1.17549435e-38f);
  let x_1377 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1377);
  let x_1379 : f32 = u_xlat28;
  let x_1381 : vec4<f32> = u_xlat7;
  let x_1383 : vec3<f32> = (vec3<f32>(x_1379, x_1379, x_1379) * vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
  let x_1384 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
  let x_1386 : vec4<f32> = u_xlat1;
  let x_1388 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1386.x, x_1386.y, x_1386.z), vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
  let x_1391 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1391, 0.0f, 1.0f);
  let x_1394 : vec4<f32> = x_110.x_MainLightPosition;
  let x_1396 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1394.x, x_1394.y, x_1394.z), vec3<f32>(x_1396.x, x_1396.y, x_1396.z));
  let x_1399 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1399, 0.0f, 1.0f);
  let x_1401 : f32 = u_xlat28;
  let x_1402 : f32 = u_xlat28;
  u_xlat28 = (x_1401 * x_1402);
  let x_1404 : f32 = u_xlat28;
  let x_1406 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1404 * x_1406) + 1.00001001358032226562f);
  let x_1410 : f32 = u_xlat44;
  let x_1411 : f32 = u_xlat44;
  u_xlat44 = (x_1410 * x_1411);
  let x_1413 : f32 = u_xlat28;
  let x_1414 : f32 = u_xlat28;
  u_xlat28 = (x_1413 * x_1414);
  let x_1416 : f32 = u_xlat44;
  u_xlat44 = max(x_1416, 0.10000000149011611938f);
  let x_1419 : f32 = u_xlat28;
  let x_1420 : f32 = u_xlat44;
  u_xlat28 = (x_1419 * x_1420);
  let x_1422 : f32 = u_xlat45;
  let x_1423 : f32 = u_xlat28;
  u_xlat28 = (x_1422 * x_1423);
  let x_1425 : f32 = u_xlat43;
  let x_1426 : f32 = u_xlat28;
  u_xlat28 = (x_1425 / x_1426);
  let x_1428 : vec4<f32> = u_xlat4;
  let x_1430 : f32 = u_xlat28;
  let x_1433 : vec4<f32> = u_xlat3;
  let x_1435 : vec3<f32> = ((vec3<f32>(x_1428.x, x_1428.y, x_1428.z) * vec3<f32>(x_1430, x_1430, x_1430)) + vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
  let x_1436 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
  let x_1438 : vec3<f32> = u_xlat19;
  let x_1439 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1438 * vec3<f32>(x_1439.x, x_1439.y, x_1439.z));
  let x_1443 : f32 = x_110.x_AdditionalLightsCount.x;
  let x_1445 : f32 = x_825.unity_LightData.y;
  u_xlat28 = min(x_1443, x_1445);
  let x_1449 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1449));
  let x_1453 : f32 = u_xlat5.x;
  let x_1455 : f32 = x_983.x_AdditionalShadowFadeParams.x;
  let x_1458 : f32 = x_983.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1453 * x_1455) + x_1458);
  let x_1460 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1460, 0.0f, 1.0f);
  let x_1464 : f32 = x_1059.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1466 : f32 = x_1059.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1468 : f32 = x_1059.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1470 : f32 = x_1059.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1471 : vec4<f32> = vec4<f32>(x_1464, x_1466, x_1468, x_1470);
  let x_1477 : vec4<bool> = (vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1471.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1477.x, x_1477.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1489 : u32 = u_xlatu_loop_1;
    let x_1490 : u32 = u_xlatu28;
    if ((x_1489 < x_1490)) {
    } else {
      break;
    }
    let x_1493 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1493 >> 2u);
    let x_1497 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1497 & 3u));
    let x_1500 : u32 = u_xlatu5;
    let x_1503 : vec4<f32> = x_825.unity_LightIndices[bitcast<i32>(x_1500)];
    let x_1513 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1518 : vec4<u32> = indexable[x_1513];
    u_xlat5.x = dot(x_1503, bitcast<vec4<f32>>(x_1518));
    let x_1524 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1524);
    let x_1526 : vec3<f32> = vs_TEXCOORD7;
    let x_1537 : i32 = u_xlati5;
    let x_1539 : vec4<f32> = x_1536.x_AdditionalLightsPosition[x_1537];
    let x_1542 : i32 = u_xlati5;
    let x_1544 : vec4<f32> = x_1536.x_AdditionalLightsPosition[x_1542];
    let x_1546 : vec3<f32> = ((-(x_1526) * vec3<f32>(x_1539.w, x_1539.w, x_1539.w)) + vec3<f32>(x_1544.x, x_1544.y, x_1544.z));
    let x_1547 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1547.w);
    let x_1549 : vec4<f32> = u_xlat9;
    let x_1551 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1549.x, x_1549.y, x_1549.z), vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
    let x_1554 : f32 = u_xlat48;
    u_xlat48 = max(x_1554, 0.00006103515625f);
    let x_1557 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1557);
    let x_1559 : f32 = u_xlat35;
    let x_1561 : vec4<f32> = u_xlat9;
    let x_1563 : vec3<f32> = (vec3<f32>(x_1559, x_1559, x_1559) * vec3<f32>(x_1561.x, x_1561.y, x_1561.z));
    let x_1564 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1563.x, x_1563.y, x_1563.z, x_1564.w);
    let x_1566 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1566);
    let x_1568 : f32 = u_xlat48;
    let x_1569 : i32 = u_xlati5;
    let x_1571 : f32 = x_1536.x_AdditionalLightsAttenuation[x_1569].x;
    u_xlat48 = (x_1568 * x_1571);
    let x_1573 : f32 = u_xlat48;
    let x_1575 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1573) * x_1575) + 1.0f);
    let x_1578 : f32 = u_xlat48;
    u_xlat48 = max(x_1578, 0.0f);
    let x_1580 : f32 = u_xlat48;
    let x_1581 : f32 = u_xlat48;
    u_xlat48 = (x_1580 * x_1581);
    let x_1583 : f32 = u_xlat48;
    let x_1584 : f32 = u_xlat49;
    u_xlat48 = (x_1583 * x_1584);
    let x_1586 : i32 = u_xlati5;
    let x_1588 : vec4<f32> = x_1536.x_AdditionalLightsSpotDir[x_1586];
    let x_1590 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1588.x, x_1588.y, x_1588.z), vec3<f32>(x_1590.x, x_1590.y, x_1590.z));
    let x_1593 : f32 = u_xlat49;
    let x_1594 : i32 = u_xlati5;
    let x_1596 : f32 = x_1536.x_AdditionalLightsAttenuation[x_1594].z;
    let x_1598 : i32 = u_xlati5;
    let x_1600 : f32 = x_1536.x_AdditionalLightsAttenuation[x_1598].w;
    u_xlat49 = ((x_1593 * x_1596) + x_1600);
    let x_1602 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1602, 0.0f, 1.0f);
    let x_1604 : f32 = u_xlat49;
    let x_1605 : f32 = u_xlat49;
    u_xlat49 = (x_1604 * x_1605);
    let x_1607 : f32 = u_xlat48;
    let x_1608 : f32 = u_xlat49;
    u_xlat48 = (x_1607 * x_1608);
    let x_1611 : i32 = u_xlati5;
    let x_1613 : f32 = x_983.x_AdditionalShadowParams[x_1611].w;
    u_xlati49 = i32(x_1613);
    let x_1616 : i32 = u_xlati49;
    u_xlatb50 = (x_1616 >= 0i);
    let x_1618 : bool = u_xlatb50;
    if (x_1618) {
      let x_1622 : i32 = u_xlati5;
      let x_1624 : f32 = x_983.x_AdditionalShadowParams[x_1622].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1624, x_1624, x_1624, x_1624))));
      let x_1628 : bool = u_xlatb50;
      if (x_1628) {
        let x_1633 : vec4<f32> = u_xlat10;
        let x_1636 : vec4<f32> = u_xlat10;
        let x_1639 : vec4<bool> = (abs(vec4<f32>(x_1633.z, x_1633.z, x_1633.y, x_1633.z)) >= abs(vec4<f32>(x_1636.x, x_1636.y, x_1636.x, x_1636.x)));
        let x_1641 : vec3<bool> = vec3<bool>(x_1639.x, x_1639.y, x_1639.z);
        let x_1642 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1641.x, x_1641.y, x_1641.z, x_1642.w);
        let x_1645 : bool = u_xlatb11.y;
        let x_1647 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1645 & x_1647);
        let x_1649 : vec4<f32> = u_xlat10;
        let x_1652 : vec4<bool> = (-(vec4<f32>(x_1649.z, x_1649.y, x_1649.z, x_1649.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1653 : vec3<bool> = vec3<bool>(x_1652.x, x_1652.y, x_1652.w);
        let x_1654 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1653.x, x_1653.y, x_1654.z, x_1653.z);
        let x_1657 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1657);
        let x_1662 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1662);
        let x_1668 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1668);
        let x_1671 : bool = u_xlatb11.z;
        if (x_1671) {
          let x_1676 : f32 = u_xlat11.y;
          x_1672 = x_1676;
        } else {
          let x_1678 : f32 = u_xlat51;
          x_1672 = x_1678;
        }
        let x_1679 : f32 = x_1672;
        u_xlat51 = x_1679;
        let x_1681 : bool = u_xlatb50;
        if (x_1681) {
          let x_1686 : f32 = u_xlat11.x;
          x_1682 = x_1686;
        } else {
          let x_1688 : f32 = u_xlat51;
          x_1682 = x_1688;
        }
        let x_1689 : f32 = x_1682;
        u_xlat50 = x_1689;
        let x_1690 : i32 = u_xlati5;
        let x_1692 : f32 = x_983.x_AdditionalShadowParams[x_1690].w;
        u_xlat51 = trunc(x_1692);
        let x_1694 : f32 = u_xlat50;
        let x_1695 : f32 = u_xlat51;
        u_xlat50 = (x_1694 + x_1695);
        let x_1697 : f32 = u_xlat50;
        u_xlati49 = i32(x_1697);
      }
      let x_1699 : i32 = u_xlati49;
      u_xlati49 = (x_1699 << bitcast<u32>(2i));
      let x_1701 : vec3<f32> = vs_TEXCOORD7;
      let x_1703 : i32 = u_xlati49;
      let x_1706 : i32 = u_xlati49;
      let x_1710 : vec4<f32> = x_983.x_AdditionalLightsWorldToShadow[((x_1703 + 1i) / 4i)][((x_1706 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1701.y, x_1701.y, x_1701.y, x_1701.y) * x_1710);
      let x_1712 : i32 = u_xlati49;
      let x_1714 : i32 = u_xlati49;
      let x_1717 : vec4<f32> = x_983.x_AdditionalLightsWorldToShadow[(x_1712 / 4i)][(x_1714 % 4i)];
      let x_1718 : vec3<f32> = vs_TEXCOORD7;
      let x_1721 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1717 * vec4<f32>(x_1718.x, x_1718.x, x_1718.x, x_1718.x)) + x_1721);
      let x_1723 : i32 = u_xlati49;
      let x_1726 : i32 = u_xlati49;
      let x_1730 : vec4<f32> = x_983.x_AdditionalLightsWorldToShadow[((x_1723 + 2i) / 4i)][((x_1726 + 2i) % 4i)];
      let x_1731 : vec3<f32> = vs_TEXCOORD7;
      let x_1734 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1730 * vec4<f32>(x_1731.z, x_1731.z, x_1731.z, x_1731.z)) + x_1734);
      let x_1736 : vec4<f32> = u_xlat11;
      let x_1737 : i32 = u_xlati49;
      let x_1740 : i32 = u_xlati49;
      let x_1744 : vec4<f32> = x_983.x_AdditionalLightsWorldToShadow[((x_1737 + 3i) / 4i)][((x_1740 + 3i) % 4i)];
      u_xlat11 = (x_1736 + x_1744);
      let x_1746 : vec4<f32> = u_xlat11;
      let x_1748 : vec4<f32> = u_xlat11;
      let x_1750 : vec3<f32> = (vec3<f32>(x_1746.x, x_1746.y, x_1746.z) / vec3<f32>(x_1748.w, x_1748.w, x_1748.w));
      let x_1751 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1751.w);
      let x_1754 : vec4<f32> = u_xlat11;
      let x_1755 : vec2<f32> = vec2<f32>(x_1754.x, x_1754.y);
      let x_1757 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1755.x, x_1755.y, x_1757);
      let x_1765 : vec3<f32> = txVec1;
      let x_1767 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1765.xy, x_1765.z);
      u_xlat49 = x_1767;
      let x_1768 : i32 = u_xlati5;
      let x_1770 : f32 = x_983.x_AdditionalShadowParams[x_1768].x;
      u_xlat50 = (1.0f + -(x_1770));
      let x_1773 : f32 = u_xlat49;
      let x_1774 : i32 = u_xlati5;
      let x_1776 : f32 = x_983.x_AdditionalShadowParams[x_1774].x;
      let x_1778 : f32 = u_xlat50;
      u_xlat49 = ((x_1773 * x_1776) + x_1778);
      let x_1781 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1781);
      let x_1785 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1785 >= 1.0f);
      let x_1787 : bool = u_xlatb50;
      let x_1788 : bool = u_xlatb51;
      u_xlatb50 = (x_1787 | x_1788);
      let x_1790 : bool = u_xlatb50;
      let x_1791 : f32 = u_xlat49;
      u_xlat49 = select(x_1791, 1.0f, x_1790);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1794 : f32 = u_xlat49;
    u_xlat50 = (-(x_1794) + 1.0f);
    let x_1797 : f32 = u_xlat44;
    let x_1798 : f32 = u_xlat50;
    let x_1800 : f32 = u_xlat49;
    u_xlat49 = ((x_1797 * x_1798) + x_1800);
    let x_1803 : i32 = u_xlati5;
    u_xlati50 = (1i << bitcast<u32>((x_1803 & 31i)));
    let x_1806 : i32 = u_xlati50;
    let x_1809 : f32 = x_1059.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1806) & bitcast<u32>(x_1809)));
    let x_1813 : i32 = u_xlati50;
    if ((x_1813 != 0i)) {
      let x_1817 : i32 = u_xlati5;
      let x_1819 : f32 = x_1059.x_AdditionalLightsLightTypes[x_1817].el;
      u_xlati50 = i32(x_1819);
      let x_1822 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1822 != 0i));
      let x_1826 : i32 = u_xlati5;
      u_xlati52 = (x_1826 << bitcast<u32>(2i));
      let x_1828 : i32 = u_xlati51;
      if ((x_1828 != 0i)) {
        let x_1832 : vec3<f32> = vs_TEXCOORD7;
        let x_1834 : i32 = u_xlati52;
        let x_1837 : i32 = u_xlati52;
        let x_1841 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[((x_1834 + 1i) / 4i)][((x_1837 + 1i) % 4i)];
        let x_1843 : vec3<f32> = (vec3<f32>(x_1832.y, x_1832.y, x_1832.y) * vec3<f32>(x_1841.x, x_1841.y, x_1841.w));
        let x_1844 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
        let x_1846 : i32 = u_xlati52;
        let x_1848 : i32 = u_xlati52;
        let x_1851 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[(x_1846 / 4i)][(x_1848 % 4i)];
        let x_1853 : vec3<f32> = vs_TEXCOORD7;
        let x_1856 : vec4<f32> = u_xlat11;
        let x_1858 : vec3<f32> = ((vec3<f32>(x_1851.x, x_1851.y, x_1851.w) * vec3<f32>(x_1853.x, x_1853.x, x_1853.x)) + vec3<f32>(x_1856.x, x_1856.y, x_1856.z));
        let x_1859 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
        let x_1861 : i32 = u_xlati52;
        let x_1864 : i32 = u_xlati52;
        let x_1868 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[((x_1861 + 2i) / 4i)][((x_1864 + 2i) % 4i)];
        let x_1870 : vec3<f32> = vs_TEXCOORD7;
        let x_1873 : vec4<f32> = u_xlat11;
        let x_1875 : vec3<f32> = ((vec3<f32>(x_1868.x, x_1868.y, x_1868.w) * vec3<f32>(x_1870.z, x_1870.z, x_1870.z)) + vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
        let x_1876 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
        let x_1878 : vec4<f32> = u_xlat11;
        let x_1880 : i32 = u_xlati52;
        let x_1883 : i32 = u_xlati52;
        let x_1887 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[((x_1880 + 3i) / 4i)][((x_1883 + 3i) % 4i)];
        let x_1889 : vec3<f32> = (vec3<f32>(x_1878.x, x_1878.y, x_1878.z) + vec3<f32>(x_1887.x, x_1887.y, x_1887.w));
        let x_1890 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
        let x_1892 : vec4<f32> = u_xlat11;
        let x_1894 : vec4<f32> = u_xlat11;
        let x_1896 : vec2<f32> = (vec2<f32>(x_1892.x, x_1892.y) / vec2<f32>(x_1894.z, x_1894.z));
        let x_1897 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1896.x, x_1896.y, x_1897.z, x_1897.w);
        let x_1899 : vec4<f32> = u_xlat11;
        let x_1902 : vec2<f32> = ((vec2<f32>(x_1899.x, x_1899.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1903 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1902.x, x_1902.y, x_1903.z, x_1903.w);
        let x_1905 : vec4<f32> = u_xlat11;
        let x_1909 : vec2<f32> = clamp(vec2<f32>(x_1905.x, x_1905.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1910 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1909.x, x_1909.y, x_1910.z, x_1910.w);
        let x_1912 : i32 = u_xlati5;
        let x_1914 : vec4<f32> = x_1059.x_AdditionalLightsCookieAtlasUVRects[x_1912];
        let x_1916 : vec4<f32> = u_xlat11;
        let x_1919 : i32 = u_xlati5;
        let x_1921 : vec4<f32> = x_1059.x_AdditionalLightsCookieAtlasUVRects[x_1919];
        let x_1923 : vec2<f32> = ((vec2<f32>(x_1914.x, x_1914.y) * vec2<f32>(x_1916.x, x_1916.y)) + vec2<f32>(x_1921.z, x_1921.w));
        let x_1924 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1923.x, x_1923.y, x_1924.z, x_1924.w);
      } else {
        let x_1927 : i32 = u_xlati50;
        u_xlatb50 = (x_1927 == 1i);
        let x_1929 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1929);
        let x_1931 : i32 = u_xlati50;
        if ((x_1931 != 0i)) {
          let x_1937 : vec3<f32> = vs_TEXCOORD7;
          let x_1939 : i32 = u_xlati52;
          let x_1942 : i32 = u_xlati52;
          let x_1946 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[((x_1939 + 1i) / 4i)][((x_1942 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1937.y, x_1937.y) * vec2<f32>(x_1946.x, x_1946.y));
          let x_1949 : i32 = u_xlati52;
          let x_1951 : i32 = u_xlati52;
          let x_1954 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[(x_1949 / 4i)][(x_1951 % 4i)];
          let x_1956 : vec3<f32> = vs_TEXCOORD7;
          let x_1959 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1954.x, x_1954.y) * vec2<f32>(x_1956.x, x_1956.x)) + x_1959);
          let x_1961 : i32 = u_xlati52;
          let x_1964 : i32 = u_xlati52;
          let x_1968 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[((x_1961 + 2i) / 4i)][((x_1964 + 2i) % 4i)];
          let x_1970 : vec3<f32> = vs_TEXCOORD7;
          let x_1973 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1968.x, x_1968.y) * vec2<f32>(x_1970.z, x_1970.z)) + x_1973);
          let x_1975 : vec2<f32> = u_xlat39;
          let x_1976 : i32 = u_xlati52;
          let x_1979 : i32 = u_xlati52;
          let x_1983 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[((x_1976 + 3i) / 4i)][((x_1979 + 3i) % 4i)];
          u_xlat39 = (x_1975 + vec2<f32>(x_1983.x, x_1983.y));
          let x_1986 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1986 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1989 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1989);
          let x_1991 : i32 = u_xlati5;
          let x_1993 : vec4<f32> = x_1059.x_AdditionalLightsCookieAtlasUVRects[x_1991];
          let x_1995 : vec2<f32> = u_xlat39;
          let x_1997 : i32 = u_xlati5;
          let x_1999 : vec4<f32> = x_1059.x_AdditionalLightsCookieAtlasUVRects[x_1997];
          let x_2001 : vec2<f32> = ((vec2<f32>(x_1993.x, x_1993.y) * x_1995) + vec2<f32>(x_1999.z, x_1999.w));
          let x_2002 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2001.x, x_2001.y, x_2002.z, x_2002.w);
        } else {
          let x_2005 : vec3<f32> = vs_TEXCOORD7;
          let x_2007 : i32 = u_xlati52;
          let x_2010 : i32 = u_xlati52;
          let x_2014 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[((x_2007 + 1i) / 4i)][((x_2010 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2005.y, x_2005.y, x_2005.y, x_2005.y) * x_2014);
          let x_2016 : i32 = u_xlati52;
          let x_2018 : i32 = u_xlati52;
          let x_2021 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[(x_2016 / 4i)][(x_2018 % 4i)];
          let x_2022 : vec3<f32> = vs_TEXCOORD7;
          let x_2025 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2021 * vec4<f32>(x_2022.x, x_2022.x, x_2022.x, x_2022.x)) + x_2025);
          let x_2027 : i32 = u_xlati52;
          let x_2030 : i32 = u_xlati52;
          let x_2034 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[((x_2027 + 2i) / 4i)][((x_2030 + 2i) % 4i)];
          let x_2035 : vec3<f32> = vs_TEXCOORD7;
          let x_2038 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2034 * vec4<f32>(x_2035.z, x_2035.z, x_2035.z, x_2035.z)) + x_2038);
          let x_2040 : vec4<f32> = u_xlat12;
          let x_2041 : i32 = u_xlati52;
          let x_2044 : i32 = u_xlati52;
          let x_2048 : vec4<f32> = x_1059.x_AdditionalLightsWorldToLights[((x_2041 + 3i) / 4i)][((x_2044 + 3i) % 4i)];
          u_xlat12 = (x_2040 + x_2048);
          let x_2050 : vec4<f32> = u_xlat12;
          let x_2052 : vec4<f32> = u_xlat12;
          let x_2054 : vec3<f32> = (vec3<f32>(x_2050.x, x_2050.y, x_2050.z) / vec3<f32>(x_2052.w, x_2052.w, x_2052.w));
          let x_2055 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
          let x_2057 : vec4<f32> = u_xlat12;
          let x_2059 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2057.x, x_2057.y, x_2057.z), vec3<f32>(x_2059.x, x_2059.y, x_2059.z));
          let x_2062 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2062);
          let x_2064 : f32 = u_xlat50;
          let x_2066 : vec4<f32> = u_xlat12;
          let x_2068 : vec3<f32> = (vec3<f32>(x_2064, x_2064, x_2064) * vec3<f32>(x_2066.x, x_2066.y, x_2066.z));
          let x_2069 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2068.x, x_2068.y, x_2068.z, x_2069.w);
          let x_2071 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2071.x, x_2071.y, x_2071.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2076 : f32 = u_xlat50;
          u_xlat50 = max(x_2076, 0.00000099999999747524f);
          let x_2079 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2079);
          let x_2081 : f32 = u_xlat50;
          let x_2083 : vec4<f32> = u_xlat12;
          let x_2085 : vec3<f32> = (vec3<f32>(x_2081, x_2081, x_2081) * vec3<f32>(x_2083.z, x_2083.x, x_2083.y));
          let x_2086 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2086.w);
          let x_2089 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2089);
          let x_2093 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2093, 0.0f, 1.0f);
          let x_2097 : vec4<f32> = u_xlat13;
          let x_2099 : vec4<bool> = (vec4<f32>(x_2097.y, x_2097.z, x_2097.y, x_2097.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2099.x, x_2099.y);
          let x_2102 : bool = u_xlatb39.x;
          if (x_2102) {
            let x_2107 : f32 = u_xlat13.x;
            x_2103 = x_2107;
          } else {
            let x_2110 : f32 = u_xlat13.x;
            x_2103 = -(x_2110);
          }
          let x_2112 : f32 = x_2103;
          u_xlat39.x = x_2112;
          let x_2115 : bool = u_xlatb39.y;
          if (x_2115) {
            let x_2120 : f32 = u_xlat13.x;
            x_2116 = x_2120;
          } else {
            let x_2123 : f32 = u_xlat13.x;
            x_2116 = -(x_2123);
          }
          let x_2125 : f32 = x_2116;
          u_xlat39.y = x_2125;
          let x_2127 : vec4<f32> = u_xlat12;
          let x_2129 : f32 = u_xlat50;
          let x_2132 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2127.x, x_2127.y) * vec2<f32>(x_2129, x_2129)) + x_2132);
          let x_2134 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2134 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2137 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2137, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2141 : i32 = u_xlati5;
          let x_2143 : vec4<f32> = x_1059.x_AdditionalLightsCookieAtlasUVRects[x_2141];
          let x_2145 : vec2<f32> = u_xlat39;
          let x_2147 : i32 = u_xlati5;
          let x_2149 : vec4<f32> = x_1059.x_AdditionalLightsCookieAtlasUVRects[x_2147];
          let x_2151 : vec2<f32> = ((vec2<f32>(x_2143.x, x_2143.y) * x_2145) + vec2<f32>(x_2149.z, x_2149.w));
          let x_2152 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2151.x, x_2151.y, x_2152.z, x_2152.w);
        }
      }
      let x_2159 : vec4<f32> = u_xlat11;
      let x_2161 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2159.x, x_2159.y), 0.0f);
      u_xlat11 = x_2161;
      let x_2163 : bool = u_xlatb7.y;
      if (x_2163) {
        let x_2168 : f32 = u_xlat11.w;
        x_2164 = x_2168;
      } else {
        let x_2171 : f32 = u_xlat11.x;
        x_2164 = x_2171;
      }
      let x_2172 : f32 = x_2164;
      u_xlat50 = x_2172;
      let x_2174 : bool = u_xlatb7.x;
      if (x_2174) {
        let x_2178 : vec4<f32> = u_xlat11;
        x_2175 = vec3<f32>(x_2178.x, x_2178.y, x_2178.z);
      } else {
        let x_2181 : f32 = u_xlat50;
        x_2175 = vec3<f32>(x_2181, x_2181, x_2181);
      }
      let x_2183 : vec3<f32> = x_2175;
      let x_2184 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2190 : vec4<f32> = u_xlat11;
    let x_2192 : i32 = u_xlati5;
    let x_2194 : vec4<f32> = x_1536.x_AdditionalLightsColor[x_2192];
    let x_2196 : vec3<f32> = (vec3<f32>(x_2190.x, x_2190.y, x_2190.z) * vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
    let x_2197 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
    let x_2199 : f32 = u_xlat48;
    let x_2200 : f32 = u_xlat49;
    u_xlat5.x = (x_2199 * x_2200);
    let x_2203 : vec4<f32> = u_xlat1;
    let x_2205 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2203.x, x_2203.y, x_2203.z), vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
    let x_2208 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2208, 0.0f, 1.0f);
    let x_2211 : f32 = u_xlat5.x;
    let x_2212 : f32 = u_xlat48;
    u_xlat5.x = (x_2211 * x_2212);
    let x_2215 : vec4<f32> = u_xlat5;
    let x_2217 : vec4<f32> = u_xlat11;
    let x_2219 : vec3<f32> = (vec3<f32>(x_2215.x, x_2215.x, x_2215.x) * vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
    let x_2220 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
    let x_2222 : vec4<f32> = u_xlat9;
    let x_2224 : f32 = u_xlat35;
    let x_2227 : vec4<f32> = u_xlat6;
    let x_2229 : vec3<f32> = ((vec3<f32>(x_2222.x, x_2222.y, x_2222.z) * vec3<f32>(x_2224, x_2224, x_2224)) + vec3<f32>(x_2227.x, x_2227.y, x_2227.z));
    let x_2230 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
    let x_2232 : vec4<f32> = u_xlat9;
    let x_2234 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2232.x, x_2232.y, x_2232.z), vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
    let x_2239 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_2239, 1.17549435e-38f);
    let x_2243 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_2243);
    let x_2246 : vec4<f32> = u_xlat5;
    let x_2248 : vec4<f32> = u_xlat9;
    let x_2250 : vec3<f32> = (vec3<f32>(x_2246.x, x_2246.x, x_2246.x) * vec3<f32>(x_2248.x, x_2248.y, x_2248.z));
    let x_2251 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
    let x_2253 : vec4<f32> = u_xlat1;
    let x_2255 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2253.x, x_2253.y, x_2253.z), vec3<f32>(x_2255.x, x_2255.y, x_2255.z));
    let x_2260 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_2260, 0.0f, 1.0f);
    let x_2263 : vec4<f32> = u_xlat10;
    let x_2265 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2263.x, x_2263.y, x_2263.z), vec3<f32>(x_2265.x, x_2265.y, x_2265.z));
    let x_2268 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2268, 0.0f, 1.0f);
    let x_2271 : f32 = u_xlat5.x;
    let x_2273 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2271 * x_2273);
    let x_2277 : f32 = u_xlat5.x;
    let x_2279 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_2277 * x_2279) + 1.00001001358032226562f);
    let x_2283 : f32 = u_xlat48;
    let x_2284 : f32 = u_xlat48;
    u_xlat48 = (x_2283 * x_2284);
    let x_2287 : f32 = u_xlat5.x;
    let x_2289 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2287 * x_2289);
    let x_2292 : f32 = u_xlat48;
    u_xlat48 = max(x_2292, 0.10000000149011611938f);
    let x_2295 : f32 = u_xlat5.x;
    let x_2296 : f32 = u_xlat48;
    u_xlat5.x = (x_2295 * x_2296);
    let x_2299 : f32 = u_xlat45;
    let x_2301 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2299 * x_2301);
    let x_2304 : f32 = u_xlat43;
    let x_2306 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2304 / x_2306);
    let x_2309 : vec4<f32> = u_xlat4;
    let x_2311 : vec4<f32> = u_xlat5;
    let x_2314 : vec4<f32> = u_xlat3;
    let x_2316 : vec3<f32> = ((vec3<f32>(x_2309.x, x_2309.y, x_2309.z) * vec3<f32>(x_2311.x, x_2311.x, x_2311.x)) + vec3<f32>(x_2314.x, x_2314.y, x_2314.z));
    let x_2317 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2316.x, x_2316.y, x_2316.z, x_2317.w);
    let x_2319 : vec4<f32> = u_xlat9;
    let x_2321 : vec4<f32> = u_xlat11;
    let x_2324 : vec4<f32> = u_xlat8;
    let x_2326 : vec3<f32> = ((vec3<f32>(x_2319.x, x_2319.y, x_2319.z) * vec3<f32>(x_2321.x, x_2321.y, x_2321.z)) + vec3<f32>(x_2324.x, x_2324.y, x_2324.z));
    let x_2327 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);

    continuing {
      let x_2329 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2329 + bitcast<u32>(1i));
    }
  }
  let x_2331 : vec3<f32> = u_xlat2;
  let x_2332 : f32 = u_xlat14;
  let x_2335 : vec3<f32> = u_xlat19;
  u_xlat0 = ((x_2331 * vec3<f32>(x_2332, x_2332, x_2332)) + x_2335);
  let x_2337 : vec4<f32> = u_xlat8;
  let x_2339 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2337.x, x_2337.y, x_2337.z) + x_2339);
  let x_2343 : f32 = u_xlat42;
  let x_2345 : vec3<f32> = u_xlat0;
  let x_2346 : vec3<f32> = (vec3<f32>(x_2343, x_2343, x_2343) * x_2345);
  let x_2347 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
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


