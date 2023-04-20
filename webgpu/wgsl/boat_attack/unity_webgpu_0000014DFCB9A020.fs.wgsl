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

@group(0) @binding(8) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

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

var<private> u_xlatb80 : bool;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(4) var<uniform> x_744 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

@group(1) @binding(5) var<uniform> x_2055 : LightCookies;

@group(0) @binding(11) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2246 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2534 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb86 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

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

@group(0) @binding(12) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu82 : u32;

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
  var x_2140 : f32;
  var x_2151 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2670 : f32;
  var x_2680 : f32;
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
  var x_4251 : f32;
  var x_4264 : f32;
  var x_4312 : f32;
  var x_4323 : vec3<f32>;
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
  let x_626 : vec4<f32> = vs_TEXCOORD0;
  let x_629 : f32 = x_29.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_626.z, x_626.w), x_629);
  u_xlat3 = x_630;
  let x_635 : vec4<f32> = vs_TEXCOORD0;
  let x_638 : f32 = x_29.x_GlobalMipBias.x;
  let x_639 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_635.z, x_635.w), x_638);
  let x_640 : vec3<f32> = vec3<f32>(x_639.x, x_639.y, x_639.z);
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat3;
  let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_648 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat1;
  let x_652 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : f32 = u_xlat79;
  u_xlat79 = (x_655 + 0.5f);
  let x_657 : f32 = u_xlat79;
  let x_659 : vec4<f32> = u_xlat4;
  let x_661 : vec3<f32> = (vec3<f32>(x_657, x_657, x_657) * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = u_xlat3.w;
  u_xlat79 = max(x_665, 0.00009999999747378752f);
  let x_668 : vec4<f32> = u_xlat3;
  let x_670 : f32 = u_xlat79;
  let x_672 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) / vec3<f32>(x_670, x_670, x_670));
  let x_673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_676 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_676) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_682 : f32 = u_xlat52;
  let x_683 : f32 = u_xlat79;
  u_xlat80 = (x_682 + -(x_683));
  let x_686 : f32 = u_xlat79;
  let x_688 : vec4<f32> = u_xlat5;
  let x_690 : vec3<f32> = (vec3<f32>(x_686, x_686, x_686) * vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat5;
  let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_698 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec3<f32> = u_xlat0;
  let x_702 : vec4<f32> = u_xlat5;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.x, x_700.x) * vec3<f32>(x_702.x, x_702.y, x_702.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_708 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : f32 = u_xlat52;
  u_xlat0.x = (-(x_710) + 1.0f);
  let x_715 : f32 = u_xlat0.x;
  let x_717 : f32 = u_xlat0.x;
  u_xlat52 = (x_715 * x_717);
  let x_719 : f32 = u_xlat52;
  u_xlat52 = max(x_719, 0.0078125f);
  let x_722 : f32 = u_xlat52;
  let x_723 : f32 = u_xlat52;
  u_xlat79 = (x_722 * x_723);
  let x_725 : f32 = u_xlat80;
  u_xlat80 = (x_725 + 1.0f);
  let x_727 : f32 = u_xlat80;
  u_xlat80 = clamp(x_727, 0.0f, 1.0f);
  let x_730 : f32 = u_xlat52;
  u_xlat81 = ((x_730 * 4.0f) + 2.0f);
  let x_734 : f32 = u_xlat26;
  u_xlat26 = min(x_734, 1.0f);
  let x_746 : f32 = x_744.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_746);
  let x_748 : bool = u_xlatb82;
  if (x_748) {
    let x_752 : f32 = x_744.x_MainLightShadowParams.y;
    u_xlatb82 = (x_752 == 1.0f);
    let x_754 : bool = u_xlatb82;
    if (x_754) {
      let x_758 : vec4<f32> = vs_TEXCOORD8;
      let x_761 : vec4<f32> = x_744.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_758.x, x_758.y, x_758.x, x_758.y) + x_761);
      let x_765 : vec4<f32> = u_xlat6;
      let x_766 : vec2<f32> = vec2<f32>(x_765.x, x_765.y);
      let x_769 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_766.x, x_766.y, x_769);
      let x_781 : vec3<f32> = txVec0;
      let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
      u_xlat7.x = x_783;
      let x_786 : vec4<f32> = u_xlat6;
      let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
      let x_789 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_787.x, x_787.y, x_789);
      let x_796 : vec3<f32> = txVec1;
      let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_796.xy, x_796.z);
      u_xlat7.y = x_798;
      let x_800 : vec4<f32> = vs_TEXCOORD8;
      let x_803 : vec4<f32> = x_744.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_800.x, x_800.y, x_800.x, x_800.y) + x_803);
      let x_806 : vec4<f32> = u_xlat6;
      let x_807 : vec2<f32> = vec2<f32>(x_806.x, x_806.y);
      let x_809 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_807.x, x_807.y, x_809);
      let x_816 : vec3<f32> = txVec2;
      let x_818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_816.xy, x_816.z);
      u_xlat7.z = x_818;
      let x_821 : vec4<f32> = u_xlat6;
      let x_822 : vec2<f32> = vec2<f32>(x_821.z, x_821.w);
      let x_824 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_822.x, x_822.y, x_824);
      let x_831 : vec3<f32> = txVec3;
      let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_831.xy, x_831.z);
      u_xlat7.w = x_833;
      let x_836 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_836, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_843 : f32 = x_744.x_MainLightShadowParams.y;
      u_xlatb83 = (x_843 == 2.0f);
      let x_845 : bool = u_xlatb83;
      if (x_845) {
        let x_848 : vec4<f32> = vs_TEXCOORD8;
        let x_851 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_854 : vec2<f32> = ((vec2<f32>(x_848.x, x_848.y) * vec2<f32>(x_851.z, x_851.w)) + vec2<f32>(0.5f, 0.5f));
        let x_855 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat6;
        let x_859 : vec2<f32> = floor(vec2<f32>(x_857.x, x_857.y));
        let x_860 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_864 : vec4<f32> = vs_TEXCOORD8;
        let x_867 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_870 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_864.x, x_864.y) * vec2<f32>(x_867.z, x_867.w)) + -(vec2<f32>(x_870.x, x_870.y)));
        let x_874 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_874.x, x_874.x, x_874.y, x_874.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_878 : vec4<f32> = u_xlat7;
        let x_880 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_878.x, x_878.x, x_878.z, x_878.z) * vec4<f32>(x_880.x, x_880.x, x_880.z, x_880.z));
        let x_883 : vec4<f32> = u_xlat8;
        let x_887 : vec2<f32> = (vec2<f32>(x_883.y, x_883.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_888 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_890 : vec4<f32> = u_xlat8;
        let x_893 : vec2<f32> = u_xlat58;
        let x_895 : vec2<f32> = ((vec2<f32>(x_890.x, x_890.z) * vec2<f32>(0.5f, 0.5f)) + -(x_893));
        let x_896 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_899 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_899) + vec2<f32>(1.0f, 1.0f));
        let x_903 : vec2<f32> = u_xlat58;
        let x_905 : vec2<f32> = min(x_903, vec2<f32>(0.0f, 0.0f));
        let x_906 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_908 : vec4<f32> = u_xlat9;
        let x_911 : vec4<f32> = u_xlat9;
        let x_914 : vec2<f32> = u_xlat60;
        let x_915 : vec2<f32> = ((-(vec2<f32>(x_908.x, x_908.y)) * vec2<f32>(x_911.x, x_911.y)) + x_914);
        let x_916 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_918, vec2<f32>(0.0f, 0.0f));
        let x_920 : vec2<f32> = u_xlat58;
        let x_922 : vec2<f32> = u_xlat58;
        let x_924 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_920) * x_922) + vec2<f32>(x_924.y, x_924.w));
        let x_927 : vec4<f32> = u_xlat9;
        let x_929 : vec2<f32> = (vec2<f32>(x_927.x, x_927.y) + vec2<f32>(1.0f, 1.0f));
        let x_930 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_929.x, x_929.y, x_930.z, x_930.w);
        let x_932 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_932 + vec2<f32>(1.0f, 1.0f));
        let x_934 : vec4<f32> = u_xlat8;
        let x_938 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_939 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
        let x_941 : vec2<f32> = u_xlat60;
        let x_942 : vec2<f32> = (x_941 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_943 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat9;
        let x_947 : vec2<f32> = (vec2<f32>(x_945.x, x_945.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_948 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_947.x, x_947.y, x_948.z, x_948.w);
        let x_950 : vec2<f32> = u_xlat58;
        let x_951 : vec2<f32> = (x_950 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_952 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_954.y, x_954.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_958 : f32 = u_xlat9.x;
        u_xlat10.z = x_958;
        let x_961 : f32 = u_xlat58.x;
        u_xlat10.w = x_961;
        let x_964 : f32 = u_xlat11.x;
        u_xlat8.z = x_964;
        let x_967 : f32 = u_xlat7.x;
        u_xlat8.w = x_967;
        let x_969 : vec4<f32> = u_xlat8;
        let x_971 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_969.z, x_969.w, x_969.x, x_969.z) + vec4<f32>(x_971.z, x_971.w, x_971.x, x_971.z));
        let x_975 : f32 = u_xlat10.y;
        u_xlat9.z = x_975;
        let x_978 : f32 = u_xlat58.y;
        u_xlat9.w = x_978;
        let x_981 : f32 = u_xlat8.y;
        u_xlat11.z = x_981;
        let x_984 : f32 = u_xlat7.z;
        u_xlat11.w = x_984;
        let x_986 : vec4<f32> = u_xlat9;
        let x_988 : vec4<f32> = u_xlat11;
        let x_990 : vec3<f32> = (vec3<f32>(x_986.z, x_986.y, x_986.w) + vec3<f32>(x_988.z, x_988.y, x_988.w));
        let x_991 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
        let x_993 : vec4<f32> = u_xlat8;
        let x_995 : vec4<f32> = u_xlat12;
        let x_997 : vec3<f32> = (vec3<f32>(x_993.x, x_993.z, x_993.w) / vec3<f32>(x_995.z, x_995.w, x_995.y));
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
        let x_1000 : vec4<f32> = u_xlat8;
        let x_1005 : vec3<f32> = (vec3<f32>(x_1000.x, x_1000.y, x_1000.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1006 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat11;
        let x_1010 : vec4<f32> = u_xlat7;
        let x_1012 : vec3<f32> = (vec3<f32>(x_1008.z, x_1008.y, x_1008.w) / vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
        let x_1013 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat9;
        let x_1017 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1018 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat8;
        let x_1023 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1025 : vec3<f32> = (vec3<f32>(x_1020.y, x_1020.x, x_1020.z) * vec3<f32>(x_1023.x, x_1023.x, x_1023.x));
        let x_1026 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat9;
        let x_1031 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1033 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(x_1031.y, x_1031.y, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
        let x_1037 : f32 = u_xlat9.x;
        u_xlat8.w = x_1037;
        let x_1039 : vec4<f32> = u_xlat6;
        let x_1042 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y) * vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y)) + vec4<f32>(x_1045.y, x_1045.w, x_1045.x, x_1045.w));
        let x_1048 : vec4<f32> = u_xlat6;
        let x_1051 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.x, x_1051.y)) + vec2<f32>(x_1054.z, x_1054.w));
        let x_1058 : f32 = u_xlat8.y;
        u_xlat9.w = x_1058;
        let x_1060 : vec4<f32> = u_xlat9;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.y, x_1060.z);
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1062.x, x_1061.x, x_1062.z, x_1061.y);
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat6;
        let x_1076 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.w, x_1079.y, x_1079.w, x_1079.z));
        let x_1082 : vec4<f32> = u_xlat6;
        let x_1085 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y) * vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y)) + vec4<f32>(x_1088.x, x_1088.w, x_1088.z, x_1088.w));
        let x_1091 : vec4<f32> = u_xlat7;
        let x_1093 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1091.x, x_1091.x, x_1091.x, x_1091.y) * vec4<f32>(x_1093.z, x_1093.w, x_1093.y, x_1093.z));
        let x_1097 : vec4<f32> = u_xlat7;
        let x_1099 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1097.y, x_1097.y, x_1097.z, x_1097.z) * x_1099);
        let x_1103 : f32 = u_xlat7.z;
        let x_1105 : f32 = u_xlat12.y;
        u_xlat83 = (x_1103 * x_1105);
        let x_1108 : vec4<f32> = u_xlat10;
        let x_1109 : vec2<f32> = vec2<f32>(x_1108.x, x_1108.y);
        let x_1111 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1109.x, x_1109.y, x_1111);
        let x_1118 : vec3<f32> = txVec4;
        let x_1120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1118.xy, x_1118.z);
        u_xlat6.x = x_1120;
        let x_1123 : vec4<f32> = u_xlat10;
        let x_1124 : vec2<f32> = vec2<f32>(x_1123.z, x_1123.w);
        let x_1126 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1124.x, x_1124.y, x_1126);
        let x_1134 : vec3<f32> = txVec5;
        let x_1136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1134.xy, x_1134.z);
        u_xlat32 = x_1136;
        let x_1137 : f32 = u_xlat32;
        let x_1139 : f32 = u_xlat13.y;
        u_xlat32 = (x_1137 * x_1139);
        let x_1142 : f32 = u_xlat13.x;
        let x_1144 : f32 = u_xlat6.x;
        let x_1146 : f32 = u_xlat32;
        u_xlat6.x = ((x_1142 * x_1144) + x_1146);
        let x_1150 : vec2<f32> = u_xlat58;
        let x_1152 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1150.x, x_1150.y, x_1152);
        let x_1159 : vec3<f32> = txVec6;
        let x_1161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1159.xy, x_1159.z);
        u_xlat32 = x_1161;
        let x_1163 : f32 = u_xlat13.z;
        let x_1164 : f32 = u_xlat32;
        let x_1167 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1163 * x_1164) + x_1167);
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1172 : vec2<f32> = vec2<f32>(x_1171.x, x_1171.y);
        let x_1174 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1172.x, x_1172.y, x_1174);
        let x_1181 : vec3<f32> = txVec7;
        let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1181.xy, x_1181.z);
        u_xlat32 = x_1183;
        let x_1185 : f32 = u_xlat13.w;
        let x_1186 : f32 = u_xlat32;
        let x_1189 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1185 * x_1186) + x_1189);
        let x_1193 : vec4<f32> = u_xlat11;
        let x_1194 : vec2<f32> = vec2<f32>(x_1193.x, x_1193.y);
        let x_1196 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec8;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1203.xy, x_1203.z);
        u_xlat32 = x_1205;
        let x_1207 : f32 = u_xlat14.x;
        let x_1208 : f32 = u_xlat32;
        let x_1211 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1207 * x_1208) + x_1211);
        let x_1215 : vec4<f32> = u_xlat11;
        let x_1216 : vec2<f32> = vec2<f32>(x_1215.z, x_1215.w);
        let x_1218 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1216.x, x_1216.y, x_1218);
        let x_1225 : vec3<f32> = txVec9;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
        u_xlat32 = x_1227;
        let x_1229 : f32 = u_xlat14.y;
        let x_1230 : f32 = u_xlat32;
        let x_1233 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1229 * x_1230) + x_1233);
        let x_1237 : vec4<f32> = u_xlat9;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.z, x_1237.w);
        let x_1240 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec10;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
        u_xlat32 = x_1249;
        let x_1251 : f32 = u_xlat14.z;
        let x_1252 : f32 = u_xlat32;
        let x_1255 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1251 * x_1252) + x_1255);
        let x_1259 : vec4<f32> = u_xlat8;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.x, x_1259.y);
        let x_1262 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec11;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1269.xy, x_1269.z);
        u_xlat32 = x_1271;
        let x_1273 : f32 = u_xlat14.w;
        let x_1274 : f32 = u_xlat32;
        let x_1277 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1273 * x_1274) + x_1277);
        let x_1281 : vec4<f32> = u_xlat8;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.z, x_1281.w);
        let x_1284 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec12;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1291.xy, x_1291.z);
        u_xlat32 = x_1293;
        let x_1294 : f32 = u_xlat83;
        let x_1295 : f32 = u_xlat32;
        let x_1298 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1294 * x_1295) + x_1298);
      } else {
        let x_1301 : vec4<f32> = vs_TEXCOORD8;
        let x_1304 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.z, x_1304.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1308 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1310 : vec4<f32> = u_xlat6;
        let x_1312 : vec2<f32> = floor(vec2<f32>(x_1310.x, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1315 : vec4<f32> = vs_TEXCOORD8;
        let x_1318 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1315.x, x_1315.y) * vec2<f32>(x_1318.z, x_1318.w)) + -(vec2<f32>(x_1321.x, x_1321.y)));
        let x_1325 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1325.x, x_1325.x, x_1325.y, x_1325.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1330 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1328.x, x_1328.x, x_1328.z, x_1328.z) * vec4<f32>(x_1330.x, x_1330.x, x_1330.z, x_1330.z));
        let x_1333 : vec4<f32> = u_xlat8;
        let x_1337 : vec2<f32> = (vec2<f32>(x_1333.y, x_1333.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1338.x, x_1337.x, x_1338.z, x_1337.y);
        let x_1340 : vec4<f32> = u_xlat8;
        let x_1343 : vec2<f32> = u_xlat58;
        let x_1345 : vec2<f32> = ((vec2<f32>(x_1340.x, x_1340.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1343));
        let x_1346 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1345.x, x_1346.y, x_1345.y, x_1346.w);
        let x_1348 : vec2<f32> = u_xlat58;
        let x_1350 : vec2<f32> = (-(x_1348) + vec2<f32>(1.0f, 1.0f));
        let x_1351 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1353, vec2<f32>(0.0f, 0.0f));
        let x_1355 : vec2<f32> = u_xlat60;
        let x_1357 : vec2<f32> = u_xlat60;
        let x_1359 : vec4<f32> = u_xlat8;
        let x_1361 : vec2<f32> = ((-(x_1355) * x_1357) + vec2<f32>(x_1359.x, x_1359.y));
        let x_1362 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1361.x, x_1361.y, x_1362.z, x_1362.w);
        let x_1364 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1364, vec2<f32>(0.0f, 0.0f));
        let x_1367 : vec2<f32> = u_xlat60;
        let x_1369 : vec2<f32> = u_xlat60;
        let x_1371 : vec4<f32> = u_xlat7;
        let x_1373 : vec2<f32> = ((-(x_1367) * x_1369) + vec2<f32>(x_1371.y, x_1371.w));
        let x_1374 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1373.x, x_1374.y, x_1373.y);
        let x_1376 : vec4<f32> = u_xlat8;
        let x_1379 : vec2<f32> = (vec2<f32>(x_1376.x, x_1376.y) + vec2<f32>(2.0f, 2.0f));
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : vec3<f32> = u_xlat33;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1382.x, x_1382.z) + vec2<f32>(2.0f, 2.0f));
        let x_1385 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1385.x, x_1384.x, x_1385.z, x_1384.y);
        let x_1388 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1388 * 0.08163200318813323975f);
        let x_1392 : vec4<f32> = u_xlat7;
        let x_1395 : vec3<f32> = (vec3<f32>(x_1392.z, x_1392.x, x_1392.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1396 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat8;
        let x_1401 : vec2<f32> = (vec2<f32>(x_1398.x, x_1398.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1402 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1402.w);
        let x_1405 : f32 = u_xlat11.y;
        u_xlat10.x = x_1405;
        let x_1407 : vec2<f32> = u_xlat58;
        let x_1414 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1415 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1415.x, x_1414.x, x_1415.z, x_1414.y);
        let x_1417 : vec2<f32> = u_xlat58;
        let x_1421 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1421.x, x_1422.y, x_1421.y, x_1422.w);
        let x_1425 : f32 = u_xlat7.x;
        u_xlat8.y = x_1425;
        let x_1428 : f32 = u_xlat9.y;
        u_xlat8.w = x_1428;
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1431 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1430 + x_1431);
        let x_1433 : vec2<f32> = u_xlat58;
        let x_1436 : vec2<f32> = ((vec2<f32>(x_1433.y, x_1433.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1437 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1437.x, x_1436.x, x_1437.z, x_1436.y);
        let x_1439 : vec2<f32> = u_xlat58;
        let x_1442 : vec2<f32> = ((vec2<f32>(x_1439.y, x_1439.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1443 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1442.x, x_1443.y, x_1442.y, x_1443.w);
        let x_1446 : f32 = u_xlat7.y;
        u_xlat9.y = x_1446;
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1449 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1448 + x_1449);
        let x_1451 : vec4<f32> = u_xlat8;
        let x_1452 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1451 / x_1452);
        let x_1454 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1454 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1460 : vec4<f32> = u_xlat9;
        let x_1461 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1460 / x_1461);
        let x_1463 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1463 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1465 : vec4<f32> = u_xlat8;
        let x_1468 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1465.w, x_1465.x, x_1465.y, x_1465.z) * vec4<f32>(x_1468.x, x_1468.x, x_1468.x, x_1468.x));
        let x_1471 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1471.x, x_1471.w, x_1471.y, x_1471.z) * vec4<f32>(x_1474.y, x_1474.y, x_1474.y, x_1474.y));
        let x_1477 : vec4<f32> = u_xlat8;
        let x_1478 : vec3<f32> = vec3<f32>(x_1477.y, x_1477.z, x_1477.w);
        let x_1479 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1478.x, x_1479.y, x_1478.y, x_1478.z);
        let x_1482 : f32 = u_xlat9.x;
        u_xlat11.y = x_1482;
        let x_1484 : vec4<f32> = u_xlat6;
        let x_1487 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1490 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y) * vec4<f32>(x_1487.x, x_1487.y, x_1487.x, x_1487.y)) + vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1490.y));
        let x_1493 : vec4<f32> = u_xlat6;
        let x_1496 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1499 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1499.w, x_1499.y));
        let x_1503 : f32 = u_xlat11.y;
        u_xlat8.y = x_1503;
        let x_1506 : f32 = u_xlat9.z;
        u_xlat11.y = x_1506;
        let x_1508 : vec4<f32> = u_xlat6;
        let x_1511 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1514 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1508.x, x_1508.y, x_1508.x, x_1508.y) * vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y)) + vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1514.y));
        let x_1517 : vec4<f32> = u_xlat6;
        let x_1520 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat11;
        let x_1525 : vec2<f32> = ((vec2<f32>(x_1517.x, x_1517.y) * vec2<f32>(x_1520.x, x_1520.y)) + vec2<f32>(x_1523.w, x_1523.y));
        let x_1526 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
        let x_1529 : f32 = u_xlat11.y;
        u_xlat8.z = x_1529;
        let x_1532 : vec4<f32> = u_xlat6;
        let x_1535 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1532.x, x_1532.y, x_1532.x, x_1532.y) * vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y)) + vec4<f32>(x_1538.x, x_1538.y, x_1538.x, x_1538.z));
        let x_1542 : f32 = u_xlat9.w;
        u_xlat11.y = x_1542;
        let x_1545 : vec4<f32> = u_xlat6;
        let x_1548 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1545.x, x_1545.y, x_1545.x, x_1545.y) * vec4<f32>(x_1548.x, x_1548.y, x_1548.x, x_1548.y)) + vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1551.y));
        let x_1555 : vec4<f32> = u_xlat6;
        let x_1558 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.w, x_1561.y));
        let x_1565 : f32 = u_xlat11.y;
        u_xlat8.w = x_1565;
        let x_1568 : vec4<f32> = u_xlat6;
        let x_1571 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1574 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1568.x, x_1568.y) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.x, x_1574.w));
        let x_1577 : vec4<f32> = u_xlat11;
        let x_1578 : vec3<f32> = vec3<f32>(x_1577.x, x_1577.z, x_1577.w);
        let x_1579 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1578.x, x_1579.y, x_1578.y, x_1578.z);
        let x_1581 : vec4<f32> = u_xlat6;
        let x_1584 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1587 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.y) * vec4<f32>(x_1584.x, x_1584.y, x_1584.x, x_1584.y)) + vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1587.y));
        let x_1591 : vec4<f32> = u_xlat6;
        let x_1594 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1591.x, x_1591.y) * vec2<f32>(x_1594.x, x_1594.y)) + vec2<f32>(x_1597.w, x_1597.y));
        let x_1601 : f32 = u_xlat8.x;
        u_xlat9.x = x_1601;
        let x_1603 : vec4<f32> = u_xlat6;
        let x_1606 : vec4<f32> = x_744.x_MainLightShadowmapSize;
        let x_1609 : vec4<f32> = u_xlat9;
        let x_1611 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(x_1606.x, x_1606.y)) + vec2<f32>(x_1609.x, x_1609.y));
        let x_1612 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1617 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1615.x, x_1615.x, x_1615.x, x_1615.x) * x_1617);
        let x_1620 : vec4<f32> = u_xlat7;
        let x_1622 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1620.y, x_1620.y, x_1620.y, x_1620.y) * x_1622);
        let x_1625 : vec4<f32> = u_xlat7;
        let x_1627 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1625.z, x_1625.z, x_1625.z, x_1625.z) * x_1627);
        let x_1629 : vec4<f32> = u_xlat7;
        let x_1631 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1629.w, x_1629.w, x_1629.w, x_1629.w) * x_1631);
        let x_1634 : vec4<f32> = u_xlat12;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
        let x_1637 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec13;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat83 = x_1646;
        let x_1648 : vec4<f32> = u_xlat12;
        let x_1649 : vec2<f32> = vec2<f32>(x_1648.z, x_1648.w);
        let x_1651 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
        let x_1658 : vec3<f32> = txVec14;
        let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1658.xy, x_1658.z);
        u_xlat8.x = x_1660;
        let x_1663 : f32 = u_xlat8.x;
        let x_1665 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1663 * x_1665);
        let x_1669 : f32 = u_xlat17.x;
        let x_1670 : f32 = u_xlat83;
        let x_1673 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1669 * x_1670) + x_1673);
        let x_1676 : vec2<f32> = u_xlat58;
        let x_1678 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec15;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
        u_xlat58.x = x_1687;
        let x_1690 : f32 = u_xlat17.z;
        let x_1692 : f32 = u_xlat58.x;
        let x_1694 : f32 = u_xlat83;
        u_xlat83 = ((x_1690 * x_1692) + x_1694);
        let x_1697 : vec4<f32> = u_xlat15;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.x, x_1697.y);
        let x_1700 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec16;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1707.xy, x_1707.z);
        u_xlat58.x = x_1709;
        let x_1712 : f32 = u_xlat17.w;
        let x_1714 : f32 = u_xlat58.x;
        let x_1716 : f32 = u_xlat83;
        u_xlat83 = ((x_1712 * x_1714) + x_1716);
        let x_1719 : vec4<f32> = u_xlat13;
        let x_1720 : vec2<f32> = vec2<f32>(x_1719.x, x_1719.y);
        let x_1722 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec17;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1729.xy, x_1729.z);
        u_xlat58.x = x_1731;
        let x_1734 : f32 = u_xlat18.x;
        let x_1736 : f32 = u_xlat58.x;
        let x_1738 : f32 = u_xlat83;
        u_xlat83 = ((x_1734 * x_1736) + x_1738);
        let x_1741 : vec4<f32> = u_xlat13;
        let x_1742 : vec2<f32> = vec2<f32>(x_1741.z, x_1741.w);
        let x_1744 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec18;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1751.xy, x_1751.z);
        u_xlat58.x = x_1753;
        let x_1756 : f32 = u_xlat18.y;
        let x_1758 : f32 = u_xlat58.x;
        let x_1760 : f32 = u_xlat83;
        u_xlat83 = ((x_1756 * x_1758) + x_1760);
        let x_1763 : vec4<f32> = u_xlat14;
        let x_1764 : vec2<f32> = vec2<f32>(x_1763.x, x_1763.y);
        let x_1766 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1764.x, x_1764.y, x_1766);
        let x_1773 : vec3<f32> = txVec19;
        let x_1775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1773.xy, x_1773.z);
        u_xlat58.x = x_1775;
        let x_1778 : f32 = u_xlat18.z;
        let x_1780 : f32 = u_xlat58.x;
        let x_1782 : f32 = u_xlat83;
        u_xlat83 = ((x_1778 * x_1780) + x_1782);
        let x_1785 : vec4<f32> = u_xlat15;
        let x_1786 : vec2<f32> = vec2<f32>(x_1785.z, x_1785.w);
        let x_1788 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1786.x, x_1786.y, x_1788);
        let x_1795 : vec3<f32> = txVec20;
        let x_1797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1795.xy, x_1795.z);
        u_xlat58.x = x_1797;
        let x_1800 : f32 = u_xlat18.w;
        let x_1802 : f32 = u_xlat58.x;
        let x_1804 : f32 = u_xlat83;
        u_xlat83 = ((x_1800 * x_1802) + x_1804);
        let x_1807 : vec4<f32> = u_xlat16;
        let x_1808 : vec2<f32> = vec2<f32>(x_1807.x, x_1807.y);
        let x_1810 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1808.x, x_1808.y, x_1810);
        let x_1817 : vec3<f32> = txVec21;
        let x_1819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1817.xy, x_1817.z);
        u_xlat58.x = x_1819;
        let x_1822 : f32 = u_xlat19.x;
        let x_1824 : f32 = u_xlat58.x;
        let x_1826 : f32 = u_xlat83;
        u_xlat83 = ((x_1822 * x_1824) + x_1826);
        let x_1829 : vec4<f32> = u_xlat16;
        let x_1830 : vec2<f32> = vec2<f32>(x_1829.z, x_1829.w);
        let x_1832 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
        let x_1839 : vec3<f32> = txVec22;
        let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1839.xy, x_1839.z);
        u_xlat58.x = x_1841;
        let x_1844 : f32 = u_xlat19.y;
        let x_1846 : f32 = u_xlat58.x;
        let x_1848 : f32 = u_xlat83;
        u_xlat83 = ((x_1844 * x_1846) + x_1848);
        let x_1851 : vec2<f32> = u_xlat34;
        let x_1853 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1851.x, x_1851.y, x_1853);
        let x_1860 : vec3<f32> = txVec23;
        let x_1862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1860.xy, x_1860.z);
        u_xlat58.x = x_1862;
        let x_1865 : f32 = u_xlat19.z;
        let x_1867 : f32 = u_xlat58.x;
        let x_1869 : f32 = u_xlat83;
        u_xlat83 = ((x_1865 * x_1867) + x_1869);
        let x_1872 : vec2<f32> = u_xlat66;
        let x_1874 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1872.x, x_1872.y, x_1874);
        let x_1881 : vec3<f32> = txVec24;
        let x_1883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1881.xy, x_1881.z);
        u_xlat58.x = x_1883;
        let x_1886 : f32 = u_xlat19.w;
        let x_1888 : f32 = u_xlat58.x;
        let x_1890 : f32 = u_xlat83;
        u_xlat83 = ((x_1886 * x_1888) + x_1890);
        let x_1893 : vec4<f32> = u_xlat11;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec25;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1903.xy, x_1903.z);
        u_xlat58.x = x_1905;
        let x_1908 : f32 = u_xlat7.x;
        let x_1910 : f32 = u_xlat58.x;
        let x_1912 : f32 = u_xlat83;
        u_xlat83 = ((x_1908 * x_1910) + x_1912);
        let x_1915 : vec4<f32> = u_xlat11;
        let x_1916 : vec2<f32> = vec2<f32>(x_1915.z, x_1915.w);
        let x_1918 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1925 : vec3<f32> = txVec26;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1925.xy, x_1925.z);
        u_xlat58.x = x_1927;
        let x_1930 : f32 = u_xlat7.y;
        let x_1932 : f32 = u_xlat58.x;
        let x_1934 : f32 = u_xlat83;
        u_xlat83 = ((x_1930 * x_1932) + x_1934);
        let x_1937 : vec2<f32> = u_xlat61;
        let x_1939 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1937.x, x_1937.y, x_1939);
        let x_1946 : vec3<f32> = txVec27;
        let x_1948 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1946.xy, x_1946.z);
        u_xlat58.x = x_1948;
        let x_1951 : f32 = u_xlat7.z;
        let x_1953 : f32 = u_xlat58.x;
        let x_1955 : f32 = u_xlat83;
        u_xlat83 = ((x_1951 * x_1953) + x_1955);
        let x_1958 : vec4<f32> = u_xlat6;
        let x_1959 : vec2<f32> = vec2<f32>(x_1958.x, x_1958.y);
        let x_1961 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
        let x_1968 : vec3<f32> = txVec28;
        let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1968.xy, x_1968.z);
        u_xlat6.x = x_1970;
        let x_1973 : f32 = u_xlat7.w;
        let x_1975 : f32 = u_xlat6.x;
        let x_1977 : f32 = u_xlat83;
        u_xlat82 = ((x_1973 * x_1975) + x_1977);
      }
    }
  } else {
    let x_1981 : vec4<f32> = vs_TEXCOORD8;
    let x_1982 : vec2<f32> = vec2<f32>(x_1981.x, x_1981.y);
    let x_1984 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1982.x, x_1982.y, x_1984);
    let x_1991 : vec3<f32> = txVec29;
    let x_1993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1991.xy, x_1991.z);
    u_xlat82 = x_1993;
  }
  let x_1995 : f32 = x_744.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1995) + 1.0f);
  let x_1998 : f32 = u_xlat82;
  let x_2000 : f32 = x_744.x_MainLightShadowParams.x;
  let x_2002 : f32 = u_xlat83;
  u_xlat82 = ((x_1998 * x_2000) + x_2002);
  let x_2005 : f32 = vs_TEXCOORD8.z;
  u_xlatb83 = (0.0f >= x_2005);
  let x_2009 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (x_2009 >= 1.0f);
  let x_2011 : bool = u_xlatb83;
  let x_2012 : bool = u_xlatb6;
  u_xlatb83 = (x_2011 | x_2012);
  let x_2014 : bool = u_xlatb83;
  let x_2015 : f32 = u_xlat82;
  u_xlat82 = select(x_2015, 1.0f, x_2014);
  let x_2017 : vec3<f32> = vs_TEXCOORD7;
  let x_2019 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2021 : vec3<f32> = (x_2017 + -(x_2019));
  let x_2022 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
  let x_2024 : vec4<f32> = u_xlat6;
  let x_2026 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_2024.x, x_2024.y, x_2024.z), vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
  let x_2029 : f32 = u_xlat83;
  let x_2031 : f32 = x_744.x_MainLightShadowParams.z;
  let x_2034 : f32 = x_744.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_2029 * x_2031) + x_2034);
  let x_2038 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2038, 0.0f, 1.0f);
  let x_2041 : f32 = u_xlat82;
  u_xlat32 = (-(x_2041) + 1.0f);
  let x_2045 : f32 = u_xlat6.x;
  let x_2046 : f32 = u_xlat32;
  let x_2048 : f32 = u_xlat82;
  u_xlat82 = ((x_2045 * x_2046) + x_2048);
  let x_2057 : f32 = x_2055.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_2057 == -1.0f));
  let x_2059 : bool = u_xlatb6;
  if (x_2059) {
    let x_2062 : vec3<f32> = vs_TEXCOORD7;
    let x_2065 : vec4<f32> = x_2055.x_MainLightWorldToLight[1i];
    let x_2067 : vec2<f32> = (vec2<f32>(x_2062.y, x_2062.y) * vec2<f32>(x_2065.x, x_2065.y));
    let x_2068 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2067.x, x_2067.y, x_2068.z, x_2068.w);
    let x_2071 : vec4<f32> = x_2055.x_MainLightWorldToLight[0i];
    let x_2073 : vec3<f32> = vs_TEXCOORD7;
    let x_2076 : vec4<f32> = u_xlat6;
    let x_2078 : vec2<f32> = ((vec2<f32>(x_2071.x, x_2071.y) * vec2<f32>(x_2073.x, x_2073.x)) + vec2<f32>(x_2076.x, x_2076.y));
    let x_2079 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2078.x, x_2078.y, x_2079.z, x_2079.w);
    let x_2082 : vec4<f32> = x_2055.x_MainLightWorldToLight[2i];
    let x_2084 : vec3<f32> = vs_TEXCOORD7;
    let x_2087 : vec4<f32> = u_xlat6;
    let x_2089 : vec2<f32> = ((vec2<f32>(x_2082.x, x_2082.y) * vec2<f32>(x_2084.z, x_2084.z)) + vec2<f32>(x_2087.x, x_2087.y));
    let x_2090 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2089.x, x_2089.y, x_2090.z, x_2090.w);
    let x_2092 : vec4<f32> = u_xlat6;
    let x_2096 : vec4<f32> = x_2055.x_MainLightWorldToLight[3i];
    let x_2098 : vec2<f32> = (vec2<f32>(x_2092.x, x_2092.y) + vec2<f32>(x_2096.x, x_2096.y));
    let x_2099 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2098.x, x_2098.y, x_2099.z, x_2099.w);
    let x_2101 : vec4<f32> = u_xlat6;
    let x_2104 : vec2<f32> = ((vec2<f32>(x_2101.x, x_2101.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2105 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2104.x, x_2104.y, x_2105.z, x_2105.w);
    let x_2112 : vec4<f32> = u_xlat6;
    let x_2115 : f32 = x_29.x_GlobalMipBias.x;
    let x_2116 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2112.x, x_2112.y), x_2115);
    u_xlat6 = x_2116;
    let x_2121 : f32 = x_2055.x_MainLightCookieTextureFormat;
    let x_2123 : f32 = x_2055.x_MainLightCookieTextureFormat;
    let x_2125 : f32 = x_2055.x_MainLightCookieTextureFormat;
    let x_2127 : f32 = x_2055.x_MainLightCookieTextureFormat;
    let x_2128 : vec4<f32> = vec4<f32>(x_2121, x_2123, x_2125, x_2127);
    let x_2135 : vec4<bool> = (vec4<f32>(x_2128.x, x_2128.y, x_2128.z, x_2128.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2135.x, x_2135.y);
    let x_2139 : bool = u_xlatb7.y;
    if (x_2139) {
      let x_2144 : f32 = u_xlat6.w;
      x_2140 = x_2144;
    } else {
      let x_2147 : f32 = u_xlat6.x;
      x_2140 = x_2147;
    }
    let x_2148 : f32 = x_2140;
    u_xlat84 = x_2148;
    let x_2150 : bool = u_xlatb7.x;
    if (x_2150) {
      let x_2154 : vec4<f32> = u_xlat6;
      x_2151 = vec3<f32>(x_2154.x, x_2154.y, x_2154.z);
    } else {
      let x_2157 : f32 = u_xlat84;
      x_2151 = vec3<f32>(x_2157, x_2157, x_2157);
    }
    let x_2159 : vec3<f32> = x_2151;
    let x_2160 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2166 : vec4<f32> = u_xlat6;
  let x_2169 : vec4<f32> = x_29.x_MainLightColor;
  let x_2171 : vec3<f32> = (vec3<f32>(x_2166.x, x_2166.y, x_2166.z) * vec3<f32>(x_2169.x, x_2169.y, x_2169.z));
  let x_2172 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2174 : vec3<f32> = u_xlat2;
  let x_2176 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(x_2174), vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
  let x_2179 : f32 = u_xlat84;
  let x_2180 : f32 = u_xlat84;
  u_xlat84 = (x_2179 + x_2180);
  let x_2182 : vec4<f32> = u_xlat1;
  let x_2184 : f32 = u_xlat84;
  let x_2188 : vec3<f32> = u_xlat2;
  let x_2190 : vec3<f32> = ((vec3<f32>(x_2182.x, x_2182.y, x_2182.z) * -(vec3<f32>(x_2184, x_2184, x_2184))) + -(x_2188));
  let x_2191 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
  let x_2193 : vec4<f32> = u_xlat1;
  let x_2195 : vec3<f32> = u_xlat2;
  u_xlat84 = dot(vec3<f32>(x_2193.x, x_2193.y, x_2193.z), x_2195);
  let x_2197 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2197, 0.0f, 1.0f);
  let x_2199 : f32 = u_xlat84;
  u_xlat84 = (-(x_2199) + 1.0f);
  let x_2202 : f32 = u_xlat84;
  let x_2203 : f32 = u_xlat84;
  u_xlat84 = (x_2202 * x_2203);
  let x_2205 : f32 = u_xlat84;
  let x_2206 : f32 = u_xlat84;
  u_xlat84 = (x_2205 * x_2206);
  let x_2210 : f32 = u_xlat0.x;
  u_xlat85 = ((-(x_2210) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2217 : f32 = u_xlat0.x;
  let x_2218 : f32 = u_xlat85;
  u_xlat0.x = (x_2217 * x_2218);
  let x_2222 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2222 * 6.0f);
  let x_2234 : vec4<f32> = u_xlat7;
  let x_2237 : f32 = u_xlat0.x;
  let x_2238 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2234.x, x_2234.y, x_2234.z), x_2237);
  u_xlat7 = x_2238;
  let x_2240 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2240 + -1.0f);
  let x_2248 : f32 = x_2246.unity_SpecCube0_HDR.w;
  let x_2250 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2248 * x_2250) + 1.0f);
  let x_2255 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2255, 0.0f);
  let x_2259 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2259);
  let x_2263 : f32 = u_xlat0.x;
  let x_2265 : f32 = x_2246.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2263 * x_2265);
  let x_2269 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2269);
  let x_2273 : f32 = u_xlat0.x;
  let x_2275 : f32 = x_2246.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2273 * x_2275);
  let x_2278 : vec4<f32> = u_xlat7;
  let x_2280 : vec3<f32> = u_xlat0;
  let x_2282 : vec3<f32> = (vec3<f32>(x_2278.x, x_2278.y, x_2278.z) * vec3<f32>(x_2280.x, x_2280.x, x_2280.x));
  let x_2283 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
  let x_2285 : f32 = u_xlat52;
  let x_2287 : f32 = u_xlat52;
  let x_2291 : vec2<f32> = ((vec2<f32>(x_2285, x_2285) * vec2<f32>(x_2287, x_2287)) + vec2<f32>(-1.0f, 1.0f));
  let x_2292 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2291.x, x_2292.y, x_2291.y);
  let x_2295 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2295);
  let x_2297 : vec4<f32> = u_xlat5;
  let x_2300 : f32 = u_xlat80;
  let x_2302 : vec3<f32> = (-(vec3<f32>(x_2297.x, x_2297.y, x_2297.z)) + vec3<f32>(x_2300, x_2300, x_2300));
  let x_2303 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2302.x, x_2302.y, x_2302.z, x_2303.w);
  let x_2305 : f32 = u_xlat84;
  let x_2307 : vec4<f32> = u_xlat8;
  let x_2310 : vec4<f32> = u_xlat5;
  let x_2312 : vec3<f32> = ((vec3<f32>(x_2305, x_2305, x_2305) * vec3<f32>(x_2307.x, x_2307.y, x_2307.z)) + vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
  let x_2313 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2313.w);
  let x_2315 : f32 = u_xlat52;
  let x_2317 : vec4<f32> = u_xlat8;
  let x_2319 : vec3<f32> = (vec3<f32>(x_2315, x_2315, x_2315) * vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
  let x_2320 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
  let x_2322 : vec4<f32> = u_xlat7;
  let x_2324 : vec4<f32> = u_xlat8;
  let x_2326 : vec3<f32> = (vec3<f32>(x_2322.x, x_2322.y, x_2322.z) * vec3<f32>(x_2324.x, x_2324.y, x_2324.z));
  let x_2327 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
  let x_2329 : vec4<f32> = u_xlat3;
  let x_2331 : vec4<f32> = u_xlat4;
  let x_2334 : vec4<f32> = u_xlat7;
  let x_2336 : vec3<f32> = ((vec3<f32>(x_2329.x, x_2329.y, x_2329.z) * vec3<f32>(x_2331.x, x_2331.y, x_2331.z)) + vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
  let x_2337 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2336.x, x_2336.y, x_2336.z, x_2337.w);
  let x_2339 : f32 = u_xlat82;
  let x_2341 : f32 = x_2246.unity_LightData.z;
  u_xlat52 = (x_2339 * x_2341);
  let x_2343 : vec4<f32> = u_xlat1;
  let x_2346 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat80 = dot(vec3<f32>(x_2343.x, x_2343.y, x_2343.z), vec3<f32>(x_2346.x, x_2346.y, x_2346.z));
  let x_2349 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2349, 0.0f, 1.0f);
  let x_2351 : f32 = u_xlat52;
  let x_2352 : f32 = u_xlat80;
  u_xlat52 = (x_2351 * x_2352);
  let x_2354 : f32 = u_xlat52;
  let x_2356 : vec4<f32> = u_xlat6;
  let x_2358 : vec3<f32> = (vec3<f32>(x_2354, x_2354, x_2354) * vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
  let x_2359 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
  let x_2361 : vec3<f32> = u_xlat2;
  let x_2363 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2365 : vec3<f32> = (x_2361 + vec3<f32>(x_2363.x, x_2363.y, x_2363.z));
  let x_2366 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
  let x_2368 : vec4<f32> = u_xlat7;
  let x_2370 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2368.x, x_2368.y, x_2368.z), vec3<f32>(x_2370.x, x_2370.y, x_2370.z));
  let x_2373 : f32 = u_xlat52;
  u_xlat52 = max(x_2373, 1.17549435e-38f);
  let x_2376 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2376);
  let x_2378 : f32 = u_xlat52;
  let x_2380 : vec4<f32> = u_xlat7;
  let x_2382 : vec3<f32> = (vec3<f32>(x_2378, x_2378, x_2378) * vec3<f32>(x_2380.x, x_2380.y, x_2380.z));
  let x_2383 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2382.x, x_2382.y, x_2382.z, x_2383.w);
  let x_2385 : vec4<f32> = u_xlat1;
  let x_2387 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_2385.x, x_2385.y, x_2385.z), vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
  let x_2390 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2390, 0.0f, 1.0f);
  let x_2393 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2395 : vec4<f32> = u_xlat7;
  u_xlat80 = dot(vec3<f32>(x_2393.x, x_2393.y, x_2393.z), vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2398, 0.0f, 1.0f);
  let x_2400 : f32 = u_xlat52;
  let x_2401 : f32 = u_xlat52;
  u_xlat52 = (x_2400 * x_2401);
  let x_2403 : f32 = u_xlat52;
  let x_2405 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2403 * x_2405) + 1.00001001358032226562f);
  let x_2409 : f32 = u_xlat80;
  let x_2410 : f32 = u_xlat80;
  u_xlat80 = (x_2409 * x_2410);
  let x_2412 : f32 = u_xlat52;
  let x_2413 : f32 = u_xlat52;
  u_xlat52 = (x_2412 * x_2413);
  let x_2415 : f32 = u_xlat80;
  u_xlat80 = max(x_2415, 0.10000000149011611938f);
  let x_2418 : f32 = u_xlat52;
  let x_2419 : f32 = u_xlat80;
  u_xlat52 = (x_2418 * x_2419);
  let x_2421 : f32 = u_xlat81;
  let x_2422 : f32 = u_xlat52;
  u_xlat52 = (x_2421 * x_2422);
  let x_2424 : f32 = u_xlat79;
  let x_2425 : f32 = u_xlat52;
  u_xlat52 = (x_2424 / x_2425);
  let x_2427 : vec4<f32> = u_xlat5;
  let x_2429 : f32 = u_xlat52;
  let x_2432 : vec4<f32> = u_xlat4;
  let x_2434 : vec3<f32> = ((vec3<f32>(x_2427.x, x_2427.y, x_2427.z) * vec3<f32>(x_2429, x_2429, x_2429)) + vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
  let x_2435 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
  let x_2437 : vec4<f32> = u_xlat6;
  let x_2439 : vec4<f32> = u_xlat7;
  let x_2441 : vec3<f32> = (vec3<f32>(x_2437.x, x_2437.y, x_2437.z) * vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
  let x_2442 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
  let x_2445 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2447 : f32 = x_2246.unity_LightData.y;
  u_xlat52 = min(x_2445, x_2447);
  let x_2451 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2451));
  let x_2454 : f32 = u_xlat83;
  let x_2456 : f32 = x_744.x_AdditionalShadowFadeParams.x;
  let x_2459 : f32 = x_744.x_AdditionalShadowFadeParams.y;
  u_xlat80 = ((x_2454 * x_2456) + x_2459);
  let x_2461 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2461, 0.0f, 1.0f);
  let x_2464 : f32 = x_2055.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2466 : f32 = x_2055.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2468 : f32 = x_2055.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2470 : f32 = x_2055.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2471 : vec4<f32> = vec4<f32>(x_2464, x_2466, x_2468, x_2470);
  let x_2477 : vec4<bool> = (vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2471.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2477.x, x_2477.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2489 : u32 = u_xlatu_loop_1;
    let x_2490 : u32 = u_xlatu52;
    if ((x_2489 < x_2490)) {
    } else {
      break;
    }
    let x_2493 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2493 >> 2u);
    let x_2497 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2497 & 3u));
    let x_2500 : u32 = u_xlatu83;
    let x_2503 : vec4<f32> = x_2246.unity_LightIndices[bitcast<i32>(x_2500)];
    let x_2513 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2518 : vec4<u32> = indexable[x_2513];
    u_xlat83 = dot(x_2503, bitcast<vec4<f32>>(x_2518));
    let x_2522 : f32 = u_xlat83;
    u_xlati83 = i32(x_2522);
    let x_2524 : vec3<f32> = vs_TEXCOORD7;
    let x_2535 : i32 = u_xlati83;
    let x_2537 : vec4<f32> = x_2534.x_AdditionalLightsPosition[x_2535];
    let x_2540 : i32 = u_xlati83;
    let x_2542 : vec4<f32> = x_2534.x_AdditionalLightsPosition[x_2540];
    let x_2544 : vec3<f32> = ((-(x_2524) * vec3<f32>(x_2537.w, x_2537.w, x_2537.w)) + vec3<f32>(x_2542.x, x_2542.y, x_2542.z));
    let x_2545 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2545.w);
    let x_2547 : vec4<f32> = u_xlat9;
    let x_2549 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2547.x, x_2547.y, x_2547.z), vec3<f32>(x_2549.x, x_2549.y, x_2549.z));
    let x_2552 : f32 = u_xlat84;
    u_xlat84 = max(x_2552, 0.00006103515625f);
    let x_2555 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2555);
    let x_2557 : f32 = u_xlat59;
    let x_2559 : vec4<f32> = u_xlat9;
    let x_2561 : vec3<f32> = (vec3<f32>(x_2557, x_2557, x_2557) * vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
    let x_2562 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2561.x, x_2561.y, x_2561.z, x_2562.w);
    let x_2564 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2564);
    let x_2566 : f32 = u_xlat84;
    let x_2567 : i32 = u_xlati83;
    let x_2569 : f32 = x_2534.x_AdditionalLightsAttenuation[x_2567].x;
    u_xlat84 = (x_2566 * x_2569);
    let x_2571 : f32 = u_xlat84;
    let x_2573 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2571) * x_2573) + 1.0f);
    let x_2576 : f32 = u_xlat84;
    u_xlat84 = max(x_2576, 0.0f);
    let x_2578 : f32 = u_xlat84;
    let x_2579 : f32 = u_xlat84;
    u_xlat84 = (x_2578 * x_2579);
    let x_2581 : f32 = u_xlat84;
    let x_2582 : f32 = u_xlat85;
    u_xlat84 = (x_2581 * x_2582);
    let x_2584 : i32 = u_xlati83;
    let x_2586 : vec4<f32> = x_2534.x_AdditionalLightsSpotDir[x_2584];
    let x_2588 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2586.x, x_2586.y, x_2586.z), vec3<f32>(x_2588.x, x_2588.y, x_2588.z));
    let x_2591 : f32 = u_xlat85;
    let x_2592 : i32 = u_xlati83;
    let x_2594 : f32 = x_2534.x_AdditionalLightsAttenuation[x_2592].z;
    let x_2596 : i32 = u_xlati83;
    let x_2598 : f32 = x_2534.x_AdditionalLightsAttenuation[x_2596].w;
    u_xlat85 = ((x_2591 * x_2594) + x_2598);
    let x_2600 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2600, 0.0f, 1.0f);
    let x_2602 : f32 = u_xlat85;
    let x_2603 : f32 = u_xlat85;
    u_xlat85 = (x_2602 * x_2603);
    let x_2605 : f32 = u_xlat84;
    let x_2606 : f32 = u_xlat85;
    u_xlat84 = (x_2605 * x_2606);
    let x_2609 : i32 = u_xlati83;
    let x_2611 : f32 = x_744.x_AdditionalShadowParams[x_2609].w;
    u_xlati85 = i32(x_2611);
    let x_2614 : i32 = u_xlati85;
    u_xlatb86 = (x_2614 >= 0i);
    let x_2616 : bool = u_xlatb86;
    if (x_2616) {
      let x_2620 : i32 = u_xlati83;
      let x_2622 : f32 = x_744.x_AdditionalShadowParams[x_2620].z;
      u_xlatb86 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2622, x_2622, x_2622, x_2622))));
      let x_2626 : bool = u_xlatb86;
      if (x_2626) {
        let x_2631 : vec4<f32> = u_xlat10;
        let x_2634 : vec4<f32> = u_xlat10;
        let x_2637 : vec4<bool> = (abs(vec4<f32>(x_2631.z, x_2631.z, x_2631.y, x_2631.z)) >= abs(vec4<f32>(x_2634.x, x_2634.y, x_2634.x, x_2634.x)));
        let x_2639 : vec3<bool> = vec3<bool>(x_2637.x, x_2637.y, x_2637.z);
        let x_2640 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
        let x_2643 : bool = u_xlatb11.y;
        let x_2645 : bool = u_xlatb11.x;
        u_xlatb86 = (x_2643 & x_2645);
        let x_2647 : vec4<f32> = u_xlat10;
        let x_2650 : vec4<bool> = (-(vec4<f32>(x_2647.z, x_2647.y, x_2647.z, x_2647.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2651 : vec3<bool> = vec3<bool>(x_2650.x, x_2650.y, x_2650.w);
        let x_2652 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2651.x, x_2651.y, x_2652.z, x_2651.z);
        let x_2655 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2655);
        let x_2660 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2660);
        let x_2666 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2666);
        let x_2669 : bool = u_xlatb11.z;
        if (x_2669) {
          let x_2674 : f32 = u_xlat11.y;
          x_2670 = x_2674;
        } else {
          let x_2676 : f32 = u_xlat87;
          x_2670 = x_2676;
        }
        let x_2677 : f32 = x_2670;
        u_xlat87 = x_2677;
        let x_2679 : bool = u_xlatb86;
        if (x_2679) {
          let x_2684 : f32 = u_xlat11.x;
          x_2680 = x_2684;
        } else {
          let x_2686 : f32 = u_xlat87;
          x_2680 = x_2686;
        }
        let x_2687 : f32 = x_2680;
        u_xlat86 = x_2687;
        let x_2688 : i32 = u_xlati83;
        let x_2690 : f32 = x_744.x_AdditionalShadowParams[x_2688].w;
        u_xlat87 = trunc(x_2690);
        let x_2692 : f32 = u_xlat86;
        let x_2693 : f32 = u_xlat87;
        u_xlat86 = (x_2692 + x_2693);
        let x_2695 : f32 = u_xlat86;
        u_xlati85 = i32(x_2695);
      }
      let x_2697 : i32 = u_xlati85;
      u_xlati85 = (x_2697 << bitcast<u32>(2i));
      let x_2699 : vec3<f32> = vs_TEXCOORD7;
      let x_2701 : i32 = u_xlati85;
      let x_2704 : i32 = u_xlati85;
      let x_2708 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_2701 + 1i) / 4i)][((x_2704 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2699.y, x_2699.y, x_2699.y, x_2699.y) * x_2708);
      let x_2710 : i32 = u_xlati85;
      let x_2712 : i32 = u_xlati85;
      let x_2715 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[(x_2710 / 4i)][(x_2712 % 4i)];
      let x_2716 : vec3<f32> = vs_TEXCOORD7;
      let x_2719 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2715 * vec4<f32>(x_2716.x, x_2716.x, x_2716.x, x_2716.x)) + x_2719);
      let x_2721 : i32 = u_xlati85;
      let x_2724 : i32 = u_xlati85;
      let x_2728 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_2721 + 2i) / 4i)][((x_2724 + 2i) % 4i)];
      let x_2729 : vec3<f32> = vs_TEXCOORD7;
      let x_2732 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2728 * vec4<f32>(x_2729.z, x_2729.z, x_2729.z, x_2729.z)) + x_2732);
      let x_2734 : vec4<f32> = u_xlat11;
      let x_2735 : i32 = u_xlati85;
      let x_2738 : i32 = u_xlati85;
      let x_2742 : vec4<f32> = x_744.x_AdditionalLightsWorldToShadow[((x_2735 + 3i) / 4i)][((x_2738 + 3i) % 4i)];
      u_xlat11 = (x_2734 + x_2742);
      let x_2744 : vec4<f32> = u_xlat11;
      let x_2746 : vec4<f32> = u_xlat11;
      let x_2748 : vec3<f32> = (vec3<f32>(x_2744.x, x_2744.y, x_2744.z) / vec3<f32>(x_2746.w, x_2746.w, x_2746.w));
      let x_2749 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
      let x_2752 : i32 = u_xlati83;
      let x_2754 : f32 = x_744.x_AdditionalShadowParams[x_2752].y;
      u_xlatb85 = (0.0f < x_2754);
      let x_2756 : bool = u_xlatb85;
      if (x_2756) {
        let x_2759 : i32 = u_xlati83;
        let x_2761 : f32 = x_744.x_AdditionalShadowParams[x_2759].y;
        u_xlatb85 = (1.0f == x_2761);
        let x_2763 : bool = u_xlatb85;
        if (x_2763) {
          let x_2766 : vec4<f32> = u_xlat11;
          let x_2769 : vec4<f32> = x_744.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2766.x, x_2766.y, x_2766.x, x_2766.y) + x_2769);
          let x_2772 : vec4<f32> = u_xlat12;
          let x_2773 : vec2<f32> = vec2<f32>(x_2772.x, x_2772.y);
          let x_2775 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2773.x, x_2773.y, x_2775);
          let x_2783 : vec3<f32> = txVec30;
          let x_2785 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2783.xy, x_2783.z);
          u_xlat13.x = x_2785;
          let x_2788 : vec4<f32> = u_xlat12;
          let x_2789 : vec2<f32> = vec2<f32>(x_2788.z, x_2788.w);
          let x_2791 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2789.x, x_2789.y, x_2791);
          let x_2798 : vec3<f32> = txVec31;
          let x_2800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2798.xy, x_2798.z);
          u_xlat13.y = x_2800;
          let x_2802 : vec4<f32> = u_xlat11;
          let x_2805 : vec4<f32> = x_744.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2802.x, x_2802.y, x_2802.x, x_2802.y) + x_2805);
          let x_2808 : vec4<f32> = u_xlat12;
          let x_2809 : vec2<f32> = vec2<f32>(x_2808.x, x_2808.y);
          let x_2811 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2809.x, x_2809.y, x_2811);
          let x_2818 : vec3<f32> = txVec32;
          let x_2820 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2818.xy, x_2818.z);
          u_xlat13.z = x_2820;
          let x_2823 : vec4<f32> = u_xlat12;
          let x_2824 : vec2<f32> = vec2<f32>(x_2823.z, x_2823.w);
          let x_2826 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2824.x, x_2824.y, x_2826);
          let x_2833 : vec3<f32> = txVec33;
          let x_2835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2833.xy, x_2833.z);
          u_xlat13.w = x_2835;
          let x_2837 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2837, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2840 : i32 = u_xlati83;
          let x_2842 : f32 = x_744.x_AdditionalShadowParams[x_2840].y;
          u_xlatb86 = (2.0f == x_2842);
          let x_2844 : bool = u_xlatb86;
          if (x_2844) {
            let x_2847 : vec4<f32> = u_xlat11;
            let x_2850 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2853 : vec2<f32> = ((vec2<f32>(x_2847.x, x_2847.y) * vec2<f32>(x_2850.z, x_2850.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2854 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2853.x, x_2853.y, x_2854.z, x_2854.w);
            let x_2856 : vec4<f32> = u_xlat12;
            let x_2858 : vec2<f32> = floor(vec2<f32>(x_2856.x, x_2856.y));
            let x_2859 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2858.x, x_2858.y, x_2859.z, x_2859.w);
            let x_2862 : vec4<f32> = u_xlat11;
            let x_2865 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_2868 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2862.x, x_2862.y) * vec2<f32>(x_2865.z, x_2865.w)) + -(vec2<f32>(x_2868.x, x_2868.y)));
            let x_2872 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2872.x, x_2872.x, x_2872.y, x_2872.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2875 : vec4<f32> = u_xlat13;
            let x_2877 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2875.x, x_2875.x, x_2875.z, x_2875.z) * vec4<f32>(x_2877.x, x_2877.x, x_2877.z, x_2877.z));
            let x_2880 : vec4<f32> = u_xlat14;
            let x_2882 : vec2<f32> = (vec2<f32>(x_2880.y, x_2880.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2883 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2882.x, x_2883.y, x_2882.y, x_2883.w);
            let x_2885 : vec4<f32> = u_xlat14;
            let x_2888 : vec2<f32> = u_xlat64;
            let x_2890 : vec2<f32> = ((vec2<f32>(x_2885.x, x_2885.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2888));
            let x_2891 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2890.x, x_2890.y, x_2891.z, x_2891.w);
            let x_2893 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2893) + vec2<f32>(1.0f, 1.0f));
            let x_2896 : vec2<f32> = u_xlat64;
            let x_2897 : vec2<f32> = min(x_2896, vec2<f32>(0.0f, 0.0f));
            let x_2898 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2897.x, x_2897.y, x_2898.z, x_2898.w);
            let x_2900 : vec4<f32> = u_xlat15;
            let x_2903 : vec4<f32> = u_xlat15;
            let x_2906 : vec2<f32> = u_xlat66;
            let x_2907 : vec2<f32> = ((-(vec2<f32>(x_2900.x, x_2900.y)) * vec2<f32>(x_2903.x, x_2903.y)) + x_2906);
            let x_2908 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2907.x, x_2907.y, x_2908.z, x_2908.w);
            let x_2910 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2910, vec2<f32>(0.0f, 0.0f));
            let x_2912 : vec2<f32> = u_xlat64;
            let x_2914 : vec2<f32> = u_xlat64;
            let x_2916 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2912) * x_2914) + vec2<f32>(x_2916.y, x_2916.w));
            let x_2919 : vec4<f32> = u_xlat15;
            let x_2921 : vec2<f32> = (vec2<f32>(x_2919.x, x_2919.y) + vec2<f32>(1.0f, 1.0f));
            let x_2922 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2921.x, x_2921.y, x_2922.z, x_2922.w);
            let x_2924 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2924 + vec2<f32>(1.0f, 1.0f));
            let x_2926 : vec4<f32> = u_xlat14;
            let x_2928 : vec2<f32> = (vec2<f32>(x_2926.x, x_2926.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2929 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2928.x, x_2928.y, x_2929.z, x_2929.w);
            let x_2931 : vec2<f32> = u_xlat66;
            let x_2932 : vec2<f32> = (x_2931 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2933 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2932.x, x_2932.y, x_2933.z, x_2933.w);
            let x_2935 : vec4<f32> = u_xlat15;
            let x_2937 : vec2<f32> = (vec2<f32>(x_2935.x, x_2935.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2938 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2937.x, x_2937.y, x_2938.z, x_2938.w);
            let x_2940 : vec2<f32> = u_xlat64;
            let x_2941 : vec2<f32> = (x_2940 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2942 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2941.x, x_2941.y, x_2942.z, x_2942.w);
            let x_2944 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2944.y, x_2944.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2948 : f32 = u_xlat15.x;
            u_xlat16.z = x_2948;
            let x_2951 : f32 = u_xlat64.x;
            u_xlat16.w = x_2951;
            let x_2954 : f32 = u_xlat17.x;
            u_xlat14.z = x_2954;
            let x_2957 : f32 = u_xlat13.x;
            u_xlat14.w = x_2957;
            let x_2959 : vec4<f32> = u_xlat14;
            let x_2961 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2959.z, x_2959.w, x_2959.x, x_2959.z) + vec4<f32>(x_2961.z, x_2961.w, x_2961.x, x_2961.z));
            let x_2965 : f32 = u_xlat16.y;
            u_xlat15.z = x_2965;
            let x_2968 : f32 = u_xlat64.y;
            u_xlat15.w = x_2968;
            let x_2971 : f32 = u_xlat14.y;
            u_xlat17.z = x_2971;
            let x_2974 : f32 = u_xlat13.z;
            u_xlat17.w = x_2974;
            let x_2976 : vec4<f32> = u_xlat15;
            let x_2978 : vec4<f32> = u_xlat17;
            let x_2980 : vec3<f32> = (vec3<f32>(x_2976.z, x_2976.y, x_2976.w) + vec3<f32>(x_2978.z, x_2978.y, x_2978.w));
            let x_2981 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2980.x, x_2980.y, x_2980.z, x_2981.w);
            let x_2983 : vec4<f32> = u_xlat14;
            let x_2985 : vec4<f32> = u_xlat18;
            let x_2987 : vec3<f32> = (vec3<f32>(x_2983.x, x_2983.z, x_2983.w) / vec3<f32>(x_2985.z, x_2985.w, x_2985.y));
            let x_2988 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2987.x, x_2987.y, x_2987.z, x_2988.w);
            let x_2990 : vec4<f32> = u_xlat14;
            let x_2992 : vec3<f32> = (vec3<f32>(x_2990.x, x_2990.y, x_2990.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2993 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2992.x, x_2992.y, x_2992.z, x_2993.w);
            let x_2995 : vec4<f32> = u_xlat17;
            let x_2997 : vec4<f32> = u_xlat13;
            let x_2999 : vec3<f32> = (vec3<f32>(x_2995.z, x_2995.y, x_2995.w) / vec3<f32>(x_2997.x, x_2997.y, x_2997.z));
            let x_3000 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2999.x, x_2999.y, x_2999.z, x_3000.w);
            let x_3002 : vec4<f32> = u_xlat15;
            let x_3004 : vec3<f32> = (vec3<f32>(x_3002.x, x_3002.y, x_3002.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3005 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3004.x, x_3004.y, x_3004.z, x_3005.w);
            let x_3007 : vec4<f32> = u_xlat14;
            let x_3010 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3012 : vec3<f32> = (vec3<f32>(x_3007.y, x_3007.x, x_3007.z) * vec3<f32>(x_3010.x, x_3010.x, x_3010.x));
            let x_3013 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3012.x, x_3012.y, x_3012.z, x_3013.w);
            let x_3015 : vec4<f32> = u_xlat15;
            let x_3018 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3020 : vec3<f32> = (vec3<f32>(x_3015.x, x_3015.y, x_3015.z) * vec3<f32>(x_3018.y, x_3018.y, x_3018.y));
            let x_3021 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3020.x, x_3020.y, x_3020.z, x_3021.w);
            let x_3024 : f32 = u_xlat15.x;
            u_xlat14.w = x_3024;
            let x_3026 : vec4<f32> = u_xlat12;
            let x_3029 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3032 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3026.x, x_3026.y, x_3026.x, x_3026.y) * vec4<f32>(x_3029.x, x_3029.y, x_3029.x, x_3029.y)) + vec4<f32>(x_3032.y, x_3032.w, x_3032.x, x_3032.w));
            let x_3035 : vec4<f32> = u_xlat12;
            let x_3038 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3041 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3035.x, x_3035.y) * vec2<f32>(x_3038.x, x_3038.y)) + vec2<f32>(x_3041.z, x_3041.w));
            let x_3045 : f32 = u_xlat14.y;
            u_xlat15.w = x_3045;
            let x_3047 : vec4<f32> = u_xlat15;
            let x_3048 : vec2<f32> = vec2<f32>(x_3047.y, x_3047.z);
            let x_3049 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3049.x, x_3048.x, x_3049.z, x_3048.y);
            let x_3051 : vec4<f32> = u_xlat12;
            let x_3054 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3057 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3051.x, x_3051.y, x_3051.x, x_3051.y) * vec4<f32>(x_3054.x, x_3054.y, x_3054.x, x_3054.y)) + vec4<f32>(x_3057.x, x_3057.y, x_3057.z, x_3057.y));
            let x_3060 : vec4<f32> = u_xlat12;
            let x_3063 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3066 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3060.x, x_3060.y, x_3060.x, x_3060.y) * vec4<f32>(x_3063.x, x_3063.y, x_3063.x, x_3063.y)) + vec4<f32>(x_3066.w, x_3066.y, x_3066.w, x_3066.z));
            let x_3069 : vec4<f32> = u_xlat12;
            let x_3072 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3075 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3069.x, x_3069.y, x_3069.x, x_3069.y) * vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y)) + vec4<f32>(x_3075.x, x_3075.w, x_3075.z, x_3075.w));
            let x_3078 : vec4<f32> = u_xlat13;
            let x_3080 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3078.x, x_3078.x, x_3078.x, x_3078.y) * vec4<f32>(x_3080.z, x_3080.w, x_3080.y, x_3080.z));
            let x_3084 : vec4<f32> = u_xlat13;
            let x_3086 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3084.y, x_3084.y, x_3084.z, x_3084.z) * x_3086);
            let x_3089 : f32 = u_xlat13.z;
            let x_3091 : f32 = u_xlat18.y;
            u_xlat86 = (x_3089 * x_3091);
            let x_3094 : vec4<f32> = u_xlat16;
            let x_3095 : vec2<f32> = vec2<f32>(x_3094.x, x_3094.y);
            let x_3097 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3095.x, x_3095.y, x_3097);
            let x_3104 : vec3<f32> = txVec34;
            let x_3106 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3104.xy, x_3104.z);
            u_xlat87 = x_3106;
            let x_3108 : vec4<f32> = u_xlat16;
            let x_3109 : vec2<f32> = vec2<f32>(x_3108.z, x_3108.w);
            let x_3111 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3109.x, x_3109.y, x_3111);
            let x_3119 : vec3<f32> = txVec35;
            let x_3121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3119.xy, x_3119.z);
            u_xlat88 = x_3121;
            let x_3122 : f32 = u_xlat88;
            let x_3124 : f32 = u_xlat19.y;
            u_xlat88 = (x_3122 * x_3124);
            let x_3127 : f32 = u_xlat19.x;
            let x_3128 : f32 = u_xlat87;
            let x_3130 : f32 = u_xlat88;
            u_xlat87 = ((x_3127 * x_3128) + x_3130);
            let x_3133 : vec2<f32> = u_xlat64;
            let x_3135 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3133.x, x_3133.y, x_3135);
            let x_3142 : vec3<f32> = txVec36;
            let x_3144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3142.xy, x_3142.z);
            u_xlat88 = x_3144;
            let x_3146 : f32 = u_xlat19.z;
            let x_3147 : f32 = u_xlat88;
            let x_3149 : f32 = u_xlat87;
            u_xlat87 = ((x_3146 * x_3147) + x_3149);
            let x_3152 : vec4<f32> = u_xlat15;
            let x_3153 : vec2<f32> = vec2<f32>(x_3152.x, x_3152.y);
            let x_3155 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3153.x, x_3153.y, x_3155);
            let x_3162 : vec3<f32> = txVec37;
            let x_3164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3162.xy, x_3162.z);
            u_xlat88 = x_3164;
            let x_3166 : f32 = u_xlat19.w;
            let x_3167 : f32 = u_xlat88;
            let x_3169 : f32 = u_xlat87;
            u_xlat87 = ((x_3166 * x_3167) + x_3169);
            let x_3172 : vec4<f32> = u_xlat17;
            let x_3173 : vec2<f32> = vec2<f32>(x_3172.x, x_3172.y);
            let x_3175 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec38;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat88 = x_3184;
            let x_3186 : f32 = u_xlat20.x;
            let x_3187 : f32 = u_xlat88;
            let x_3189 : f32 = u_xlat87;
            u_xlat87 = ((x_3186 * x_3187) + x_3189);
            let x_3192 : vec4<f32> = u_xlat17;
            let x_3193 : vec2<f32> = vec2<f32>(x_3192.z, x_3192.w);
            let x_3195 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3193.x, x_3193.y, x_3195);
            let x_3202 : vec3<f32> = txVec39;
            let x_3204 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3202.xy, x_3202.z);
            u_xlat88 = x_3204;
            let x_3206 : f32 = u_xlat20.y;
            let x_3207 : f32 = u_xlat88;
            let x_3209 : f32 = u_xlat87;
            u_xlat87 = ((x_3206 * x_3207) + x_3209);
            let x_3212 : vec4<f32> = u_xlat15;
            let x_3213 : vec2<f32> = vec2<f32>(x_3212.z, x_3212.w);
            let x_3215 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3213.x, x_3213.y, x_3215);
            let x_3222 : vec3<f32> = txVec40;
            let x_3224 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3222.xy, x_3222.z);
            u_xlat88 = x_3224;
            let x_3226 : f32 = u_xlat20.z;
            let x_3227 : f32 = u_xlat88;
            let x_3229 : f32 = u_xlat87;
            u_xlat87 = ((x_3226 * x_3227) + x_3229);
            let x_3232 : vec4<f32> = u_xlat14;
            let x_3233 : vec2<f32> = vec2<f32>(x_3232.x, x_3232.y);
            let x_3235 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3233.x, x_3233.y, x_3235);
            let x_3242 : vec3<f32> = txVec41;
            let x_3244 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3242.xy, x_3242.z);
            u_xlat88 = x_3244;
            let x_3246 : f32 = u_xlat20.w;
            let x_3247 : f32 = u_xlat88;
            let x_3249 : f32 = u_xlat87;
            u_xlat87 = ((x_3246 * x_3247) + x_3249);
            let x_3252 : vec4<f32> = u_xlat14;
            let x_3253 : vec2<f32> = vec2<f32>(x_3252.z, x_3252.w);
            let x_3255 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3253.x, x_3253.y, x_3255);
            let x_3262 : vec3<f32> = txVec42;
            let x_3264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3262.xy, x_3262.z);
            u_xlat88 = x_3264;
            let x_3265 : f32 = u_xlat86;
            let x_3266 : f32 = u_xlat88;
            let x_3268 : f32 = u_xlat87;
            u_xlat85 = ((x_3265 * x_3266) + x_3268);
          } else {
            let x_3271 : vec4<f32> = u_xlat11;
            let x_3274 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3277 : vec2<f32> = ((vec2<f32>(x_3271.x, x_3271.y) * vec2<f32>(x_3274.z, x_3274.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3278 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3277.x, x_3277.y, x_3278.z, x_3278.w);
            let x_3280 : vec4<f32> = u_xlat12;
            let x_3282 : vec2<f32> = floor(vec2<f32>(x_3280.x, x_3280.y));
            let x_3283 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3282.x, x_3282.y, x_3283.z, x_3283.w);
            let x_3285 : vec4<f32> = u_xlat11;
            let x_3288 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3291 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3285.x, x_3285.y) * vec2<f32>(x_3288.z, x_3288.w)) + -(vec2<f32>(x_3291.x, x_3291.y)));
            let x_3295 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3295.x, x_3295.x, x_3295.y, x_3295.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3298 : vec4<f32> = u_xlat13;
            let x_3300 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3298.x, x_3298.x, x_3298.z, x_3298.z) * vec4<f32>(x_3300.x, x_3300.x, x_3300.z, x_3300.z));
            let x_3303 : vec4<f32> = u_xlat14;
            let x_3305 : vec2<f32> = (vec2<f32>(x_3303.y, x_3303.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3306 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3306.x, x_3305.x, x_3306.z, x_3305.y);
            let x_3308 : vec4<f32> = u_xlat14;
            let x_3311 : vec2<f32> = u_xlat64;
            let x_3313 : vec2<f32> = ((vec2<f32>(x_3308.x, x_3308.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3311));
            let x_3314 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3313.x, x_3314.y, x_3313.y, x_3314.w);
            let x_3316 : vec2<f32> = u_xlat64;
            let x_3318 : vec2<f32> = (-(x_3316) + vec2<f32>(1.0f, 1.0f));
            let x_3319 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3318.x, x_3318.y, x_3319.z, x_3319.w);
            let x_3321 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3321, vec2<f32>(0.0f, 0.0f));
            let x_3323 : vec2<f32> = u_xlat66;
            let x_3325 : vec2<f32> = u_xlat66;
            let x_3327 : vec4<f32> = u_xlat14;
            let x_3329 : vec2<f32> = ((-(x_3323) * x_3325) + vec2<f32>(x_3327.x, x_3327.y));
            let x_3330 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3329.x, x_3329.y, x_3330.z, x_3330.w);
            let x_3332 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3332, vec2<f32>(0.0f, 0.0f));
            let x_3335 : vec2<f32> = u_xlat66;
            let x_3337 : vec2<f32> = u_xlat66;
            let x_3339 : vec4<f32> = u_xlat13;
            let x_3341 : vec2<f32> = ((-(x_3335) * x_3337) + vec2<f32>(x_3339.y, x_3339.w));
            let x_3342 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3341.x, x_3342.y, x_3341.y);
            let x_3344 : vec4<f32> = u_xlat14;
            let x_3346 : vec2<f32> = (vec2<f32>(x_3344.x, x_3344.y) + vec2<f32>(2.0f, 2.0f));
            let x_3347 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3346.x, x_3346.y, x_3347.z, x_3347.w);
            let x_3349 : vec3<f32> = u_xlat39;
            let x_3351 : vec2<f32> = (vec2<f32>(x_3349.x, x_3349.z) + vec2<f32>(2.0f, 2.0f));
            let x_3352 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3352.x, x_3351.x, x_3352.z, x_3351.y);
            let x_3355 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3355 * 0.08163200318813323975f);
            let x_3358 : vec4<f32> = u_xlat13;
            let x_3360 : vec3<f32> = (vec3<f32>(x_3358.z, x_3358.x, x_3358.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3361 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3360.x, x_3360.y, x_3360.z, x_3361.w);
            let x_3363 : vec4<f32> = u_xlat14;
            let x_3365 : vec2<f32> = (vec2<f32>(x_3363.x, x_3363.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3366 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3365.x, x_3365.y, x_3366.z, x_3366.w);
            let x_3369 : f32 = u_xlat17.y;
            u_xlat16.x = x_3369;
            let x_3371 : vec2<f32> = u_xlat64;
            let x_3374 : vec2<f32> = ((vec2<f32>(x_3371.x, x_3371.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3375 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3375.x, x_3374.x, x_3375.z, x_3374.y);
            let x_3377 : vec2<f32> = u_xlat64;
            let x_3380 : vec2<f32> = ((vec2<f32>(x_3377.x, x_3377.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3381 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3380.x, x_3381.y, x_3380.y, x_3381.w);
            let x_3384 : f32 = u_xlat13.x;
            u_xlat14.y = x_3384;
            let x_3387 : f32 = u_xlat15.y;
            u_xlat14.w = x_3387;
            let x_3389 : vec4<f32> = u_xlat14;
            let x_3390 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3389 + x_3390);
            let x_3392 : vec2<f32> = u_xlat64;
            let x_3395 : vec2<f32> = ((vec2<f32>(x_3392.y, x_3392.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3396 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3396.x, x_3395.x, x_3396.z, x_3395.y);
            let x_3398 : vec2<f32> = u_xlat64;
            let x_3401 : vec2<f32> = ((vec2<f32>(x_3398.y, x_3398.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3402 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3401.x, x_3402.y, x_3401.y, x_3402.w);
            let x_3405 : f32 = u_xlat13.y;
            u_xlat15.y = x_3405;
            let x_3407 : vec4<f32> = u_xlat15;
            let x_3408 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3407 + x_3408);
            let x_3410 : vec4<f32> = u_xlat14;
            let x_3411 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3410 / x_3411);
            let x_3413 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3413 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3415 : vec4<f32> = u_xlat15;
            let x_3416 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3415 / x_3416);
            let x_3418 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3418 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3420 : vec4<f32> = u_xlat14;
            let x_3423 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3420.w, x_3420.x, x_3420.y, x_3420.z) * vec4<f32>(x_3423.x, x_3423.x, x_3423.x, x_3423.x));
            let x_3426 : vec4<f32> = u_xlat15;
            let x_3429 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3426.x, x_3426.w, x_3426.y, x_3426.z) * vec4<f32>(x_3429.y, x_3429.y, x_3429.y, x_3429.y));
            let x_3432 : vec4<f32> = u_xlat14;
            let x_3433 : vec3<f32> = vec3<f32>(x_3432.y, x_3432.z, x_3432.w);
            let x_3434 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3433.x, x_3434.y, x_3433.y, x_3433.z);
            let x_3437 : f32 = u_xlat15.x;
            u_xlat17.y = x_3437;
            let x_3439 : vec4<f32> = u_xlat12;
            let x_3442 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3445 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3439.x, x_3439.y, x_3439.x, x_3439.y) * vec4<f32>(x_3442.x, x_3442.y, x_3442.x, x_3442.y)) + vec4<f32>(x_3445.x, x_3445.y, x_3445.z, x_3445.y));
            let x_3448 : vec4<f32> = u_xlat12;
            let x_3451 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3454 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3448.x, x_3448.y) * vec2<f32>(x_3451.x, x_3451.y)) + vec2<f32>(x_3454.w, x_3454.y));
            let x_3458 : f32 = u_xlat17.y;
            u_xlat14.y = x_3458;
            let x_3461 : f32 = u_xlat15.z;
            u_xlat17.y = x_3461;
            let x_3463 : vec4<f32> = u_xlat12;
            let x_3466 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3469 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3463.x, x_3463.y, x_3463.x, x_3463.y) * vec4<f32>(x_3466.x, x_3466.y, x_3466.x, x_3466.y)) + vec4<f32>(x_3469.x, x_3469.y, x_3469.z, x_3469.y));
            let x_3472 : vec4<f32> = u_xlat12;
            let x_3475 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3478 : vec4<f32> = u_xlat17;
            let x_3480 : vec2<f32> = ((vec2<f32>(x_3472.x, x_3472.y) * vec2<f32>(x_3475.x, x_3475.y)) + vec2<f32>(x_3478.w, x_3478.y));
            let x_3481 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3480.x, x_3480.y, x_3481.z, x_3481.w);
            let x_3484 : f32 = u_xlat17.y;
            u_xlat14.z = x_3484;
            let x_3487 : vec4<f32> = u_xlat12;
            let x_3490 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3493 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3487.x, x_3487.y, x_3487.x, x_3487.y) * vec4<f32>(x_3490.x, x_3490.y, x_3490.x, x_3490.y)) + vec4<f32>(x_3493.x, x_3493.y, x_3493.x, x_3493.z));
            let x_3497 : f32 = u_xlat15.w;
            u_xlat17.y = x_3497;
            let x_3500 : vec4<f32> = u_xlat12;
            let x_3503 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3506 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3500.x, x_3500.y, x_3500.x, x_3500.y) * vec4<f32>(x_3503.x, x_3503.y, x_3503.x, x_3503.y)) + vec4<f32>(x_3506.x, x_3506.y, x_3506.z, x_3506.y));
            let x_3510 : vec4<f32> = u_xlat12;
            let x_3513 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3516 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3510.x, x_3510.y) * vec2<f32>(x_3513.x, x_3513.y)) + vec2<f32>(x_3516.w, x_3516.y));
            let x_3520 : f32 = u_xlat17.y;
            u_xlat14.w = x_3520;
            let x_3523 : vec4<f32> = u_xlat12;
            let x_3526 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3529 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3523.x, x_3523.y) * vec2<f32>(x_3526.x, x_3526.y)) + vec2<f32>(x_3529.x, x_3529.w));
            let x_3532 : vec4<f32> = u_xlat17;
            let x_3533 : vec3<f32> = vec3<f32>(x_3532.x, x_3532.z, x_3532.w);
            let x_3534 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3533.x, x_3534.y, x_3533.y, x_3533.z);
            let x_3536 : vec4<f32> = u_xlat12;
            let x_3539 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3542 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3536.x, x_3536.y, x_3536.x, x_3536.y) * vec4<f32>(x_3539.x, x_3539.y, x_3539.x, x_3539.y)) + vec4<f32>(x_3542.x, x_3542.y, x_3542.z, x_3542.y));
            let x_3546 : vec4<f32> = u_xlat12;
            let x_3549 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3552 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3546.x, x_3546.y) * vec2<f32>(x_3549.x, x_3549.y)) + vec2<f32>(x_3552.w, x_3552.y));
            let x_3556 : f32 = u_xlat14.x;
            u_xlat15.x = x_3556;
            let x_3558 : vec4<f32> = u_xlat12;
            let x_3561 : vec4<f32> = x_744.x_AdditionalShadowmapSize;
            let x_3564 : vec4<f32> = u_xlat15;
            let x_3566 : vec2<f32> = ((vec2<f32>(x_3558.x, x_3558.y) * vec2<f32>(x_3561.x, x_3561.y)) + vec2<f32>(x_3564.x, x_3564.y));
            let x_3567 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3566.x, x_3566.y, x_3567.z, x_3567.w);
            let x_3570 : vec4<f32> = u_xlat13;
            let x_3572 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3570.x, x_3570.x, x_3570.x, x_3570.x) * x_3572);
            let x_3575 : vec4<f32> = u_xlat13;
            let x_3577 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3575.y, x_3575.y, x_3575.y, x_3575.y) * x_3577);
            let x_3580 : vec4<f32> = u_xlat13;
            let x_3582 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3580.z, x_3580.z, x_3580.z, x_3580.z) * x_3582);
            let x_3584 : vec4<f32> = u_xlat13;
            let x_3586 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3584.w, x_3584.w, x_3584.w, x_3584.w) * x_3586);
            let x_3589 : vec4<f32> = u_xlat18;
            let x_3590 : vec2<f32> = vec2<f32>(x_3589.x, x_3589.y);
            let x_3592 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3590.x, x_3590.y, x_3592);
            let x_3599 : vec3<f32> = txVec43;
            let x_3601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3599.xy, x_3599.z);
            u_xlat86 = x_3601;
            let x_3603 : vec4<f32> = u_xlat18;
            let x_3604 : vec2<f32> = vec2<f32>(x_3603.z, x_3603.w);
            let x_3606 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3604.x, x_3604.y, x_3606);
            let x_3613 : vec3<f32> = txVec44;
            let x_3615 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3613.xy, x_3613.z);
            u_xlat87 = x_3615;
            let x_3616 : f32 = u_xlat87;
            let x_3618 : f32 = u_xlat23.y;
            u_xlat87 = (x_3616 * x_3618);
            let x_3621 : f32 = u_xlat23.x;
            let x_3622 : f32 = u_xlat86;
            let x_3624 : f32 = u_xlat87;
            u_xlat86 = ((x_3621 * x_3622) + x_3624);
            let x_3627 : vec2<f32> = u_xlat64;
            let x_3629 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3627.x, x_3627.y, x_3629);
            let x_3636 : vec3<f32> = txVec45;
            let x_3638 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3636.xy, x_3636.z);
            u_xlat87 = x_3638;
            let x_3640 : f32 = u_xlat23.z;
            let x_3641 : f32 = u_xlat87;
            let x_3643 : f32 = u_xlat86;
            u_xlat86 = ((x_3640 * x_3641) + x_3643);
            let x_3646 : vec4<f32> = u_xlat21;
            let x_3647 : vec2<f32> = vec2<f32>(x_3646.x, x_3646.y);
            let x_3649 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3647.x, x_3647.y, x_3649);
            let x_3656 : vec3<f32> = txVec46;
            let x_3658 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3656.xy, x_3656.z);
            u_xlat87 = x_3658;
            let x_3660 : f32 = u_xlat23.w;
            let x_3661 : f32 = u_xlat87;
            let x_3663 : f32 = u_xlat86;
            u_xlat86 = ((x_3660 * x_3661) + x_3663);
            let x_3666 : vec4<f32> = u_xlat19;
            let x_3667 : vec2<f32> = vec2<f32>(x_3666.x, x_3666.y);
            let x_3669 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3667.x, x_3667.y, x_3669);
            let x_3676 : vec3<f32> = txVec47;
            let x_3678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3676.xy, x_3676.z);
            u_xlat87 = x_3678;
            let x_3680 : f32 = u_xlat24.x;
            let x_3681 : f32 = u_xlat87;
            let x_3683 : f32 = u_xlat86;
            u_xlat86 = ((x_3680 * x_3681) + x_3683);
            let x_3686 : vec4<f32> = u_xlat19;
            let x_3687 : vec2<f32> = vec2<f32>(x_3686.z, x_3686.w);
            let x_3689 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3687.x, x_3687.y, x_3689);
            let x_3696 : vec3<f32> = txVec48;
            let x_3698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3696.xy, x_3696.z);
            u_xlat87 = x_3698;
            let x_3700 : f32 = u_xlat24.y;
            let x_3701 : f32 = u_xlat87;
            let x_3703 : f32 = u_xlat86;
            u_xlat86 = ((x_3700 * x_3701) + x_3703);
            let x_3706 : vec4<f32> = u_xlat20;
            let x_3707 : vec2<f32> = vec2<f32>(x_3706.x, x_3706.y);
            let x_3709 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3707.x, x_3707.y, x_3709);
            let x_3716 : vec3<f32> = txVec49;
            let x_3718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3716.xy, x_3716.z);
            u_xlat87 = x_3718;
            let x_3720 : f32 = u_xlat24.z;
            let x_3721 : f32 = u_xlat87;
            let x_3723 : f32 = u_xlat86;
            u_xlat86 = ((x_3720 * x_3721) + x_3723);
            let x_3726 : vec4<f32> = u_xlat21;
            let x_3727 : vec2<f32> = vec2<f32>(x_3726.z, x_3726.w);
            let x_3729 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3727.x, x_3727.y, x_3729);
            let x_3736 : vec3<f32> = txVec50;
            let x_3738 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3736.xy, x_3736.z);
            u_xlat87 = x_3738;
            let x_3740 : f32 = u_xlat24.w;
            let x_3741 : f32 = u_xlat87;
            let x_3743 : f32 = u_xlat86;
            u_xlat86 = ((x_3740 * x_3741) + x_3743);
            let x_3746 : vec4<f32> = u_xlat22;
            let x_3747 : vec2<f32> = vec2<f32>(x_3746.x, x_3746.y);
            let x_3749 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3747.x, x_3747.y, x_3749);
            let x_3756 : vec3<f32> = txVec51;
            let x_3758 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3756.xy, x_3756.z);
            u_xlat87 = x_3758;
            let x_3760 : f32 = u_xlat25.x;
            let x_3761 : f32 = u_xlat87;
            let x_3763 : f32 = u_xlat86;
            u_xlat86 = ((x_3760 * x_3761) + x_3763);
            let x_3766 : vec4<f32> = u_xlat22;
            let x_3767 : vec2<f32> = vec2<f32>(x_3766.z, x_3766.w);
            let x_3769 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3767.x, x_3767.y, x_3769);
            let x_3776 : vec3<f32> = txVec52;
            let x_3778 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3776.xy, x_3776.z);
            u_xlat87 = x_3778;
            let x_3780 : f32 = u_xlat25.y;
            let x_3781 : f32 = u_xlat87;
            let x_3783 : f32 = u_xlat86;
            u_xlat86 = ((x_3780 * x_3781) + x_3783);
            let x_3786 : vec2<f32> = u_xlat40;
            let x_3788 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3786.x, x_3786.y, x_3788);
            let x_3795 : vec3<f32> = txVec53;
            let x_3797 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3795.xy, x_3795.z);
            u_xlat87 = x_3797;
            let x_3799 : f32 = u_xlat25.z;
            let x_3800 : f32 = u_xlat87;
            let x_3802 : f32 = u_xlat86;
            u_xlat86 = ((x_3799 * x_3800) + x_3802);
            let x_3805 : vec2<f32> = u_xlat72;
            let x_3807 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3805.x, x_3805.y, x_3807);
            let x_3814 : vec3<f32> = txVec54;
            let x_3816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3814.xy, x_3814.z);
            u_xlat87 = x_3816;
            let x_3818 : f32 = u_xlat25.w;
            let x_3819 : f32 = u_xlat87;
            let x_3821 : f32 = u_xlat86;
            u_xlat86 = ((x_3818 * x_3819) + x_3821);
            let x_3824 : vec4<f32> = u_xlat17;
            let x_3825 : vec2<f32> = vec2<f32>(x_3824.x, x_3824.y);
            let x_3827 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3825.x, x_3825.y, x_3827);
            let x_3834 : vec3<f32> = txVec55;
            let x_3836 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3834.xy, x_3834.z);
            u_xlat87 = x_3836;
            let x_3838 : f32 = u_xlat13.x;
            let x_3839 : f32 = u_xlat87;
            let x_3841 : f32 = u_xlat86;
            u_xlat86 = ((x_3838 * x_3839) + x_3841);
            let x_3844 : vec4<f32> = u_xlat17;
            let x_3845 : vec2<f32> = vec2<f32>(x_3844.z, x_3844.w);
            let x_3847 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3845.x, x_3845.y, x_3847);
            let x_3854 : vec3<f32> = txVec56;
            let x_3856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3854.xy, x_3854.z);
            u_xlat87 = x_3856;
            let x_3858 : f32 = u_xlat13.y;
            let x_3859 : f32 = u_xlat87;
            let x_3861 : f32 = u_xlat86;
            u_xlat86 = ((x_3858 * x_3859) + x_3861);
            let x_3864 : vec2<f32> = u_xlat67;
            let x_3866 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3864.x, x_3864.y, x_3866);
            let x_3873 : vec3<f32> = txVec57;
            let x_3875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3873.xy, x_3873.z);
            u_xlat87 = x_3875;
            let x_3877 : f32 = u_xlat13.z;
            let x_3878 : f32 = u_xlat87;
            let x_3880 : f32 = u_xlat86;
            u_xlat86 = ((x_3877 * x_3878) + x_3880);
            let x_3883 : vec4<f32> = u_xlat12;
            let x_3884 : vec2<f32> = vec2<f32>(x_3883.x, x_3883.y);
            let x_3886 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3884.x, x_3884.y, x_3886);
            let x_3893 : vec3<f32> = txVec58;
            let x_3895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3893.xy, x_3893.z);
            u_xlat87 = x_3895;
            let x_3897 : f32 = u_xlat13.w;
            let x_3898 : f32 = u_xlat87;
            let x_3900 : f32 = u_xlat86;
            u_xlat85 = ((x_3897 * x_3898) + x_3900);
          }
        }
      } else {
        let x_3904 : vec4<f32> = u_xlat11;
        let x_3905 : vec2<f32> = vec2<f32>(x_3904.x, x_3904.y);
        let x_3907 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3905.x, x_3905.y, x_3907);
        let x_3914 : vec3<f32> = txVec59;
        let x_3916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3914.xy, x_3914.z);
        u_xlat85 = x_3916;
      }
      let x_3917 : i32 = u_xlati83;
      let x_3919 : f32 = x_744.x_AdditionalShadowParams[x_3917].x;
      u_xlat86 = (1.0f + -(x_3919));
      let x_3922 : f32 = u_xlat85;
      let x_3923 : i32 = u_xlati83;
      let x_3925 : f32 = x_744.x_AdditionalShadowParams[x_3923].x;
      let x_3927 : f32 = u_xlat86;
      u_xlat85 = ((x_3922 * x_3925) + x_3927);
      let x_3930 : f32 = u_xlat11.z;
      u_xlatb86 = (0.0f >= x_3930);
      let x_3934 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3934 >= 1.0f);
      let x_3936 : bool = u_xlatb86;
      let x_3937 : bool = u_xlatb87;
      u_xlatb86 = (x_3936 | x_3937);
      let x_3939 : bool = u_xlatb86;
      let x_3940 : f32 = u_xlat85;
      u_xlat85 = select(x_3940, 1.0f, x_3939);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3943 : f32 = u_xlat85;
    u_xlat86 = (-(x_3943) + 1.0f);
    let x_3946 : f32 = u_xlat80;
    let x_3947 : f32 = u_xlat86;
    let x_3949 : f32 = u_xlat85;
    u_xlat85 = ((x_3946 * x_3947) + x_3949);
    let x_3952 : i32 = u_xlati83;
    u_xlati86 = (1i << bitcast<u32>((x_3952 & 31i)));
    let x_3955 : i32 = u_xlati86;
    let x_3958 : f32 = x_2055.x_AdditionalLightsCookieEnableBits;
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_3955) & bitcast<u32>(x_3958)));
    let x_3962 : i32 = u_xlati86;
    if ((x_3962 != 0i)) {
      let x_3966 : i32 = u_xlati83;
      let x_3968 : f32 = x_2055.x_AdditionalLightsLightTypes[x_3966].el;
      u_xlati86 = i32(x_3968);
      let x_3971 : i32 = u_xlati86;
      u_xlati87 = select(1i, 0i, (x_3971 != 0i));
      let x_3975 : i32 = u_xlati83;
      u_xlati88 = (x_3975 << bitcast<u32>(2i));
      let x_3977 : i32 = u_xlati87;
      if ((x_3977 != 0i)) {
        let x_3981 : vec3<f32> = vs_TEXCOORD7;
        let x_3983 : i32 = u_xlati88;
        let x_3986 : i32 = u_xlati88;
        let x_3990 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_3983 + 1i) / 4i)][((x_3986 + 1i) % 4i)];
        let x_3992 : vec3<f32> = (vec3<f32>(x_3981.y, x_3981.y, x_3981.y) * vec3<f32>(x_3990.x, x_3990.y, x_3990.w));
        let x_3993 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3992.x, x_3992.y, x_3992.z, x_3993.w);
        let x_3995 : i32 = u_xlati88;
        let x_3997 : i32 = u_xlati88;
        let x_4000 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[(x_3995 / 4i)][(x_3997 % 4i)];
        let x_4002 : vec3<f32> = vs_TEXCOORD7;
        let x_4005 : vec4<f32> = u_xlat11;
        let x_4007 : vec3<f32> = ((vec3<f32>(x_4000.x, x_4000.y, x_4000.w) * vec3<f32>(x_4002.x, x_4002.x, x_4002.x)) + vec3<f32>(x_4005.x, x_4005.y, x_4005.z));
        let x_4008 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4007.x, x_4007.y, x_4007.z, x_4008.w);
        let x_4010 : i32 = u_xlati88;
        let x_4013 : i32 = u_xlati88;
        let x_4017 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_4010 + 2i) / 4i)][((x_4013 + 2i) % 4i)];
        let x_4019 : vec3<f32> = vs_TEXCOORD7;
        let x_4022 : vec4<f32> = u_xlat11;
        let x_4024 : vec3<f32> = ((vec3<f32>(x_4017.x, x_4017.y, x_4017.w) * vec3<f32>(x_4019.z, x_4019.z, x_4019.z)) + vec3<f32>(x_4022.x, x_4022.y, x_4022.z));
        let x_4025 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4024.x, x_4024.y, x_4024.z, x_4025.w);
        let x_4027 : vec4<f32> = u_xlat11;
        let x_4029 : i32 = u_xlati88;
        let x_4032 : i32 = u_xlati88;
        let x_4036 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_4029 + 3i) / 4i)][((x_4032 + 3i) % 4i)];
        let x_4038 : vec3<f32> = (vec3<f32>(x_4027.x, x_4027.y, x_4027.z) + vec3<f32>(x_4036.x, x_4036.y, x_4036.w));
        let x_4039 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4038.x, x_4038.y, x_4038.z, x_4039.w);
        let x_4041 : vec4<f32> = u_xlat11;
        let x_4043 : vec4<f32> = u_xlat11;
        let x_4045 : vec2<f32> = (vec2<f32>(x_4041.x, x_4041.y) / vec2<f32>(x_4043.z, x_4043.z));
        let x_4046 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4045.x, x_4045.y, x_4046.z, x_4046.w);
        let x_4048 : vec4<f32> = u_xlat11;
        let x_4051 : vec2<f32> = ((vec2<f32>(x_4048.x, x_4048.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4052 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4051.x, x_4051.y, x_4052.z, x_4052.w);
        let x_4054 : vec4<f32> = u_xlat11;
        let x_4058 : vec2<f32> = clamp(vec2<f32>(x_4054.x, x_4054.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4059 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4058.x, x_4058.y, x_4059.z, x_4059.w);
        let x_4061 : i32 = u_xlati83;
        let x_4063 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[x_4061];
        let x_4065 : vec4<f32> = u_xlat11;
        let x_4068 : i32 = u_xlati83;
        let x_4070 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[x_4068];
        let x_4072 : vec2<f32> = ((vec2<f32>(x_4063.x, x_4063.y) * vec2<f32>(x_4065.x, x_4065.y)) + vec2<f32>(x_4070.z, x_4070.w));
        let x_4073 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4072.x, x_4072.y, x_4073.z, x_4073.w);
      } else {
        let x_4076 : i32 = u_xlati86;
        u_xlatb86 = (x_4076 == 1i);
        let x_4078 : bool = u_xlatb86;
        u_xlati86 = select(0i, 1i, x_4078);
        let x_4080 : i32 = u_xlati86;
        if ((x_4080 != 0i)) {
          let x_4085 : vec3<f32> = vs_TEXCOORD7;
          let x_4087 : i32 = u_xlati88;
          let x_4090 : i32 = u_xlati88;
          let x_4094 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_4087 + 1i) / 4i)][((x_4090 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4085.y, x_4085.y) * vec2<f32>(x_4094.x, x_4094.y));
          let x_4097 : i32 = u_xlati88;
          let x_4099 : i32 = u_xlati88;
          let x_4102 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[(x_4097 / 4i)][(x_4099 % 4i)];
          let x_4104 : vec3<f32> = vs_TEXCOORD7;
          let x_4107 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4102.x, x_4102.y) * vec2<f32>(x_4104.x, x_4104.x)) + x_4107);
          let x_4109 : i32 = u_xlati88;
          let x_4112 : i32 = u_xlati88;
          let x_4116 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_4109 + 2i) / 4i)][((x_4112 + 2i) % 4i)];
          let x_4118 : vec3<f32> = vs_TEXCOORD7;
          let x_4121 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4116.x, x_4116.y) * vec2<f32>(x_4118.z, x_4118.z)) + x_4121);
          let x_4123 : vec2<f32> = u_xlat63;
          let x_4124 : i32 = u_xlati88;
          let x_4127 : i32 = u_xlati88;
          let x_4131 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_4124 + 3i) / 4i)][((x_4127 + 3i) % 4i)];
          u_xlat63 = (x_4123 + vec2<f32>(x_4131.x, x_4131.y));
          let x_4134 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4134 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4137 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4137);
          let x_4139 : i32 = u_xlati83;
          let x_4141 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[x_4139];
          let x_4143 : vec2<f32> = u_xlat63;
          let x_4145 : i32 = u_xlati83;
          let x_4147 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[x_4145];
          let x_4149 : vec2<f32> = ((vec2<f32>(x_4141.x, x_4141.y) * x_4143) + vec2<f32>(x_4147.z, x_4147.w));
          let x_4150 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4149.x, x_4149.y, x_4150.z, x_4150.w);
        } else {
          let x_4153 : vec3<f32> = vs_TEXCOORD7;
          let x_4155 : i32 = u_xlati88;
          let x_4158 : i32 = u_xlati88;
          let x_4162 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_4155 + 1i) / 4i)][((x_4158 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4153.y, x_4153.y, x_4153.y, x_4153.y) * x_4162);
          let x_4164 : i32 = u_xlati88;
          let x_4166 : i32 = u_xlati88;
          let x_4169 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[(x_4164 / 4i)][(x_4166 % 4i)];
          let x_4170 : vec3<f32> = vs_TEXCOORD7;
          let x_4173 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4169 * vec4<f32>(x_4170.x, x_4170.x, x_4170.x, x_4170.x)) + x_4173);
          let x_4175 : i32 = u_xlati88;
          let x_4178 : i32 = u_xlati88;
          let x_4182 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_4175 + 2i) / 4i)][((x_4178 + 2i) % 4i)];
          let x_4183 : vec3<f32> = vs_TEXCOORD7;
          let x_4186 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4182 * vec4<f32>(x_4183.z, x_4183.z, x_4183.z, x_4183.z)) + x_4186);
          let x_4188 : vec4<f32> = u_xlat12;
          let x_4189 : i32 = u_xlati88;
          let x_4192 : i32 = u_xlati88;
          let x_4196 : vec4<f32> = x_2055.x_AdditionalLightsWorldToLights[((x_4189 + 3i) / 4i)][((x_4192 + 3i) % 4i)];
          u_xlat12 = (x_4188 + x_4196);
          let x_4198 : vec4<f32> = u_xlat12;
          let x_4200 : vec4<f32> = u_xlat12;
          let x_4202 : vec3<f32> = (vec3<f32>(x_4198.x, x_4198.y, x_4198.z) / vec3<f32>(x_4200.w, x_4200.w, x_4200.w));
          let x_4203 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4202.x, x_4202.y, x_4202.z, x_4203.w);
          let x_4205 : vec4<f32> = u_xlat12;
          let x_4207 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(vec3<f32>(x_4205.x, x_4205.y, x_4205.z), vec3<f32>(x_4207.x, x_4207.y, x_4207.z));
          let x_4210 : f32 = u_xlat86;
          u_xlat86 = inverseSqrt(x_4210);
          let x_4212 : f32 = u_xlat86;
          let x_4214 : vec4<f32> = u_xlat12;
          let x_4216 : vec3<f32> = (vec3<f32>(x_4212, x_4212, x_4212) * vec3<f32>(x_4214.x, x_4214.y, x_4214.z));
          let x_4217 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4216.x, x_4216.y, x_4216.z, x_4217.w);
          let x_4219 : vec4<f32> = u_xlat12;
          u_xlat86 = dot(abs(vec3<f32>(x_4219.x, x_4219.y, x_4219.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4224 : f32 = u_xlat86;
          u_xlat86 = max(x_4224, 0.00000099999999747524f);
          let x_4227 : f32 = u_xlat86;
          u_xlat86 = (1.0f / x_4227);
          let x_4229 : f32 = u_xlat86;
          let x_4231 : vec4<f32> = u_xlat12;
          let x_4233 : vec3<f32> = (vec3<f32>(x_4229, x_4229, x_4229) * vec3<f32>(x_4231.z, x_4231.x, x_4231.y));
          let x_4234 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4233.x, x_4233.y, x_4233.z, x_4234.w);
          let x_4237 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4237);
          let x_4241 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4241, 0.0f, 1.0f);
          let x_4245 : vec4<f32> = u_xlat13;
          let x_4247 : vec4<bool> = (vec4<f32>(x_4245.y, x_4245.z, x_4245.y, x_4245.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4247.x, x_4247.y);
          let x_4250 : bool = u_xlatb63.x;
          if (x_4250) {
            let x_4255 : f32 = u_xlat13.x;
            x_4251 = x_4255;
          } else {
            let x_4258 : f32 = u_xlat13.x;
            x_4251 = -(x_4258);
          }
          let x_4260 : f32 = x_4251;
          u_xlat63.x = x_4260;
          let x_4263 : bool = u_xlatb63.y;
          if (x_4263) {
            let x_4268 : f32 = u_xlat13.x;
            x_4264 = x_4268;
          } else {
            let x_4271 : f32 = u_xlat13.x;
            x_4264 = -(x_4271);
          }
          let x_4273 : f32 = x_4264;
          u_xlat63.y = x_4273;
          let x_4275 : vec4<f32> = u_xlat12;
          let x_4277 : f32 = u_xlat86;
          let x_4280 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4275.x, x_4275.y) * vec2<f32>(x_4277, x_4277)) + x_4280);
          let x_4282 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4282 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4285 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4285, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4289 : i32 = u_xlati83;
          let x_4291 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[x_4289];
          let x_4293 : vec2<f32> = u_xlat63;
          let x_4295 : i32 = u_xlati83;
          let x_4297 : vec4<f32> = x_2055.x_AdditionalLightsCookieAtlasUVRects[x_4295];
          let x_4299 : vec2<f32> = ((vec2<f32>(x_4291.x, x_4291.y) * x_4293) + vec2<f32>(x_4297.z, x_4297.w));
          let x_4300 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4299.x, x_4299.y, x_4300.z, x_4300.w);
        }
      }
      let x_4307 : vec4<f32> = u_xlat11;
      let x_4309 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4307.x, x_4307.y), 0.0f);
      u_xlat11 = x_4309;
      let x_4311 : bool = u_xlatb7.y;
      if (x_4311) {
        let x_4316 : f32 = u_xlat11.w;
        x_4312 = x_4316;
      } else {
        let x_4319 : f32 = u_xlat11.x;
        x_4312 = x_4319;
      }
      let x_4320 : f32 = x_4312;
      u_xlat86 = x_4320;
      let x_4322 : bool = u_xlatb7.x;
      if (x_4322) {
        let x_4326 : vec4<f32> = u_xlat11;
        x_4323 = vec3<f32>(x_4326.x, x_4326.y, x_4326.z);
      } else {
        let x_4329 : f32 = u_xlat86;
        x_4323 = vec3<f32>(x_4329, x_4329, x_4329);
      }
      let x_4331 : vec3<f32> = x_4323;
      let x_4332 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4331.x, x_4331.y, x_4331.z, x_4332.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4338 : vec4<f32> = u_xlat11;
    let x_4340 : i32 = u_xlati83;
    let x_4342 : vec4<f32> = x_2534.x_AdditionalLightsColor[x_4340];
    let x_4344 : vec3<f32> = (vec3<f32>(x_4338.x, x_4338.y, x_4338.z) * vec3<f32>(x_4342.x, x_4342.y, x_4342.z));
    let x_4345 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4344.x, x_4344.y, x_4344.z, x_4345.w);
    let x_4347 : f32 = u_xlat84;
    let x_4348 : f32 = u_xlat85;
    u_xlat83 = (x_4347 * x_4348);
    let x_4350 : vec4<f32> = u_xlat1;
    let x_4352 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4350.x, x_4350.y, x_4350.z), vec3<f32>(x_4352.x, x_4352.y, x_4352.z));
    let x_4355 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4355, 0.0f, 1.0f);
    let x_4357 : f32 = u_xlat83;
    let x_4358 : f32 = u_xlat84;
    u_xlat83 = (x_4357 * x_4358);
    let x_4360 : f32 = u_xlat83;
    let x_4362 : vec4<f32> = u_xlat11;
    let x_4364 : vec3<f32> = (vec3<f32>(x_4360, x_4360, x_4360) * vec3<f32>(x_4362.x, x_4362.y, x_4362.z));
    let x_4365 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4364.x, x_4364.y, x_4364.z, x_4365.w);
    let x_4367 : vec4<f32> = u_xlat9;
    let x_4369 : f32 = u_xlat59;
    let x_4372 : vec3<f32> = u_xlat2;
    let x_4373 : vec3<f32> = ((vec3<f32>(x_4367.x, x_4367.y, x_4367.z) * vec3<f32>(x_4369, x_4369, x_4369)) + x_4372);
    let x_4374 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4373.x, x_4373.y, x_4373.z, x_4374.w);
    let x_4376 : vec4<f32> = u_xlat9;
    let x_4378 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4376.x, x_4376.y, x_4376.z), vec3<f32>(x_4378.x, x_4378.y, x_4378.z));
    let x_4381 : f32 = u_xlat83;
    u_xlat83 = max(x_4381, 1.17549435e-38f);
    let x_4383 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_4383);
    let x_4385 : f32 = u_xlat83;
    let x_4387 : vec4<f32> = u_xlat9;
    let x_4389 : vec3<f32> = (vec3<f32>(x_4385, x_4385, x_4385) * vec3<f32>(x_4387.x, x_4387.y, x_4387.z));
    let x_4390 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4389.x, x_4389.y, x_4389.z, x_4390.w);
    let x_4392 : vec4<f32> = u_xlat1;
    let x_4394 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4392.x, x_4392.y, x_4392.z), vec3<f32>(x_4394.x, x_4394.y, x_4394.z));
    let x_4397 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4397, 0.0f, 1.0f);
    let x_4399 : vec4<f32> = u_xlat10;
    let x_4401 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4399.x, x_4399.y, x_4399.z), vec3<f32>(x_4401.x, x_4401.y, x_4401.z));
    let x_4404 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4404, 0.0f, 1.0f);
    let x_4406 : f32 = u_xlat83;
    let x_4407 : f32 = u_xlat83;
    u_xlat83 = (x_4406 * x_4407);
    let x_4409 : f32 = u_xlat83;
    let x_4411 : f32 = u_xlat0.x;
    u_xlat83 = ((x_4409 * x_4411) + 1.00001001358032226562f);
    let x_4414 : f32 = u_xlat84;
    let x_4415 : f32 = u_xlat84;
    u_xlat84 = (x_4414 * x_4415);
    let x_4417 : f32 = u_xlat83;
    let x_4418 : f32 = u_xlat83;
    u_xlat83 = (x_4417 * x_4418);
    let x_4420 : f32 = u_xlat84;
    u_xlat84 = max(x_4420, 0.10000000149011611938f);
    let x_4422 : f32 = u_xlat83;
    let x_4423 : f32 = u_xlat84;
    u_xlat83 = (x_4422 * x_4423);
    let x_4425 : f32 = u_xlat81;
    let x_4426 : f32 = u_xlat83;
    u_xlat83 = (x_4425 * x_4426);
    let x_4428 : f32 = u_xlat79;
    let x_4429 : f32 = u_xlat83;
    u_xlat83 = (x_4428 / x_4429);
    let x_4431 : vec4<f32> = u_xlat5;
    let x_4433 : f32 = u_xlat83;
    let x_4436 : vec4<f32> = u_xlat4;
    let x_4438 : vec3<f32> = ((vec3<f32>(x_4431.x, x_4431.y, x_4431.z) * vec3<f32>(x_4433, x_4433, x_4433)) + vec3<f32>(x_4436.x, x_4436.y, x_4436.z));
    let x_4439 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4438.x, x_4438.y, x_4438.z, x_4439.w);
    let x_4441 : vec4<f32> = u_xlat9;
    let x_4443 : vec4<f32> = u_xlat11;
    let x_4446 : vec4<f32> = u_xlat8;
    let x_4448 : vec3<f32> = ((vec3<f32>(x_4441.x, x_4441.y, x_4441.z) * vec3<f32>(x_4443.x, x_4443.y, x_4443.z)) + vec3<f32>(x_4446.x, x_4446.y, x_4446.z));
    let x_4449 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4448.x, x_4448.y, x_4448.z, x_4449.w);

    continuing {
      let x_4451 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4451 + bitcast<u32>(1i));
    }
  }
  let x_4453 : vec4<f32> = u_xlat3;
  let x_4455 : f32 = u_xlat26;
  let x_4458 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_4453.x, x_4453.y, x_4453.z) * vec3<f32>(x_4455, x_4455, x_4455)) + vec3<f32>(x_4458.x, x_4458.y, x_4458.z));
  let x_4461 : vec4<f32> = u_xlat8;
  let x_4463 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4461.x, x_4461.y, x_4461.z) + x_4463);
  let x_4467 : f32 = u_xlat78;
  let x_4469 : vec3<f32> = u_xlat0;
  let x_4470 : vec3<f32> = (vec3<f32>(x_4467, x_4467, x_4467) * x_4469);
  let x_4471 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4470.x, x_4470.y, x_4470.z, x_4471.w);
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


