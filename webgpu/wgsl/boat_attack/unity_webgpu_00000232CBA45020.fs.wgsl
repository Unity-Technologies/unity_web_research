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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_113 : PGlobals;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

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

var<private> u_xlatb79 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_613 : UnityPerDraw;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_757 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb32 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_2100 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2577 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu83 : u32;

fn main_1() {
  var x_550 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_2183 : f32;
  var x_2195 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2713 : f32;
  var x_2723 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_4302 : f32;
  var x_4315 : f32;
  var x_4373 : f32;
  var x_4384 : vec3<f32>;
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
  u_xlat78 = dot(x_123, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb79 = (4.0f >= x_208);
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
  let x_270 : bool = u_xlatb79;
  let x_271 : vec4<f32> = u_xlat11;
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_272, x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_277, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_279 : f32 = u_xlat79;
  u_xlat79 = (x_279 + 0.00006103515625f);
  let x_282 : vec4<f32> = u_xlat4;
  let x_283 : f32 = u_xlat79;
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
  let x_356 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_356;
  let x_359 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_359;
  let x_362 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_362;
  let x_365 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_365;
  let x_368 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_368;
  let x_371 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_371;
  let x_374 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_374;
  let x_377 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_377;
  let x_379 : vec4<f32> = u_xlat6;
  let x_380 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_379 + x_380);
  let x_383 : f32 = u_xlat0.z;
  u_xlat7.x = x_383;
  let x_386 : f32 = u_xlat1.z;
  u_xlat7.y = x_386;
  let x_389 : f32 = u_xlat2.z;
  u_xlat7.z = x_389;
  let x_392 : f32 = u_xlat3.y;
  u_xlat7.w = x_392;
  let x_394 : vec4<f32> = u_xlat9;
  let x_397 : f32 = x_13.x_Smoothness0;
  let x_399 : f32 = x_13.x_Smoothness1;
  let x_401 : f32 = x_13.x_Smoothness2;
  let x_403 : f32 = x_13.x_Smoothness3;
  let x_406 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_394) * vec4<f32>(x_397, x_399, x_401, x_403)) + x_406);
  let x_410 : f32 = x_13.x_LayerHasMask0;
  let x_413 : f32 = x_13.x_LayerHasMask1;
  let x_416 : f32 = x_13.x_LayerHasMask2;
  let x_419 : f32 = x_13.x_LayerHasMask3;
  let x_421 : vec4<f32> = u_xlat7;
  let x_423 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_410, x_413, x_416, x_419) * x_421) + x_423);
  let x_426 : vec4<f32> = u_xlat4;
  let x_427 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_426, x_427);
  let x_430 : f32 = u_xlat0.x;
  u_xlat7.x = x_430;
  let x_433 : f32 = u_xlat1.x;
  u_xlat7.y = x_433;
  let x_436 : f32 = u_xlat2.x;
  u_xlat7.z = x_436;
  let x_439 : f32 = u_xlat3.x;
  u_xlat7.w = x_439;
  let x_441 : vec4<f32> = u_xlat7;
  let x_444 : f32 = x_13.x_Metallic0;
  let x_447 : f32 = x_13.x_Metallic1;
  let x_450 : f32 = x_13.x_Metallic2;
  let x_453 : f32 = x_13.x_Metallic3;
  u_xlat7 = (x_441 + -(vec4<f32>(x_444, x_447, x_450, x_453)));
  let x_458 : f32 = x_13.x_LayerHasMask0;
  let x_460 : f32 = x_13.x_LayerHasMask1;
  let x_462 : f32 = x_13.x_LayerHasMask2;
  let x_464 : f32 = x_13.x_LayerHasMask3;
  let x_466 : vec4<f32> = u_xlat7;
  let x_469 : f32 = x_13.x_Metallic0;
  let x_471 : f32 = x_13.x_Metallic1;
  let x_473 : f32 = x_13.x_Metallic2;
  let x_475 : f32 = x_13.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_458, x_460, x_462, x_464) * x_466) + vec4<f32>(x_469, x_471, x_473, x_475));
  let x_478 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_478, x_479);
  let x_483 : f32 = u_xlat0.y;
  u_xlat3.x = x_483;
  let x_486 : f32 = u_xlat1.y;
  u_xlat3.y = x_486;
  let x_489 : f32 = u_xlat2.y;
  u_xlat3.z = x_489;
  let x_491 : vec4<f32> = u_xlat6;
  let x_493 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_491) + x_493);
  let x_496 : f32 = x_13.x_LayerHasMask0;
  let x_498 : f32 = x_13.x_LayerHasMask1;
  let x_500 : f32 = x_13.x_LayerHasMask2;
  let x_502 : f32 = x_13.x_LayerHasMask3;
  let x_504 : vec4<f32> = u_xlat1;
  let x_506 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_496, x_498, x_500, x_502) * x_504) + x_506);
  let x_509 : vec4<f32> = u_xlat4;
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_509, x_510);
  let x_514 : f32 = x_113.unity_OrthoParams.w;
  u_xlatb1 = (x_514 == 0.0f);
  let x_519 : vec3<f32> = vs_TEXCOORD7;
  let x_523 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_519) + x_523);
  let x_525 : vec3<f32> = u_xlat27;
  let x_526 : vec3<f32> = u_xlat27;
  u_xlat2.x = dot(x_525, x_526);
  let x_530 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_530);
  let x_533 : vec3<f32> = u_xlat27;
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat27 = (x_533 * vec3<f32>(x_534.x, x_534.x, x_534.x));
  let x_538 : f32 = x_113.unity_MatrixV[0i].z;
  u_xlat2.x = x_538;
  let x_542 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat2.y = x_542;
  let x_546 : f32 = x_113.unity_MatrixV[2i].z;
  u_xlat2.z = x_546;
  let x_548 : bool = u_xlatb1;
  if (x_548) {
    let x_553 : vec3<f32> = u_xlat27;
    x_550 = x_553;
  } else {
    let x_555 : vec4<f32> = u_xlat2;
    x_550 = vec3<f32>(x_555.x, x_555.y, x_555.z);
  }
  let x_557 : vec3<f32> = x_550;
  let x_558 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : vec3<f32> = vs_TEXCOORD3;
  let x_562 : vec3<f32> = vs_TEXCOORD3;
  u_xlat79 = dot(x_561, x_562);
  let x_564 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_564);
  let x_566 : f32 = u_xlat79;
  let x_568 : vec3<f32> = vs_TEXCOORD3;
  let x_569 : vec3<f32> = (vec3<f32>(x_566, x_566, x_566) * x_568);
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_574 : f32 = vs_TEXCOORD7.y;
  let x_576 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat79 = (x_574 * x_576);
  let x_579 : f32 = x_113.unity_MatrixV[0i].z;
  let x_581 : f32 = vs_TEXCOORD7.x;
  let x_583 : f32 = u_xlat79;
  u_xlat79 = ((x_579 * x_581) + x_583);
  let x_586 : f32 = x_113.unity_MatrixV[2i].z;
  let x_588 : f32 = vs_TEXCOORD7.z;
  let x_590 : f32 = u_xlat79;
  u_xlat79 = ((x_586 * x_588) + x_590);
  let x_592 : f32 = u_xlat79;
  let x_595 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat79 = (x_592 + x_595);
  let x_597 : f32 = u_xlat79;
  let x_600 : f32 = x_113.x_ProjectionParams.y;
  u_xlat79 = (-(x_597) + -(x_600));
  let x_603 : f32 = u_xlat79;
  u_xlat79 = max(x_603, 0.0f);
  let x_605 : f32 = u_xlat79;
  let x_607 : f32 = x_113.unity_FogParams.x;
  u_xlat79 = (x_605 * x_607);
  u_xlat2.w = 1.0f;
  let x_615 : vec4<f32> = x_613.unity_SHAr;
  let x_616 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_615, x_616);
  let x_620 : vec4<f32> = x_613.unity_SHAg;
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_620, x_621);
  let x_625 : vec4<f32> = x_613.unity_SHAb;
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_625, x_626);
  let x_629 : vec4<f32> = u_xlat2;
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_629.y, x_629.z, x_629.z, x_629.x) * vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.z));
  let x_635 : vec4<f32> = x_613.unity_SHBr;
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_635, x_636);
  let x_640 : vec4<f32> = x_613.unity_SHBg;
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_640, x_641);
  let x_645 : vec4<f32> = x_613.unity_SHBb;
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_645, x_646);
  let x_651 : f32 = u_xlat2.y;
  let x_653 : f32 = u_xlat2.y;
  u_xlat80 = (x_651 * x_653);
  let x_656 : f32 = u_xlat2.x;
  let x_658 : f32 = u_xlat2.x;
  let x_660 : f32 = u_xlat80;
  u_xlat80 = ((x_656 * x_658) + -(x_660));
  let x_665 : vec4<f32> = x_613.unity_SHC;
  let x_667 : f32 = u_xlat80;
  let x_670 : vec4<f32> = u_xlat6;
  let x_672 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(x_667, x_667, x_667)) + vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat3;
  let x_685 : vec3<f32> = max(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_686 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_689 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_689) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_695 : f32 = u_xlat52;
  let x_696 : f32 = u_xlat80;
  u_xlat81 = (x_695 + -(x_696));
  let x_699 : f32 = u_xlat80;
  let x_701 : vec4<f32> = u_xlat5;
  let x_703 : vec3<f32> = (vec3<f32>(x_699, x_699, x_699) * vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat5;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_711 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec3<f32> = u_xlat0;
  let x_715 : vec4<f32> = u_xlat5;
  let x_720 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.x, x_713.x) * vec3<f32>(x_715.x, x_715.y, x_715.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_721 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : f32 = u_xlat52;
  u_xlat0.x = (-(x_723) + 1.0f);
  let x_728 : f32 = u_xlat0.x;
  let x_730 : f32 = u_xlat0.x;
  u_xlat52 = (x_728 * x_730);
  let x_732 : f32 = u_xlat52;
  u_xlat52 = max(x_732, 0.0078125f);
  let x_735 : f32 = u_xlat52;
  let x_736 : f32 = u_xlat52;
  u_xlat80 = (x_735 * x_736);
  let x_738 : f32 = u_xlat81;
  u_xlat81 = (x_738 + 1.0f);
  let x_740 : f32 = u_xlat81;
  u_xlat81 = clamp(x_740, 0.0f, 1.0f);
  let x_743 : f32 = u_xlat52;
  u_xlat82 = ((x_743 * 4.0f) + 2.0f);
  let x_747 : f32 = u_xlat26;
  u_xlat26 = min(x_747, 1.0f);
  let x_759 : f32 = x_757.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_759);
  let x_761 : bool = u_xlatb83;
  if (x_761) {
    let x_765 : f32 = x_757.x_MainLightShadowParams.y;
    u_xlatb83 = (x_765 == 1.0f);
    let x_767 : bool = u_xlatb83;
    if (x_767) {
      let x_771 : vec4<f32> = vs_TEXCOORD8;
      let x_774 : vec4<f32> = x_757.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.y) + x_774);
      let x_777 : vec4<f32> = u_xlat6;
      let x_778 : vec2<f32> = vec2<f32>(x_777.x, x_777.y);
      let x_780 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_778.x, x_778.y, x_780);
      let x_792 : vec3<f32> = txVec0;
      let x_794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_792.xy, x_792.z);
      u_xlat7.x = x_794;
      let x_797 : vec4<f32> = u_xlat6;
      let x_798 : vec2<f32> = vec2<f32>(x_797.z, x_797.w);
      let x_800 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_798.x, x_798.y, x_800);
      let x_807 : vec3<f32> = txVec1;
      let x_809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_807.xy, x_807.z);
      u_xlat7.y = x_809;
      let x_811 : vec4<f32> = vs_TEXCOORD8;
      let x_814 : vec4<f32> = x_757.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y) + x_814);
      let x_817 : vec4<f32> = u_xlat6;
      let x_818 : vec2<f32> = vec2<f32>(x_817.x, x_817.y);
      let x_820 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_818.x, x_818.y, x_820);
      let x_827 : vec3<f32> = txVec2;
      let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_827.xy, x_827.z);
      u_xlat7.z = x_829;
      let x_832 : vec4<f32> = u_xlat6;
      let x_833 : vec2<f32> = vec2<f32>(x_832.z, x_832.w);
      let x_835 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_833.x, x_833.y, x_835);
      let x_842 : vec3<f32> = txVec3;
      let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
      u_xlat7.w = x_844;
      let x_847 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_847, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_854 : f32 = x_757.x_MainLightShadowParams.y;
      u_xlatb6 = (x_854 == 2.0f);
      let x_856 : bool = u_xlatb6;
      if (x_856) {
        let x_859 : vec4<f32> = vs_TEXCOORD8;
        let x_862 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_865 : vec2<f32> = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(x_862.z, x_862.w)) + vec2<f32>(0.5f, 0.5f));
        let x_866 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_868 : vec4<f32> = u_xlat6;
        let x_870 : vec2<f32> = floor(vec2<f32>(x_868.x, x_868.y));
        let x_871 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_875 : vec4<f32> = vs_TEXCOORD8;
        let x_878 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_881 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_875.x, x_875.y) * vec2<f32>(x_878.z, x_878.w)) + -(vec2<f32>(x_881.x, x_881.y)));
        let x_885 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_885.x, x_885.x, x_885.y, x_885.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_889 : vec4<f32> = u_xlat7;
        let x_891 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_889.x, x_889.x, x_889.z, x_889.z) * vec4<f32>(x_891.x, x_891.x, x_891.z, x_891.z));
        let x_894 : vec4<f32> = u_xlat8;
        let x_898 : vec2<f32> = (vec2<f32>(x_894.y, x_894.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_899 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_898.x, x_899.y, x_898.y, x_899.w);
        let x_901 : vec4<f32> = u_xlat8;
        let x_904 : vec2<f32> = u_xlat58;
        let x_906 : vec2<f32> = ((vec2<f32>(x_901.x, x_901.z) * vec2<f32>(0.5f, 0.5f)) + -(x_904));
        let x_907 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_910 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_910) + vec2<f32>(1.0f, 1.0f));
        let x_914 : vec2<f32> = u_xlat58;
        let x_916 : vec2<f32> = min(x_914, vec2<f32>(0.0f, 0.0f));
        let x_917 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat9;
        let x_922 : vec4<f32> = u_xlat9;
        let x_925 : vec2<f32> = u_xlat60;
        let x_926 : vec2<f32> = ((-(vec2<f32>(x_919.x, x_919.y)) * vec2<f32>(x_922.x, x_922.y)) + x_925);
        let x_927 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_929, vec2<f32>(0.0f, 0.0f));
        let x_931 : vec2<f32> = u_xlat58;
        let x_933 : vec2<f32> = u_xlat58;
        let x_935 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_931) * x_933) + vec2<f32>(x_935.y, x_935.w));
        let x_938 : vec4<f32> = u_xlat9;
        let x_940 : vec2<f32> = (vec2<f32>(x_938.x, x_938.y) + vec2<f32>(1.0f, 1.0f));
        let x_941 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_943 + vec2<f32>(1.0f, 1.0f));
        let x_945 : vec4<f32> = u_xlat8;
        let x_949 : vec2<f32> = (vec2<f32>(x_945.x, x_945.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_950 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec2<f32> = u_xlat60;
        let x_953 : vec2<f32> = (x_952 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_954 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat9;
        let x_958 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_959 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec2<f32> = u_xlat58;
        let x_962 : vec2<f32> = (x_961 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_963 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_965.y, x_965.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_969 : f32 = u_xlat9.x;
        u_xlat10.z = x_969;
        let x_972 : f32 = u_xlat58.x;
        u_xlat10.w = x_972;
        let x_975 : f32 = u_xlat11.x;
        u_xlat8.z = x_975;
        let x_978 : f32 = u_xlat7.x;
        u_xlat8.w = x_978;
        let x_980 : vec4<f32> = u_xlat8;
        let x_982 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_980.z, x_980.w, x_980.x, x_980.z) + vec4<f32>(x_982.z, x_982.w, x_982.x, x_982.z));
        let x_986 : f32 = u_xlat10.y;
        u_xlat9.z = x_986;
        let x_989 : f32 = u_xlat58.y;
        u_xlat9.w = x_989;
        let x_992 : f32 = u_xlat8.y;
        u_xlat11.z = x_992;
        let x_995 : f32 = u_xlat7.z;
        u_xlat11.w = x_995;
        let x_997 : vec4<f32> = u_xlat9;
        let x_999 : vec4<f32> = u_xlat11;
        let x_1001 : vec3<f32> = (vec3<f32>(x_997.z, x_997.y, x_997.w) + vec3<f32>(x_999.z, x_999.y, x_999.w));
        let x_1002 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
        let x_1004 : vec4<f32> = u_xlat8;
        let x_1006 : vec4<f32> = u_xlat12;
        let x_1008 : vec3<f32> = (vec3<f32>(x_1004.x, x_1004.z, x_1004.w) / vec3<f32>(x_1006.z, x_1006.w, x_1006.y));
        let x_1009 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat8;
        let x_1017 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1018 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat11;
        let x_1022 : vec4<f32> = u_xlat7;
        let x_1024 : vec3<f32> = (vec3<f32>(x_1020.z, x_1020.y, x_1020.w) / vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
        let x_1025 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1029 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1030 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
        let x_1032 : vec4<f32> = u_xlat8;
        let x_1035 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1037 : vec3<f32> = (vec3<f32>(x_1032.y, x_1032.x, x_1032.z) * vec3<f32>(x_1035.x, x_1035.x, x_1035.x));
        let x_1038 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
        let x_1040 : vec4<f32> = u_xlat9;
        let x_1043 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1045 : vec3<f32> = (vec3<f32>(x_1040.x, x_1040.y, x_1040.z) * vec3<f32>(x_1043.y, x_1043.y, x_1043.y));
        let x_1046 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
        let x_1049 : f32 = u_xlat9.x;
        u_xlat8.w = x_1049;
        let x_1051 : vec4<f32> = u_xlat6;
        let x_1054 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y) * vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y)) + vec4<f32>(x_1057.y, x_1057.w, x_1057.x, x_1057.w));
        let x_1060 : vec4<f32> = u_xlat6;
        let x_1063 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(x_1063.x, x_1063.y)) + vec2<f32>(x_1066.z, x_1066.w));
        let x_1070 : f32 = u_xlat8.y;
        u_xlat9.w = x_1070;
        let x_1072 : vec4<f32> = u_xlat9;
        let x_1073 : vec2<f32> = vec2<f32>(x_1072.y, x_1072.z);
        let x_1074 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1074.x, x_1073.x, x_1074.z, x_1073.y);
        let x_1076 : vec4<f32> = u_xlat6;
        let x_1079 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y) * vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y)) + vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1082.y));
        let x_1085 : vec4<f32> = u_xlat6;
        let x_1088 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.w, x_1091.y, x_1091.w, x_1091.z));
        let x_1094 : vec4<f32> = u_xlat6;
        let x_1097 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y) * vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y)) + vec4<f32>(x_1100.x, x_1100.w, x_1100.z, x_1100.w));
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1105 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1103.x, x_1103.x, x_1103.x, x_1103.y) * vec4<f32>(x_1105.z, x_1105.w, x_1105.y, x_1105.z));
        let x_1109 : vec4<f32> = u_xlat7;
        let x_1111 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1109.y, x_1109.y, x_1109.z, x_1109.z) * x_1111);
        let x_1114 : f32 = u_xlat7.z;
        let x_1116 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1114 * x_1116);
        let x_1120 : vec4<f32> = u_xlat10;
        let x_1121 : vec2<f32> = vec2<f32>(x_1120.x, x_1120.y);
        let x_1123 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1131 : vec3<f32> = txVec4;
        let x_1133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1131.xy, x_1131.z);
        u_xlat32.x = x_1133;
        let x_1136 : vec4<f32> = u_xlat10;
        let x_1137 : vec2<f32> = vec2<f32>(x_1136.z, x_1136.w);
        let x_1139 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1137.x, x_1137.y, x_1139);
        let x_1146 : vec3<f32> = txVec5;
        let x_1148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1146.xy, x_1146.z);
        u_xlat7.x = x_1148;
        let x_1151 : f32 = u_xlat7.x;
        let x_1153 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1151 * x_1153);
        let x_1157 : f32 = u_xlat13.x;
        let x_1159 : f32 = u_xlat32.x;
        let x_1162 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_1157 * x_1159) + x_1162);
        let x_1166 : vec2<f32> = u_xlat58;
        let x_1168 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1166.x, x_1166.y, x_1168);
        let x_1175 : vec3<f32> = txVec6;
        let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1175.xy, x_1175.z);
        u_xlat58.x = x_1177;
        let x_1180 : f32 = u_xlat13.z;
        let x_1182 : f32 = u_xlat58.x;
        let x_1185 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1180 * x_1182) + x_1185);
        let x_1189 : vec4<f32> = u_xlat9;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.x, x_1189.y);
        let x_1192 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1199 : vec3<f32> = txVec7;
        let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1199.xy, x_1199.z);
        u_xlat58.x = x_1201;
        let x_1204 : f32 = u_xlat13.w;
        let x_1206 : f32 = u_xlat58.x;
        let x_1209 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1204 * x_1206) + x_1209);
        let x_1213 : vec4<f32> = u_xlat11;
        let x_1214 : vec2<f32> = vec2<f32>(x_1213.x, x_1213.y);
        let x_1216 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec8;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1223.xy, x_1223.z);
        u_xlat58.x = x_1225;
        let x_1228 : f32 = u_xlat14.x;
        let x_1230 : f32 = u_xlat58.x;
        let x_1233 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1228 * x_1230) + x_1233);
        let x_1237 : vec4<f32> = u_xlat11;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.z, x_1237.w);
        let x_1240 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec9;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
        u_xlat58.x = x_1249;
        let x_1252 : f32 = u_xlat14.y;
        let x_1254 : f32 = u_xlat58.x;
        let x_1257 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1252 * x_1254) + x_1257);
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.z, x_1261.w);
        let x_1264 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec10;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1271.xy, x_1271.z);
        u_xlat58.x = x_1273;
        let x_1276 : f32 = u_xlat14.z;
        let x_1278 : f32 = u_xlat58.x;
        let x_1281 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1276 * x_1278) + x_1281);
        let x_1285 : vec4<f32> = u_xlat8;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.x, x_1285.y);
        let x_1288 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec11;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat58.x = x_1297;
        let x_1300 : f32 = u_xlat14.w;
        let x_1302 : f32 = u_xlat58.x;
        let x_1305 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1300 * x_1302) + x_1305);
        let x_1309 : vec4<f32> = u_xlat8;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.z, x_1309.w);
        let x_1312 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec12;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1319.xy, x_1319.z);
        u_xlat58.x = x_1321;
        let x_1324 : f32 = u_xlat6.x;
        let x_1326 : f32 = u_xlat58.x;
        let x_1329 : f32 = u_xlat32.x;
        u_xlat83 = ((x_1324 * x_1326) + x_1329);
      } else {
        let x_1332 : vec4<f32> = vs_TEXCOORD8;
        let x_1335 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1338 : vec2<f32> = ((vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(x_1335.z, x_1335.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1339 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1341 : vec4<f32> = u_xlat6;
        let x_1343 : vec2<f32> = floor(vec2<f32>(x_1341.x, x_1341.y));
        let x_1344 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1343.x, x_1343.y, x_1344.z, x_1344.w);
        let x_1346 : vec4<f32> = vs_TEXCOORD8;
        let x_1349 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1346.x, x_1346.y) * vec2<f32>(x_1349.z, x_1349.w)) + -(vec2<f32>(x_1352.x, x_1352.y)));
        let x_1356 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1356.x, x_1356.x, x_1356.y, x_1356.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1359 : vec4<f32> = u_xlat7;
        let x_1361 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1359.x, x_1359.x, x_1359.z, x_1359.z) * vec4<f32>(x_1361.x, x_1361.x, x_1361.z, x_1361.z));
        let x_1364 : vec4<f32> = u_xlat8;
        let x_1368 : vec2<f32> = (vec2<f32>(x_1364.y, x_1364.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1369.x, x_1368.x, x_1369.z, x_1368.y);
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1374 : vec2<f32> = u_xlat58;
        let x_1376 : vec2<f32> = ((vec2<f32>(x_1371.x, x_1371.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1374));
        let x_1377 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1376.x, x_1377.y, x_1376.y, x_1377.w);
        let x_1379 : vec2<f32> = u_xlat58;
        let x_1381 : vec2<f32> = (-(x_1379) + vec2<f32>(1.0f, 1.0f));
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
        let x_1384 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1384, vec2<f32>(0.0f, 0.0f));
        let x_1386 : vec2<f32> = u_xlat60;
        let x_1388 : vec2<f32> = u_xlat60;
        let x_1390 : vec4<f32> = u_xlat8;
        let x_1392 : vec2<f32> = ((-(x_1386) * x_1388) + vec2<f32>(x_1390.x, x_1390.y));
        let x_1393 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1392.x, x_1392.y, x_1393.z, x_1393.w);
        let x_1395 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1395, vec2<f32>(0.0f, 0.0f));
        let x_1398 : vec2<f32> = u_xlat60;
        let x_1400 : vec2<f32> = u_xlat60;
        let x_1402 : vec4<f32> = u_xlat7;
        let x_1404 : vec2<f32> = ((-(x_1398) * x_1400) + vec2<f32>(x_1402.y, x_1402.w));
        let x_1405 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1404.x, x_1405.y, x_1404.y);
        let x_1407 : vec4<f32> = u_xlat8;
        let x_1410 : vec2<f32> = (vec2<f32>(x_1407.x, x_1407.y) + vec2<f32>(2.0f, 2.0f));
        let x_1411 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1410.x, x_1410.y, x_1411.z, x_1411.w);
        let x_1413 : vec3<f32> = u_xlat33;
        let x_1415 : vec2<f32> = (vec2<f32>(x_1413.x, x_1413.z) + vec2<f32>(2.0f, 2.0f));
        let x_1416 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1416.x, x_1415.x, x_1416.z, x_1415.y);
        let x_1419 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1419 * 0.08163200318813323975f);
        let x_1423 : vec4<f32> = u_xlat7;
        let x_1426 : vec3<f32> = (vec3<f32>(x_1423.z, x_1423.x, x_1423.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1427 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
        let x_1429 : vec4<f32> = u_xlat8;
        let x_1432 : vec2<f32> = (vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1433 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1432.x, x_1432.y, x_1433.z, x_1433.w);
        let x_1436 : f32 = u_xlat11.y;
        u_xlat10.x = x_1436;
        let x_1438 : vec2<f32> = u_xlat58;
        let x_1445 : vec2<f32> = ((vec2<f32>(x_1438.x, x_1438.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1446 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1446.x, x_1445.x, x_1446.z, x_1445.y);
        let x_1448 : vec2<f32> = u_xlat58;
        let x_1452 : vec2<f32> = ((vec2<f32>(x_1448.x, x_1448.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1453 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1452.x, x_1453.y, x_1452.y, x_1453.w);
        let x_1456 : f32 = u_xlat7.x;
        u_xlat8.y = x_1456;
        let x_1459 : f32 = u_xlat9.y;
        u_xlat8.w = x_1459;
        let x_1461 : vec4<f32> = u_xlat8;
        let x_1462 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1461 + x_1462);
        let x_1464 : vec2<f32> = u_xlat58;
        let x_1467 : vec2<f32> = ((vec2<f32>(x_1464.y, x_1464.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1468 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1468.x, x_1467.x, x_1468.z, x_1467.y);
        let x_1470 : vec2<f32> = u_xlat58;
        let x_1473 : vec2<f32> = ((vec2<f32>(x_1470.y, x_1470.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1474 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1473.x, x_1474.y, x_1473.y, x_1474.w);
        let x_1477 : f32 = u_xlat7.y;
        u_xlat9.y = x_1477;
        let x_1479 : vec4<f32> = u_xlat9;
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1479 + x_1480);
        let x_1482 : vec4<f32> = u_xlat8;
        let x_1483 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1482 / x_1483);
        let x_1485 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1485 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1491 : vec4<f32> = u_xlat9;
        let x_1492 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1491 / x_1492);
        let x_1494 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1494 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1496 : vec4<f32> = u_xlat8;
        let x_1499 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1496.w, x_1496.x, x_1496.y, x_1496.z) * vec4<f32>(x_1499.x, x_1499.x, x_1499.x, x_1499.x));
        let x_1502 : vec4<f32> = u_xlat9;
        let x_1505 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1502.x, x_1502.w, x_1502.y, x_1502.z) * vec4<f32>(x_1505.y, x_1505.y, x_1505.y, x_1505.y));
        let x_1508 : vec4<f32> = u_xlat8;
        let x_1509 : vec3<f32> = vec3<f32>(x_1508.y, x_1508.z, x_1508.w);
        let x_1510 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1509.x, x_1510.y, x_1509.y, x_1509.z);
        let x_1513 : f32 = u_xlat9.x;
        u_xlat11.y = x_1513;
        let x_1515 : vec4<f32> = u_xlat6;
        let x_1518 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1521 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1515.x, x_1515.y, x_1515.x, x_1515.y) * vec4<f32>(x_1518.x, x_1518.y, x_1518.x, x_1518.y)) + vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1521.y));
        let x_1524 : vec4<f32> = u_xlat6;
        let x_1527 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1530 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1527.x, x_1527.y)) + vec2<f32>(x_1530.w, x_1530.y));
        let x_1534 : f32 = u_xlat11.y;
        u_xlat8.y = x_1534;
        let x_1537 : f32 = u_xlat9.z;
        u_xlat11.y = x_1537;
        let x_1539 : vec4<f32> = u_xlat6;
        let x_1542 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1539.x, x_1539.y, x_1539.x, x_1539.y) * vec4<f32>(x_1542.x, x_1542.y, x_1542.x, x_1542.y)) + vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1545.y));
        let x_1548 : vec4<f32> = u_xlat6;
        let x_1551 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1554 : vec4<f32> = u_xlat11;
        let x_1556 : vec2<f32> = ((vec2<f32>(x_1548.x, x_1548.y) * vec2<f32>(x_1551.x, x_1551.y)) + vec2<f32>(x_1554.w, x_1554.y));
        let x_1557 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1556.x, x_1556.y, x_1557.z, x_1557.w);
        let x_1560 : f32 = u_xlat11.y;
        u_xlat8.z = x_1560;
        let x_1563 : vec4<f32> = u_xlat6;
        let x_1566 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1569 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1563.x, x_1563.y, x_1563.x, x_1563.y) * vec4<f32>(x_1566.x, x_1566.y, x_1566.x, x_1566.y)) + vec4<f32>(x_1569.x, x_1569.y, x_1569.x, x_1569.z));
        let x_1573 : f32 = u_xlat9.w;
        u_xlat11.y = x_1573;
        let x_1576 : vec4<f32> = u_xlat6;
        let x_1579 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1582 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.y) * vec4<f32>(x_1579.x, x_1579.y, x_1579.x, x_1579.y)) + vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1582.y));
        let x_1586 : vec4<f32> = u_xlat6;
        let x_1589 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1592 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(x_1589.x, x_1589.y)) + vec2<f32>(x_1592.w, x_1592.y));
        let x_1596 : f32 = u_xlat11.y;
        u_xlat8.w = x_1596;
        let x_1599 : vec4<f32> = u_xlat6;
        let x_1602 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1605 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1599.x, x_1599.y) * vec2<f32>(x_1602.x, x_1602.y)) + vec2<f32>(x_1605.x, x_1605.w));
        let x_1608 : vec4<f32> = u_xlat11;
        let x_1609 : vec3<f32> = vec3<f32>(x_1608.x, x_1608.z, x_1608.w);
        let x_1610 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1609.x, x_1610.y, x_1609.y, x_1609.z);
        let x_1612 : vec4<f32> = u_xlat6;
        let x_1615 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1618 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1612.x, x_1612.y, x_1612.x, x_1612.y) * vec4<f32>(x_1615.x, x_1615.y, x_1615.x, x_1615.y)) + vec4<f32>(x_1618.x, x_1618.y, x_1618.z, x_1618.y));
        let x_1622 : vec4<f32> = u_xlat6;
        let x_1625 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1628 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1622.x, x_1622.y) * vec2<f32>(x_1625.x, x_1625.y)) + vec2<f32>(x_1628.w, x_1628.y));
        let x_1632 : f32 = u_xlat8.x;
        u_xlat9.x = x_1632;
        let x_1634 : vec4<f32> = u_xlat6;
        let x_1637 : vec4<f32> = x_757.x_MainLightShadowmapSize;
        let x_1640 : vec4<f32> = u_xlat9;
        let x_1642 : vec2<f32> = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.x, x_1640.y));
        let x_1643 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1642.x, x_1642.y, x_1643.z, x_1643.w);
        let x_1646 : vec4<f32> = u_xlat7;
        let x_1648 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1646.x, x_1646.x, x_1646.x, x_1646.x) * x_1648);
        let x_1651 : vec4<f32> = u_xlat7;
        let x_1653 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1651.y, x_1651.y, x_1651.y, x_1651.y) * x_1653);
        let x_1656 : vec4<f32> = u_xlat7;
        let x_1658 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1656.z, x_1656.z, x_1656.z, x_1656.z) * x_1658);
        let x_1660 : vec4<f32> = u_xlat7;
        let x_1662 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1660.w, x_1660.w, x_1660.w, x_1660.w) * x_1662);
        let x_1665 : vec4<f32> = u_xlat12;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.x, x_1665.y);
        let x_1668 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec13;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1675.xy, x_1675.z);
        u_xlat8.x = x_1677;
        let x_1680 : vec4<f32> = u_xlat12;
        let x_1681 : vec2<f32> = vec2<f32>(x_1680.z, x_1680.w);
        let x_1683 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1691 : vec3<f32> = txVec14;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1691.xy, x_1691.z);
        u_xlat86 = x_1693;
        let x_1694 : f32 = u_xlat86;
        let x_1696 : f32 = u_xlat17.y;
        u_xlat86 = (x_1694 * x_1696);
        let x_1699 : f32 = u_xlat17.x;
        let x_1701 : f32 = u_xlat8.x;
        let x_1703 : f32 = u_xlat86;
        u_xlat8.x = ((x_1699 * x_1701) + x_1703);
        let x_1707 : vec2<f32> = u_xlat58;
        let x_1709 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec15;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1716.xy, x_1716.z);
        u_xlat58.x = x_1718;
        let x_1721 : f32 = u_xlat17.z;
        let x_1723 : f32 = u_xlat58.x;
        let x_1726 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1721 * x_1723) + x_1726);
        let x_1730 : vec4<f32> = u_xlat15;
        let x_1731 : vec2<f32> = vec2<f32>(x_1730.x, x_1730.y);
        let x_1733 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1731.x, x_1731.y, x_1733);
        let x_1741 : vec3<f32> = txVec16;
        let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1741.xy, x_1741.z);
        u_xlat84 = x_1743;
        let x_1745 : f32 = u_xlat17.w;
        let x_1746 : f32 = u_xlat84;
        let x_1749 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1745 * x_1746) + x_1749);
        let x_1753 : vec4<f32> = u_xlat13;
        let x_1754 : vec2<f32> = vec2<f32>(x_1753.x, x_1753.y);
        let x_1756 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec17;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1763.xy, x_1763.z);
        u_xlat84 = x_1765;
        let x_1767 : f32 = u_xlat18.x;
        let x_1768 : f32 = u_xlat84;
        let x_1771 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1767 * x_1768) + x_1771);
        let x_1775 : vec4<f32> = u_xlat13;
        let x_1776 : vec2<f32> = vec2<f32>(x_1775.z, x_1775.w);
        let x_1778 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec18;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1785.xy, x_1785.z);
        u_xlat84 = x_1787;
        let x_1789 : f32 = u_xlat18.y;
        let x_1790 : f32 = u_xlat84;
        let x_1793 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1789 * x_1790) + x_1793);
        let x_1797 : vec4<f32> = u_xlat14;
        let x_1798 : vec2<f32> = vec2<f32>(x_1797.x, x_1797.y);
        let x_1800 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1798.x, x_1798.y, x_1800);
        let x_1807 : vec3<f32> = txVec19;
        let x_1809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1807.xy, x_1807.z);
        u_xlat84 = x_1809;
        let x_1811 : f32 = u_xlat18.z;
        let x_1812 : f32 = u_xlat84;
        let x_1815 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1811 * x_1812) + x_1815);
        let x_1819 : vec4<f32> = u_xlat15;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.z, x_1819.w);
        let x_1822 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec20;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1829.xy, x_1829.z);
        u_xlat84 = x_1831;
        let x_1833 : f32 = u_xlat18.w;
        let x_1834 : f32 = u_xlat84;
        let x_1837 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1833 * x_1834) + x_1837);
        let x_1841 : vec4<f32> = u_xlat16;
        let x_1842 : vec2<f32> = vec2<f32>(x_1841.x, x_1841.y);
        let x_1844 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1842.x, x_1842.y, x_1844);
        let x_1851 : vec3<f32> = txVec21;
        let x_1853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1851.xy, x_1851.z);
        u_xlat84 = x_1853;
        let x_1855 : f32 = u_xlat19.x;
        let x_1856 : f32 = u_xlat84;
        let x_1859 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1855 * x_1856) + x_1859);
        let x_1863 : vec4<f32> = u_xlat16;
        let x_1864 : vec2<f32> = vec2<f32>(x_1863.z, x_1863.w);
        let x_1866 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1864.x, x_1864.y, x_1866);
        let x_1873 : vec3<f32> = txVec22;
        let x_1875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1873.xy, x_1873.z);
        u_xlat84 = x_1875;
        let x_1877 : f32 = u_xlat19.y;
        let x_1878 : f32 = u_xlat84;
        let x_1881 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1877 * x_1878) + x_1881);
        let x_1885 : vec2<f32> = u_xlat34;
        let x_1887 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1885.x, x_1885.y, x_1887);
        let x_1894 : vec3<f32> = txVec23;
        let x_1896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1894.xy, x_1894.z);
        u_xlat84 = x_1896;
        let x_1898 : f32 = u_xlat19.z;
        let x_1899 : f32 = u_xlat84;
        let x_1902 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1898 * x_1899) + x_1902);
        let x_1906 : vec2<f32> = u_xlat66;
        let x_1908 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1906.x, x_1906.y, x_1908);
        let x_1915 : vec3<f32> = txVec24;
        let x_1917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1915.xy, x_1915.z);
        u_xlat84 = x_1917;
        let x_1919 : f32 = u_xlat19.w;
        let x_1920 : f32 = u_xlat84;
        let x_1923 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1919 * x_1920) + x_1923);
        let x_1927 : vec4<f32> = u_xlat11;
        let x_1928 : vec2<f32> = vec2<f32>(x_1927.x, x_1927.y);
        let x_1930 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec25;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1937.xy, x_1937.z);
        u_xlat84 = x_1939;
        let x_1941 : f32 = u_xlat7.x;
        let x_1942 : f32 = u_xlat84;
        let x_1945 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1941 * x_1942) + x_1945);
        let x_1949 : vec4<f32> = u_xlat11;
        let x_1950 : vec2<f32> = vec2<f32>(x_1949.z, x_1949.w);
        let x_1952 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1950.x, x_1950.y, x_1952);
        let x_1959 : vec3<f32> = txVec26;
        let x_1961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1959.xy, x_1959.z);
        u_xlat84 = x_1961;
        let x_1963 : f32 = u_xlat7.y;
        let x_1964 : f32 = u_xlat84;
        let x_1967 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1963 * x_1964) + x_1967);
        let x_1971 : vec2<f32> = u_xlat61;
        let x_1973 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1971.x, x_1971.y, x_1973);
        let x_1980 : vec3<f32> = txVec27;
        let x_1982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1980.xy, x_1980.z);
        u_xlat84 = x_1982;
        let x_1984 : f32 = u_xlat7.z;
        let x_1985 : f32 = u_xlat84;
        let x_1988 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1984 * x_1985) + x_1988);
        let x_1992 : vec4<f32> = u_xlat6;
        let x_1993 : vec2<f32> = vec2<f32>(x_1992.x, x_1992.y);
        let x_1995 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1993.x, x_1993.y, x_1995);
        let x_2002 : vec3<f32> = txVec28;
        let x_2004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2002.xy, x_2002.z);
        u_xlat6.x = x_2004;
        let x_2007 : f32 = u_xlat7.w;
        let x_2009 : f32 = u_xlat6.x;
        let x_2012 : f32 = u_xlat58.x;
        u_xlat83 = ((x_2007 * x_2009) + x_2012);
      }
    }
  } else {
    let x_2016 : vec4<f32> = vs_TEXCOORD8;
    let x_2017 : vec2<f32> = vec2<f32>(x_2016.x, x_2016.y);
    let x_2019 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2017.x, x_2017.y, x_2019);
    let x_2026 : vec3<f32> = txVec29;
    let x_2028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2026.xy, x_2026.z);
    u_xlat83 = x_2028;
  }
  let x_2030 : f32 = x_757.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_2030) + 1.0f);
  let x_2034 : f32 = u_xlat83;
  let x_2036 : f32 = x_757.x_MainLightShadowParams.x;
  let x_2039 : f32 = u_xlat6.x;
  u_xlat83 = ((x_2034 * x_2036) + x_2039);
  let x_2042 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2042);
  let x_2048 : f32 = vs_TEXCOORD8.z;
  u_xlatb32.x = (x_2048 >= 1.0f);
  let x_2052 : bool = u_xlatb32.x;
  let x_2053 : bool = u_xlatb6;
  u_xlatb6 = (x_2052 | x_2053);
  let x_2055 : bool = u_xlatb6;
  let x_2056 : f32 = u_xlat83;
  u_xlat83 = select(x_2056, 1.0f, x_2055);
  let x_2058 : vec3<f32> = vs_TEXCOORD7;
  let x_2060 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  let x_2062 : vec3<f32> = (x_2058 + -(x_2060));
  let x_2063 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2065 : vec4<f32> = u_xlat6;
  let x_2067 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2065.x, x_2065.y, x_2065.z), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2072 : f32 = u_xlat6.x;
  let x_2074 : f32 = x_757.x_MainLightShadowParams.z;
  let x_2077 : f32 = x_757.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_2072 * x_2074) + x_2077);
  let x_2081 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_2081, 0.0f, 1.0f);
  let x_2084 : f32 = u_xlat83;
  u_xlat58.x = (-(x_2084) + 1.0f);
  let x_2089 : f32 = u_xlat32.x;
  let x_2091 : f32 = u_xlat58.x;
  let x_2093 : f32 = u_xlat83;
  u_xlat83 = ((x_2089 * x_2091) + x_2093);
  let x_2102 : f32 = x_2100.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_2102 == -1.0f));
  let x_2106 : bool = u_xlatb32.x;
  if (x_2106) {
    let x_2109 : vec3<f32> = vs_TEXCOORD7;
    let x_2112 : vec4<f32> = x_2100.x_MainLightWorldToLight[1i];
    let x_2114 : vec2<f32> = (vec2<f32>(x_2109.y, x_2109.y) * vec2<f32>(x_2112.x, x_2112.y));
    let x_2115 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2114.x, x_2114.y, x_2115.z);
    let x_2118 : vec4<f32> = x_2100.x_MainLightWorldToLight[0i];
    let x_2120 : vec3<f32> = vs_TEXCOORD7;
    let x_2123 : vec3<f32> = u_xlat32;
    let x_2125 : vec2<f32> = ((vec2<f32>(x_2118.x, x_2118.y) * vec2<f32>(x_2120.x, x_2120.x)) + vec2<f32>(x_2123.x, x_2123.y));
    let x_2126 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2125.x, x_2125.y, x_2126.z);
    let x_2129 : vec4<f32> = x_2100.x_MainLightWorldToLight[2i];
    let x_2131 : vec3<f32> = vs_TEXCOORD7;
    let x_2134 : vec3<f32> = u_xlat32;
    let x_2136 : vec2<f32> = ((vec2<f32>(x_2129.x, x_2129.y) * vec2<f32>(x_2131.z, x_2131.z)) + vec2<f32>(x_2134.x, x_2134.y));
    let x_2137 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2136.x, x_2136.y, x_2137.z);
    let x_2139 : vec3<f32> = u_xlat32;
    let x_2142 : vec4<f32> = x_2100.x_MainLightWorldToLight[3i];
    let x_2144 : vec2<f32> = (vec2<f32>(x_2139.x, x_2139.y) + vec2<f32>(x_2142.x, x_2142.y));
    let x_2145 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2144.x, x_2144.y, x_2145.z);
    let x_2147 : vec3<f32> = u_xlat32;
    let x_2150 : vec2<f32> = ((vec2<f32>(x_2147.x, x_2147.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2151 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_2150.x, x_2150.y, x_2151.z);
    let x_2158 : vec3<f32> = u_xlat32;
    let x_2161 : f32 = x_113.x_GlobalMipBias.x;
    let x_2162 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2158.x, x_2158.y), x_2161);
    u_xlat7 = x_2162;
    let x_2164 : f32 = x_2100.x_MainLightCookieTextureFormat;
    let x_2166 : f32 = x_2100.x_MainLightCookieTextureFormat;
    let x_2168 : f32 = x_2100.x_MainLightCookieTextureFormat;
    let x_2170 : f32 = x_2100.x_MainLightCookieTextureFormat;
    let x_2171 : vec4<f32> = vec4<f32>(x_2164, x_2166, x_2168, x_2170);
    let x_2178 : vec4<bool> = (vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2171.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_2178.x, x_2178.y);
    let x_2181 : bool = u_xlatb32.y;
    if (x_2181) {
      let x_2187 : f32 = u_xlat7.w;
      x_2183 = x_2187;
    } else {
      let x_2190 : f32 = u_xlat7.x;
      x_2183 = x_2190;
    }
    let x_2191 : f32 = x_2183;
    u_xlat58.x = x_2191;
    let x_2194 : bool = u_xlatb32.x;
    if (x_2194) {
      let x_2198 : vec4<f32> = u_xlat7;
      x_2195 = vec3<f32>(x_2198.x, x_2198.y, x_2198.z);
    } else {
      let x_2201 : vec2<f32> = u_xlat58;
      x_2195 = vec3<f32>(x_2201.x, x_2201.x, x_2201.x);
    }
    let x_2203 : vec3<f32> = x_2195;
    u_xlat32 = x_2203;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_2208 : vec3<f32> = u_xlat32;
  let x_2210 : vec4<f32> = x_113.x_MainLightColor;
  u_xlat32 = (x_2208 * vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
  let x_2213 : vec4<f32> = u_xlat1;
  let x_2216 : vec4<f32> = u_xlat2;
  u_xlat7.x = dot(-(vec3<f32>(x_2213.x, x_2213.y, x_2213.z)), vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
  let x_2221 : f32 = u_xlat7.x;
  let x_2223 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2221 + x_2223);
  let x_2226 : vec4<f32> = u_xlat2;
  let x_2228 : vec4<f32> = u_xlat7;
  let x_2232 : vec4<f32> = u_xlat1;
  let x_2235 : vec3<f32> = ((vec3<f32>(x_2226.x, x_2226.y, x_2226.z) * -(vec3<f32>(x_2228.x, x_2228.x, x_2228.x))) + -(vec3<f32>(x_2232.x, x_2232.y, x_2232.z)));
  let x_2236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
  let x_2239 : vec4<f32> = u_xlat2;
  let x_2241 : vec4<f32> = u_xlat1;
  u_xlat85 = dot(vec3<f32>(x_2239.x, x_2239.y, x_2239.z), vec3<f32>(x_2241.x, x_2241.y, x_2241.z));
  let x_2244 : f32 = u_xlat85;
  u_xlat85 = clamp(x_2244, 0.0f, 1.0f);
  let x_2246 : f32 = u_xlat85;
  u_xlat85 = (-(x_2246) + 1.0f);
  let x_2249 : f32 = u_xlat85;
  let x_2250 : f32 = u_xlat85;
  u_xlat85 = (x_2249 * x_2250);
  let x_2252 : f32 = u_xlat85;
  let x_2253 : f32 = u_xlat85;
  u_xlat85 = (x_2252 * x_2253);
  let x_2256 : f32 = u_xlat0.x;
  u_xlat8.x = ((-(x_2256) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2264 : f32 = u_xlat0.x;
  let x_2266 : f32 = u_xlat8.x;
  u_xlat0.x = (x_2264 * x_2266);
  let x_2270 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2270 * 6.0f);
  let x_2282 : vec4<f32> = u_xlat7;
  let x_2285 : f32 = u_xlat0.x;
  let x_2286 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2282.x, x_2282.y, x_2282.z), x_2285);
  u_xlat8 = x_2286;
  let x_2288 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2288 + -1.0f);
  let x_2292 : f32 = x_613.unity_SpecCube0_HDR.w;
  let x_2294 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2292 * x_2294) + 1.0f);
  let x_2299 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2299, 0.0f);
  let x_2303 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2303);
  let x_2307 : f32 = u_xlat0.x;
  let x_2309 : f32 = x_613.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2307 * x_2309);
  let x_2313 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2313);
  let x_2317 : f32 = u_xlat0.x;
  let x_2319 : f32 = x_613.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2317 * x_2319);
  let x_2322 : vec4<f32> = u_xlat8;
  let x_2324 : vec3<f32> = u_xlat0;
  let x_2326 : vec3<f32> = (vec3<f32>(x_2322.x, x_2322.y, x_2322.z) * vec3<f32>(x_2324.x, x_2324.x, x_2324.x));
  let x_2327 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
  let x_2329 : f32 = u_xlat52;
  let x_2331 : f32 = u_xlat52;
  let x_2335 : vec2<f32> = ((vec2<f32>(x_2329, x_2329) * vec2<f32>(x_2331, x_2331)) + vec2<f32>(-1.0f, 1.0f));
  let x_2336 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2335.x, x_2336.y, x_2335.y);
  let x_2339 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2339);
  let x_2341 : vec4<f32> = u_xlat5;
  let x_2344 : f32 = u_xlat81;
  let x_2346 : vec3<f32> = (-(vec3<f32>(x_2341.x, x_2341.y, x_2341.z)) + vec3<f32>(x_2344, x_2344, x_2344));
  let x_2347 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
  let x_2349 : f32 = u_xlat85;
  let x_2351 : vec4<f32> = u_xlat8;
  let x_2354 : vec4<f32> = u_xlat5;
  let x_2356 : vec3<f32> = ((vec3<f32>(x_2349, x_2349, x_2349) * vec3<f32>(x_2351.x, x_2351.y, x_2351.z)) + vec3<f32>(x_2354.x, x_2354.y, x_2354.z));
  let x_2357 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2356.x, x_2356.y, x_2356.z, x_2357.w);
  let x_2359 : f32 = u_xlat52;
  let x_2361 : vec4<f32> = u_xlat8;
  let x_2363 : vec3<f32> = (vec3<f32>(x_2359, x_2359, x_2359) * vec3<f32>(x_2361.x, x_2361.y, x_2361.z));
  let x_2364 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2363.x, x_2363.y, x_2363.z, x_2364.w);
  let x_2366 : vec4<f32> = u_xlat7;
  let x_2368 : vec4<f32> = u_xlat8;
  let x_2370 : vec3<f32> = (vec3<f32>(x_2366.x, x_2366.y, x_2366.z) * vec3<f32>(x_2368.x, x_2368.y, x_2368.z));
  let x_2371 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2371.w);
  let x_2373 : vec4<f32> = u_xlat3;
  let x_2375 : vec4<f32> = u_xlat4;
  let x_2378 : vec4<f32> = u_xlat7;
  let x_2380 : vec3<f32> = ((vec3<f32>(x_2373.x, x_2373.y, x_2373.z) * vec3<f32>(x_2375.x, x_2375.y, x_2375.z)) + vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
  let x_2381 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
  let x_2383 : f32 = u_xlat83;
  let x_2385 : f32 = x_613.unity_LightData.z;
  u_xlat52 = (x_2383 * x_2385);
  let x_2387 : vec4<f32> = u_xlat2;
  let x_2390 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat81 = dot(vec3<f32>(x_2387.x, x_2387.y, x_2387.z), vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
  let x_2393 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2393, 0.0f, 1.0f);
  let x_2395 : f32 = u_xlat52;
  let x_2396 : f32 = u_xlat81;
  u_xlat52 = (x_2395 * x_2396);
  let x_2398 : f32 = u_xlat52;
  let x_2400 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2398, x_2398, x_2398) * x_2400);
  let x_2402 : vec4<f32> = u_xlat1;
  let x_2405 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2407 : vec3<f32> = (vec3<f32>(x_2402.x, x_2402.y, x_2402.z) + vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
  let x_2408 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);
  let x_2410 : vec4<f32> = u_xlat7;
  let x_2412 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2410.x, x_2410.y, x_2410.z), vec3<f32>(x_2412.x, x_2412.y, x_2412.z));
  let x_2415 : f32 = u_xlat52;
  u_xlat52 = max(x_2415, 1.17549435e-38f);
  let x_2418 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2418);
  let x_2420 : f32 = u_xlat52;
  let x_2422 : vec4<f32> = u_xlat7;
  let x_2424 : vec3<f32> = (vec3<f32>(x_2420, x_2420, x_2420) * vec3<f32>(x_2422.x, x_2422.y, x_2422.z));
  let x_2425 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2425.w);
  let x_2427 : vec4<f32> = u_xlat2;
  let x_2429 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2427.x, x_2427.y, x_2427.z), vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
  let x_2432 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2432, 0.0f, 1.0f);
  let x_2435 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2437 : vec4<f32> = u_xlat7;
  u_xlat81 = dot(vec3<f32>(x_2435.x, x_2435.y, x_2435.z), vec3<f32>(x_2437.x, x_2437.y, x_2437.z));
  let x_2440 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2440, 0.0f, 1.0f);
  let x_2442 : f32 = u_xlat52;
  let x_2443 : f32 = u_xlat52;
  u_xlat52 = (x_2442 * x_2443);
  let x_2445 : f32 = u_xlat52;
  let x_2447 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2445 * x_2447) + 1.00001001358032226562f);
  let x_2451 : f32 = u_xlat81;
  let x_2452 : f32 = u_xlat81;
  u_xlat81 = (x_2451 * x_2452);
  let x_2454 : f32 = u_xlat52;
  let x_2455 : f32 = u_xlat52;
  u_xlat52 = (x_2454 * x_2455);
  let x_2457 : f32 = u_xlat81;
  u_xlat81 = max(x_2457, 0.10000000149011611938f);
  let x_2460 : f32 = u_xlat52;
  let x_2461 : f32 = u_xlat81;
  u_xlat52 = (x_2460 * x_2461);
  let x_2463 : f32 = u_xlat82;
  let x_2464 : f32 = u_xlat52;
  u_xlat52 = (x_2463 * x_2464);
  let x_2466 : f32 = u_xlat80;
  let x_2467 : f32 = u_xlat52;
  u_xlat52 = (x_2466 / x_2467);
  let x_2469 : vec4<f32> = u_xlat5;
  let x_2471 : f32 = u_xlat52;
  let x_2474 : vec4<f32> = u_xlat4;
  let x_2476 : vec3<f32> = ((vec3<f32>(x_2469.x, x_2469.y, x_2469.z) * vec3<f32>(x_2471, x_2471, x_2471)) + vec3<f32>(x_2474.x, x_2474.y, x_2474.z));
  let x_2477 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
  let x_2479 : vec3<f32> = u_xlat32;
  let x_2480 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_2479 * vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
  let x_2484 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2486 : f32 = x_613.unity_LightData.y;
  u_xlat52 = min(x_2484, x_2486);
  let x_2490 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2490));
  let x_2494 : f32 = u_xlat6.x;
  let x_2496 : f32 = x_757.x_AdditionalShadowFadeParams.x;
  let x_2499 : f32 = x_757.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2494 * x_2496) + x_2499);
  let x_2501 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2501, 0.0f, 1.0f);
  let x_2505 : f32 = x_2100.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2507 : f32 = x_2100.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2509 : f32 = x_2100.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2511 : f32 = x_2100.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2512 : vec4<f32> = vec4<f32>(x_2505, x_2507, x_2509, x_2511);
  let x_2518 : vec4<bool> = (vec4<f32>(x_2512.x, x_2512.y, x_2512.z, x_2512.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2518.x, x_2518.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2530 : u32 = u_xlatu_loop_1;
    let x_2531 : u32 = u_xlatu52;
    if ((x_2530 < x_2531)) {
    } else {
      break;
    }
    let x_2534 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2534 >> 2u);
    let x_2538 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2538 & 3u));
    let x_2541 : u32 = u_xlatu6;
    let x_2544 : vec4<f32> = x_613.unity_LightIndices[bitcast<i32>(x_2541)];
    let x_2554 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2559 : vec4<u32> = indexable[x_2554];
    u_xlat6.x = dot(x_2544, bitcast<vec4<f32>>(x_2559));
    let x_2565 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2565);
    let x_2567 : vec3<f32> = vs_TEXCOORD7;
    let x_2578 : i32 = u_xlati6;
    let x_2580 : vec4<f32> = x_2577.x_AdditionalLightsPosition[x_2578];
    let x_2583 : i32 = u_xlati6;
    let x_2585 : vec4<f32> = x_2577.x_AdditionalLightsPosition[x_2583];
    let x_2587 : vec3<f32> = ((-(x_2567) * vec3<f32>(x_2580.w, x_2580.w, x_2580.w)) + vec3<f32>(x_2585.x, x_2585.y, x_2585.z));
    let x_2588 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2588.w);
    let x_2591 : vec4<f32> = u_xlat9;
    let x_2593 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2591.x, x_2591.y, x_2591.z), vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
    let x_2596 : f32 = u_xlat59;
    u_xlat59 = max(x_2596, 0.00006103515625f);
    let x_2598 : f32 = u_xlat59;
    u_xlat85 = inverseSqrt(x_2598);
    let x_2600 : f32 = u_xlat85;
    let x_2602 : vec4<f32> = u_xlat9;
    let x_2604 : vec3<f32> = (vec3<f32>(x_2600, x_2600, x_2600) * vec3<f32>(x_2602.x, x_2602.y, x_2602.z));
    let x_2605 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
    let x_2607 : f32 = u_xlat59;
    u_xlat86 = (1.0f / x_2607);
    let x_2609 : f32 = u_xlat59;
    let x_2610 : i32 = u_xlati6;
    let x_2612 : f32 = x_2577.x_AdditionalLightsAttenuation[x_2610].x;
    u_xlat59 = (x_2609 * x_2612);
    let x_2614 : f32 = u_xlat59;
    let x_2616 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2614) * x_2616) + 1.0f);
    let x_2619 : f32 = u_xlat59;
    u_xlat59 = max(x_2619, 0.0f);
    let x_2621 : f32 = u_xlat59;
    let x_2622 : f32 = u_xlat59;
    u_xlat59 = (x_2621 * x_2622);
    let x_2624 : f32 = u_xlat59;
    let x_2625 : f32 = u_xlat86;
    u_xlat59 = (x_2624 * x_2625);
    let x_2627 : i32 = u_xlati6;
    let x_2629 : vec4<f32> = x_2577.x_AdditionalLightsSpotDir[x_2627];
    let x_2631 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2629.x, x_2629.y, x_2629.z), vec3<f32>(x_2631.x, x_2631.y, x_2631.z));
    let x_2634 : f32 = u_xlat86;
    let x_2635 : i32 = u_xlati6;
    let x_2637 : f32 = x_2577.x_AdditionalLightsAttenuation[x_2635].z;
    let x_2639 : i32 = u_xlati6;
    let x_2641 : f32 = x_2577.x_AdditionalLightsAttenuation[x_2639].w;
    u_xlat86 = ((x_2634 * x_2637) + x_2641);
    let x_2643 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2643, 0.0f, 1.0f);
    let x_2645 : f32 = u_xlat86;
    let x_2646 : f32 = u_xlat86;
    u_xlat86 = (x_2645 * x_2646);
    let x_2648 : f32 = u_xlat59;
    let x_2649 : f32 = u_xlat86;
    u_xlat59 = (x_2648 * x_2649);
    let x_2652 : i32 = u_xlati6;
    let x_2654 : f32 = x_757.x_AdditionalShadowParams[x_2652].w;
    u_xlati86 = i32(x_2654);
    let x_2657 : i32 = u_xlati86;
    u_xlatb87 = (x_2657 >= 0i);
    let x_2659 : bool = u_xlatb87;
    if (x_2659) {
      let x_2663 : i32 = u_xlati6;
      let x_2665 : f32 = x_757.x_AdditionalShadowParams[x_2663].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2665, x_2665, x_2665, x_2665))));
      let x_2669 : bool = u_xlatb87;
      if (x_2669) {
        let x_2674 : vec4<f32> = u_xlat10;
        let x_2677 : vec4<f32> = u_xlat10;
        let x_2680 : vec4<bool> = (abs(vec4<f32>(x_2674.z, x_2674.z, x_2674.y, x_2674.z)) >= abs(vec4<f32>(x_2677.x, x_2677.y, x_2677.x, x_2677.x)));
        let x_2682 : vec3<bool> = vec3<bool>(x_2680.x, x_2680.y, x_2680.z);
        let x_2683 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2682.x, x_2682.y, x_2682.z, x_2683.w);
        let x_2686 : bool = u_xlatb11.y;
        let x_2688 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2686 & x_2688);
        let x_2690 : vec4<f32> = u_xlat10;
        let x_2693 : vec4<bool> = (-(vec4<f32>(x_2690.z, x_2690.y, x_2690.z, x_2690.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2694 : vec3<bool> = vec3<bool>(x_2693.x, x_2693.y, x_2693.w);
        let x_2695 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2694.x, x_2694.y, x_2695.z, x_2694.z);
        let x_2698 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2698);
        let x_2703 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2703);
        let x_2709 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2709);
        let x_2712 : bool = u_xlatb11.z;
        if (x_2712) {
          let x_2717 : f32 = u_xlat11.y;
          x_2713 = x_2717;
        } else {
          let x_2719 : f32 = u_xlat88;
          x_2713 = x_2719;
        }
        let x_2720 : f32 = x_2713;
        u_xlat88 = x_2720;
        let x_2722 : bool = u_xlatb87;
        if (x_2722) {
          let x_2727 : f32 = u_xlat11.x;
          x_2723 = x_2727;
        } else {
          let x_2729 : f32 = u_xlat88;
          x_2723 = x_2729;
        }
        let x_2730 : f32 = x_2723;
        u_xlat87 = x_2730;
        let x_2731 : i32 = u_xlati6;
        let x_2733 : f32 = x_757.x_AdditionalShadowParams[x_2731].w;
        u_xlat88 = trunc(x_2733);
        let x_2735 : f32 = u_xlat87;
        let x_2736 : f32 = u_xlat88;
        u_xlat87 = (x_2735 + x_2736);
        let x_2738 : f32 = u_xlat87;
        u_xlati86 = i32(x_2738);
      }
      let x_2740 : i32 = u_xlati86;
      u_xlati86 = (x_2740 << bitcast<u32>(2i));
      let x_2742 : vec3<f32> = vs_TEXCOORD7;
      let x_2744 : i32 = u_xlati86;
      let x_2747 : i32 = u_xlati86;
      let x_2751 : vec4<f32> = x_757.x_AdditionalLightsWorldToShadow[((x_2744 + 1i) / 4i)][((x_2747 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2742.y, x_2742.y, x_2742.y, x_2742.y) * x_2751);
      let x_2753 : i32 = u_xlati86;
      let x_2755 : i32 = u_xlati86;
      let x_2758 : vec4<f32> = x_757.x_AdditionalLightsWorldToShadow[(x_2753 / 4i)][(x_2755 % 4i)];
      let x_2759 : vec3<f32> = vs_TEXCOORD7;
      let x_2762 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2758 * vec4<f32>(x_2759.x, x_2759.x, x_2759.x, x_2759.x)) + x_2762);
      let x_2764 : i32 = u_xlati86;
      let x_2767 : i32 = u_xlati86;
      let x_2771 : vec4<f32> = x_757.x_AdditionalLightsWorldToShadow[((x_2764 + 2i) / 4i)][((x_2767 + 2i) % 4i)];
      let x_2772 : vec3<f32> = vs_TEXCOORD7;
      let x_2775 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2771 * vec4<f32>(x_2772.z, x_2772.z, x_2772.z, x_2772.z)) + x_2775);
      let x_2777 : vec4<f32> = u_xlat11;
      let x_2778 : i32 = u_xlati86;
      let x_2781 : i32 = u_xlati86;
      let x_2785 : vec4<f32> = x_757.x_AdditionalLightsWorldToShadow[((x_2778 + 3i) / 4i)][((x_2781 + 3i) % 4i)];
      u_xlat11 = (x_2777 + x_2785);
      let x_2787 : vec4<f32> = u_xlat11;
      let x_2789 : vec4<f32> = u_xlat11;
      let x_2791 : vec3<f32> = (vec3<f32>(x_2787.x, x_2787.y, x_2787.z) / vec3<f32>(x_2789.w, x_2789.w, x_2789.w));
      let x_2792 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2792.w);
      let x_2795 : i32 = u_xlati6;
      let x_2797 : f32 = x_757.x_AdditionalShadowParams[x_2795].y;
      u_xlatb86 = (0.0f < x_2797);
      let x_2799 : bool = u_xlatb86;
      if (x_2799) {
        let x_2802 : i32 = u_xlati6;
        let x_2804 : f32 = x_757.x_AdditionalShadowParams[x_2802].y;
        u_xlatb86 = (1.0f == x_2804);
        let x_2806 : bool = u_xlatb86;
        if (x_2806) {
          let x_2809 : vec4<f32> = u_xlat11;
          let x_2812 : vec4<f32> = x_757.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2809.x, x_2809.y, x_2809.x, x_2809.y) + x_2812);
          let x_2815 : vec4<f32> = u_xlat12;
          let x_2816 : vec2<f32> = vec2<f32>(x_2815.x, x_2815.y);
          let x_2818 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2816.x, x_2816.y, x_2818);
          let x_2826 : vec3<f32> = txVec30;
          let x_2828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2826.xy, x_2826.z);
          u_xlat13.x = x_2828;
          let x_2831 : vec4<f32> = u_xlat12;
          let x_2832 : vec2<f32> = vec2<f32>(x_2831.z, x_2831.w);
          let x_2834 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2832.x, x_2832.y, x_2834);
          let x_2841 : vec3<f32> = txVec31;
          let x_2843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2841.xy, x_2841.z);
          u_xlat13.y = x_2843;
          let x_2845 : vec4<f32> = u_xlat11;
          let x_2848 : vec4<f32> = x_757.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2845.x, x_2845.y, x_2845.x, x_2845.y) + x_2848);
          let x_2851 : vec4<f32> = u_xlat12;
          let x_2852 : vec2<f32> = vec2<f32>(x_2851.x, x_2851.y);
          let x_2854 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2852.x, x_2852.y, x_2854);
          let x_2861 : vec3<f32> = txVec32;
          let x_2863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2861.xy, x_2861.z);
          u_xlat13.z = x_2863;
          let x_2866 : vec4<f32> = u_xlat12;
          let x_2867 : vec2<f32> = vec2<f32>(x_2866.z, x_2866.w);
          let x_2869 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2867.x, x_2867.y, x_2869);
          let x_2876 : vec3<f32> = txVec33;
          let x_2878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2876.xy, x_2876.z);
          u_xlat13.w = x_2878;
          let x_2880 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2880, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2883 : i32 = u_xlati6;
          let x_2885 : f32 = x_757.x_AdditionalShadowParams[x_2883].y;
          u_xlatb87 = (2.0f == x_2885);
          let x_2887 : bool = u_xlatb87;
          if (x_2887) {
            let x_2890 : vec4<f32> = u_xlat11;
            let x_2893 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2896 : vec2<f32> = ((vec2<f32>(x_2890.x, x_2890.y) * vec2<f32>(x_2893.z, x_2893.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2897 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2896.x, x_2896.y, x_2897.z, x_2897.w);
            let x_2899 : vec4<f32> = u_xlat12;
            let x_2901 : vec2<f32> = floor(vec2<f32>(x_2899.x, x_2899.y));
            let x_2902 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2901.x, x_2901.y, x_2902.z, x_2902.w);
            let x_2905 : vec4<f32> = u_xlat11;
            let x_2908 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_2911 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2905.x, x_2905.y) * vec2<f32>(x_2908.z, x_2908.w)) + -(vec2<f32>(x_2911.x, x_2911.y)));
            let x_2915 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2915.x, x_2915.x, x_2915.y, x_2915.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2918 : vec4<f32> = u_xlat13;
            let x_2920 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2918.x, x_2918.x, x_2918.z, x_2918.z) * vec4<f32>(x_2920.x, x_2920.x, x_2920.z, x_2920.z));
            let x_2923 : vec4<f32> = u_xlat14;
            let x_2925 : vec2<f32> = (vec2<f32>(x_2923.y, x_2923.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2926 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2925.x, x_2926.y, x_2925.y, x_2926.w);
            let x_2928 : vec4<f32> = u_xlat14;
            let x_2931 : vec2<f32> = u_xlat64;
            let x_2933 : vec2<f32> = ((vec2<f32>(x_2928.x, x_2928.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2931));
            let x_2934 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2933.x, x_2933.y, x_2934.z, x_2934.w);
            let x_2936 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2936) + vec2<f32>(1.0f, 1.0f));
            let x_2939 : vec2<f32> = u_xlat64;
            let x_2940 : vec2<f32> = min(x_2939, vec2<f32>(0.0f, 0.0f));
            let x_2941 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2940.x, x_2940.y, x_2941.z, x_2941.w);
            let x_2943 : vec4<f32> = u_xlat15;
            let x_2946 : vec4<f32> = u_xlat15;
            let x_2949 : vec2<f32> = u_xlat66;
            let x_2950 : vec2<f32> = ((-(vec2<f32>(x_2943.x, x_2943.y)) * vec2<f32>(x_2946.x, x_2946.y)) + x_2949);
            let x_2951 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2950.x, x_2950.y, x_2951.z, x_2951.w);
            let x_2953 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2953, vec2<f32>(0.0f, 0.0f));
            let x_2955 : vec2<f32> = u_xlat64;
            let x_2957 : vec2<f32> = u_xlat64;
            let x_2959 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2955) * x_2957) + vec2<f32>(x_2959.y, x_2959.w));
            let x_2962 : vec4<f32> = u_xlat15;
            let x_2964 : vec2<f32> = (vec2<f32>(x_2962.x, x_2962.y) + vec2<f32>(1.0f, 1.0f));
            let x_2965 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2964.x, x_2964.y, x_2965.z, x_2965.w);
            let x_2967 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2967 + vec2<f32>(1.0f, 1.0f));
            let x_2969 : vec4<f32> = u_xlat14;
            let x_2971 : vec2<f32> = (vec2<f32>(x_2969.x, x_2969.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2972 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2971.x, x_2971.y, x_2972.z, x_2972.w);
            let x_2974 : vec2<f32> = u_xlat66;
            let x_2975 : vec2<f32> = (x_2974 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2976 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2975.x, x_2975.y, x_2976.z, x_2976.w);
            let x_2978 : vec4<f32> = u_xlat15;
            let x_2980 : vec2<f32> = (vec2<f32>(x_2978.x, x_2978.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2981 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2980.x, x_2980.y, x_2981.z, x_2981.w);
            let x_2983 : vec2<f32> = u_xlat64;
            let x_2984 : vec2<f32> = (x_2983 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2985 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2984.x, x_2984.y, x_2985.z, x_2985.w);
            let x_2987 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2987.y, x_2987.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2991 : f32 = u_xlat15.x;
            u_xlat16.z = x_2991;
            let x_2994 : f32 = u_xlat64.x;
            u_xlat16.w = x_2994;
            let x_2997 : f32 = u_xlat17.x;
            u_xlat14.z = x_2997;
            let x_3000 : f32 = u_xlat13.x;
            u_xlat14.w = x_3000;
            let x_3002 : vec4<f32> = u_xlat14;
            let x_3004 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3002.z, x_3002.w, x_3002.x, x_3002.z) + vec4<f32>(x_3004.z, x_3004.w, x_3004.x, x_3004.z));
            let x_3008 : f32 = u_xlat16.y;
            u_xlat15.z = x_3008;
            let x_3011 : f32 = u_xlat64.y;
            u_xlat15.w = x_3011;
            let x_3014 : f32 = u_xlat14.y;
            u_xlat17.z = x_3014;
            let x_3017 : f32 = u_xlat13.z;
            u_xlat17.w = x_3017;
            let x_3019 : vec4<f32> = u_xlat15;
            let x_3021 : vec4<f32> = u_xlat17;
            let x_3023 : vec3<f32> = (vec3<f32>(x_3019.z, x_3019.y, x_3019.w) + vec3<f32>(x_3021.z, x_3021.y, x_3021.w));
            let x_3024 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3023.x, x_3023.y, x_3023.z, x_3024.w);
            let x_3026 : vec4<f32> = u_xlat14;
            let x_3028 : vec4<f32> = u_xlat18;
            let x_3030 : vec3<f32> = (vec3<f32>(x_3026.x, x_3026.z, x_3026.w) / vec3<f32>(x_3028.z, x_3028.w, x_3028.y));
            let x_3031 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3030.x, x_3030.y, x_3030.z, x_3031.w);
            let x_3033 : vec4<f32> = u_xlat14;
            let x_3035 : vec3<f32> = (vec3<f32>(x_3033.x, x_3033.y, x_3033.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3036 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3036.w);
            let x_3038 : vec4<f32> = u_xlat17;
            let x_3040 : vec4<f32> = u_xlat13;
            let x_3042 : vec3<f32> = (vec3<f32>(x_3038.z, x_3038.y, x_3038.w) / vec3<f32>(x_3040.x, x_3040.y, x_3040.z));
            let x_3043 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3042.x, x_3042.y, x_3042.z, x_3043.w);
            let x_3045 : vec4<f32> = u_xlat15;
            let x_3047 : vec3<f32> = (vec3<f32>(x_3045.x, x_3045.y, x_3045.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3048 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3047.x, x_3047.y, x_3047.z, x_3048.w);
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3053 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3055 : vec3<f32> = (vec3<f32>(x_3050.y, x_3050.x, x_3050.z) * vec3<f32>(x_3053.x, x_3053.x, x_3053.x));
            let x_3056 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3055.x, x_3055.y, x_3055.z, x_3056.w);
            let x_3058 : vec4<f32> = u_xlat15;
            let x_3061 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3063 : vec3<f32> = (vec3<f32>(x_3058.x, x_3058.y, x_3058.z) * vec3<f32>(x_3061.y, x_3061.y, x_3061.y));
            let x_3064 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3063.x, x_3063.y, x_3063.z, x_3064.w);
            let x_3067 : f32 = u_xlat15.x;
            u_xlat14.w = x_3067;
            let x_3069 : vec4<f32> = u_xlat12;
            let x_3072 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3075 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3069.x, x_3069.y, x_3069.x, x_3069.y) * vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y)) + vec4<f32>(x_3075.y, x_3075.w, x_3075.x, x_3075.w));
            let x_3078 : vec4<f32> = u_xlat12;
            let x_3081 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3084 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3078.x, x_3078.y) * vec2<f32>(x_3081.x, x_3081.y)) + vec2<f32>(x_3084.z, x_3084.w));
            let x_3088 : f32 = u_xlat14.y;
            u_xlat15.w = x_3088;
            let x_3090 : vec4<f32> = u_xlat15;
            let x_3091 : vec2<f32> = vec2<f32>(x_3090.y, x_3090.z);
            let x_3092 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3092.x, x_3091.x, x_3092.z, x_3091.y);
            let x_3094 : vec4<f32> = u_xlat12;
            let x_3097 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3100 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3094.x, x_3094.y, x_3094.x, x_3094.y) * vec4<f32>(x_3097.x, x_3097.y, x_3097.x, x_3097.y)) + vec4<f32>(x_3100.x, x_3100.y, x_3100.z, x_3100.y));
            let x_3103 : vec4<f32> = u_xlat12;
            let x_3106 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3109 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3103.x, x_3103.y, x_3103.x, x_3103.y) * vec4<f32>(x_3106.x, x_3106.y, x_3106.x, x_3106.y)) + vec4<f32>(x_3109.w, x_3109.y, x_3109.w, x_3109.z));
            let x_3112 : vec4<f32> = u_xlat12;
            let x_3115 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3118 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3112.x, x_3112.y, x_3112.x, x_3112.y) * vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.y)) + vec4<f32>(x_3118.x, x_3118.w, x_3118.z, x_3118.w));
            let x_3121 : vec4<f32> = u_xlat13;
            let x_3123 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3121.x, x_3121.x, x_3121.x, x_3121.y) * vec4<f32>(x_3123.z, x_3123.w, x_3123.y, x_3123.z));
            let x_3127 : vec4<f32> = u_xlat13;
            let x_3129 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3127.y, x_3127.y, x_3127.z, x_3127.z) * x_3129);
            let x_3132 : f32 = u_xlat13.z;
            let x_3134 : f32 = u_xlat18.y;
            u_xlat87 = (x_3132 * x_3134);
            let x_3137 : vec4<f32> = u_xlat16;
            let x_3138 : vec2<f32> = vec2<f32>(x_3137.x, x_3137.y);
            let x_3140 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3138.x, x_3138.y, x_3140);
            let x_3147 : vec3<f32> = txVec34;
            let x_3149 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3147.xy, x_3147.z);
            u_xlat88 = x_3149;
            let x_3151 : vec4<f32> = u_xlat16;
            let x_3152 : vec2<f32> = vec2<f32>(x_3151.z, x_3151.w);
            let x_3154 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3152.x, x_3152.y, x_3154);
            let x_3162 : vec3<f32> = txVec35;
            let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
            u_xlat89 = x_3164;
            let x_3165 : f32 = u_xlat89;
            let x_3167 : f32 = u_xlat19.y;
            u_xlat89 = (x_3165 * x_3167);
            let x_3170 : f32 = u_xlat19.x;
            let x_3171 : f32 = u_xlat88;
            let x_3173 : f32 = u_xlat89;
            u_xlat88 = ((x_3170 * x_3171) + x_3173);
            let x_3176 : vec2<f32> = u_xlat64;
            let x_3178 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3176.x, x_3176.y, x_3178);
            let x_3185 : vec3<f32> = txVec36;
            let x_3187 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3185.xy, x_3185.z);
            u_xlat89 = x_3187;
            let x_3189 : f32 = u_xlat19.z;
            let x_3190 : f32 = u_xlat89;
            let x_3192 : f32 = u_xlat88;
            u_xlat88 = ((x_3189 * x_3190) + x_3192);
            let x_3195 : vec4<f32> = u_xlat15;
            let x_3196 : vec2<f32> = vec2<f32>(x_3195.x, x_3195.y);
            let x_3198 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3196.x, x_3196.y, x_3198);
            let x_3205 : vec3<f32> = txVec37;
            let x_3207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3205.xy, x_3205.z);
            u_xlat89 = x_3207;
            let x_3209 : f32 = u_xlat19.w;
            let x_3210 : f32 = u_xlat89;
            let x_3212 : f32 = u_xlat88;
            u_xlat88 = ((x_3209 * x_3210) + x_3212);
            let x_3215 : vec4<f32> = u_xlat17;
            let x_3216 : vec2<f32> = vec2<f32>(x_3215.x, x_3215.y);
            let x_3218 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3216.x, x_3216.y, x_3218);
            let x_3225 : vec3<f32> = txVec38;
            let x_3227 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3225.xy, x_3225.z);
            u_xlat89 = x_3227;
            let x_3229 : f32 = u_xlat20.x;
            let x_3230 : f32 = u_xlat89;
            let x_3232 : f32 = u_xlat88;
            u_xlat88 = ((x_3229 * x_3230) + x_3232);
            let x_3235 : vec4<f32> = u_xlat17;
            let x_3236 : vec2<f32> = vec2<f32>(x_3235.z, x_3235.w);
            let x_3238 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3236.x, x_3236.y, x_3238);
            let x_3245 : vec3<f32> = txVec39;
            let x_3247 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3245.xy, x_3245.z);
            u_xlat89 = x_3247;
            let x_3249 : f32 = u_xlat20.y;
            let x_3250 : f32 = u_xlat89;
            let x_3252 : f32 = u_xlat88;
            u_xlat88 = ((x_3249 * x_3250) + x_3252);
            let x_3255 : vec4<f32> = u_xlat15;
            let x_3256 : vec2<f32> = vec2<f32>(x_3255.z, x_3255.w);
            let x_3258 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3256.x, x_3256.y, x_3258);
            let x_3265 : vec3<f32> = txVec40;
            let x_3267 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3265.xy, x_3265.z);
            u_xlat89 = x_3267;
            let x_3269 : f32 = u_xlat20.z;
            let x_3270 : f32 = u_xlat89;
            let x_3272 : f32 = u_xlat88;
            u_xlat88 = ((x_3269 * x_3270) + x_3272);
            let x_3275 : vec4<f32> = u_xlat14;
            let x_3276 : vec2<f32> = vec2<f32>(x_3275.x, x_3275.y);
            let x_3278 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3276.x, x_3276.y, x_3278);
            let x_3285 : vec3<f32> = txVec41;
            let x_3287 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3285.xy, x_3285.z);
            u_xlat89 = x_3287;
            let x_3289 : f32 = u_xlat20.w;
            let x_3290 : f32 = u_xlat89;
            let x_3292 : f32 = u_xlat88;
            u_xlat88 = ((x_3289 * x_3290) + x_3292);
            let x_3295 : vec4<f32> = u_xlat14;
            let x_3296 : vec2<f32> = vec2<f32>(x_3295.z, x_3295.w);
            let x_3298 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3296.x, x_3296.y, x_3298);
            let x_3305 : vec3<f32> = txVec42;
            let x_3307 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3305.xy, x_3305.z);
            u_xlat89 = x_3307;
            let x_3308 : f32 = u_xlat87;
            let x_3309 : f32 = u_xlat89;
            let x_3311 : f32 = u_xlat88;
            u_xlat86 = ((x_3308 * x_3309) + x_3311);
          } else {
            let x_3314 : vec4<f32> = u_xlat11;
            let x_3317 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3320 : vec2<f32> = ((vec2<f32>(x_3314.x, x_3314.y) * vec2<f32>(x_3317.z, x_3317.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3321 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3320.x, x_3320.y, x_3321.z, x_3321.w);
            let x_3323 : vec4<f32> = u_xlat12;
            let x_3325 : vec2<f32> = floor(vec2<f32>(x_3323.x, x_3323.y));
            let x_3326 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3325.x, x_3325.y, x_3326.z, x_3326.w);
            let x_3328 : vec4<f32> = u_xlat11;
            let x_3331 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3334 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3328.x, x_3328.y) * vec2<f32>(x_3331.z, x_3331.w)) + -(vec2<f32>(x_3334.x, x_3334.y)));
            let x_3338 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3338.x, x_3338.x, x_3338.y, x_3338.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3341 : vec4<f32> = u_xlat13;
            let x_3343 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3341.x, x_3341.x, x_3341.z, x_3341.z) * vec4<f32>(x_3343.x, x_3343.x, x_3343.z, x_3343.z));
            let x_3346 : vec4<f32> = u_xlat14;
            let x_3348 : vec2<f32> = (vec2<f32>(x_3346.y, x_3346.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3349 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3349.x, x_3348.x, x_3349.z, x_3348.y);
            let x_3351 : vec4<f32> = u_xlat14;
            let x_3354 : vec2<f32> = u_xlat64;
            let x_3356 : vec2<f32> = ((vec2<f32>(x_3351.x, x_3351.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3354));
            let x_3357 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3356.x, x_3357.y, x_3356.y, x_3357.w);
            let x_3359 : vec2<f32> = u_xlat64;
            let x_3361 : vec2<f32> = (-(x_3359) + vec2<f32>(1.0f, 1.0f));
            let x_3362 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3361.x, x_3361.y, x_3362.z, x_3362.w);
            let x_3364 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3364, vec2<f32>(0.0f, 0.0f));
            let x_3366 : vec2<f32> = u_xlat66;
            let x_3368 : vec2<f32> = u_xlat66;
            let x_3370 : vec4<f32> = u_xlat14;
            let x_3372 : vec2<f32> = ((-(x_3366) * x_3368) + vec2<f32>(x_3370.x, x_3370.y));
            let x_3373 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3372.x, x_3372.y, x_3373.z, x_3373.w);
            let x_3375 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3375, vec2<f32>(0.0f, 0.0f));
            let x_3378 : vec2<f32> = u_xlat66;
            let x_3380 : vec2<f32> = u_xlat66;
            let x_3382 : vec4<f32> = u_xlat13;
            let x_3384 : vec2<f32> = ((-(x_3378) * x_3380) + vec2<f32>(x_3382.y, x_3382.w));
            let x_3385 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3384.x, x_3385.y, x_3384.y);
            let x_3387 : vec4<f32> = u_xlat14;
            let x_3389 : vec2<f32> = (vec2<f32>(x_3387.x, x_3387.y) + vec2<f32>(2.0f, 2.0f));
            let x_3390 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3389.x, x_3389.y, x_3390.z, x_3390.w);
            let x_3392 : vec3<f32> = u_xlat39;
            let x_3394 : vec2<f32> = (vec2<f32>(x_3392.x, x_3392.z) + vec2<f32>(2.0f, 2.0f));
            let x_3395 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3395.x, x_3394.x, x_3395.z, x_3394.y);
            let x_3398 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3398 * 0.08163200318813323975f);
            let x_3401 : vec4<f32> = u_xlat13;
            let x_3403 : vec3<f32> = (vec3<f32>(x_3401.z, x_3401.x, x_3401.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3404 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3403.x, x_3403.y, x_3403.z, x_3404.w);
            let x_3406 : vec4<f32> = u_xlat14;
            let x_3408 : vec2<f32> = (vec2<f32>(x_3406.x, x_3406.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3409 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3408.x, x_3408.y, x_3409.z, x_3409.w);
            let x_3412 : f32 = u_xlat17.y;
            u_xlat16.x = x_3412;
            let x_3414 : vec2<f32> = u_xlat64;
            let x_3417 : vec2<f32> = ((vec2<f32>(x_3414.x, x_3414.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3418 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3418.x, x_3417.x, x_3418.z, x_3417.y);
            let x_3420 : vec2<f32> = u_xlat64;
            let x_3423 : vec2<f32> = ((vec2<f32>(x_3420.x, x_3420.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3424 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3423.x, x_3424.y, x_3423.y, x_3424.w);
            let x_3427 : f32 = u_xlat13.x;
            u_xlat14.y = x_3427;
            let x_3430 : f32 = u_xlat15.y;
            u_xlat14.w = x_3430;
            let x_3432 : vec4<f32> = u_xlat14;
            let x_3433 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3432 + x_3433);
            let x_3435 : vec2<f32> = u_xlat64;
            let x_3438 : vec2<f32> = ((vec2<f32>(x_3435.y, x_3435.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3439 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3439.x, x_3438.x, x_3439.z, x_3438.y);
            let x_3441 : vec2<f32> = u_xlat64;
            let x_3444 : vec2<f32> = ((vec2<f32>(x_3441.y, x_3441.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3445 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3444.x, x_3445.y, x_3444.y, x_3445.w);
            let x_3448 : f32 = u_xlat13.y;
            u_xlat15.y = x_3448;
            let x_3450 : vec4<f32> = u_xlat15;
            let x_3451 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3450 + x_3451);
            let x_3453 : vec4<f32> = u_xlat14;
            let x_3454 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3453 / x_3454);
            let x_3456 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3456 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3458 : vec4<f32> = u_xlat15;
            let x_3459 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3458 / x_3459);
            let x_3461 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3461 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3463 : vec4<f32> = u_xlat14;
            let x_3466 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3463.w, x_3463.x, x_3463.y, x_3463.z) * vec4<f32>(x_3466.x, x_3466.x, x_3466.x, x_3466.x));
            let x_3469 : vec4<f32> = u_xlat15;
            let x_3472 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3469.x, x_3469.w, x_3469.y, x_3469.z) * vec4<f32>(x_3472.y, x_3472.y, x_3472.y, x_3472.y));
            let x_3475 : vec4<f32> = u_xlat14;
            let x_3476 : vec3<f32> = vec3<f32>(x_3475.y, x_3475.z, x_3475.w);
            let x_3477 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3476.x, x_3477.y, x_3476.y, x_3476.z);
            let x_3480 : f32 = u_xlat15.x;
            u_xlat17.y = x_3480;
            let x_3482 : vec4<f32> = u_xlat12;
            let x_3485 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3488 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3482.x, x_3482.y, x_3482.x, x_3482.y) * vec4<f32>(x_3485.x, x_3485.y, x_3485.x, x_3485.y)) + vec4<f32>(x_3488.x, x_3488.y, x_3488.z, x_3488.y));
            let x_3491 : vec4<f32> = u_xlat12;
            let x_3494 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3497 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3491.x, x_3491.y) * vec2<f32>(x_3494.x, x_3494.y)) + vec2<f32>(x_3497.w, x_3497.y));
            let x_3501 : f32 = u_xlat17.y;
            u_xlat14.y = x_3501;
            let x_3504 : f32 = u_xlat15.z;
            u_xlat17.y = x_3504;
            let x_3506 : vec4<f32> = u_xlat12;
            let x_3509 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3512 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3506.x, x_3506.y, x_3506.x, x_3506.y) * vec4<f32>(x_3509.x, x_3509.y, x_3509.x, x_3509.y)) + vec4<f32>(x_3512.x, x_3512.y, x_3512.z, x_3512.y));
            let x_3515 : vec4<f32> = u_xlat12;
            let x_3518 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3521 : vec4<f32> = u_xlat17;
            let x_3523 : vec2<f32> = ((vec2<f32>(x_3515.x, x_3515.y) * vec2<f32>(x_3518.x, x_3518.y)) + vec2<f32>(x_3521.w, x_3521.y));
            let x_3524 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3523.x, x_3523.y, x_3524.z, x_3524.w);
            let x_3527 : f32 = u_xlat17.y;
            u_xlat14.z = x_3527;
            let x_3530 : vec4<f32> = u_xlat12;
            let x_3533 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3536 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3530.x, x_3530.y, x_3530.x, x_3530.y) * vec4<f32>(x_3533.x, x_3533.y, x_3533.x, x_3533.y)) + vec4<f32>(x_3536.x, x_3536.y, x_3536.x, x_3536.z));
            let x_3540 : f32 = u_xlat15.w;
            u_xlat17.y = x_3540;
            let x_3543 : vec4<f32> = u_xlat12;
            let x_3546 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3549 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3543.x, x_3543.y, x_3543.x, x_3543.y) * vec4<f32>(x_3546.x, x_3546.y, x_3546.x, x_3546.y)) + vec4<f32>(x_3549.x, x_3549.y, x_3549.z, x_3549.y));
            let x_3553 : vec4<f32> = u_xlat12;
            let x_3556 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3559 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3553.x, x_3553.y) * vec2<f32>(x_3556.x, x_3556.y)) + vec2<f32>(x_3559.w, x_3559.y));
            let x_3563 : f32 = u_xlat17.y;
            u_xlat14.w = x_3563;
            let x_3566 : vec4<f32> = u_xlat12;
            let x_3569 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3572 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3566.x, x_3566.y) * vec2<f32>(x_3569.x, x_3569.y)) + vec2<f32>(x_3572.x, x_3572.w));
            let x_3575 : vec4<f32> = u_xlat17;
            let x_3576 : vec3<f32> = vec3<f32>(x_3575.x, x_3575.z, x_3575.w);
            let x_3577 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3576.x, x_3577.y, x_3576.y, x_3576.z);
            let x_3579 : vec4<f32> = u_xlat12;
            let x_3582 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3585 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3579.x, x_3579.y, x_3579.x, x_3579.y) * vec4<f32>(x_3582.x, x_3582.y, x_3582.x, x_3582.y)) + vec4<f32>(x_3585.x, x_3585.y, x_3585.z, x_3585.y));
            let x_3589 : vec4<f32> = u_xlat12;
            let x_3592 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3595 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3589.x, x_3589.y) * vec2<f32>(x_3592.x, x_3592.y)) + vec2<f32>(x_3595.w, x_3595.y));
            let x_3599 : f32 = u_xlat14.x;
            u_xlat15.x = x_3599;
            let x_3601 : vec4<f32> = u_xlat12;
            let x_3604 : vec4<f32> = x_757.x_AdditionalShadowmapSize;
            let x_3607 : vec4<f32> = u_xlat15;
            let x_3609 : vec2<f32> = ((vec2<f32>(x_3601.x, x_3601.y) * vec2<f32>(x_3604.x, x_3604.y)) + vec2<f32>(x_3607.x, x_3607.y));
            let x_3610 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3609.x, x_3609.y, x_3610.z, x_3610.w);
            let x_3613 : vec4<f32> = u_xlat13;
            let x_3615 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3613.x, x_3613.x, x_3613.x, x_3613.x) * x_3615);
            let x_3618 : vec4<f32> = u_xlat13;
            let x_3620 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3618.y, x_3618.y, x_3618.y, x_3618.y) * x_3620);
            let x_3623 : vec4<f32> = u_xlat13;
            let x_3625 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3623.z, x_3623.z, x_3623.z, x_3623.z) * x_3625);
            let x_3627 : vec4<f32> = u_xlat13;
            let x_3629 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3627.w, x_3627.w, x_3627.w, x_3627.w) * x_3629);
            let x_3632 : vec4<f32> = u_xlat18;
            let x_3633 : vec2<f32> = vec2<f32>(x_3632.x, x_3632.y);
            let x_3635 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3633.x, x_3633.y, x_3635);
            let x_3642 : vec3<f32> = txVec43;
            let x_3644 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3642.xy, x_3642.z);
            u_xlat87 = x_3644;
            let x_3646 : vec4<f32> = u_xlat18;
            let x_3647 : vec2<f32> = vec2<f32>(x_3646.z, x_3646.w);
            let x_3649 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3647.x, x_3647.y, x_3649);
            let x_3656 : vec3<f32> = txVec44;
            let x_3658 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3656.xy, x_3656.z);
            u_xlat88 = x_3658;
            let x_3659 : f32 = u_xlat88;
            let x_3661 : f32 = u_xlat23.y;
            u_xlat88 = (x_3659 * x_3661);
            let x_3664 : f32 = u_xlat23.x;
            let x_3665 : f32 = u_xlat87;
            let x_3667 : f32 = u_xlat88;
            u_xlat87 = ((x_3664 * x_3665) + x_3667);
            let x_3670 : vec2<f32> = u_xlat64;
            let x_3672 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3670.x, x_3670.y, x_3672);
            let x_3679 : vec3<f32> = txVec45;
            let x_3681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3679.xy, x_3679.z);
            u_xlat88 = x_3681;
            let x_3683 : f32 = u_xlat23.z;
            let x_3684 : f32 = u_xlat88;
            let x_3686 : f32 = u_xlat87;
            u_xlat87 = ((x_3683 * x_3684) + x_3686);
            let x_3689 : vec4<f32> = u_xlat21;
            let x_3690 : vec2<f32> = vec2<f32>(x_3689.x, x_3689.y);
            let x_3692 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3690.x, x_3690.y, x_3692);
            let x_3699 : vec3<f32> = txVec46;
            let x_3701 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3699.xy, x_3699.z);
            u_xlat88 = x_3701;
            let x_3703 : f32 = u_xlat23.w;
            let x_3704 : f32 = u_xlat88;
            let x_3706 : f32 = u_xlat87;
            u_xlat87 = ((x_3703 * x_3704) + x_3706);
            let x_3709 : vec4<f32> = u_xlat19;
            let x_3710 : vec2<f32> = vec2<f32>(x_3709.x, x_3709.y);
            let x_3712 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3710.x, x_3710.y, x_3712);
            let x_3719 : vec3<f32> = txVec47;
            let x_3721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3719.xy, x_3719.z);
            u_xlat88 = x_3721;
            let x_3723 : f32 = u_xlat24.x;
            let x_3724 : f32 = u_xlat88;
            let x_3726 : f32 = u_xlat87;
            u_xlat87 = ((x_3723 * x_3724) + x_3726);
            let x_3729 : vec4<f32> = u_xlat19;
            let x_3730 : vec2<f32> = vec2<f32>(x_3729.z, x_3729.w);
            let x_3732 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3730.x, x_3730.y, x_3732);
            let x_3739 : vec3<f32> = txVec48;
            let x_3741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3739.xy, x_3739.z);
            u_xlat88 = x_3741;
            let x_3743 : f32 = u_xlat24.y;
            let x_3744 : f32 = u_xlat88;
            let x_3746 : f32 = u_xlat87;
            u_xlat87 = ((x_3743 * x_3744) + x_3746);
            let x_3749 : vec4<f32> = u_xlat20;
            let x_3750 : vec2<f32> = vec2<f32>(x_3749.x, x_3749.y);
            let x_3752 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3750.x, x_3750.y, x_3752);
            let x_3759 : vec3<f32> = txVec49;
            let x_3761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3759.xy, x_3759.z);
            u_xlat88 = x_3761;
            let x_3763 : f32 = u_xlat24.z;
            let x_3764 : f32 = u_xlat88;
            let x_3766 : f32 = u_xlat87;
            u_xlat87 = ((x_3763 * x_3764) + x_3766);
            let x_3769 : vec4<f32> = u_xlat21;
            let x_3770 : vec2<f32> = vec2<f32>(x_3769.z, x_3769.w);
            let x_3772 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3770.x, x_3770.y, x_3772);
            let x_3779 : vec3<f32> = txVec50;
            let x_3781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3779.xy, x_3779.z);
            u_xlat88 = x_3781;
            let x_3783 : f32 = u_xlat24.w;
            let x_3784 : f32 = u_xlat88;
            let x_3786 : f32 = u_xlat87;
            u_xlat87 = ((x_3783 * x_3784) + x_3786);
            let x_3789 : vec4<f32> = u_xlat22;
            let x_3790 : vec2<f32> = vec2<f32>(x_3789.x, x_3789.y);
            let x_3792 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3790.x, x_3790.y, x_3792);
            let x_3799 : vec3<f32> = txVec51;
            let x_3801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3799.xy, x_3799.z);
            u_xlat88 = x_3801;
            let x_3803 : f32 = u_xlat25.x;
            let x_3804 : f32 = u_xlat88;
            let x_3806 : f32 = u_xlat87;
            u_xlat87 = ((x_3803 * x_3804) + x_3806);
            let x_3809 : vec4<f32> = u_xlat22;
            let x_3810 : vec2<f32> = vec2<f32>(x_3809.z, x_3809.w);
            let x_3812 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3810.x, x_3810.y, x_3812);
            let x_3819 : vec3<f32> = txVec52;
            let x_3821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3819.xy, x_3819.z);
            u_xlat88 = x_3821;
            let x_3823 : f32 = u_xlat25.y;
            let x_3824 : f32 = u_xlat88;
            let x_3826 : f32 = u_xlat87;
            u_xlat87 = ((x_3823 * x_3824) + x_3826);
            let x_3829 : vec2<f32> = u_xlat40;
            let x_3831 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3829.x, x_3829.y, x_3831);
            let x_3838 : vec3<f32> = txVec53;
            let x_3840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3838.xy, x_3838.z);
            u_xlat88 = x_3840;
            let x_3842 : f32 = u_xlat25.z;
            let x_3843 : f32 = u_xlat88;
            let x_3845 : f32 = u_xlat87;
            u_xlat87 = ((x_3842 * x_3843) + x_3845);
            let x_3848 : vec2<f32> = u_xlat72;
            let x_3850 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3848.x, x_3848.y, x_3850);
            let x_3857 : vec3<f32> = txVec54;
            let x_3859 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3857.xy, x_3857.z);
            u_xlat88 = x_3859;
            let x_3861 : f32 = u_xlat25.w;
            let x_3862 : f32 = u_xlat88;
            let x_3864 : f32 = u_xlat87;
            u_xlat87 = ((x_3861 * x_3862) + x_3864);
            let x_3867 : vec4<f32> = u_xlat17;
            let x_3868 : vec2<f32> = vec2<f32>(x_3867.x, x_3867.y);
            let x_3870 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3868.x, x_3868.y, x_3870);
            let x_3877 : vec3<f32> = txVec55;
            let x_3879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3877.xy, x_3877.z);
            u_xlat88 = x_3879;
            let x_3881 : f32 = u_xlat13.x;
            let x_3882 : f32 = u_xlat88;
            let x_3884 : f32 = u_xlat87;
            u_xlat87 = ((x_3881 * x_3882) + x_3884);
            let x_3887 : vec4<f32> = u_xlat17;
            let x_3888 : vec2<f32> = vec2<f32>(x_3887.z, x_3887.w);
            let x_3890 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3888.x, x_3888.y, x_3890);
            let x_3897 : vec3<f32> = txVec56;
            let x_3899 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3897.xy, x_3897.z);
            u_xlat88 = x_3899;
            let x_3901 : f32 = u_xlat13.y;
            let x_3902 : f32 = u_xlat88;
            let x_3904 : f32 = u_xlat87;
            u_xlat87 = ((x_3901 * x_3902) + x_3904);
            let x_3907 : vec2<f32> = u_xlat67;
            let x_3909 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3907.x, x_3907.y, x_3909);
            let x_3916 : vec3<f32> = txVec57;
            let x_3918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3916.xy, x_3916.z);
            u_xlat88 = x_3918;
            let x_3920 : f32 = u_xlat13.z;
            let x_3921 : f32 = u_xlat88;
            let x_3923 : f32 = u_xlat87;
            u_xlat87 = ((x_3920 * x_3921) + x_3923);
            let x_3926 : vec4<f32> = u_xlat12;
            let x_3927 : vec2<f32> = vec2<f32>(x_3926.x, x_3926.y);
            let x_3929 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3927.x, x_3927.y, x_3929);
            let x_3936 : vec3<f32> = txVec58;
            let x_3938 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3936.xy, x_3936.z);
            u_xlat88 = x_3938;
            let x_3940 : f32 = u_xlat13.w;
            let x_3941 : f32 = u_xlat88;
            let x_3943 : f32 = u_xlat87;
            u_xlat86 = ((x_3940 * x_3941) + x_3943);
          }
        }
      } else {
        let x_3947 : vec4<f32> = u_xlat11;
        let x_3948 : vec2<f32> = vec2<f32>(x_3947.x, x_3947.y);
        let x_3950 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3948.x, x_3948.y, x_3950);
        let x_3957 : vec3<f32> = txVec59;
        let x_3959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3957.xy, x_3957.z);
        u_xlat86 = x_3959;
      }
      let x_3960 : i32 = u_xlati6;
      let x_3962 : f32 = x_757.x_AdditionalShadowParams[x_3960].x;
      u_xlat87 = (1.0f + -(x_3962));
      let x_3965 : f32 = u_xlat86;
      let x_3966 : i32 = u_xlati6;
      let x_3968 : f32 = x_757.x_AdditionalShadowParams[x_3966].x;
      let x_3970 : f32 = u_xlat87;
      u_xlat86 = ((x_3965 * x_3968) + x_3970);
      let x_3973 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3973);
      let x_3977 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3977 >= 1.0f);
      let x_3979 : bool = u_xlatb87;
      let x_3980 : bool = u_xlatb88;
      u_xlatb87 = (x_3979 | x_3980);
      let x_3982 : bool = u_xlatb87;
      let x_3983 : f32 = u_xlat86;
      u_xlat86 = select(x_3983, 1.0f, x_3982);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3986 : f32 = u_xlat86;
    u_xlat87 = (-(x_3986) + 1.0f);
    let x_3989 : f32 = u_xlat81;
    let x_3990 : f32 = u_xlat87;
    let x_3992 : f32 = u_xlat86;
    u_xlat86 = ((x_3989 * x_3990) + x_3992);
    let x_3995 : i32 = u_xlati6;
    u_xlati87 = (1i << bitcast<u32>((x_3995 & 31i)));
    let x_3998 : i32 = u_xlati87;
    let x_4001 : f32 = x_2100.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3998) & bitcast<u32>(x_4001)));
    let x_4005 : i32 = u_xlati87;
    if ((x_4005 != 0i)) {
      let x_4009 : i32 = u_xlati6;
      let x_4011 : f32 = x_2100.x_AdditionalLightsLightTypes[x_4009].el;
      u_xlati87 = i32(x_4011);
      let x_4014 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4014 != 0i));
      let x_4018 : i32 = u_xlati6;
      u_xlati11 = (x_4018 << bitcast<u32>(2i));
      let x_4020 : i32 = u_xlati88;
      if ((x_4020 != 0i)) {
        let x_4025 : vec3<f32> = vs_TEXCOORD7;
        let x_4027 : i32 = u_xlati11;
        let x_4030 : i32 = u_xlati11;
        let x_4034 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[((x_4027 + 1i) / 4i)][((x_4030 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4025.y, x_4025.y, x_4025.y) * vec3<f32>(x_4034.x, x_4034.y, x_4034.w));
        let x_4037 : i32 = u_xlati11;
        let x_4039 : i32 = u_xlati11;
        let x_4042 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[(x_4037 / 4i)][(x_4039 % 4i)];
        let x_4044 : vec3<f32> = vs_TEXCOORD7;
        let x_4047 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4042.x, x_4042.y, x_4042.w) * vec3<f32>(x_4044.x, x_4044.x, x_4044.x)) + x_4047);
        let x_4049 : i32 = u_xlati11;
        let x_4052 : i32 = u_xlati11;
        let x_4056 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[((x_4049 + 2i) / 4i)][((x_4052 + 2i) % 4i)];
        let x_4058 : vec3<f32> = vs_TEXCOORD7;
        let x_4061 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4056.x, x_4056.y, x_4056.w) * vec3<f32>(x_4058.z, x_4058.z, x_4058.z)) + x_4061);
        let x_4063 : vec3<f32> = u_xlat37;
        let x_4064 : i32 = u_xlati11;
        let x_4067 : i32 = u_xlati11;
        let x_4071 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[((x_4064 + 3i) / 4i)][((x_4067 + 3i) % 4i)];
        u_xlat37 = (x_4063 + vec3<f32>(x_4071.x, x_4071.y, x_4071.w));
        let x_4074 : vec3<f32> = u_xlat37;
        let x_4076 : vec3<f32> = u_xlat37;
        let x_4078 : vec2<f32> = (vec2<f32>(x_4074.x, x_4074.y) / vec2<f32>(x_4076.z, x_4076.z));
        let x_4079 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4078.x, x_4078.y, x_4079.z);
        let x_4081 : vec3<f32> = u_xlat37;
        let x_4084 : vec2<f32> = ((vec2<f32>(x_4081.x, x_4081.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4085 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4084.x, x_4084.y, x_4085.z);
        let x_4087 : vec3<f32> = u_xlat37;
        let x_4091 : vec2<f32> = clamp(vec2<f32>(x_4087.x, x_4087.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4092 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4091.x, x_4091.y, x_4092.z);
        let x_4094 : i32 = u_xlati6;
        let x_4096 : vec4<f32> = x_2100.x_AdditionalLightsCookieAtlasUVRects[x_4094];
        let x_4098 : vec3<f32> = u_xlat37;
        let x_4101 : i32 = u_xlati6;
        let x_4103 : vec4<f32> = x_2100.x_AdditionalLightsCookieAtlasUVRects[x_4101];
        let x_4105 : vec2<f32> = ((vec2<f32>(x_4096.x, x_4096.y) * vec2<f32>(x_4098.x, x_4098.y)) + vec2<f32>(x_4103.z, x_4103.w));
        let x_4106 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4105.x, x_4105.y, x_4106.z);
      } else {
        let x_4109 : i32 = u_xlati87;
        u_xlatb87 = (x_4109 == 1i);
        let x_4111 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4111);
        let x_4113 : i32 = u_xlati87;
        if ((x_4113 != 0i)) {
          let x_4117 : vec3<f32> = vs_TEXCOORD7;
          let x_4119 : i32 = u_xlati11;
          let x_4122 : i32 = u_xlati11;
          let x_4126 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[((x_4119 + 1i) / 4i)][((x_4122 + 1i) % 4i)];
          let x_4128 : vec2<f32> = (vec2<f32>(x_4117.y, x_4117.y) * vec2<f32>(x_4126.x, x_4126.y));
          let x_4129 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4128.x, x_4128.y, x_4129.z, x_4129.w);
          let x_4131 : i32 = u_xlati11;
          let x_4133 : i32 = u_xlati11;
          let x_4136 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[(x_4131 / 4i)][(x_4133 % 4i)];
          let x_4138 : vec3<f32> = vs_TEXCOORD7;
          let x_4141 : vec4<f32> = u_xlat12;
          let x_4143 : vec2<f32> = ((vec2<f32>(x_4136.x, x_4136.y) * vec2<f32>(x_4138.x, x_4138.x)) + vec2<f32>(x_4141.x, x_4141.y));
          let x_4144 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4143.x, x_4143.y, x_4144.z, x_4144.w);
          let x_4146 : i32 = u_xlati11;
          let x_4149 : i32 = u_xlati11;
          let x_4153 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[((x_4146 + 2i) / 4i)][((x_4149 + 2i) % 4i)];
          let x_4155 : vec3<f32> = vs_TEXCOORD7;
          let x_4158 : vec4<f32> = u_xlat12;
          let x_4160 : vec2<f32> = ((vec2<f32>(x_4153.x, x_4153.y) * vec2<f32>(x_4155.z, x_4155.z)) + vec2<f32>(x_4158.x, x_4158.y));
          let x_4161 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4160.x, x_4160.y, x_4161.z, x_4161.w);
          let x_4163 : vec4<f32> = u_xlat12;
          let x_4165 : i32 = u_xlati11;
          let x_4168 : i32 = u_xlati11;
          let x_4172 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[((x_4165 + 3i) / 4i)][((x_4168 + 3i) % 4i)];
          let x_4174 : vec2<f32> = (vec2<f32>(x_4163.x, x_4163.y) + vec2<f32>(x_4172.x, x_4172.y));
          let x_4175 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4174.x, x_4174.y, x_4175.z, x_4175.w);
          let x_4177 : vec4<f32> = u_xlat12;
          let x_4180 : vec2<f32> = ((vec2<f32>(x_4177.x, x_4177.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4181 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4180.x, x_4180.y, x_4181.z, x_4181.w);
          let x_4183 : vec4<f32> = u_xlat12;
          let x_4185 : vec2<f32> = fract(vec2<f32>(x_4183.x, x_4183.y));
          let x_4186 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4185.x, x_4185.y, x_4186.z, x_4186.w);
          let x_4188 : i32 = u_xlati6;
          let x_4190 : vec4<f32> = x_2100.x_AdditionalLightsCookieAtlasUVRects[x_4188];
          let x_4192 : vec4<f32> = u_xlat12;
          let x_4195 : i32 = u_xlati6;
          let x_4197 : vec4<f32> = x_2100.x_AdditionalLightsCookieAtlasUVRects[x_4195];
          let x_4199 : vec2<f32> = ((vec2<f32>(x_4190.x, x_4190.y) * vec2<f32>(x_4192.x, x_4192.y)) + vec2<f32>(x_4197.z, x_4197.w));
          let x_4200 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4199.x, x_4199.y, x_4200.z);
        } else {
          let x_4203 : vec3<f32> = vs_TEXCOORD7;
          let x_4205 : i32 = u_xlati11;
          let x_4208 : i32 = u_xlati11;
          let x_4212 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[((x_4205 + 1i) / 4i)][((x_4208 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4203.y, x_4203.y, x_4203.y, x_4203.y) * x_4212);
          let x_4214 : i32 = u_xlati11;
          let x_4216 : i32 = u_xlati11;
          let x_4219 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[(x_4214 / 4i)][(x_4216 % 4i)];
          let x_4220 : vec3<f32> = vs_TEXCOORD7;
          let x_4223 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4219 * vec4<f32>(x_4220.x, x_4220.x, x_4220.x, x_4220.x)) + x_4223);
          let x_4225 : i32 = u_xlati11;
          let x_4228 : i32 = u_xlati11;
          let x_4232 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[((x_4225 + 2i) / 4i)][((x_4228 + 2i) % 4i)];
          let x_4233 : vec3<f32> = vs_TEXCOORD7;
          let x_4236 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4232 * vec4<f32>(x_4233.z, x_4233.z, x_4233.z, x_4233.z)) + x_4236);
          let x_4238 : vec4<f32> = u_xlat12;
          let x_4239 : i32 = u_xlati11;
          let x_4242 : i32 = u_xlati11;
          let x_4246 : vec4<f32> = x_2100.x_AdditionalLightsWorldToLights[((x_4239 + 3i) / 4i)][((x_4242 + 3i) % 4i)];
          u_xlat12 = (x_4238 + x_4246);
          let x_4248 : vec4<f32> = u_xlat12;
          let x_4250 : vec4<f32> = u_xlat12;
          let x_4252 : vec3<f32> = (vec3<f32>(x_4248.x, x_4248.y, x_4248.z) / vec3<f32>(x_4250.w, x_4250.w, x_4250.w));
          let x_4253 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4252.x, x_4252.y, x_4252.z, x_4253.w);
          let x_4255 : vec4<f32> = u_xlat12;
          let x_4257 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4255.x, x_4255.y, x_4255.z), vec3<f32>(x_4257.x, x_4257.y, x_4257.z));
          let x_4260 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4260);
          let x_4262 : f32 = u_xlat87;
          let x_4264 : vec4<f32> = u_xlat12;
          let x_4266 : vec3<f32> = (vec3<f32>(x_4262, x_4262, x_4262) * vec3<f32>(x_4264.x, x_4264.y, x_4264.z));
          let x_4267 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4266.x, x_4266.y, x_4266.z, x_4267.w);
          let x_4269 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4269.x, x_4269.y, x_4269.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4274 : f32 = u_xlat87;
          u_xlat87 = max(x_4274, 0.00000099999999747524f);
          let x_4277 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4277);
          let x_4279 : f32 = u_xlat87;
          let x_4281 : vec4<f32> = u_xlat12;
          let x_4283 : vec3<f32> = (vec3<f32>(x_4279, x_4279, x_4279) * vec3<f32>(x_4281.z, x_4281.x, x_4281.y));
          let x_4284 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4283.x, x_4283.y, x_4283.z, x_4284.w);
          let x_4287 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4287);
          let x_4291 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4291, 0.0f, 1.0f);
          let x_4294 : vec4<f32> = u_xlat13;
          let x_4296 : vec4<bool> = (vec4<f32>(x_4294.y, x_4294.y, x_4294.y, x_4294.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4297 : vec2<bool> = vec2<bool>(x_4296.x, x_4296.w);
          let x_4298 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4297.x, x_4298.y, x_4298.z, x_4297.y);
          let x_4301 : bool = u_xlatb11.x;
          if (x_4301) {
            let x_4306 : f32 = u_xlat13.x;
            x_4302 = x_4306;
          } else {
            let x_4309 : f32 = u_xlat13.x;
            x_4302 = -(x_4309);
          }
          let x_4311 : f32 = x_4302;
          u_xlat11.x = x_4311;
          let x_4314 : bool = u_xlatb11.w;
          if (x_4314) {
            let x_4319 : f32 = u_xlat13.x;
            x_4315 = x_4319;
          } else {
            let x_4322 : f32 = u_xlat13.x;
            x_4315 = -(x_4322);
          }
          let x_4324 : f32 = x_4315;
          u_xlat11.w = x_4324;
          let x_4326 : vec4<f32> = u_xlat12;
          let x_4328 : f32 = u_xlat87;
          let x_4331 : vec4<f32> = u_xlat11;
          let x_4333 : vec2<f32> = ((vec2<f32>(x_4326.x, x_4326.y) * vec2<f32>(x_4328, x_4328)) + vec2<f32>(x_4331.x, x_4331.w));
          let x_4334 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4333.x, x_4334.y, x_4334.z, x_4333.y);
          let x_4336 : vec4<f32> = u_xlat11;
          let x_4339 : vec2<f32> = ((vec2<f32>(x_4336.x, x_4336.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4340 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4339.x, x_4340.y, x_4340.z, x_4339.y);
          let x_4342 : vec4<f32> = u_xlat11;
          let x_4346 : vec2<f32> = clamp(vec2<f32>(x_4342.x, x_4342.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4347 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4346.x, x_4347.y, x_4347.z, x_4346.y);
          let x_4349 : i32 = u_xlati6;
          let x_4351 : vec4<f32> = x_2100.x_AdditionalLightsCookieAtlasUVRects[x_4349];
          let x_4353 : vec4<f32> = u_xlat11;
          let x_4356 : i32 = u_xlati6;
          let x_4358 : vec4<f32> = x_2100.x_AdditionalLightsCookieAtlasUVRects[x_4356];
          let x_4360 : vec2<f32> = ((vec2<f32>(x_4351.x, x_4351.y) * vec2<f32>(x_4353.x, x_4353.w)) + vec2<f32>(x_4358.z, x_4358.w));
          let x_4361 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4360.x, x_4360.y, x_4361.z);
        }
      }
      let x_4368 : vec3<f32> = u_xlat37;
      let x_4370 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4368.x, x_4368.y), 0.0f);
      u_xlat11 = x_4370;
      let x_4372 : bool = u_xlatb7.y;
      if (x_4372) {
        let x_4377 : f32 = u_xlat11.w;
        x_4373 = x_4377;
      } else {
        let x_4380 : f32 = u_xlat11.x;
        x_4373 = x_4380;
      }
      let x_4381 : f32 = x_4373;
      u_xlat87 = x_4381;
      let x_4383 : bool = u_xlatb7.x;
      if (x_4383) {
        let x_4387 : vec4<f32> = u_xlat11;
        x_4384 = vec3<f32>(x_4387.x, x_4387.y, x_4387.z);
      } else {
        let x_4390 : f32 = u_xlat87;
        x_4384 = vec3<f32>(x_4390, x_4390, x_4390);
      }
      let x_4392 : vec3<f32> = x_4384;
      let x_4393 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4392.x, x_4392.y, x_4392.z, x_4393.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4399 : vec4<f32> = u_xlat11;
    let x_4401 : i32 = u_xlati6;
    let x_4403 : vec4<f32> = x_2577.x_AdditionalLightsColor[x_4401];
    let x_4405 : vec3<f32> = (vec3<f32>(x_4399.x, x_4399.y, x_4399.z) * vec3<f32>(x_4403.x, x_4403.y, x_4403.z));
    let x_4406 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4405.x, x_4405.y, x_4405.z, x_4406.w);
    let x_4408 : f32 = u_xlat59;
    let x_4409 : f32 = u_xlat86;
    u_xlat6.x = (x_4408 * x_4409);
    let x_4412 : vec4<f32> = u_xlat2;
    let x_4414 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_4412.x, x_4412.y, x_4412.z), vec3<f32>(x_4414.x, x_4414.y, x_4414.z));
    let x_4417 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4417, 0.0f, 1.0f);
    let x_4420 : f32 = u_xlat6.x;
    let x_4421 : f32 = u_xlat59;
    u_xlat6.x = (x_4420 * x_4421);
    let x_4424 : vec4<f32> = u_xlat6;
    let x_4426 : vec4<f32> = u_xlat11;
    let x_4428 : vec3<f32> = (vec3<f32>(x_4424.x, x_4424.x, x_4424.x) * vec3<f32>(x_4426.x, x_4426.y, x_4426.z));
    let x_4429 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4428.x, x_4428.y, x_4428.z, x_4429.w);
    let x_4431 : vec4<f32> = u_xlat9;
    let x_4433 : f32 = u_xlat85;
    let x_4436 : vec4<f32> = u_xlat1;
    let x_4438 : vec3<f32> = ((vec3<f32>(x_4431.x, x_4431.y, x_4431.z) * vec3<f32>(x_4433, x_4433, x_4433)) + vec3<f32>(x_4436.x, x_4436.y, x_4436.z));
    let x_4439 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4438.x, x_4438.y, x_4438.z, x_4439.w);
    let x_4441 : vec4<f32> = u_xlat9;
    let x_4443 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4441.x, x_4441.y, x_4441.z), vec3<f32>(x_4443.x, x_4443.y, x_4443.z));
    let x_4448 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_4448, 1.17549435e-38f);
    let x_4452 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_4452);
    let x_4455 : vec4<f32> = u_xlat6;
    let x_4457 : vec4<f32> = u_xlat9;
    let x_4459 : vec3<f32> = (vec3<f32>(x_4455.x, x_4455.x, x_4455.x) * vec3<f32>(x_4457.x, x_4457.y, x_4457.z));
    let x_4460 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4459.x, x_4459.y, x_4459.z, x_4460.w);
    let x_4462 : vec4<f32> = u_xlat2;
    let x_4464 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4462.x, x_4462.y, x_4462.z), vec3<f32>(x_4464.x, x_4464.y, x_4464.z));
    let x_4469 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_4469, 0.0f, 1.0f);
    let x_4472 : vec4<f32> = u_xlat10;
    let x_4474 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_4472.x, x_4472.y, x_4472.z), vec3<f32>(x_4474.x, x_4474.y, x_4474.z));
    let x_4477 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4477, 0.0f, 1.0f);
    let x_4480 : f32 = u_xlat6.x;
    let x_4482 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4480 * x_4482);
    let x_4486 : f32 = u_xlat6.x;
    let x_4488 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_4486 * x_4488) + 1.00001001358032226562f);
    let x_4492 : f32 = u_xlat59;
    let x_4493 : f32 = u_xlat59;
    u_xlat59 = (x_4492 * x_4493);
    let x_4496 : f32 = u_xlat6.x;
    let x_4498 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4496 * x_4498);
    let x_4501 : f32 = u_xlat59;
    u_xlat59 = max(x_4501, 0.10000000149011611938f);
    let x_4504 : f32 = u_xlat6.x;
    let x_4505 : f32 = u_xlat59;
    u_xlat6.x = (x_4504 * x_4505);
    let x_4508 : f32 = u_xlat82;
    let x_4510 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4508 * x_4510);
    let x_4513 : f32 = u_xlat80;
    let x_4515 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4513 / x_4515);
    let x_4518 : vec4<f32> = u_xlat5;
    let x_4520 : vec4<f32> = u_xlat6;
    let x_4523 : vec4<f32> = u_xlat4;
    let x_4525 : vec3<f32> = ((vec3<f32>(x_4518.x, x_4518.y, x_4518.z) * vec3<f32>(x_4520.x, x_4520.x, x_4520.x)) + vec3<f32>(x_4523.x, x_4523.y, x_4523.z));
    let x_4526 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4525.x, x_4525.y, x_4525.z, x_4526.w);
    let x_4528 : vec4<f32> = u_xlat9;
    let x_4530 : vec4<f32> = u_xlat11;
    let x_4533 : vec4<f32> = u_xlat8;
    let x_4535 : vec3<f32> = ((vec3<f32>(x_4528.x, x_4528.y, x_4528.z) * vec3<f32>(x_4530.x, x_4530.y, x_4530.z)) + vec3<f32>(x_4533.x, x_4533.y, x_4533.z));
    let x_4536 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4535.x, x_4535.y, x_4535.z, x_4536.w);

    continuing {
      let x_4538 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4538 + bitcast<u32>(1i));
    }
  }
  let x_4540 : vec4<f32> = u_xlat3;
  let x_4542 : f32 = u_xlat26;
  let x_4545 : vec3<f32> = u_xlat32;
  u_xlat0 = ((vec3<f32>(x_4540.x, x_4540.y, x_4540.z) * vec3<f32>(x_4542, x_4542, x_4542)) + x_4545);
  let x_4547 : vec4<f32> = u_xlat8;
  let x_4549 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4547.x, x_4547.y, x_4547.z) + x_4549);
  let x_4551 : f32 = u_xlat79;
  let x_4552 : f32 = u_xlat79;
  u_xlat1.x = (x_4551 * -(x_4552));
  let x_4557 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4557);
  let x_4560 : vec3<f32> = u_xlat0;
  let x_4561 : f32 = u_xlat78;
  let x_4565 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_4560 * vec3<f32>(x_4561, x_4561, x_4561)) + -(vec3<f32>(x_4565.x, x_4565.y, x_4565.z)));
  let x_4571 : vec4<f32> = u_xlat1;
  let x_4573 : vec3<f32> = u_xlat0;
  let x_4576 : vec4<f32> = x_113.unity_FogColor;
  let x_4578 : vec3<f32> = ((vec3<f32>(x_4571.x, x_4571.x, x_4571.x) * x_4573) + vec3<f32>(x_4576.x, x_4576.y, x_4576.z));
  let x_4579 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4578.x, x_4578.y, x_4578.z, x_4579.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


