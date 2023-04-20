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

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_945 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb5 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb31 : vec2<bool>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_2290 : LightCookies;

@group(0) @binding(14) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(16) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2487 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu5 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_2774 : AdditionalLights;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(13) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> u_xlati86 : i32;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(15) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

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
  var x_2373 : f32;
  var x_2385 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2910 : f32;
  var x_2920 : f32;
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
  var x_4493 : f32;
  var x_4506 : f32;
  var x_4554 : f32;
  var x_4565 : vec3<f32>;
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
  let x_118 : f32 = x_112.x_GlobalMipBias.x;
  let x_119 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_108.x, x_108.y), x_118);
  u_xlat4 = x_119;
  let x_122 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_122, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_133 : vec4<f32> = vs_TEXCOORD1;
  let x_136 : f32 = x_112.x_GlobalMipBias.x;
  let x_137 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_133.x, x_133.y), x_136);
  u_xlat5 = x_137;
  let x_143 : vec4<f32> = vs_TEXCOORD1;
  let x_146 : f32 = x_112.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_143.z, x_143.w), x_146);
  u_xlat6 = x_147;
  let x_154 : vec4<f32> = vs_TEXCOORD2;
  let x_157 : f32 = x_112.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat7 = x_158;
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_167 : f32 = x_112.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_164.z, x_164.w), x_167);
  u_xlat8 = x_168;
  let x_172 : f32 = u_xlat5.w;
  u_xlat9.x = x_172;
  let x_175 : f32 = u_xlat6.w;
  u_xlat9.y = x_175;
  let x_179 : f32 = u_xlat7.w;
  u_xlat9.z = x_179;
  let x_183 : f32 = u_xlat8.w;
  u_xlat9.w = x_183;
  let x_186 : vec4<f32> = u_xlat9;
  let x_189 : f32 = x_13.x_Smoothness0;
  let x_192 : f32 = x_13.x_Smoothness1;
  let x_195 : f32 = x_13.x_Smoothness2;
  let x_198 : f32 = x_13.x_Smoothness3;
  u_xlat10 = (x_186 * vec4<f32>(x_189, x_192, x_195, x_198));
  let x_207 : f32 = x_13.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_207);
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_210) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_213 : vec4<f32> = u_xlat9;
  let x_214 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_213 + -(x_214));
  let x_217 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_217 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_221 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_221, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat4;
  let x_230 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_226 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_230);
  let x_233 : vec4<f32> = u_xlat4;
  let x_234 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_233 + -(x_234));
  let x_239 : f32 = u_xlat12.x;
  let x_242 : f32 = x_13.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_239 * x_242);
  let x_246 : f32 = u_xlat12.y;
  let x_249 : f32 = x_13.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_246 * x_249);
  let x_253 : f32 = u_xlat12.z;
  let x_256 : f32 = x_13.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_253 * x_256);
  let x_260 : f32 = u_xlat12.w;
  let x_263 : f32 = x_13.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_260 * x_263);
  let x_266 : vec4<f32> = u_xlat11;
  let x_267 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_266 + x_267);
  let x_269 : bool = u_xlatb79;
  let x_270 : vec4<f32> = u_xlat11;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_271, x_270, vec4<bool>(x_269, x_269, x_269, x_269));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_276, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_278 : f32 = u_xlat79;
  u_xlat79 = (x_278 + 0.00006103515625f);
  let x_281 : vec4<f32> = u_xlat4;
  let x_282 : f32 = u_xlat79;
  u_xlat4 = (x_281 / vec4<f32>(x_282, x_282, x_282, x_282));
  let x_285 : vec4<f32> = u_xlat4;
  let x_288 : vec4<f32> = x_13.x_DiffuseRemapScale0;
  let x_290 : vec3<f32> = (vec3<f32>(x_285.x, x_285.x, x_285.x) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = x_13.x_DiffuseRemapScale1;
  let x_298 : vec3<f32> = (vec3<f32>(x_293.y, x_293.y, x_293.y) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec4<f32> = u_xlat12;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = u_xlat11;
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.x, x_310.y, x_310.z)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = x_13.x_DiffuseRemapScale2;
  let x_323 : vec3<f32> = (vec3<f32>(x_318.z, x_318.z, x_318.z) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat7;
  let x_328 : vec4<f32> = u_xlat6;
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = x_13.x_DiffuseRemapScale3;
  let x_341 : vec3<f32> = (vec3<f32>(x_336.w, x_336.w, x_336.w) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat8;
  let x_346 : vec4<f32> = u_xlat6;
  let x_349 : vec4<f32> = u_xlat5;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_359 : vec4<f32> = vs_TEXCOORD1;
  let x_362 : f32 = x_112.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_359.x, x_359.y), x_362);
  let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.w);
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = u_xlat6.x;
  let x_370 : f32 = u_xlat6.z;
  u_xlat6.x = (x_368 * x_370);
  let x_373 : vec4<f32> = u_xlat6;
  let x_378 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat6;
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_381.x, x_381.y), vec2<f32>(x_383.x, x_383.y));
  let x_386 : f32 = u_xlat79;
  u_xlat79 = min(x_386, 1.0f);
  let x_388 : f32 = u_xlat79;
  u_xlat79 = (-(x_388) + 1.0f);
  let x_391 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_391);
  let x_393 : f32 = u_xlat79;
  u_xlat7.z = max(x_393, 0.0000000000000001f);
  let x_397 : vec4<f32> = u_xlat6;
  let x_400 : f32 = x_13.x_NormalScale0;
  let x_402 : vec2<f32> = (vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_400, x_400));
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_409 : vec4<f32> = vs_TEXCOORD1;
  let x_412 : f32 = x_112.x_GlobalMipBias.x;
  let x_413 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_409.z, x_409.w), x_412);
  let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.w);
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_418 : f32 = u_xlat6.x;
  let x_420 : f32 = u_xlat6.z;
  u_xlat6.x = (x_418 * x_420);
  let x_423 : vec4<f32> = u_xlat6;
  let x_426 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_429.x, x_429.y), vec2<f32>(x_431.x, x_431.y));
  let x_434 : f32 = u_xlat79;
  u_xlat79 = min(x_434, 1.0f);
  let x_436 : f32 = u_xlat79;
  u_xlat79 = (-(x_436) + 1.0f);
  let x_439 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_439);
  let x_441 : f32 = u_xlat79;
  u_xlat8.z = max(x_441, 0.0000000000000001f);
  let x_444 : vec4<f32> = u_xlat6;
  let x_448 : f32 = x_13.x_NormalScale1;
  let x_450 : f32 = x_13.x_NormalScale1;
  let x_451 : vec2<f32> = vec2<f32>(x_448, x_450);
  let x_455 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_451.x, x_451.y));
  let x_456 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat4;
  let x_460 : vec4<f32> = u_xlat8;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.y, x_458.y, x_458.y) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat4;
  let x_467 : vec4<f32> = u_xlat7;
  let x_470 : vec4<f32> = u_xlat6;
  let x_472 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.x, x_465.x) * vec3<f32>(x_467.x, x_467.y, x_467.z)) + vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_479 : vec4<f32> = vs_TEXCOORD2;
  let x_482 : f32 = x_112.x_GlobalMipBias.x;
  let x_483 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_479.x, x_479.y), x_482);
  let x_484 : vec3<f32> = vec3<f32>(x_483.x, x_483.y, x_483.w);
  let x_485 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_488 : f32 = u_xlat7.x;
  let x_490 : f32 = u_xlat7.z;
  u_xlat7.x = (x_488 * x_490);
  let x_493 : vec4<f32> = u_xlat7;
  let x_496 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat7;
  let x_501 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_499.x, x_499.y), vec2<f32>(x_501.x, x_501.y));
  let x_504 : f32 = u_xlat79;
  u_xlat79 = min(x_504, 1.0f);
  let x_506 : f32 = u_xlat79;
  u_xlat79 = (-(x_506) + 1.0f);
  let x_509 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_509);
  let x_511 : f32 = u_xlat79;
  u_xlat8.z = max(x_511, 0.0000000000000001f);
  let x_514 : vec4<f32> = u_xlat7;
  let x_518 : f32 = x_13.x_NormalScale2;
  let x_520 : f32 = x_13.x_NormalScale2;
  let x_521 : vec2<f32> = vec2<f32>(x_518, x_520);
  let x_525 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) * vec2<f32>(x_521.x, x_521.y));
  let x_526 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec4<f32> = u_xlat8;
  let x_533 : vec4<f32> = u_xlat6;
  let x_535 : vec3<f32> = ((vec3<f32>(x_528.z, x_528.z, x_528.z) * vec3<f32>(x_530.x, x_530.y, x_530.z)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_542 : vec4<f32> = vs_TEXCOORD2;
  let x_545 : f32 = x_112.x_GlobalMipBias.x;
  let x_546 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_542.z, x_542.w), x_545);
  let x_547 : vec3<f32> = vec3<f32>(x_546.x, x_546.y, x_546.w);
  let x_548 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_551 : f32 = u_xlat7.x;
  let x_553 : f32 = u_xlat7.z;
  u_xlat7.x = (x_551 * x_553);
  let x_556 : vec4<f32> = u_xlat7;
  let x_559 : vec2<f32> = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat7;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_562.x, x_562.y), vec2<f32>(x_564.x, x_564.y));
  let x_567 : f32 = u_xlat79;
  u_xlat79 = min(x_567, 1.0f);
  let x_569 : f32 = u_xlat79;
  u_xlat79 = (-(x_569) + 1.0f);
  let x_572 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_572);
  let x_574 : f32 = u_xlat79;
  u_xlat8.z = max(x_574, 0.0000000000000001f);
  let x_577 : vec4<f32> = u_xlat7;
  let x_581 : f32 = x_13.x_NormalScale3;
  let x_583 : f32 = x_13.x_NormalScale3;
  let x_584 : vec2<f32> = vec2<f32>(x_581, x_583);
  let x_588 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_584.x, x_584.y));
  let x_589 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : vec4<f32> = u_xlat8;
  let x_596 : vec4<f32> = u_xlat6;
  let x_598 : vec3<f32> = ((vec3<f32>(x_591.w, x_591.w, x_591.w) * vec3<f32>(x_593.x, x_593.y, x_593.z)) + vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat6.z;
  u_xlat6.w = (x_602 + 0.00000999999974737875f);
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_606.x, x_606.y, x_606.w), vec3<f32>(x_608.x, x_608.y, x_608.w));
  let x_611 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_611);
  let x_613 : f32 = u_xlat79;
  let x_615 : vec4<f32> = u_xlat6;
  let x_617 : vec3<f32> = (vec3<f32>(x_613, x_613, x_613) * vec3<f32>(x_615.x, x_615.y, x_615.w));
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_621 : f32 = x_13.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_621;
  let x_624 : f32 = x_13.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_624;
  let x_627 : f32 = x_13.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_627;
  let x_630 : f32 = x_13.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_630;
  let x_633 : f32 = x_13.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_633;
  let x_636 : f32 = x_13.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_636;
  let x_639 : f32 = x_13.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_639;
  let x_642 : f32 = x_13.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_642;
  let x_644 : vec4<f32> = u_xlat7;
  let x_645 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_644 + x_645);
  let x_648 : f32 = u_xlat0.z;
  u_xlat8.x = x_648;
  let x_651 : f32 = u_xlat1.z;
  u_xlat8.y = x_651;
  let x_654 : f32 = u_xlat2.z;
  u_xlat8.z = x_654;
  let x_657 : f32 = u_xlat3.y;
  u_xlat8.w = x_657;
  let x_659 : vec4<f32> = u_xlat9;
  let x_662 : f32 = x_13.x_Smoothness0;
  let x_664 : f32 = x_13.x_Smoothness1;
  let x_666 : f32 = x_13.x_Smoothness2;
  let x_668 : f32 = x_13.x_Smoothness3;
  let x_671 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_659) * vec4<f32>(x_662, x_664, x_666, x_668)) + x_671);
  let x_675 : f32 = x_13.x_LayerHasMask0;
  let x_678 : f32 = x_13.x_LayerHasMask1;
  let x_681 : f32 = x_13.x_LayerHasMask2;
  let x_684 : f32 = x_13.x_LayerHasMask3;
  let x_686 : vec4<f32> = u_xlat8;
  let x_688 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_675, x_678, x_681, x_684) * x_686) + x_688);
  let x_691 : vec4<f32> = u_xlat4;
  let x_692 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_691, x_692);
  let x_695 : f32 = u_xlat0.x;
  u_xlat8.x = x_695;
  let x_698 : f32 = u_xlat1.x;
  u_xlat8.y = x_698;
  let x_701 : f32 = u_xlat2.x;
  u_xlat8.z = x_701;
  let x_704 : f32 = u_xlat3.x;
  u_xlat8.w = x_704;
  let x_706 : vec4<f32> = u_xlat8;
  let x_709 : f32 = x_13.x_Metallic0;
  let x_712 : f32 = x_13.x_Metallic1;
  let x_715 : f32 = x_13.x_Metallic2;
  let x_718 : f32 = x_13.x_Metallic3;
  u_xlat8 = (x_706 + -(vec4<f32>(x_709, x_712, x_715, x_718)));
  let x_723 : f32 = x_13.x_LayerHasMask0;
  let x_725 : f32 = x_13.x_LayerHasMask1;
  let x_727 : f32 = x_13.x_LayerHasMask2;
  let x_729 : f32 = x_13.x_LayerHasMask3;
  let x_731 : vec4<f32> = u_xlat8;
  let x_734 : f32 = x_13.x_Metallic0;
  let x_736 : f32 = x_13.x_Metallic1;
  let x_738 : f32 = x_13.x_Metallic2;
  let x_740 : f32 = x_13.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_723, x_725, x_727, x_729) * x_731) + vec4<f32>(x_734, x_736, x_738, x_740));
  let x_743 : vec4<f32> = u_xlat4;
  let x_744 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_743, x_744);
  let x_748 : f32 = u_xlat0.y;
  u_xlat3.x = x_748;
  let x_751 : f32 = u_xlat1.y;
  u_xlat3.y = x_751;
  let x_754 : f32 = u_xlat2.y;
  u_xlat3.z = x_754;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_756) + x_758);
  let x_761 : f32 = x_13.x_LayerHasMask0;
  let x_763 : f32 = x_13.x_LayerHasMask1;
  let x_765 : f32 = x_13.x_LayerHasMask2;
  let x_767 : f32 = x_13.x_LayerHasMask3;
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_761, x_763, x_765, x_767) * x_769) + x_771);
  let x_774 : vec4<f32> = u_xlat4;
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_774, x_775);
  let x_777 : vec4<f32> = u_xlat6;
  let x_780 : vec4<f32> = vs_TEXCOORD5;
  let x_782 : vec3<f32> = (vec3<f32>(x_777.y, x_777.y, x_777.y) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat6;
  let x_788 : vec4<f32> = vs_TEXCOORD4;
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.x, x_785.x) * -(vec3<f32>(x_788.x, x_788.y, x_788.z))) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD3;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_797.z, x_797.z, x_797.z) * vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat1;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_808.x, x_808.y, x_808.z), vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_813);
  let x_815 : f32 = u_xlat79;
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = (vec3<f32>(x_815, x_815, x_815) * vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_827 : vec4<f32> = vs_TEXCOORD0;
  let x_830 : f32 = x_112.x_GlobalMipBias.x;
  let x_831 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_827.z, x_827.w), x_830);
  u_xlat2 = x_831;
  let x_836 : vec4<f32> = vs_TEXCOORD0;
  let x_839 : f32 = x_112.x_GlobalMipBias.x;
  let x_840 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_836.z, x_836.w), x_839);
  let x_841 : vec3<f32> = vec3<f32>(x_840.x, x_840.y, x_840.z);
  let x_842 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat2;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_849 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec4<f32> = u_xlat1;
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat79 = dot(vec3<f32>(x_851.x, x_851.y, x_851.z), vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : f32 = u_xlat79;
  u_xlat79 = (x_856 + 0.5f);
  let x_858 : f32 = u_xlat79;
  let x_860 : vec4<f32> = u_xlat3;
  let x_862 : vec3<f32> = (vec3<f32>(x_858, x_858, x_858) * vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_863 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_866 : f32 = u_xlat2.w;
  u_xlat79 = max(x_866, 0.00009999999747378752f);
  let x_869 : vec4<f32> = u_xlat2;
  let x_871 : f32 = u_xlat79;
  let x_873 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) / vec3<f32>(x_871, x_871, x_871));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_877 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_877) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_883 : f32 = u_xlat52;
  let x_884 : f32 = u_xlat79;
  u_xlat80 = (x_883 + -(x_884));
  let x_887 : f32 = u_xlat79;
  let x_889 : vec4<f32> = u_xlat5;
  let x_891 : vec3<f32> = (vec3<f32>(x_887, x_887, x_887) * vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat5;
  let x_898 : vec3<f32> = (vec3<f32>(x_894.x, x_894.y, x_894.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_899 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec3<f32> = u_xlat0;
  let x_903 : vec4<f32> = u_xlat4;
  let x_908 : vec3<f32> = ((vec3<f32>(x_901.x, x_901.x, x_901.x) * vec3<f32>(x_903.x, x_903.y, x_903.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_909 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : f32 = u_xlat52;
  u_xlat0.x = (-(x_911) + 1.0f);
  let x_916 : f32 = u_xlat0.x;
  let x_918 : f32 = u_xlat0.x;
  u_xlat52 = (x_916 * x_918);
  let x_920 : f32 = u_xlat52;
  u_xlat52 = max(x_920, 0.0078125f);
  let x_923 : f32 = u_xlat52;
  let x_924 : f32 = u_xlat52;
  u_xlat79 = (x_923 * x_924);
  let x_926 : f32 = u_xlat80;
  u_xlat80 = (x_926 + 1.0f);
  let x_928 : f32 = u_xlat80;
  u_xlat80 = clamp(x_928, 0.0f, 1.0f);
  let x_931 : f32 = u_xlat52;
  u_xlat81 = ((x_931 * 4.0f) + 2.0f);
  let x_934 : f32 = u_xlat26;
  u_xlat26 = min(x_934, 1.0f);
  let x_947 : f32 = x_945.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_947);
  let x_949 : bool = u_xlatb82;
  if (x_949) {
    let x_953 : f32 = x_945.x_MainLightShadowParams.y;
    u_xlatb82 = (x_953 == 1.0f);
    let x_955 : bool = u_xlatb82;
    if (x_955) {
      let x_959 : vec4<f32> = vs_TEXCOORD8;
      let x_962 : vec4<f32> = x_945.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_959.x, x_959.y, x_959.x, x_959.y) + x_962);
      let x_966 : vec4<f32> = u_xlat5;
      let x_967 : vec2<f32> = vec2<f32>(x_966.x, x_966.y);
      let x_970 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_967.x, x_967.y, x_970);
      let x_982 : vec3<f32> = txVec0;
      let x_984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_982.xy, x_982.z);
      u_xlat6.x = x_984;
      let x_987 : vec4<f32> = u_xlat5;
      let x_988 : vec2<f32> = vec2<f32>(x_987.z, x_987.w);
      let x_990 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_988.x, x_988.y, x_990);
      let x_997 : vec3<f32> = txVec1;
      let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_997.xy, x_997.z);
      u_xlat6.y = x_999;
      let x_1001 : vec4<f32> = vs_TEXCOORD8;
      let x_1004 : vec4<f32> = x_945.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y) + x_1004);
      let x_1007 : vec4<f32> = u_xlat5;
      let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
      let x_1010 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
      let x_1017 : vec3<f32> = txVec2;
      let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
      u_xlat6.z = x_1019;
      let x_1022 : vec4<f32> = u_xlat5;
      let x_1023 : vec2<f32> = vec2<f32>(x_1022.z, x_1022.w);
      let x_1025 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1023.x, x_1023.y, x_1025);
      let x_1032 : vec3<f32> = txVec3;
      let x_1034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1032.xy, x_1032.z);
      u_xlat6.w = x_1034;
      let x_1037 : vec4<f32> = u_xlat6;
      u_xlat82 = dot(x_1037, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1044 : f32 = x_945.x_MainLightShadowParams.y;
      u_xlatb5 = (x_1044 == 2.0f);
      let x_1046 : bool = u_xlatb5;
      if (x_1046) {
        let x_1049 : vec4<f32> = vs_TEXCOORD8;
        let x_1052 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(x_1052.z, x_1052.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1056 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat5;
        let x_1060 : vec2<f32> = floor(vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1065 : vec4<f32> = vs_TEXCOORD8;
        let x_1068 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1068.z, x_1068.w)) + -(vec2<f32>(x_1071.x, x_1071.y)));
        let x_1075 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_1075.x, x_1075.x, x_1075.y, x_1075.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1079 : vec4<f32> = u_xlat6;
        let x_1081 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1079.x, x_1079.x, x_1079.z, x_1079.z) * vec4<f32>(x_1081.x, x_1081.x, x_1081.z, x_1081.z));
        let x_1084 : vec4<f32> = u_xlat7;
        let x_1088 : vec2<f32> = (vec2<f32>(x_1084.y, x_1084.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1089 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1088.x, x_1089.y, x_1088.y, x_1089.w);
        let x_1091 : vec4<f32> = u_xlat7;
        let x_1094 : vec2<f32> = u_xlat57;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1091.x, x_1091.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1094));
        let x_1097 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1100 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_1100) + vec2<f32>(1.0f, 1.0f));
        let x_1104 : vec2<f32> = u_xlat57;
        let x_1106 : vec2<f32> = min(x_1104, vec2<f32>(0.0f, 0.0f));
        let x_1107 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1109 : vec4<f32> = u_xlat8;
        let x_1112 : vec4<f32> = u_xlat8;
        let x_1115 : vec2<f32> = u_xlat59;
        let x_1116 : vec2<f32> = ((-(vec2<f32>(x_1109.x, x_1109.y)) * vec2<f32>(x_1112.x, x_1112.y)) + x_1115);
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_1119, vec2<f32>(0.0f, 0.0f));
        let x_1121 : vec2<f32> = u_xlat57;
        let x_1123 : vec2<f32> = u_xlat57;
        let x_1125 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_1121) * x_1123) + vec2<f32>(x_1125.y, x_1125.w));
        let x_1128 : vec4<f32> = u_xlat8;
        let x_1130 : vec2<f32> = (vec2<f32>(x_1128.x, x_1128.y) + vec2<f32>(1.0f, 1.0f));
        let x_1131 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_1133 + vec2<f32>(1.0f, 1.0f));
        let x_1135 : vec4<f32> = u_xlat7;
        let x_1139 : vec2<f32> = (vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec2<f32> = u_xlat59;
        let x_1143 : vec2<f32> = (x_1142 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1144 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1146 : vec4<f32> = u_xlat8;
        let x_1148 : vec2<f32> = (vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1151 : vec2<f32> = u_xlat57;
        let x_1152 : vec2<f32> = (x_1151 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_1155.y, x_1155.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1159 : f32 = u_xlat8.x;
        u_xlat9.z = x_1159;
        let x_1162 : f32 = u_xlat57.x;
        u_xlat9.w = x_1162;
        let x_1165 : f32 = u_xlat10.x;
        u_xlat7.z = x_1165;
        let x_1168 : f32 = u_xlat6.x;
        u_xlat7.w = x_1168;
        let x_1170 : vec4<f32> = u_xlat7;
        let x_1172 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_1170.z, x_1170.w, x_1170.x, x_1170.z) + vec4<f32>(x_1172.z, x_1172.w, x_1172.x, x_1172.z));
        let x_1176 : f32 = u_xlat9.y;
        u_xlat8.z = x_1176;
        let x_1179 : f32 = u_xlat57.y;
        u_xlat8.w = x_1179;
        let x_1182 : f32 = u_xlat7.y;
        u_xlat10.z = x_1182;
        let x_1185 : f32 = u_xlat6.z;
        u_xlat10.w = x_1185;
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1189 : vec4<f32> = u_xlat10;
        let x_1191 : vec3<f32> = (vec3<f32>(x_1187.z, x_1187.y, x_1187.w) + vec3<f32>(x_1189.z, x_1189.y, x_1189.w));
        let x_1192 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat7;
        let x_1196 : vec4<f32> = u_xlat11;
        let x_1198 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.z, x_1194.w) / vec3<f32>(x_1196.z, x_1196.w, x_1196.y));
        let x_1199 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
        let x_1201 : vec4<f32> = u_xlat7;
        let x_1206 : vec3<f32> = (vec3<f32>(x_1201.x, x_1201.y, x_1201.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1211 : vec4<f32> = u_xlat6;
        let x_1213 : vec3<f32> = (vec3<f32>(x_1209.z, x_1209.y, x_1209.w) / vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
        let x_1214 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat8;
        let x_1218 : vec3<f32> = (vec3<f32>(x_1216.x, x_1216.y, x_1216.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1219 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat7;
        let x_1224 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1226 : vec3<f32> = (vec3<f32>(x_1221.y, x_1221.x, x_1221.z) * vec3<f32>(x_1224.x, x_1224.x, x_1224.x));
        let x_1227 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
        let x_1229 : vec4<f32> = u_xlat8;
        let x_1232 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1234 : vec3<f32> = (vec3<f32>(x_1229.x, x_1229.y, x_1229.z) * vec3<f32>(x_1232.y, x_1232.y, x_1232.y));
        let x_1235 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
        let x_1238 : f32 = u_xlat8.x;
        u_xlat7.w = x_1238;
        let x_1240 : vec4<f32> = u_xlat5;
        let x_1243 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1246 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1240.x, x_1240.y, x_1240.x, x_1240.y) * vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y)) + vec4<f32>(x_1246.y, x_1246.w, x_1246.x, x_1246.w));
        let x_1249 : vec4<f32> = u_xlat5;
        let x_1252 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1255 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1249.x, x_1249.y) * vec2<f32>(x_1252.x, x_1252.y)) + vec2<f32>(x_1255.z, x_1255.w));
        let x_1259 : f32 = u_xlat7.y;
        u_xlat8.w = x_1259;
        let x_1261 : vec4<f32> = u_xlat8;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.y, x_1261.z);
        let x_1263 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1263.x, x_1262.x, x_1263.z, x_1262.y);
        let x_1265 : vec4<f32> = u_xlat5;
        let x_1268 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.y) * vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y)) + vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat5;
        let x_1277 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.y) * vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y)) + vec4<f32>(x_1280.w, x_1280.y, x_1280.w, x_1280.z));
        let x_1283 : vec4<f32> = u_xlat5;
        let x_1286 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1289 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y) * vec4<f32>(x_1286.x, x_1286.y, x_1286.x, x_1286.y)) + vec4<f32>(x_1289.x, x_1289.w, x_1289.z, x_1289.w));
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1294 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_1292.x, x_1292.x, x_1292.x, x_1292.y) * vec4<f32>(x_1294.z, x_1294.w, x_1294.y, x_1294.z));
        let x_1297 : vec4<f32> = u_xlat6;
        let x_1299 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1297.y, x_1297.y, x_1297.z, x_1297.z) * x_1299);
        let x_1302 : f32 = u_xlat6.z;
        let x_1304 : f32 = u_xlat11.y;
        u_xlat5.x = (x_1302 * x_1304);
        let x_1308 : vec4<f32> = u_xlat9;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.x, x_1308.y);
        let x_1311 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1319 : vec3<f32> = txVec4;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1319.xy, x_1319.z);
        u_xlat31.x = x_1321;
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec5;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1334.xy, x_1334.z);
        u_xlat6.x = x_1336;
        let x_1339 : f32 = u_xlat6.x;
        let x_1341 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1339 * x_1341);
        let x_1345 : f32 = u_xlat12.x;
        let x_1347 : f32 = u_xlat31.x;
        let x_1350 : f32 = u_xlat6.x;
        u_xlat31.x = ((x_1345 * x_1347) + x_1350);
        let x_1354 : vec2<f32> = u_xlat57;
        let x_1356 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec6;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat57.x = x_1365;
        let x_1368 : f32 = u_xlat12.z;
        let x_1370 : f32 = u_xlat57.x;
        let x_1373 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1368 * x_1370) + x_1373);
        let x_1377 : vec4<f32> = u_xlat8;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.x, x_1377.y);
        let x_1380 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec7;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1387.xy, x_1387.z);
        u_xlat57.x = x_1389;
        let x_1392 : f32 = u_xlat12.w;
        let x_1394 : f32 = u_xlat57.x;
        let x_1397 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1392 * x_1394) + x_1397);
        let x_1401 : vec4<f32> = u_xlat10;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec8;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat57.x = x_1413;
        let x_1416 : f32 = u_xlat13.x;
        let x_1418 : f32 = u_xlat57.x;
        let x_1421 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1416 * x_1418) + x_1421);
        let x_1425 : vec4<f32> = u_xlat10;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.z, x_1425.w);
        let x_1428 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec9;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1435.xy, x_1435.z);
        u_xlat57.x = x_1437;
        let x_1440 : f32 = u_xlat13.y;
        let x_1442 : f32 = u_xlat57.x;
        let x_1445 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1440 * x_1442) + x_1445);
        let x_1449 : vec4<f32> = u_xlat8;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.z, x_1449.w);
        let x_1452 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec10;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1459.xy, x_1459.z);
        u_xlat57.x = x_1461;
        let x_1464 : f32 = u_xlat13.z;
        let x_1466 : f32 = u_xlat57.x;
        let x_1469 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1464 * x_1466) + x_1469);
        let x_1473 : vec4<f32> = u_xlat7;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.x, x_1473.y);
        let x_1476 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec11;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1483.xy, x_1483.z);
        u_xlat57.x = x_1485;
        let x_1488 : f32 = u_xlat13.w;
        let x_1490 : f32 = u_xlat57.x;
        let x_1493 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1488 * x_1490) + x_1493);
        let x_1497 : vec4<f32> = u_xlat7;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.z, x_1497.w);
        let x_1500 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec12;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1507.xy, x_1507.z);
        u_xlat57.x = x_1509;
        let x_1512 : f32 = u_xlat5.x;
        let x_1514 : f32 = u_xlat57.x;
        let x_1517 : f32 = u_xlat31.x;
        u_xlat82 = ((x_1512 * x_1514) + x_1517);
      } else {
        let x_1520 : vec4<f32> = vs_TEXCOORD8;
        let x_1523 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1526 : vec2<f32> = ((vec2<f32>(x_1520.x, x_1520.y) * vec2<f32>(x_1523.z, x_1523.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1527 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1526.x, x_1526.y, x_1527.z, x_1527.w);
        let x_1529 : vec4<f32> = u_xlat5;
        let x_1531 : vec2<f32> = floor(vec2<f32>(x_1529.x, x_1529.y));
        let x_1532 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1531.x, x_1531.y, x_1532.z, x_1532.w);
        let x_1534 : vec4<f32> = vs_TEXCOORD8;
        let x_1537 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1540 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_1534.x, x_1534.y) * vec2<f32>(x_1537.z, x_1537.w)) + -(vec2<f32>(x_1540.x, x_1540.y)));
        let x_1544 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_1544.x, x_1544.x, x_1544.y, x_1544.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1547 : vec4<f32> = u_xlat6;
        let x_1549 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1547.x, x_1547.x, x_1547.z, x_1547.z) * vec4<f32>(x_1549.x, x_1549.x, x_1549.z, x_1549.z));
        let x_1552 : vec4<f32> = u_xlat7;
        let x_1556 : vec2<f32> = (vec2<f32>(x_1552.y, x_1552.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1557 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1557.x, x_1556.x, x_1557.z, x_1556.y);
        let x_1559 : vec4<f32> = u_xlat7;
        let x_1562 : vec2<f32> = u_xlat57;
        let x_1564 : vec2<f32> = ((vec2<f32>(x_1559.x, x_1559.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1562));
        let x_1565 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1564.x, x_1565.y, x_1564.y, x_1565.w);
        let x_1567 : vec2<f32> = u_xlat57;
        let x_1569 : vec2<f32> = (-(x_1567) + vec2<f32>(1.0f, 1.0f));
        let x_1570 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1569.x, x_1569.y, x_1570.z, x_1570.w);
        let x_1572 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1572, vec2<f32>(0.0f, 0.0f));
        let x_1574 : vec2<f32> = u_xlat59;
        let x_1576 : vec2<f32> = u_xlat59;
        let x_1578 : vec4<f32> = u_xlat7;
        let x_1580 : vec2<f32> = ((-(x_1574) * x_1576) + vec2<f32>(x_1578.x, x_1578.y));
        let x_1581 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1580.x, x_1580.y, x_1581.z, x_1581.w);
        let x_1583 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1583, vec2<f32>(0.0f, 0.0f));
        let x_1586 : vec2<f32> = u_xlat59;
        let x_1588 : vec2<f32> = u_xlat59;
        let x_1590 : vec4<f32> = u_xlat6;
        let x_1592 : vec2<f32> = ((-(x_1586) * x_1588) + vec2<f32>(x_1590.y, x_1590.w));
        let x_1593 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1592.x, x_1593.y, x_1592.y);
        let x_1595 : vec4<f32> = u_xlat7;
        let x_1597 : vec2<f32> = (vec2<f32>(x_1595.x, x_1595.y) + vec2<f32>(2.0f, 2.0f));
        let x_1598 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1597.x, x_1597.y, x_1598.z, x_1598.w);
        let x_1600 : vec3<f32> = u_xlat32;
        let x_1602 : vec2<f32> = (vec2<f32>(x_1600.x, x_1600.z) + vec2<f32>(2.0f, 2.0f));
        let x_1603 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1603.x, x_1602.x, x_1603.z, x_1602.y);
        let x_1606 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1606 * 0.08163200318813323975f);
        let x_1610 : vec4<f32> = u_xlat6;
        let x_1613 : vec3<f32> = (vec3<f32>(x_1610.z, x_1610.x, x_1610.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1614.w);
        let x_1616 : vec4<f32> = u_xlat7;
        let x_1619 : vec2<f32> = (vec2<f32>(x_1616.x, x_1616.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1620 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1619.x, x_1619.y, x_1620.z, x_1620.w);
        let x_1623 : f32 = u_xlat10.y;
        u_xlat9.x = x_1623;
        let x_1625 : vec2<f32> = u_xlat57;
        let x_1632 : vec2<f32> = ((vec2<f32>(x_1625.x, x_1625.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1633 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1633.x, x_1632.x, x_1633.z, x_1632.y);
        let x_1635 : vec2<f32> = u_xlat57;
        let x_1639 : vec2<f32> = ((vec2<f32>(x_1635.x, x_1635.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1640 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1639.x, x_1640.y, x_1639.y, x_1640.w);
        let x_1643 : f32 = u_xlat6.x;
        u_xlat7.y = x_1643;
        let x_1646 : f32 = u_xlat8.y;
        u_xlat7.w = x_1646;
        let x_1648 : vec4<f32> = u_xlat7;
        let x_1649 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1648 + x_1649);
        let x_1651 : vec2<f32> = u_xlat57;
        let x_1654 : vec2<f32> = ((vec2<f32>(x_1651.y, x_1651.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1655 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1655.x, x_1654.x, x_1655.z, x_1654.y);
        let x_1657 : vec2<f32> = u_xlat57;
        let x_1660 : vec2<f32> = ((vec2<f32>(x_1657.y, x_1657.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1661 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1660.x, x_1661.y, x_1660.y, x_1661.w);
        let x_1664 : f32 = u_xlat6.y;
        u_xlat8.y = x_1664;
        let x_1666 : vec4<f32> = u_xlat8;
        let x_1667 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1666 + x_1667);
        let x_1669 : vec4<f32> = u_xlat7;
        let x_1670 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1669 / x_1670);
        let x_1672 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1672 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1678 : vec4<f32> = u_xlat8;
        let x_1679 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1678 / x_1679);
        let x_1681 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1681 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1683 : vec4<f32> = u_xlat7;
        let x_1686 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1683.w, x_1683.x, x_1683.y, x_1683.z) * vec4<f32>(x_1686.x, x_1686.x, x_1686.x, x_1686.x));
        let x_1689 : vec4<f32> = u_xlat8;
        let x_1692 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1689.x, x_1689.w, x_1689.y, x_1689.z) * vec4<f32>(x_1692.y, x_1692.y, x_1692.y, x_1692.y));
        let x_1695 : vec4<f32> = u_xlat7;
        let x_1696 : vec3<f32> = vec3<f32>(x_1695.y, x_1695.z, x_1695.w);
        let x_1697 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1696.x, x_1697.y, x_1696.y, x_1696.z);
        let x_1700 : f32 = u_xlat8.x;
        u_xlat10.y = x_1700;
        let x_1702 : vec4<f32> = u_xlat5;
        let x_1705 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1708 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1702.x, x_1702.y, x_1702.x, x_1702.y) * vec4<f32>(x_1705.x, x_1705.y, x_1705.x, x_1705.y)) + vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1708.y));
        let x_1711 : vec4<f32> = u_xlat5;
        let x_1714 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1717 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_1711.x, x_1711.y) * vec2<f32>(x_1714.x, x_1714.y)) + vec2<f32>(x_1717.w, x_1717.y));
        let x_1721 : f32 = u_xlat10.y;
        u_xlat7.y = x_1721;
        let x_1724 : f32 = u_xlat8.z;
        u_xlat10.y = x_1724;
        let x_1726 : vec4<f32> = u_xlat5;
        let x_1729 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1732 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1726.x, x_1726.y, x_1726.x, x_1726.y) * vec4<f32>(x_1729.x, x_1729.y, x_1729.x, x_1729.y)) + vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1732.y));
        let x_1735 : vec4<f32> = u_xlat5;
        let x_1738 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1741 : vec4<f32> = u_xlat10;
        let x_1743 : vec2<f32> = ((vec2<f32>(x_1735.x, x_1735.y) * vec2<f32>(x_1738.x, x_1738.y)) + vec2<f32>(x_1741.w, x_1741.y));
        let x_1744 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
        let x_1747 : f32 = u_xlat10.y;
        u_xlat7.z = x_1747;
        let x_1750 : vec4<f32> = u_xlat5;
        let x_1753 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1756 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1750.x, x_1750.y, x_1750.x, x_1750.y) * vec4<f32>(x_1753.x, x_1753.y, x_1753.x, x_1753.y)) + vec4<f32>(x_1756.x, x_1756.y, x_1756.x, x_1756.z));
        let x_1760 : f32 = u_xlat8.w;
        u_xlat10.y = x_1760;
        let x_1763 : vec4<f32> = u_xlat5;
        let x_1766 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1769 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1763.x, x_1763.y, x_1763.x, x_1763.y) * vec4<f32>(x_1766.x, x_1766.y, x_1766.x, x_1766.y)) + vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1769.y));
        let x_1773 : vec4<f32> = u_xlat5;
        let x_1776 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1779 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1773.x, x_1773.y) * vec2<f32>(x_1776.x, x_1776.y)) + vec2<f32>(x_1779.w, x_1779.y));
        let x_1783 : f32 = u_xlat10.y;
        u_xlat7.w = x_1783;
        let x_1786 : vec4<f32> = u_xlat5;
        let x_1789 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1792 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1786.x, x_1786.y) * vec2<f32>(x_1789.x, x_1789.y)) + vec2<f32>(x_1792.x, x_1792.w));
        let x_1795 : vec4<f32> = u_xlat10;
        let x_1796 : vec3<f32> = vec3<f32>(x_1795.x, x_1795.z, x_1795.w);
        let x_1797 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1796.x, x_1797.y, x_1796.y, x_1796.z);
        let x_1799 : vec4<f32> = u_xlat5;
        let x_1802 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1805 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1799.x, x_1799.y, x_1799.x, x_1799.y) * vec4<f32>(x_1802.x, x_1802.y, x_1802.x, x_1802.y)) + vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1805.y));
        let x_1809 : vec4<f32> = u_xlat5;
        let x_1812 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1815 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1809.x, x_1809.y) * vec2<f32>(x_1812.x, x_1812.y)) + vec2<f32>(x_1815.w, x_1815.y));
        let x_1819 : f32 = u_xlat7.x;
        u_xlat8.x = x_1819;
        let x_1821 : vec4<f32> = u_xlat5;
        let x_1824 : vec4<f32> = x_945.x_MainLightShadowmapSize;
        let x_1827 : vec4<f32> = u_xlat8;
        let x_1829 : vec2<f32> = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(x_1824.x, x_1824.y)) + vec2<f32>(x_1827.x, x_1827.y));
        let x_1830 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1829.x, x_1829.y, x_1830.z, x_1830.w);
        let x_1833 : vec4<f32> = u_xlat6;
        let x_1835 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1833.x, x_1833.x, x_1833.x, x_1833.x) * x_1835);
        let x_1838 : vec4<f32> = u_xlat6;
        let x_1840 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1838.y, x_1838.y, x_1838.y, x_1838.y) * x_1840);
        let x_1843 : vec4<f32> = u_xlat6;
        let x_1845 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1843.z, x_1843.z, x_1843.z, x_1843.z) * x_1845);
        let x_1847 : vec4<f32> = u_xlat6;
        let x_1849 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1847.w, x_1847.w, x_1847.w, x_1847.w) * x_1849);
        let x_1852 : vec4<f32> = u_xlat11;
        let x_1853 : vec2<f32> = vec2<f32>(x_1852.x, x_1852.y);
        let x_1855 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1853.x, x_1853.y, x_1855);
        let x_1862 : vec3<f32> = txVec13;
        let x_1864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1862.xy, x_1862.z);
        u_xlat7.x = x_1864;
        let x_1867 : vec4<f32> = u_xlat11;
        let x_1868 : vec2<f32> = vec2<f32>(x_1867.z, x_1867.w);
        let x_1870 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1868.x, x_1868.y, x_1870);
        let x_1878 : vec3<f32> = txVec14;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1878.xy, x_1878.z);
        u_xlat85 = x_1880;
        let x_1881 : f32 = u_xlat85;
        let x_1883 : f32 = u_xlat16.y;
        u_xlat85 = (x_1881 * x_1883);
        let x_1886 : f32 = u_xlat16.x;
        let x_1888 : f32 = u_xlat7.x;
        let x_1890 : f32 = u_xlat85;
        u_xlat7.x = ((x_1886 * x_1888) + x_1890);
        let x_1894 : vec2<f32> = u_xlat57;
        let x_1896 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec15;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1903.xy, x_1903.z);
        u_xlat57.x = x_1905;
        let x_1908 : f32 = u_xlat16.z;
        let x_1910 : f32 = u_xlat57.x;
        let x_1913 : f32 = u_xlat7.x;
        u_xlat57.x = ((x_1908 * x_1910) + x_1913);
        let x_1917 : vec4<f32> = u_xlat14;
        let x_1918 : vec2<f32> = vec2<f32>(x_1917.x, x_1917.y);
        let x_1920 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1918.x, x_1918.y, x_1920);
        let x_1928 : vec3<f32> = txVec16;
        let x_1930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1928.xy, x_1928.z);
        u_xlat83 = x_1930;
        let x_1932 : f32 = u_xlat16.w;
        let x_1933 : f32 = u_xlat83;
        let x_1936 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1932 * x_1933) + x_1936);
        let x_1940 : vec4<f32> = u_xlat12;
        let x_1941 : vec2<f32> = vec2<f32>(x_1940.x, x_1940.y);
        let x_1943 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec17;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1950.xy, x_1950.z);
        u_xlat83 = x_1952;
        let x_1954 : f32 = u_xlat17.x;
        let x_1955 : f32 = u_xlat83;
        let x_1958 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1954 * x_1955) + x_1958);
        let x_1962 : vec4<f32> = u_xlat12;
        let x_1963 : vec2<f32> = vec2<f32>(x_1962.z, x_1962.w);
        let x_1965 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1963.x, x_1963.y, x_1965);
        let x_1972 : vec3<f32> = txVec18;
        let x_1974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1972.xy, x_1972.z);
        u_xlat83 = x_1974;
        let x_1976 : f32 = u_xlat17.y;
        let x_1977 : f32 = u_xlat83;
        let x_1980 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1976 * x_1977) + x_1980);
        let x_1984 : vec4<f32> = u_xlat13;
        let x_1985 : vec2<f32> = vec2<f32>(x_1984.x, x_1984.y);
        let x_1987 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1985.x, x_1985.y, x_1987);
        let x_1994 : vec3<f32> = txVec19;
        let x_1996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1994.xy, x_1994.z);
        u_xlat83 = x_1996;
        let x_1998 : f32 = u_xlat17.z;
        let x_1999 : f32 = u_xlat83;
        let x_2002 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_1998 * x_1999) + x_2002);
        let x_2006 : vec4<f32> = u_xlat14;
        let x_2007 : vec2<f32> = vec2<f32>(x_2006.z, x_2006.w);
        let x_2009 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2007.x, x_2007.y, x_2009);
        let x_2016 : vec3<f32> = txVec20;
        let x_2018 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2016.xy, x_2016.z);
        u_xlat83 = x_2018;
        let x_2020 : f32 = u_xlat17.w;
        let x_2021 : f32 = u_xlat83;
        let x_2024 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2020 * x_2021) + x_2024);
        let x_2028 : vec4<f32> = u_xlat15;
        let x_2029 : vec2<f32> = vec2<f32>(x_2028.x, x_2028.y);
        let x_2031 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2029.x, x_2029.y, x_2031);
        let x_2038 : vec3<f32> = txVec21;
        let x_2040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2038.xy, x_2038.z);
        u_xlat83 = x_2040;
        let x_2042 : f32 = u_xlat18.x;
        let x_2043 : f32 = u_xlat83;
        let x_2046 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2042 * x_2043) + x_2046);
        let x_2050 : vec4<f32> = u_xlat15;
        let x_2051 : vec2<f32> = vec2<f32>(x_2050.z, x_2050.w);
        let x_2053 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2051.x, x_2051.y, x_2053);
        let x_2060 : vec3<f32> = txVec22;
        let x_2062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2060.xy, x_2060.z);
        u_xlat83 = x_2062;
        let x_2064 : f32 = u_xlat18.y;
        let x_2065 : f32 = u_xlat83;
        let x_2068 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2064 * x_2065) + x_2068);
        let x_2072 : vec2<f32> = u_xlat33;
        let x_2074 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
        let x_2081 : vec3<f32> = txVec23;
        let x_2083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2081.xy, x_2081.z);
        u_xlat83 = x_2083;
        let x_2085 : f32 = u_xlat18.z;
        let x_2086 : f32 = u_xlat83;
        let x_2089 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2085 * x_2086) + x_2089);
        let x_2093 : vec2<f32> = u_xlat65;
        let x_2095 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2093.x, x_2093.y, x_2095);
        let x_2102 : vec3<f32> = txVec24;
        let x_2104 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2102.xy, x_2102.z);
        u_xlat83 = x_2104;
        let x_2106 : f32 = u_xlat18.w;
        let x_2107 : f32 = u_xlat83;
        let x_2110 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2106 * x_2107) + x_2110);
        let x_2114 : vec4<f32> = u_xlat10;
        let x_2115 : vec2<f32> = vec2<f32>(x_2114.x, x_2114.y);
        let x_2117 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2115.x, x_2115.y, x_2117);
        let x_2124 : vec3<f32> = txVec25;
        let x_2126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2124.xy, x_2124.z);
        u_xlat83 = x_2126;
        let x_2128 : f32 = u_xlat6.x;
        let x_2129 : f32 = u_xlat83;
        let x_2132 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2128 * x_2129) + x_2132);
        let x_2136 : vec4<f32> = u_xlat10;
        let x_2137 : vec2<f32> = vec2<f32>(x_2136.z, x_2136.w);
        let x_2139 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
        let x_2146 : vec3<f32> = txVec26;
        let x_2148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2146.xy, x_2146.z);
        u_xlat83 = x_2148;
        let x_2150 : f32 = u_xlat6.y;
        let x_2151 : f32 = u_xlat83;
        let x_2154 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2150 * x_2151) + x_2154);
        let x_2158 : vec2<f32> = u_xlat60;
        let x_2160 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2158.x, x_2158.y, x_2160);
        let x_2167 : vec3<f32> = txVec27;
        let x_2169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2167.xy, x_2167.z);
        u_xlat83 = x_2169;
        let x_2171 : f32 = u_xlat6.z;
        let x_2172 : f32 = u_xlat83;
        let x_2175 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2171 * x_2172) + x_2175);
        let x_2179 : vec4<f32> = u_xlat5;
        let x_2180 : vec2<f32> = vec2<f32>(x_2179.x, x_2179.y);
        let x_2182 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2180.x, x_2180.y, x_2182);
        let x_2189 : vec3<f32> = txVec28;
        let x_2191 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2189.xy, x_2189.z);
        u_xlat5.x = x_2191;
        let x_2194 : f32 = u_xlat6.w;
        let x_2196 : f32 = u_xlat5.x;
        let x_2199 : f32 = u_xlat57.x;
        u_xlat82 = ((x_2194 * x_2196) + x_2199);
      }
    }
  } else {
    let x_2203 : vec4<f32> = vs_TEXCOORD8;
    let x_2204 : vec2<f32> = vec2<f32>(x_2203.x, x_2203.y);
    let x_2206 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2204.x, x_2204.y, x_2206);
    let x_2213 : vec3<f32> = txVec29;
    let x_2215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2213.xy, x_2213.z);
    u_xlat82 = x_2215;
  }
  let x_2217 : f32 = x_945.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_2217) + 1.0f);
  let x_2221 : f32 = u_xlat82;
  let x_2223 : f32 = x_945.x_MainLightShadowParams.x;
  let x_2226 : f32 = u_xlat5.x;
  u_xlat82 = ((x_2221 * x_2223) + x_2226);
  let x_2229 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_2229);
  let x_2235 : f32 = vs_TEXCOORD8.z;
  u_xlatb31.x = (x_2235 >= 1.0f);
  let x_2239 : bool = u_xlatb31.x;
  let x_2240 : bool = u_xlatb5;
  u_xlatb5 = (x_2239 | x_2240);
  let x_2242 : bool = u_xlatb5;
  let x_2243 : f32 = u_xlat82;
  u_xlat82 = select(x_2243, 1.0f, x_2242);
  let x_2247 : vec3<f32> = vs_TEXCOORD7;
  let x_2250 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  let x_2252 : vec3<f32> = (x_2247 + -(x_2250));
  let x_2253 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2252.x, x_2252.y, x_2252.z, x_2253.w);
  let x_2255 : vec4<f32> = u_xlat5;
  let x_2257 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_2255.x, x_2255.y, x_2255.z), vec3<f32>(x_2257.x, x_2257.y, x_2257.z));
  let x_2262 : f32 = u_xlat5.x;
  let x_2264 : f32 = x_945.x_MainLightShadowParams.z;
  let x_2267 : f32 = x_945.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_2262 * x_2264) + x_2267);
  let x_2271 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_2271, 0.0f, 1.0f);
  let x_2274 : f32 = u_xlat82;
  u_xlat57.x = (-(x_2274) + 1.0f);
  let x_2279 : f32 = u_xlat31.x;
  let x_2281 : f32 = u_xlat57.x;
  let x_2283 : f32 = u_xlat82;
  u_xlat82 = ((x_2279 * x_2281) + x_2283);
  let x_2292 : f32 = x_2290.x_MainLightCookieTextureFormat;
  u_xlatb31.x = !((x_2292 == -1.0f));
  let x_2296 : bool = u_xlatb31.x;
  if (x_2296) {
    let x_2299 : vec3<f32> = vs_TEXCOORD7;
    let x_2302 : vec4<f32> = x_2290.x_MainLightWorldToLight[1i];
    let x_2304 : vec2<f32> = (vec2<f32>(x_2299.y, x_2299.y) * vec2<f32>(x_2302.x, x_2302.y));
    let x_2305 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2304.x, x_2304.y, x_2305.z);
    let x_2308 : vec4<f32> = x_2290.x_MainLightWorldToLight[0i];
    let x_2310 : vec3<f32> = vs_TEXCOORD7;
    let x_2313 : vec3<f32> = u_xlat31;
    let x_2315 : vec2<f32> = ((vec2<f32>(x_2308.x, x_2308.y) * vec2<f32>(x_2310.x, x_2310.x)) + vec2<f32>(x_2313.x, x_2313.y));
    let x_2316 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2315.x, x_2315.y, x_2316.z);
    let x_2319 : vec4<f32> = x_2290.x_MainLightWorldToLight[2i];
    let x_2321 : vec3<f32> = vs_TEXCOORD7;
    let x_2324 : vec3<f32> = u_xlat31;
    let x_2326 : vec2<f32> = ((vec2<f32>(x_2319.x, x_2319.y) * vec2<f32>(x_2321.z, x_2321.z)) + vec2<f32>(x_2324.x, x_2324.y));
    let x_2327 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2326.x, x_2326.y, x_2327.z);
    let x_2329 : vec3<f32> = u_xlat31;
    let x_2332 : vec4<f32> = x_2290.x_MainLightWorldToLight[3i];
    let x_2334 : vec2<f32> = (vec2<f32>(x_2329.x, x_2329.y) + vec2<f32>(x_2332.x, x_2332.y));
    let x_2335 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2334.x, x_2334.y, x_2335.z);
    let x_2337 : vec3<f32> = u_xlat31;
    let x_2340 : vec2<f32> = ((vec2<f32>(x_2337.x, x_2337.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2341 : vec3<f32> = u_xlat31;
    u_xlat31 = vec3<f32>(x_2340.x, x_2340.y, x_2341.z);
    let x_2348 : vec3<f32> = u_xlat31;
    let x_2351 : f32 = x_112.x_GlobalMipBias.x;
    let x_2352 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2348.x, x_2348.y), x_2351);
    u_xlat6 = x_2352;
    let x_2354 : f32 = x_2290.x_MainLightCookieTextureFormat;
    let x_2356 : f32 = x_2290.x_MainLightCookieTextureFormat;
    let x_2358 : f32 = x_2290.x_MainLightCookieTextureFormat;
    let x_2360 : f32 = x_2290.x_MainLightCookieTextureFormat;
    let x_2361 : vec4<f32> = vec4<f32>(x_2354, x_2356, x_2358, x_2360);
    let x_2368 : vec4<bool> = (vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2361.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb31 = vec2<bool>(x_2368.x, x_2368.y);
    let x_2371 : bool = u_xlatb31.y;
    if (x_2371) {
      let x_2377 : f32 = u_xlat6.w;
      x_2373 = x_2377;
    } else {
      let x_2380 : f32 = u_xlat6.x;
      x_2373 = x_2380;
    }
    let x_2381 : f32 = x_2373;
    u_xlat57.x = x_2381;
    let x_2384 : bool = u_xlatb31.x;
    if (x_2384) {
      let x_2388 : vec4<f32> = u_xlat6;
      x_2385 = vec3<f32>(x_2388.x, x_2388.y, x_2388.z);
    } else {
      let x_2391 : vec2<f32> = u_xlat57;
      x_2385 = vec3<f32>(x_2391.x, x_2391.x, x_2391.x);
    }
    let x_2393 : vec3<f32> = x_2385;
    u_xlat31 = x_2393;
  } else {
    u_xlat31.x = 1.0f;
    u_xlat31.y = 1.0f;
    u_xlat31.z = 1.0f;
  }
  let x_2398 : vec3<f32> = u_xlat31;
  let x_2400 : vec4<f32> = x_112.x_MainLightColor;
  u_xlat31 = (x_2398 * vec3<f32>(x_2400.x, x_2400.y, x_2400.z));
  let x_2404 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2404;
  let x_2407 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2407;
  let x_2410 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2410;
  let x_2413 : vec4<f32> = u_xlat6;
  let x_2416 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(vec3<f32>(x_2413.x, x_2413.y, x_2413.z)), vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2419 : f32 = u_xlat84;
  let x_2420 : f32 = u_xlat84;
  u_xlat84 = (x_2419 + x_2420);
  let x_2422 : vec4<f32> = u_xlat1;
  let x_2424 : f32 = u_xlat84;
  let x_2428 : vec4<f32> = u_xlat6;
  let x_2431 : vec3<f32> = ((vec3<f32>(x_2422.x, x_2422.y, x_2422.z) * -(vec3<f32>(x_2424, x_2424, x_2424))) + -(vec3<f32>(x_2428.x, x_2428.y, x_2428.z)));
  let x_2432 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2432.w);
  let x_2434 : vec4<f32> = u_xlat1;
  let x_2436 : vec4<f32> = u_xlat6;
  u_xlat84 = dot(vec3<f32>(x_2434.x, x_2434.y, x_2434.z), vec3<f32>(x_2436.x, x_2436.y, x_2436.z));
  let x_2439 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2439, 0.0f, 1.0f);
  let x_2441 : f32 = u_xlat84;
  u_xlat84 = (-(x_2441) + 1.0f);
  let x_2444 : f32 = u_xlat84;
  let x_2445 : f32 = u_xlat84;
  u_xlat84 = (x_2444 * x_2445);
  let x_2447 : f32 = u_xlat84;
  let x_2448 : f32 = u_xlat84;
  u_xlat84 = (x_2447 * x_2448);
  let x_2451 : f32 = u_xlat0.x;
  u_xlat85 = ((-(x_2451) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2458 : f32 = u_xlat0.x;
  let x_2459 : f32 = u_xlat85;
  u_xlat0.x = (x_2458 * x_2459);
  let x_2463 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2463 * 6.0f);
  let x_2475 : vec4<f32> = u_xlat7;
  let x_2478 : f32 = u_xlat0.x;
  let x_2479 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2475.x, x_2475.y, x_2475.z), x_2478);
  u_xlat7 = x_2479;
  let x_2481 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2481 + -1.0f);
  let x_2489 : f32 = x_2487.unity_SpecCube0_HDR.w;
  let x_2491 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2489 * x_2491) + 1.0f);
  let x_2496 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2496, 0.0f);
  let x_2500 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2500);
  let x_2504 : f32 = u_xlat0.x;
  let x_2506 : f32 = x_2487.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2504 * x_2506);
  let x_2510 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2510);
  let x_2514 : f32 = u_xlat0.x;
  let x_2516 : f32 = x_2487.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2514 * x_2516);
  let x_2519 : vec4<f32> = u_xlat7;
  let x_2521 : vec3<f32> = u_xlat0;
  let x_2523 : vec3<f32> = (vec3<f32>(x_2519.x, x_2519.y, x_2519.z) * vec3<f32>(x_2521.x, x_2521.x, x_2521.x));
  let x_2524 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2523.x, x_2523.y, x_2523.z, x_2524.w);
  let x_2526 : f32 = u_xlat52;
  let x_2528 : f32 = u_xlat52;
  let x_2532 : vec2<f32> = ((vec2<f32>(x_2526, x_2526) * vec2<f32>(x_2528, x_2528)) + vec2<f32>(-1.0f, 1.0f));
  let x_2533 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2532.x, x_2533.y, x_2532.y);
  let x_2536 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2536);
  let x_2538 : vec4<f32> = u_xlat4;
  let x_2541 : f32 = u_xlat80;
  let x_2543 : vec3<f32> = (-(vec3<f32>(x_2538.x, x_2538.y, x_2538.z)) + vec3<f32>(x_2541, x_2541, x_2541));
  let x_2544 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);
  let x_2546 : f32 = u_xlat84;
  let x_2548 : vec4<f32> = u_xlat8;
  let x_2551 : vec4<f32> = u_xlat4;
  let x_2553 : vec3<f32> = ((vec3<f32>(x_2546, x_2546, x_2546) * vec3<f32>(x_2548.x, x_2548.y, x_2548.z)) + vec3<f32>(x_2551.x, x_2551.y, x_2551.z));
  let x_2554 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2553.x, x_2553.y, x_2553.z, x_2554.w);
  let x_2556 : f32 = u_xlat52;
  let x_2558 : vec4<f32> = u_xlat8;
  let x_2560 : vec3<f32> = (vec3<f32>(x_2556, x_2556, x_2556) * vec3<f32>(x_2558.x, x_2558.y, x_2558.z));
  let x_2561 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
  let x_2563 : vec4<f32> = u_xlat7;
  let x_2565 : vec4<f32> = u_xlat8;
  let x_2567 : vec3<f32> = (vec3<f32>(x_2563.x, x_2563.y, x_2563.z) * vec3<f32>(x_2565.x, x_2565.y, x_2565.z));
  let x_2568 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2567.x, x_2567.y, x_2567.z, x_2568.w);
  let x_2570 : vec4<f32> = u_xlat2;
  let x_2572 : vec4<f32> = u_xlat3;
  let x_2575 : vec4<f32> = u_xlat7;
  let x_2577 : vec3<f32> = ((vec3<f32>(x_2570.x, x_2570.y, x_2570.z) * vec3<f32>(x_2572.x, x_2572.y, x_2572.z)) + vec3<f32>(x_2575.x, x_2575.y, x_2575.z));
  let x_2578 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2577.x, x_2577.y, x_2577.z, x_2578.w);
  let x_2580 : f32 = u_xlat82;
  let x_2582 : f32 = x_2487.unity_LightData.z;
  u_xlat52 = (x_2580 * x_2582);
  let x_2584 : vec4<f32> = u_xlat1;
  let x_2587 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2584.x, x_2584.y, x_2584.z), vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
  let x_2590 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2590, 0.0f, 1.0f);
  let x_2592 : f32 = u_xlat52;
  let x_2593 : f32 = u_xlat80;
  u_xlat52 = (x_2592 * x_2593);
  let x_2595 : f32 = u_xlat52;
  let x_2597 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2595, x_2595, x_2595) * x_2597);
  let x_2599 : vec4<f32> = u_xlat6;
  let x_2602 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2604 : vec3<f32> = (vec3<f32>(x_2599.x, x_2599.y, x_2599.z) + vec3<f32>(x_2602.x, x_2602.y, x_2602.z));
  let x_2605 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
  let x_2607 : vec4<f32> = u_xlat7;
  let x_2609 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2607.x, x_2607.y, x_2607.z), vec3<f32>(x_2609.x, x_2609.y, x_2609.z));
  let x_2612 : f32 = u_xlat52;
  u_xlat52 = max(x_2612, 1.17549435e-38f);
  let x_2615 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2615);
  let x_2617 : f32 = u_xlat52;
  let x_2619 : vec4<f32> = u_xlat7;
  let x_2621 : vec3<f32> = (vec3<f32>(x_2617, x_2617, x_2617) * vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
  let x_2622 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2621.x, x_2621.y, x_2621.z, x_2622.w);
  let x_2624 : vec4<f32> = u_xlat1;
  let x_2626 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2624.x, x_2624.y, x_2624.z), vec3<f32>(x_2626.x, x_2626.y, x_2626.z));
  let x_2629 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2629, 0.0f, 1.0f);
  let x_2632 : vec4<f32> = x_112.x_MainLightPosition;
  let x_2634 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2632.x, x_2632.y, x_2632.z), vec3<f32>(x_2634.x, x_2634.y, x_2634.z));
  let x_2637 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2637, 0.0f, 1.0f);
  let x_2639 : f32 = u_xlat52;
  let x_2640 : f32 = u_xlat52;
  u_xlat52 = (x_2639 * x_2640);
  let x_2642 : f32 = u_xlat52;
  let x_2644 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2642 * x_2644) + 1.00001001358032226562f);
  let x_2648 : f32 = u_xlat80;
  let x_2649 : f32 = u_xlat80;
  u_xlat80 = (x_2648 * x_2649);
  let x_2651 : f32 = u_xlat52;
  let x_2652 : f32 = u_xlat52;
  u_xlat52 = (x_2651 * x_2652);
  let x_2654 : f32 = u_xlat80;
  u_xlat80 = max(x_2654, 0.10000000149011611938f);
  let x_2657 : f32 = u_xlat52;
  let x_2658 : f32 = u_xlat80;
  u_xlat52 = (x_2657 * x_2658);
  let x_2660 : f32 = u_xlat81;
  let x_2661 : f32 = u_xlat52;
  u_xlat52 = (x_2660 * x_2661);
  let x_2663 : f32 = u_xlat79;
  let x_2664 : f32 = u_xlat52;
  u_xlat52 = (x_2663 / x_2664);
  let x_2666 : vec4<f32> = u_xlat4;
  let x_2668 : f32 = u_xlat52;
  let x_2671 : vec4<f32> = u_xlat3;
  let x_2673 : vec3<f32> = ((vec3<f32>(x_2666.x, x_2666.y, x_2666.z) * vec3<f32>(x_2668, x_2668, x_2668)) + vec3<f32>(x_2671.x, x_2671.y, x_2671.z));
  let x_2674 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2673.x, x_2673.y, x_2673.z, x_2674.w);
  let x_2676 : vec3<f32> = u_xlat31;
  let x_2677 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2676 * vec3<f32>(x_2677.x, x_2677.y, x_2677.z));
  let x_2681 : f32 = x_112.x_AdditionalLightsCount.x;
  let x_2683 : f32 = x_2487.unity_LightData.y;
  u_xlat52 = min(x_2681, x_2683);
  let x_2687 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2687));
  let x_2691 : f32 = u_xlat5.x;
  let x_2693 : f32 = x_945.x_AdditionalShadowFadeParams.x;
  let x_2696 : f32 = x_945.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2691 * x_2693) + x_2696);
  let x_2698 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2698, 0.0f, 1.0f);
  let x_2702 : f32 = x_2290.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2704 : f32 = x_2290.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2706 : f32 = x_2290.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2708 : f32 = x_2290.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2709 : vec4<f32> = vec4<f32>(x_2702, x_2704, x_2706, x_2708);
  let x_2715 : vec4<bool> = (vec4<f32>(x_2709.x, x_2709.y, x_2709.z, x_2709.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2715.x, x_2715.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2727 : u32 = u_xlatu_loop_1;
    let x_2728 : u32 = u_xlatu52;
    if ((x_2727 < x_2728)) {
    } else {
      break;
    }
    let x_2731 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_2731 >> 2u);
    let x_2735 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2735 & 3u));
    let x_2738 : u32 = u_xlatu5;
    let x_2741 : vec4<f32> = x_2487.unity_LightIndices[bitcast<i32>(x_2738)];
    let x_2751 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2756 : vec4<u32> = indexable[x_2751];
    u_xlat5.x = dot(x_2741, bitcast<vec4<f32>>(x_2756));
    let x_2762 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_2762);
    let x_2764 : vec3<f32> = vs_TEXCOORD7;
    let x_2775 : i32 = u_xlati5;
    let x_2777 : vec4<f32> = x_2774.x_AdditionalLightsPosition[x_2775];
    let x_2780 : i32 = u_xlati5;
    let x_2782 : vec4<f32> = x_2774.x_AdditionalLightsPosition[x_2780];
    let x_2784 : vec3<f32> = ((-(x_2764) * vec3<f32>(x_2777.w, x_2777.w, x_2777.w)) + vec3<f32>(x_2782.x, x_2782.y, x_2782.z));
    let x_2785 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2784.x, x_2784.y, x_2784.z, x_2785.w);
    let x_2787 : vec4<f32> = u_xlat9;
    let x_2789 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2787.x, x_2787.y, x_2787.z), vec3<f32>(x_2789.x, x_2789.y, x_2789.z));
    let x_2792 : f32 = u_xlat84;
    u_xlat84 = max(x_2792, 0.00006103515625f);
    let x_2794 : f32 = u_xlat84;
    u_xlat59.x = inverseSqrt(x_2794);
    let x_2797 : vec2<f32> = u_xlat59;
    let x_2799 : vec4<f32> = u_xlat9;
    let x_2801 : vec3<f32> = (vec3<f32>(x_2797.x, x_2797.x, x_2797.x) * vec3<f32>(x_2799.x, x_2799.y, x_2799.z));
    let x_2802 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2802.w);
    let x_2804 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2804);
    let x_2806 : f32 = u_xlat84;
    let x_2807 : i32 = u_xlati5;
    let x_2809 : f32 = x_2774.x_AdditionalLightsAttenuation[x_2807].x;
    u_xlat84 = (x_2806 * x_2809);
    let x_2811 : f32 = u_xlat84;
    let x_2813 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2811) * x_2813) + 1.0f);
    let x_2816 : f32 = u_xlat84;
    u_xlat84 = max(x_2816, 0.0f);
    let x_2818 : f32 = u_xlat84;
    let x_2819 : f32 = u_xlat84;
    u_xlat84 = (x_2818 * x_2819);
    let x_2821 : f32 = u_xlat84;
    let x_2822 : f32 = u_xlat85;
    u_xlat84 = (x_2821 * x_2822);
    let x_2824 : i32 = u_xlati5;
    let x_2826 : vec4<f32> = x_2774.x_AdditionalLightsSpotDir[x_2824];
    let x_2828 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2826.x, x_2826.y, x_2826.z), vec3<f32>(x_2828.x, x_2828.y, x_2828.z));
    let x_2831 : f32 = u_xlat85;
    let x_2832 : i32 = u_xlati5;
    let x_2834 : f32 = x_2774.x_AdditionalLightsAttenuation[x_2832].z;
    let x_2836 : i32 = u_xlati5;
    let x_2838 : f32 = x_2774.x_AdditionalLightsAttenuation[x_2836].w;
    u_xlat85 = ((x_2831 * x_2834) + x_2838);
    let x_2840 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2840, 0.0f, 1.0f);
    let x_2842 : f32 = u_xlat85;
    let x_2843 : f32 = u_xlat85;
    u_xlat85 = (x_2842 * x_2843);
    let x_2845 : f32 = u_xlat84;
    let x_2846 : f32 = u_xlat85;
    u_xlat84 = (x_2845 * x_2846);
    let x_2849 : i32 = u_xlati5;
    let x_2851 : f32 = x_945.x_AdditionalShadowParams[x_2849].w;
    u_xlati85 = i32(x_2851);
    let x_2854 : i32 = u_xlati85;
    u_xlatb86 = (x_2854 >= 0i);
    let x_2856 : bool = u_xlatb86;
    if (x_2856) {
      let x_2860 : i32 = u_xlati5;
      let x_2862 : f32 = x_945.x_AdditionalShadowParams[x_2860].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2862, x_2862, x_2862, x_2862))));
      let x_2866 : bool = u_xlatb86;
      if (x_2866) {
        let x_2871 : vec4<f32> = u_xlat10;
        let x_2874 : vec4<f32> = u_xlat10;
        let x_2877 : vec4<bool> = (abs(vec4<f32>(x_2871.z, x_2871.z, x_2871.y, x_2871.z)) >= abs(vec4<f32>(x_2874.x, x_2874.y, x_2874.x, x_2874.x)));
        let x_2879 : vec3<bool> = vec3<bool>(x_2877.x, x_2877.y, x_2877.z);
        let x_2880 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
        let x_2883 : bool = u_xlatb11.y;
        let x_2885 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2883 & x_2885);
        let x_2887 : vec4<f32> = u_xlat10;
        let x_2890 : vec4<bool> = (-(vec4<f32>(x_2887.z, x_2887.y, x_2887.z, x_2887.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2891 : vec3<bool> = vec3<bool>(x_2890.x, x_2890.y, x_2890.w);
        let x_2892 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2891.x, x_2891.y, x_2892.z, x_2891.z);
        let x_2895 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2895);
        let x_2900 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2900);
        let x_2906 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2906);
        let x_2909 : bool = u_xlatb11.z;
        if (x_2909) {
          let x_2914 : f32 = u_xlat11.y;
          x_2910 = x_2914;
        } else {
          let x_2916 : f32 = u_xlat87;
          x_2910 = x_2916;
        }
        let x_2917 : f32 = x_2910;
        u_xlat87 = x_2917;
        let x_2919 : bool = u_xlatb86;
        if (x_2919) {
          let x_2924 : f32 = u_xlat11.x;
          x_2920 = x_2924;
        } else {
          let x_2926 : f32 = u_xlat87;
          x_2920 = x_2926;
        }
        let x_2927 : f32 = x_2920;
        u_xlat86 = x_2927;
        let x_2928 : i32 = u_xlati5;
        let x_2930 : f32 = x_945.x_AdditionalShadowParams[x_2928].w;
        u_xlat87 = trunc(x_2930);
        let x_2932 : f32 = u_xlat86;
        let x_2933 : f32 = u_xlat87;
        u_xlat86 = (x_2932 + x_2933);
        let x_2935 : f32 = u_xlat86;
        u_xlati85 = i32(x_2935);
      }
      let x_2937 : i32 = u_xlati85;
      u_xlati85 = (x_2937 << bitcast<u32>(2i));
      let x_2939 : vec3<f32> = vs_TEXCOORD7;
      let x_2941 : i32 = u_xlati85;
      let x_2944 : i32 = u_xlati85;
      let x_2948 : vec4<f32> = x_945.x_AdditionalLightsWorldToShadow[((x_2941 + 1i) / 4i)][((x_2944 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2939.y, x_2939.y, x_2939.y, x_2939.y) * x_2948);
      let x_2950 : i32 = u_xlati85;
      let x_2952 : i32 = u_xlati85;
      let x_2955 : vec4<f32> = x_945.x_AdditionalLightsWorldToShadow[(x_2950 / 4i)][(x_2952 % 4i)];
      let x_2956 : vec3<f32> = vs_TEXCOORD7;
      let x_2959 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2955 * vec4<f32>(x_2956.x, x_2956.x, x_2956.x, x_2956.x)) + x_2959);
      let x_2961 : i32 = u_xlati85;
      let x_2964 : i32 = u_xlati85;
      let x_2968 : vec4<f32> = x_945.x_AdditionalLightsWorldToShadow[((x_2961 + 2i) / 4i)][((x_2964 + 2i) % 4i)];
      let x_2969 : vec3<f32> = vs_TEXCOORD7;
      let x_2972 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2968 * vec4<f32>(x_2969.z, x_2969.z, x_2969.z, x_2969.z)) + x_2972);
      let x_2974 : vec4<f32> = u_xlat11;
      let x_2975 : i32 = u_xlati85;
      let x_2978 : i32 = u_xlati85;
      let x_2982 : vec4<f32> = x_945.x_AdditionalLightsWorldToShadow[((x_2975 + 3i) / 4i)][((x_2978 + 3i) % 4i)];
      u_xlat11 = (x_2974 + x_2982);
      let x_2984 : vec4<f32> = u_xlat11;
      let x_2986 : vec4<f32> = u_xlat11;
      let x_2988 : vec3<f32> = (vec3<f32>(x_2984.x, x_2984.y, x_2984.z) / vec3<f32>(x_2986.w, x_2986.w, x_2986.w));
      let x_2989 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2988.x, x_2988.y, x_2988.z, x_2989.w);
      let x_2992 : i32 = u_xlati5;
      let x_2994 : f32 = x_945.x_AdditionalShadowParams[x_2992].y;
      u_xlatb85 = (0.0f < x_2994);
      let x_2996 : bool = u_xlatb85;
      if (x_2996) {
        let x_2999 : i32 = u_xlati5;
        let x_3001 : f32 = x_945.x_AdditionalShadowParams[x_2999].y;
        u_xlatb85 = (1.0f == x_3001);
        let x_3003 : bool = u_xlatb85;
        if (x_3003) {
          let x_3006 : vec4<f32> = u_xlat11;
          let x_3009 : vec4<f32> = x_945.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3006.x, x_3006.y, x_3006.x, x_3006.y) + x_3009);
          let x_3012 : vec4<f32> = u_xlat12;
          let x_3013 : vec2<f32> = vec2<f32>(x_3012.x, x_3012.y);
          let x_3015 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3013.x, x_3013.y, x_3015);
          let x_3023 : vec3<f32> = txVec30;
          let x_3025 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3023.xy, x_3023.z);
          u_xlat13.x = x_3025;
          let x_3028 : vec4<f32> = u_xlat12;
          let x_3029 : vec2<f32> = vec2<f32>(x_3028.z, x_3028.w);
          let x_3031 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3029.x, x_3029.y, x_3031);
          let x_3038 : vec3<f32> = txVec31;
          let x_3040 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3038.xy, x_3038.z);
          u_xlat13.y = x_3040;
          let x_3042 : vec4<f32> = u_xlat11;
          let x_3045 : vec4<f32> = x_945.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3042.x, x_3042.y, x_3042.x, x_3042.y) + x_3045);
          let x_3048 : vec4<f32> = u_xlat12;
          let x_3049 : vec2<f32> = vec2<f32>(x_3048.x, x_3048.y);
          let x_3051 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
          let x_3058 : vec3<f32> = txVec32;
          let x_3060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
          u_xlat13.z = x_3060;
          let x_3063 : vec4<f32> = u_xlat12;
          let x_3064 : vec2<f32> = vec2<f32>(x_3063.z, x_3063.w);
          let x_3066 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3064.x, x_3064.y, x_3066);
          let x_3073 : vec3<f32> = txVec33;
          let x_3075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3073.xy, x_3073.z);
          u_xlat13.w = x_3075;
          let x_3077 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_3077, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3080 : i32 = u_xlati5;
          let x_3082 : f32 = x_945.x_AdditionalShadowParams[x_3080].y;
          u_xlatb86 = (2.0f == x_3082);
          let x_3084 : bool = u_xlatb86;
          if (x_3084) {
            let x_3087 : vec4<f32> = u_xlat11;
            let x_3090 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3093 : vec2<f32> = ((vec2<f32>(x_3087.x, x_3087.y) * vec2<f32>(x_3090.z, x_3090.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3094 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3093.x, x_3093.y, x_3094.z, x_3094.w);
            let x_3096 : vec4<f32> = u_xlat12;
            let x_3098 : vec2<f32> = floor(vec2<f32>(x_3096.x, x_3096.y));
            let x_3099 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3098.x, x_3098.y, x_3099.z, x_3099.w);
            let x_3102 : vec4<f32> = u_xlat11;
            let x_3105 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3108 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3102.x, x_3102.y) * vec2<f32>(x_3105.z, x_3105.w)) + -(vec2<f32>(x_3108.x, x_3108.y)));
            let x_3112 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3112.x, x_3112.x, x_3112.y, x_3112.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3115 : vec4<f32> = u_xlat13;
            let x_3117 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3115.x, x_3115.x, x_3115.z, x_3115.z) * vec4<f32>(x_3117.x, x_3117.x, x_3117.z, x_3117.z));
            let x_3120 : vec4<f32> = u_xlat14;
            let x_3122 : vec2<f32> = (vec2<f32>(x_3120.y, x_3120.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3123 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3122.x, x_3123.y, x_3122.y, x_3123.w);
            let x_3125 : vec4<f32> = u_xlat14;
            let x_3128 : vec2<f32> = u_xlat64;
            let x_3130 : vec2<f32> = ((vec2<f32>(x_3125.x, x_3125.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3128));
            let x_3131 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3130.x, x_3130.y, x_3131.z, x_3131.w);
            let x_3134 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3134) + vec2<f32>(1.0f, 1.0f));
            let x_3137 : vec2<f32> = u_xlat64;
            let x_3138 : vec2<f32> = min(x_3137, vec2<f32>(0.0f, 0.0f));
            let x_3139 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3138.x, x_3138.y, x_3139.z, x_3139.w);
            let x_3141 : vec4<f32> = u_xlat15;
            let x_3144 : vec4<f32> = u_xlat15;
            let x_3147 : vec2<f32> = u_xlat66;
            let x_3148 : vec2<f32> = ((-(vec2<f32>(x_3141.x, x_3141.y)) * vec2<f32>(x_3144.x, x_3144.y)) + x_3147);
            let x_3149 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3148.x, x_3148.y, x_3149.z, x_3149.w);
            let x_3151 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3151, vec2<f32>(0.0f, 0.0f));
            let x_3153 : vec2<f32> = u_xlat64;
            let x_3155 : vec2<f32> = u_xlat64;
            let x_3157 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3153) * x_3155) + vec2<f32>(x_3157.y, x_3157.w));
            let x_3160 : vec4<f32> = u_xlat15;
            let x_3162 : vec2<f32> = (vec2<f32>(x_3160.x, x_3160.y) + vec2<f32>(1.0f, 1.0f));
            let x_3163 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3162.x, x_3162.y, x_3163.z, x_3163.w);
            let x_3165 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3165 + vec2<f32>(1.0f, 1.0f));
            let x_3167 : vec4<f32> = u_xlat14;
            let x_3169 : vec2<f32> = (vec2<f32>(x_3167.x, x_3167.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3170 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3169.x, x_3169.y, x_3170.z, x_3170.w);
            let x_3172 : vec2<f32> = u_xlat66;
            let x_3173 : vec2<f32> = (x_3172 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3174 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3173.x, x_3173.y, x_3174.z, x_3174.w);
            let x_3176 : vec4<f32> = u_xlat15;
            let x_3178 : vec2<f32> = (vec2<f32>(x_3176.x, x_3176.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3179 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3178.x, x_3178.y, x_3179.z, x_3179.w);
            let x_3181 : vec2<f32> = u_xlat64;
            let x_3182 : vec2<f32> = (x_3181 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3183 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3182.x, x_3182.y, x_3183.z, x_3183.w);
            let x_3185 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3185.y, x_3185.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3189 : f32 = u_xlat15.x;
            u_xlat16.z = x_3189;
            let x_3192 : f32 = u_xlat64.x;
            u_xlat16.w = x_3192;
            let x_3195 : f32 = u_xlat17.x;
            u_xlat14.z = x_3195;
            let x_3198 : f32 = u_xlat13.x;
            u_xlat14.w = x_3198;
            let x_3200 : vec4<f32> = u_xlat14;
            let x_3202 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3200.z, x_3200.w, x_3200.x, x_3200.z) + vec4<f32>(x_3202.z, x_3202.w, x_3202.x, x_3202.z));
            let x_3206 : f32 = u_xlat16.y;
            u_xlat15.z = x_3206;
            let x_3209 : f32 = u_xlat64.y;
            u_xlat15.w = x_3209;
            let x_3212 : f32 = u_xlat14.y;
            u_xlat17.z = x_3212;
            let x_3215 : f32 = u_xlat13.z;
            u_xlat17.w = x_3215;
            let x_3217 : vec4<f32> = u_xlat15;
            let x_3219 : vec4<f32> = u_xlat17;
            let x_3221 : vec3<f32> = (vec3<f32>(x_3217.z, x_3217.y, x_3217.w) + vec3<f32>(x_3219.z, x_3219.y, x_3219.w));
            let x_3222 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3221.x, x_3221.y, x_3221.z, x_3222.w);
            let x_3224 : vec4<f32> = u_xlat14;
            let x_3226 : vec4<f32> = u_xlat18;
            let x_3228 : vec3<f32> = (vec3<f32>(x_3224.x, x_3224.z, x_3224.w) / vec3<f32>(x_3226.z, x_3226.w, x_3226.y));
            let x_3229 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3228.x, x_3228.y, x_3228.z, x_3229.w);
            let x_3231 : vec4<f32> = u_xlat14;
            let x_3233 : vec3<f32> = (vec3<f32>(x_3231.x, x_3231.y, x_3231.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3234 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3233.x, x_3233.y, x_3233.z, x_3234.w);
            let x_3236 : vec4<f32> = u_xlat17;
            let x_3238 : vec4<f32> = u_xlat13;
            let x_3240 : vec3<f32> = (vec3<f32>(x_3236.z, x_3236.y, x_3236.w) / vec3<f32>(x_3238.x, x_3238.y, x_3238.z));
            let x_3241 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3240.x, x_3240.y, x_3240.z, x_3241.w);
            let x_3243 : vec4<f32> = u_xlat15;
            let x_3245 : vec3<f32> = (vec3<f32>(x_3243.x, x_3243.y, x_3243.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3246 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3245.x, x_3245.y, x_3245.z, x_3246.w);
            let x_3248 : vec4<f32> = u_xlat14;
            let x_3251 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3253 : vec3<f32> = (vec3<f32>(x_3248.y, x_3248.x, x_3248.z) * vec3<f32>(x_3251.x, x_3251.x, x_3251.x));
            let x_3254 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3253.x, x_3253.y, x_3253.z, x_3254.w);
            let x_3256 : vec4<f32> = u_xlat15;
            let x_3259 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3261 : vec3<f32> = (vec3<f32>(x_3256.x, x_3256.y, x_3256.z) * vec3<f32>(x_3259.y, x_3259.y, x_3259.y));
            let x_3262 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3261.x, x_3261.y, x_3261.z, x_3262.w);
            let x_3265 : f32 = u_xlat15.x;
            u_xlat14.w = x_3265;
            let x_3267 : vec4<f32> = u_xlat12;
            let x_3270 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3273 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3267.x, x_3267.y, x_3267.x, x_3267.y) * vec4<f32>(x_3270.x, x_3270.y, x_3270.x, x_3270.y)) + vec4<f32>(x_3273.y, x_3273.w, x_3273.x, x_3273.w));
            let x_3276 : vec4<f32> = u_xlat12;
            let x_3279 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3282 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3276.x, x_3276.y) * vec2<f32>(x_3279.x, x_3279.y)) + vec2<f32>(x_3282.z, x_3282.w));
            let x_3286 : f32 = u_xlat14.y;
            u_xlat15.w = x_3286;
            let x_3288 : vec4<f32> = u_xlat15;
            let x_3289 : vec2<f32> = vec2<f32>(x_3288.y, x_3288.z);
            let x_3290 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3290.x, x_3289.x, x_3290.z, x_3289.y);
            let x_3292 : vec4<f32> = u_xlat12;
            let x_3295 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3298 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3292.x, x_3292.y, x_3292.x, x_3292.y) * vec4<f32>(x_3295.x, x_3295.y, x_3295.x, x_3295.y)) + vec4<f32>(x_3298.x, x_3298.y, x_3298.z, x_3298.y));
            let x_3301 : vec4<f32> = u_xlat12;
            let x_3304 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3307 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3301.x, x_3301.y, x_3301.x, x_3301.y) * vec4<f32>(x_3304.x, x_3304.y, x_3304.x, x_3304.y)) + vec4<f32>(x_3307.w, x_3307.y, x_3307.w, x_3307.z));
            let x_3310 : vec4<f32> = u_xlat12;
            let x_3313 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3316 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3310.x, x_3310.y, x_3310.x, x_3310.y) * vec4<f32>(x_3313.x, x_3313.y, x_3313.x, x_3313.y)) + vec4<f32>(x_3316.x, x_3316.w, x_3316.z, x_3316.w));
            let x_3320 : vec4<f32> = u_xlat13;
            let x_3322 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3320.x, x_3320.x, x_3320.x, x_3320.y) * vec4<f32>(x_3322.z, x_3322.w, x_3322.y, x_3322.z));
            let x_3326 : vec4<f32> = u_xlat13;
            let x_3328 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3326.y, x_3326.y, x_3326.z, x_3326.z) * x_3328);
            let x_3331 : f32 = u_xlat13.z;
            let x_3333 : f32 = u_xlat18.y;
            u_xlat86 = (x_3331 * x_3333);
            let x_3336 : vec4<f32> = u_xlat16;
            let x_3337 : vec2<f32> = vec2<f32>(x_3336.x, x_3336.y);
            let x_3339 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3337.x, x_3337.y, x_3339);
            let x_3346 : vec3<f32> = txVec34;
            let x_3348 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3346.xy, x_3346.z);
            u_xlat87 = x_3348;
            let x_3350 : vec4<f32> = u_xlat16;
            let x_3351 : vec2<f32> = vec2<f32>(x_3350.z, x_3350.w);
            let x_3353 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3351.x, x_3351.y, x_3353);
            let x_3361 : vec3<f32> = txVec35;
            let x_3363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3361.xy, x_3361.z);
            u_xlat88 = x_3363;
            let x_3364 : f32 = u_xlat88;
            let x_3366 : f32 = u_xlat19.y;
            u_xlat88 = (x_3364 * x_3366);
            let x_3369 : f32 = u_xlat19.x;
            let x_3370 : f32 = u_xlat87;
            let x_3372 : f32 = u_xlat88;
            u_xlat87 = ((x_3369 * x_3370) + x_3372);
            let x_3375 : vec2<f32> = u_xlat64;
            let x_3377 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3375.x, x_3375.y, x_3377);
            let x_3384 : vec3<f32> = txVec36;
            let x_3386 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3384.xy, x_3384.z);
            u_xlat88 = x_3386;
            let x_3388 : f32 = u_xlat19.z;
            let x_3389 : f32 = u_xlat88;
            let x_3391 : f32 = u_xlat87;
            u_xlat87 = ((x_3388 * x_3389) + x_3391);
            let x_3394 : vec4<f32> = u_xlat15;
            let x_3395 : vec2<f32> = vec2<f32>(x_3394.x, x_3394.y);
            let x_3397 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3395.x, x_3395.y, x_3397);
            let x_3404 : vec3<f32> = txVec37;
            let x_3406 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3404.xy, x_3404.z);
            u_xlat88 = x_3406;
            let x_3408 : f32 = u_xlat19.w;
            let x_3409 : f32 = u_xlat88;
            let x_3411 : f32 = u_xlat87;
            u_xlat87 = ((x_3408 * x_3409) + x_3411);
            let x_3414 : vec4<f32> = u_xlat17;
            let x_3415 : vec2<f32> = vec2<f32>(x_3414.x, x_3414.y);
            let x_3417 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3415.x, x_3415.y, x_3417);
            let x_3424 : vec3<f32> = txVec38;
            let x_3426 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3424.xy, x_3424.z);
            u_xlat88 = x_3426;
            let x_3428 : f32 = u_xlat20.x;
            let x_3429 : f32 = u_xlat88;
            let x_3431 : f32 = u_xlat87;
            u_xlat87 = ((x_3428 * x_3429) + x_3431);
            let x_3434 : vec4<f32> = u_xlat17;
            let x_3435 : vec2<f32> = vec2<f32>(x_3434.z, x_3434.w);
            let x_3437 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3435.x, x_3435.y, x_3437);
            let x_3444 : vec3<f32> = txVec39;
            let x_3446 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3444.xy, x_3444.z);
            u_xlat88 = x_3446;
            let x_3448 : f32 = u_xlat20.y;
            let x_3449 : f32 = u_xlat88;
            let x_3451 : f32 = u_xlat87;
            u_xlat87 = ((x_3448 * x_3449) + x_3451);
            let x_3454 : vec4<f32> = u_xlat15;
            let x_3455 : vec2<f32> = vec2<f32>(x_3454.z, x_3454.w);
            let x_3457 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3455.x, x_3455.y, x_3457);
            let x_3464 : vec3<f32> = txVec40;
            let x_3466 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3464.xy, x_3464.z);
            u_xlat88 = x_3466;
            let x_3468 : f32 = u_xlat20.z;
            let x_3469 : f32 = u_xlat88;
            let x_3471 : f32 = u_xlat87;
            u_xlat87 = ((x_3468 * x_3469) + x_3471);
            let x_3474 : vec4<f32> = u_xlat14;
            let x_3475 : vec2<f32> = vec2<f32>(x_3474.x, x_3474.y);
            let x_3477 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3475.x, x_3475.y, x_3477);
            let x_3484 : vec3<f32> = txVec41;
            let x_3486 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3484.xy, x_3484.z);
            u_xlat88 = x_3486;
            let x_3488 : f32 = u_xlat20.w;
            let x_3489 : f32 = u_xlat88;
            let x_3491 : f32 = u_xlat87;
            u_xlat87 = ((x_3488 * x_3489) + x_3491);
            let x_3494 : vec4<f32> = u_xlat14;
            let x_3495 : vec2<f32> = vec2<f32>(x_3494.z, x_3494.w);
            let x_3497 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3495.x, x_3495.y, x_3497);
            let x_3504 : vec3<f32> = txVec42;
            let x_3506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3504.xy, x_3504.z);
            u_xlat88 = x_3506;
            let x_3507 : f32 = u_xlat86;
            let x_3508 : f32 = u_xlat88;
            let x_3510 : f32 = u_xlat87;
            u_xlat85 = ((x_3507 * x_3508) + x_3510);
          } else {
            let x_3513 : vec4<f32> = u_xlat11;
            let x_3516 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3519 : vec2<f32> = ((vec2<f32>(x_3513.x, x_3513.y) * vec2<f32>(x_3516.z, x_3516.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3520 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3519.x, x_3519.y, x_3520.z, x_3520.w);
            let x_3522 : vec4<f32> = u_xlat12;
            let x_3524 : vec2<f32> = floor(vec2<f32>(x_3522.x, x_3522.y));
            let x_3525 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3524.x, x_3524.y, x_3525.z, x_3525.w);
            let x_3527 : vec4<f32> = u_xlat11;
            let x_3530 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3533 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3527.x, x_3527.y) * vec2<f32>(x_3530.z, x_3530.w)) + -(vec2<f32>(x_3533.x, x_3533.y)));
            let x_3537 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3537.x, x_3537.x, x_3537.y, x_3537.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3540 : vec4<f32> = u_xlat13;
            let x_3542 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3540.x, x_3540.x, x_3540.z, x_3540.z) * vec4<f32>(x_3542.x, x_3542.x, x_3542.z, x_3542.z));
            let x_3545 : vec4<f32> = u_xlat14;
            let x_3547 : vec2<f32> = (vec2<f32>(x_3545.y, x_3545.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3548 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3548.x, x_3547.x, x_3548.z, x_3547.y);
            let x_3550 : vec4<f32> = u_xlat14;
            let x_3553 : vec2<f32> = u_xlat64;
            let x_3555 : vec2<f32> = ((vec2<f32>(x_3550.x, x_3550.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3553));
            let x_3556 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3555.x, x_3556.y, x_3555.y, x_3556.w);
            let x_3558 : vec2<f32> = u_xlat64;
            let x_3560 : vec2<f32> = (-(x_3558) + vec2<f32>(1.0f, 1.0f));
            let x_3561 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3560.x, x_3560.y, x_3561.z, x_3561.w);
            let x_3563 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3563, vec2<f32>(0.0f, 0.0f));
            let x_3565 : vec2<f32> = u_xlat66;
            let x_3567 : vec2<f32> = u_xlat66;
            let x_3569 : vec4<f32> = u_xlat14;
            let x_3571 : vec2<f32> = ((-(x_3565) * x_3567) + vec2<f32>(x_3569.x, x_3569.y));
            let x_3572 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3571.x, x_3571.y, x_3572.z, x_3572.w);
            let x_3574 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3574, vec2<f32>(0.0f, 0.0f));
            let x_3577 : vec2<f32> = u_xlat66;
            let x_3579 : vec2<f32> = u_xlat66;
            let x_3581 : vec4<f32> = u_xlat13;
            let x_3583 : vec2<f32> = ((-(x_3577) * x_3579) + vec2<f32>(x_3581.y, x_3581.w));
            let x_3584 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3583.x, x_3584.y, x_3583.y);
            let x_3586 : vec4<f32> = u_xlat14;
            let x_3588 : vec2<f32> = (vec2<f32>(x_3586.x, x_3586.y) + vec2<f32>(2.0f, 2.0f));
            let x_3589 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3588.x, x_3588.y, x_3589.z, x_3589.w);
            let x_3591 : vec3<f32> = u_xlat39;
            let x_3593 : vec2<f32> = (vec2<f32>(x_3591.x, x_3591.z) + vec2<f32>(2.0f, 2.0f));
            let x_3594 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3594.x, x_3593.x, x_3594.z, x_3593.y);
            let x_3597 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3597 * 0.08163200318813323975f);
            let x_3600 : vec4<f32> = u_xlat13;
            let x_3602 : vec3<f32> = (vec3<f32>(x_3600.z, x_3600.x, x_3600.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3603 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3602.x, x_3602.y, x_3602.z, x_3603.w);
            let x_3605 : vec4<f32> = u_xlat14;
            let x_3607 : vec2<f32> = (vec2<f32>(x_3605.x, x_3605.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3608 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3607.x, x_3607.y, x_3608.z, x_3608.w);
            let x_3611 : f32 = u_xlat17.y;
            u_xlat16.x = x_3611;
            let x_3613 : vec2<f32> = u_xlat64;
            let x_3616 : vec2<f32> = ((vec2<f32>(x_3613.x, x_3613.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3617 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3617.x, x_3616.x, x_3617.z, x_3616.y);
            let x_3619 : vec2<f32> = u_xlat64;
            let x_3622 : vec2<f32> = ((vec2<f32>(x_3619.x, x_3619.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3623 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3622.x, x_3623.y, x_3622.y, x_3623.w);
            let x_3626 : f32 = u_xlat13.x;
            u_xlat14.y = x_3626;
            let x_3629 : f32 = u_xlat15.y;
            u_xlat14.w = x_3629;
            let x_3631 : vec4<f32> = u_xlat14;
            let x_3632 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3631 + x_3632);
            let x_3634 : vec2<f32> = u_xlat64;
            let x_3637 : vec2<f32> = ((vec2<f32>(x_3634.y, x_3634.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3638 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3638.x, x_3637.x, x_3638.z, x_3637.y);
            let x_3640 : vec2<f32> = u_xlat64;
            let x_3643 : vec2<f32> = ((vec2<f32>(x_3640.y, x_3640.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3644 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3643.x, x_3644.y, x_3643.y, x_3644.w);
            let x_3647 : f32 = u_xlat13.y;
            u_xlat15.y = x_3647;
            let x_3649 : vec4<f32> = u_xlat15;
            let x_3650 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3649 + x_3650);
            let x_3652 : vec4<f32> = u_xlat14;
            let x_3653 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3652 / x_3653);
            let x_3655 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3655 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3657 : vec4<f32> = u_xlat15;
            let x_3658 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3657 / x_3658);
            let x_3660 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3660 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3662 : vec4<f32> = u_xlat14;
            let x_3665 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3662.w, x_3662.x, x_3662.y, x_3662.z) * vec4<f32>(x_3665.x, x_3665.x, x_3665.x, x_3665.x));
            let x_3668 : vec4<f32> = u_xlat15;
            let x_3671 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3668.x, x_3668.w, x_3668.y, x_3668.z) * vec4<f32>(x_3671.y, x_3671.y, x_3671.y, x_3671.y));
            let x_3674 : vec4<f32> = u_xlat14;
            let x_3675 : vec3<f32> = vec3<f32>(x_3674.y, x_3674.z, x_3674.w);
            let x_3676 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3675.x, x_3676.y, x_3675.y, x_3675.z);
            let x_3679 : f32 = u_xlat15.x;
            u_xlat17.y = x_3679;
            let x_3681 : vec4<f32> = u_xlat12;
            let x_3684 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3687 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3681.x, x_3681.y, x_3681.x, x_3681.y) * vec4<f32>(x_3684.x, x_3684.y, x_3684.x, x_3684.y)) + vec4<f32>(x_3687.x, x_3687.y, x_3687.z, x_3687.y));
            let x_3690 : vec4<f32> = u_xlat12;
            let x_3693 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3696 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3690.x, x_3690.y) * vec2<f32>(x_3693.x, x_3693.y)) + vec2<f32>(x_3696.w, x_3696.y));
            let x_3700 : f32 = u_xlat17.y;
            u_xlat14.y = x_3700;
            let x_3703 : f32 = u_xlat15.z;
            u_xlat17.y = x_3703;
            let x_3705 : vec4<f32> = u_xlat12;
            let x_3708 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3711 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3705.x, x_3705.y, x_3705.x, x_3705.y) * vec4<f32>(x_3708.x, x_3708.y, x_3708.x, x_3708.y)) + vec4<f32>(x_3711.x, x_3711.y, x_3711.z, x_3711.y));
            let x_3714 : vec4<f32> = u_xlat12;
            let x_3717 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3720 : vec4<f32> = u_xlat17;
            let x_3722 : vec2<f32> = ((vec2<f32>(x_3714.x, x_3714.y) * vec2<f32>(x_3717.x, x_3717.y)) + vec2<f32>(x_3720.w, x_3720.y));
            let x_3723 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3722.x, x_3722.y, x_3723.z, x_3723.w);
            let x_3726 : f32 = u_xlat17.y;
            u_xlat14.z = x_3726;
            let x_3729 : vec4<f32> = u_xlat12;
            let x_3732 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3735 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3729.x, x_3729.y, x_3729.x, x_3729.y) * vec4<f32>(x_3732.x, x_3732.y, x_3732.x, x_3732.y)) + vec4<f32>(x_3735.x, x_3735.y, x_3735.x, x_3735.z));
            let x_3739 : f32 = u_xlat15.w;
            u_xlat17.y = x_3739;
            let x_3742 : vec4<f32> = u_xlat12;
            let x_3745 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3748 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3742.x, x_3742.y, x_3742.x, x_3742.y) * vec4<f32>(x_3745.x, x_3745.y, x_3745.x, x_3745.y)) + vec4<f32>(x_3748.x, x_3748.y, x_3748.z, x_3748.y));
            let x_3752 : vec4<f32> = u_xlat12;
            let x_3755 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3758 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3752.x, x_3752.y) * vec2<f32>(x_3755.x, x_3755.y)) + vec2<f32>(x_3758.w, x_3758.y));
            let x_3762 : f32 = u_xlat17.y;
            u_xlat14.w = x_3762;
            let x_3765 : vec4<f32> = u_xlat12;
            let x_3768 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3771 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3765.x, x_3765.y) * vec2<f32>(x_3768.x, x_3768.y)) + vec2<f32>(x_3771.x, x_3771.w));
            let x_3774 : vec4<f32> = u_xlat17;
            let x_3775 : vec3<f32> = vec3<f32>(x_3774.x, x_3774.z, x_3774.w);
            let x_3776 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3775.x, x_3776.y, x_3775.y, x_3775.z);
            let x_3778 : vec4<f32> = u_xlat12;
            let x_3781 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3784 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3778.x, x_3778.y, x_3778.x, x_3778.y) * vec4<f32>(x_3781.x, x_3781.y, x_3781.x, x_3781.y)) + vec4<f32>(x_3784.x, x_3784.y, x_3784.z, x_3784.y));
            let x_3788 : vec4<f32> = u_xlat12;
            let x_3791 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3794 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3788.x, x_3788.y) * vec2<f32>(x_3791.x, x_3791.y)) + vec2<f32>(x_3794.w, x_3794.y));
            let x_3798 : f32 = u_xlat14.x;
            u_xlat15.x = x_3798;
            let x_3800 : vec4<f32> = u_xlat12;
            let x_3803 : vec4<f32> = x_945.x_AdditionalShadowmapSize;
            let x_3806 : vec4<f32> = u_xlat15;
            let x_3808 : vec2<f32> = ((vec2<f32>(x_3800.x, x_3800.y) * vec2<f32>(x_3803.x, x_3803.y)) + vec2<f32>(x_3806.x, x_3806.y));
            let x_3809 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3808.x, x_3808.y, x_3809.z, x_3809.w);
            let x_3812 : vec4<f32> = u_xlat13;
            let x_3814 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3812.x, x_3812.x, x_3812.x, x_3812.x) * x_3814);
            let x_3817 : vec4<f32> = u_xlat13;
            let x_3819 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3817.y, x_3817.y, x_3817.y, x_3817.y) * x_3819);
            let x_3822 : vec4<f32> = u_xlat13;
            let x_3824 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3822.z, x_3822.z, x_3822.z, x_3822.z) * x_3824);
            let x_3826 : vec4<f32> = u_xlat13;
            let x_3828 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3826.w, x_3826.w, x_3826.w, x_3826.w) * x_3828);
            let x_3831 : vec4<f32> = u_xlat18;
            let x_3832 : vec2<f32> = vec2<f32>(x_3831.x, x_3831.y);
            let x_3834 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3832.x, x_3832.y, x_3834);
            let x_3841 : vec3<f32> = txVec43;
            let x_3843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3841.xy, x_3841.z);
            u_xlat86 = x_3843;
            let x_3845 : vec4<f32> = u_xlat18;
            let x_3846 : vec2<f32> = vec2<f32>(x_3845.z, x_3845.w);
            let x_3848 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3846.x, x_3846.y, x_3848);
            let x_3855 : vec3<f32> = txVec44;
            let x_3857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3855.xy, x_3855.z);
            u_xlat87 = x_3857;
            let x_3858 : f32 = u_xlat87;
            let x_3860 : f32 = u_xlat23.y;
            u_xlat87 = (x_3858 * x_3860);
            let x_3863 : f32 = u_xlat23.x;
            let x_3864 : f32 = u_xlat86;
            let x_3866 : f32 = u_xlat87;
            u_xlat86 = ((x_3863 * x_3864) + x_3866);
            let x_3869 : vec2<f32> = u_xlat64;
            let x_3871 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3869.x, x_3869.y, x_3871);
            let x_3878 : vec3<f32> = txVec45;
            let x_3880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3878.xy, x_3878.z);
            u_xlat87 = x_3880;
            let x_3882 : f32 = u_xlat23.z;
            let x_3883 : f32 = u_xlat87;
            let x_3885 : f32 = u_xlat86;
            u_xlat86 = ((x_3882 * x_3883) + x_3885);
            let x_3888 : vec4<f32> = u_xlat21;
            let x_3889 : vec2<f32> = vec2<f32>(x_3888.x, x_3888.y);
            let x_3891 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3889.x, x_3889.y, x_3891);
            let x_3898 : vec3<f32> = txVec46;
            let x_3900 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3898.xy, x_3898.z);
            u_xlat87 = x_3900;
            let x_3902 : f32 = u_xlat23.w;
            let x_3903 : f32 = u_xlat87;
            let x_3905 : f32 = u_xlat86;
            u_xlat86 = ((x_3902 * x_3903) + x_3905);
            let x_3908 : vec4<f32> = u_xlat19;
            let x_3909 : vec2<f32> = vec2<f32>(x_3908.x, x_3908.y);
            let x_3911 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3909.x, x_3909.y, x_3911);
            let x_3918 : vec3<f32> = txVec47;
            let x_3920 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3918.xy, x_3918.z);
            u_xlat87 = x_3920;
            let x_3922 : f32 = u_xlat24.x;
            let x_3923 : f32 = u_xlat87;
            let x_3925 : f32 = u_xlat86;
            u_xlat86 = ((x_3922 * x_3923) + x_3925);
            let x_3928 : vec4<f32> = u_xlat19;
            let x_3929 : vec2<f32> = vec2<f32>(x_3928.z, x_3928.w);
            let x_3931 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3929.x, x_3929.y, x_3931);
            let x_3938 : vec3<f32> = txVec48;
            let x_3940 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3938.xy, x_3938.z);
            u_xlat87 = x_3940;
            let x_3942 : f32 = u_xlat24.y;
            let x_3943 : f32 = u_xlat87;
            let x_3945 : f32 = u_xlat86;
            u_xlat86 = ((x_3942 * x_3943) + x_3945);
            let x_3948 : vec4<f32> = u_xlat20;
            let x_3949 : vec2<f32> = vec2<f32>(x_3948.x, x_3948.y);
            let x_3951 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3949.x, x_3949.y, x_3951);
            let x_3958 : vec3<f32> = txVec49;
            let x_3960 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3958.xy, x_3958.z);
            u_xlat87 = x_3960;
            let x_3962 : f32 = u_xlat24.z;
            let x_3963 : f32 = u_xlat87;
            let x_3965 : f32 = u_xlat86;
            u_xlat86 = ((x_3962 * x_3963) + x_3965);
            let x_3968 : vec4<f32> = u_xlat21;
            let x_3969 : vec2<f32> = vec2<f32>(x_3968.z, x_3968.w);
            let x_3971 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3969.x, x_3969.y, x_3971);
            let x_3978 : vec3<f32> = txVec50;
            let x_3980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3978.xy, x_3978.z);
            u_xlat87 = x_3980;
            let x_3982 : f32 = u_xlat24.w;
            let x_3983 : f32 = u_xlat87;
            let x_3985 : f32 = u_xlat86;
            u_xlat86 = ((x_3982 * x_3983) + x_3985);
            let x_3988 : vec4<f32> = u_xlat22;
            let x_3989 : vec2<f32> = vec2<f32>(x_3988.x, x_3988.y);
            let x_3991 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3989.x, x_3989.y, x_3991);
            let x_3998 : vec3<f32> = txVec51;
            let x_4000 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3998.xy, x_3998.z);
            u_xlat87 = x_4000;
            let x_4002 : f32 = u_xlat25.x;
            let x_4003 : f32 = u_xlat87;
            let x_4005 : f32 = u_xlat86;
            u_xlat86 = ((x_4002 * x_4003) + x_4005);
            let x_4008 : vec4<f32> = u_xlat22;
            let x_4009 : vec2<f32> = vec2<f32>(x_4008.z, x_4008.w);
            let x_4011 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4009.x, x_4009.y, x_4011);
            let x_4018 : vec3<f32> = txVec52;
            let x_4020 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4018.xy, x_4018.z);
            u_xlat87 = x_4020;
            let x_4022 : f32 = u_xlat25.y;
            let x_4023 : f32 = u_xlat87;
            let x_4025 : f32 = u_xlat86;
            u_xlat86 = ((x_4022 * x_4023) + x_4025);
            let x_4028 : vec2<f32> = u_xlat40;
            let x_4030 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4028.x, x_4028.y, x_4030);
            let x_4037 : vec3<f32> = txVec53;
            let x_4039 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4037.xy, x_4037.z);
            u_xlat87 = x_4039;
            let x_4041 : f32 = u_xlat25.z;
            let x_4042 : f32 = u_xlat87;
            let x_4044 : f32 = u_xlat86;
            u_xlat86 = ((x_4041 * x_4042) + x_4044);
            let x_4047 : vec2<f32> = u_xlat72;
            let x_4049 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4047.x, x_4047.y, x_4049);
            let x_4056 : vec3<f32> = txVec54;
            let x_4058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4056.xy, x_4056.z);
            u_xlat87 = x_4058;
            let x_4060 : f32 = u_xlat25.w;
            let x_4061 : f32 = u_xlat87;
            let x_4063 : f32 = u_xlat86;
            u_xlat86 = ((x_4060 * x_4061) + x_4063);
            let x_4066 : vec4<f32> = u_xlat17;
            let x_4067 : vec2<f32> = vec2<f32>(x_4066.x, x_4066.y);
            let x_4069 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4067.x, x_4067.y, x_4069);
            let x_4076 : vec3<f32> = txVec55;
            let x_4078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4076.xy, x_4076.z);
            u_xlat87 = x_4078;
            let x_4080 : f32 = u_xlat13.x;
            let x_4081 : f32 = u_xlat87;
            let x_4083 : f32 = u_xlat86;
            u_xlat86 = ((x_4080 * x_4081) + x_4083);
            let x_4086 : vec4<f32> = u_xlat17;
            let x_4087 : vec2<f32> = vec2<f32>(x_4086.z, x_4086.w);
            let x_4089 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4087.x, x_4087.y, x_4089);
            let x_4096 : vec3<f32> = txVec56;
            let x_4098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4096.xy, x_4096.z);
            u_xlat87 = x_4098;
            let x_4100 : f32 = u_xlat13.y;
            let x_4101 : f32 = u_xlat87;
            let x_4103 : f32 = u_xlat86;
            u_xlat86 = ((x_4100 * x_4101) + x_4103);
            let x_4106 : vec2<f32> = u_xlat67;
            let x_4108 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4106.x, x_4106.y, x_4108);
            let x_4115 : vec3<f32> = txVec57;
            let x_4117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4115.xy, x_4115.z);
            u_xlat87 = x_4117;
            let x_4119 : f32 = u_xlat13.z;
            let x_4120 : f32 = u_xlat87;
            let x_4122 : f32 = u_xlat86;
            u_xlat86 = ((x_4119 * x_4120) + x_4122);
            let x_4125 : vec4<f32> = u_xlat12;
            let x_4126 : vec2<f32> = vec2<f32>(x_4125.x, x_4125.y);
            let x_4128 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4126.x, x_4126.y, x_4128);
            let x_4135 : vec3<f32> = txVec58;
            let x_4137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4135.xy, x_4135.z);
            u_xlat87 = x_4137;
            let x_4139 : f32 = u_xlat13.w;
            let x_4140 : f32 = u_xlat87;
            let x_4142 : f32 = u_xlat86;
            u_xlat85 = ((x_4139 * x_4140) + x_4142);
          }
        }
      } else {
        let x_4146 : vec4<f32> = u_xlat11;
        let x_4147 : vec2<f32> = vec2<f32>(x_4146.x, x_4146.y);
        let x_4149 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4147.x, x_4147.y, x_4149);
        let x_4156 : vec3<f32> = txVec59;
        let x_4158 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4156.xy, x_4156.z);
        u_xlat85 = x_4158;
      }
      let x_4159 : i32 = u_xlati5;
      let x_4161 : f32 = x_945.x_AdditionalShadowParams[x_4159].x;
      u_xlat86 = (1.0f + -(x_4161));
      let x_4164 : f32 = u_xlat85;
      let x_4165 : i32 = u_xlati5;
      let x_4167 : f32 = x_945.x_AdditionalShadowParams[x_4165].x;
      let x_4169 : f32 = u_xlat86;
      u_xlat85 = ((x_4164 * x_4167) + x_4169);
      let x_4172 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_4172);
      let x_4176 : f32 = u_xlat11.z;
      u_xlatb87 = (x_4176 >= 1.0f);
      let x_4178 : bool = u_xlatb86;
      let x_4179 : bool = u_xlatb87;
      u_xlatb86 = (x_4178 | x_4179);
      let x_4181 : bool = u_xlatb86;
      let x_4182 : f32 = u_xlat85;
      u_xlat85 = select(x_4182, 1.0f, x_4181);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_4185 : f32 = u_xlat85;
    u_xlat86 = (-(x_4185) + 1.0f);
    let x_4188 : f32 = u_xlat80;
    let x_4189 : f32 = u_xlat86;
    let x_4191 : f32 = u_xlat85;
    u_xlat85 = ((x_4188 * x_4189) + x_4191);
    let x_4194 : i32 = u_xlati5;
    u_xlati86 = (1i << bitcast<u32>((x_4194 & 31i)));
    let x_4197 : i32 = u_xlati86;
    let x_4200 : f32 = x_2290.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_4197) & bitcast<u32>(x_4200)));
    let x_4204 : i32 = u_xlati86;
    if ((x_4204 != 0i)) {
      let x_4208 : i32 = u_xlati5;
      let x_4210 : f32 = x_2290.x_AdditionalLightsLightTypes[x_4208].el;
      u_xlati86 = i32(x_4210);
      let x_4213 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_4213 != 0i));
      let x_4217 : i32 = u_xlati5;
      u_xlati88 = (x_4217 << bitcast<u32>(2i));
      let x_4219 : i32 = u_xlati87;
      if ((x_4219 != 0i)) {
        let x_4223 : vec3<f32> = vs_TEXCOORD7;
        let x_4225 : i32 = u_xlati88;
        let x_4228 : i32 = u_xlati88;
        let x_4232 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[((x_4225 + 1i) / 4i)][((x_4228 + 1i) % 4i)];
        let x_4234 : vec3<f32> = (vec3<f32>(x_4223.y, x_4223.y, x_4223.y) * vec3<f32>(x_4232.x, x_4232.y, x_4232.w));
        let x_4235 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4234.x, x_4234.y, x_4234.z, x_4235.w);
        let x_4237 : i32 = u_xlati88;
        let x_4239 : i32 = u_xlati88;
        let x_4242 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[(x_4237 / 4i)][(x_4239 % 4i)];
        let x_4244 : vec3<f32> = vs_TEXCOORD7;
        let x_4247 : vec4<f32> = u_xlat11;
        let x_4249 : vec3<f32> = ((vec3<f32>(x_4242.x, x_4242.y, x_4242.w) * vec3<f32>(x_4244.x, x_4244.x, x_4244.x)) + vec3<f32>(x_4247.x, x_4247.y, x_4247.z));
        let x_4250 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4249.x, x_4249.y, x_4249.z, x_4250.w);
        let x_4252 : i32 = u_xlati88;
        let x_4255 : i32 = u_xlati88;
        let x_4259 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[((x_4252 + 2i) / 4i)][((x_4255 + 2i) % 4i)];
        let x_4261 : vec3<f32> = vs_TEXCOORD7;
        let x_4264 : vec4<f32> = u_xlat11;
        let x_4266 : vec3<f32> = ((vec3<f32>(x_4259.x, x_4259.y, x_4259.w) * vec3<f32>(x_4261.z, x_4261.z, x_4261.z)) + vec3<f32>(x_4264.x, x_4264.y, x_4264.z));
        let x_4267 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4266.x, x_4266.y, x_4266.z, x_4267.w);
        let x_4269 : vec4<f32> = u_xlat11;
        let x_4271 : i32 = u_xlati88;
        let x_4274 : i32 = u_xlati88;
        let x_4278 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[((x_4271 + 3i) / 4i)][((x_4274 + 3i) % 4i)];
        let x_4280 : vec3<f32> = (vec3<f32>(x_4269.x, x_4269.y, x_4269.z) + vec3<f32>(x_4278.x, x_4278.y, x_4278.w));
        let x_4281 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4280.x, x_4280.y, x_4280.z, x_4281.w);
        let x_4283 : vec4<f32> = u_xlat11;
        let x_4285 : vec4<f32> = u_xlat11;
        let x_4287 : vec2<f32> = (vec2<f32>(x_4283.x, x_4283.y) / vec2<f32>(x_4285.z, x_4285.z));
        let x_4288 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4287.x, x_4287.y, x_4288.z, x_4288.w);
        let x_4290 : vec4<f32> = u_xlat11;
        let x_4293 : vec2<f32> = ((vec2<f32>(x_4290.x, x_4290.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4294 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4293.x, x_4293.y, x_4294.z, x_4294.w);
        let x_4296 : vec4<f32> = u_xlat11;
        let x_4300 : vec2<f32> = clamp(vec2<f32>(x_4296.x, x_4296.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4301 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4300.x, x_4300.y, x_4301.z, x_4301.w);
        let x_4303 : i32 = u_xlati5;
        let x_4305 : vec4<f32> = x_2290.x_AdditionalLightsCookieAtlasUVRects[x_4303];
        let x_4307 : vec4<f32> = u_xlat11;
        let x_4310 : i32 = u_xlati5;
        let x_4312 : vec4<f32> = x_2290.x_AdditionalLightsCookieAtlasUVRects[x_4310];
        let x_4314 : vec2<f32> = ((vec2<f32>(x_4305.x, x_4305.y) * vec2<f32>(x_4307.x, x_4307.y)) + vec2<f32>(x_4312.z, x_4312.w));
        let x_4315 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4314.x, x_4314.y, x_4315.z, x_4315.w);
      } else {
        let x_4318 : i32 = u_xlati86;
        u_xlatb86 = (x_4318 == 1i);
        let x_4320 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4320);
        let x_4322 : i32 = u_xlati86;
        if ((x_4322 != 0i)) {
          let x_4327 : vec3<f32> = vs_TEXCOORD7;
          let x_4329 : i32 = u_xlati88;
          let x_4332 : i32 = u_xlati88;
          let x_4336 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[((x_4329 + 1i) / 4i)][((x_4332 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4327.y, x_4327.y) * vec2<f32>(x_4336.x, x_4336.y));
          let x_4339 : i32 = u_xlati88;
          let x_4341 : i32 = u_xlati88;
          let x_4344 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[(x_4339 / 4i)][(x_4341 % 4i)];
          let x_4346 : vec3<f32> = vs_TEXCOORD7;
          let x_4349 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4344.x, x_4344.y) * vec2<f32>(x_4346.x, x_4346.x)) + x_4349);
          let x_4351 : i32 = u_xlati88;
          let x_4354 : i32 = u_xlati88;
          let x_4358 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[((x_4351 + 2i) / 4i)][((x_4354 + 2i) % 4i)];
          let x_4360 : vec3<f32> = vs_TEXCOORD7;
          let x_4363 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4358.x, x_4358.y) * vec2<f32>(x_4360.z, x_4360.z)) + x_4363);
          let x_4365 : vec2<f32> = u_xlat63;
          let x_4366 : i32 = u_xlati88;
          let x_4369 : i32 = u_xlati88;
          let x_4373 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[((x_4366 + 3i) / 4i)][((x_4369 + 3i) % 4i)];
          u_xlat63 = (x_4365 + vec2<f32>(x_4373.x, x_4373.y));
          let x_4376 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4376 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4379 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4379);
          let x_4381 : i32 = u_xlati5;
          let x_4383 : vec4<f32> = x_2290.x_AdditionalLightsCookieAtlasUVRects[x_4381];
          let x_4385 : vec2<f32> = u_xlat63;
          let x_4387 : i32 = u_xlati5;
          let x_4389 : vec4<f32> = x_2290.x_AdditionalLightsCookieAtlasUVRects[x_4387];
          let x_4391 : vec2<f32> = ((vec2<f32>(x_4383.x, x_4383.y) * x_4385) + vec2<f32>(x_4389.z, x_4389.w));
          let x_4392 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4391.x, x_4391.y, x_4392.z, x_4392.w);
        } else {
          let x_4395 : vec3<f32> = vs_TEXCOORD7;
          let x_4397 : i32 = u_xlati88;
          let x_4400 : i32 = u_xlati88;
          let x_4404 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[((x_4397 + 1i) / 4i)][((x_4400 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4395.y, x_4395.y, x_4395.y, x_4395.y) * x_4404);
          let x_4406 : i32 = u_xlati88;
          let x_4408 : i32 = u_xlati88;
          let x_4411 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[(x_4406 / 4i)][(x_4408 % 4i)];
          let x_4412 : vec3<f32> = vs_TEXCOORD7;
          let x_4415 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4411 * vec4<f32>(x_4412.x, x_4412.x, x_4412.x, x_4412.x)) + x_4415);
          let x_4417 : i32 = u_xlati88;
          let x_4420 : i32 = u_xlati88;
          let x_4424 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[((x_4417 + 2i) / 4i)][((x_4420 + 2i) % 4i)];
          let x_4425 : vec3<f32> = vs_TEXCOORD7;
          let x_4428 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4424 * vec4<f32>(x_4425.z, x_4425.z, x_4425.z, x_4425.z)) + x_4428);
          let x_4430 : vec4<f32> = u_xlat12;
          let x_4431 : i32 = u_xlati88;
          let x_4434 : i32 = u_xlati88;
          let x_4438 : vec4<f32> = x_2290.x_AdditionalLightsWorldToLights[((x_4431 + 3i) / 4i)][((x_4434 + 3i) % 4i)];
          u_xlat12 = (x_4430 + x_4438);
          let x_4440 : vec4<f32> = u_xlat12;
          let x_4442 : vec4<f32> = u_xlat12;
          let x_4444 : vec3<f32> = (vec3<f32>(x_4440.x, x_4440.y, x_4440.z) / vec3<f32>(x_4442.w, x_4442.w, x_4442.w));
          let x_4445 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4444.x, x_4444.y, x_4444.z, x_4445.w);
          let x_4447 : vec4<f32> = u_xlat12;
          let x_4449 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4447.x, x_4447.y, x_4447.z), vec3<f32>(x_4449.x, x_4449.y, x_4449.z));
          let x_4452 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4452);
          let x_4454 : f32 = u_xlat86;
          let x_4456 : vec4<f32> = u_xlat12;
          let x_4458 : vec3<f32> = (vec3<f32>(x_4454, x_4454, x_4454) * vec3<f32>(x_4456.x, x_4456.y, x_4456.z));
          let x_4459 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4458.x, x_4458.y, x_4458.z, x_4459.w);
          let x_4461 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4461.x, x_4461.y, x_4461.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4466 : f32 = u_xlat86;
          u_xlat86 = max(x_4466, 0.00000099999999747524f);
          let x_4469 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4469);
          let x_4471 : f32 = u_xlat86;
          let x_4473 : vec4<f32> = u_xlat12;
          let x_4475 : vec3<f32> = (vec3<f32>(x_4471, x_4471, x_4471) * vec3<f32>(x_4473.z, x_4473.x, x_4473.y));
          let x_4476 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4475.x, x_4475.y, x_4475.z, x_4476.w);
          let x_4479 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4479);
          let x_4483 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4483, 0.0f, 1.0f);
          let x_4487 : vec4<f32> = u_xlat13;
          let x_4489 : vec4<bool> = (vec4<f32>(x_4487.y, x_4487.z, x_4487.y, x_4487.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4489.x, x_4489.y);
          let x_4492 : bool = u_xlatb63.x;
          if (x_4492) {
            let x_4497 : f32 = u_xlat13.x;
            x_4493 = x_4497;
          } else {
            let x_4500 : f32 = u_xlat13.x;
            x_4493 = -(x_4500);
          }
          let x_4502 : f32 = x_4493;
          u_xlat63.x = x_4502;
          let x_4505 : bool = u_xlatb63.y;
          if (x_4505) {
            let x_4510 : f32 = u_xlat13.x;
            x_4506 = x_4510;
          } else {
            let x_4513 : f32 = u_xlat13.x;
            x_4506 = -(x_4513);
          }
          let x_4515 : f32 = x_4506;
          u_xlat63.y = x_4515;
          let x_4517 : vec4<f32> = u_xlat12;
          let x_4519 : f32 = u_xlat86;
          let x_4522 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4517.x, x_4517.y) * vec2<f32>(x_4519, x_4519)) + x_4522);
          let x_4524 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4524 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4527 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4527, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4531 : i32 = u_xlati5;
          let x_4533 : vec4<f32> = x_2290.x_AdditionalLightsCookieAtlasUVRects[x_4531];
          let x_4535 : vec2<f32> = u_xlat63;
          let x_4537 : i32 = u_xlati5;
          let x_4539 : vec4<f32> = x_2290.x_AdditionalLightsCookieAtlasUVRects[x_4537];
          let x_4541 : vec2<f32> = ((vec2<f32>(x_4533.x, x_4533.y) * x_4535) + vec2<f32>(x_4539.z, x_4539.w));
          let x_4542 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4541.x, x_4541.y, x_4542.z, x_4542.w);
        }
      }
      let x_4549 : vec4<f32> = u_xlat11;
      let x_4551 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4549.x, x_4549.y), 0.0f);
      u_xlat11 = x_4551;
      let x_4553 : bool = u_xlatb7.y;
      if (x_4553) {
        let x_4558 : f32 = u_xlat11.w;
        x_4554 = x_4558;
      } else {
        let x_4561 : f32 = u_xlat11.x;
        x_4554 = x_4561;
      }
      let x_4562 : f32 = x_4554;
      u_xlat86 = x_4562;
      let x_4564 : bool = u_xlatb7.x;
      if (x_4564) {
        let x_4568 : vec4<f32> = u_xlat11;
        x_4565 = vec3<f32>(x_4568.x, x_4568.y, x_4568.z);
      } else {
        let x_4571 : f32 = u_xlat86;
        x_4565 = vec3<f32>(x_4571, x_4571, x_4571);
      }
      let x_4573 : vec3<f32> = x_4565;
      let x_4574 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4573.x, x_4573.y, x_4573.z, x_4574.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4580 : vec4<f32> = u_xlat11;
    let x_4582 : i32 = u_xlati5;
    let x_4584 : vec4<f32> = x_2774.x_AdditionalLightsColor[x_4582];
    let x_4586 : vec3<f32> = (vec3<f32>(x_4580.x, x_4580.y, x_4580.z) * vec3<f32>(x_4584.x, x_4584.y, x_4584.z));
    let x_4587 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4586.x, x_4586.y, x_4586.z, x_4587.w);
    let x_4589 : f32 = u_xlat84;
    let x_4590 : f32 = u_xlat85;
    u_xlat5.x = (x_4589 * x_4590);
    let x_4593 : vec4<f32> = u_xlat1;
    let x_4595 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4593.x, x_4593.y, x_4593.z), vec3<f32>(x_4595.x, x_4595.y, x_4595.z));
    let x_4598 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4598, 0.0f, 1.0f);
    let x_4601 : f32 = u_xlat5.x;
    let x_4602 : f32 = u_xlat84;
    u_xlat5.x = (x_4601 * x_4602);
    let x_4605 : vec4<f32> = u_xlat5;
    let x_4607 : vec4<f32> = u_xlat11;
    let x_4609 : vec3<f32> = (vec3<f32>(x_4605.x, x_4605.x, x_4605.x) * vec3<f32>(x_4607.x, x_4607.y, x_4607.z));
    let x_4610 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4609.x, x_4609.y, x_4609.z, x_4610.w);
    let x_4612 : vec4<f32> = u_xlat9;
    let x_4614 : vec2<f32> = u_xlat59;
    let x_4617 : vec4<f32> = u_xlat6;
    let x_4619 : vec3<f32> = ((vec3<f32>(x_4612.x, x_4612.y, x_4612.z) * vec3<f32>(x_4614.x, x_4614.x, x_4614.x)) + vec3<f32>(x_4617.x, x_4617.y, x_4617.z));
    let x_4620 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4619.x, x_4619.y, x_4619.z, x_4620.w);
    let x_4622 : vec4<f32> = u_xlat9;
    let x_4624 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_4622.x, x_4622.y, x_4622.z), vec3<f32>(x_4624.x, x_4624.y, x_4624.z));
    let x_4629 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_4629, 1.17549435e-38f);
    let x_4633 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_4633);
    let x_4636 : vec4<f32> = u_xlat5;
    let x_4638 : vec4<f32> = u_xlat9;
    let x_4640 : vec3<f32> = (vec3<f32>(x_4636.x, x_4636.x, x_4636.x) * vec3<f32>(x_4638.x, x_4638.y, x_4638.z));
    let x_4641 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4640.x, x_4640.y, x_4640.z, x_4641.w);
    let x_4643 : vec4<f32> = u_xlat1;
    let x_4645 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_4643.x, x_4643.y, x_4643.z), vec3<f32>(x_4645.x, x_4645.y, x_4645.z));
    let x_4650 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_4650, 0.0f, 1.0f);
    let x_4653 : vec4<f32> = u_xlat10;
    let x_4655 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4653.x, x_4653.y, x_4653.z), vec3<f32>(x_4655.x, x_4655.y, x_4655.z));
    let x_4658 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4658, 0.0f, 1.0f);
    let x_4661 : f32 = u_xlat5.x;
    let x_4663 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4661 * x_4663);
    let x_4667 : f32 = u_xlat5.x;
    let x_4669 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_4667 * x_4669) + 1.00001001358032226562f);
    let x_4673 : f32 = u_xlat84;
    let x_4674 : f32 = u_xlat84;
    u_xlat84 = (x_4673 * x_4674);
    let x_4677 : f32 = u_xlat5.x;
    let x_4679 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4677 * x_4679);
    let x_4682 : f32 = u_xlat84;
    u_xlat84 = max(x_4682, 0.10000000149011611938f);
    let x_4685 : f32 = u_xlat5.x;
    let x_4686 : f32 = u_xlat84;
    u_xlat5.x = (x_4685 * x_4686);
    let x_4689 : f32 = u_xlat81;
    let x_4691 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4689 * x_4691);
    let x_4694 : f32 = u_xlat79;
    let x_4696 : f32 = u_xlat5.x;
    u_xlat5.x = (x_4694 / x_4696);
    let x_4699 : vec4<f32> = u_xlat4;
    let x_4701 : vec4<f32> = u_xlat5;
    let x_4704 : vec4<f32> = u_xlat3;
    let x_4706 : vec3<f32> = ((vec3<f32>(x_4699.x, x_4699.y, x_4699.z) * vec3<f32>(x_4701.x, x_4701.x, x_4701.x)) + vec3<f32>(x_4704.x, x_4704.y, x_4704.z));
    let x_4707 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4706.x, x_4706.y, x_4706.z, x_4707.w);
    let x_4709 : vec4<f32> = u_xlat9;
    let x_4711 : vec4<f32> = u_xlat11;
    let x_4714 : vec4<f32> = u_xlat8;
    let x_4716 : vec3<f32> = ((vec3<f32>(x_4709.x, x_4709.y, x_4709.z) * vec3<f32>(x_4711.x, x_4711.y, x_4711.z)) + vec3<f32>(x_4714.x, x_4714.y, x_4714.z));
    let x_4717 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4716.x, x_4716.y, x_4716.z, x_4717.w);

    continuing {
      let x_4719 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4719 + bitcast<u32>(1i));
    }
  }
  let x_4721 : vec4<f32> = u_xlat2;
  let x_4723 : f32 = u_xlat26;
  let x_4726 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_4721.x, x_4721.y, x_4721.z) * vec3<f32>(x_4723, x_4723, x_4723)) + x_4726);
  let x_4728 : vec4<f32> = u_xlat8;
  let x_4730 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4728.x, x_4728.y, x_4728.z) + x_4730);
  let x_4734 : f32 = u_xlat78;
  let x_4736 : vec3<f32> = u_xlat0;
  let x_4737 : vec3<f32> = (vec3<f32>(x_4734, x_4734, x_4734) * x_4736);
  let x_4738 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4737.x, x_4737.y, x_4737.z, x_4738.w);
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


