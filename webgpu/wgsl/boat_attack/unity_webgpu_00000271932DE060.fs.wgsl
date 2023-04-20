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
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(6) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

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

var<private> u_xlatb80 : bool;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_629 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat80 : f32;

var<private> u_xlatu80 : u32;

var<private> u_xlati80 : i32;

@group(1) @binding(2) var<uniform> x_816 : UnityPerDraw;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb55 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat55 : f32;

@group(1) @binding(5) var<uniform> x_2243 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu55 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati55 : i32;

@group(1) @binding(1) var<uniform> x_2737 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb86 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati86 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu79 : u32;

fn main_1() {
  var x_573 : f32;
  var x_584 : f32;
  var x_595 : f32;
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
  var x_2196 : f32;
  var x_2326 : f32;
  var x_2337 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2865 : f32;
  var x_2875 : f32;
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
  var x_4445 : f32;
  var x_4458 : f32;
  var x_4506 : f32;
  var x_4517 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_63 : vec4<f32> = x_59.x_MaskMapRemapScale0;
  let x_70 : vec4<f32> = x_59.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_63.x, x_63.y, x_63.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_70.x, x_70.y, x_70.w));
  let x_77 : vec4<f32> = x_59.x_MaskMapRemapScale1;
  let x_82 : vec4<f32> = x_59.x_MaskMapRemapOffset1;
  let x_84 : vec3<f32> = ((vec3<f32>(x_77.x, x_77.y, x_77.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_82.x, x_82.y, x_82.w));
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_90 : vec4<f32> = x_59.x_MaskMapRemapScale2;
  let x_95 : vec4<f32> = x_59.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_101 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_106 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_108 : vec3<f32> = ((vec3<f32>(x_101.x, x_101.w, x_101.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_106.x, x_106.w, x_106.y));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_108.z);
  let x_114 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_118 : vec2<f32> = (vec2<f32>(x_114.z, x_114.w) + vec2<f32>(-1.0f, -1.0f));
  let x_119 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_118.x, x_118.y, x_119.z, x_119.w);
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  let x_123 : vec4<f32> = u_xlat4;
  let x_127 : vec2<f32> = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.y)) + vec2<f32>(0.5f, 0.5f));
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_127.x, x_127.y, x_128.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat4;
  let x_133 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_135 : vec2<f32> = (vec2<f32>(x_130.x, x_130.y) * vec2<f32>(x_133.x, x_133.y));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_136.z, x_136.w);
  let x_143 : vec4<f32> = u_xlat4;
  let x_146 : f32 = x_29.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_143.x, x_143.y), x_146);
  u_xlat4 = x_147;
  let x_149 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_149, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_160 : vec4<f32> = vs_TEXCOORD1;
  let x_163 : f32 = x_29.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_160.x, x_160.y), x_163);
  u_xlat5 = x_164;
  let x_170 : vec4<f32> = vs_TEXCOORD1;
  let x_173 : f32 = x_29.x_GlobalMipBias.x;
  let x_174 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_170.z, x_170.w), x_173);
  u_xlat6 = x_174;
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  let x_184 : f32 = x_29.x_GlobalMipBias.x;
  let x_185 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_181.x, x_181.y), x_184);
  u_xlat7 = x_185;
  let x_191 : vec4<f32> = vs_TEXCOORD2;
  let x_194 : f32 = x_29.x_GlobalMipBias.x;
  let x_195 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_191.z, x_191.w), x_194);
  u_xlat8 = x_195;
  let x_199 : f32 = u_xlat5.w;
  u_xlat9.x = x_199;
  let x_202 : f32 = u_xlat6.w;
  u_xlat9.y = x_202;
  let x_206 : f32 = u_xlat7.w;
  u_xlat9.z = x_206;
  let x_210 : f32 = u_xlat8.w;
  u_xlat9.w = x_210;
  let x_213 : vec4<f32> = u_xlat9;
  let x_216 : f32 = x_59.x_Smoothness0;
  let x_219 : f32 = x_59.x_Smoothness1;
  let x_222 : f32 = x_59.x_Smoothness2;
  let x_225 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_213 * vec4<f32>(x_216, x_219, x_222, x_225));
  let x_232 : f32 = x_59.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_232);
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_235) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_238 : vec4<f32> = u_xlat9;
  let x_239 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_238 + -(x_239));
  let x_242 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_242 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_246 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_246, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_250 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_254);
  let x_257 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_257 + -(x_258));
  let x_263 : f32 = u_xlat12.x;
  let x_266 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_263 * x_266);
  let x_270 : f32 = u_xlat12.y;
  let x_273 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_270 * x_273);
  let x_277 : f32 = u_xlat12.z;
  let x_280 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_277 * x_280);
  let x_284 : f32 = u_xlat12.w;
  let x_287 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_284 * x_287);
  let x_290 : vec4<f32> = u_xlat11;
  let x_291 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_290 + x_291);
  let x_293 : bool = u_xlatb79;
  let x_294 : vec4<f32> = u_xlat11;
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_295, x_294, vec4<bool>(x_293, x_293, x_293, x_293));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_300, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_304 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_304);
  let x_306 : bool = u_xlatb80;
  if (((select(0i, 1i, x_306) * -1i) != 0i)) {
    discard;
  }
  let x_313 : f32 = u_xlat79;
  u_xlat79 = (x_313 + 0.00006103515625f);
  let x_316 : vec4<f32> = u_xlat4;
  let x_317 : f32 = u_xlat79;
  u_xlat4 = (x_316 / vec4<f32>(x_317, x_317, x_317, x_317));
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_325 : vec3<f32> = (vec3<f32>(x_320.x, x_320.x, x_320.x) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.y, x_328.y, x_328.y) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat6;
  let x_338 : vec4<f32> = u_xlat12;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = u_xlat11;
  let x_348 : vec4<f32> = u_xlat6;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat4;
  let x_356 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_358 : vec3<f32> = (vec3<f32>(x_353.z, x_353.z, x_353.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat7;
  let x_363 : vec4<f32> = u_xlat6;
  let x_366 : vec4<f32> = u_xlat5;
  let x_368 : vec3<f32> = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363.x, x_363.y, x_363.z)) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_374 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_376 : vec3<f32> = (vec3<f32>(x_371.w, x_371.w, x_371.w) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat8;
  let x_381 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381.x, x_381.y, x_381.z)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_390;
  let x_393 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_393;
  let x_396 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_396;
  let x_399 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_399;
  let x_402 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_402;
  let x_405 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_405;
  let x_408 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_408;
  let x_411 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_411;
  let x_413 : vec4<f32> = u_xlat6;
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_413 + x_414);
  let x_417 : f32 = u_xlat0.z;
  u_xlat7.x = x_417;
  let x_420 : f32 = u_xlat1.z;
  u_xlat7.y = x_420;
  let x_423 : f32 = u_xlat2.z;
  u_xlat7.z = x_423;
  let x_426 : f32 = u_xlat3.y;
  u_xlat7.w = x_426;
  let x_428 : vec4<f32> = u_xlat9;
  let x_431 : f32 = x_59.x_Smoothness0;
  let x_433 : f32 = x_59.x_Smoothness1;
  let x_435 : f32 = x_59.x_Smoothness2;
  let x_437 : f32 = x_59.x_Smoothness3;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_428) * vec4<f32>(x_431, x_433, x_435, x_437)) + x_440);
  let x_444 : f32 = x_59.x_LayerHasMask0;
  let x_447 : f32 = x_59.x_LayerHasMask1;
  let x_450 : f32 = x_59.x_LayerHasMask2;
  let x_453 : f32 = x_59.x_LayerHasMask3;
  let x_455 : vec4<f32> = u_xlat7;
  let x_457 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_444, x_447, x_450, x_453) * x_455) + x_457);
  let x_460 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(x_460, x_461);
  let x_464 : f32 = u_xlat0.x;
  u_xlat7.x = x_464;
  let x_467 : f32 = u_xlat1.x;
  u_xlat7.y = x_467;
  let x_470 : f32 = u_xlat2.x;
  u_xlat7.z = x_470;
  let x_473 : f32 = u_xlat3.x;
  u_xlat7.w = x_473;
  let x_475 : vec4<f32> = u_xlat7;
  let x_478 : f32 = x_59.x_Metallic0;
  let x_481 : f32 = x_59.x_Metallic1;
  let x_484 : f32 = x_59.x_Metallic2;
  let x_487 : f32 = x_59.x_Metallic3;
  u_xlat7 = (x_475 + -(vec4<f32>(x_478, x_481, x_484, x_487)));
  let x_492 : f32 = x_59.x_LayerHasMask0;
  let x_494 : f32 = x_59.x_LayerHasMask1;
  let x_496 : f32 = x_59.x_LayerHasMask2;
  let x_498 : f32 = x_59.x_LayerHasMask3;
  let x_500 : vec4<f32> = u_xlat7;
  let x_503 : f32 = x_59.x_Metallic0;
  let x_505 : f32 = x_59.x_Metallic1;
  let x_507 : f32 = x_59.x_Metallic2;
  let x_509 : f32 = x_59.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_492, x_494, x_496, x_498) * x_500) + vec4<f32>(x_503, x_505, x_507, x_509));
  let x_512 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_512, x_513);
  let x_517 : f32 = u_xlat0.y;
  u_xlat3.x = x_517;
  let x_520 : f32 = u_xlat1.y;
  u_xlat3.y = x_520;
  let x_523 : f32 = u_xlat2.y;
  u_xlat3.z = x_523;
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_525) + x_527);
  let x_530 : f32 = x_59.x_LayerHasMask0;
  let x_532 : f32 = x_59.x_LayerHasMask1;
  let x_534 : f32 = x_59.x_LayerHasMask2;
  let x_536 : f32 = x_59.x_LayerHasMask3;
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_530, x_532, x_534, x_536) * x_538) + x_540);
  let x_543 : vec4<f32> = u_xlat4;
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_543, x_544);
  let x_548 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb1 = (x_548 == 0.0f);
  let x_553 : vec3<f32> = vs_TEXCOORD7;
  let x_557 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat27 = (-(x_553) + x_557);
  let x_559 : vec3<f32> = u_xlat27;
  let x_560 : vec3<f32> = u_xlat27;
  u_xlat2.x = dot(x_559, x_560);
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_564);
  let x_567 : vec3<f32> = u_xlat27;
  let x_568 : vec3<f32> = u_xlat2;
  u_xlat27 = (x_567 * vec3<f32>(x_568.x, x_568.x, x_568.x));
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_577 : f32 = u_xlat27.x;
    x_573 = x_577;
  } else {
    let x_580 : f32 = x_29.unity_MatrixV[0i].z;
    x_573 = x_580;
  }
  let x_581 : f32 = x_573;
  u_xlat2.x = x_581;
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_588 : f32 = u_xlat27.y;
    x_584 = x_588;
  } else {
    let x_591 : f32 = x_29.unity_MatrixV[1i].z;
    x_584 = x_591;
  }
  let x_592 : f32 = x_584;
  u_xlat2.y = x_592;
  let x_594 : bool = u_xlatb1;
  if (x_594) {
    let x_599 : f32 = u_xlat27.z;
    x_595 = x_599;
  } else {
    let x_603 : f32 = x_29.unity_MatrixV[2i].z;
    x_595 = x_603;
  }
  let x_604 : f32 = x_595;
  u_xlat2.z = x_604;
  let x_607 : vec3<f32> = vs_TEXCOORD3;
  let x_608 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_607, x_608);
  let x_612 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_612);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec3<f32> = vs_TEXCOORD3;
  let x_618 : vec3<f32> = (vec3<f32>(x_615.x, x_615.x, x_615.x) * x_617);
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec3<f32> = vs_TEXCOORD7;
  let x_631 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres0;
  let x_634 : vec3<f32> = (x_621 + -(vec3<f32>(x_631.x, x_631.y, x_631.z)));
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec3<f32> = vs_TEXCOORD7;
  let x_639 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres1;
  let x_642 : vec3<f32> = (x_637 + -(vec3<f32>(x_639.x, x_639.y, x_639.z)));
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = vs_TEXCOORD7;
  let x_648 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres2;
  let x_651 : vec3<f32> = (x_645 + -(vec3<f32>(x_648.x, x_648.y, x_648.z)));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec3<f32> = vs_TEXCOORD7;
  let x_656 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres3;
  let x_659 : vec3<f32> = (x_654 + -(vec3<f32>(x_656.x, x_656.y, x_656.z)));
  let x_660 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_668.x, x_668.y, x_668.z), vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_674 : vec4<f32> = u_xlat6;
  let x_676 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_680 : vec4<f32> = u_xlat7;
  let x_682 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_680.x, x_680.y, x_680.z), vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_688 : vec4<f32> = u_xlat3;
  let x_690 : vec4<f32> = x_629.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_688 < x_690);
  let x_693 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_693);
  let x_697 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_697);
  let x_701 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_701);
  let x_705 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_705);
  let x_709 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_709);
  let x_714 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_714);
  let x_718 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_718);
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec4<f32> = u_xlat4;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(x_723.y, x_723.z, x_723.w));
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = max(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_732.x, x_731.x, x_731.y, x_731.z);
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat80 = dot(x_735, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_740 : f32 = u_xlat80;
  u_xlat80 = (-(x_740) + 4.0f);
  let x_745 : f32 = u_xlat80;
  u_xlatu80 = u32(x_745);
  let x_749 : u32 = u_xlatu80;
  u_xlati80 = (bitcast<i32>(x_749) << bitcast<u32>(2i));
  let x_752 : vec3<f32> = vs_TEXCOORD7;
  let x_754 : i32 = u_xlati80;
  let x_757 : i32 = u_xlati80;
  let x_761 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_754 + 1i) / 4i)][((x_757 + 1i) % 4i)];
  let x_763 : vec3<f32> = (vec3<f32>(x_752.y, x_752.y, x_752.y) * vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : i32 = u_xlati80;
  let x_768 : i32 = u_xlati80;
  let x_771 : vec4<f32> = x_629.x_MainLightWorldToShadow[(x_766 / 4i)][(x_768 % 4i)];
  let x_773 : vec3<f32> = vs_TEXCOORD7;
  let x_776 : vec4<f32> = u_xlat3;
  let x_778 : vec3<f32> = ((vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(x_773.x, x_773.x, x_773.x)) + vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : i32 = u_xlati80;
  let x_784 : i32 = u_xlati80;
  let x_788 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_781 + 2i) / 4i)][((x_784 + 2i) % 4i)];
  let x_790 : vec3<f32> = vs_TEXCOORD7;
  let x_793 : vec4<f32> = u_xlat3;
  let x_795 : vec3<f32> = ((vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(x_790.z, x_790.z, x_790.z)) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat3;
  let x_800 : i32 = u_xlati80;
  let x_803 : i32 = u_xlati80;
  let x_807 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_800 + 3i) / 4i)][((x_803 + 3i) % 4i)];
  let x_809 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  u_xlat1.w = 1.0f;
  let x_818 : vec4<f32> = x_816.unity_SHAr;
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_818, x_819);
  let x_823 : vec4<f32> = x_816.unity_SHAg;
  let x_824 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_823, x_824);
  let x_828 : vec4<f32> = x_816.unity_SHAb;
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_828, x_829);
  let x_832 : vec4<f32> = u_xlat1;
  let x_834 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_832.y, x_832.z, x_832.z, x_832.x) * vec4<f32>(x_834.x, x_834.y, x_834.z, x_834.z));
  let x_838 : vec4<f32> = x_816.unity_SHBr;
  let x_839 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_838, x_839);
  let x_843 : vec4<f32> = x_816.unity_SHBg;
  let x_844 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_843, x_844);
  let x_848 : vec4<f32> = x_816.unity_SHBb;
  let x_849 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_848, x_849);
  let x_853 : f32 = u_xlat1.y;
  let x_855 : f32 = u_xlat1.y;
  u_xlat79 = (x_853 * x_855);
  let x_858 : f32 = u_xlat1.x;
  let x_860 : f32 = u_xlat1.x;
  let x_862 : f32 = u_xlat79;
  u_xlat79 = ((x_858 * x_860) + -(x_862));
  let x_867 : vec4<f32> = x_816.unity_SHC;
  let x_869 : f32 = u_xlat79;
  let x_872 : vec4<f32> = u_xlat7;
  let x_874 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.y, x_867.z) * vec3<f32>(x_869, x_869, x_869)) + vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat6;
  let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_884 : vec4<f32> = u_xlat4;
  let x_886 : vec3<f32> = max(vec3<f32>(x_884.x, x_884.y, x_884.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_887 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_890 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_890) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_895 : f32 = u_xlat79;
  u_xlat80 = (-(x_895) + 1.0f);
  let x_898 : f32 = u_xlat79;
  let x_900 : vec4<f32> = u_xlat5;
  let x_902 : vec3<f32> = (vec3<f32>(x_898, x_898, x_898) * vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat5;
  let x_909 : vec3<f32> = (vec3<f32>(x_905.x, x_905.y, x_905.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_910 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec3<f32> = u_xlat0;
  let x_914 : vec4<f32> = u_xlat5;
  let x_919 : vec3<f32> = ((vec3<f32>(x_912.x, x_912.x, x_912.x) * vec3<f32>(x_914.x, x_914.y, x_914.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_920 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : f32 = u_xlat52;
  u_xlat0.x = (-(x_922) + 1.0f);
  let x_927 : f32 = u_xlat0.x;
  let x_929 : f32 = u_xlat0.x;
  u_xlat79 = (x_927 * x_929);
  let x_931 : f32 = u_xlat79;
  u_xlat79 = max(x_931, 0.0078125f);
  let x_935 : f32 = u_xlat79;
  let x_936 : f32 = u_xlat79;
  u_xlat81 = (x_935 * x_936);
  let x_938 : f32 = u_xlat52;
  let x_939 : f32 = u_xlat80;
  u_xlat52 = (x_938 + x_939);
  let x_941 : f32 = u_xlat52;
  u_xlat52 = clamp(x_941, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat79;
  u_xlat80 = ((x_943 * 4.0f) + 2.0f);
  let x_946 : f32 = u_xlat26;
  u_xlat26 = min(x_946, 1.0f);
  let x_950 : f32 = x_629.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_950);
  let x_952 : bool = u_xlatb82;
  if (x_952) {
    let x_956 : f32 = x_629.x_MainLightShadowParams.y;
    u_xlatb82 = (x_956 == 1.0f);
    let x_958 : bool = u_xlatb82;
    if (x_958) {
      let x_961 : vec4<f32> = u_xlat3;
      let x_964 : vec4<f32> = x_629.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_961.x, x_961.y, x_961.x, x_961.y) + x_964);
      let x_968 : vec4<f32> = u_xlat7;
      let x_969 : vec2<f32> = vec2<f32>(x_968.x, x_968.y);
      let x_971 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_969.x, x_969.y, x_971);
      let x_983 : vec3<f32> = txVec0;
      let x_985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_983.xy, x_983.z);
      u_xlat8.x = x_985;
      let x_988 : vec4<f32> = u_xlat7;
      let x_989 : vec2<f32> = vec2<f32>(x_988.z, x_988.w);
      let x_991 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_989.x, x_989.y, x_991);
      let x_998 : vec3<f32> = txVec1;
      let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_998.xy, x_998.z);
      u_xlat8.y = x_1000;
      let x_1002 : vec4<f32> = u_xlat3;
      let x_1005 : vec4<f32> = x_629.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y) + x_1005);
      let x_1008 : vec4<f32> = u_xlat7;
      let x_1009 : vec2<f32> = vec2<f32>(x_1008.x, x_1008.y);
      let x_1011 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1009.x, x_1009.y, x_1011);
      let x_1018 : vec3<f32> = txVec2;
      let x_1020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1018.xy, x_1018.z);
      u_xlat8.z = x_1020;
      let x_1023 : vec4<f32> = u_xlat7;
      let x_1024 : vec2<f32> = vec2<f32>(x_1023.z, x_1023.w);
      let x_1026 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
      let x_1033 : vec3<f32> = txVec3;
      let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1033.xy, x_1033.z);
      u_xlat8.w = x_1035;
      let x_1038 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_1038, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1045 : f32 = x_629.x_MainLightShadowParams.y;
      u_xlatb83 = (x_1045 == 2.0f);
      let x_1047 : bool = u_xlatb83;
      if (x_1047) {
        let x_1050 : vec4<f32> = u_xlat3;
        let x_1053 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1050.x, x_1050.y) * vec2<f32>(x_1053.z, x_1053.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1057 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat7;
        let x_1061 : vec2<f32> = floor(vec2<f32>(x_1059.x, x_1059.y));
        let x_1062 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1066 : vec4<f32> = u_xlat3;
        let x_1069 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1066.x, x_1066.y) * vec2<f32>(x_1069.z, x_1069.w)) + -(vec2<f32>(x_1072.x, x_1072.y)));
        let x_1076 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1076.x, x_1076.x, x_1076.y, x_1076.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1080 : vec4<f32> = u_xlat8;
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1080.x, x_1080.x, x_1080.z, x_1080.z) * vec4<f32>(x_1082.x, x_1082.x, x_1082.z, x_1082.z));
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1089 : vec2<f32> = (vec2<f32>(x_1085.y, x_1085.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1090 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1089.x, x_1090.y, x_1089.y, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat9;
        let x_1095 : vec2<f32> = u_xlat59;
        let x_1097 : vec2<f32> = ((vec2<f32>(x_1092.x, x_1092.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1095));
        let x_1098 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1097.x, x_1097.y, x_1098.z, x_1098.w);
        let x_1101 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1101) + vec2<f32>(1.0f, 1.0f));
        let x_1105 : vec2<f32> = u_xlat59;
        let x_1107 : vec2<f32> = min(x_1105, vec2<f32>(0.0f, 0.0f));
        let x_1108 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1110 : vec4<f32> = u_xlat10;
        let x_1113 : vec4<f32> = u_xlat10;
        let x_1116 : vec2<f32> = u_xlat61;
        let x_1117 : vec2<f32> = ((-(vec2<f32>(x_1110.x, x_1110.y)) * vec2<f32>(x_1113.x, x_1113.y)) + x_1116);
        let x_1118 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1120 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1120, vec2<f32>(0.0f, 0.0f));
        let x_1122 : vec2<f32> = u_xlat59;
        let x_1124 : vec2<f32> = u_xlat59;
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1122) * x_1124) + vec2<f32>(x_1126.y, x_1126.w));
        let x_1129 : vec4<f32> = u_xlat10;
        let x_1131 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.y) + vec2<f32>(1.0f, 1.0f));
        let x_1132 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1134 + vec2<f32>(1.0f, 1.0f));
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1140 : vec2<f32> = (vec2<f32>(x_1136.x, x_1136.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1141 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1143 : vec2<f32> = u_xlat61;
        let x_1144 : vec2<f32> = (x_1143 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec4<f32> = u_xlat10;
        let x_1149 : vec2<f32> = (vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : vec2<f32> = u_xlat59;
        let x_1153 : vec2<f32> = (x_1152 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1154 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1156.y, x_1156.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1160 : f32 = u_xlat10.x;
        u_xlat11.z = x_1160;
        let x_1163 : f32 = u_xlat59.x;
        u_xlat11.w = x_1163;
        let x_1166 : f32 = u_xlat12.x;
        u_xlat9.z = x_1166;
        let x_1169 : f32 = u_xlat8.x;
        u_xlat9.w = x_1169;
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1173 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1171.z, x_1171.w, x_1171.x, x_1171.z) + vec4<f32>(x_1173.z, x_1173.w, x_1173.x, x_1173.z));
        let x_1177 : f32 = u_xlat11.y;
        u_xlat10.z = x_1177;
        let x_1180 : f32 = u_xlat59.y;
        u_xlat10.w = x_1180;
        let x_1183 : f32 = u_xlat9.y;
        u_xlat12.z = x_1183;
        let x_1186 : f32 = u_xlat8.z;
        u_xlat12.w = x_1186;
        let x_1188 : vec4<f32> = u_xlat10;
        let x_1190 : vec4<f32> = u_xlat12;
        let x_1192 : vec3<f32> = (vec3<f32>(x_1188.z, x_1188.y, x_1188.w) + vec3<f32>(x_1190.z, x_1190.y, x_1190.w));
        let x_1193 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1197 : vec4<f32> = u_xlat13;
        let x_1199 : vec3<f32> = (vec3<f32>(x_1195.x, x_1195.z, x_1195.w) / vec3<f32>(x_1197.z, x_1197.w, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat9;
        let x_1208 : vec3<f32> = (vec3<f32>(x_1202.x, x_1202.y, x_1202.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1209 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat12;
        let x_1213 : vec4<f32> = u_xlat8;
        let x_1215 : vec3<f32> = (vec3<f32>(x_1211.z, x_1211.y, x_1211.w) / vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
        let x_1216 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat10;
        let x_1220 : vec3<f32> = (vec3<f32>(x_1218.x, x_1218.y, x_1218.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1221 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat9;
        let x_1226 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1228 : vec3<f32> = (vec3<f32>(x_1223.y, x_1223.x, x_1223.z) * vec3<f32>(x_1226.x, x_1226.x, x_1226.x));
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1231 : vec4<f32> = u_xlat10;
        let x_1234 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1236 : vec3<f32> = (vec3<f32>(x_1231.x, x_1231.y, x_1231.z) * vec3<f32>(x_1234.y, x_1234.y, x_1234.y));
        let x_1237 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
        let x_1240 : f32 = u_xlat10.x;
        u_xlat9.w = x_1240;
        let x_1242 : vec4<f32> = u_xlat7;
        let x_1245 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y) * vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y)) + vec4<f32>(x_1248.y, x_1248.w, x_1248.x, x_1248.w));
        let x_1251 : vec4<f32> = u_xlat7;
        let x_1254 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1257 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1254.x, x_1254.y)) + vec2<f32>(x_1257.z, x_1257.w));
        let x_1261 : f32 = u_xlat9.y;
        u_xlat10.w = x_1261;
        let x_1263 : vec4<f32> = u_xlat10;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.y, x_1263.z);
        let x_1265 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1265.x, x_1264.x, x_1265.z, x_1264.y);
        let x_1267 : vec4<f32> = u_xlat7;
        let x_1270 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y) * vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y)) + vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1273.y));
        let x_1276 : vec4<f32> = u_xlat7;
        let x_1279 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.y) * vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y)) + vec4<f32>(x_1282.w, x_1282.y, x_1282.w, x_1282.z));
        let x_1285 : vec4<f32> = u_xlat7;
        let x_1288 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1291 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y) * vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y)) + vec4<f32>(x_1291.x, x_1291.w, x_1291.z, x_1291.w));
        let x_1295 : vec4<f32> = u_xlat8;
        let x_1297 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1295.x, x_1295.x, x_1295.x, x_1295.y) * vec4<f32>(x_1297.z, x_1297.w, x_1297.y, x_1297.z));
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1303 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1301.y, x_1301.y, x_1301.z, x_1301.z) * x_1303);
        let x_1307 : f32 = u_xlat8.z;
        let x_1309 : f32 = u_xlat13.y;
        u_xlat83 = (x_1307 * x_1309);
        let x_1312 : vec4<f32> = u_xlat11;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.x, x_1312.y);
        let x_1315 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1323 : vec3<f32> = txVec4;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
        u_xlat84 = x_1325;
        let x_1327 : vec4<f32> = u_xlat11;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.z, x_1327.w);
        let x_1330 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec5;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1337.xy, x_1337.z);
        u_xlat7.x = x_1339;
        let x_1342 : f32 = u_xlat7.x;
        let x_1344 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1342 * x_1344);
        let x_1348 : f32 = u_xlat14.x;
        let x_1349 : f32 = u_xlat84;
        let x_1352 : f32 = u_xlat7.x;
        u_xlat84 = ((x_1348 * x_1349) + x_1352);
        let x_1355 : vec2<f32> = u_xlat59;
        let x_1357 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec6;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1364.xy, x_1364.z);
        u_xlat7.x = x_1366;
        let x_1369 : f32 = u_xlat14.z;
        let x_1371 : f32 = u_xlat7.x;
        let x_1373 : f32 = u_xlat84;
        u_xlat84 = ((x_1369 * x_1371) + x_1373);
        let x_1376 : vec4<f32> = u_xlat10;
        let x_1377 : vec2<f32> = vec2<f32>(x_1376.x, x_1376.y);
        let x_1379 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1377.x, x_1377.y, x_1379);
        let x_1386 : vec3<f32> = txVec7;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1386.xy, x_1386.z);
        u_xlat7.x = x_1388;
        let x_1391 : f32 = u_xlat14.w;
        let x_1393 : f32 = u_xlat7.x;
        let x_1395 : f32 = u_xlat84;
        u_xlat84 = ((x_1391 * x_1393) + x_1395);
        let x_1398 : vec4<f32> = u_xlat12;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.x, x_1398.y);
        let x_1401 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec8;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat7.x = x_1410;
        let x_1413 : f32 = u_xlat15.x;
        let x_1415 : f32 = u_xlat7.x;
        let x_1417 : f32 = u_xlat84;
        u_xlat84 = ((x_1413 * x_1415) + x_1417);
        let x_1420 : vec4<f32> = u_xlat12;
        let x_1421 : vec2<f32> = vec2<f32>(x_1420.z, x_1420.w);
        let x_1423 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1430 : vec3<f32> = txVec9;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1430.xy, x_1430.z);
        u_xlat7.x = x_1432;
        let x_1435 : f32 = u_xlat15.y;
        let x_1437 : f32 = u_xlat7.x;
        let x_1439 : f32 = u_xlat84;
        u_xlat84 = ((x_1435 * x_1437) + x_1439);
        let x_1442 : vec4<f32> = u_xlat10;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec10;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1452.xy, x_1452.z);
        u_xlat7.x = x_1454;
        let x_1457 : f32 = u_xlat15.z;
        let x_1459 : f32 = u_xlat7.x;
        let x_1461 : f32 = u_xlat84;
        u_xlat84 = ((x_1457 * x_1459) + x_1461);
        let x_1464 : vec4<f32> = u_xlat9;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.x, x_1464.y);
        let x_1467 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec11;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1474.xy, x_1474.z);
        u_xlat7.x = x_1476;
        let x_1479 : f32 = u_xlat15.w;
        let x_1481 : f32 = u_xlat7.x;
        let x_1483 : f32 = u_xlat84;
        u_xlat84 = ((x_1479 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat9;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.z, x_1486.w);
        let x_1489 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec12;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat7.x = x_1498;
        let x_1500 : f32 = u_xlat83;
        let x_1502 : f32 = u_xlat7.x;
        let x_1504 : f32 = u_xlat84;
        u_xlat82 = ((x_1500 * x_1502) + x_1504);
      } else {
        let x_1507 : vec4<f32> = u_xlat3;
        let x_1510 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1513 : vec2<f32> = ((vec2<f32>(x_1507.x, x_1507.y) * vec2<f32>(x_1510.z, x_1510.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1514 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1513.x, x_1513.y, x_1514.z, x_1514.w);
        let x_1516 : vec4<f32> = u_xlat7;
        let x_1518 : vec2<f32> = floor(vec2<f32>(x_1516.x, x_1516.y));
        let x_1519 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
        let x_1521 : vec4<f32> = u_xlat3;
        let x_1524 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1527 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1521.x, x_1521.y) * vec2<f32>(x_1524.z, x_1524.w)) + -(vec2<f32>(x_1527.x, x_1527.y)));
        let x_1531 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1531.x, x_1531.x, x_1531.y, x_1531.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1534 : vec4<f32> = u_xlat8;
        let x_1536 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1534.x, x_1534.x, x_1534.z, x_1534.z) * vec4<f32>(x_1536.x, x_1536.x, x_1536.z, x_1536.z));
        let x_1539 : vec4<f32> = u_xlat9;
        let x_1543 : vec2<f32> = (vec2<f32>(x_1539.y, x_1539.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1544 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1544.x, x_1543.x, x_1544.z, x_1543.y);
        let x_1546 : vec4<f32> = u_xlat9;
        let x_1549 : vec2<f32> = u_xlat59;
        let x_1551 : vec2<f32> = ((vec2<f32>(x_1546.x, x_1546.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1549));
        let x_1552 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1551.x, x_1552.y, x_1551.y, x_1552.w);
        let x_1554 : vec2<f32> = u_xlat59;
        let x_1556 : vec2<f32> = (-(x_1554) + vec2<f32>(1.0f, 1.0f));
        let x_1557 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1556.x, x_1556.y, x_1557.z, x_1557.w);
        let x_1559 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1559, vec2<f32>(0.0f, 0.0f));
        let x_1561 : vec2<f32> = u_xlat61;
        let x_1563 : vec2<f32> = u_xlat61;
        let x_1565 : vec4<f32> = u_xlat9;
        let x_1567 : vec2<f32> = ((-(x_1561) * x_1563) + vec2<f32>(x_1565.x, x_1565.y));
        let x_1568 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1567.x, x_1567.y, x_1568.z, x_1568.w);
        let x_1570 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1570, vec2<f32>(0.0f, 0.0f));
        let x_1573 : vec2<f32> = u_xlat61;
        let x_1575 : vec2<f32> = u_xlat61;
        let x_1577 : vec4<f32> = u_xlat8;
        let x_1579 : vec2<f32> = ((-(x_1573) * x_1575) + vec2<f32>(x_1577.y, x_1577.w));
        let x_1580 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1579.x, x_1580.y, x_1579.y);
        let x_1582 : vec4<f32> = u_xlat9;
        let x_1585 : vec2<f32> = (vec2<f32>(x_1582.x, x_1582.y) + vec2<f32>(2.0f, 2.0f));
        let x_1586 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1585.x, x_1585.y, x_1586.z, x_1586.w);
        let x_1588 : vec3<f32> = u_xlat34;
        let x_1590 : vec2<f32> = (vec2<f32>(x_1588.x, x_1588.z) + vec2<f32>(2.0f, 2.0f));
        let x_1591 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1591.x, x_1590.x, x_1591.z, x_1590.y);
        let x_1594 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1594 * 0.08163200318813323975f);
        let x_1598 : vec4<f32> = u_xlat8;
        let x_1601 : vec3<f32> = (vec3<f32>(x_1598.z, x_1598.x, x_1598.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1602 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
        let x_1604 : vec4<f32> = u_xlat9;
        let x_1607 : vec2<f32> = (vec2<f32>(x_1604.x, x_1604.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1608 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1607.x, x_1607.y, x_1608.z, x_1608.w);
        let x_1611 : f32 = u_xlat12.y;
        u_xlat11.x = x_1611;
        let x_1613 : vec2<f32> = u_xlat59;
        let x_1620 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1621 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1621.x, x_1620.x, x_1621.z, x_1620.y);
        let x_1623 : vec2<f32> = u_xlat59;
        let x_1627 : vec2<f32> = ((vec2<f32>(x_1623.x, x_1623.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1628 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1627.x, x_1628.y, x_1627.y, x_1628.w);
        let x_1631 : f32 = u_xlat8.x;
        u_xlat9.y = x_1631;
        let x_1634 : f32 = u_xlat10.y;
        u_xlat9.w = x_1634;
        let x_1636 : vec4<f32> = u_xlat9;
        let x_1637 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1636 + x_1637);
        let x_1639 : vec2<f32> = u_xlat59;
        let x_1642 : vec2<f32> = ((vec2<f32>(x_1639.y, x_1639.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1643 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1643.x, x_1642.x, x_1643.z, x_1642.y);
        let x_1645 : vec2<f32> = u_xlat59;
        let x_1648 : vec2<f32> = ((vec2<f32>(x_1645.y, x_1645.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1649 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1648.x, x_1649.y, x_1648.y, x_1649.w);
        let x_1652 : f32 = u_xlat8.y;
        u_xlat10.y = x_1652;
        let x_1654 : vec4<f32> = u_xlat10;
        let x_1655 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1654 + x_1655);
        let x_1657 : vec4<f32> = u_xlat9;
        let x_1658 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1657 / x_1658);
        let x_1660 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1660 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1666 : vec4<f32> = u_xlat10;
        let x_1667 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1666 / x_1667);
        let x_1669 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1669 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1671 : vec4<f32> = u_xlat9;
        let x_1674 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1671.w, x_1671.x, x_1671.y, x_1671.z) * vec4<f32>(x_1674.x, x_1674.x, x_1674.x, x_1674.x));
        let x_1677 : vec4<f32> = u_xlat10;
        let x_1680 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1677.x, x_1677.w, x_1677.y, x_1677.z) * vec4<f32>(x_1680.y, x_1680.y, x_1680.y, x_1680.y));
        let x_1683 : vec4<f32> = u_xlat9;
        let x_1684 : vec3<f32> = vec3<f32>(x_1683.y, x_1683.z, x_1683.w);
        let x_1685 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1684.x, x_1685.y, x_1684.y, x_1684.z);
        let x_1688 : f32 = u_xlat10.x;
        u_xlat12.y = x_1688;
        let x_1690 : vec4<f32> = u_xlat7;
        let x_1693 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1696 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1690.x, x_1690.y, x_1690.x, x_1690.y) * vec4<f32>(x_1693.x, x_1693.y, x_1693.x, x_1693.y)) + vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1696.y));
        let x_1699 : vec4<f32> = u_xlat7;
        let x_1702 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1705 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1702.x, x_1702.y)) + vec2<f32>(x_1705.w, x_1705.y));
        let x_1709 : f32 = u_xlat12.y;
        u_xlat9.y = x_1709;
        let x_1712 : f32 = u_xlat10.z;
        u_xlat12.y = x_1712;
        let x_1714 : vec4<f32> = u_xlat7;
        let x_1717 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1720 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1714.x, x_1714.y, x_1714.x, x_1714.y) * vec4<f32>(x_1717.x, x_1717.y, x_1717.x, x_1717.y)) + vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1720.y));
        let x_1723 : vec4<f32> = u_xlat7;
        let x_1726 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1729 : vec4<f32> = u_xlat12;
        let x_1731 : vec2<f32> = ((vec2<f32>(x_1723.x, x_1723.y) * vec2<f32>(x_1726.x, x_1726.y)) + vec2<f32>(x_1729.w, x_1729.y));
        let x_1732 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1731.x, x_1731.y, x_1732.z, x_1732.w);
        let x_1735 : f32 = u_xlat12.y;
        u_xlat9.z = x_1735;
        let x_1738 : vec4<f32> = u_xlat7;
        let x_1741 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1744 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1738.x, x_1738.y, x_1738.x, x_1738.y) * vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.y)) + vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.z));
        let x_1748 : f32 = u_xlat10.w;
        u_xlat12.y = x_1748;
        let x_1751 : vec4<f32> = u_xlat7;
        let x_1754 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1757 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1751.x, x_1751.y, x_1751.x, x_1751.y) * vec4<f32>(x_1754.x, x_1754.y, x_1754.x, x_1754.y)) + vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1757.y));
        let x_1761 : vec4<f32> = u_xlat7;
        let x_1764 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1767 : vec4<f32> = u_xlat12;
        let x_1769 : vec2<f32> = ((vec2<f32>(x_1761.x, x_1761.y) * vec2<f32>(x_1764.x, x_1764.y)) + vec2<f32>(x_1767.w, x_1767.y));
        let x_1770 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1769.x, x_1769.y, x_1770.z);
        let x_1773 : f32 = u_xlat12.y;
        u_xlat9.w = x_1773;
        let x_1776 : vec4<f32> = u_xlat7;
        let x_1779 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1782 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1776.x, x_1776.y) * vec2<f32>(x_1779.x, x_1779.y)) + vec2<f32>(x_1782.x, x_1782.w));
        let x_1785 : vec4<f32> = u_xlat12;
        let x_1786 : vec3<f32> = vec3<f32>(x_1785.x, x_1785.z, x_1785.w);
        let x_1787 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1786.x, x_1787.y, x_1786.y, x_1786.z);
        let x_1789 : vec4<f32> = u_xlat7;
        let x_1792 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1795 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1789.x, x_1789.y, x_1789.x, x_1789.y) * vec4<f32>(x_1792.x, x_1792.y, x_1792.x, x_1792.y)) + vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1795.y));
        let x_1799 : vec4<f32> = u_xlat7;
        let x_1802 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1805 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1799.x, x_1799.y) * vec2<f32>(x_1802.x, x_1802.y)) + vec2<f32>(x_1805.w, x_1805.y));
        let x_1809 : f32 = u_xlat9.x;
        u_xlat10.x = x_1809;
        let x_1811 : vec4<f32> = u_xlat7;
        let x_1814 : vec4<f32> = x_629.x_MainLightShadowmapSize;
        let x_1817 : vec4<f32> = u_xlat10;
        let x_1819 : vec2<f32> = ((vec2<f32>(x_1811.x, x_1811.y) * vec2<f32>(x_1814.x, x_1814.y)) + vec2<f32>(x_1817.x, x_1817.y));
        let x_1820 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1819.x, x_1819.y, x_1820.z, x_1820.w);
        let x_1823 : vec4<f32> = u_xlat8;
        let x_1825 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1823.x, x_1823.x, x_1823.x, x_1823.x) * x_1825);
        let x_1828 : vec4<f32> = u_xlat8;
        let x_1830 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1828.y, x_1828.y, x_1828.y, x_1828.y) * x_1830);
        let x_1833 : vec4<f32> = u_xlat8;
        let x_1835 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1833.z, x_1833.z, x_1833.z, x_1833.z) * x_1835);
        let x_1837 : vec4<f32> = u_xlat8;
        let x_1839 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1837.w, x_1837.w, x_1837.w, x_1837.w) * x_1839);
        let x_1842 : vec4<f32> = u_xlat13;
        let x_1843 : vec2<f32> = vec2<f32>(x_1842.x, x_1842.y);
        let x_1845 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1843.x, x_1843.y, x_1845);
        let x_1852 : vec3<f32> = txVec13;
        let x_1854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1852.xy, x_1852.z);
        u_xlat83 = x_1854;
        let x_1856 : vec4<f32> = u_xlat13;
        let x_1857 : vec2<f32> = vec2<f32>(x_1856.z, x_1856.w);
        let x_1859 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1857.x, x_1857.y, x_1859);
        let x_1866 : vec3<f32> = txVec14;
        let x_1868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1866.xy, x_1866.z);
        u_xlat84 = x_1868;
        let x_1869 : f32 = u_xlat84;
        let x_1871 : f32 = u_xlat18.y;
        u_xlat84 = (x_1869 * x_1871);
        let x_1874 : f32 = u_xlat18.x;
        let x_1875 : f32 = u_xlat83;
        let x_1877 : f32 = u_xlat84;
        u_xlat83 = ((x_1874 * x_1875) + x_1877);
        let x_1880 : vec2<f32> = u_xlat59;
        let x_1882 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1880.x, x_1880.y, x_1882);
        let x_1889 : vec3<f32> = txVec15;
        let x_1891 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1889.xy, x_1889.z);
        u_xlat84 = x_1891;
        let x_1893 : f32 = u_xlat18.z;
        let x_1894 : f32 = u_xlat84;
        let x_1896 : f32 = u_xlat83;
        u_xlat83 = ((x_1893 * x_1894) + x_1896);
        let x_1899 : vec4<f32> = u_xlat16;
        let x_1900 : vec2<f32> = vec2<f32>(x_1899.x, x_1899.y);
        let x_1902 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1900.x, x_1900.y, x_1902);
        let x_1909 : vec3<f32> = txVec16;
        let x_1911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1909.xy, x_1909.z);
        u_xlat84 = x_1911;
        let x_1913 : f32 = u_xlat18.w;
        let x_1914 : f32 = u_xlat84;
        let x_1916 : f32 = u_xlat83;
        u_xlat83 = ((x_1913 * x_1914) + x_1916);
        let x_1919 : vec4<f32> = u_xlat14;
        let x_1920 : vec2<f32> = vec2<f32>(x_1919.x, x_1919.y);
        let x_1922 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1920.x, x_1920.y, x_1922);
        let x_1929 : vec3<f32> = txVec17;
        let x_1931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1929.xy, x_1929.z);
        u_xlat84 = x_1931;
        let x_1933 : f32 = u_xlat19.x;
        let x_1934 : f32 = u_xlat84;
        let x_1936 : f32 = u_xlat83;
        u_xlat83 = ((x_1933 * x_1934) + x_1936);
        let x_1939 : vec4<f32> = u_xlat14;
        let x_1940 : vec2<f32> = vec2<f32>(x_1939.z, x_1939.w);
        let x_1942 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1940.x, x_1940.y, x_1942);
        let x_1949 : vec3<f32> = txVec18;
        let x_1951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1949.xy, x_1949.z);
        u_xlat84 = x_1951;
        let x_1953 : f32 = u_xlat19.y;
        let x_1954 : f32 = u_xlat84;
        let x_1956 : f32 = u_xlat83;
        u_xlat83 = ((x_1953 * x_1954) + x_1956);
        let x_1959 : vec4<f32> = u_xlat15;
        let x_1960 : vec2<f32> = vec2<f32>(x_1959.x, x_1959.y);
        let x_1962 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1960.x, x_1960.y, x_1962);
        let x_1969 : vec3<f32> = txVec19;
        let x_1971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1969.xy, x_1969.z);
        u_xlat84 = x_1971;
        let x_1973 : f32 = u_xlat19.z;
        let x_1974 : f32 = u_xlat84;
        let x_1976 : f32 = u_xlat83;
        u_xlat83 = ((x_1973 * x_1974) + x_1976);
        let x_1979 : vec4<f32> = u_xlat16;
        let x_1980 : vec2<f32> = vec2<f32>(x_1979.z, x_1979.w);
        let x_1982 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec20;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1989.xy, x_1989.z);
        u_xlat84 = x_1991;
        let x_1993 : f32 = u_xlat19.w;
        let x_1994 : f32 = u_xlat84;
        let x_1996 : f32 = u_xlat83;
        u_xlat83 = ((x_1993 * x_1994) + x_1996);
        let x_1999 : vec4<f32> = u_xlat17;
        let x_2000 : vec2<f32> = vec2<f32>(x_1999.x, x_1999.y);
        let x_2002 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2000.x, x_2000.y, x_2002);
        let x_2009 : vec3<f32> = txVec21;
        let x_2011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2009.xy, x_2009.z);
        u_xlat84 = x_2011;
        let x_2013 : f32 = u_xlat20.x;
        let x_2014 : f32 = u_xlat84;
        let x_2016 : f32 = u_xlat83;
        u_xlat83 = ((x_2013 * x_2014) + x_2016);
        let x_2019 : vec4<f32> = u_xlat17;
        let x_2020 : vec2<f32> = vec2<f32>(x_2019.z, x_2019.w);
        let x_2022 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
        let x_2029 : vec3<f32> = txVec22;
        let x_2031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2029.xy, x_2029.z);
        u_xlat84 = x_2031;
        let x_2033 : f32 = u_xlat20.y;
        let x_2034 : f32 = u_xlat84;
        let x_2036 : f32 = u_xlat83;
        u_xlat83 = ((x_2033 * x_2034) + x_2036);
        let x_2039 : vec3<f32> = u_xlat35;
        let x_2040 : vec2<f32> = vec2<f32>(x_2039.x, x_2039.y);
        let x_2042 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2040.x, x_2040.y, x_2042);
        let x_2049 : vec3<f32> = txVec23;
        let x_2051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2049.xy, x_2049.z);
        u_xlat84 = x_2051;
        let x_2053 : f32 = u_xlat20.z;
        let x_2054 : f32 = u_xlat84;
        let x_2056 : f32 = u_xlat83;
        u_xlat83 = ((x_2053 * x_2054) + x_2056);
        let x_2059 : vec2<f32> = u_xlat67;
        let x_2061 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2059.x, x_2059.y, x_2061);
        let x_2068 : vec3<f32> = txVec24;
        let x_2070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2068.xy, x_2068.z);
        u_xlat84 = x_2070;
        let x_2072 : f32 = u_xlat20.w;
        let x_2073 : f32 = u_xlat84;
        let x_2075 : f32 = u_xlat83;
        u_xlat83 = ((x_2072 * x_2073) + x_2075);
        let x_2078 : vec4<f32> = u_xlat12;
        let x_2079 : vec2<f32> = vec2<f32>(x_2078.x, x_2078.y);
        let x_2081 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2079.x, x_2079.y, x_2081);
        let x_2088 : vec3<f32> = txVec25;
        let x_2090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2088.xy, x_2088.z);
        u_xlat84 = x_2090;
        let x_2092 : f32 = u_xlat8.x;
        let x_2093 : f32 = u_xlat84;
        let x_2095 : f32 = u_xlat83;
        u_xlat83 = ((x_2092 * x_2093) + x_2095);
        let x_2098 : vec4<f32> = u_xlat12;
        let x_2099 : vec2<f32> = vec2<f32>(x_2098.z, x_2098.w);
        let x_2101 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2099.x, x_2099.y, x_2101);
        let x_2108 : vec3<f32> = txVec26;
        let x_2110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2108.xy, x_2108.z);
        u_xlat84 = x_2110;
        let x_2112 : f32 = u_xlat8.y;
        let x_2113 : f32 = u_xlat84;
        let x_2115 : f32 = u_xlat83;
        u_xlat83 = ((x_2112 * x_2113) + x_2115);
        let x_2118 : vec2<f32> = u_xlat62;
        let x_2120 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2118.x, x_2118.y, x_2120);
        let x_2127 : vec3<f32> = txVec27;
        let x_2129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2127.xy, x_2127.z);
        u_xlat84 = x_2129;
        let x_2131 : f32 = u_xlat8.z;
        let x_2132 : f32 = u_xlat84;
        let x_2134 : f32 = u_xlat83;
        u_xlat83 = ((x_2131 * x_2132) + x_2134);
        let x_2137 : vec4<f32> = u_xlat7;
        let x_2138 : vec2<f32> = vec2<f32>(x_2137.x, x_2137.y);
        let x_2140 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2138.x, x_2138.y, x_2140);
        let x_2147 : vec3<f32> = txVec28;
        let x_2149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2147.xy, x_2147.z);
        u_xlat84 = x_2149;
        let x_2151 : f32 = u_xlat8.w;
        let x_2152 : f32 = u_xlat84;
        let x_2154 : f32 = u_xlat83;
        u_xlat82 = ((x_2151 * x_2152) + x_2154);
      }
    }
  } else {
    let x_2158 : vec4<f32> = u_xlat3;
    let x_2159 : vec2<f32> = vec2<f32>(x_2158.x, x_2158.y);
    let x_2161 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2159.x, x_2159.y, x_2161);
    let x_2168 : vec3<f32> = txVec29;
    let x_2170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2168.xy, x_2168.z);
    u_xlat82 = x_2170;
  }
  let x_2172 : f32 = x_629.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2172) + 1.0f);
  let x_2176 : f32 = u_xlat82;
  let x_2178 : f32 = x_629.x_MainLightShadowParams.x;
  let x_2181 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2176 * x_2178) + x_2181);
  let x_2186 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2186);
  let x_2190 : f32 = u_xlat3.z;
  u_xlatb55 = (x_2190 >= 1.0f);
  let x_2192 : bool = u_xlatb55;
  let x_2193 : bool = u_xlatb29;
  u_xlatb29 = (x_2192 | x_2193);
  let x_2195 : bool = u_xlatb29;
  if (x_2195) {
    x_2196 = 1.0f;
  } else {
    let x_2201 : f32 = u_xlat3.x;
    x_2196 = x_2201;
  }
  let x_2202 : f32 = x_2196;
  u_xlat3.x = x_2202;
  let x_2204 : vec3<f32> = vs_TEXCOORD7;
  let x_2206 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2208 : vec3<f32> = (x_2204 + -(x_2206));
  let x_2209 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2212 : vec4<f32> = u_xlat7;
  let x_2214 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_2212.x, x_2212.y, x_2212.z), vec3<f32>(x_2214.x, x_2214.y, x_2214.z));
  let x_2218 : f32 = u_xlat29;
  let x_2220 : f32 = x_629.x_MainLightShadowParams.z;
  let x_2223 : f32 = x_629.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2218 * x_2220) + x_2223);
  let x_2225 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2225, 0.0f, 1.0f);
  let x_2228 : f32 = u_xlat3.x;
  u_xlat82 = (-(x_2228) + 1.0f);
  let x_2231 : f32 = u_xlat55;
  let x_2232 : f32 = u_xlat82;
  let x_2235 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2231 * x_2232) + x_2235);
  let x_2245 : f32 = x_2243.x_MainLightCookieTextureFormat;
  u_xlatb55 = !((x_2245 == -1.0f));
  let x_2247 : bool = u_xlatb55;
  if (x_2247) {
    let x_2250 : vec3<f32> = vs_TEXCOORD7;
    let x_2253 : vec4<f32> = x_2243.x_MainLightWorldToLight[1i];
    let x_2255 : vec2<f32> = (vec2<f32>(x_2250.y, x_2250.y) * vec2<f32>(x_2253.x, x_2253.y));
    let x_2256 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2255.x, x_2255.y, x_2256.z, x_2256.w);
    let x_2259 : vec4<f32> = x_2243.x_MainLightWorldToLight[0i];
    let x_2261 : vec3<f32> = vs_TEXCOORD7;
    let x_2264 : vec4<f32> = u_xlat7;
    let x_2266 : vec2<f32> = ((vec2<f32>(x_2259.x, x_2259.y) * vec2<f32>(x_2261.x, x_2261.x)) + vec2<f32>(x_2264.x, x_2264.y));
    let x_2267 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2266.x, x_2266.y, x_2267.z, x_2267.w);
    let x_2270 : vec4<f32> = x_2243.x_MainLightWorldToLight[2i];
    let x_2272 : vec3<f32> = vs_TEXCOORD7;
    let x_2275 : vec4<f32> = u_xlat7;
    let x_2277 : vec2<f32> = ((vec2<f32>(x_2270.x, x_2270.y) * vec2<f32>(x_2272.z, x_2272.z)) + vec2<f32>(x_2275.x, x_2275.y));
    let x_2278 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2277.x, x_2277.y, x_2278.z, x_2278.w);
    let x_2280 : vec4<f32> = u_xlat7;
    let x_2283 : vec4<f32> = x_2243.x_MainLightWorldToLight[3i];
    let x_2285 : vec2<f32> = (vec2<f32>(x_2280.x, x_2280.y) + vec2<f32>(x_2283.x, x_2283.y));
    let x_2286 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2285.x, x_2285.y, x_2286.z, x_2286.w);
    let x_2288 : vec4<f32> = u_xlat7;
    let x_2291 : vec2<f32> = ((vec2<f32>(x_2288.x, x_2288.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2292 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2291.x, x_2291.y, x_2292.z, x_2292.w);
    let x_2299 : vec4<f32> = u_xlat7;
    let x_2302 : f32 = x_29.x_GlobalMipBias.x;
    let x_2303 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2299.x, x_2299.y), x_2302);
    u_xlat7 = x_2303;
    let x_2308 : f32 = x_2243.x_MainLightCookieTextureFormat;
    let x_2310 : f32 = x_2243.x_MainLightCookieTextureFormat;
    let x_2312 : f32 = x_2243.x_MainLightCookieTextureFormat;
    let x_2314 : f32 = x_2243.x_MainLightCookieTextureFormat;
    let x_2315 : vec4<f32> = vec4<f32>(x_2308, x_2310, x_2312, x_2314);
    let x_2322 : vec4<bool> = (vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2315.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2322.x, x_2322.y);
    let x_2325 : bool = u_xlatb8.y;
    if (x_2325) {
      let x_2330 : f32 = u_xlat7.w;
      x_2326 = x_2330;
    } else {
      let x_2333 : f32 = u_xlat7.x;
      x_2326 = x_2333;
    }
    let x_2334 : f32 = x_2326;
    u_xlat55 = x_2334;
    let x_2336 : bool = u_xlatb8.x;
    if (x_2336) {
      let x_2340 : vec4<f32> = u_xlat7;
      x_2337 = vec3<f32>(x_2340.x, x_2340.y, x_2340.z);
    } else {
      let x_2343 : f32 = u_xlat55;
      x_2337 = vec3<f32>(x_2343, x_2343, x_2343);
    }
    let x_2345 : vec3<f32> = x_2337;
    let x_2346 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2352 : vec4<f32> = u_xlat7;
  let x_2355 : vec4<f32> = x_29.x_MainLightColor;
  let x_2357 : vec3<f32> = (vec3<f32>(x_2352.x, x_2352.y, x_2352.z) * vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
  let x_2358 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2358.w);
  let x_2360 : vec3<f32> = u_xlat2;
  let x_2362 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(x_2360), vec3<f32>(x_2362.x, x_2362.y, x_2362.z));
  let x_2365 : f32 = u_xlat55;
  let x_2366 : f32 = u_xlat55;
  u_xlat55 = (x_2365 + x_2366);
  let x_2368 : vec4<f32> = u_xlat1;
  let x_2370 : f32 = u_xlat55;
  let x_2374 : vec3<f32> = u_xlat2;
  let x_2376 : vec3<f32> = ((vec3<f32>(x_2368.x, x_2368.y, x_2368.z) * -(vec3<f32>(x_2370, x_2370, x_2370))) + -(x_2374));
  let x_2377 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
  let x_2379 : vec4<f32> = u_xlat1;
  let x_2381 : vec3<f32> = u_xlat2;
  u_xlat55 = dot(vec3<f32>(x_2379.x, x_2379.y, x_2379.z), x_2381);
  let x_2383 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2383, 0.0f, 1.0f);
  let x_2385 : f32 = u_xlat55;
  u_xlat55 = (-(x_2385) + 1.0f);
  let x_2388 : f32 = u_xlat55;
  let x_2389 : f32 = u_xlat55;
  u_xlat55 = (x_2388 * x_2389);
  let x_2391 : f32 = u_xlat55;
  let x_2392 : f32 = u_xlat55;
  u_xlat55 = (x_2391 * x_2392);
  let x_2395 : f32 = u_xlat0.x;
  u_xlat82 = ((-(x_2395) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2402 : f32 = u_xlat0.x;
  let x_2403 : f32 = u_xlat82;
  u_xlat0.x = (x_2402 * x_2403);
  let x_2407 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2407 * 6.0f);
  let x_2419 : vec4<f32> = u_xlat8;
  let x_2422 : f32 = u_xlat0.x;
  let x_2423 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2419.x, x_2419.y, x_2419.z), x_2422);
  u_xlat8 = x_2423;
  let x_2425 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2425 + -1.0f);
  let x_2429 : f32 = x_816.unity_SpecCube0_HDR.w;
  let x_2431 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2429 * x_2431) + 1.0f);
  let x_2436 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2436, 0.0f);
  let x_2440 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2440);
  let x_2444 : f32 = u_xlat0.x;
  let x_2446 : f32 = x_816.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2444 * x_2446);
  let x_2450 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2450);
  let x_2454 : f32 = u_xlat0.x;
  let x_2456 : f32 = x_816.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2454 * x_2456);
  let x_2459 : vec4<f32> = u_xlat8;
  let x_2461 : vec3<f32> = u_xlat0;
  let x_2463 : vec3<f32> = (vec3<f32>(x_2459.x, x_2459.y, x_2459.z) * vec3<f32>(x_2461.x, x_2461.x, x_2461.x));
  let x_2464 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
  let x_2466 : f32 = u_xlat79;
  let x_2468 : f32 = u_xlat79;
  let x_2472 : vec2<f32> = ((vec2<f32>(x_2466, x_2466) * vec2<f32>(x_2468, x_2468)) + vec2<f32>(-1.0f, 1.0f));
  let x_2473 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2472.x, x_2472.y, x_2473.z, x_2473.w);
  let x_2476 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2476);
  let x_2479 : vec4<f32> = u_xlat5;
  let x_2482 : f32 = u_xlat52;
  u_xlat35 = (-(vec3<f32>(x_2479.x, x_2479.y, x_2479.z)) + vec3<f32>(x_2482, x_2482, x_2482));
  let x_2485 : f32 = u_xlat55;
  let x_2487 : vec3<f32> = u_xlat35;
  let x_2489 : vec4<f32> = u_xlat5;
  u_xlat35 = ((vec3<f32>(x_2485, x_2485, x_2485) * x_2487) + vec3<f32>(x_2489.x, x_2489.y, x_2489.z));
  let x_2492 : vec3<f32> = u_xlat0;
  let x_2494 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2492.x, x_2492.x, x_2492.x) * x_2494);
  let x_2496 : vec4<f32> = u_xlat8;
  let x_2498 : vec3<f32> = u_xlat35;
  let x_2499 : vec3<f32> = (vec3<f32>(x_2496.x, x_2496.y, x_2496.z) * x_2498);
  let x_2500 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
  let x_2502 : vec4<f32> = u_xlat4;
  let x_2504 : vec4<f32> = u_xlat6;
  let x_2507 : vec4<f32> = u_xlat8;
  let x_2509 : vec3<f32> = ((vec3<f32>(x_2502.x, x_2502.y, x_2502.z) * vec3<f32>(x_2504.x, x_2504.y, x_2504.z)) + vec3<f32>(x_2507.x, x_2507.y, x_2507.z));
  let x_2510 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2509.x, x_2509.y, x_2509.z, x_2510.w);
  let x_2513 : f32 = u_xlat3.x;
  let x_2515 : f32 = x_816.unity_LightData.z;
  u_xlat0.x = (x_2513 * x_2515);
  let x_2518 : vec4<f32> = u_xlat1;
  let x_2521 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat52 = dot(vec3<f32>(x_2518.x, x_2518.y, x_2518.z), vec3<f32>(x_2521.x, x_2521.y, x_2521.z));
  let x_2524 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2524, 0.0f, 1.0f);
  let x_2526 : f32 = u_xlat52;
  let x_2528 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2526 * x_2528);
  let x_2531 : vec3<f32> = u_xlat0;
  let x_2533 : vec4<f32> = u_xlat7;
  let x_2535 : vec3<f32> = (vec3<f32>(x_2531.x, x_2531.x, x_2531.x) * vec3<f32>(x_2533.x, x_2533.y, x_2533.z));
  let x_2536 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
  let x_2538 : vec3<f32> = u_xlat2;
  let x_2540 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2542 : vec3<f32> = (x_2538 + vec3<f32>(x_2540.x, x_2540.y, x_2540.z));
  let x_2543 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2542.x, x_2542.y, x_2542.z, x_2543.w);
  let x_2545 : vec4<f32> = u_xlat8;
  let x_2547 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2545.x, x_2545.y, x_2545.z), vec3<f32>(x_2547.x, x_2547.y, x_2547.z));
  let x_2552 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2552, 1.17549435e-38f);
  let x_2557 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2557);
  let x_2560 : vec3<f32> = u_xlat0;
  let x_2562 : vec4<f32> = u_xlat8;
  let x_2564 : vec3<f32> = (vec3<f32>(x_2560.x, x_2560.x, x_2560.x) * vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
  let x_2565 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
  let x_2567 : vec4<f32> = u_xlat1;
  let x_2569 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_2567.x, x_2567.y, x_2567.z), vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
  let x_2574 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2574, 0.0f, 1.0f);
  let x_2578 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2580 : vec4<f32> = u_xlat8;
  u_xlat0.z = dot(vec3<f32>(x_2578.x, x_2578.y, x_2578.z), vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
  let x_2585 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2585, 0.0f, 1.0f);
  let x_2588 : vec3<f32> = u_xlat0;
  let x_2590 : vec3<f32> = u_xlat0;
  let x_2592 : vec2<f32> = (vec2<f32>(x_2588.x, x_2588.z) * vec2<f32>(x_2590.x, x_2590.z));
  let x_2593 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2592.x, x_2593.y, x_2592.y);
  let x_2596 : f32 = u_xlat0.x;
  let x_2598 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2596 * x_2598) + 1.00001001358032226562f);
  let x_2604 : f32 = u_xlat0.x;
  let x_2606 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2604 * x_2606);
  let x_2610 : f32 = u_xlat0.z;
  u_xlat52 = max(x_2610, 0.10000000149011611938f);
  let x_2613 : f32 = u_xlat52;
  let x_2615 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2613 * x_2615);
  let x_2618 : f32 = u_xlat80;
  let x_2620 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2618 * x_2620);
  let x_2623 : f32 = u_xlat81;
  let x_2625 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2623 / x_2625);
  let x_2628 : vec4<f32> = u_xlat5;
  let x_2630 : vec3<f32> = u_xlat0;
  let x_2633 : vec4<f32> = u_xlat6;
  let x_2635 : vec3<f32> = ((vec3<f32>(x_2628.x, x_2628.y, x_2628.z) * vec3<f32>(x_2630.x, x_2630.x, x_2630.x)) + vec3<f32>(x_2633.x, x_2633.y, x_2633.z));
  let x_2636 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2635.x, x_2635.y, x_2635.z, x_2636.w);
  let x_2638 : vec4<f32> = u_xlat7;
  let x_2640 : vec4<f32> = u_xlat8;
  let x_2642 : vec3<f32> = (vec3<f32>(x_2638.x, x_2638.y, x_2638.z) * vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
  let x_2643 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
  let x_2646 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2648 : f32 = x_816.unity_LightData.y;
  u_xlat0.x = min(x_2646, x_2648);
  let x_2653 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2653));
  let x_2656 : f32 = u_xlat29;
  let x_2658 : f32 = x_629.x_AdditionalShadowFadeParams.x;
  let x_2661 : f32 = x_629.x_AdditionalShadowFadeParams.y;
  u_xlat52 = ((x_2656 * x_2658) + x_2661);
  let x_2663 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2663, 0.0f, 1.0f);
  let x_2666 : f32 = x_2243.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2668 : f32 = x_2243.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2670 : f32 = x_2243.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2672 : f32 = x_2243.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2673 : vec4<f32> = vec4<f32>(x_2666, x_2668, x_2670, x_2672);
  let x_2679 : vec4<bool> = (vec4<f32>(x_2673.x, x_2673.y, x_2673.z, x_2673.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_2680 : vec2<bool> = vec2<bool>(x_2679.x, x_2679.y);
  let x_2681 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_2680.x, x_2680.y, x_2681.z, x_2681.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2693 : u32 = u_xlatu_loop_1;
    let x_2694 : u32 = u_xlatu0;
    if ((x_2693 < x_2694)) {
    } else {
      break;
    }
    let x_2697 : u32 = u_xlatu_loop_1;
    u_xlatu55 = (x_2697 >> 2u);
    let x_2700 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2700 & 3u));
    let x_2703 : u32 = u_xlatu55;
    let x_2706 : vec4<f32> = x_816.unity_LightIndices[bitcast<i32>(x_2703)];
    let x_2716 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2721 : vec4<u32> = indexable[x_2716];
    u_xlat55 = dot(x_2706, bitcast<vec4<f32>>(x_2721));
    let x_2725 : f32 = u_xlat55;
    u_xlati55 = i32(x_2725);
    let x_2727 : vec3<f32> = vs_TEXCOORD7;
    let x_2738 : i32 = u_xlati55;
    let x_2740 : vec4<f32> = x_2737.x_AdditionalLightsPosition[x_2738];
    let x_2743 : i32 = u_xlati55;
    let x_2745 : vec4<f32> = x_2737.x_AdditionalLightsPosition[x_2743];
    u_xlat35 = ((-(x_2727) * vec3<f32>(x_2740.w, x_2740.w, x_2740.w)) + vec3<f32>(x_2745.x, x_2745.y, x_2745.z));
    let x_2748 : vec3<f32> = u_xlat35;
    let x_2749 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(x_2748, x_2749);
    let x_2751 : f32 = u_xlat82;
    u_xlat82 = max(x_2751, 0.00006103515625f);
    let x_2753 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2753);
    let x_2755 : f32 = u_xlat83;
    let x_2757 : vec3<f32> = u_xlat35;
    let x_2758 : vec3<f32> = (vec3<f32>(x_2755, x_2755, x_2755) * x_2757);
    let x_2759 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2758.x, x_2758.y, x_2758.z, x_2759.w);
    let x_2761 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2761);
    let x_2763 : f32 = u_xlat82;
    let x_2764 : i32 = u_xlati55;
    let x_2766 : f32 = x_2737.x_AdditionalLightsAttenuation[x_2764].x;
    u_xlat82 = (x_2763 * x_2766);
    let x_2768 : f32 = u_xlat82;
    let x_2770 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2768) * x_2770) + 1.0f);
    let x_2773 : f32 = u_xlat82;
    u_xlat82 = max(x_2773, 0.0f);
    let x_2775 : f32 = u_xlat82;
    let x_2776 : f32 = u_xlat82;
    u_xlat82 = (x_2775 * x_2776);
    let x_2778 : f32 = u_xlat82;
    let x_2779 : f32 = u_xlat84;
    u_xlat82 = (x_2778 * x_2779);
    let x_2781 : i32 = u_xlati55;
    let x_2783 : vec4<f32> = x_2737.x_AdditionalLightsSpotDir[x_2781];
    let x_2785 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2783.x, x_2783.y, x_2783.z), vec3<f32>(x_2785.x, x_2785.y, x_2785.z));
    let x_2788 : f32 = u_xlat84;
    let x_2789 : i32 = u_xlati55;
    let x_2791 : f32 = x_2737.x_AdditionalLightsAttenuation[x_2789].z;
    let x_2793 : i32 = u_xlati55;
    let x_2795 : f32 = x_2737.x_AdditionalLightsAttenuation[x_2793].w;
    u_xlat84 = ((x_2788 * x_2791) + x_2795);
    let x_2797 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2797, 0.0f, 1.0f);
    let x_2799 : f32 = u_xlat84;
    let x_2800 : f32 = u_xlat84;
    u_xlat84 = (x_2799 * x_2800);
    let x_2802 : f32 = u_xlat82;
    let x_2803 : f32 = u_xlat84;
    u_xlat82 = (x_2802 * x_2803);
    let x_2806 : i32 = u_xlati55;
    let x_2808 : f32 = x_629.x_AdditionalShadowParams[x_2806].w;
    u_xlati84 = i32(x_2808);
    let x_2811 : i32 = u_xlati84;
    u_xlatb85 = (x_2811 >= 0i);
    let x_2813 : bool = u_xlatb85;
    if (x_2813) {
      let x_2817 : i32 = u_xlati55;
      let x_2819 : f32 = x_629.x_AdditionalShadowParams[x_2817].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2819, x_2819, x_2819, x_2819))));
      let x_2823 : bool = u_xlatb85;
      if (x_2823) {
        let x_2827 : vec4<f32> = u_xlat10;
        let x_2830 : vec4<f32> = u_xlat10;
        let x_2833 : vec4<bool> = (abs(vec4<f32>(x_2827.z, x_2827.z, x_2827.y, x_2827.z)) >= abs(vec4<f32>(x_2830.x, x_2830.y, x_2830.x, x_2830.x)));
        let x_2835 : vec3<bool> = vec3<bool>(x_2833.x, x_2833.y, x_2833.z);
        let x_2836 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2835.x, x_2835.y, x_2835.z, x_2836.w);
        let x_2839 : bool = u_xlatb11.y;
        let x_2841 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2839 & x_2841);
        let x_2843 : vec4<f32> = u_xlat10;
        let x_2846 : vec4<bool> = (-(vec4<f32>(x_2843.z, x_2843.y, x_2843.z, x_2843.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2847 : vec3<bool> = vec3<bool>(x_2846.x, x_2846.y, x_2846.w);
        let x_2848 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2847.x, x_2847.y, x_2848.z, x_2847.z);
        let x_2851 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2851);
        let x_2856 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2856);
        let x_2861 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2861);
        let x_2864 : bool = u_xlatb11.z;
        if (x_2864) {
          let x_2869 : f32 = u_xlat11.y;
          x_2865 = x_2869;
        } else {
          let x_2871 : f32 = u_xlat86;
          x_2865 = x_2871;
        }
        let x_2872 : f32 = x_2865;
        u_xlat86 = x_2872;
        let x_2874 : bool = u_xlatb85;
        if (x_2874) {
          let x_2879 : f32 = u_xlat11.x;
          x_2875 = x_2879;
        } else {
          let x_2881 : f32 = u_xlat86;
          x_2875 = x_2881;
        }
        let x_2882 : f32 = x_2875;
        u_xlat85 = x_2882;
        let x_2883 : i32 = u_xlati55;
        let x_2885 : f32 = x_629.x_AdditionalShadowParams[x_2883].w;
        u_xlat86 = trunc(x_2885);
        let x_2887 : f32 = u_xlat85;
        let x_2888 : f32 = u_xlat86;
        u_xlat85 = (x_2887 + x_2888);
        let x_2890 : f32 = u_xlat85;
        u_xlati84 = i32(x_2890);
      }
      let x_2892 : i32 = u_xlati84;
      u_xlati84 = (x_2892 << bitcast<u32>(2i));
      let x_2894 : vec3<f32> = vs_TEXCOORD7;
      let x_2896 : i32 = u_xlati84;
      let x_2899 : i32 = u_xlati84;
      let x_2903 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2896 + 1i) / 4i)][((x_2899 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2894.y, x_2894.y, x_2894.y, x_2894.y) * x_2903);
      let x_2905 : i32 = u_xlati84;
      let x_2907 : i32 = u_xlati84;
      let x_2910 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[(x_2905 / 4i)][(x_2907 % 4i)];
      let x_2911 : vec3<f32> = vs_TEXCOORD7;
      let x_2914 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2910 * vec4<f32>(x_2911.x, x_2911.x, x_2911.x, x_2911.x)) + x_2914);
      let x_2916 : i32 = u_xlati84;
      let x_2919 : i32 = u_xlati84;
      let x_2923 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2916 + 2i) / 4i)][((x_2919 + 2i) % 4i)];
      let x_2924 : vec3<f32> = vs_TEXCOORD7;
      let x_2927 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2923 * vec4<f32>(x_2924.z, x_2924.z, x_2924.z, x_2924.z)) + x_2927);
      let x_2929 : vec4<f32> = u_xlat11;
      let x_2930 : i32 = u_xlati84;
      let x_2933 : i32 = u_xlati84;
      let x_2937 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_2930 + 3i) / 4i)][((x_2933 + 3i) % 4i)];
      u_xlat11 = (x_2929 + x_2937);
      let x_2939 : vec4<f32> = u_xlat11;
      let x_2941 : vec4<f32> = u_xlat11;
      let x_2943 : vec3<f32> = (vec3<f32>(x_2939.x, x_2939.y, x_2939.z) / vec3<f32>(x_2941.w, x_2941.w, x_2941.w));
      let x_2944 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2943.x, x_2943.y, x_2943.z, x_2944.w);
      let x_2947 : i32 = u_xlati55;
      let x_2949 : f32 = x_629.x_AdditionalShadowParams[x_2947].y;
      u_xlatb84 = (0.0f < x_2949);
      let x_2951 : bool = u_xlatb84;
      if (x_2951) {
        let x_2954 : i32 = u_xlati55;
        let x_2956 : f32 = x_629.x_AdditionalShadowParams[x_2954].y;
        u_xlatb84 = (1.0f == x_2956);
        let x_2958 : bool = u_xlatb84;
        if (x_2958) {
          let x_2961 : vec4<f32> = u_xlat11;
          let x_2964 : vec4<f32> = x_629.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2961.x, x_2961.y, x_2961.x, x_2961.y) + x_2964);
          let x_2967 : vec4<f32> = u_xlat12;
          let x_2968 : vec2<f32> = vec2<f32>(x_2967.x, x_2967.y);
          let x_2970 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2968.x, x_2968.y, x_2970);
          let x_2978 : vec3<f32> = txVec30;
          let x_2980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2978.xy, x_2978.z);
          u_xlat13.x = x_2980;
          let x_2983 : vec4<f32> = u_xlat12;
          let x_2984 : vec2<f32> = vec2<f32>(x_2983.z, x_2983.w);
          let x_2986 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
          let x_2993 : vec3<f32> = txVec31;
          let x_2995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
          u_xlat13.y = x_2995;
          let x_2997 : vec4<f32> = u_xlat11;
          let x_3000 : vec4<f32> = x_629.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2997.x, x_2997.y, x_2997.x, x_2997.y) + x_3000);
          let x_3003 : vec4<f32> = u_xlat12;
          let x_3004 : vec2<f32> = vec2<f32>(x_3003.x, x_3003.y);
          let x_3006 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
          let x_3013 : vec3<f32> = txVec32;
          let x_3015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
          u_xlat13.z = x_3015;
          let x_3018 : vec4<f32> = u_xlat12;
          let x_3019 : vec2<f32> = vec2<f32>(x_3018.z, x_3018.w);
          let x_3021 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3019.x, x_3019.y, x_3021);
          let x_3028 : vec3<f32> = txVec33;
          let x_3030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3028.xy, x_3028.z);
          u_xlat13.w = x_3030;
          let x_3032 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3032, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3035 : i32 = u_xlati55;
          let x_3037 : f32 = x_629.x_AdditionalShadowParams[x_3035].y;
          u_xlatb85 = (2.0f == x_3037);
          let x_3039 : bool = u_xlatb85;
          if (x_3039) {
            let x_3042 : vec4<f32> = u_xlat11;
            let x_3045 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3048 : vec2<f32> = ((vec2<f32>(x_3042.x, x_3042.y) * vec2<f32>(x_3045.z, x_3045.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3049 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3048.x, x_3048.y, x_3049.z, x_3049.w);
            let x_3051 : vec4<f32> = u_xlat12;
            let x_3053 : vec2<f32> = floor(vec2<f32>(x_3051.x, x_3051.y));
            let x_3054 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3053.x, x_3053.y, x_3054.z, x_3054.w);
            let x_3057 : vec4<f32> = u_xlat11;
            let x_3060 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3063 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3057.x, x_3057.y) * vec2<f32>(x_3060.z, x_3060.w)) + -(vec2<f32>(x_3063.x, x_3063.y)));
            let x_3067 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3067.x, x_3067.x, x_3067.y, x_3067.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3070 : vec4<f32> = u_xlat13;
            let x_3072 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3070.x, x_3070.x, x_3070.z, x_3070.z) * vec4<f32>(x_3072.x, x_3072.x, x_3072.z, x_3072.z));
            let x_3075 : vec4<f32> = u_xlat14;
            let x_3077 : vec2<f32> = (vec2<f32>(x_3075.y, x_3075.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3078 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3077.x, x_3078.y, x_3077.y, x_3078.w);
            let x_3080 : vec4<f32> = u_xlat14;
            let x_3083 : vec2<f32> = u_xlat64;
            let x_3085 : vec2<f32> = ((vec2<f32>(x_3080.x, x_3080.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3083));
            let x_3086 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3085.x, x_3085.y, x_3086.z, x_3086.w);
            let x_3089 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3089) + vec2<f32>(1.0f, 1.0f));
            let x_3092 : vec2<f32> = u_xlat64;
            let x_3093 : vec2<f32> = min(x_3092, vec2<f32>(0.0f, 0.0f));
            let x_3094 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3093.x, x_3093.y, x_3094.z, x_3094.w);
            let x_3096 : vec4<f32> = u_xlat15;
            let x_3099 : vec4<f32> = u_xlat15;
            let x_3102 : vec2<f32> = u_xlat66;
            let x_3103 : vec2<f32> = ((-(vec2<f32>(x_3096.x, x_3096.y)) * vec2<f32>(x_3099.x, x_3099.y)) + x_3102);
            let x_3104 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3103.x, x_3103.y, x_3104.z, x_3104.w);
            let x_3106 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3106, vec2<f32>(0.0f, 0.0f));
            let x_3108 : vec2<f32> = u_xlat64;
            let x_3110 : vec2<f32> = u_xlat64;
            let x_3112 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3108) * x_3110) + vec2<f32>(x_3112.y, x_3112.w));
            let x_3115 : vec4<f32> = u_xlat15;
            let x_3117 : vec2<f32> = (vec2<f32>(x_3115.x, x_3115.y) + vec2<f32>(1.0f, 1.0f));
            let x_3118 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3117.x, x_3117.y, x_3118.z, x_3118.w);
            let x_3120 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3120 + vec2<f32>(1.0f, 1.0f));
            let x_3122 : vec4<f32> = u_xlat14;
            let x_3124 : vec2<f32> = (vec2<f32>(x_3122.x, x_3122.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3125 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3124.x, x_3124.y, x_3125.z, x_3125.w);
            let x_3127 : vec2<f32> = u_xlat66;
            let x_3128 : vec2<f32> = (x_3127 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3129 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3128.x, x_3128.y, x_3129.z, x_3129.w);
            let x_3131 : vec4<f32> = u_xlat15;
            let x_3133 : vec2<f32> = (vec2<f32>(x_3131.x, x_3131.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3134 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3133.x, x_3133.y, x_3134.z, x_3134.w);
            let x_3136 : vec2<f32> = u_xlat64;
            let x_3137 : vec2<f32> = (x_3136 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3138 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3137.x, x_3137.y, x_3138.z, x_3138.w);
            let x_3140 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3140.y, x_3140.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3144 : f32 = u_xlat15.x;
            u_xlat16.z = x_3144;
            let x_3147 : f32 = u_xlat64.x;
            u_xlat16.w = x_3147;
            let x_3150 : f32 = u_xlat17.x;
            u_xlat14.z = x_3150;
            let x_3153 : f32 = u_xlat13.x;
            u_xlat14.w = x_3153;
            let x_3155 : vec4<f32> = u_xlat14;
            let x_3157 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3155.z, x_3155.w, x_3155.x, x_3155.z) + vec4<f32>(x_3157.z, x_3157.w, x_3157.x, x_3157.z));
            let x_3161 : f32 = u_xlat16.y;
            u_xlat15.z = x_3161;
            let x_3164 : f32 = u_xlat64.y;
            u_xlat15.w = x_3164;
            let x_3167 : f32 = u_xlat14.y;
            u_xlat17.z = x_3167;
            let x_3170 : f32 = u_xlat13.z;
            u_xlat17.w = x_3170;
            let x_3172 : vec4<f32> = u_xlat15;
            let x_3174 : vec4<f32> = u_xlat17;
            let x_3176 : vec3<f32> = (vec3<f32>(x_3172.z, x_3172.y, x_3172.w) + vec3<f32>(x_3174.z, x_3174.y, x_3174.w));
            let x_3177 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3176.x, x_3176.y, x_3176.z, x_3177.w);
            let x_3179 : vec4<f32> = u_xlat14;
            let x_3181 : vec4<f32> = u_xlat18;
            let x_3183 : vec3<f32> = (vec3<f32>(x_3179.x, x_3179.z, x_3179.w) / vec3<f32>(x_3181.z, x_3181.w, x_3181.y));
            let x_3184 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3183.x, x_3183.y, x_3183.z, x_3184.w);
            let x_3186 : vec4<f32> = u_xlat14;
            let x_3188 : vec3<f32> = (vec3<f32>(x_3186.x, x_3186.y, x_3186.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3189 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3188.x, x_3188.y, x_3188.z, x_3189.w);
            let x_3191 : vec4<f32> = u_xlat17;
            let x_3193 : vec4<f32> = u_xlat13;
            let x_3195 : vec3<f32> = (vec3<f32>(x_3191.z, x_3191.y, x_3191.w) / vec3<f32>(x_3193.x, x_3193.y, x_3193.z));
            let x_3196 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3195.x, x_3195.y, x_3195.z, x_3196.w);
            let x_3198 : vec4<f32> = u_xlat15;
            let x_3200 : vec3<f32> = (vec3<f32>(x_3198.x, x_3198.y, x_3198.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3201 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3200.x, x_3200.y, x_3200.z, x_3201.w);
            let x_3203 : vec4<f32> = u_xlat14;
            let x_3206 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3208 : vec3<f32> = (vec3<f32>(x_3203.y, x_3203.x, x_3203.z) * vec3<f32>(x_3206.x, x_3206.x, x_3206.x));
            let x_3209 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3208.x, x_3208.y, x_3208.z, x_3209.w);
            let x_3211 : vec4<f32> = u_xlat15;
            let x_3214 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3216 : vec3<f32> = (vec3<f32>(x_3211.x, x_3211.y, x_3211.z) * vec3<f32>(x_3214.y, x_3214.y, x_3214.y));
            let x_3217 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3216.x, x_3216.y, x_3216.z, x_3217.w);
            let x_3220 : f32 = u_xlat15.x;
            u_xlat14.w = x_3220;
            let x_3222 : vec4<f32> = u_xlat12;
            let x_3225 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3228 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3222.x, x_3222.y, x_3222.x, x_3222.y) * vec4<f32>(x_3225.x, x_3225.y, x_3225.x, x_3225.y)) + vec4<f32>(x_3228.y, x_3228.w, x_3228.x, x_3228.w));
            let x_3231 : vec4<f32> = u_xlat12;
            let x_3234 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3237 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3231.x, x_3231.y) * vec2<f32>(x_3234.x, x_3234.y)) + vec2<f32>(x_3237.z, x_3237.w));
            let x_3241 : f32 = u_xlat14.y;
            u_xlat15.w = x_3241;
            let x_3243 : vec4<f32> = u_xlat15;
            let x_3244 : vec2<f32> = vec2<f32>(x_3243.y, x_3243.z);
            let x_3245 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3245.x, x_3244.x, x_3245.z, x_3244.y);
            let x_3247 : vec4<f32> = u_xlat12;
            let x_3250 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3253 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3247.x, x_3247.y, x_3247.x, x_3247.y) * vec4<f32>(x_3250.x, x_3250.y, x_3250.x, x_3250.y)) + vec4<f32>(x_3253.x, x_3253.y, x_3253.z, x_3253.y));
            let x_3256 : vec4<f32> = u_xlat12;
            let x_3259 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3262 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3256.x, x_3256.y, x_3256.x, x_3256.y) * vec4<f32>(x_3259.x, x_3259.y, x_3259.x, x_3259.y)) + vec4<f32>(x_3262.w, x_3262.y, x_3262.w, x_3262.z));
            let x_3265 : vec4<f32> = u_xlat12;
            let x_3268 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3271 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3265.x, x_3265.y, x_3265.x, x_3265.y) * vec4<f32>(x_3268.x, x_3268.y, x_3268.x, x_3268.y)) + vec4<f32>(x_3271.x, x_3271.w, x_3271.z, x_3271.w));
            let x_3274 : vec4<f32> = u_xlat13;
            let x_3276 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3274.x, x_3274.x, x_3274.x, x_3274.y) * vec4<f32>(x_3276.z, x_3276.w, x_3276.y, x_3276.z));
            let x_3279 : vec4<f32> = u_xlat13;
            let x_3281 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3279.y, x_3279.y, x_3279.z, x_3279.z) * x_3281);
            let x_3284 : f32 = u_xlat13.z;
            let x_3286 : f32 = u_xlat18.y;
            u_xlat85 = (x_3284 * x_3286);
            let x_3289 : vec4<f32> = u_xlat16;
            let x_3290 : vec2<f32> = vec2<f32>(x_3289.x, x_3289.y);
            let x_3292 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
            let x_3299 : vec3<f32> = txVec34;
            let x_3301 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
            u_xlat86 = x_3301;
            let x_3303 : vec4<f32> = u_xlat16;
            let x_3304 : vec2<f32> = vec2<f32>(x_3303.z, x_3303.w);
            let x_3306 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3304.x, x_3304.y, x_3306);
            let x_3314 : vec3<f32> = txVec35;
            let x_3316 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3314.xy, x_3314.z);
            u_xlat88 = x_3316;
            let x_3317 : f32 = u_xlat88;
            let x_3319 : f32 = u_xlat19.y;
            u_xlat88 = (x_3317 * x_3319);
            let x_3322 : f32 = u_xlat19.x;
            let x_3323 : f32 = u_xlat86;
            let x_3325 : f32 = u_xlat88;
            u_xlat86 = ((x_3322 * x_3323) + x_3325);
            let x_3328 : vec2<f32> = u_xlat64;
            let x_3330 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3328.x, x_3328.y, x_3330);
            let x_3337 : vec3<f32> = txVec36;
            let x_3339 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3337.xy, x_3337.z);
            u_xlat88 = x_3339;
            let x_3341 : f32 = u_xlat19.z;
            let x_3342 : f32 = u_xlat88;
            let x_3344 : f32 = u_xlat86;
            u_xlat86 = ((x_3341 * x_3342) + x_3344);
            let x_3347 : vec4<f32> = u_xlat15;
            let x_3348 : vec2<f32> = vec2<f32>(x_3347.x, x_3347.y);
            let x_3350 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3348.x, x_3348.y, x_3350);
            let x_3357 : vec3<f32> = txVec37;
            let x_3359 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3357.xy, x_3357.z);
            u_xlat88 = x_3359;
            let x_3361 : f32 = u_xlat19.w;
            let x_3362 : f32 = u_xlat88;
            let x_3364 : f32 = u_xlat86;
            u_xlat86 = ((x_3361 * x_3362) + x_3364);
            let x_3367 : vec4<f32> = u_xlat17;
            let x_3368 : vec2<f32> = vec2<f32>(x_3367.x, x_3367.y);
            let x_3370 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3368.x, x_3368.y, x_3370);
            let x_3377 : vec3<f32> = txVec38;
            let x_3379 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3377.xy, x_3377.z);
            u_xlat88 = x_3379;
            let x_3381 : f32 = u_xlat20.x;
            let x_3382 : f32 = u_xlat88;
            let x_3384 : f32 = u_xlat86;
            u_xlat86 = ((x_3381 * x_3382) + x_3384);
            let x_3387 : vec4<f32> = u_xlat17;
            let x_3388 : vec2<f32> = vec2<f32>(x_3387.z, x_3387.w);
            let x_3390 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3388.x, x_3388.y, x_3390);
            let x_3397 : vec3<f32> = txVec39;
            let x_3399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3397.xy, x_3397.z);
            u_xlat88 = x_3399;
            let x_3401 : f32 = u_xlat20.y;
            let x_3402 : f32 = u_xlat88;
            let x_3404 : f32 = u_xlat86;
            u_xlat86 = ((x_3401 * x_3402) + x_3404);
            let x_3407 : vec4<f32> = u_xlat15;
            let x_3408 : vec2<f32> = vec2<f32>(x_3407.z, x_3407.w);
            let x_3410 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3408.x, x_3408.y, x_3410);
            let x_3417 : vec3<f32> = txVec40;
            let x_3419 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3417.xy, x_3417.z);
            u_xlat88 = x_3419;
            let x_3421 : f32 = u_xlat20.z;
            let x_3422 : f32 = u_xlat88;
            let x_3424 : f32 = u_xlat86;
            u_xlat86 = ((x_3421 * x_3422) + x_3424);
            let x_3427 : vec4<f32> = u_xlat14;
            let x_3428 : vec2<f32> = vec2<f32>(x_3427.x, x_3427.y);
            let x_3430 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3428.x, x_3428.y, x_3430);
            let x_3437 : vec3<f32> = txVec41;
            let x_3439 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3437.xy, x_3437.z);
            u_xlat88 = x_3439;
            let x_3441 : f32 = u_xlat20.w;
            let x_3442 : f32 = u_xlat88;
            let x_3444 : f32 = u_xlat86;
            u_xlat86 = ((x_3441 * x_3442) + x_3444);
            let x_3447 : vec4<f32> = u_xlat14;
            let x_3448 : vec2<f32> = vec2<f32>(x_3447.z, x_3447.w);
            let x_3450 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3448.x, x_3448.y, x_3450);
            let x_3457 : vec3<f32> = txVec42;
            let x_3459 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3457.xy, x_3457.z);
            u_xlat88 = x_3459;
            let x_3460 : f32 = u_xlat85;
            let x_3461 : f32 = u_xlat88;
            let x_3463 : f32 = u_xlat86;
            u_xlat84 = ((x_3460 * x_3461) + x_3463);
          } else {
            let x_3466 : vec4<f32> = u_xlat11;
            let x_3469 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3472 : vec2<f32> = ((vec2<f32>(x_3466.x, x_3466.y) * vec2<f32>(x_3469.z, x_3469.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3473 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3472.x, x_3472.y, x_3473.z, x_3473.w);
            let x_3475 : vec4<f32> = u_xlat12;
            let x_3477 : vec2<f32> = floor(vec2<f32>(x_3475.x, x_3475.y));
            let x_3478 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3477.x, x_3477.y, x_3478.z, x_3478.w);
            let x_3480 : vec4<f32> = u_xlat11;
            let x_3483 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3486 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3480.x, x_3480.y) * vec2<f32>(x_3483.z, x_3483.w)) + -(vec2<f32>(x_3486.x, x_3486.y)));
            let x_3490 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3490.x, x_3490.x, x_3490.y, x_3490.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3493 : vec4<f32> = u_xlat13;
            let x_3495 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3493.x, x_3493.x, x_3493.z, x_3493.z) * vec4<f32>(x_3495.x, x_3495.x, x_3495.z, x_3495.z));
            let x_3498 : vec4<f32> = u_xlat14;
            let x_3500 : vec2<f32> = (vec2<f32>(x_3498.y, x_3498.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3501 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3501.x, x_3500.x, x_3501.z, x_3500.y);
            let x_3503 : vec4<f32> = u_xlat14;
            let x_3506 : vec2<f32> = u_xlat64;
            let x_3508 : vec2<f32> = ((vec2<f32>(x_3503.x, x_3503.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3506));
            let x_3509 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3508.x, x_3509.y, x_3508.y, x_3509.w);
            let x_3511 : vec2<f32> = u_xlat64;
            let x_3513 : vec2<f32> = (-(x_3511) + vec2<f32>(1.0f, 1.0f));
            let x_3514 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3513.x, x_3513.y, x_3514.z, x_3514.w);
            let x_3516 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3516, vec2<f32>(0.0f, 0.0f));
            let x_3518 : vec2<f32> = u_xlat66;
            let x_3520 : vec2<f32> = u_xlat66;
            let x_3522 : vec4<f32> = u_xlat14;
            let x_3524 : vec2<f32> = ((-(x_3518) * x_3520) + vec2<f32>(x_3522.x, x_3522.y));
            let x_3525 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3524.x, x_3524.y, x_3525.z, x_3525.w);
            let x_3527 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3527, vec2<f32>(0.0f, 0.0f));
            let x_3530 : vec2<f32> = u_xlat66;
            let x_3532 : vec2<f32> = u_xlat66;
            let x_3534 : vec4<f32> = u_xlat13;
            let x_3536 : vec2<f32> = ((-(x_3530) * x_3532) + vec2<f32>(x_3534.y, x_3534.w));
            let x_3537 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3536.x, x_3537.y, x_3536.y);
            let x_3539 : vec4<f32> = u_xlat14;
            let x_3541 : vec2<f32> = (vec2<f32>(x_3539.x, x_3539.y) + vec2<f32>(2.0f, 2.0f));
            let x_3542 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3541.x, x_3541.y, x_3542.z, x_3542.w);
            let x_3544 : vec3<f32> = u_xlat39;
            let x_3546 : vec2<f32> = (vec2<f32>(x_3544.x, x_3544.z) + vec2<f32>(2.0f, 2.0f));
            let x_3547 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3547.x, x_3546.x, x_3547.z, x_3546.y);
            let x_3550 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3550 * 0.08163200318813323975f);
            let x_3553 : vec4<f32> = u_xlat13;
            let x_3555 : vec3<f32> = (vec3<f32>(x_3553.z, x_3553.x, x_3553.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3556 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3555.x, x_3555.y, x_3555.z, x_3556.w);
            let x_3558 : vec4<f32> = u_xlat14;
            let x_3560 : vec2<f32> = (vec2<f32>(x_3558.x, x_3558.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3561 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3560.x, x_3560.y, x_3561.z, x_3561.w);
            let x_3564 : f32 = u_xlat17.y;
            u_xlat16.x = x_3564;
            let x_3566 : vec2<f32> = u_xlat64;
            let x_3569 : vec2<f32> = ((vec2<f32>(x_3566.x, x_3566.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3570 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3570.x, x_3569.x, x_3570.z, x_3569.y);
            let x_3572 : vec2<f32> = u_xlat64;
            let x_3575 : vec2<f32> = ((vec2<f32>(x_3572.x, x_3572.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3576 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3575.x, x_3576.y, x_3575.y, x_3576.w);
            let x_3579 : f32 = u_xlat13.x;
            u_xlat14.y = x_3579;
            let x_3582 : f32 = u_xlat15.y;
            u_xlat14.w = x_3582;
            let x_3584 : vec4<f32> = u_xlat14;
            let x_3585 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3584 + x_3585);
            let x_3587 : vec2<f32> = u_xlat64;
            let x_3590 : vec2<f32> = ((vec2<f32>(x_3587.y, x_3587.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3591 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3591.x, x_3590.x, x_3591.z, x_3590.y);
            let x_3593 : vec2<f32> = u_xlat64;
            let x_3596 : vec2<f32> = ((vec2<f32>(x_3593.y, x_3593.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3597 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3596.x, x_3597.y, x_3596.y, x_3597.w);
            let x_3600 : f32 = u_xlat13.y;
            u_xlat15.y = x_3600;
            let x_3602 : vec4<f32> = u_xlat15;
            let x_3603 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3602 + x_3603);
            let x_3605 : vec4<f32> = u_xlat14;
            let x_3606 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3605 / x_3606);
            let x_3608 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3608 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3610 : vec4<f32> = u_xlat15;
            let x_3611 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3610 / x_3611);
            let x_3613 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3613 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3615 : vec4<f32> = u_xlat14;
            let x_3618 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3615.w, x_3615.x, x_3615.y, x_3615.z) * vec4<f32>(x_3618.x, x_3618.x, x_3618.x, x_3618.x));
            let x_3621 : vec4<f32> = u_xlat15;
            let x_3624 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3621.x, x_3621.w, x_3621.y, x_3621.z) * vec4<f32>(x_3624.y, x_3624.y, x_3624.y, x_3624.y));
            let x_3627 : vec4<f32> = u_xlat14;
            let x_3628 : vec3<f32> = vec3<f32>(x_3627.y, x_3627.z, x_3627.w);
            let x_3629 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3628.x, x_3629.y, x_3628.y, x_3628.z);
            let x_3632 : f32 = u_xlat15.x;
            u_xlat17.y = x_3632;
            let x_3634 : vec4<f32> = u_xlat12;
            let x_3637 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3640 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3634.x, x_3634.y, x_3634.x, x_3634.y) * vec4<f32>(x_3637.x, x_3637.y, x_3637.x, x_3637.y)) + vec4<f32>(x_3640.x, x_3640.y, x_3640.z, x_3640.y));
            let x_3643 : vec4<f32> = u_xlat12;
            let x_3646 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3649 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3643.x, x_3643.y) * vec2<f32>(x_3646.x, x_3646.y)) + vec2<f32>(x_3649.w, x_3649.y));
            let x_3653 : f32 = u_xlat17.y;
            u_xlat14.y = x_3653;
            let x_3656 : f32 = u_xlat15.z;
            u_xlat17.y = x_3656;
            let x_3658 : vec4<f32> = u_xlat12;
            let x_3661 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3664 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3658.x, x_3658.y, x_3658.x, x_3658.y) * vec4<f32>(x_3661.x, x_3661.y, x_3661.x, x_3661.y)) + vec4<f32>(x_3664.x, x_3664.y, x_3664.z, x_3664.y));
            let x_3667 : vec4<f32> = u_xlat12;
            let x_3670 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3673 : vec4<f32> = u_xlat17;
            let x_3675 : vec2<f32> = ((vec2<f32>(x_3667.x, x_3667.y) * vec2<f32>(x_3670.x, x_3670.y)) + vec2<f32>(x_3673.w, x_3673.y));
            let x_3676 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3675.x, x_3675.y, x_3676.z, x_3676.w);
            let x_3679 : f32 = u_xlat17.y;
            u_xlat14.z = x_3679;
            let x_3682 : vec4<f32> = u_xlat12;
            let x_3685 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3688 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3682.x, x_3682.y, x_3682.x, x_3682.y) * vec4<f32>(x_3685.x, x_3685.y, x_3685.x, x_3685.y)) + vec4<f32>(x_3688.x, x_3688.y, x_3688.x, x_3688.z));
            let x_3692 : f32 = u_xlat15.w;
            u_xlat17.y = x_3692;
            let x_3695 : vec4<f32> = u_xlat12;
            let x_3698 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3701 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3695.x, x_3695.y, x_3695.x, x_3695.y) * vec4<f32>(x_3698.x, x_3698.y, x_3698.x, x_3698.y)) + vec4<f32>(x_3701.x, x_3701.y, x_3701.z, x_3701.y));
            let x_3705 : vec4<f32> = u_xlat12;
            let x_3708 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3711 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3705.x, x_3705.y) * vec2<f32>(x_3708.x, x_3708.y)) + vec2<f32>(x_3711.w, x_3711.y));
            let x_3715 : f32 = u_xlat17.y;
            u_xlat14.w = x_3715;
            let x_3718 : vec4<f32> = u_xlat12;
            let x_3721 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3724 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3718.x, x_3718.y) * vec2<f32>(x_3721.x, x_3721.y)) + vec2<f32>(x_3724.x, x_3724.w));
            let x_3727 : vec4<f32> = u_xlat17;
            let x_3728 : vec3<f32> = vec3<f32>(x_3727.x, x_3727.z, x_3727.w);
            let x_3729 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3728.x, x_3729.y, x_3728.y, x_3728.z);
            let x_3731 : vec4<f32> = u_xlat12;
            let x_3734 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3737 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3731.x, x_3731.y, x_3731.x, x_3731.y) * vec4<f32>(x_3734.x, x_3734.y, x_3734.x, x_3734.y)) + vec4<f32>(x_3737.x, x_3737.y, x_3737.z, x_3737.y));
            let x_3740 : vec4<f32> = u_xlat12;
            let x_3743 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3746 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3740.x, x_3740.y) * vec2<f32>(x_3743.x, x_3743.y)) + vec2<f32>(x_3746.w, x_3746.y));
            let x_3750 : f32 = u_xlat14.x;
            u_xlat15.x = x_3750;
            let x_3752 : vec4<f32> = u_xlat12;
            let x_3755 : vec4<f32> = x_629.x_AdditionalShadowmapSize;
            let x_3758 : vec4<f32> = u_xlat15;
            let x_3760 : vec2<f32> = ((vec2<f32>(x_3752.x, x_3752.y) * vec2<f32>(x_3755.x, x_3755.y)) + vec2<f32>(x_3758.x, x_3758.y));
            let x_3761 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3760.x, x_3760.y, x_3761.z, x_3761.w);
            let x_3764 : vec4<f32> = u_xlat13;
            let x_3766 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3764.x, x_3764.x, x_3764.x, x_3764.x) * x_3766);
            let x_3769 : vec4<f32> = u_xlat13;
            let x_3771 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3769.y, x_3769.y, x_3769.y, x_3769.y) * x_3771);
            let x_3774 : vec4<f32> = u_xlat13;
            let x_3776 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3774.z, x_3774.z, x_3774.z, x_3774.z) * x_3776);
            let x_3778 : vec4<f32> = u_xlat13;
            let x_3780 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3778.w, x_3778.w, x_3778.w, x_3778.w) * x_3780);
            let x_3783 : vec4<f32> = u_xlat18;
            let x_3784 : vec2<f32> = vec2<f32>(x_3783.x, x_3783.y);
            let x_3786 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3784.x, x_3784.y, x_3786);
            let x_3793 : vec3<f32> = txVec43;
            let x_3795 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3793.xy, x_3793.z);
            u_xlat85 = x_3795;
            let x_3797 : vec4<f32> = u_xlat18;
            let x_3798 : vec2<f32> = vec2<f32>(x_3797.z, x_3797.w);
            let x_3800 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3798.x, x_3798.y, x_3800);
            let x_3807 : vec3<f32> = txVec44;
            let x_3809 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3807.xy, x_3807.z);
            u_xlat86 = x_3809;
            let x_3810 : f32 = u_xlat86;
            let x_3812 : f32 = u_xlat23.y;
            u_xlat86 = (x_3810 * x_3812);
            let x_3815 : f32 = u_xlat23.x;
            let x_3816 : f32 = u_xlat85;
            let x_3818 : f32 = u_xlat86;
            u_xlat85 = ((x_3815 * x_3816) + x_3818);
            let x_3821 : vec2<f32> = u_xlat64;
            let x_3823 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3821.x, x_3821.y, x_3823);
            let x_3830 : vec3<f32> = txVec45;
            let x_3832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3830.xy, x_3830.z);
            u_xlat86 = x_3832;
            let x_3834 : f32 = u_xlat23.z;
            let x_3835 : f32 = u_xlat86;
            let x_3837 : f32 = u_xlat85;
            u_xlat85 = ((x_3834 * x_3835) + x_3837);
            let x_3840 : vec4<f32> = u_xlat21;
            let x_3841 : vec2<f32> = vec2<f32>(x_3840.x, x_3840.y);
            let x_3843 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3841.x, x_3841.y, x_3843);
            let x_3850 : vec3<f32> = txVec46;
            let x_3852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3850.xy, x_3850.z);
            u_xlat86 = x_3852;
            let x_3854 : f32 = u_xlat23.w;
            let x_3855 : f32 = u_xlat86;
            let x_3857 : f32 = u_xlat85;
            u_xlat85 = ((x_3854 * x_3855) + x_3857);
            let x_3860 : vec4<f32> = u_xlat19;
            let x_3861 : vec2<f32> = vec2<f32>(x_3860.x, x_3860.y);
            let x_3863 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3861.x, x_3861.y, x_3863);
            let x_3870 : vec3<f32> = txVec47;
            let x_3872 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3870.xy, x_3870.z);
            u_xlat86 = x_3872;
            let x_3874 : f32 = u_xlat24.x;
            let x_3875 : f32 = u_xlat86;
            let x_3877 : f32 = u_xlat85;
            u_xlat85 = ((x_3874 * x_3875) + x_3877);
            let x_3880 : vec4<f32> = u_xlat19;
            let x_3881 : vec2<f32> = vec2<f32>(x_3880.z, x_3880.w);
            let x_3883 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3881.x, x_3881.y, x_3883);
            let x_3890 : vec3<f32> = txVec48;
            let x_3892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3890.xy, x_3890.z);
            u_xlat86 = x_3892;
            let x_3894 : f32 = u_xlat24.y;
            let x_3895 : f32 = u_xlat86;
            let x_3897 : f32 = u_xlat85;
            u_xlat85 = ((x_3894 * x_3895) + x_3897);
            let x_3900 : vec4<f32> = u_xlat20;
            let x_3901 : vec2<f32> = vec2<f32>(x_3900.x, x_3900.y);
            let x_3903 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3901.x, x_3901.y, x_3903);
            let x_3910 : vec3<f32> = txVec49;
            let x_3912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3910.xy, x_3910.z);
            u_xlat86 = x_3912;
            let x_3914 : f32 = u_xlat24.z;
            let x_3915 : f32 = u_xlat86;
            let x_3917 : f32 = u_xlat85;
            u_xlat85 = ((x_3914 * x_3915) + x_3917);
            let x_3920 : vec4<f32> = u_xlat21;
            let x_3921 : vec2<f32> = vec2<f32>(x_3920.z, x_3920.w);
            let x_3923 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3921.x, x_3921.y, x_3923);
            let x_3930 : vec3<f32> = txVec50;
            let x_3932 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3930.xy, x_3930.z);
            u_xlat86 = x_3932;
            let x_3934 : f32 = u_xlat24.w;
            let x_3935 : f32 = u_xlat86;
            let x_3937 : f32 = u_xlat85;
            u_xlat85 = ((x_3934 * x_3935) + x_3937);
            let x_3940 : vec4<f32> = u_xlat22;
            let x_3941 : vec2<f32> = vec2<f32>(x_3940.x, x_3940.y);
            let x_3943 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3941.x, x_3941.y, x_3943);
            let x_3950 : vec3<f32> = txVec51;
            let x_3952 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3950.xy, x_3950.z);
            u_xlat86 = x_3952;
            let x_3954 : f32 = u_xlat25.x;
            let x_3955 : f32 = u_xlat86;
            let x_3957 : f32 = u_xlat85;
            u_xlat85 = ((x_3954 * x_3955) + x_3957);
            let x_3960 : vec4<f32> = u_xlat22;
            let x_3961 : vec2<f32> = vec2<f32>(x_3960.z, x_3960.w);
            let x_3963 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3961.x, x_3961.y, x_3963);
            let x_3970 : vec3<f32> = txVec52;
            let x_3972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3970.xy, x_3970.z);
            u_xlat86 = x_3972;
            let x_3974 : f32 = u_xlat25.y;
            let x_3975 : f32 = u_xlat86;
            let x_3977 : f32 = u_xlat85;
            u_xlat85 = ((x_3974 * x_3975) + x_3977);
            let x_3980 : vec2<f32> = u_xlat40;
            let x_3982 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3980.x, x_3980.y, x_3982);
            let x_3989 : vec3<f32> = txVec53;
            let x_3991 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3989.xy, x_3989.z);
            u_xlat86 = x_3991;
            let x_3993 : f32 = u_xlat25.z;
            let x_3994 : f32 = u_xlat86;
            let x_3996 : f32 = u_xlat85;
            u_xlat85 = ((x_3993 * x_3994) + x_3996);
            let x_3999 : vec2<f32> = u_xlat72;
            let x_4001 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3999.x, x_3999.y, x_4001);
            let x_4008 : vec3<f32> = txVec54;
            let x_4010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4008.xy, x_4008.z);
            u_xlat86 = x_4010;
            let x_4012 : f32 = u_xlat25.w;
            let x_4013 : f32 = u_xlat86;
            let x_4015 : f32 = u_xlat85;
            u_xlat85 = ((x_4012 * x_4013) + x_4015);
            let x_4018 : vec4<f32> = u_xlat17;
            let x_4019 : vec2<f32> = vec2<f32>(x_4018.x, x_4018.y);
            let x_4021 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4019.x, x_4019.y, x_4021);
            let x_4028 : vec3<f32> = txVec55;
            let x_4030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4028.xy, x_4028.z);
            u_xlat86 = x_4030;
            let x_4032 : f32 = u_xlat13.x;
            let x_4033 : f32 = u_xlat86;
            let x_4035 : f32 = u_xlat85;
            u_xlat85 = ((x_4032 * x_4033) + x_4035);
            let x_4038 : vec4<f32> = u_xlat17;
            let x_4039 : vec2<f32> = vec2<f32>(x_4038.z, x_4038.w);
            let x_4041 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4039.x, x_4039.y, x_4041);
            let x_4048 : vec3<f32> = txVec56;
            let x_4050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4048.xy, x_4048.z);
            u_xlat86 = x_4050;
            let x_4052 : f32 = u_xlat13.y;
            let x_4053 : f32 = u_xlat86;
            let x_4055 : f32 = u_xlat85;
            u_xlat85 = ((x_4052 * x_4053) + x_4055);
            let x_4058 : vec2<f32> = u_xlat67;
            let x_4060 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4058.x, x_4058.y, x_4060);
            let x_4067 : vec3<f32> = txVec57;
            let x_4069 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4067.xy, x_4067.z);
            u_xlat86 = x_4069;
            let x_4071 : f32 = u_xlat13.z;
            let x_4072 : f32 = u_xlat86;
            let x_4074 : f32 = u_xlat85;
            u_xlat85 = ((x_4071 * x_4072) + x_4074);
            let x_4077 : vec4<f32> = u_xlat12;
            let x_4078 : vec2<f32> = vec2<f32>(x_4077.x, x_4077.y);
            let x_4080 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4078.x, x_4078.y, x_4080);
            let x_4087 : vec3<f32> = txVec58;
            let x_4089 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4087.xy, x_4087.z);
            u_xlat86 = x_4089;
            let x_4091 : f32 = u_xlat13.w;
            let x_4092 : f32 = u_xlat86;
            let x_4094 : f32 = u_xlat85;
            u_xlat84 = ((x_4091 * x_4092) + x_4094);
          }
        }
      } else {
        let x_4098 : vec4<f32> = u_xlat11;
        let x_4099 : vec2<f32> = vec2<f32>(x_4098.x, x_4098.y);
        let x_4101 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4099.x, x_4099.y, x_4101);
        let x_4108 : vec3<f32> = txVec59;
        let x_4110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4108.xy, x_4108.z);
        u_xlat84 = x_4110;
      }
      let x_4111 : i32 = u_xlati55;
      let x_4113 : f32 = x_629.x_AdditionalShadowParams[x_4111].x;
      u_xlat85 = (1.0f + -(x_4113));
      let x_4116 : f32 = u_xlat84;
      let x_4117 : i32 = u_xlati55;
      let x_4119 : f32 = x_629.x_AdditionalShadowParams[x_4117].x;
      let x_4121 : f32 = u_xlat85;
      u_xlat84 = ((x_4116 * x_4119) + x_4121);
      let x_4124 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4124);
      let x_4128 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4128 >= 1.0f);
      let x_4130 : bool = u_xlatb85;
      let x_4131 : bool = u_xlatb86;
      u_xlatb85 = (x_4130 | x_4131);
      let x_4133 : bool = u_xlatb85;
      let x_4134 : f32 = u_xlat84;
      u_xlat84 = select(x_4134, 1.0f, x_4133);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4137 : f32 = u_xlat84;
    u_xlat85 = (-(x_4137) + 1.0f);
    let x_4140 : f32 = u_xlat52;
    let x_4141 : f32 = u_xlat85;
    let x_4143 : f32 = u_xlat84;
    u_xlat84 = ((x_4140 * x_4141) + x_4143);
    let x_4146 : i32 = u_xlati55;
    u_xlati85 = (1i << bitcast<u32>((x_4146 & 31i)));
    let x_4149 : i32 = u_xlati85;
    let x_4152 : f32 = x_2243.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_4149) & bitcast<u32>(x_4152)));
    let x_4156 : i32 = u_xlati85;
    if ((x_4156 != 0i)) {
      let x_4160 : i32 = u_xlati55;
      let x_4162 : f32 = x_2243.x_AdditionalLightsLightTypes[x_4160].el;
      u_xlati85 = i32(x_4162);
      let x_4165 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_4165 != 0i));
      let x_4169 : i32 = u_xlati55;
      u_xlati88 = (x_4169 << bitcast<u32>(2i));
      let x_4171 : i32 = u_xlati86;
      if ((x_4171 != 0i)) {
        let x_4175 : vec3<f32> = vs_TEXCOORD7;
        let x_4177 : i32 = u_xlati88;
        let x_4180 : i32 = u_xlati88;
        let x_4184 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[((x_4177 + 1i) / 4i)][((x_4180 + 1i) % 4i)];
        let x_4186 : vec3<f32> = (vec3<f32>(x_4175.y, x_4175.y, x_4175.y) * vec3<f32>(x_4184.x, x_4184.y, x_4184.w));
        let x_4187 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4186.x, x_4186.y, x_4186.z, x_4187.w);
        let x_4189 : i32 = u_xlati88;
        let x_4191 : i32 = u_xlati88;
        let x_4194 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[(x_4189 / 4i)][(x_4191 % 4i)];
        let x_4196 : vec3<f32> = vs_TEXCOORD7;
        let x_4199 : vec4<f32> = u_xlat11;
        let x_4201 : vec3<f32> = ((vec3<f32>(x_4194.x, x_4194.y, x_4194.w) * vec3<f32>(x_4196.x, x_4196.x, x_4196.x)) + vec3<f32>(x_4199.x, x_4199.y, x_4199.z));
        let x_4202 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4201.x, x_4201.y, x_4201.z, x_4202.w);
        let x_4204 : i32 = u_xlati88;
        let x_4207 : i32 = u_xlati88;
        let x_4211 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[((x_4204 + 2i) / 4i)][((x_4207 + 2i) % 4i)];
        let x_4213 : vec3<f32> = vs_TEXCOORD7;
        let x_4216 : vec4<f32> = u_xlat11;
        let x_4218 : vec3<f32> = ((vec3<f32>(x_4211.x, x_4211.y, x_4211.w) * vec3<f32>(x_4213.z, x_4213.z, x_4213.z)) + vec3<f32>(x_4216.x, x_4216.y, x_4216.z));
        let x_4219 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4218.x, x_4218.y, x_4218.z, x_4219.w);
        let x_4221 : vec4<f32> = u_xlat11;
        let x_4223 : i32 = u_xlati88;
        let x_4226 : i32 = u_xlati88;
        let x_4230 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[((x_4223 + 3i) / 4i)][((x_4226 + 3i) % 4i)];
        let x_4232 : vec3<f32> = (vec3<f32>(x_4221.x, x_4221.y, x_4221.z) + vec3<f32>(x_4230.x, x_4230.y, x_4230.w));
        let x_4233 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4232.x, x_4232.y, x_4232.z, x_4233.w);
        let x_4235 : vec4<f32> = u_xlat11;
        let x_4237 : vec4<f32> = u_xlat11;
        let x_4239 : vec2<f32> = (vec2<f32>(x_4235.x, x_4235.y) / vec2<f32>(x_4237.z, x_4237.z));
        let x_4240 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4239.x, x_4239.y, x_4240.z, x_4240.w);
        let x_4242 : vec4<f32> = u_xlat11;
        let x_4245 : vec2<f32> = ((vec2<f32>(x_4242.x, x_4242.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4246 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4245.x, x_4245.y, x_4246.z, x_4246.w);
        let x_4248 : vec4<f32> = u_xlat11;
        let x_4252 : vec2<f32> = clamp(vec2<f32>(x_4248.x, x_4248.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4253 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4252.x, x_4252.y, x_4253.z, x_4253.w);
        let x_4255 : i32 = u_xlati55;
        let x_4257 : vec4<f32> = x_2243.x_AdditionalLightsCookieAtlasUVRects[x_4255];
        let x_4259 : vec4<f32> = u_xlat11;
        let x_4262 : i32 = u_xlati55;
        let x_4264 : vec4<f32> = x_2243.x_AdditionalLightsCookieAtlasUVRects[x_4262];
        let x_4266 : vec2<f32> = ((vec2<f32>(x_4257.x, x_4257.y) * vec2<f32>(x_4259.x, x_4259.y)) + vec2<f32>(x_4264.z, x_4264.w));
        let x_4267 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4266.x, x_4266.y, x_4267.z, x_4267.w);
      } else {
        let x_4270 : i32 = u_xlati85;
        u_xlatb85 = (x_4270 == 1i);
        let x_4272 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4272);
        let x_4274 : i32 = u_xlati85;
        if ((x_4274 != 0i)) {
          let x_4279 : vec3<f32> = vs_TEXCOORD7;
          let x_4281 : i32 = u_xlati88;
          let x_4284 : i32 = u_xlati88;
          let x_4288 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[((x_4281 + 1i) / 4i)][((x_4284 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4279.y, x_4279.y) * vec2<f32>(x_4288.x, x_4288.y));
          let x_4291 : i32 = u_xlati88;
          let x_4293 : i32 = u_xlati88;
          let x_4296 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[(x_4291 / 4i)][(x_4293 % 4i)];
          let x_4298 : vec3<f32> = vs_TEXCOORD7;
          let x_4301 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4296.x, x_4296.y) * vec2<f32>(x_4298.x, x_4298.x)) + x_4301);
          let x_4303 : i32 = u_xlati88;
          let x_4306 : i32 = u_xlati88;
          let x_4310 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[((x_4303 + 2i) / 4i)][((x_4306 + 2i) % 4i)];
          let x_4312 : vec3<f32> = vs_TEXCOORD7;
          let x_4315 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4310.x, x_4310.y) * vec2<f32>(x_4312.z, x_4312.z)) + x_4315);
          let x_4317 : vec2<f32> = u_xlat63;
          let x_4318 : i32 = u_xlati88;
          let x_4321 : i32 = u_xlati88;
          let x_4325 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[((x_4318 + 3i) / 4i)][((x_4321 + 3i) % 4i)];
          u_xlat63 = (x_4317 + vec2<f32>(x_4325.x, x_4325.y));
          let x_4328 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4328 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4331 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4331);
          let x_4333 : i32 = u_xlati55;
          let x_4335 : vec4<f32> = x_2243.x_AdditionalLightsCookieAtlasUVRects[x_4333];
          let x_4337 : vec2<f32> = u_xlat63;
          let x_4339 : i32 = u_xlati55;
          let x_4341 : vec4<f32> = x_2243.x_AdditionalLightsCookieAtlasUVRects[x_4339];
          let x_4343 : vec2<f32> = ((vec2<f32>(x_4335.x, x_4335.y) * x_4337) + vec2<f32>(x_4341.z, x_4341.w));
          let x_4344 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4343.x, x_4343.y, x_4344.z, x_4344.w);
        } else {
          let x_4347 : vec3<f32> = vs_TEXCOORD7;
          let x_4349 : i32 = u_xlati88;
          let x_4352 : i32 = u_xlati88;
          let x_4356 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[((x_4349 + 1i) / 4i)][((x_4352 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4347.y, x_4347.y, x_4347.y, x_4347.y) * x_4356);
          let x_4358 : i32 = u_xlati88;
          let x_4360 : i32 = u_xlati88;
          let x_4363 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[(x_4358 / 4i)][(x_4360 % 4i)];
          let x_4364 : vec3<f32> = vs_TEXCOORD7;
          let x_4367 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4363 * vec4<f32>(x_4364.x, x_4364.x, x_4364.x, x_4364.x)) + x_4367);
          let x_4369 : i32 = u_xlati88;
          let x_4372 : i32 = u_xlati88;
          let x_4376 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[((x_4369 + 2i) / 4i)][((x_4372 + 2i) % 4i)];
          let x_4377 : vec3<f32> = vs_TEXCOORD7;
          let x_4380 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4376 * vec4<f32>(x_4377.z, x_4377.z, x_4377.z, x_4377.z)) + x_4380);
          let x_4382 : vec4<f32> = u_xlat12;
          let x_4383 : i32 = u_xlati88;
          let x_4386 : i32 = u_xlati88;
          let x_4390 : vec4<f32> = x_2243.x_AdditionalLightsWorldToLights[((x_4383 + 3i) / 4i)][((x_4386 + 3i) % 4i)];
          u_xlat12 = (x_4382 + x_4390);
          let x_4392 : vec4<f32> = u_xlat12;
          let x_4394 : vec4<f32> = u_xlat12;
          let x_4396 : vec3<f32> = (vec3<f32>(x_4392.x, x_4392.y, x_4392.z) / vec3<f32>(x_4394.w, x_4394.w, x_4394.w));
          let x_4397 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4396.x, x_4396.y, x_4396.z, x_4397.w);
          let x_4399 : vec4<f32> = u_xlat12;
          let x_4401 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4399.x, x_4399.y, x_4399.z), vec3<f32>(x_4401.x, x_4401.y, x_4401.z));
          let x_4404 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4404);
          let x_4406 : f32 = u_xlat85;
          let x_4408 : vec4<f32> = u_xlat12;
          let x_4410 : vec3<f32> = (vec3<f32>(x_4406, x_4406, x_4406) * vec3<f32>(x_4408.x, x_4408.y, x_4408.z));
          let x_4411 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4410.x, x_4410.y, x_4410.z, x_4411.w);
          let x_4413 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4413.x, x_4413.y, x_4413.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4418 : f32 = u_xlat85;
          u_xlat85 = max(x_4418, 0.00000099999999747524f);
          let x_4421 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4421);
          let x_4423 : f32 = u_xlat85;
          let x_4425 : vec4<f32> = u_xlat12;
          let x_4427 : vec3<f32> = (vec3<f32>(x_4423, x_4423, x_4423) * vec3<f32>(x_4425.z, x_4425.x, x_4425.y));
          let x_4428 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4427.x, x_4427.y, x_4427.z, x_4428.w);
          let x_4431 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4431);
          let x_4435 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4435, 0.0f, 1.0f);
          let x_4439 : vec4<f32> = u_xlat13;
          let x_4441 : vec4<bool> = (vec4<f32>(x_4439.y, x_4439.z, x_4439.y, x_4439.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4441.x, x_4441.y);
          let x_4444 : bool = u_xlatb63.x;
          if (x_4444) {
            let x_4449 : f32 = u_xlat13.x;
            x_4445 = x_4449;
          } else {
            let x_4452 : f32 = u_xlat13.x;
            x_4445 = -(x_4452);
          }
          let x_4454 : f32 = x_4445;
          u_xlat63.x = x_4454;
          let x_4457 : bool = u_xlatb63.y;
          if (x_4457) {
            let x_4462 : f32 = u_xlat13.x;
            x_4458 = x_4462;
          } else {
            let x_4465 : f32 = u_xlat13.x;
            x_4458 = -(x_4465);
          }
          let x_4467 : f32 = x_4458;
          u_xlat63.y = x_4467;
          let x_4469 : vec4<f32> = u_xlat12;
          let x_4471 : f32 = u_xlat85;
          let x_4474 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4469.x, x_4469.y) * vec2<f32>(x_4471, x_4471)) + x_4474);
          let x_4476 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4476 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4479 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4479, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4483 : i32 = u_xlati55;
          let x_4485 : vec4<f32> = x_2243.x_AdditionalLightsCookieAtlasUVRects[x_4483];
          let x_4487 : vec2<f32> = u_xlat63;
          let x_4489 : i32 = u_xlati55;
          let x_4491 : vec4<f32> = x_2243.x_AdditionalLightsCookieAtlasUVRects[x_4489];
          let x_4493 : vec2<f32> = ((vec2<f32>(x_4485.x, x_4485.y) * x_4487) + vec2<f32>(x_4491.z, x_4491.w));
          let x_4494 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4493.x, x_4493.y, x_4494.z, x_4494.w);
        }
      }
      let x_4501 : vec4<f32> = u_xlat11;
      let x_4503 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4501.x, x_4501.y), 0.0f);
      u_xlat11 = x_4503;
      let x_4505 : bool = u_xlatb3.y;
      if (x_4505) {
        let x_4510 : f32 = u_xlat11.w;
        x_4506 = x_4510;
      } else {
        let x_4513 : f32 = u_xlat11.x;
        x_4506 = x_4513;
      }
      let x_4514 : f32 = x_4506;
      u_xlat85 = x_4514;
      let x_4516 : bool = u_xlatb3.x;
      if (x_4516) {
        let x_4520 : vec4<f32> = u_xlat11;
        x_4517 = vec3<f32>(x_4520.x, x_4520.y, x_4520.z);
      } else {
        let x_4523 : f32 = u_xlat85;
        x_4517 = vec3<f32>(x_4523, x_4523, x_4523);
      }
      let x_4525 : vec3<f32> = x_4517;
      let x_4526 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4525.x, x_4525.y, x_4525.z, x_4526.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4532 : vec4<f32> = u_xlat11;
    let x_4534 : i32 = u_xlati55;
    let x_4536 : vec4<f32> = x_2737.x_AdditionalLightsColor[x_4534];
    let x_4538 : vec3<f32> = (vec3<f32>(x_4532.x, x_4532.y, x_4532.z) * vec3<f32>(x_4536.x, x_4536.y, x_4536.z));
    let x_4539 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4538.x, x_4538.y, x_4538.z, x_4539.w);
    let x_4541 : f32 = u_xlat82;
    let x_4542 : f32 = u_xlat84;
    u_xlat55 = (x_4541 * x_4542);
    let x_4544 : vec4<f32> = u_xlat1;
    let x_4546 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4544.x, x_4544.y, x_4544.z), vec3<f32>(x_4546.x, x_4546.y, x_4546.z));
    let x_4549 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4549, 0.0f, 1.0f);
    let x_4551 : f32 = u_xlat55;
    let x_4552 : f32 = u_xlat82;
    u_xlat55 = (x_4551 * x_4552);
    let x_4554 : f32 = u_xlat55;
    let x_4556 : vec4<f32> = u_xlat11;
    let x_4558 : vec3<f32> = (vec3<f32>(x_4554, x_4554, x_4554) * vec3<f32>(x_4556.x, x_4556.y, x_4556.z));
    let x_4559 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4558.x, x_4558.y, x_4558.z, x_4559.w);
    let x_4561 : vec3<f32> = u_xlat35;
    let x_4562 : f32 = u_xlat83;
    let x_4565 : vec3<f32> = u_xlat2;
    u_xlat35 = ((x_4561 * vec3<f32>(x_4562, x_4562, x_4562)) + x_4565);
    let x_4567 : vec3<f32> = u_xlat35;
    let x_4568 : vec3<f32> = u_xlat35;
    u_xlat55 = dot(x_4567, x_4568);
    let x_4570 : f32 = u_xlat55;
    u_xlat55 = max(x_4570, 1.17549435e-38f);
    let x_4572 : f32 = u_xlat55;
    u_xlat55 = inverseSqrt(x_4572);
    let x_4574 : f32 = u_xlat55;
    let x_4576 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4574, x_4574, x_4574) * x_4576);
    let x_4578 : vec4<f32> = u_xlat1;
    let x_4580 : vec3<f32> = u_xlat35;
    u_xlat55 = dot(vec3<f32>(x_4578.x, x_4578.y, x_4578.z), x_4580);
    let x_4582 : f32 = u_xlat55;
    u_xlat55 = clamp(x_4582, 0.0f, 1.0f);
    let x_4584 : vec4<f32> = u_xlat10;
    let x_4586 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(vec3<f32>(x_4584.x, x_4584.y, x_4584.z), x_4586);
    let x_4588 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4588, 0.0f, 1.0f);
    let x_4590 : f32 = u_xlat55;
    let x_4591 : f32 = u_xlat55;
    u_xlat55 = (x_4590 * x_4591);
    let x_4593 : f32 = u_xlat55;
    let x_4595 : f32 = u_xlat9.x;
    u_xlat55 = ((x_4593 * x_4595) + 1.00001001358032226562f);
    let x_4598 : f32 = u_xlat82;
    let x_4599 : f32 = u_xlat82;
    u_xlat82 = (x_4598 * x_4599);
    let x_4601 : f32 = u_xlat55;
    let x_4602 : f32 = u_xlat55;
    u_xlat55 = (x_4601 * x_4602);
    let x_4604 : f32 = u_xlat82;
    u_xlat82 = max(x_4604, 0.10000000149011611938f);
    let x_4606 : f32 = u_xlat55;
    let x_4607 : f32 = u_xlat82;
    u_xlat55 = (x_4606 * x_4607);
    let x_4609 : f32 = u_xlat80;
    let x_4610 : f32 = u_xlat55;
    u_xlat55 = (x_4609 * x_4610);
    let x_4612 : f32 = u_xlat81;
    let x_4613 : f32 = u_xlat55;
    u_xlat55 = (x_4612 / x_4613);
    let x_4615 : vec4<f32> = u_xlat5;
    let x_4617 : f32 = u_xlat55;
    let x_4620 : vec4<f32> = u_xlat6;
    u_xlat35 = ((vec3<f32>(x_4615.x, x_4615.y, x_4615.z) * vec3<f32>(x_4617, x_4617, x_4617)) + vec3<f32>(x_4620.x, x_4620.y, x_4620.z));
    let x_4623 : vec3<f32> = u_xlat35;
    let x_4624 : vec4<f32> = u_xlat11;
    let x_4627 : vec4<f32> = u_xlat8;
    let x_4629 : vec3<f32> = ((x_4623 * vec3<f32>(x_4624.x, x_4624.y, x_4624.z)) + vec3<f32>(x_4627.x, x_4627.y, x_4627.z));
    let x_4630 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4629.x, x_4629.y, x_4629.z, x_4630.w);

    continuing {
      let x_4632 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4632 + bitcast<u32>(1i));
    }
  }
  let x_4634 : vec4<f32> = u_xlat4;
  let x_4636 : f32 = u_xlat26;
  let x_4639 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4634.x, x_4634.y, x_4634.z) * vec3<f32>(x_4636, x_4636, x_4636)) + vec3<f32>(x_4639.x, x_4639.y, x_4639.z));
  let x_4642 : vec4<f32> = u_xlat8;
  let x_4644 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4642.x, x_4642.y, x_4642.z) + x_4644);
  let x_4648 : f32 = u_xlat78;
  let x_4650 : vec3<f32> = u_xlat0;
  let x_4651 : vec3<f32> = (vec3<f32>(x_4648, x_4648, x_4648) * x_4650);
  let x_4652 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4651.x, x_4651.y, x_4651.z, x_4652.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


