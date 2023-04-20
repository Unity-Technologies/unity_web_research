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

var<private> u_xlat78 : f32;

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

var<private> u_xlatb79 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat79 : f32;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(20) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_990 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb57 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_2343 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2542 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb6 : vec2<bool>;

var<private> u_xlatu58 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati58 : i32;

@group(1) @binding(1) var<uniform> x_2851 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

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

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu31 : u32;

var<private> u_xlatb58 : bool;

fn main_1() {
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
  var x_2295 : f32;
  var x_2410 : f32;
  var x_2421 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2989 : f32;
  var x_2999 : f32;
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
  var x_4580 : f32;
  var x_4593 : f32;
  var x_4651 : f32;
  var x_4662 : vec3<f32>;
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
  u_xlat79 = dot(vec2<f32>(x_382.x, x_382.y), vec2<f32>(x_384.x, x_384.y));
  let x_387 : f32 = u_xlat79;
  u_xlat79 = min(x_387, 1.0f);
  let x_389 : f32 = u_xlat79;
  u_xlat79 = (-(x_389) + 1.0f);
  let x_392 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_392);
  let x_394 : f32 = u_xlat79;
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
  u_xlat79 = dot(vec2<f32>(x_430.x, x_430.y), vec2<f32>(x_432.x, x_432.y));
  let x_435 : f32 = u_xlat79;
  u_xlat79 = min(x_435, 1.0f);
  let x_437 : f32 = u_xlat79;
  u_xlat79 = (-(x_437) + 1.0f);
  let x_440 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_440);
  let x_442 : f32 = u_xlat79;
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
  u_xlat79 = dot(vec2<f32>(x_500.x, x_500.y), vec2<f32>(x_502.x, x_502.y));
  let x_505 : f32 = u_xlat79;
  u_xlat79 = min(x_505, 1.0f);
  let x_507 : f32 = u_xlat79;
  u_xlat79 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_510);
  let x_512 : f32 = u_xlat79;
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
  u_xlat79 = dot(vec2<f32>(x_563.x, x_563.y), vec2<f32>(x_565.x, x_565.y));
  let x_568 : f32 = u_xlat79;
  u_xlat79 = min(x_568, 1.0f);
  let x_570 : f32 = u_xlat79;
  u_xlat79 = (-(x_570) + 1.0f);
  let x_573 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_573);
  let x_575 : f32 = u_xlat79;
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
  u_xlat79 = dot(vec3<f32>(x_607.x, x_607.y, x_607.w), vec3<f32>(x_609.x, x_609.y, x_609.w));
  let x_612 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_612);
  let x_614 : f32 = u_xlat79;
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
  u_xlat52 = dot(x_692, x_693);
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
  u_xlat26 = dot(x_775, x_776);
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
  u_xlat79 = dot(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_814);
  let x_816 : f32 = u_xlat79;
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec3<f32> = (vec3<f32>(x_816, x_816, x_816) * vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_827 : f32 = vs_TEXCOORD7.y;
  let x_829 : f32 = x_113.unity_MatrixV[1i].z;
  u_xlat79 = (x_827 * x_829);
  let x_832 : f32 = x_113.unity_MatrixV[0i].z;
  let x_834 : f32 = vs_TEXCOORD7.x;
  let x_836 : f32 = u_xlat79;
  u_xlat79 = ((x_832 * x_834) + x_836);
  let x_839 : f32 = x_113.unity_MatrixV[2i].z;
  let x_841 : f32 = vs_TEXCOORD7.z;
  let x_843 : f32 = u_xlat79;
  u_xlat79 = ((x_839 * x_841) + x_843);
  let x_845 : f32 = u_xlat79;
  let x_847 : f32 = x_113.unity_MatrixV[3i].z;
  u_xlat79 = (x_845 + x_847);
  let x_849 : f32 = u_xlat79;
  let x_852 : f32 = x_113.x_ProjectionParams.y;
  u_xlat79 = (-(x_849) + -(x_852));
  let x_855 : f32 = u_xlat79;
  u_xlat79 = max(x_855, 0.0f);
  let x_857 : f32 = u_xlat79;
  let x_859 : f32 = x_113.unity_FogParams.x;
  u_xlat79 = (x_857 * x_859);
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
  u_xlat80 = max(x_909, 0.00009999999747378752f);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : f32 = u_xlat80;
  let x_916 : vec3<f32> = (vec3<f32>(x_912.x, x_912.y, x_912.z) / vec3<f32>(x_914, x_914, x_914));
  let x_917 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_920 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_920) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_925 : f32 = u_xlat52;
  let x_926 : f32 = u_xlat80;
  u_xlat3.x = (x_925 + -(x_926));
  let x_931 : f32 = u_xlat80;
  let x_933 : vec4<f32> = u_xlat5;
  u_xlat29 = (vec3<f32>(x_931, x_931, x_931) * vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat5;
  let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_941 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec3<f32> = u_xlat0;
  let x_945 : vec4<f32> = u_xlat4;
  let x_950 : vec3<f32> = ((vec3<f32>(x_943.x, x_943.x, x_943.x) * vec3<f32>(x_945.x, x_945.y, x_945.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_951 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : f32 = u_xlat52;
  u_xlat0.x = (-(x_953) + 1.0f);
  let x_958 : f32 = u_xlat0.x;
  let x_960 : f32 = u_xlat0.x;
  u_xlat52 = (x_958 * x_960);
  let x_962 : f32 = u_xlat52;
  u_xlat52 = max(x_962, 0.0078125f);
  let x_965 : f32 = u_xlat52;
  let x_966 : f32 = u_xlat52;
  u_xlat80 = (x_965 * x_966);
  let x_969 : f32 = u_xlat3.x;
  u_xlat3.x = (x_969 + 1.0f);
  let x_973 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_973, 0.0f, 1.0f);
  let x_977 : f32 = u_xlat52;
  u_xlat82 = ((x_977 * 4.0f) + 2.0f);
  let x_980 : f32 = u_xlat26;
  u_xlat26 = min(x_980, 1.0f);
  let x_992 : f32 = x_990.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_992);
  let x_994 : bool = u_xlatb5;
  if (x_994) {
    let x_998 : f32 = x_990.x_MainLightShadowParams.y;
    u_xlatb5 = (x_998 == 1.0f);
    let x_1000 : bool = u_xlatb5;
    if (x_1000) {
      let x_1004 : vec4<f32> = vs_TEXCOORD8;
      let x_1007 : vec4<f32> = x_990.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1004.x, x_1004.y, x_1004.x, x_1004.y) + x_1007);
      let x_1011 : vec4<f32> = u_xlat5;
      let x_1012 : vec2<f32> = vec2<f32>(x_1011.x, x_1011.y);
      let x_1014 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1012.x, x_1012.y, x_1014);
      let x_1026 : vec3<f32> = txVec0;
      let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1026.xy, x_1026.z);
      u_xlat6.x = x_1028;
      let x_1031 : vec4<f32> = u_xlat5;
      let x_1032 : vec2<f32> = vec2<f32>(x_1031.z, x_1031.w);
      let x_1034 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1032.x, x_1032.y, x_1034);
      let x_1041 : vec3<f32> = txVec1;
      let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1041.xy, x_1041.z);
      u_xlat6.y = x_1043;
      let x_1045 : vec4<f32> = vs_TEXCOORD8;
      let x_1048 : vec4<f32> = x_990.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y) + x_1048);
      let x_1051 : vec4<f32> = u_xlat5;
      let x_1052 : vec2<f32> = vec2<f32>(x_1051.x, x_1051.y);
      let x_1054 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1052.x, x_1052.y, x_1054);
      let x_1061 : vec3<f32> = txVec2;
      let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1061.xy, x_1061.z);
      u_xlat6.z = x_1063;
      let x_1066 : vec4<f32> = u_xlat5;
      let x_1067 : vec2<f32> = vec2<f32>(x_1066.z, x_1066.w);
      let x_1069 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
      let x_1076 : vec3<f32> = txVec3;
      let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1076.xy, x_1076.z);
      u_xlat6.w = x_1078;
      let x_1080 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1080, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1088 : f32 = x_990.x_MainLightShadowParams.y;
      u_xlatb31 = (x_1088 == 2.0f);
      let x_1090 : bool = u_xlatb31;
      if (x_1090) {
        let x_1094 : vec4<f32> = vs_TEXCOORD8;
        let x_1097 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1100 : vec2<f32> = ((vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(x_1097.z, x_1097.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1101 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1100.x, x_1100.y, x_1101.z);
        let x_1103 : vec3<f32> = u_xlat31;
        let x_1105 : vec2<f32> = floor(vec2<f32>(x_1103.x, x_1103.y));
        let x_1106 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1105.x, x_1105.y, x_1106.z);
        let x_1108 : vec4<f32> = vs_TEXCOORD8;
        let x_1111 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1114 : vec3<f32> = u_xlat31;
        let x_1117 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.z, x_1111.w)) + -(vec2<f32>(x_1114.x, x_1114.y)));
        let x_1118 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1120.x, x_1120.x, x_1120.y, x_1120.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1124 : vec4<f32> = u_xlat7;
        let x_1126 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1124.x, x_1124.x, x_1124.z, x_1124.z) * vec4<f32>(x_1126.x, x_1126.x, x_1126.z, x_1126.z));
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_1131.y, x_1131.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1139 : vec4<f32> = u_xlat6;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1136.x, x_1136.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1139.x, x_1139.y)));
        let x_1143 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat6;
        let x_1149 : vec2<f32> = (-(vec2<f32>(x_1145.x, x_1145.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1153 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_1153.x, x_1153.y), vec2<f32>(0.0f, 0.0f));
        let x_1157 : vec2<f32> = u_xlat60;
        let x_1159 : vec2<f32> = u_xlat60;
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_1157) * x_1159) + vec2<f32>(x_1161.x, x_1161.y));
        let x_1164 : vec4<f32> = u_xlat6;
        let x_1166 : vec2<f32> = max(vec2<f32>(x_1164.x, x_1164.y), vec2<f32>(0.0f, 0.0f));
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat6;
        let x_1172 : vec4<f32> = u_xlat6;
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1177 : vec2<f32> = ((-(vec2<f32>(x_1169.x, x_1169.y)) * vec2<f32>(x_1172.x, x_1172.y)) + vec2<f32>(x_1175.y, x_1175.w));
        let x_1178 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1180 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_1180 + vec2<f32>(1.0f, 1.0f));
        let x_1182 : vec4<f32> = u_xlat6;
        let x_1184 : vec2<f32> = (vec2<f32>(x_1182.x, x_1182.y) + vec2<f32>(1.0f, 1.0f));
        let x_1185 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat7;
        let x_1191 : vec2<f32> = (vec2<f32>(x_1187.x, x_1187.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat8;
        let x_1196 : vec2<f32> = (vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1199 : vec2<f32> = u_xlat60;
        let x_1200 : vec2<f32> = (x_1199 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat6;
        let x_1205 : vec2<f32> = (vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1206 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
        let x_1208 : vec4<f32> = u_xlat7;
        let x_1210 : vec2<f32> = (vec2<f32>(x_1208.y, x_1208.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1211 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1210.x, x_1210.y, x_1211.z, x_1211.w);
        let x_1214 : f32 = u_xlat8.x;
        u_xlat9.z = x_1214;
        let x_1217 : f32 = u_xlat6.x;
        u_xlat9.w = x_1217;
        let x_1220 : f32 = u_xlat11.x;
        u_xlat10.z = x_1220;
        let x_1223 : f32 = u_xlat58.x;
        u_xlat10.w = x_1223;
        let x_1225 : vec4<f32> = u_xlat9;
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1225.z, x_1225.w, x_1225.x, x_1225.z) + vec4<f32>(x_1227.z, x_1227.w, x_1227.x, x_1227.z));
        let x_1231 : f32 = u_xlat9.y;
        u_xlat8.z = x_1231;
        let x_1234 : f32 = u_xlat6.y;
        u_xlat8.w = x_1234;
        let x_1237 : f32 = u_xlat10.y;
        u_xlat11.z = x_1237;
        let x_1240 : f32 = u_xlat58.y;
        u_xlat11.w = x_1240;
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1244 : vec4<f32> = u_xlat11;
        let x_1246 : vec3<f32> = (vec3<f32>(x_1242.z, x_1242.y, x_1242.w) + vec3<f32>(x_1244.z, x_1244.y, x_1244.w));
        let x_1247 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
        let x_1249 : vec4<f32> = u_xlat10;
        let x_1251 : vec4<f32> = u_xlat7;
        let x_1253 : vec3<f32> = (vec3<f32>(x_1249.x, x_1249.z, x_1249.w) / vec3<f32>(x_1251.z, x_1251.w, x_1251.y));
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
        let x_1256 : vec4<f32> = u_xlat8;
        let x_1261 : vec3<f32> = (vec3<f32>(x_1256.x, x_1256.y, x_1256.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1262 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1266 : vec4<f32> = u_xlat6;
        let x_1268 : vec3<f32> = (vec3<f32>(x_1264.z, x_1264.y, x_1264.w) / vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
        let x_1271 : vec4<f32> = u_xlat9;
        let x_1273 : vec3<f32> = (vec3<f32>(x_1271.x, x_1271.y, x_1271.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1274 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
        let x_1276 : vec4<f32> = u_xlat8;
        let x_1279 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1281 : vec3<f32> = (vec3<f32>(x_1276.y, x_1276.x, x_1276.z) * vec3<f32>(x_1279.x, x_1279.x, x_1279.x));
        let x_1282 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat9;
        let x_1287 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1289 : vec3<f32> = (vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * vec3<f32>(x_1287.y, x_1287.y, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
        let x_1293 : f32 = u_xlat9.x;
        u_xlat8.w = x_1293;
        let x_1295 : vec3<f32> = u_xlat31;
        let x_1298 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y) * vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y)) + vec4<f32>(x_1301.y, x_1301.w, x_1301.x, x_1301.w));
        let x_1304 : vec3<f32> = u_xlat31;
        let x_1307 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat8;
        let x_1312 : vec2<f32> = ((vec2<f32>(x_1304.x, x_1304.y) * vec2<f32>(x_1307.x, x_1307.y)) + vec2<f32>(x_1310.z, x_1310.w));
        let x_1313 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1316 : f32 = u_xlat8.y;
        u_xlat9.w = x_1316;
        let x_1318 : vec4<f32> = u_xlat9;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.y, x_1318.z);
        let x_1320 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1320.x, x_1319.x, x_1320.z, x_1319.y);
        let x_1322 : vec3<f32> = u_xlat31;
        let x_1325 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1322.x, x_1322.y, x_1322.x, x_1322.y) * vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y)) + vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1328.y));
        let x_1331 : vec3<f32> = u_xlat31;
        let x_1334 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y) * vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y)) + vec4<f32>(x_1337.w, x_1337.y, x_1337.w, x_1337.z));
        let x_1340 : vec3<f32> = u_xlat31;
        let x_1343 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y) * vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.y)) + vec4<f32>(x_1346.x, x_1346.w, x_1346.z, x_1346.w));
        let x_1349 : vec4<f32> = u_xlat6;
        let x_1351 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1349.x, x_1349.x, x_1349.x, x_1349.y) * vec4<f32>(x_1351.z, x_1351.w, x_1351.y, x_1351.z));
        let x_1355 : vec4<f32> = u_xlat6;
        let x_1357 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1355.y, x_1355.y, x_1355.z, x_1355.z) * x_1357);
        let x_1360 : f32 = u_xlat6.z;
        let x_1362 : f32 = u_xlat7.y;
        u_xlat31.x = (x_1360 * x_1362);
        let x_1366 : vec4<f32> = u_xlat10;
        let x_1367 : vec2<f32> = vec2<f32>(x_1366.x, x_1366.y);
        let x_1369 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1377 : vec3<f32> = txVec4;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat57.x = x_1379;
        let x_1382 : vec4<f32> = u_xlat10;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.z, x_1382.w);
        let x_1385 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1393 : vec3<f32> = txVec5;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat83 = x_1395;
        let x_1396 : f32 = u_xlat83;
        let x_1398 : f32 = u_xlat13.y;
        u_xlat83 = (x_1396 * x_1398);
        let x_1401 : f32 = u_xlat13.x;
        let x_1403 : f32 = u_xlat57.x;
        let x_1405 : f32 = u_xlat83;
        u_xlat57.x = ((x_1401 * x_1403) + x_1405);
        let x_1409 : vec4<f32> = u_xlat11;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.x, x_1409.y);
        let x_1412 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec6;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1419.xy, x_1419.z);
        u_xlat83 = x_1421;
        let x_1423 : f32 = u_xlat13.z;
        let x_1424 : f32 = u_xlat83;
        let x_1427 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1423 * x_1424) + x_1427);
        let x_1431 : vec4<f32> = u_xlat9;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec7;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1441.xy, x_1441.z);
        u_xlat83 = x_1443;
        let x_1445 : f32 = u_xlat13.w;
        let x_1446 : f32 = u_xlat83;
        let x_1449 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1445 * x_1446) + x_1449);
        let x_1453 : vec4<f32> = u_xlat12;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec8;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat83 = x_1465;
        let x_1467 : f32 = u_xlat14.x;
        let x_1468 : f32 = u_xlat83;
        let x_1471 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1467 * x_1468) + x_1471);
        let x_1475 : vec4<f32> = u_xlat12;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.z, x_1475.w);
        let x_1478 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec9;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1485.xy, x_1485.z);
        u_xlat83 = x_1487;
        let x_1489 : f32 = u_xlat14.y;
        let x_1490 : f32 = u_xlat83;
        let x_1493 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1489 * x_1490) + x_1493);
        let x_1497 : vec4<f32> = u_xlat9;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.z, x_1497.w);
        let x_1500 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec10;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat83 = x_1509;
        let x_1511 : f32 = u_xlat14.z;
        let x_1512 : f32 = u_xlat83;
        let x_1515 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1511 * x_1512) + x_1515);
        let x_1519 : vec4<f32> = u_xlat8;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.x, x_1519.y);
        let x_1522 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec11;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1529.xy, x_1529.z);
        u_xlat83 = x_1531;
        let x_1533 : f32 = u_xlat14.w;
        let x_1534 : f32 = u_xlat83;
        let x_1537 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1533 * x_1534) + x_1537);
        let x_1541 : vec4<f32> = u_xlat8;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.z, x_1541.w);
        let x_1544 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec12;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1551.xy, x_1551.z);
        u_xlat83 = x_1553;
        let x_1555 : f32 = u_xlat31.x;
        let x_1556 : f32 = u_xlat83;
        let x_1559 : f32 = u_xlat57.x;
        u_xlat5.x = ((x_1555 * x_1556) + x_1559);
      } else {
        let x_1563 : vec4<f32> = vs_TEXCOORD8;
        let x_1566 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1569 : vec2<f32> = ((vec2<f32>(x_1563.x, x_1563.y) * vec2<f32>(x_1566.z, x_1566.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1570 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1569.x, x_1569.y, x_1570.z);
        let x_1572 : vec3<f32> = u_xlat31;
        let x_1574 : vec2<f32> = floor(vec2<f32>(x_1572.x, x_1572.y));
        let x_1575 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1574.x, x_1574.y, x_1575.z);
        let x_1577 : vec4<f32> = vs_TEXCOORD8;
        let x_1580 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1583 : vec3<f32> = u_xlat31;
        let x_1586 : vec2<f32> = ((vec2<f32>(x_1577.x, x_1577.y) * vec2<f32>(x_1580.z, x_1580.w)) + -(vec2<f32>(x_1583.x, x_1583.y)));
        let x_1587 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1586.x, x_1586.y, x_1587.z, x_1587.w);
        let x_1589 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1589.x, x_1589.x, x_1589.y, x_1589.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1592 : vec4<f32> = u_xlat7;
        let x_1594 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1592.x, x_1592.x, x_1592.z, x_1592.z) * vec4<f32>(x_1594.x, x_1594.x, x_1594.z, x_1594.z));
        let x_1597 : vec4<f32> = u_xlat8;
        let x_1601 : vec2<f32> = (vec2<f32>(x_1597.y, x_1597.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1602 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1602.x, x_1601.x, x_1602.z, x_1601.y);
        let x_1604 : vec4<f32> = u_xlat8;
        let x_1607 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1604.x, x_1604.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1607.x, x_1607.y)));
        let x_1611 : vec4<f32> = u_xlat6;
        let x_1614 : vec2<f32> = (-(vec2<f32>(x_1611.x, x_1611.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1615 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1614.x, x_1615.y, x_1614.y, x_1615.w);
        let x_1617 : vec4<f32> = u_xlat6;
        let x_1619 : vec2<f32> = min(vec2<f32>(x_1617.x, x_1617.y), vec2<f32>(0.0f, 0.0f));
        let x_1620 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1619.x, x_1619.y, x_1620.z, x_1620.w);
        let x_1622 : vec4<f32> = u_xlat8;
        let x_1625 : vec4<f32> = u_xlat8;
        let x_1628 : vec4<f32> = u_xlat7;
        let x_1630 : vec2<f32> = ((-(vec2<f32>(x_1622.x, x_1622.y)) * vec2<f32>(x_1625.x, x_1625.y)) + vec2<f32>(x_1628.x, x_1628.z));
        let x_1631 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1630.x, x_1631.y, x_1630.y, x_1631.w);
        let x_1633 : vec4<f32> = u_xlat6;
        let x_1635 : vec2<f32> = max(vec2<f32>(x_1633.x, x_1633.y), vec2<f32>(0.0f, 0.0f));
        let x_1636 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1635.x, x_1635.y, x_1636.z, x_1636.w);
        let x_1638 : vec4<f32> = u_xlat8;
        let x_1641 : vec4<f32> = u_xlat8;
        let x_1644 : vec4<f32> = u_xlat7;
        let x_1646 : vec2<f32> = ((-(vec2<f32>(x_1638.x, x_1638.y)) * vec2<f32>(x_1641.x, x_1641.y)) + vec2<f32>(x_1644.y, x_1644.w));
        let x_1647 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1647.x, x_1646.x, x_1647.z, x_1646.y);
        let x_1649 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1649 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1653 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1653 * 0.08163200318813323975f);
        let x_1657 : vec2<f32> = u_xlat58;
        let x_1660 : vec2<f32> = (vec2<f32>(x_1657.y, x_1657.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1661 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1660.x, x_1660.y, x_1661.z, x_1661.w);
        let x_1663 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1663.x, x_1663.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1667 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1667 * 0.08163200318813323975f);
        let x_1671 : f32 = u_xlat10.y;
        u_xlat8.x = x_1671;
        let x_1673 : vec4<f32> = u_xlat6;
        let x_1680 : vec2<f32> = ((vec2<f32>(x_1673.x, x_1673.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1681 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1681.x, x_1680.x, x_1681.z, x_1680.y);
        let x_1683 : vec4<f32> = u_xlat6;
        let x_1687 : vec2<f32> = ((vec2<f32>(x_1683.x, x_1683.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1688 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1687.x, x_1688.y, x_1687.y, x_1688.w);
        let x_1691 : f32 = u_xlat58.x;
        u_xlat7.y = x_1691;
        let x_1694 : f32 = u_xlat9.y;
        u_xlat7.w = x_1694;
        let x_1696 : vec4<f32> = u_xlat7;
        let x_1697 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1696 + x_1697);
        let x_1699 : vec4<f32> = u_xlat6;
        let x_1702 : vec2<f32> = ((vec2<f32>(x_1699.y, x_1699.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1703 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1703.x, x_1702.x, x_1703.z, x_1702.y);
        let x_1705 : vec4<f32> = u_xlat6;
        let x_1708 : vec2<f32> = ((vec2<f32>(x_1705.y, x_1705.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1709 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1708.x, x_1709.y, x_1708.y, x_1709.w);
        let x_1712 : f32 = u_xlat58.y;
        u_xlat9.y = x_1712;
        let x_1714 : vec4<f32> = u_xlat9;
        let x_1715 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1714 + x_1715);
        let x_1717 : vec4<f32> = u_xlat7;
        let x_1718 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1717 / x_1718);
        let x_1720 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1720 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1726 : vec4<f32> = u_xlat9;
        let x_1727 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1726 / x_1727);
        let x_1729 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1729 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1731 : vec4<f32> = u_xlat7;
        let x_1734 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1731.w, x_1731.x, x_1731.y, x_1731.z) * vec4<f32>(x_1734.x, x_1734.x, x_1734.x, x_1734.x));
        let x_1737 : vec4<f32> = u_xlat9;
        let x_1740 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1737.x, x_1737.w, x_1737.y, x_1737.z) * vec4<f32>(x_1740.y, x_1740.y, x_1740.y, x_1740.y));
        let x_1743 : vec4<f32> = u_xlat7;
        let x_1744 : vec3<f32> = vec3<f32>(x_1743.y, x_1743.z, x_1743.w);
        let x_1745 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1744.x, x_1745.y, x_1744.y, x_1744.z);
        let x_1748 : f32 = u_xlat9.x;
        u_xlat10.y = x_1748;
        let x_1750 : vec3<f32> = u_xlat31;
        let x_1753 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1750.x, x_1750.y, x_1750.x, x_1750.y) * vec4<f32>(x_1753.x, x_1753.y, x_1753.x, x_1753.y)) + vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1756.y));
        let x_1759 : vec3<f32> = u_xlat31;
        let x_1762 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1765 : vec4<f32> = u_xlat10;
        let x_1767 : vec2<f32> = ((vec2<f32>(x_1759.x, x_1759.y) * vec2<f32>(x_1762.x, x_1762.y)) + vec2<f32>(x_1765.w, x_1765.y));
        let x_1768 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1767.x, x_1767.y, x_1768.z, x_1768.w);
        let x_1771 : f32 = u_xlat10.y;
        u_xlat7.y = x_1771;
        let x_1774 : f32 = u_xlat9.z;
        u_xlat10.y = x_1774;
        let x_1776 : vec3<f32> = u_xlat31;
        let x_1779 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1782 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1776.x, x_1776.y, x_1776.x, x_1776.y) * vec4<f32>(x_1779.x, x_1779.y, x_1779.x, x_1779.y)) + vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1782.y));
        let x_1786 : vec3<f32> = u_xlat31;
        let x_1789 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1792 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1786.x, x_1786.y) * vec2<f32>(x_1789.x, x_1789.y)) + vec2<f32>(x_1792.w, x_1792.y));
        let x_1796 : f32 = u_xlat10.y;
        u_xlat7.z = x_1796;
        let x_1798 : vec3<f32> = u_xlat31;
        let x_1801 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1804 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1798.x, x_1798.y, x_1798.x, x_1798.y) * vec4<f32>(x_1801.x, x_1801.y, x_1801.x, x_1801.y)) + vec4<f32>(x_1804.x, x_1804.y, x_1804.x, x_1804.z));
        let x_1808 : f32 = u_xlat9.w;
        u_xlat10.y = x_1808;
        let x_1811 : vec3<f32> = u_xlat31;
        let x_1814 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1817 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1811.x, x_1811.y, x_1811.x, x_1811.y) * vec4<f32>(x_1814.x, x_1814.y, x_1814.x, x_1814.y)) + vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1817.y));
        let x_1821 : vec3<f32> = u_xlat31;
        let x_1824 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1827 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1824.x, x_1824.y)) + vec2<f32>(x_1827.w, x_1827.y));
        let x_1831 : f32 = u_xlat10.y;
        u_xlat7.w = x_1831;
        let x_1834 : vec3<f32> = u_xlat31;
        let x_1837 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1840 : vec4<f32> = u_xlat7;
        let x_1842 : vec2<f32> = ((vec2<f32>(x_1834.x, x_1834.y) * vec2<f32>(x_1837.x, x_1837.y)) + vec2<f32>(x_1840.x, x_1840.w));
        let x_1843 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1842.x, x_1842.y, x_1843.z, x_1843.w);
        let x_1845 : vec4<f32> = u_xlat10;
        let x_1846 : vec3<f32> = vec3<f32>(x_1845.x, x_1845.z, x_1845.w);
        let x_1847 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1846.x, x_1847.y, x_1846.y, x_1846.z);
        let x_1849 : vec3<f32> = u_xlat31;
        let x_1852 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1855 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1849.x, x_1849.y, x_1849.x, x_1849.y) * vec4<f32>(x_1852.x, x_1852.y, x_1852.x, x_1852.y)) + vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1855.y));
        let x_1859 : vec3<f32> = u_xlat31;
        let x_1862 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1865 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1859.x, x_1859.y) * vec2<f32>(x_1862.x, x_1862.y)) + vec2<f32>(x_1865.w, x_1865.y));
        let x_1869 : f32 = u_xlat7.x;
        u_xlat9.x = x_1869;
        let x_1871 : vec3<f32> = u_xlat31;
        let x_1874 : vec4<f32> = x_990.x_MainLightShadowmapSize;
        let x_1877 : vec4<f32> = u_xlat9;
        let x_1879 : vec2<f32> = ((vec2<f32>(x_1871.x, x_1871.y) * vec2<f32>(x_1874.x, x_1874.y)) + vec2<f32>(x_1877.x, x_1877.y));
        let x_1880 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1879.x, x_1879.y, x_1880.z);
        let x_1883 : vec4<f32> = u_xlat6;
        let x_1885 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1883.x, x_1883.x, x_1883.x, x_1883.x) * x_1885);
        let x_1888 : vec4<f32> = u_xlat6;
        let x_1890 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1888.y, x_1888.y, x_1888.y, x_1888.y) * x_1890);
        let x_1893 : vec4<f32> = u_xlat6;
        let x_1895 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1893.z, x_1893.z, x_1893.z, x_1893.z) * x_1895);
        let x_1897 : vec4<f32> = u_xlat6;
        let x_1899 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1897.w, x_1897.w, x_1897.w, x_1897.w) * x_1899);
        let x_1902 : vec4<f32> = u_xlat11;
        let x_1903 : vec2<f32> = vec2<f32>(x_1902.x, x_1902.y);
        let x_1905 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
        let x_1912 : vec3<f32> = txVec13;
        let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1912.xy, x_1912.z);
        u_xlat83 = x_1914;
        let x_1916 : vec4<f32> = u_xlat11;
        let x_1917 : vec2<f32> = vec2<f32>(x_1916.z, x_1916.w);
        let x_1919 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1917.x, x_1917.y, x_1919);
        let x_1926 : vec3<f32> = txVec14;
        let x_1928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1926.xy, x_1926.z);
        u_xlat7.x = x_1928;
        let x_1931 : f32 = u_xlat7.x;
        let x_1933 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1931 * x_1933);
        let x_1937 : f32 = u_xlat17.x;
        let x_1938 : f32 = u_xlat83;
        let x_1941 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1937 * x_1938) + x_1941);
        let x_1944 : vec4<f32> = u_xlat12;
        let x_1945 : vec2<f32> = vec2<f32>(x_1944.x, x_1944.y);
        let x_1947 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1945.x, x_1945.y, x_1947);
        let x_1954 : vec3<f32> = txVec15;
        let x_1956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1954.xy, x_1954.z);
        u_xlat7.x = x_1956;
        let x_1959 : f32 = u_xlat17.z;
        let x_1961 : f32 = u_xlat7.x;
        let x_1963 : f32 = u_xlat83;
        u_xlat83 = ((x_1959 * x_1961) + x_1963);
        let x_1966 : vec4<f32> = u_xlat14;
        let x_1967 : vec2<f32> = vec2<f32>(x_1966.x, x_1966.y);
        let x_1969 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1967.x, x_1967.y, x_1969);
        let x_1976 : vec3<f32> = txVec16;
        let x_1978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1976.xy, x_1976.z);
        u_xlat7.x = x_1978;
        let x_1981 : f32 = u_xlat17.w;
        let x_1983 : f32 = u_xlat7.x;
        let x_1985 : f32 = u_xlat83;
        u_xlat83 = ((x_1981 * x_1983) + x_1985);
        let x_1988 : vec4<f32> = u_xlat13;
        let x_1989 : vec2<f32> = vec2<f32>(x_1988.x, x_1988.y);
        let x_1991 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1989.x, x_1989.y, x_1991);
        let x_1998 : vec3<f32> = txVec17;
        let x_2000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1998.xy, x_1998.z);
        u_xlat7.x = x_2000;
        let x_2003 : f32 = u_xlat18.x;
        let x_2005 : f32 = u_xlat7.x;
        let x_2007 : f32 = u_xlat83;
        u_xlat83 = ((x_2003 * x_2005) + x_2007);
        let x_2010 : vec4<f32> = u_xlat13;
        let x_2011 : vec2<f32> = vec2<f32>(x_2010.z, x_2010.w);
        let x_2013 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2011.x, x_2011.y, x_2013);
        let x_2020 : vec3<f32> = txVec18;
        let x_2022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2020.xy, x_2020.z);
        u_xlat7.x = x_2022;
        let x_2025 : f32 = u_xlat18.y;
        let x_2027 : f32 = u_xlat7.x;
        let x_2029 : f32 = u_xlat83;
        u_xlat83 = ((x_2025 * x_2027) + x_2029);
        let x_2032 : vec2<f32> = u_xlat64;
        let x_2034 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec19;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2041.xy, x_2041.z);
        u_xlat7.x = x_2043;
        let x_2046 : f32 = u_xlat18.z;
        let x_2048 : f32 = u_xlat7.x;
        let x_2050 : f32 = u_xlat83;
        u_xlat83 = ((x_2046 * x_2048) + x_2050);
        let x_2053 : vec4<f32> = u_xlat14;
        let x_2054 : vec2<f32> = vec2<f32>(x_2053.z, x_2053.w);
        let x_2056 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2054.x, x_2054.y, x_2056);
        let x_2063 : vec3<f32> = txVec20;
        let x_2065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2063.xy, x_2063.z);
        u_xlat7.x = x_2065;
        let x_2068 : f32 = u_xlat18.w;
        let x_2070 : f32 = u_xlat7.x;
        let x_2072 : f32 = u_xlat83;
        u_xlat83 = ((x_2068 * x_2070) + x_2072);
        let x_2075 : vec4<f32> = u_xlat15;
        let x_2076 : vec2<f32> = vec2<f32>(x_2075.x, x_2075.y);
        let x_2078 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2076.x, x_2076.y, x_2078);
        let x_2085 : vec3<f32> = txVec21;
        let x_2087 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2085.xy, x_2085.z);
        u_xlat7.x = x_2087;
        let x_2090 : f32 = u_xlat19.x;
        let x_2092 : f32 = u_xlat7.x;
        let x_2094 : f32 = u_xlat83;
        u_xlat83 = ((x_2090 * x_2092) + x_2094);
        let x_2097 : vec4<f32> = u_xlat15;
        let x_2098 : vec2<f32> = vec2<f32>(x_2097.z, x_2097.w);
        let x_2100 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
        let x_2107 : vec3<f32> = txVec22;
        let x_2109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2107.xy, x_2107.z);
        u_xlat7.x = x_2109;
        let x_2112 : f32 = u_xlat19.y;
        let x_2114 : f32 = u_xlat7.x;
        let x_2116 : f32 = u_xlat83;
        u_xlat83 = ((x_2112 * x_2114) + x_2116);
        let x_2119 : vec2<f32> = u_xlat33;
        let x_2121 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2119.x, x_2119.y, x_2121);
        let x_2128 : vec3<f32> = txVec23;
        let x_2130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2128.xy, x_2128.z);
        u_xlat7.x = x_2130;
        let x_2133 : f32 = u_xlat19.z;
        let x_2135 : f32 = u_xlat7.x;
        let x_2137 : f32 = u_xlat83;
        u_xlat83 = ((x_2133 * x_2135) + x_2137);
        let x_2140 : vec4<f32> = u_xlat16;
        let x_2141 : vec2<f32> = vec2<f32>(x_2140.x, x_2140.y);
        let x_2143 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2141.x, x_2141.y, x_2143);
        let x_2150 : vec3<f32> = txVec24;
        let x_2152 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2150.xy, x_2150.z);
        u_xlat7.x = x_2152;
        let x_2155 : f32 = u_xlat19.w;
        let x_2157 : f32 = u_xlat7.x;
        let x_2159 : f32 = u_xlat83;
        u_xlat83 = ((x_2155 * x_2157) + x_2159);
        let x_2162 : vec4<f32> = u_xlat10;
        let x_2163 : vec2<f32> = vec2<f32>(x_2162.x, x_2162.y);
        let x_2165 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2163.x, x_2163.y, x_2165);
        let x_2172 : vec3<f32> = txVec25;
        let x_2174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2172.xy, x_2172.z);
        u_xlat7.x = x_2174;
        let x_2177 : f32 = u_xlat6.x;
        let x_2179 : f32 = u_xlat7.x;
        let x_2181 : f32 = u_xlat83;
        u_xlat83 = ((x_2177 * x_2179) + x_2181);
        let x_2184 : vec4<f32> = u_xlat10;
        let x_2185 : vec2<f32> = vec2<f32>(x_2184.z, x_2184.w);
        let x_2187 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2185.x, x_2185.y, x_2187);
        let x_2194 : vec3<f32> = txVec26;
        let x_2196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2194.xy, x_2194.z);
        u_xlat6.x = x_2196;
        let x_2199 : f32 = u_xlat6.y;
        let x_2201 : f32 = u_xlat6.x;
        let x_2203 : f32 = u_xlat83;
        u_xlat83 = ((x_2199 * x_2201) + x_2203);
        let x_2206 : vec2<f32> = u_xlat61;
        let x_2208 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2206.x, x_2206.y, x_2208);
        let x_2215 : vec3<f32> = txVec27;
        let x_2217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2215.xy, x_2215.z);
        u_xlat6.x = x_2217;
        let x_2220 : f32 = u_xlat6.z;
        let x_2222 : f32 = u_xlat6.x;
        let x_2224 : f32 = u_xlat83;
        u_xlat83 = ((x_2220 * x_2222) + x_2224);
        let x_2227 : vec3<f32> = u_xlat31;
        let x_2228 : vec2<f32> = vec2<f32>(x_2227.x, x_2227.y);
        let x_2230 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2228.x, x_2228.y, x_2230);
        let x_2237 : vec3<f32> = txVec28;
        let x_2239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2237.xy, x_2237.z);
        u_xlat31.x = x_2239;
        let x_2242 : f32 = u_xlat6.w;
        let x_2244 : f32 = u_xlat31.x;
        let x_2246 : f32 = u_xlat83;
        u_xlat5.x = ((x_2242 * x_2244) + x_2246);
      }
    }
  } else {
    let x_2251 : vec4<f32> = vs_TEXCOORD8;
    let x_2252 : vec2<f32> = vec2<f32>(x_2251.x, x_2251.y);
    let x_2254 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2252.x, x_2252.y, x_2254);
    let x_2261 : vec3<f32> = txVec29;
    let x_2263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2261.xy, x_2261.z);
    u_xlat5.x = x_2263;
  }
  let x_2266 : f32 = x_990.x_MainLightShadowParams.x;
  u_xlat31.x = (-(x_2266) + 1.0f);
  let x_2271 : f32 = u_xlat5.x;
  let x_2273 : f32 = x_990.x_MainLightShadowParams.x;
  let x_2276 : f32 = u_xlat31.x;
  u_xlat5.x = ((x_2271 * x_2273) + x_2276);
  let x_2280 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (0.0f >= x_2280);
  let x_2286 : f32 = vs_TEXCOORD8.z;
  u_xlatb57.x = (x_2286 >= 1.0f);
  let x_2290 : bool = u_xlatb57.x;
  let x_2291 : bool = u_xlatb31;
  u_xlatb31 = (x_2290 | x_2291);
  let x_2293 : bool = u_xlatb31;
  if (x_2293) {
    x_2295 = 1.0f;
  } else {
    let x_2300 : f32 = u_xlat5.x;
    x_2295 = x_2300;
  }
  let x_2301 : f32 = x_2295;
  u_xlat5.x = x_2301;
  let x_2303 : vec3<f32> = vs_TEXCOORD7;
  let x_2306 : vec3<f32> = x_113.x_WorldSpaceCameraPos;
  u_xlat31 = (x_2303 + -(x_2306));
  let x_2309 : vec3<f32> = u_xlat31;
  let x_2310 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_2309, x_2310);
  let x_2314 : f32 = u_xlat31.x;
  let x_2316 : f32 = x_990.x_MainLightShadowParams.z;
  let x_2319 : f32 = x_990.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_2314 * x_2316) + x_2319);
  let x_2323 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2323, 0.0f, 1.0f);
  let x_2327 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_2327) + 1.0f);
  let x_2331 : f32 = u_xlat57.x;
  let x_2332 : f32 = u_xlat83;
  let x_2335 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2331 * x_2332) + x_2335);
  let x_2345 : f32 = x_2343.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_2345 == -1.0f));
  let x_2349 : bool = u_xlatb57.x;
  if (x_2349) {
    let x_2352 : vec3<f32> = vs_TEXCOORD7;
    let x_2355 : vec4<f32> = x_2343.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_2352.y, x_2352.y) * vec2<f32>(x_2355.x, x_2355.y));
    let x_2359 : vec4<f32> = x_2343.x_MainLightWorldToLight[0i];
    let x_2361 : vec3<f32> = vs_TEXCOORD7;
    let x_2364 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2359.x, x_2359.y) * vec2<f32>(x_2361.x, x_2361.x)) + x_2364);
    let x_2367 : vec4<f32> = x_2343.x_MainLightWorldToLight[2i];
    let x_2369 : vec3<f32> = vs_TEXCOORD7;
    let x_2372 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_2367.x, x_2367.y) * vec2<f32>(x_2369.z, x_2369.z)) + x_2372);
    let x_2374 : vec2<f32> = u_xlat57;
    let x_2376 : vec4<f32> = x_2343.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_2374 + vec2<f32>(x_2376.x, x_2376.y));
    let x_2379 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_2379 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2387 : vec2<f32> = u_xlat57;
    let x_2389 : f32 = x_113.x_GlobalMipBias.x;
    let x_2390 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2387, x_2389);
    u_xlat6 = x_2390;
    let x_2392 : f32 = x_2343.x_MainLightCookieTextureFormat;
    let x_2394 : f32 = x_2343.x_MainLightCookieTextureFormat;
    let x_2396 : f32 = x_2343.x_MainLightCookieTextureFormat;
    let x_2398 : f32 = x_2343.x_MainLightCookieTextureFormat;
    let x_2399 : vec4<f32> = vec4<f32>(x_2392, x_2394, x_2396, x_2398);
    let x_2406 : vec4<bool> = (vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2399.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_2406.x, x_2406.y);
    let x_2409 : bool = u_xlatb57.y;
    if (x_2409) {
      let x_2414 : f32 = u_xlat6.w;
      x_2410 = x_2414;
    } else {
      let x_2417 : f32 = u_xlat6.x;
      x_2410 = x_2417;
    }
    let x_2418 : f32 = x_2410;
    u_xlat83 = x_2418;
    let x_2420 : bool = u_xlatb57.x;
    if (x_2420) {
      let x_2424 : vec4<f32> = u_xlat6;
      x_2421 = vec3<f32>(x_2424.x, x_2424.y, x_2424.z);
    } else {
      let x_2427 : f32 = u_xlat83;
      x_2421 = vec3<f32>(x_2427, x_2427, x_2427);
    }
    let x_2429 : vec3<f32> = x_2421;
    let x_2430 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2436 : vec4<f32> = u_xlat6;
  let x_2439 : vec4<f32> = x_113.x_MainLightColor;
  let x_2441 : vec3<f32> = (vec3<f32>(x_2436.x, x_2436.y, x_2436.z) * vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
  let x_2442 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
  let x_2445 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2445;
  let x_2448 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2448;
  let x_2451 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2451;
  let x_2453 : vec4<f32> = u_xlat7;
  let x_2456 : vec4<f32> = u_xlat1;
  u_xlat57.x = dot(-(vec3<f32>(x_2453.x, x_2453.y, x_2453.z)), vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
  let x_2461 : f32 = u_xlat57.x;
  let x_2463 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2461 + x_2463);
  let x_2466 : vec4<f32> = u_xlat1;
  let x_2468 : vec2<f32> = u_xlat57;
  let x_2472 : vec4<f32> = u_xlat7;
  let x_2475 : vec3<f32> = ((vec3<f32>(x_2466.x, x_2466.y, x_2466.z) * -(vec3<f32>(x_2468.x, x_2468.x, x_2468.x))) + -(vec3<f32>(x_2472.x, x_2472.y, x_2472.z)));
  let x_2476 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
  let x_2478 : vec4<f32> = u_xlat1;
  let x_2480 : vec4<f32> = u_xlat7;
  u_xlat57.x = dot(vec3<f32>(x_2478.x, x_2478.y, x_2478.z), vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
  let x_2485 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_2485, 0.0f, 1.0f);
  let x_2489 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_2489) + 1.0f);
  let x_2494 : f32 = u_xlat57.x;
  let x_2496 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2494 * x_2496);
  let x_2500 : f32 = u_xlat57.x;
  let x_2502 : f32 = u_xlat57.x;
  u_xlat57.x = (x_2500 * x_2502);
  let x_2506 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2506) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2513 : f32 = u_xlat0.x;
  let x_2514 : f32 = u_xlat83;
  u_xlat0.x = (x_2513 * x_2514);
  let x_2518 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2518 * 6.0f);
  let x_2530 : vec4<f32> = u_xlat8;
  let x_2533 : f32 = u_xlat0.x;
  let x_2534 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2530.x, x_2530.y, x_2530.z), x_2533);
  u_xlat8 = x_2534;
  let x_2536 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2536 + -1.0f);
  let x_2544 : f32 = x_2542.unity_SpecCube0_HDR.w;
  let x_2546 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2544 * x_2546) + 1.0f);
  let x_2551 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2551, 0.0f);
  let x_2555 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2555);
  let x_2559 : f32 = u_xlat0.x;
  let x_2561 : f32 = x_2542.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2559 * x_2561);
  let x_2565 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2565);
  let x_2569 : f32 = u_xlat0.x;
  let x_2571 : f32 = x_2542.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2569 * x_2571);
  let x_2574 : vec4<f32> = u_xlat8;
  let x_2576 : vec3<f32> = u_xlat0;
  let x_2578 : vec3<f32> = (vec3<f32>(x_2574.x, x_2574.y, x_2574.z) * vec3<f32>(x_2576.x, x_2576.x, x_2576.x));
  let x_2579 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);
  let x_2581 : f32 = u_xlat52;
  let x_2583 : f32 = u_xlat52;
  let x_2587 : vec2<f32> = ((vec2<f32>(x_2581, x_2581) * vec2<f32>(x_2583, x_2583)) + vec2<f32>(-1.0f, 1.0f));
  let x_2588 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2587.x, x_2588.y, x_2587.y);
  let x_2591 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2591);
  let x_2593 : vec4<f32> = u_xlat4;
  let x_2596 : vec4<f32> = u_xlat3;
  let x_2598 : vec3<f32> = (-(vec3<f32>(x_2593.x, x_2593.y, x_2593.z)) + vec3<f32>(x_2596.x, x_2596.x, x_2596.x));
  let x_2599 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
  let x_2601 : vec2<f32> = u_xlat57;
  let x_2603 : vec4<f32> = u_xlat9;
  let x_2606 : vec4<f32> = u_xlat4;
  let x_2608 : vec3<f32> = ((vec3<f32>(x_2601.x, x_2601.x, x_2601.x) * vec3<f32>(x_2603.x, x_2603.y, x_2603.z)) + vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
  let x_2609 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2608.x, x_2608.y, x_2608.z, x_2609.w);
  let x_2611 : f32 = u_xlat52;
  let x_2613 : vec4<f32> = u_xlat9;
  let x_2615 : vec3<f32> = (vec3<f32>(x_2611, x_2611, x_2611) * vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
  let x_2616 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
  let x_2618 : vec4<f32> = u_xlat8;
  let x_2620 : vec4<f32> = u_xlat9;
  let x_2622 : vec3<f32> = (vec3<f32>(x_2618.x, x_2618.y, x_2618.z) * vec3<f32>(x_2620.x, x_2620.y, x_2620.z));
  let x_2623 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2622.x, x_2622.y, x_2622.z, x_2623.w);
  let x_2625 : vec4<f32> = u_xlat2;
  let x_2627 : vec3<f32> = u_xlat29;
  let x_2629 : vec4<f32> = u_xlat8;
  let x_2631 : vec3<f32> = ((vec3<f32>(x_2625.x, x_2625.y, x_2625.z) * x_2627) + vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
  let x_2632 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
  let x_2635 : f32 = u_xlat5.x;
  let x_2637 : f32 = x_2542.unity_LightData.z;
  u_xlat52 = (x_2635 * x_2637);
  let x_2639 : vec4<f32> = u_xlat1;
  let x_2642 : vec4<f32> = x_113.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2639.x, x_2639.y, x_2639.z), vec3<f32>(x_2642.x, x_2642.y, x_2642.z));
  let x_2647 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2647, 0.0f, 1.0f);
  let x_2650 : f32 = u_xlat52;
  let x_2652 : f32 = u_xlat3.x;
  u_xlat52 = (x_2650 * x_2652);
  let x_2654 : f32 = u_xlat52;
  let x_2656 : vec4<f32> = u_xlat6;
  let x_2658 : vec3<f32> = (vec3<f32>(x_2654, x_2654, x_2654) * vec3<f32>(x_2656.x, x_2656.y, x_2656.z));
  let x_2659 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2658.x, x_2659.y, x_2658.y, x_2658.z);
  let x_2661 : vec4<f32> = u_xlat7;
  let x_2664 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2666 : vec3<f32> = (vec3<f32>(x_2661.x, x_2661.y, x_2661.z) + vec3<f32>(x_2664.x, x_2664.y, x_2664.z));
  let x_2667 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2667.w);
  let x_2669 : vec4<f32> = u_xlat6;
  let x_2671 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2669.x, x_2669.y, x_2669.z), vec3<f32>(x_2671.x, x_2671.y, x_2671.z));
  let x_2674 : f32 = u_xlat52;
  u_xlat52 = max(x_2674, 1.17549435e-38f);
  let x_2677 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2677);
  let x_2679 : f32 = u_xlat52;
  let x_2681 : vec4<f32> = u_xlat6;
  let x_2683 : vec3<f32> = (vec3<f32>(x_2679, x_2679, x_2679) * vec3<f32>(x_2681.x, x_2681.y, x_2681.z));
  let x_2684 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
  let x_2686 : vec4<f32> = u_xlat1;
  let x_2688 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2686.x, x_2686.y, x_2686.z), vec3<f32>(x_2688.x, x_2688.y, x_2688.z));
  let x_2691 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2691, 0.0f, 1.0f);
  let x_2694 : vec4<f32> = x_113.x_MainLightPosition;
  let x_2696 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_2694.x, x_2694.y, x_2694.z), vec3<f32>(x_2696.x, x_2696.y, x_2696.z));
  let x_2701 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2701, 0.0f, 1.0f);
  let x_2704 : f32 = u_xlat52;
  let x_2705 : f32 = u_xlat52;
  u_xlat52 = (x_2704 * x_2705);
  let x_2707 : f32 = u_xlat52;
  let x_2709 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2707 * x_2709) + 1.00001001358032226562f);
  let x_2714 : f32 = u_xlat3.x;
  let x_2716 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2714 * x_2716);
  let x_2719 : f32 = u_xlat52;
  let x_2720 : f32 = u_xlat52;
  u_xlat52 = (x_2719 * x_2720);
  let x_2723 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2723, 0.10000000149011611938f);
  let x_2727 : f32 = u_xlat52;
  let x_2729 : f32 = u_xlat3.x;
  u_xlat52 = (x_2727 * x_2729);
  let x_2731 : f32 = u_xlat82;
  let x_2732 : f32 = u_xlat52;
  u_xlat52 = (x_2731 * x_2732);
  let x_2734 : f32 = u_xlat80;
  let x_2735 : f32 = u_xlat52;
  u_xlat52 = (x_2734 / x_2735);
  let x_2737 : vec4<f32> = u_xlat4;
  let x_2739 : f32 = u_xlat52;
  let x_2742 : vec3<f32> = u_xlat29;
  let x_2743 : vec3<f32> = ((vec3<f32>(x_2737.x, x_2737.y, x_2737.z) * vec3<f32>(x_2739, x_2739, x_2739)) + x_2742);
  let x_2744 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
  let x_2746 : vec4<f32> = u_xlat5;
  let x_2748 : vec4<f32> = u_xlat6;
  let x_2750 : vec3<f32> = (vec3<f32>(x_2746.x, x_2746.z, x_2746.w) * vec3<f32>(x_2748.x, x_2748.y, x_2748.z));
  let x_2751 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2750.x, x_2751.y, x_2750.y, x_2750.z);
  let x_2754 : f32 = x_113.x_AdditionalLightsCount.x;
  let x_2756 : f32 = x_2542.unity_LightData.y;
  u_xlat52 = min(x_2754, x_2756);
  let x_2760 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2760));
  let x_2764 : f32 = u_xlat31.x;
  let x_2766 : f32 = x_990.x_AdditionalShadowFadeParams.x;
  let x_2769 : f32 = x_990.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2764 * x_2766) + x_2769);
  let x_2773 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2773, 0.0f, 1.0f);
  let x_2778 : f32 = x_2343.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2780 : f32 = x_2343.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2782 : f32 = x_2343.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2784 : f32 = x_2343.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2785 : vec4<f32> = vec4<f32>(x_2778, x_2780, x_2782, x_2784);
  let x_2792 : vec4<bool> = (vec4<f32>(x_2785.x, x_2785.y, x_2785.z, x_2785.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2792.x, x_2792.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2804 : u32 = u_xlatu_loop_1;
    let x_2805 : u32 = u_xlatu52;
    if ((x_2804 < x_2805)) {
    } else {
      break;
    }
    let x_2808 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_2808 >> 2u);
    let x_2812 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2812 & 3u));
    let x_2815 : u32 = u_xlatu58;
    let x_2818 : vec4<f32> = x_2542.unity_LightIndices[bitcast<i32>(x_2815)];
    let x_2828 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2833 : vec4<u32> = indexable[x_2828];
    u_xlat58.x = dot(x_2818, bitcast<vec4<f32>>(x_2833));
    let x_2839 : f32 = u_xlat58.x;
    u_xlati58 = i32(x_2839);
    let x_2841 : vec3<f32> = vs_TEXCOORD7;
    let x_2852 : i32 = u_xlati58;
    let x_2854 : vec4<f32> = x_2851.x_AdditionalLightsPosition[x_2852];
    let x_2857 : i32 = u_xlati58;
    let x_2859 : vec4<f32> = x_2851.x_AdditionalLightsPosition[x_2857];
    let x_2861 : vec3<f32> = ((-(x_2841) * vec3<f32>(x_2854.w, x_2854.w, x_2854.w)) + vec3<f32>(x_2859.x, x_2859.y, x_2859.z));
    let x_2862 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2861.x, x_2861.y, x_2861.z, x_2862.w);
    let x_2865 : vec4<f32> = u_xlat9;
    let x_2867 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2865.x, x_2865.y, x_2865.z), vec3<f32>(x_2867.x, x_2867.y, x_2867.z));
    let x_2870 : f32 = u_xlat84;
    u_xlat84 = max(x_2870, 0.00006103515625f);
    let x_2873 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2873);
    let x_2875 : f32 = u_xlat85;
    let x_2877 : vec4<f32> = u_xlat9;
    let x_2879 : vec3<f32> = (vec3<f32>(x_2875, x_2875, x_2875) * vec3<f32>(x_2877.x, x_2877.y, x_2877.z));
    let x_2880 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
    let x_2883 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_2883);
    let x_2885 : f32 = u_xlat84;
    let x_2886 : i32 = u_xlati58;
    let x_2888 : f32 = x_2851.x_AdditionalLightsAttenuation[x_2886].x;
    u_xlat84 = (x_2885 * x_2888);
    let x_2890 : f32 = u_xlat84;
    let x_2892 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2890) * x_2892) + 1.0f);
    let x_2895 : f32 = u_xlat84;
    u_xlat84 = max(x_2895, 0.0f);
    let x_2897 : f32 = u_xlat84;
    let x_2898 : f32 = u_xlat84;
    u_xlat84 = (x_2897 * x_2898);
    let x_2900 : f32 = u_xlat84;
    let x_2901 : f32 = u_xlat86;
    u_xlat84 = (x_2900 * x_2901);
    let x_2903 : i32 = u_xlati58;
    let x_2905 : vec4<f32> = x_2851.x_AdditionalLightsSpotDir[x_2903];
    let x_2907 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2905.x, x_2905.y, x_2905.z), vec3<f32>(x_2907.x, x_2907.y, x_2907.z));
    let x_2910 : f32 = u_xlat86;
    let x_2911 : i32 = u_xlati58;
    let x_2913 : f32 = x_2851.x_AdditionalLightsAttenuation[x_2911].z;
    let x_2915 : i32 = u_xlati58;
    let x_2917 : f32 = x_2851.x_AdditionalLightsAttenuation[x_2915].w;
    u_xlat86 = ((x_2910 * x_2913) + x_2917);
    let x_2919 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2919, 0.0f, 1.0f);
    let x_2921 : f32 = u_xlat86;
    let x_2922 : f32 = u_xlat86;
    u_xlat86 = (x_2921 * x_2922);
    let x_2924 : f32 = u_xlat84;
    let x_2925 : f32 = u_xlat86;
    u_xlat84 = (x_2924 * x_2925);
    let x_2928 : i32 = u_xlati58;
    let x_2930 : f32 = x_990.x_AdditionalShadowParams[x_2928].w;
    u_xlati86 = i32(x_2930);
    let x_2933 : i32 = u_xlati86;
    u_xlatb87 = (x_2933 >= 0i);
    let x_2935 : bool = u_xlatb87;
    if (x_2935) {
      let x_2939 : i32 = u_xlati58;
      let x_2941 : f32 = x_990.x_AdditionalShadowParams[x_2939].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2941, x_2941, x_2941, x_2941))));
      let x_2945 : bool = u_xlatb87;
      if (x_2945) {
        let x_2950 : vec4<f32> = u_xlat10;
        let x_2953 : vec4<f32> = u_xlat10;
        let x_2956 : vec4<bool> = (abs(vec4<f32>(x_2950.z, x_2950.z, x_2950.y, x_2950.z)) >= abs(vec4<f32>(x_2953.x, x_2953.y, x_2953.x, x_2953.x)));
        let x_2958 : vec3<bool> = vec3<bool>(x_2956.x, x_2956.y, x_2956.z);
        let x_2959 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2958.x, x_2958.y, x_2958.z, x_2959.w);
        let x_2962 : bool = u_xlatb11.y;
        let x_2964 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2962 & x_2964);
        let x_2966 : vec4<f32> = u_xlat10;
        let x_2969 : vec4<bool> = (-(vec4<f32>(x_2966.z, x_2966.y, x_2966.z, x_2966.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2970 : vec3<bool> = vec3<bool>(x_2969.x, x_2969.y, x_2969.w);
        let x_2971 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2970.x, x_2970.y, x_2971.z, x_2970.z);
        let x_2974 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2974);
        let x_2979 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2979);
        let x_2985 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2985);
        let x_2988 : bool = u_xlatb11.z;
        if (x_2988) {
          let x_2993 : f32 = u_xlat11.y;
          x_2989 = x_2993;
        } else {
          let x_2995 : f32 = u_xlat88;
          x_2989 = x_2995;
        }
        let x_2996 : f32 = x_2989;
        u_xlat88 = x_2996;
        let x_2998 : bool = u_xlatb87;
        if (x_2998) {
          let x_3003 : f32 = u_xlat11.x;
          x_2999 = x_3003;
        } else {
          let x_3005 : f32 = u_xlat88;
          x_2999 = x_3005;
        }
        let x_3006 : f32 = x_2999;
        u_xlat87 = x_3006;
        let x_3007 : i32 = u_xlati58;
        let x_3009 : f32 = x_990.x_AdditionalShadowParams[x_3007].w;
        u_xlat88 = trunc(x_3009);
        let x_3011 : f32 = u_xlat87;
        let x_3012 : f32 = u_xlat88;
        u_xlat87 = (x_3011 + x_3012);
        let x_3014 : f32 = u_xlat87;
        u_xlati86 = i32(x_3014);
      }
      let x_3016 : i32 = u_xlati86;
      u_xlati86 = (x_3016 << bitcast<u32>(2i));
      let x_3018 : vec3<f32> = vs_TEXCOORD7;
      let x_3020 : i32 = u_xlati86;
      let x_3023 : i32 = u_xlati86;
      let x_3027 : vec4<f32> = x_990.x_AdditionalLightsWorldToShadow[((x_3020 + 1i) / 4i)][((x_3023 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3018.y, x_3018.y, x_3018.y, x_3018.y) * x_3027);
      let x_3029 : i32 = u_xlati86;
      let x_3031 : i32 = u_xlati86;
      let x_3034 : vec4<f32> = x_990.x_AdditionalLightsWorldToShadow[(x_3029 / 4i)][(x_3031 % 4i)];
      let x_3035 : vec3<f32> = vs_TEXCOORD7;
      let x_3038 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3034 * vec4<f32>(x_3035.x, x_3035.x, x_3035.x, x_3035.x)) + x_3038);
      let x_3040 : i32 = u_xlati86;
      let x_3043 : i32 = u_xlati86;
      let x_3047 : vec4<f32> = x_990.x_AdditionalLightsWorldToShadow[((x_3040 + 2i) / 4i)][((x_3043 + 2i) % 4i)];
      let x_3048 : vec3<f32> = vs_TEXCOORD7;
      let x_3051 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3047 * vec4<f32>(x_3048.z, x_3048.z, x_3048.z, x_3048.z)) + x_3051);
      let x_3053 : vec4<f32> = u_xlat11;
      let x_3054 : i32 = u_xlati86;
      let x_3057 : i32 = u_xlati86;
      let x_3061 : vec4<f32> = x_990.x_AdditionalLightsWorldToShadow[((x_3054 + 3i) / 4i)][((x_3057 + 3i) % 4i)];
      u_xlat11 = (x_3053 + x_3061);
      let x_3063 : vec4<f32> = u_xlat11;
      let x_3065 : vec4<f32> = u_xlat11;
      let x_3067 : vec3<f32> = (vec3<f32>(x_3063.x, x_3063.y, x_3063.z) / vec3<f32>(x_3065.w, x_3065.w, x_3065.w));
      let x_3068 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3067.x, x_3067.y, x_3067.z, x_3068.w);
      let x_3071 : i32 = u_xlati58;
      let x_3073 : f32 = x_990.x_AdditionalShadowParams[x_3071].y;
      u_xlatb86 = (0.0f < x_3073);
      let x_3075 : bool = u_xlatb86;
      if (x_3075) {
        let x_3078 : i32 = u_xlati58;
        let x_3080 : f32 = x_990.x_AdditionalShadowParams[x_3078].y;
        u_xlatb86 = (1.0f == x_3080);
        let x_3082 : bool = u_xlatb86;
        if (x_3082) {
          let x_3085 : vec4<f32> = u_xlat11;
          let x_3088 : vec4<f32> = x_990.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3085.x, x_3085.y, x_3085.x, x_3085.y) + x_3088);
          let x_3091 : vec4<f32> = u_xlat12;
          let x_3092 : vec2<f32> = vec2<f32>(x_3091.x, x_3091.y);
          let x_3094 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3092.x, x_3092.y, x_3094);
          let x_3102 : vec3<f32> = txVec30;
          let x_3104 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3102.xy, x_3102.z);
          u_xlat13.x = x_3104;
          let x_3107 : vec4<f32> = u_xlat12;
          let x_3108 : vec2<f32> = vec2<f32>(x_3107.z, x_3107.w);
          let x_3110 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3108.x, x_3108.y, x_3110);
          let x_3117 : vec3<f32> = txVec31;
          let x_3119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3117.xy, x_3117.z);
          u_xlat13.y = x_3119;
          let x_3121 : vec4<f32> = u_xlat11;
          let x_3124 : vec4<f32> = x_990.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3121.x, x_3121.y, x_3121.x, x_3121.y) + x_3124);
          let x_3127 : vec4<f32> = u_xlat12;
          let x_3128 : vec2<f32> = vec2<f32>(x_3127.x, x_3127.y);
          let x_3130 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3128.x, x_3128.y, x_3130);
          let x_3137 : vec3<f32> = txVec32;
          let x_3139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3137.xy, x_3137.z);
          u_xlat13.z = x_3139;
          let x_3142 : vec4<f32> = u_xlat12;
          let x_3143 : vec2<f32> = vec2<f32>(x_3142.z, x_3142.w);
          let x_3145 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
          let x_3152 : vec3<f32> = txVec33;
          let x_3154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
          u_xlat13.w = x_3154;
          let x_3156 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3156, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3159 : i32 = u_xlati58;
          let x_3161 : f32 = x_990.x_AdditionalShadowParams[x_3159].y;
          u_xlatb87 = (2.0f == x_3161);
          let x_3163 : bool = u_xlatb87;
          if (x_3163) {
            let x_3166 : vec4<f32> = u_xlat11;
            let x_3169 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3172 : vec2<f32> = ((vec2<f32>(x_3166.x, x_3166.y) * vec2<f32>(x_3169.z, x_3169.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3173 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3172.x, x_3172.y, x_3173.z, x_3173.w);
            let x_3175 : vec4<f32> = u_xlat12;
            let x_3177 : vec2<f32> = floor(vec2<f32>(x_3175.x, x_3175.y));
            let x_3178 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3177.x, x_3177.y, x_3178.z, x_3178.w);
            let x_3180 : vec4<f32> = u_xlat11;
            let x_3183 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3186 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3180.x, x_3180.y) * vec2<f32>(x_3183.z, x_3183.w)) + -(vec2<f32>(x_3186.x, x_3186.y)));
            let x_3190 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3190.x, x_3190.x, x_3190.y, x_3190.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3193 : vec4<f32> = u_xlat13;
            let x_3195 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3193.x, x_3193.x, x_3193.z, x_3193.z) * vec4<f32>(x_3195.x, x_3195.x, x_3195.z, x_3195.z));
            let x_3198 : vec4<f32> = u_xlat14;
            let x_3200 : vec2<f32> = (vec2<f32>(x_3198.y, x_3198.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3201 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3200.x, x_3201.y, x_3200.y, x_3201.w);
            let x_3203 : vec4<f32> = u_xlat14;
            let x_3206 : vec2<f32> = u_xlat64;
            let x_3208 : vec2<f32> = ((vec2<f32>(x_3203.x, x_3203.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3206));
            let x_3209 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3208.x, x_3208.y, x_3209.z, x_3209.w);
            let x_3212 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3212) + vec2<f32>(1.0f, 1.0f));
            let x_3215 : vec2<f32> = u_xlat64;
            let x_3216 : vec2<f32> = min(x_3215, vec2<f32>(0.0f, 0.0f));
            let x_3217 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3216.x, x_3216.y, x_3217.z, x_3217.w);
            let x_3219 : vec4<f32> = u_xlat15;
            let x_3222 : vec4<f32> = u_xlat15;
            let x_3225 : vec2<f32> = u_xlat66;
            let x_3226 : vec2<f32> = ((-(vec2<f32>(x_3219.x, x_3219.y)) * vec2<f32>(x_3222.x, x_3222.y)) + x_3225);
            let x_3227 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3226.x, x_3226.y, x_3227.z, x_3227.w);
            let x_3229 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3229, vec2<f32>(0.0f, 0.0f));
            let x_3231 : vec2<f32> = u_xlat64;
            let x_3233 : vec2<f32> = u_xlat64;
            let x_3235 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3231) * x_3233) + vec2<f32>(x_3235.y, x_3235.w));
            let x_3238 : vec4<f32> = u_xlat15;
            let x_3240 : vec2<f32> = (vec2<f32>(x_3238.x, x_3238.y) + vec2<f32>(1.0f, 1.0f));
            let x_3241 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3240.x, x_3240.y, x_3241.z, x_3241.w);
            let x_3243 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3243 + vec2<f32>(1.0f, 1.0f));
            let x_3245 : vec4<f32> = u_xlat14;
            let x_3247 : vec2<f32> = (vec2<f32>(x_3245.x, x_3245.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3248 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3247.x, x_3247.y, x_3248.z, x_3248.w);
            let x_3250 : vec2<f32> = u_xlat66;
            let x_3251 : vec2<f32> = (x_3250 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3252 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3251.x, x_3251.y, x_3252.z, x_3252.w);
            let x_3254 : vec4<f32> = u_xlat15;
            let x_3256 : vec2<f32> = (vec2<f32>(x_3254.x, x_3254.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3257 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3256.x, x_3256.y, x_3257.z, x_3257.w);
            let x_3259 : vec2<f32> = u_xlat64;
            let x_3260 : vec2<f32> = (x_3259 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3261 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3260.x, x_3260.y, x_3261.z, x_3261.w);
            let x_3263 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3263.y, x_3263.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3267 : f32 = u_xlat15.x;
            u_xlat16.z = x_3267;
            let x_3270 : f32 = u_xlat64.x;
            u_xlat16.w = x_3270;
            let x_3273 : f32 = u_xlat17.x;
            u_xlat14.z = x_3273;
            let x_3276 : f32 = u_xlat13.x;
            u_xlat14.w = x_3276;
            let x_3278 : vec4<f32> = u_xlat14;
            let x_3280 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3278.z, x_3278.w, x_3278.x, x_3278.z) + vec4<f32>(x_3280.z, x_3280.w, x_3280.x, x_3280.z));
            let x_3284 : f32 = u_xlat16.y;
            u_xlat15.z = x_3284;
            let x_3287 : f32 = u_xlat64.y;
            u_xlat15.w = x_3287;
            let x_3290 : f32 = u_xlat14.y;
            u_xlat17.z = x_3290;
            let x_3293 : f32 = u_xlat13.z;
            u_xlat17.w = x_3293;
            let x_3295 : vec4<f32> = u_xlat15;
            let x_3297 : vec4<f32> = u_xlat17;
            let x_3299 : vec3<f32> = (vec3<f32>(x_3295.z, x_3295.y, x_3295.w) + vec3<f32>(x_3297.z, x_3297.y, x_3297.w));
            let x_3300 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3299.x, x_3299.y, x_3299.z, x_3300.w);
            let x_3302 : vec4<f32> = u_xlat14;
            let x_3304 : vec4<f32> = u_xlat18;
            let x_3306 : vec3<f32> = (vec3<f32>(x_3302.x, x_3302.z, x_3302.w) / vec3<f32>(x_3304.z, x_3304.w, x_3304.y));
            let x_3307 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3306.x, x_3306.y, x_3306.z, x_3307.w);
            let x_3309 : vec4<f32> = u_xlat14;
            let x_3311 : vec3<f32> = (vec3<f32>(x_3309.x, x_3309.y, x_3309.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3312 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3311.x, x_3311.y, x_3311.z, x_3312.w);
            let x_3314 : vec4<f32> = u_xlat17;
            let x_3316 : vec4<f32> = u_xlat13;
            let x_3318 : vec3<f32> = (vec3<f32>(x_3314.z, x_3314.y, x_3314.w) / vec3<f32>(x_3316.x, x_3316.y, x_3316.z));
            let x_3319 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3318.x, x_3318.y, x_3318.z, x_3319.w);
            let x_3321 : vec4<f32> = u_xlat15;
            let x_3323 : vec3<f32> = (vec3<f32>(x_3321.x, x_3321.y, x_3321.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3324 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3323.x, x_3323.y, x_3323.z, x_3324.w);
            let x_3326 : vec4<f32> = u_xlat14;
            let x_3329 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3331 : vec3<f32> = (vec3<f32>(x_3326.y, x_3326.x, x_3326.z) * vec3<f32>(x_3329.x, x_3329.x, x_3329.x));
            let x_3332 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3331.x, x_3331.y, x_3331.z, x_3332.w);
            let x_3334 : vec4<f32> = u_xlat15;
            let x_3337 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3339 : vec3<f32> = (vec3<f32>(x_3334.x, x_3334.y, x_3334.z) * vec3<f32>(x_3337.y, x_3337.y, x_3337.y));
            let x_3340 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3339.x, x_3339.y, x_3339.z, x_3340.w);
            let x_3343 : f32 = u_xlat15.x;
            u_xlat14.w = x_3343;
            let x_3345 : vec4<f32> = u_xlat12;
            let x_3348 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3351 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3345.x, x_3345.y, x_3345.x, x_3345.y) * vec4<f32>(x_3348.x, x_3348.y, x_3348.x, x_3348.y)) + vec4<f32>(x_3351.y, x_3351.w, x_3351.x, x_3351.w));
            let x_3354 : vec4<f32> = u_xlat12;
            let x_3357 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3360 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3354.x, x_3354.y) * vec2<f32>(x_3357.x, x_3357.y)) + vec2<f32>(x_3360.z, x_3360.w));
            let x_3364 : f32 = u_xlat14.y;
            u_xlat15.w = x_3364;
            let x_3366 : vec4<f32> = u_xlat15;
            let x_3367 : vec2<f32> = vec2<f32>(x_3366.y, x_3366.z);
            let x_3368 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3368.x, x_3367.x, x_3368.z, x_3367.y);
            let x_3370 : vec4<f32> = u_xlat12;
            let x_3373 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3376 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3370.x, x_3370.y, x_3370.x, x_3370.y) * vec4<f32>(x_3373.x, x_3373.y, x_3373.x, x_3373.y)) + vec4<f32>(x_3376.x, x_3376.y, x_3376.z, x_3376.y));
            let x_3379 : vec4<f32> = u_xlat12;
            let x_3382 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3385 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3379.x, x_3379.y, x_3379.x, x_3379.y) * vec4<f32>(x_3382.x, x_3382.y, x_3382.x, x_3382.y)) + vec4<f32>(x_3385.w, x_3385.y, x_3385.w, x_3385.z));
            let x_3388 : vec4<f32> = u_xlat12;
            let x_3391 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3394 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3388.x, x_3388.y, x_3388.x, x_3388.y) * vec4<f32>(x_3391.x, x_3391.y, x_3391.x, x_3391.y)) + vec4<f32>(x_3394.x, x_3394.w, x_3394.z, x_3394.w));
            let x_3397 : vec4<f32> = u_xlat13;
            let x_3399 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3397.x, x_3397.x, x_3397.x, x_3397.y) * vec4<f32>(x_3399.z, x_3399.w, x_3399.y, x_3399.z));
            let x_3403 : vec4<f32> = u_xlat13;
            let x_3405 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3403.y, x_3403.y, x_3403.z, x_3403.z) * x_3405);
            let x_3408 : f32 = u_xlat13.z;
            let x_3410 : f32 = u_xlat18.y;
            u_xlat87 = (x_3408 * x_3410);
            let x_3413 : vec4<f32> = u_xlat16;
            let x_3414 : vec2<f32> = vec2<f32>(x_3413.x, x_3413.y);
            let x_3416 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3414.x, x_3414.y, x_3416);
            let x_3423 : vec3<f32> = txVec34;
            let x_3425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3423.xy, x_3423.z);
            u_xlat88 = x_3425;
            let x_3427 : vec4<f32> = u_xlat16;
            let x_3428 : vec2<f32> = vec2<f32>(x_3427.z, x_3427.w);
            let x_3430 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3428.x, x_3428.y, x_3430);
            let x_3438 : vec3<f32> = txVec35;
            let x_3440 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3438.xy, x_3438.z);
            u_xlat89 = x_3440;
            let x_3441 : f32 = u_xlat89;
            let x_3443 : f32 = u_xlat19.y;
            u_xlat89 = (x_3441 * x_3443);
            let x_3446 : f32 = u_xlat19.x;
            let x_3447 : f32 = u_xlat88;
            let x_3449 : f32 = u_xlat89;
            u_xlat88 = ((x_3446 * x_3447) + x_3449);
            let x_3452 : vec2<f32> = u_xlat64;
            let x_3454 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3452.x, x_3452.y, x_3454);
            let x_3461 : vec3<f32> = txVec36;
            let x_3463 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3461.xy, x_3461.z);
            u_xlat89 = x_3463;
            let x_3465 : f32 = u_xlat19.z;
            let x_3466 : f32 = u_xlat89;
            let x_3468 : f32 = u_xlat88;
            u_xlat88 = ((x_3465 * x_3466) + x_3468);
            let x_3471 : vec4<f32> = u_xlat15;
            let x_3472 : vec2<f32> = vec2<f32>(x_3471.x, x_3471.y);
            let x_3474 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3472.x, x_3472.y, x_3474);
            let x_3481 : vec3<f32> = txVec37;
            let x_3483 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3481.xy, x_3481.z);
            u_xlat89 = x_3483;
            let x_3485 : f32 = u_xlat19.w;
            let x_3486 : f32 = u_xlat89;
            let x_3488 : f32 = u_xlat88;
            u_xlat88 = ((x_3485 * x_3486) + x_3488);
            let x_3491 : vec4<f32> = u_xlat17;
            let x_3492 : vec2<f32> = vec2<f32>(x_3491.x, x_3491.y);
            let x_3494 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3492.x, x_3492.y, x_3494);
            let x_3501 : vec3<f32> = txVec38;
            let x_3503 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3501.xy, x_3501.z);
            u_xlat89 = x_3503;
            let x_3505 : f32 = u_xlat20.x;
            let x_3506 : f32 = u_xlat89;
            let x_3508 : f32 = u_xlat88;
            u_xlat88 = ((x_3505 * x_3506) + x_3508);
            let x_3511 : vec4<f32> = u_xlat17;
            let x_3512 : vec2<f32> = vec2<f32>(x_3511.z, x_3511.w);
            let x_3514 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3512.x, x_3512.y, x_3514);
            let x_3521 : vec3<f32> = txVec39;
            let x_3523 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3521.xy, x_3521.z);
            u_xlat89 = x_3523;
            let x_3525 : f32 = u_xlat20.y;
            let x_3526 : f32 = u_xlat89;
            let x_3528 : f32 = u_xlat88;
            u_xlat88 = ((x_3525 * x_3526) + x_3528);
            let x_3531 : vec4<f32> = u_xlat15;
            let x_3532 : vec2<f32> = vec2<f32>(x_3531.z, x_3531.w);
            let x_3534 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3532.x, x_3532.y, x_3534);
            let x_3541 : vec3<f32> = txVec40;
            let x_3543 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3541.xy, x_3541.z);
            u_xlat89 = x_3543;
            let x_3545 : f32 = u_xlat20.z;
            let x_3546 : f32 = u_xlat89;
            let x_3548 : f32 = u_xlat88;
            u_xlat88 = ((x_3545 * x_3546) + x_3548);
            let x_3551 : vec4<f32> = u_xlat14;
            let x_3552 : vec2<f32> = vec2<f32>(x_3551.x, x_3551.y);
            let x_3554 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3552.x, x_3552.y, x_3554);
            let x_3561 : vec3<f32> = txVec41;
            let x_3563 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3561.xy, x_3561.z);
            u_xlat89 = x_3563;
            let x_3565 : f32 = u_xlat20.w;
            let x_3566 : f32 = u_xlat89;
            let x_3568 : f32 = u_xlat88;
            u_xlat88 = ((x_3565 * x_3566) + x_3568);
            let x_3571 : vec4<f32> = u_xlat14;
            let x_3572 : vec2<f32> = vec2<f32>(x_3571.z, x_3571.w);
            let x_3574 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3572.x, x_3572.y, x_3574);
            let x_3581 : vec3<f32> = txVec42;
            let x_3583 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3581.xy, x_3581.z);
            u_xlat89 = x_3583;
            let x_3584 : f32 = u_xlat87;
            let x_3585 : f32 = u_xlat89;
            let x_3587 : f32 = u_xlat88;
            u_xlat86 = ((x_3584 * x_3585) + x_3587);
          } else {
            let x_3590 : vec4<f32> = u_xlat11;
            let x_3593 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3596 : vec2<f32> = ((vec2<f32>(x_3590.x, x_3590.y) * vec2<f32>(x_3593.z, x_3593.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3597 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3596.x, x_3596.y, x_3597.z, x_3597.w);
            let x_3599 : vec4<f32> = u_xlat12;
            let x_3601 : vec2<f32> = floor(vec2<f32>(x_3599.x, x_3599.y));
            let x_3602 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3601.x, x_3601.y, x_3602.z, x_3602.w);
            let x_3604 : vec4<f32> = u_xlat11;
            let x_3607 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3610 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3604.x, x_3604.y) * vec2<f32>(x_3607.z, x_3607.w)) + -(vec2<f32>(x_3610.x, x_3610.y)));
            let x_3614 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3614.x, x_3614.x, x_3614.y, x_3614.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3617 : vec4<f32> = u_xlat13;
            let x_3619 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3617.x, x_3617.x, x_3617.z, x_3617.z) * vec4<f32>(x_3619.x, x_3619.x, x_3619.z, x_3619.z));
            let x_3622 : vec4<f32> = u_xlat14;
            let x_3624 : vec2<f32> = (vec2<f32>(x_3622.y, x_3622.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3625 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3625.x, x_3624.x, x_3625.z, x_3624.y);
            let x_3627 : vec4<f32> = u_xlat14;
            let x_3630 : vec2<f32> = u_xlat64;
            let x_3632 : vec2<f32> = ((vec2<f32>(x_3627.x, x_3627.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3630));
            let x_3633 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3632.x, x_3633.y, x_3632.y, x_3633.w);
            let x_3635 : vec2<f32> = u_xlat64;
            let x_3637 : vec2<f32> = (-(x_3635) + vec2<f32>(1.0f, 1.0f));
            let x_3638 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3637.x, x_3637.y, x_3638.z, x_3638.w);
            let x_3640 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3640, vec2<f32>(0.0f, 0.0f));
            let x_3642 : vec2<f32> = u_xlat66;
            let x_3644 : vec2<f32> = u_xlat66;
            let x_3646 : vec4<f32> = u_xlat14;
            let x_3648 : vec2<f32> = ((-(x_3642) * x_3644) + vec2<f32>(x_3646.x, x_3646.y));
            let x_3649 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3648.x, x_3648.y, x_3649.z, x_3649.w);
            let x_3651 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3651, vec2<f32>(0.0f, 0.0f));
            let x_3654 : vec2<f32> = u_xlat66;
            let x_3656 : vec2<f32> = u_xlat66;
            let x_3658 : vec4<f32> = u_xlat13;
            let x_3660 : vec2<f32> = ((-(x_3654) * x_3656) + vec2<f32>(x_3658.y, x_3658.w));
            let x_3661 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3660.x, x_3661.y, x_3660.y);
            let x_3663 : vec4<f32> = u_xlat14;
            let x_3665 : vec2<f32> = (vec2<f32>(x_3663.x, x_3663.y) + vec2<f32>(2.0f, 2.0f));
            let x_3666 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3665.x, x_3665.y, x_3666.z, x_3666.w);
            let x_3668 : vec3<f32> = u_xlat39;
            let x_3670 : vec2<f32> = (vec2<f32>(x_3668.x, x_3668.z) + vec2<f32>(2.0f, 2.0f));
            let x_3671 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3671.x, x_3670.x, x_3671.z, x_3670.y);
            let x_3674 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3674 * 0.08163200318813323975f);
            let x_3677 : vec4<f32> = u_xlat13;
            let x_3680 : vec3<f32> = (vec3<f32>(x_3677.z, x_3677.x, x_3677.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3681 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3680.x, x_3680.y, x_3680.z, x_3681.w);
            let x_3683 : vec4<f32> = u_xlat14;
            let x_3685 : vec2<f32> = (vec2<f32>(x_3683.x, x_3683.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3686 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3685.x, x_3685.y, x_3686.z, x_3686.w);
            let x_3689 : f32 = u_xlat17.y;
            u_xlat16.x = x_3689;
            let x_3691 : vec2<f32> = u_xlat64;
            let x_3694 : vec2<f32> = ((vec2<f32>(x_3691.x, x_3691.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3695 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3695.x, x_3694.x, x_3695.z, x_3694.y);
            let x_3697 : vec2<f32> = u_xlat64;
            let x_3700 : vec2<f32> = ((vec2<f32>(x_3697.x, x_3697.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3701 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3700.x, x_3701.y, x_3700.y, x_3701.w);
            let x_3704 : f32 = u_xlat13.x;
            u_xlat14.y = x_3704;
            let x_3707 : f32 = u_xlat15.y;
            u_xlat14.w = x_3707;
            let x_3709 : vec4<f32> = u_xlat14;
            let x_3710 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3709 + x_3710);
            let x_3712 : vec2<f32> = u_xlat64;
            let x_3715 : vec2<f32> = ((vec2<f32>(x_3712.y, x_3712.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3716 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3716.x, x_3715.x, x_3716.z, x_3715.y);
            let x_3718 : vec2<f32> = u_xlat64;
            let x_3721 : vec2<f32> = ((vec2<f32>(x_3718.y, x_3718.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3722 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3721.x, x_3722.y, x_3721.y, x_3722.w);
            let x_3725 : f32 = u_xlat13.y;
            u_xlat15.y = x_3725;
            let x_3727 : vec4<f32> = u_xlat15;
            let x_3728 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3727 + x_3728);
            let x_3730 : vec4<f32> = u_xlat14;
            let x_3731 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3730 / x_3731);
            let x_3733 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3733 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3735 : vec4<f32> = u_xlat15;
            let x_3736 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3735 / x_3736);
            let x_3738 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3738 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3740 : vec4<f32> = u_xlat14;
            let x_3743 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3740.w, x_3740.x, x_3740.y, x_3740.z) * vec4<f32>(x_3743.x, x_3743.x, x_3743.x, x_3743.x));
            let x_3746 : vec4<f32> = u_xlat15;
            let x_3749 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3746.x, x_3746.w, x_3746.y, x_3746.z) * vec4<f32>(x_3749.y, x_3749.y, x_3749.y, x_3749.y));
            let x_3752 : vec4<f32> = u_xlat14;
            let x_3753 : vec3<f32> = vec3<f32>(x_3752.y, x_3752.z, x_3752.w);
            let x_3754 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3753.x, x_3754.y, x_3753.y, x_3753.z);
            let x_3757 : f32 = u_xlat15.x;
            u_xlat17.y = x_3757;
            let x_3759 : vec4<f32> = u_xlat12;
            let x_3762 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3765 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3759.x, x_3759.y, x_3759.x, x_3759.y) * vec4<f32>(x_3762.x, x_3762.y, x_3762.x, x_3762.y)) + vec4<f32>(x_3765.x, x_3765.y, x_3765.z, x_3765.y));
            let x_3768 : vec4<f32> = u_xlat12;
            let x_3771 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3774 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3768.x, x_3768.y) * vec2<f32>(x_3771.x, x_3771.y)) + vec2<f32>(x_3774.w, x_3774.y));
            let x_3778 : f32 = u_xlat17.y;
            u_xlat14.y = x_3778;
            let x_3781 : f32 = u_xlat15.z;
            u_xlat17.y = x_3781;
            let x_3783 : vec4<f32> = u_xlat12;
            let x_3786 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3789 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3783.x, x_3783.y, x_3783.x, x_3783.y) * vec4<f32>(x_3786.x, x_3786.y, x_3786.x, x_3786.y)) + vec4<f32>(x_3789.x, x_3789.y, x_3789.z, x_3789.y));
            let x_3792 : vec4<f32> = u_xlat12;
            let x_3795 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3798 : vec4<f32> = u_xlat17;
            let x_3800 : vec2<f32> = ((vec2<f32>(x_3792.x, x_3792.y) * vec2<f32>(x_3795.x, x_3795.y)) + vec2<f32>(x_3798.w, x_3798.y));
            let x_3801 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3800.x, x_3800.y, x_3801.z, x_3801.w);
            let x_3804 : f32 = u_xlat17.y;
            u_xlat14.z = x_3804;
            let x_3807 : vec4<f32> = u_xlat12;
            let x_3810 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3813 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3807.x, x_3807.y, x_3807.x, x_3807.y) * vec4<f32>(x_3810.x, x_3810.y, x_3810.x, x_3810.y)) + vec4<f32>(x_3813.x, x_3813.y, x_3813.x, x_3813.z));
            let x_3817 : f32 = u_xlat15.w;
            u_xlat17.y = x_3817;
            let x_3820 : vec4<f32> = u_xlat12;
            let x_3823 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3826 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3820.x, x_3820.y, x_3820.x, x_3820.y) * vec4<f32>(x_3823.x, x_3823.y, x_3823.x, x_3823.y)) + vec4<f32>(x_3826.x, x_3826.y, x_3826.z, x_3826.y));
            let x_3830 : vec4<f32> = u_xlat12;
            let x_3833 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3836 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3830.x, x_3830.y) * vec2<f32>(x_3833.x, x_3833.y)) + vec2<f32>(x_3836.w, x_3836.y));
            let x_3840 : f32 = u_xlat17.y;
            u_xlat14.w = x_3840;
            let x_3843 : vec4<f32> = u_xlat12;
            let x_3846 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3849 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3843.x, x_3843.y) * vec2<f32>(x_3846.x, x_3846.y)) + vec2<f32>(x_3849.x, x_3849.w));
            let x_3852 : vec4<f32> = u_xlat17;
            let x_3853 : vec3<f32> = vec3<f32>(x_3852.x, x_3852.z, x_3852.w);
            let x_3854 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3853.x, x_3854.y, x_3853.y, x_3853.z);
            let x_3856 : vec4<f32> = u_xlat12;
            let x_3859 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3862 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3856.x, x_3856.y, x_3856.x, x_3856.y) * vec4<f32>(x_3859.x, x_3859.y, x_3859.x, x_3859.y)) + vec4<f32>(x_3862.x, x_3862.y, x_3862.z, x_3862.y));
            let x_3866 : vec4<f32> = u_xlat12;
            let x_3869 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3872 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3866.x, x_3866.y) * vec2<f32>(x_3869.x, x_3869.y)) + vec2<f32>(x_3872.w, x_3872.y));
            let x_3876 : f32 = u_xlat14.x;
            u_xlat15.x = x_3876;
            let x_3878 : vec4<f32> = u_xlat12;
            let x_3881 : vec4<f32> = x_990.x_AdditionalShadowmapSize;
            let x_3884 : vec4<f32> = u_xlat15;
            let x_3886 : vec2<f32> = ((vec2<f32>(x_3878.x, x_3878.y) * vec2<f32>(x_3881.x, x_3881.y)) + vec2<f32>(x_3884.x, x_3884.y));
            let x_3887 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3886.x, x_3886.y, x_3887.z, x_3887.w);
            let x_3890 : vec4<f32> = u_xlat13;
            let x_3892 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3890.x, x_3890.x, x_3890.x, x_3890.x) * x_3892);
            let x_3895 : vec4<f32> = u_xlat13;
            let x_3897 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3895.y, x_3895.y, x_3895.y, x_3895.y) * x_3897);
            let x_3900 : vec4<f32> = u_xlat13;
            let x_3902 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3900.z, x_3900.z, x_3900.z, x_3900.z) * x_3902);
            let x_3904 : vec4<f32> = u_xlat13;
            let x_3906 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3904.w, x_3904.w, x_3904.w, x_3904.w) * x_3906);
            let x_3909 : vec4<f32> = u_xlat18;
            let x_3910 : vec2<f32> = vec2<f32>(x_3909.x, x_3909.y);
            let x_3912 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3910.x, x_3910.y, x_3912);
            let x_3919 : vec3<f32> = txVec43;
            let x_3921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3919.xy, x_3919.z);
            u_xlat87 = x_3921;
            let x_3923 : vec4<f32> = u_xlat18;
            let x_3924 : vec2<f32> = vec2<f32>(x_3923.z, x_3923.w);
            let x_3926 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3924.x, x_3924.y, x_3926);
            let x_3933 : vec3<f32> = txVec44;
            let x_3935 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3933.xy, x_3933.z);
            u_xlat88 = x_3935;
            let x_3936 : f32 = u_xlat88;
            let x_3938 : f32 = u_xlat23.y;
            u_xlat88 = (x_3936 * x_3938);
            let x_3941 : f32 = u_xlat23.x;
            let x_3942 : f32 = u_xlat87;
            let x_3944 : f32 = u_xlat88;
            u_xlat87 = ((x_3941 * x_3942) + x_3944);
            let x_3947 : vec2<f32> = u_xlat64;
            let x_3949 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3947.x, x_3947.y, x_3949);
            let x_3956 : vec3<f32> = txVec45;
            let x_3958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3956.xy, x_3956.z);
            u_xlat88 = x_3958;
            let x_3960 : f32 = u_xlat23.z;
            let x_3961 : f32 = u_xlat88;
            let x_3963 : f32 = u_xlat87;
            u_xlat87 = ((x_3960 * x_3961) + x_3963);
            let x_3966 : vec4<f32> = u_xlat21;
            let x_3967 : vec2<f32> = vec2<f32>(x_3966.x, x_3966.y);
            let x_3969 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3967.x, x_3967.y, x_3969);
            let x_3976 : vec3<f32> = txVec46;
            let x_3978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3976.xy, x_3976.z);
            u_xlat88 = x_3978;
            let x_3980 : f32 = u_xlat23.w;
            let x_3981 : f32 = u_xlat88;
            let x_3983 : f32 = u_xlat87;
            u_xlat87 = ((x_3980 * x_3981) + x_3983);
            let x_3986 : vec4<f32> = u_xlat19;
            let x_3987 : vec2<f32> = vec2<f32>(x_3986.x, x_3986.y);
            let x_3989 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3987.x, x_3987.y, x_3989);
            let x_3996 : vec3<f32> = txVec47;
            let x_3998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3996.xy, x_3996.z);
            u_xlat88 = x_3998;
            let x_4000 : f32 = u_xlat24.x;
            let x_4001 : f32 = u_xlat88;
            let x_4003 : f32 = u_xlat87;
            u_xlat87 = ((x_4000 * x_4001) + x_4003);
            let x_4006 : vec4<f32> = u_xlat19;
            let x_4007 : vec2<f32> = vec2<f32>(x_4006.z, x_4006.w);
            let x_4009 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4007.x, x_4007.y, x_4009);
            let x_4016 : vec3<f32> = txVec48;
            let x_4018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4016.xy, x_4016.z);
            u_xlat88 = x_4018;
            let x_4020 : f32 = u_xlat24.y;
            let x_4021 : f32 = u_xlat88;
            let x_4023 : f32 = u_xlat87;
            u_xlat87 = ((x_4020 * x_4021) + x_4023);
            let x_4026 : vec4<f32> = u_xlat20;
            let x_4027 : vec2<f32> = vec2<f32>(x_4026.x, x_4026.y);
            let x_4029 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4027.x, x_4027.y, x_4029);
            let x_4036 : vec3<f32> = txVec49;
            let x_4038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4036.xy, x_4036.z);
            u_xlat88 = x_4038;
            let x_4040 : f32 = u_xlat24.z;
            let x_4041 : f32 = u_xlat88;
            let x_4043 : f32 = u_xlat87;
            u_xlat87 = ((x_4040 * x_4041) + x_4043);
            let x_4046 : vec4<f32> = u_xlat21;
            let x_4047 : vec2<f32> = vec2<f32>(x_4046.z, x_4046.w);
            let x_4049 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4047.x, x_4047.y, x_4049);
            let x_4056 : vec3<f32> = txVec50;
            let x_4058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4056.xy, x_4056.z);
            u_xlat88 = x_4058;
            let x_4060 : f32 = u_xlat24.w;
            let x_4061 : f32 = u_xlat88;
            let x_4063 : f32 = u_xlat87;
            u_xlat87 = ((x_4060 * x_4061) + x_4063);
            let x_4066 : vec4<f32> = u_xlat22;
            let x_4067 : vec2<f32> = vec2<f32>(x_4066.x, x_4066.y);
            let x_4069 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4067.x, x_4067.y, x_4069);
            let x_4076 : vec3<f32> = txVec51;
            let x_4078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4076.xy, x_4076.z);
            u_xlat88 = x_4078;
            let x_4080 : f32 = u_xlat25.x;
            let x_4081 : f32 = u_xlat88;
            let x_4083 : f32 = u_xlat87;
            u_xlat87 = ((x_4080 * x_4081) + x_4083);
            let x_4086 : vec4<f32> = u_xlat22;
            let x_4087 : vec2<f32> = vec2<f32>(x_4086.z, x_4086.w);
            let x_4089 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4087.x, x_4087.y, x_4089);
            let x_4096 : vec3<f32> = txVec52;
            let x_4098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4096.xy, x_4096.z);
            u_xlat88 = x_4098;
            let x_4100 : f32 = u_xlat25.y;
            let x_4101 : f32 = u_xlat88;
            let x_4103 : f32 = u_xlat87;
            u_xlat87 = ((x_4100 * x_4101) + x_4103);
            let x_4106 : vec2<f32> = u_xlat40;
            let x_4108 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4106.x, x_4106.y, x_4108);
            let x_4115 : vec3<f32> = txVec53;
            let x_4117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4115.xy, x_4115.z);
            u_xlat88 = x_4117;
            let x_4119 : f32 = u_xlat25.z;
            let x_4120 : f32 = u_xlat88;
            let x_4122 : f32 = u_xlat87;
            u_xlat87 = ((x_4119 * x_4120) + x_4122);
            let x_4125 : vec2<f32> = u_xlat72;
            let x_4127 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4125.x, x_4125.y, x_4127);
            let x_4134 : vec3<f32> = txVec54;
            let x_4136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4134.xy, x_4134.z);
            u_xlat88 = x_4136;
            let x_4138 : f32 = u_xlat25.w;
            let x_4139 : f32 = u_xlat88;
            let x_4141 : f32 = u_xlat87;
            u_xlat87 = ((x_4138 * x_4139) + x_4141);
            let x_4144 : vec4<f32> = u_xlat17;
            let x_4145 : vec2<f32> = vec2<f32>(x_4144.x, x_4144.y);
            let x_4147 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4145.x, x_4145.y, x_4147);
            let x_4154 : vec3<f32> = txVec55;
            let x_4156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4154.xy, x_4154.z);
            u_xlat88 = x_4156;
            let x_4158 : f32 = u_xlat13.x;
            let x_4159 : f32 = u_xlat88;
            let x_4161 : f32 = u_xlat87;
            u_xlat87 = ((x_4158 * x_4159) + x_4161);
            let x_4164 : vec4<f32> = u_xlat17;
            let x_4165 : vec2<f32> = vec2<f32>(x_4164.z, x_4164.w);
            let x_4167 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4165.x, x_4165.y, x_4167);
            let x_4174 : vec3<f32> = txVec56;
            let x_4176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4174.xy, x_4174.z);
            u_xlat88 = x_4176;
            let x_4178 : f32 = u_xlat13.y;
            let x_4179 : f32 = u_xlat88;
            let x_4181 : f32 = u_xlat87;
            u_xlat87 = ((x_4178 * x_4179) + x_4181);
            let x_4184 : vec2<f32> = u_xlat67;
            let x_4186 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4184.x, x_4184.y, x_4186);
            let x_4193 : vec3<f32> = txVec57;
            let x_4195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4193.xy, x_4193.z);
            u_xlat88 = x_4195;
            let x_4197 : f32 = u_xlat13.z;
            let x_4198 : f32 = u_xlat88;
            let x_4200 : f32 = u_xlat87;
            u_xlat87 = ((x_4197 * x_4198) + x_4200);
            let x_4203 : vec4<f32> = u_xlat12;
            let x_4204 : vec2<f32> = vec2<f32>(x_4203.x, x_4203.y);
            let x_4206 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4204.x, x_4204.y, x_4206);
            let x_4213 : vec3<f32> = txVec58;
            let x_4215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4213.xy, x_4213.z);
            u_xlat88 = x_4215;
            let x_4217 : f32 = u_xlat13.w;
            let x_4218 : f32 = u_xlat88;
            let x_4220 : f32 = u_xlat87;
            u_xlat86 = ((x_4217 * x_4218) + x_4220);
          }
        }
      } else {
        let x_4224 : vec4<f32> = u_xlat11;
        let x_4225 : vec2<f32> = vec2<f32>(x_4224.x, x_4224.y);
        let x_4227 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4225.x, x_4225.y, x_4227);
        let x_4234 : vec3<f32> = txVec59;
        let x_4236 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4234.xy, x_4234.z);
        u_xlat86 = x_4236;
      }
      let x_4237 : i32 = u_xlati58;
      let x_4239 : f32 = x_990.x_AdditionalShadowParams[x_4237].x;
      u_xlat87 = (1.0f + -(x_4239));
      let x_4242 : f32 = u_xlat86;
      let x_4243 : i32 = u_xlati58;
      let x_4245 : f32 = x_990.x_AdditionalShadowParams[x_4243].x;
      let x_4247 : f32 = u_xlat87;
      u_xlat86 = ((x_4242 * x_4245) + x_4247);
      let x_4250 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_4250);
      let x_4254 : f32 = u_xlat11.z;
      u_xlatb88 = (x_4254 >= 1.0f);
      let x_4256 : bool = u_xlatb87;
      let x_4257 : bool = u_xlatb88;
      u_xlatb87 = (x_4256 | x_4257);
      let x_4259 : bool = u_xlatb87;
      let x_4260 : f32 = u_xlat86;
      u_xlat86 = select(x_4260, 1.0f, x_4259);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_4263 : f32 = u_xlat86;
    u_xlat87 = (-(x_4263) + 1.0f);
    let x_4267 : f32 = u_xlat3.x;
    let x_4268 : f32 = u_xlat87;
    let x_4270 : f32 = u_xlat86;
    u_xlat86 = ((x_4267 * x_4268) + x_4270);
    let x_4273 : i32 = u_xlati58;
    u_xlati87 = (1i << bitcast<u32>((x_4273 & 31i)));
    let x_4276 : i32 = u_xlati87;
    let x_4279 : f32 = x_2343.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_4276) & bitcast<u32>(x_4279)));
    let x_4283 : i32 = u_xlati87;
    if ((x_4283 != 0i)) {
      let x_4287 : i32 = u_xlati58;
      let x_4289 : f32 = x_2343.x_AdditionalLightsLightTypes[x_4287].el;
      u_xlati87 = i32(x_4289);
      let x_4292 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_4292 != 0i));
      let x_4296 : i32 = u_xlati58;
      u_xlati11 = (x_4296 << bitcast<u32>(2i));
      let x_4298 : i32 = u_xlati88;
      if ((x_4298 != 0i)) {
        let x_4303 : vec3<f32> = vs_TEXCOORD7;
        let x_4305 : i32 = u_xlati11;
        let x_4308 : i32 = u_xlati11;
        let x_4312 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[((x_4305 + 1i) / 4i)][((x_4308 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_4303.y, x_4303.y, x_4303.y) * vec3<f32>(x_4312.x, x_4312.y, x_4312.w));
        let x_4315 : i32 = u_xlati11;
        let x_4317 : i32 = u_xlati11;
        let x_4320 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[(x_4315 / 4i)][(x_4317 % 4i)];
        let x_4322 : vec3<f32> = vs_TEXCOORD7;
        let x_4325 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4320.x, x_4320.y, x_4320.w) * vec3<f32>(x_4322.x, x_4322.x, x_4322.x)) + x_4325);
        let x_4327 : i32 = u_xlati11;
        let x_4330 : i32 = u_xlati11;
        let x_4334 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[((x_4327 + 2i) / 4i)][((x_4330 + 2i) % 4i)];
        let x_4336 : vec3<f32> = vs_TEXCOORD7;
        let x_4339 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_4334.x, x_4334.y, x_4334.w) * vec3<f32>(x_4336.z, x_4336.z, x_4336.z)) + x_4339);
        let x_4341 : vec3<f32> = u_xlat37;
        let x_4342 : i32 = u_xlati11;
        let x_4345 : i32 = u_xlati11;
        let x_4349 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[((x_4342 + 3i) / 4i)][((x_4345 + 3i) % 4i)];
        u_xlat37 = (x_4341 + vec3<f32>(x_4349.x, x_4349.y, x_4349.w));
        let x_4352 : vec3<f32> = u_xlat37;
        let x_4354 : vec3<f32> = u_xlat37;
        let x_4356 : vec2<f32> = (vec2<f32>(x_4352.x, x_4352.y) / vec2<f32>(x_4354.z, x_4354.z));
        let x_4357 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4356.x, x_4356.y, x_4357.z);
        let x_4359 : vec3<f32> = u_xlat37;
        let x_4362 : vec2<f32> = ((vec2<f32>(x_4359.x, x_4359.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4363 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4362.x, x_4362.y, x_4363.z);
        let x_4365 : vec3<f32> = u_xlat37;
        let x_4369 : vec2<f32> = clamp(vec2<f32>(x_4365.x, x_4365.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4370 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4369.x, x_4369.y, x_4370.z);
        let x_4372 : i32 = u_xlati58;
        let x_4374 : vec4<f32> = x_2343.x_AdditionalLightsCookieAtlasUVRects[x_4372];
        let x_4376 : vec3<f32> = u_xlat37;
        let x_4379 : i32 = u_xlati58;
        let x_4381 : vec4<f32> = x_2343.x_AdditionalLightsCookieAtlasUVRects[x_4379];
        let x_4383 : vec2<f32> = ((vec2<f32>(x_4374.x, x_4374.y) * vec2<f32>(x_4376.x, x_4376.y)) + vec2<f32>(x_4381.z, x_4381.w));
        let x_4384 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_4383.x, x_4383.y, x_4384.z);
      } else {
        let x_4387 : i32 = u_xlati87;
        u_xlatb87 = (x_4387 == 1i);
        let x_4389 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_4389);
        let x_4391 : i32 = u_xlati87;
        if ((x_4391 != 0i)) {
          let x_4395 : vec3<f32> = vs_TEXCOORD7;
          let x_4397 : i32 = u_xlati11;
          let x_4400 : i32 = u_xlati11;
          let x_4404 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[((x_4397 + 1i) / 4i)][((x_4400 + 1i) % 4i)];
          let x_4406 : vec2<f32> = (vec2<f32>(x_4395.y, x_4395.y) * vec2<f32>(x_4404.x, x_4404.y));
          let x_4407 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4406.x, x_4406.y, x_4407.z, x_4407.w);
          let x_4409 : i32 = u_xlati11;
          let x_4411 : i32 = u_xlati11;
          let x_4414 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[(x_4409 / 4i)][(x_4411 % 4i)];
          let x_4416 : vec3<f32> = vs_TEXCOORD7;
          let x_4419 : vec4<f32> = u_xlat12;
          let x_4421 : vec2<f32> = ((vec2<f32>(x_4414.x, x_4414.y) * vec2<f32>(x_4416.x, x_4416.x)) + vec2<f32>(x_4419.x, x_4419.y));
          let x_4422 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4421.x, x_4421.y, x_4422.z, x_4422.w);
          let x_4424 : i32 = u_xlati11;
          let x_4427 : i32 = u_xlati11;
          let x_4431 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[((x_4424 + 2i) / 4i)][((x_4427 + 2i) % 4i)];
          let x_4433 : vec3<f32> = vs_TEXCOORD7;
          let x_4436 : vec4<f32> = u_xlat12;
          let x_4438 : vec2<f32> = ((vec2<f32>(x_4431.x, x_4431.y) * vec2<f32>(x_4433.z, x_4433.z)) + vec2<f32>(x_4436.x, x_4436.y));
          let x_4439 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4438.x, x_4438.y, x_4439.z, x_4439.w);
          let x_4441 : vec4<f32> = u_xlat12;
          let x_4443 : i32 = u_xlati11;
          let x_4446 : i32 = u_xlati11;
          let x_4450 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[((x_4443 + 3i) / 4i)][((x_4446 + 3i) % 4i)];
          let x_4452 : vec2<f32> = (vec2<f32>(x_4441.x, x_4441.y) + vec2<f32>(x_4450.x, x_4450.y));
          let x_4453 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4452.x, x_4452.y, x_4453.z, x_4453.w);
          let x_4455 : vec4<f32> = u_xlat12;
          let x_4458 : vec2<f32> = ((vec2<f32>(x_4455.x, x_4455.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4459 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4458.x, x_4458.y, x_4459.z, x_4459.w);
          let x_4461 : vec4<f32> = u_xlat12;
          let x_4463 : vec2<f32> = fract(vec2<f32>(x_4461.x, x_4461.y));
          let x_4464 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4463.x, x_4463.y, x_4464.z, x_4464.w);
          let x_4466 : i32 = u_xlati58;
          let x_4468 : vec4<f32> = x_2343.x_AdditionalLightsCookieAtlasUVRects[x_4466];
          let x_4470 : vec4<f32> = u_xlat12;
          let x_4473 : i32 = u_xlati58;
          let x_4475 : vec4<f32> = x_2343.x_AdditionalLightsCookieAtlasUVRects[x_4473];
          let x_4477 : vec2<f32> = ((vec2<f32>(x_4468.x, x_4468.y) * vec2<f32>(x_4470.x, x_4470.y)) + vec2<f32>(x_4475.z, x_4475.w));
          let x_4478 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4477.x, x_4477.y, x_4478.z);
        } else {
          let x_4481 : vec3<f32> = vs_TEXCOORD7;
          let x_4483 : i32 = u_xlati11;
          let x_4486 : i32 = u_xlati11;
          let x_4490 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[((x_4483 + 1i) / 4i)][((x_4486 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4481.y, x_4481.y, x_4481.y, x_4481.y) * x_4490);
          let x_4492 : i32 = u_xlati11;
          let x_4494 : i32 = u_xlati11;
          let x_4497 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[(x_4492 / 4i)][(x_4494 % 4i)];
          let x_4498 : vec3<f32> = vs_TEXCOORD7;
          let x_4501 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4497 * vec4<f32>(x_4498.x, x_4498.x, x_4498.x, x_4498.x)) + x_4501);
          let x_4503 : i32 = u_xlati11;
          let x_4506 : i32 = u_xlati11;
          let x_4510 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[((x_4503 + 2i) / 4i)][((x_4506 + 2i) % 4i)];
          let x_4511 : vec3<f32> = vs_TEXCOORD7;
          let x_4514 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4510 * vec4<f32>(x_4511.z, x_4511.z, x_4511.z, x_4511.z)) + x_4514);
          let x_4516 : vec4<f32> = u_xlat12;
          let x_4517 : i32 = u_xlati11;
          let x_4520 : i32 = u_xlati11;
          let x_4524 : vec4<f32> = x_2343.x_AdditionalLightsWorldToLights[((x_4517 + 3i) / 4i)][((x_4520 + 3i) % 4i)];
          u_xlat12 = (x_4516 + x_4524);
          let x_4526 : vec4<f32> = u_xlat12;
          let x_4528 : vec4<f32> = u_xlat12;
          let x_4530 : vec3<f32> = (vec3<f32>(x_4526.x, x_4526.y, x_4526.z) / vec3<f32>(x_4528.w, x_4528.w, x_4528.w));
          let x_4531 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4530.x, x_4530.y, x_4530.z, x_4531.w);
          let x_4533 : vec4<f32> = u_xlat12;
          let x_4535 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4533.x, x_4533.y, x_4533.z), vec3<f32>(x_4535.x, x_4535.y, x_4535.z));
          let x_4538 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4538);
          let x_4540 : f32 = u_xlat87;
          let x_4542 : vec4<f32> = u_xlat12;
          let x_4544 : vec3<f32> = (vec3<f32>(x_4540, x_4540, x_4540) * vec3<f32>(x_4542.x, x_4542.y, x_4542.z));
          let x_4545 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4544.x, x_4544.y, x_4544.z, x_4545.w);
          let x_4547 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4547.x, x_4547.y, x_4547.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4552 : f32 = u_xlat87;
          u_xlat87 = max(x_4552, 0.00000099999999747524f);
          let x_4555 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4555);
          let x_4557 : f32 = u_xlat87;
          let x_4559 : vec4<f32> = u_xlat12;
          let x_4561 : vec3<f32> = (vec3<f32>(x_4557, x_4557, x_4557) * vec3<f32>(x_4559.z, x_4559.x, x_4559.y));
          let x_4562 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4561.x, x_4561.y, x_4561.z, x_4562.w);
          let x_4565 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4565);
          let x_4569 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4569, 0.0f, 1.0f);
          let x_4572 : vec4<f32> = u_xlat13;
          let x_4574 : vec4<bool> = (vec4<f32>(x_4572.y, x_4572.y, x_4572.y, x_4572.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4575 : vec2<bool> = vec2<bool>(x_4574.x, x_4574.w);
          let x_4576 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4575.x, x_4576.y, x_4576.z, x_4575.y);
          let x_4579 : bool = u_xlatb11.x;
          if (x_4579) {
            let x_4584 : f32 = u_xlat13.x;
            x_4580 = x_4584;
          } else {
            let x_4587 : f32 = u_xlat13.x;
            x_4580 = -(x_4587);
          }
          let x_4589 : f32 = x_4580;
          u_xlat11.x = x_4589;
          let x_4592 : bool = u_xlatb11.w;
          if (x_4592) {
            let x_4597 : f32 = u_xlat13.x;
            x_4593 = x_4597;
          } else {
            let x_4600 : f32 = u_xlat13.x;
            x_4593 = -(x_4600);
          }
          let x_4602 : f32 = x_4593;
          u_xlat11.w = x_4602;
          let x_4604 : vec4<f32> = u_xlat12;
          let x_4606 : f32 = u_xlat87;
          let x_4609 : vec4<f32> = u_xlat11;
          let x_4611 : vec2<f32> = ((vec2<f32>(x_4604.x, x_4604.y) * vec2<f32>(x_4606, x_4606)) + vec2<f32>(x_4609.x, x_4609.w));
          let x_4612 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4611.x, x_4612.y, x_4612.z, x_4611.y);
          let x_4614 : vec4<f32> = u_xlat11;
          let x_4617 : vec2<f32> = ((vec2<f32>(x_4614.x, x_4614.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4618 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4617.x, x_4618.y, x_4618.z, x_4617.y);
          let x_4620 : vec4<f32> = u_xlat11;
          let x_4624 : vec2<f32> = clamp(vec2<f32>(x_4620.x, x_4620.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4625 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4624.x, x_4625.y, x_4625.z, x_4624.y);
          let x_4627 : i32 = u_xlati58;
          let x_4629 : vec4<f32> = x_2343.x_AdditionalLightsCookieAtlasUVRects[x_4627];
          let x_4631 : vec4<f32> = u_xlat11;
          let x_4634 : i32 = u_xlati58;
          let x_4636 : vec4<f32> = x_2343.x_AdditionalLightsCookieAtlasUVRects[x_4634];
          let x_4638 : vec2<f32> = ((vec2<f32>(x_4629.x, x_4629.y) * vec2<f32>(x_4631.x, x_4631.w)) + vec2<f32>(x_4636.z, x_4636.w));
          let x_4639 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4638.x, x_4638.y, x_4639.z);
        }
      }
      let x_4646 : vec3<f32> = u_xlat37;
      let x_4648 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4646.x, x_4646.y), 0.0f);
      u_xlat11 = x_4648;
      let x_4650 : bool = u_xlatb6.y;
      if (x_4650) {
        let x_4655 : f32 = u_xlat11.w;
        x_4651 = x_4655;
      } else {
        let x_4658 : f32 = u_xlat11.x;
        x_4651 = x_4658;
      }
      let x_4659 : f32 = x_4651;
      u_xlat87 = x_4659;
      let x_4661 : bool = u_xlatb6.x;
      if (x_4661) {
        let x_4665 : vec4<f32> = u_xlat11;
        x_4662 = vec3<f32>(x_4665.x, x_4665.y, x_4665.z);
      } else {
        let x_4668 : f32 = u_xlat87;
        x_4662 = vec3<f32>(x_4668, x_4668, x_4668);
      }
      let x_4670 : vec3<f32> = x_4662;
      let x_4671 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4670.x, x_4670.y, x_4670.z, x_4671.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4677 : vec4<f32> = u_xlat11;
    let x_4679 : i32 = u_xlati58;
    let x_4681 : vec4<f32> = x_2851.x_AdditionalLightsColor[x_4679];
    let x_4683 : vec3<f32> = (vec3<f32>(x_4677.x, x_4677.y, x_4677.z) * vec3<f32>(x_4681.x, x_4681.y, x_4681.z));
    let x_4684 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4683.x, x_4683.y, x_4683.z, x_4684.w);
    let x_4686 : f32 = u_xlat84;
    let x_4687 : f32 = u_xlat86;
    u_xlat58.x = (x_4686 * x_4687);
    let x_4690 : vec4<f32> = u_xlat1;
    let x_4692 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4690.x, x_4690.y, x_4690.z), vec3<f32>(x_4692.x, x_4692.y, x_4692.z));
    let x_4695 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4695, 0.0f, 1.0f);
    let x_4697 : f32 = u_xlat84;
    let x_4699 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4697 * x_4699);
    let x_4702 : vec2<f32> = u_xlat58;
    let x_4704 : vec4<f32> = u_xlat11;
    let x_4706 : vec3<f32> = (vec3<f32>(x_4702.x, x_4702.x, x_4702.x) * vec3<f32>(x_4704.x, x_4704.y, x_4704.z));
    let x_4707 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4706.x, x_4706.y, x_4706.z, x_4707.w);
    let x_4709 : vec4<f32> = u_xlat9;
    let x_4711 : f32 = u_xlat85;
    let x_4714 : vec4<f32> = u_xlat7;
    let x_4716 : vec3<f32> = ((vec3<f32>(x_4709.x, x_4709.y, x_4709.z) * vec3<f32>(x_4711, x_4711, x_4711)) + vec3<f32>(x_4714.x, x_4714.y, x_4714.z));
    let x_4717 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4716.x, x_4716.y, x_4716.z, x_4717.w);
    let x_4719 : vec4<f32> = u_xlat9;
    let x_4721 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4719.x, x_4719.y, x_4719.z), vec3<f32>(x_4721.x, x_4721.y, x_4721.z));
    let x_4726 : f32 = u_xlat58.x;
    u_xlat58.x = max(x_4726, 1.17549435e-38f);
    let x_4730 : f32 = u_xlat58.x;
    u_xlat58.x = inverseSqrt(x_4730);
    let x_4733 : vec2<f32> = u_xlat58;
    let x_4735 : vec4<f32> = u_xlat9;
    let x_4737 : vec3<f32> = (vec3<f32>(x_4733.x, x_4733.x, x_4733.x) * vec3<f32>(x_4735.x, x_4735.y, x_4735.z));
    let x_4738 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4737.x, x_4737.y, x_4737.z, x_4738.w);
    let x_4740 : vec4<f32> = u_xlat1;
    let x_4742 : vec4<f32> = u_xlat9;
    u_xlat58.x = dot(vec3<f32>(x_4740.x, x_4740.y, x_4740.z), vec3<f32>(x_4742.x, x_4742.y, x_4742.z));
    let x_4747 : f32 = u_xlat58.x;
    u_xlat58.x = clamp(x_4747, 0.0f, 1.0f);
    let x_4750 : vec4<f32> = u_xlat10;
    let x_4752 : vec4<f32> = u_xlat9;
    u_xlat58.y = dot(vec3<f32>(x_4750.x, x_4750.y, x_4750.z), vec3<f32>(x_4752.x, x_4752.y, x_4752.z));
    let x_4757 : f32 = u_xlat58.y;
    u_xlat58.y = clamp(x_4757, 0.0f, 1.0f);
    let x_4760 : vec2<f32> = u_xlat58;
    let x_4761 : vec2<f32> = u_xlat58;
    u_xlat58 = (x_4760 * x_4761);
    let x_4764 : f32 = u_xlat58.x;
    let x_4766 : f32 = u_xlat0.x;
    u_xlat58.x = ((x_4764 * x_4766) + 1.00001001358032226562f);
    let x_4771 : f32 = u_xlat58.x;
    let x_4773 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4771 * x_4773);
    let x_4777 : f32 = u_xlat58.y;
    u_xlat84 = max(x_4777, 0.10000000149011611938f);
    let x_4779 : f32 = u_xlat84;
    let x_4781 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4779 * x_4781);
    let x_4784 : f32 = u_xlat82;
    let x_4786 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4784 * x_4786);
    let x_4789 : f32 = u_xlat80;
    let x_4791 : f32 = u_xlat58.x;
    u_xlat58.x = (x_4789 / x_4791);
    let x_4794 : vec4<f32> = u_xlat4;
    let x_4796 : vec2<f32> = u_xlat58;
    let x_4799 : vec3<f32> = u_xlat29;
    let x_4800 : vec3<f32> = ((vec3<f32>(x_4794.x, x_4794.y, x_4794.z) * vec3<f32>(x_4796.x, x_4796.x, x_4796.x)) + x_4799);
    let x_4801 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4800.x, x_4800.y, x_4800.z, x_4801.w);
    let x_4803 : vec4<f32> = u_xlat9;
    let x_4805 : vec4<f32> = u_xlat11;
    let x_4808 : vec4<f32> = u_xlat8;
    let x_4810 : vec3<f32> = ((vec3<f32>(x_4803.x, x_4803.y, x_4803.z) * vec3<f32>(x_4805.x, x_4805.y, x_4805.z)) + vec3<f32>(x_4808.x, x_4808.y, x_4808.z));
    let x_4811 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4810.x, x_4810.y, x_4810.z, x_4811.w);

    continuing {
      let x_4813 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4813 + bitcast<u32>(1i));
    }
  }
  let x_4815 : vec4<f32> = u_xlat2;
  let x_4817 : f32 = u_xlat26;
  let x_4820 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_4815.x, x_4815.y, x_4815.z) * vec3<f32>(x_4817, x_4817, x_4817)) + vec3<f32>(x_4820.x, x_4820.z, x_4820.w));
  let x_4823 : vec4<f32> = u_xlat8;
  let x_4825 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4823.x, x_4823.y, x_4823.z) + x_4825);
  let x_4827 : f32 = u_xlat79;
  let x_4828 : f32 = u_xlat79;
  u_xlat1.x = (x_4827 * -(x_4828));
  let x_4833 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_4833);
  let x_4836 : vec3<f32> = u_xlat0;
  let x_4837 : f32 = u_xlat78;
  let x_4841 : vec4<f32> = x_113.unity_FogColor;
  u_xlat0 = ((x_4836 * vec3<f32>(x_4837, x_4837, x_4837)) + -(vec3<f32>(x_4841.x, x_4841.y, x_4841.z)));
  let x_4847 : vec4<f32> = u_xlat1;
  let x_4849 : vec3<f32> = u_xlat0;
  let x_4852 : vec4<f32> = x_113.unity_FogColor;
  let x_4854 : vec3<f32> = ((vec3<f32>(x_4847.x, x_4847.x, x_4847.x) * x_4849) + vec3<f32>(x_4852.x, x_4852.y, x_4852.z));
  let x_4855 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4854.x, x_4854.y, x_4854.z, x_4855.w);
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


