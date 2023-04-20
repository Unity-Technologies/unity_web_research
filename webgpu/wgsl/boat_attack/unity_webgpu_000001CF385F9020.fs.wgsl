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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(12) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(17) var sampler_Control : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Splat0 : sampler;

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

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat26 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_868 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu79 : u32;

var<private> u_xlati79 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

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

var<private> u_xlat86 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb28 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2605 : UnityPerDraw;

var<private> u_xlatu52 : u32;

var<private> u_xlatu54 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati54 : i32;

@group(1) @binding(1) var<uniform> x_2894 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(14) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb86 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu28 : u32;

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
  var x_2479 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3026 : f32;
  var x_3036 : f32;
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
  let x_97 : vec3<f32> = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_103 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_108 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_110 : vec3<f32> = ((vec3<f32>(x_103.x, x_103.w, x_103.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_108.x, x_108.w, x_108.y));
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_110.z);
  let x_116 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_120 : vec2<f32> = (vec2<f32>(x_116.z, x_116.w) + vec2<f32>(-1.0f, -1.0f));
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  let x_125 : vec4<f32> = u_xlat4;
  let x_129 : vec2<f32> = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.x, x_125.y)) + vec2<f32>(0.5f, 0.5f));
  let x_130 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_132 : vec4<f32> = u_xlat4;
  let x_135 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_137 : vec2<f32> = (vec2<f32>(x_132.x, x_132.y) * vec2<f32>(x_135.x, x_135.y));
  let x_138 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_145 : vec4<f32> = u_xlat4;
  let x_148 : f32 = x_29.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat4 = x_149;
  let x_151 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_151, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_162 : vec4<f32> = vs_TEXCOORD1;
  let x_165 : f32 = x_29.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_162.x, x_162.y), x_165);
  u_xlat5 = x_166;
  let x_172 : vec4<f32> = vs_TEXCOORD1;
  let x_175 : f32 = x_29.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_172.z, x_172.w), x_175);
  u_xlat6 = x_176;
  let x_183 : vec4<f32> = vs_TEXCOORD2;
  let x_186 : f32 = x_29.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_183.x, x_183.y), x_186);
  u_xlat7 = x_187;
  let x_193 : vec4<f32> = vs_TEXCOORD2;
  let x_196 : f32 = x_29.x_GlobalMipBias.x;
  let x_197 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_193.z, x_193.w), x_196);
  u_xlat8 = x_197;
  let x_201 : f32 = u_xlat5.w;
  u_xlat9.x = x_201;
  let x_204 : f32 = u_xlat6.w;
  u_xlat9.y = x_204;
  let x_208 : f32 = u_xlat7.w;
  u_xlat9.z = x_208;
  let x_212 : f32 = u_xlat8.w;
  u_xlat9.w = x_212;
  let x_215 : vec4<f32> = u_xlat9;
  let x_218 : f32 = x_59.x_Smoothness0;
  let x_221 : f32 = x_59.x_Smoothness1;
  let x_224 : f32 = x_59.x_Smoothness2;
  let x_227 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_215 * vec4<f32>(x_218, x_221, x_224, x_227));
  let x_234 : f32 = x_59.x_NumLayersCount;
  u_xlatb79 = (4.0f >= x_234);
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_237) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_240 : vec4<f32> = u_xlat9;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_240 + -(x_241));
  let x_244 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_244 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_248 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_248, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_252 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_252 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_256);
  let x_259 : vec4<f32> = u_xlat4;
  let x_260 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_259 + -(x_260));
  let x_265 : f32 = u_xlat12.x;
  let x_268 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_265 * x_268);
  let x_272 : f32 = u_xlat12.y;
  let x_275 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_272 * x_275);
  let x_279 : f32 = u_xlat12.z;
  let x_282 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_279 * x_282);
  let x_286 : f32 = u_xlat12.w;
  let x_289 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_286 * x_289);
  let x_292 : vec4<f32> = u_xlat11;
  let x_293 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_292 + x_293);
  let x_295 : bool = u_xlatb79;
  let x_296 : vec4<f32> = u_xlat11;
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_297, x_296, vec4<bool>(x_295, x_295, x_295, x_295));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat79 = dot(x_302, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_306 : f32 = u_xlat79;
  u_xlatb80 = (0.00499999988824129105f >= x_306);
  let x_308 : bool = u_xlatb80;
  if (((select(0i, 1i, x_308) * -1i) != 0i)) {
    discard;
  }
  let x_315 : f32 = u_xlat79;
  u_xlat79 = (x_315 + 0.00006103515625f);
  let x_318 : vec4<f32> = u_xlat4;
  let x_319 : f32 = u_xlat79;
  u_xlat4 = (x_318 / vec4<f32>(x_319, x_319, x_319, x_319));
  let x_322 : vec4<f32> = u_xlat4;
  let x_325 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_327 : vec3<f32> = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat6;
  let x_340 : vec4<f32> = u_xlat12;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat5;
  let x_347 : vec4<f32> = u_xlat11;
  let x_350 : vec4<f32> = u_xlat6;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat4;
  let x_358 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_360 : vec3<f32> = (vec3<f32>(x_355.z, x_355.z, x_355.z) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat7;
  let x_365 : vec4<f32> = u_xlat6;
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.y, x_365.z)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat4;
  let x_376 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_378 : vec3<f32> = (vec3<f32>(x_373.w, x_373.w, x_373.w) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat8;
  let x_383 : vec4<f32> = u_xlat6;
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(x_383.x, x_383.y, x_383.z)) + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_396 : vec4<f32> = vs_TEXCOORD1;
  let x_399 : f32 = x_29.x_GlobalMipBias.x;
  let x_400 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_396.x, x_396.y), x_399);
  let x_401 : vec3<f32> = vec3<f32>(x_400.x, x_400.y, x_400.w);
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : f32 = u_xlat6.x;
  let x_407 : f32 = u_xlat6.z;
  u_xlat6.x = (x_405 * x_407);
  let x_410 : vec4<f32> = u_xlat6;
  let x_415 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_416 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat6;
  let x_420 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_418.x, x_418.y), vec2<f32>(x_420.x, x_420.y));
  let x_423 : f32 = u_xlat79;
  u_xlat79 = min(x_423, 1.0f);
  let x_425 : f32 = u_xlat79;
  u_xlat79 = (-(x_425) + 1.0f);
  let x_428 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_428);
  let x_430 : f32 = u_xlat79;
  u_xlat7.z = max(x_430, 0.0000000000000001f);
  let x_434 : vec4<f32> = u_xlat6;
  let x_437 : f32 = x_59.x_NormalScale0;
  let x_439 : vec2<f32> = (vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_437, x_437));
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_446 : vec4<f32> = vs_TEXCOORD1;
  let x_449 : f32 = x_29.x_GlobalMipBias.x;
  let x_450 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_446.z, x_446.w), x_449);
  let x_451 : vec3<f32> = vec3<f32>(x_450.x, x_450.y, x_450.w);
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = u_xlat6.x;
  let x_457 : f32 = u_xlat6.z;
  u_xlat6.x = (x_455 * x_457);
  let x_460 : vec4<f32> = u_xlat6;
  let x_463 : vec2<f32> = ((vec2<f32>(x_460.x, x_460.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat6;
  let x_468 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec2<f32>(x_466.x, x_466.y), vec2<f32>(x_468.x, x_468.y));
  let x_471 : f32 = u_xlat79;
  u_xlat79 = min(x_471, 1.0f);
  let x_473 : f32 = u_xlat79;
  u_xlat79 = (-(x_473) + 1.0f);
  let x_476 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_476);
  let x_478 : f32 = u_xlat79;
  u_xlat8.z = max(x_478, 0.0000000000000001f);
  let x_481 : vec4<f32> = u_xlat6;
  let x_484 : f32 = x_59.x_NormalScale1;
  let x_486 : f32 = x_59.x_NormalScale1;
  let x_487 : vec2<f32> = vec2<f32>(x_484, x_486);
  let x_491 : vec2<f32> = (vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_487.x, x_487.y));
  let x_492 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat4;
  let x_496 : vec4<f32> = u_xlat8;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.y, x_494.y, x_494.y) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : vec4<f32> = u_xlat7;
  let x_506 : vec4<f32> = u_xlat6;
  let x_508 : vec3<f32> = ((vec3<f32>(x_501.x, x_501.x, x_501.x) * vec3<f32>(x_503.x, x_503.y, x_503.z)) + vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_515 : vec4<f32> = vs_TEXCOORD2;
  let x_518 : f32 = x_29.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_515.x, x_515.y), x_518);
  let x_520 : vec3<f32> = vec3<f32>(x_519.x, x_519.y, x_519.w);
  let x_521 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_524 : f32 = u_xlat7.x;
  let x_526 : f32 = u_xlat7.z;
  u_xlat7.x = (x_524 * x_526);
  let x_529 : vec4<f32> = u_xlat7;
  let x_532 : vec2<f32> = ((vec2<f32>(x_529.x, x_529.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_533 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
  let x_535 : vec4<f32> = u_xlat7;
  let x_537 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_535.x, x_535.y), vec2<f32>(x_537.x, x_537.y));
  let x_540 : f32 = u_xlat79;
  u_xlat79 = min(x_540, 1.0f);
  let x_542 : f32 = u_xlat79;
  u_xlat79 = (-(x_542) + 1.0f);
  let x_545 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_545);
  let x_547 : f32 = u_xlat79;
  u_xlat8.z = max(x_547, 0.0000000000000001f);
  let x_550 : vec4<f32> = u_xlat7;
  let x_554 : f32 = x_59.x_NormalScale2;
  let x_556 : f32 = x_59.x_NormalScale2;
  let x_557 : vec2<f32> = vec2<f32>(x_554, x_556);
  let x_561 : vec2<f32> = (vec2<f32>(x_550.x, x_550.y) * vec2<f32>(x_557.x, x_557.y));
  let x_562 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
  let x_564 : vec4<f32> = u_xlat4;
  let x_566 : vec4<f32> = u_xlat8;
  let x_569 : vec4<f32> = u_xlat6;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.z, x_564.z, x_564.z) * vec3<f32>(x_566.x, x_566.y, x_566.z)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_578 : vec4<f32> = vs_TEXCOORD2;
  let x_581 : f32 = x_29.x_GlobalMipBias.x;
  let x_582 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_578.z, x_578.w), x_581);
  let x_583 : vec3<f32> = vec3<f32>(x_582.x, x_582.y, x_582.w);
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_587 : f32 = u_xlat7.x;
  let x_589 : f32 = u_xlat7.z;
  u_xlat7.x = (x_587 * x_589);
  let x_592 : vec4<f32> = u_xlat7;
  let x_595 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_596 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec2<f32>(x_598.x, x_598.y), vec2<f32>(x_600.x, x_600.y));
  let x_603 : f32 = u_xlat79;
  u_xlat79 = min(x_603, 1.0f);
  let x_605 : f32 = u_xlat79;
  u_xlat79 = (-(x_605) + 1.0f);
  let x_608 : f32 = u_xlat79;
  u_xlat79 = sqrt(x_608);
  let x_610 : f32 = u_xlat79;
  u_xlat8.z = max(x_610, 0.0000000000000001f);
  let x_613 : vec4<f32> = u_xlat7;
  let x_617 : f32 = x_59.x_NormalScale3;
  let x_619 : f32 = x_59.x_NormalScale3;
  let x_620 : vec2<f32> = vec2<f32>(x_617, x_619);
  let x_624 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_620.x, x_620.y));
  let x_625 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat4;
  let x_629 : vec4<f32> = u_xlat8;
  let x_632 : vec4<f32> = u_xlat6;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.w, x_627.w, x_627.w) * vec3<f32>(x_629.x, x_629.y, x_629.z)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_638 : f32 = u_xlat6.z;
  u_xlat6.w = (x_638 + 0.00000999999974737875f);
  let x_642 : vec4<f32> = u_xlat6;
  let x_644 : vec4<f32> = u_xlat6;
  u_xlat79 = dot(vec3<f32>(x_642.x, x_642.y, x_642.w), vec3<f32>(x_644.x, x_644.y, x_644.w));
  let x_647 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_647);
  let x_649 : f32 = u_xlat79;
  let x_651 : vec4<f32> = u_xlat6;
  let x_653 : vec3<f32> = (vec3<f32>(x_649, x_649, x_649) * vec3<f32>(x_651.x, x_651.y, x_651.w));
  let x_654 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_657 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_657;
  let x_660 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_660;
  let x_663 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_663;
  let x_666 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_666;
  let x_669 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_669;
  let x_672 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_672;
  let x_675 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_675;
  let x_678 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_678;
  let x_680 : vec4<f32> = u_xlat7;
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_680 + x_681);
  let x_684 : f32 = u_xlat0.z;
  u_xlat8.x = x_684;
  let x_687 : f32 = u_xlat1.z;
  u_xlat8.y = x_687;
  let x_690 : f32 = u_xlat2.z;
  u_xlat8.z = x_690;
  let x_693 : f32 = u_xlat3.y;
  u_xlat8.w = x_693;
  let x_695 : vec4<f32> = u_xlat9;
  let x_698 : f32 = x_59.x_Smoothness0;
  let x_700 : f32 = x_59.x_Smoothness1;
  let x_702 : f32 = x_59.x_Smoothness2;
  let x_704 : f32 = x_59.x_Smoothness3;
  let x_707 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_695) * vec4<f32>(x_698, x_700, x_702, x_704)) + x_707);
  let x_711 : f32 = x_59.x_LayerHasMask0;
  let x_714 : f32 = x_59.x_LayerHasMask1;
  let x_717 : f32 = x_59.x_LayerHasMask2;
  let x_720 : f32 = x_59.x_LayerHasMask3;
  let x_722 : vec4<f32> = u_xlat8;
  let x_724 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_711, x_714, x_717, x_720) * x_722) + x_724);
  let x_727 : vec4<f32> = u_xlat4;
  let x_728 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_727, x_728);
  let x_731 : f32 = u_xlat0.x;
  u_xlat8.x = x_731;
  let x_734 : f32 = u_xlat1.x;
  u_xlat8.y = x_734;
  let x_737 : f32 = u_xlat2.x;
  u_xlat8.z = x_737;
  let x_740 : f32 = u_xlat3.x;
  u_xlat8.w = x_740;
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : f32 = x_59.x_Metallic0;
  let x_748 : f32 = x_59.x_Metallic1;
  let x_751 : f32 = x_59.x_Metallic2;
  let x_754 : f32 = x_59.x_Metallic3;
  u_xlat8 = (x_742 + -(vec4<f32>(x_745, x_748, x_751, x_754)));
  let x_759 : f32 = x_59.x_LayerHasMask0;
  let x_761 : f32 = x_59.x_LayerHasMask1;
  let x_763 : f32 = x_59.x_LayerHasMask2;
  let x_765 : f32 = x_59.x_LayerHasMask3;
  let x_767 : vec4<f32> = u_xlat8;
  let x_770 : f32 = x_59.x_Metallic0;
  let x_772 : f32 = x_59.x_Metallic1;
  let x_774 : f32 = x_59.x_Metallic2;
  let x_776 : f32 = x_59.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_759, x_761, x_763, x_765) * x_767) + vec4<f32>(x_770, x_772, x_774, x_776));
  let x_779 : vec4<f32> = u_xlat4;
  let x_780 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_779, x_780);
  let x_784 : f32 = u_xlat0.y;
  u_xlat3.x = x_784;
  let x_787 : f32 = u_xlat1.y;
  u_xlat3.y = x_787;
  let x_790 : f32 = u_xlat2.y;
  u_xlat3.z = x_790;
  let x_792 : vec4<f32> = u_xlat7;
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_792) + x_794);
  let x_797 : f32 = x_59.x_LayerHasMask0;
  let x_799 : f32 = x_59.x_LayerHasMask1;
  let x_801 : f32 = x_59.x_LayerHasMask2;
  let x_803 : f32 = x_59.x_LayerHasMask3;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_797, x_799, x_801, x_803) * x_805) + x_807);
  let x_810 : vec4<f32> = u_xlat4;
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat26 = dot(x_810, x_811);
  let x_813 : vec4<f32> = u_xlat6;
  let x_816 : vec4<f32> = vs_TEXCOORD5;
  let x_818 : vec3<f32> = (vec3<f32>(x_813.y, x_813.y, x_813.y) * vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat6;
  let x_824 : vec4<f32> = vs_TEXCOORD4;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.x, x_821.x) * -(vec3<f32>(x_824.x, x_824.y, x_824.z))) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat6;
  let x_836 : vec4<f32> = vs_TEXCOORD3;
  let x_839 : vec4<f32> = u_xlat1;
  let x_841 : vec3<f32> = ((vec3<f32>(x_833.z, x_833.z, x_833.z) * vec3<f32>(x_836.x, x_836.y, x_836.z)) + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : vec4<f32> = u_xlat1;
  u_xlat79 = dot(vec3<f32>(x_844.x, x_844.y, x_844.z), vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_849);
  let x_851 : f32 = u_xlat79;
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = (vec3<f32>(x_851, x_851, x_851) * vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_860 : vec3<f32> = vs_TEXCOORD7;
  let x_870 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres0;
  let x_873 : vec3<f32> = (x_860 + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
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
  u_xlat79 = dot(x_972, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_976 : f32 = u_xlat79;
  u_xlat79 = (-(x_976) + 4.0f);
  let x_981 : f32 = u_xlat79;
  u_xlatu79 = u32(x_981);
  let x_985 : u32 = u_xlatu79;
  u_xlati79 = (bitcast<i32>(x_985) << bitcast<u32>(2i));
  let x_988 : vec3<f32> = vs_TEXCOORD7;
  let x_990 : i32 = u_xlati79;
  let x_993 : i32 = u_xlati79;
  let x_997 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_990 + 1i) / 4i)][((x_993 + 1i) % 4i)];
  let x_999 : vec3<f32> = (vec3<f32>(x_988.y, x_988.y, x_988.y) * vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : i32 = u_xlati79;
  let x_1004 : i32 = u_xlati79;
  let x_1007 : vec4<f32> = x_868.x_MainLightWorldToShadow[(x_1002 / 4i)][(x_1004 % 4i)];
  let x_1009 : vec3<f32> = vs_TEXCOORD7;
  let x_1012 : vec4<f32> = u_xlat2;
  let x_1014 : vec3<f32> = ((vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * vec3<f32>(x_1009.x, x_1009.x, x_1009.x)) + vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : i32 = u_xlati79;
  let x_1020 : i32 = u_xlati79;
  let x_1024 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
  let x_1026 : vec3<f32> = vs_TEXCOORD7;
  let x_1029 : vec4<f32> = u_xlat2;
  let x_1031 : vec3<f32> = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.z, x_1026.z, x_1026.z)) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1034 : vec4<f32> = u_xlat2;
  let x_1036 : i32 = u_xlati79;
  let x_1039 : i32 = u_xlati79;
  let x_1043 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1036 + 3i) / 4i)][((x_1039 + 3i) % 4i)];
  let x_1045 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) + vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1046 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1050 : f32 = vs_TEXCOORD7.y;
  let x_1052 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat79 = (x_1050 * x_1052);
  let x_1055 : f32 = x_29.unity_MatrixV[0i].z;
  let x_1057 : f32 = vs_TEXCOORD7.x;
  let x_1059 : f32 = u_xlat79;
  u_xlat79 = ((x_1055 * x_1057) + x_1059);
  let x_1062 : f32 = x_29.unity_MatrixV[2i].z;
  let x_1064 : f32 = vs_TEXCOORD7.z;
  let x_1066 : f32 = u_xlat79;
  u_xlat79 = ((x_1062 * x_1064) + x_1066);
  let x_1068 : f32 = u_xlat79;
  let x_1070 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat79 = (x_1068 + x_1070);
  let x_1072 : f32 = u_xlat79;
  let x_1075 : f32 = x_29.x_ProjectionParams.y;
  u_xlat79 = (-(x_1072) + -(x_1075));
  let x_1078 : f32 = u_xlat79;
  u_xlat79 = max(x_1078, 0.0f);
  let x_1080 : f32 = u_xlat79;
  let x_1082 : f32 = x_29.unity_FogParams.x;
  u_xlat79 = (x_1080 * x_1082);
  let x_1089 : vec4<f32> = vs_TEXCOORD0;
  let x_1092 : f32 = x_29.x_GlobalMipBias.x;
  let x_1093 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1089.z, x_1089.w), x_1092);
  u_xlat3 = x_1093;
  let x_1098 : vec4<f32> = vs_TEXCOORD0;
  let x_1101 : f32 = x_29.x_GlobalMipBias.x;
  let x_1102 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1098.z, x_1098.w), x_1101);
  let x_1103 : vec3<f32> = vec3<f32>(x_1102.x, x_1102.y, x_1102.z);
  let x_1104 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1106 : vec4<f32> = u_xlat3;
  let x_1110 : vec3<f32> = (vec3<f32>(x_1106.x, x_1106.y, x_1106.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
  let x_1114 : vec4<f32> = u_xlat1;
  let x_1116 : vec4<f32> = u_xlat3;
  u_xlat80 = dot(vec3<f32>(x_1114.x, x_1114.y, x_1114.z), vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : f32 = u_xlat80;
  u_xlat80 = (x_1119 + 0.5f);
  let x_1121 : f32 = u_xlat80;
  let x_1123 : vec4<f32> = u_xlat4;
  let x_1125 : vec3<f32> = (vec3<f32>(x_1121, x_1121, x_1121) * vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1129 : f32 = u_xlat3.w;
  u_xlat80 = max(x_1129, 0.00009999999747378752f);
  let x_1132 : vec4<f32> = u_xlat3;
  let x_1134 : f32 = u_xlat80;
  let x_1136 : vec3<f32> = (vec3<f32>(x_1132.x, x_1132.y, x_1132.z) / vec3<f32>(x_1134, x_1134, x_1134));
  let x_1137 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1140 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_1140) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1146 : f32 = u_xlat52;
  let x_1147 : f32 = u_xlat80;
  u_xlat81 = (x_1146 + -(x_1147));
  let x_1150 : f32 = u_xlat80;
  let x_1152 : vec4<f32> = u_xlat5;
  let x_1154 : vec3<f32> = (vec3<f32>(x_1150, x_1150, x_1150) * vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1155 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : vec4<f32> = u_xlat5;
  let x_1161 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.y, x_1157.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1162 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec3<f32> = u_xlat0;
  let x_1166 : vec4<f32> = u_xlat5;
  let x_1171 : vec3<f32> = ((vec3<f32>(x_1164.x, x_1164.x, x_1164.x) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1172 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : f32 = u_xlat52;
  u_xlat0.x = (-(x_1174) + 1.0f);
  let x_1179 : f32 = u_xlat0.x;
  let x_1181 : f32 = u_xlat0.x;
  u_xlat52 = (x_1179 * x_1181);
  let x_1183 : f32 = u_xlat52;
  u_xlat52 = max(x_1183, 0.0078125f);
  let x_1186 : f32 = u_xlat52;
  let x_1187 : f32 = u_xlat52;
  u_xlat80 = (x_1186 * x_1187);
  let x_1189 : f32 = u_xlat81;
  u_xlat81 = (x_1189 + 1.0f);
  let x_1191 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1191, 0.0f, 1.0f);
  let x_1194 : f32 = u_xlat52;
  u_xlat82 = ((x_1194 * 4.0f) + 2.0f);
  let x_1197 : f32 = u_xlat26;
  u_xlat26 = min(x_1197, 1.0f);
  let x_1201 : f32 = x_868.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_1201);
  let x_1203 : bool = u_xlatb83;
  if (x_1203) {
    let x_1207 : f32 = x_868.x_MainLightShadowParams.y;
    u_xlatb83 = (x_1207 == 1.0f);
    let x_1209 : bool = u_xlatb83;
    if (x_1209) {
      let x_1212 : vec4<f32> = u_xlat2;
      let x_1215 : vec4<f32> = x_868.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y) + x_1215);
      let x_1219 : vec4<f32> = u_xlat6;
      let x_1220 : vec2<f32> = vec2<f32>(x_1219.x, x_1219.y);
      let x_1222 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
      let x_1234 : vec3<f32> = txVec0;
      let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1234.xy, x_1234.z);
      u_xlat7.x = x_1236;
      let x_1239 : vec4<f32> = u_xlat6;
      let x_1240 : vec2<f32> = vec2<f32>(x_1239.z, x_1239.w);
      let x_1242 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
      let x_1249 : vec3<f32> = txVec1;
      let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1249.xy, x_1249.z);
      u_xlat7.y = x_1251;
      let x_1253 : vec4<f32> = u_xlat2;
      let x_1256 : vec4<f32> = x_868.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y) + x_1256);
      let x_1259 : vec4<f32> = u_xlat6;
      let x_1260 : vec2<f32> = vec2<f32>(x_1259.x, x_1259.y);
      let x_1262 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
      let x_1269 : vec3<f32> = txVec2;
      let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1269.xy, x_1269.z);
      u_xlat7.z = x_1271;
      let x_1274 : vec4<f32> = u_xlat6;
      let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
      let x_1277 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
      let x_1284 : vec3<f32> = txVec3;
      let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1284.xy, x_1284.z);
      u_xlat7.w = x_1286;
      let x_1289 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_1289, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1296 : f32 = x_868.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1296 == 2.0f);
      let x_1298 : bool = u_xlatb6;
      if (x_1298) {
        let x_1301 : vec4<f32> = u_xlat2;
        let x_1304 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.z, x_1304.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1308 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1310 : vec4<f32> = u_xlat6;
        let x_1312 : vec2<f32> = floor(vec2<f32>(x_1310.x, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1312.x, x_1312.y, x_1313.z, x_1313.w);
        let x_1317 : vec4<f32> = u_xlat2;
        let x_1320 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1320.z, x_1320.w)) + -(vec2<f32>(x_1323.x, x_1323.y)));
        let x_1327 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1327.x, x_1327.x, x_1327.y, x_1327.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1331 : vec4<f32> = u_xlat7;
        let x_1333 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1331.x, x_1331.x, x_1331.z, x_1331.z) * vec4<f32>(x_1333.x, x_1333.x, x_1333.z, x_1333.z));
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1340 : vec2<f32> = (vec2<f32>(x_1336.y, x_1336.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1341 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1340.x, x_1341.y, x_1340.y, x_1341.w);
        let x_1343 : vec4<f32> = u_xlat8;
        let x_1346 : vec2<f32> = u_xlat58;
        let x_1348 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1346));
        let x_1349 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
        let x_1352 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_1352) + vec2<f32>(1.0f, 1.0f));
        let x_1356 : vec2<f32> = u_xlat58;
        let x_1358 : vec2<f32> = min(x_1356, vec2<f32>(0.0f, 0.0f));
        let x_1359 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1358.x, x_1358.y, x_1359.z, x_1359.w);
        let x_1361 : vec4<f32> = u_xlat9;
        let x_1364 : vec4<f32> = u_xlat9;
        let x_1367 : vec2<f32> = u_xlat60;
        let x_1368 : vec2<f32> = ((-(vec2<f32>(x_1361.x, x_1361.y)) * vec2<f32>(x_1364.x, x_1364.y)) + x_1367);
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1369.w);
        let x_1371 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_1371, vec2<f32>(0.0f, 0.0f));
        let x_1373 : vec2<f32> = u_xlat58;
        let x_1375 : vec2<f32> = u_xlat58;
        let x_1377 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_1373) * x_1375) + vec2<f32>(x_1377.y, x_1377.w));
        let x_1380 : vec4<f32> = u_xlat9;
        let x_1382 : vec2<f32> = (vec2<f32>(x_1380.x, x_1380.y) + vec2<f32>(1.0f, 1.0f));
        let x_1383 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1382.x, x_1382.y, x_1383.z, x_1383.w);
        let x_1385 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1385 + vec2<f32>(1.0f, 1.0f));
        let x_1387 : vec4<f32> = u_xlat8;
        let x_1391 : vec2<f32> = (vec2<f32>(x_1387.x, x_1387.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1392 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        let x_1394 : vec2<f32> = u_xlat60;
        let x_1395 : vec2<f32> = (x_1394 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1395.x, x_1395.y, x_1396.z, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat9;
        let x_1400 : vec2<f32> = (vec2<f32>(x_1398.x, x_1398.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1401 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1400.x, x_1400.y, x_1401.z, x_1401.w);
        let x_1403 : vec2<f32> = u_xlat58;
        let x_1404 : vec2<f32> = (x_1403 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1405 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1405.w);
        let x_1407 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_1407.y, x_1407.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1411 : f32 = u_xlat9.x;
        u_xlat10.z = x_1411;
        let x_1414 : f32 = u_xlat58.x;
        u_xlat10.w = x_1414;
        let x_1417 : f32 = u_xlat11.x;
        u_xlat8.z = x_1417;
        let x_1420 : f32 = u_xlat7.x;
        u_xlat8.w = x_1420;
        let x_1422 : vec4<f32> = u_xlat8;
        let x_1424 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1422.z, x_1422.w, x_1422.x, x_1422.z) + vec4<f32>(x_1424.z, x_1424.w, x_1424.x, x_1424.z));
        let x_1428 : f32 = u_xlat10.y;
        u_xlat9.z = x_1428;
        let x_1431 : f32 = u_xlat58.y;
        u_xlat9.w = x_1431;
        let x_1434 : f32 = u_xlat8.y;
        u_xlat11.z = x_1434;
        let x_1437 : f32 = u_xlat7.z;
        u_xlat11.w = x_1437;
        let x_1439 : vec4<f32> = u_xlat9;
        let x_1441 : vec4<f32> = u_xlat11;
        let x_1443 : vec3<f32> = (vec3<f32>(x_1439.z, x_1439.y, x_1439.w) + vec3<f32>(x_1441.z, x_1441.y, x_1441.w));
        let x_1444 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
        let x_1446 : vec4<f32> = u_xlat8;
        let x_1448 : vec4<f32> = u_xlat12;
        let x_1450 : vec3<f32> = (vec3<f32>(x_1446.x, x_1446.z, x_1446.w) / vec3<f32>(x_1448.z, x_1448.w, x_1448.y));
        let x_1451 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
        let x_1453 : vec4<f32> = u_xlat8;
        let x_1458 : vec3<f32> = (vec3<f32>(x_1453.x, x_1453.y, x_1453.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1459 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
        let x_1461 : vec4<f32> = u_xlat11;
        let x_1463 : vec4<f32> = u_xlat7;
        let x_1465 : vec3<f32> = (vec3<f32>(x_1461.z, x_1461.y, x_1461.w) / vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
        let x_1466 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
        let x_1468 : vec4<f32> = u_xlat9;
        let x_1470 : vec3<f32> = (vec3<f32>(x_1468.x, x_1468.y, x_1468.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1471 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
        let x_1473 : vec4<f32> = u_xlat8;
        let x_1476 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1478 : vec3<f32> = (vec3<f32>(x_1473.y, x_1473.x, x_1473.z) * vec3<f32>(x_1476.x, x_1476.x, x_1476.x));
        let x_1479 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
        let x_1481 : vec4<f32> = u_xlat9;
        let x_1484 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1486 : vec3<f32> = (vec3<f32>(x_1481.x, x_1481.y, x_1481.z) * vec3<f32>(x_1484.y, x_1484.y, x_1484.y));
        let x_1487 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
        let x_1490 : f32 = u_xlat9.x;
        u_xlat8.w = x_1490;
        let x_1492 : vec4<f32> = u_xlat6;
        let x_1495 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1498 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1492.x, x_1492.y, x_1492.x, x_1492.y) * vec4<f32>(x_1495.x, x_1495.y, x_1495.x, x_1495.y)) + vec4<f32>(x_1498.y, x_1498.w, x_1498.x, x_1498.w));
        let x_1501 : vec4<f32> = u_xlat6;
        let x_1504 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1507 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1501.x, x_1501.y) * vec2<f32>(x_1504.x, x_1504.y)) + vec2<f32>(x_1507.z, x_1507.w));
        let x_1511 : f32 = u_xlat8.y;
        u_xlat9.w = x_1511;
        let x_1513 : vec4<f32> = u_xlat9;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.y, x_1513.z);
        let x_1515 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1515.x, x_1514.x, x_1515.z, x_1514.y);
        let x_1517 : vec4<f32> = u_xlat6;
        let x_1520 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1517.x, x_1517.y, x_1517.x, x_1517.y) * vec4<f32>(x_1520.x, x_1520.y, x_1520.x, x_1520.y)) + vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1523.y));
        let x_1526 : vec4<f32> = u_xlat6;
        let x_1529 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1532 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1526.x, x_1526.y, x_1526.x, x_1526.y) * vec4<f32>(x_1529.x, x_1529.y, x_1529.x, x_1529.y)) + vec4<f32>(x_1532.w, x_1532.y, x_1532.w, x_1532.z));
        let x_1535 : vec4<f32> = u_xlat6;
        let x_1538 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1541 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y) * vec4<f32>(x_1538.x, x_1538.y, x_1538.x, x_1538.y)) + vec4<f32>(x_1541.x, x_1541.w, x_1541.z, x_1541.w));
        let x_1544 : vec4<f32> = u_xlat7;
        let x_1546 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1544.x, x_1544.x, x_1544.x, x_1544.y) * vec4<f32>(x_1546.z, x_1546.w, x_1546.y, x_1546.z));
        let x_1550 : vec4<f32> = u_xlat7;
        let x_1552 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1550.y, x_1550.y, x_1550.z, x_1550.z) * x_1552);
        let x_1555 : f32 = u_xlat7.z;
        let x_1557 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1555 * x_1557);
        let x_1561 : vec4<f32> = u_xlat10;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.x, x_1561.y);
        let x_1564 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1572 : vec3<f32> = txVec4;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1572.xy, x_1572.z);
        u_xlat32 = x_1574;
        let x_1576 : vec4<f32> = u_xlat10;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.z, x_1576.w);
        let x_1579 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec5;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat7.x = x_1588;
        let x_1591 : f32 = u_xlat7.x;
        let x_1593 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1591 * x_1593);
        let x_1597 : f32 = u_xlat13.x;
        let x_1598 : f32 = u_xlat32;
        let x_1601 : f32 = u_xlat7.x;
        u_xlat32 = ((x_1597 * x_1598) + x_1601);
        let x_1604 : vec2<f32> = u_xlat58;
        let x_1606 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec6;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1613.xy, x_1613.z);
        u_xlat58.x = x_1615;
        let x_1618 : f32 = u_xlat13.z;
        let x_1620 : f32 = u_xlat58.x;
        let x_1622 : f32 = u_xlat32;
        u_xlat32 = ((x_1618 * x_1620) + x_1622);
        let x_1625 : vec4<f32> = u_xlat9;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.x, x_1625.y);
        let x_1628 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec7;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1635.xy, x_1635.z);
        u_xlat58.x = x_1637;
        let x_1640 : f32 = u_xlat13.w;
        let x_1642 : f32 = u_xlat58.x;
        let x_1644 : f32 = u_xlat32;
        u_xlat32 = ((x_1640 * x_1642) + x_1644);
        let x_1647 : vec4<f32> = u_xlat11;
        let x_1648 : vec2<f32> = vec2<f32>(x_1647.x, x_1647.y);
        let x_1650 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1648.x, x_1648.y, x_1650);
        let x_1657 : vec3<f32> = txVec8;
        let x_1659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1657.xy, x_1657.z);
        u_xlat58.x = x_1659;
        let x_1662 : f32 = u_xlat14.x;
        let x_1664 : f32 = u_xlat58.x;
        let x_1666 : f32 = u_xlat32;
        u_xlat32 = ((x_1662 * x_1664) + x_1666);
        let x_1669 : vec4<f32> = u_xlat11;
        let x_1670 : vec2<f32> = vec2<f32>(x_1669.z, x_1669.w);
        let x_1672 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1670.x, x_1670.y, x_1672);
        let x_1679 : vec3<f32> = txVec9;
        let x_1681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1679.xy, x_1679.z);
        u_xlat58.x = x_1681;
        let x_1684 : f32 = u_xlat14.y;
        let x_1686 : f32 = u_xlat58.x;
        let x_1688 : f32 = u_xlat32;
        u_xlat32 = ((x_1684 * x_1686) + x_1688);
        let x_1691 : vec4<f32> = u_xlat9;
        let x_1692 : vec2<f32> = vec2<f32>(x_1691.z, x_1691.w);
        let x_1694 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
        let x_1701 : vec3<f32> = txVec10;
        let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1701.xy, x_1701.z);
        u_xlat58.x = x_1703;
        let x_1706 : f32 = u_xlat14.z;
        let x_1708 : f32 = u_xlat58.x;
        let x_1710 : f32 = u_xlat32;
        u_xlat32 = ((x_1706 * x_1708) + x_1710);
        let x_1713 : vec4<f32> = u_xlat8;
        let x_1714 : vec2<f32> = vec2<f32>(x_1713.x, x_1713.y);
        let x_1716 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
        let x_1723 : vec3<f32> = txVec11;
        let x_1725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1723.xy, x_1723.z);
        u_xlat58.x = x_1725;
        let x_1728 : f32 = u_xlat14.w;
        let x_1730 : f32 = u_xlat58.x;
        let x_1732 : f32 = u_xlat32;
        u_xlat32 = ((x_1728 * x_1730) + x_1732);
        let x_1735 : vec4<f32> = u_xlat8;
        let x_1736 : vec2<f32> = vec2<f32>(x_1735.z, x_1735.w);
        let x_1738 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec12;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1745.xy, x_1745.z);
        u_xlat58.x = x_1747;
        let x_1750 : f32 = u_xlat6.x;
        let x_1752 : f32 = u_xlat58.x;
        let x_1754 : f32 = u_xlat32;
        u_xlat83 = ((x_1750 * x_1752) + x_1754);
      } else {
        let x_1757 : vec4<f32> = u_xlat2;
        let x_1760 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1763 : vec2<f32> = ((vec2<f32>(x_1757.x, x_1757.y) * vec2<f32>(x_1760.z, x_1760.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1764 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1763.x, x_1763.y, x_1764.z, x_1764.w);
        let x_1766 : vec4<f32> = u_xlat6;
        let x_1768 : vec2<f32> = floor(vec2<f32>(x_1766.x, x_1766.y));
        let x_1769 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1768.x, x_1768.y, x_1769.z, x_1769.w);
        let x_1771 : vec4<f32> = u_xlat2;
        let x_1774 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1777 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1771.x, x_1771.y) * vec2<f32>(x_1774.z, x_1774.w)) + -(vec2<f32>(x_1777.x, x_1777.y)));
        let x_1781 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1781.x, x_1781.x, x_1781.y, x_1781.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1784 : vec4<f32> = u_xlat7;
        let x_1786 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1784.x, x_1784.x, x_1784.z, x_1784.z) * vec4<f32>(x_1786.x, x_1786.x, x_1786.z, x_1786.z));
        let x_1789 : vec4<f32> = u_xlat8;
        let x_1793 : vec2<f32> = (vec2<f32>(x_1789.y, x_1789.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1794 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1794.x, x_1793.x, x_1794.z, x_1793.y);
        let x_1796 : vec4<f32> = u_xlat8;
        let x_1799 : vec2<f32> = u_xlat58;
        let x_1801 : vec2<f32> = ((vec2<f32>(x_1796.x, x_1796.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1799));
        let x_1802 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1801.x, x_1802.y, x_1801.y, x_1802.w);
        let x_1804 : vec2<f32> = u_xlat58;
        let x_1806 : vec2<f32> = (-(x_1804) + vec2<f32>(1.0f, 1.0f));
        let x_1807 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1806.x, x_1806.y, x_1807.z, x_1807.w);
        let x_1809 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1809, vec2<f32>(0.0f, 0.0f));
        let x_1811 : vec2<f32> = u_xlat60;
        let x_1813 : vec2<f32> = u_xlat60;
        let x_1815 : vec4<f32> = u_xlat8;
        let x_1817 : vec2<f32> = ((-(x_1811) * x_1813) + vec2<f32>(x_1815.x, x_1815.y));
        let x_1818 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1817.x, x_1817.y, x_1818.z, x_1818.w);
        let x_1820 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1820, vec2<f32>(0.0f, 0.0f));
        let x_1823 : vec2<f32> = u_xlat60;
        let x_1825 : vec2<f32> = u_xlat60;
        let x_1827 : vec4<f32> = u_xlat7;
        let x_1829 : vec2<f32> = ((-(x_1823) * x_1825) + vec2<f32>(x_1827.y, x_1827.w));
        let x_1830 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1829.x, x_1830.y, x_1829.y);
        let x_1832 : vec4<f32> = u_xlat8;
        let x_1834 : vec2<f32> = (vec2<f32>(x_1832.x, x_1832.y) + vec2<f32>(2.0f, 2.0f));
        let x_1835 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1834.x, x_1834.y, x_1835.z, x_1835.w);
        let x_1837 : vec3<f32> = u_xlat33;
        let x_1839 : vec2<f32> = (vec2<f32>(x_1837.x, x_1837.z) + vec2<f32>(2.0f, 2.0f));
        let x_1840 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1840.x, x_1839.x, x_1840.z, x_1839.y);
        let x_1843 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1843 * 0.08163200318813323975f);
        let x_1847 : vec4<f32> = u_xlat7;
        let x_1850 : vec3<f32> = (vec3<f32>(x_1847.z, x_1847.x, x_1847.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1851 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
        let x_1853 : vec4<f32> = u_xlat8;
        let x_1856 : vec2<f32> = (vec2<f32>(x_1853.x, x_1853.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1857 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1856.x, x_1856.y, x_1857.z, x_1857.w);
        let x_1860 : f32 = u_xlat11.y;
        u_xlat10.x = x_1860;
        let x_1862 : vec2<f32> = u_xlat58;
        let x_1869 : vec2<f32> = ((vec2<f32>(x_1862.x, x_1862.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1870 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1870.x, x_1869.x, x_1870.z, x_1869.y);
        let x_1872 : vec2<f32> = u_xlat58;
        let x_1876 : vec2<f32> = ((vec2<f32>(x_1872.x, x_1872.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1877 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1876.x, x_1877.y, x_1876.y, x_1877.w);
        let x_1880 : f32 = u_xlat7.x;
        u_xlat8.y = x_1880;
        let x_1883 : f32 = u_xlat9.y;
        u_xlat8.w = x_1883;
        let x_1885 : vec4<f32> = u_xlat8;
        let x_1886 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1885 + x_1886);
        let x_1888 : vec2<f32> = u_xlat58;
        let x_1891 : vec2<f32> = ((vec2<f32>(x_1888.y, x_1888.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1892 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1892.x, x_1891.x, x_1892.z, x_1891.y);
        let x_1894 : vec2<f32> = u_xlat58;
        let x_1897 : vec2<f32> = ((vec2<f32>(x_1894.y, x_1894.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1898 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1897.x, x_1898.y, x_1897.y, x_1898.w);
        let x_1901 : f32 = u_xlat7.y;
        u_xlat9.y = x_1901;
        let x_1903 : vec4<f32> = u_xlat9;
        let x_1904 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1903 + x_1904);
        let x_1906 : vec4<f32> = u_xlat8;
        let x_1907 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1906 / x_1907);
        let x_1909 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1909 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1915 : vec4<f32> = u_xlat9;
        let x_1916 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1915 / x_1916);
        let x_1918 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1918 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1920 : vec4<f32> = u_xlat8;
        let x_1923 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1920.w, x_1920.x, x_1920.y, x_1920.z) * vec4<f32>(x_1923.x, x_1923.x, x_1923.x, x_1923.x));
        let x_1926 : vec4<f32> = u_xlat9;
        let x_1929 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1926.x, x_1926.w, x_1926.y, x_1926.z) * vec4<f32>(x_1929.y, x_1929.y, x_1929.y, x_1929.y));
        let x_1932 : vec4<f32> = u_xlat8;
        let x_1933 : vec3<f32> = vec3<f32>(x_1932.y, x_1932.z, x_1932.w);
        let x_1934 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1933.x, x_1934.y, x_1933.y, x_1933.z);
        let x_1937 : f32 = u_xlat9.x;
        u_xlat11.y = x_1937;
        let x_1939 : vec4<f32> = u_xlat6;
        let x_1942 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1945 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1939.x, x_1939.y, x_1939.x, x_1939.y) * vec4<f32>(x_1942.x, x_1942.y, x_1942.x, x_1942.y)) + vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1945.y));
        let x_1948 : vec4<f32> = u_xlat6;
        let x_1951 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1954 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1948.x, x_1948.y) * vec2<f32>(x_1951.x, x_1951.y)) + vec2<f32>(x_1954.w, x_1954.y));
        let x_1958 : f32 = u_xlat11.y;
        u_xlat8.y = x_1958;
        let x_1961 : f32 = u_xlat9.z;
        u_xlat11.y = x_1961;
        let x_1963 : vec4<f32> = u_xlat6;
        let x_1966 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1969 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1963.x, x_1963.y, x_1963.x, x_1963.y) * vec4<f32>(x_1966.x, x_1966.y, x_1966.x, x_1966.y)) + vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1969.y));
        let x_1972 : vec4<f32> = u_xlat6;
        let x_1975 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1978 : vec4<f32> = u_xlat11;
        let x_1980 : vec2<f32> = ((vec2<f32>(x_1972.x, x_1972.y) * vec2<f32>(x_1975.x, x_1975.y)) + vec2<f32>(x_1978.w, x_1978.y));
        let x_1981 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1980.x, x_1980.y, x_1981.z, x_1981.w);
        let x_1984 : f32 = u_xlat11.y;
        u_xlat8.z = x_1984;
        let x_1987 : vec4<f32> = u_xlat6;
        let x_1990 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1993 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1987.x, x_1987.y, x_1987.x, x_1987.y) * vec4<f32>(x_1990.x, x_1990.y, x_1990.x, x_1990.y)) + vec4<f32>(x_1993.x, x_1993.y, x_1993.x, x_1993.z));
        let x_1997 : f32 = u_xlat9.w;
        u_xlat11.y = x_1997;
        let x_2000 : vec4<f32> = u_xlat6;
        let x_2003 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2006 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2000.x, x_2000.y, x_2000.x, x_2000.y) * vec4<f32>(x_2003.x, x_2003.y, x_2003.x, x_2003.y)) + vec4<f32>(x_2006.x, x_2006.y, x_2006.z, x_2006.y));
        let x_2010 : vec4<f32> = u_xlat6;
        let x_2013 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2016 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_2010.x, x_2010.y) * vec2<f32>(x_2013.x, x_2013.y)) + vec2<f32>(x_2016.w, x_2016.y));
        let x_2020 : f32 = u_xlat11.y;
        u_xlat8.w = x_2020;
        let x_2023 : vec4<f32> = u_xlat6;
        let x_2026 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2029 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_2023.x, x_2023.y) * vec2<f32>(x_2026.x, x_2026.y)) + vec2<f32>(x_2029.x, x_2029.w));
        let x_2032 : vec4<f32> = u_xlat11;
        let x_2033 : vec3<f32> = vec3<f32>(x_2032.x, x_2032.z, x_2032.w);
        let x_2034 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2033.x, x_2034.y, x_2033.y, x_2033.z);
        let x_2036 : vec4<f32> = u_xlat6;
        let x_2039 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2042 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2036.x, x_2036.y, x_2036.x, x_2036.y) * vec4<f32>(x_2039.x, x_2039.y, x_2039.x, x_2039.y)) + vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2042.y));
        let x_2046 : vec4<f32> = u_xlat6;
        let x_2049 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2052 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_2046.x, x_2046.y) * vec2<f32>(x_2049.x, x_2049.y)) + vec2<f32>(x_2052.w, x_2052.y));
        let x_2056 : f32 = u_xlat8.x;
        u_xlat9.x = x_2056;
        let x_2058 : vec4<f32> = u_xlat6;
        let x_2061 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2064 : vec4<f32> = u_xlat9;
        let x_2066 : vec2<f32> = ((vec2<f32>(x_2058.x, x_2058.y) * vec2<f32>(x_2061.x, x_2061.y)) + vec2<f32>(x_2064.x, x_2064.y));
        let x_2067 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2066.x, x_2066.y, x_2067.z, x_2067.w);
        let x_2070 : vec4<f32> = u_xlat7;
        let x_2072 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2070.x, x_2070.x, x_2070.x, x_2070.x) * x_2072);
        let x_2075 : vec4<f32> = u_xlat7;
        let x_2077 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2075.y, x_2075.y, x_2075.y, x_2075.y) * x_2077);
        let x_2080 : vec4<f32> = u_xlat7;
        let x_2082 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2080.z, x_2080.z, x_2080.z, x_2080.z) * x_2082);
        let x_2084 : vec4<f32> = u_xlat7;
        let x_2086 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2084.w, x_2084.w, x_2084.w, x_2084.w) * x_2086);
        let x_2089 : vec4<f32> = u_xlat12;
        let x_2090 : vec2<f32> = vec2<f32>(x_2089.x, x_2089.y);
        let x_2092 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec13;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2099.xy, x_2099.z);
        u_xlat8.x = x_2101;
        let x_2104 : vec4<f32> = u_xlat12;
        let x_2105 : vec2<f32> = vec2<f32>(x_2104.z, x_2104.w);
        let x_2107 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2105.x, x_2105.y, x_2107);
        let x_2115 : vec3<f32> = txVec14;
        let x_2117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2115.xy, x_2115.z);
        u_xlat86 = x_2117;
        let x_2118 : f32 = u_xlat86;
        let x_2120 : f32 = u_xlat17.y;
        u_xlat86 = (x_2118 * x_2120);
        let x_2123 : f32 = u_xlat17.x;
        let x_2125 : f32 = u_xlat8.x;
        let x_2127 : f32 = u_xlat86;
        u_xlat8.x = ((x_2123 * x_2125) + x_2127);
        let x_2131 : vec2<f32> = u_xlat58;
        let x_2133 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2131.x, x_2131.y, x_2133);
        let x_2140 : vec3<f32> = txVec15;
        let x_2142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2140.xy, x_2140.z);
        u_xlat58.x = x_2142;
        let x_2145 : f32 = u_xlat17.z;
        let x_2147 : f32 = u_xlat58.x;
        let x_2150 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_2145 * x_2147) + x_2150);
        let x_2154 : vec4<f32> = u_xlat15;
        let x_2155 : vec2<f32> = vec2<f32>(x_2154.x, x_2154.y);
        let x_2157 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
        let x_2165 : vec3<f32> = txVec16;
        let x_2167 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2165.xy, x_2165.z);
        u_xlat84 = x_2167;
        let x_2169 : f32 = u_xlat17.w;
        let x_2170 : f32 = u_xlat84;
        let x_2173 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2169 * x_2170) + x_2173);
        let x_2177 : vec4<f32> = u_xlat13;
        let x_2178 : vec2<f32> = vec2<f32>(x_2177.x, x_2177.y);
        let x_2180 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
        let x_2187 : vec3<f32> = txVec17;
        let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2187.xy, x_2187.z);
        u_xlat84 = x_2189;
        let x_2191 : f32 = u_xlat18.x;
        let x_2192 : f32 = u_xlat84;
        let x_2195 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2191 * x_2192) + x_2195);
        let x_2199 : vec4<f32> = u_xlat13;
        let x_2200 : vec2<f32> = vec2<f32>(x_2199.z, x_2199.w);
        let x_2202 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2200.x, x_2200.y, x_2202);
        let x_2209 : vec3<f32> = txVec18;
        let x_2211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2209.xy, x_2209.z);
        u_xlat84 = x_2211;
        let x_2213 : f32 = u_xlat18.y;
        let x_2214 : f32 = u_xlat84;
        let x_2217 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2213 * x_2214) + x_2217);
        let x_2221 : vec4<f32> = u_xlat14;
        let x_2222 : vec2<f32> = vec2<f32>(x_2221.x, x_2221.y);
        let x_2224 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2222.x, x_2222.y, x_2224);
        let x_2231 : vec3<f32> = txVec19;
        let x_2233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2231.xy, x_2231.z);
        u_xlat84 = x_2233;
        let x_2235 : f32 = u_xlat18.z;
        let x_2236 : f32 = u_xlat84;
        let x_2239 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2235 * x_2236) + x_2239);
        let x_2243 : vec4<f32> = u_xlat15;
        let x_2244 : vec2<f32> = vec2<f32>(x_2243.z, x_2243.w);
        let x_2246 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2244.x, x_2244.y, x_2246);
        let x_2253 : vec3<f32> = txVec20;
        let x_2255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2253.xy, x_2253.z);
        u_xlat84 = x_2255;
        let x_2257 : f32 = u_xlat18.w;
        let x_2258 : f32 = u_xlat84;
        let x_2261 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2257 * x_2258) + x_2261);
        let x_2265 : vec4<f32> = u_xlat16;
        let x_2266 : vec2<f32> = vec2<f32>(x_2265.x, x_2265.y);
        let x_2268 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2266.x, x_2266.y, x_2268);
        let x_2275 : vec3<f32> = txVec21;
        let x_2277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2275.xy, x_2275.z);
        u_xlat84 = x_2277;
        let x_2279 : f32 = u_xlat19.x;
        let x_2280 : f32 = u_xlat84;
        let x_2283 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2279 * x_2280) + x_2283);
        let x_2287 : vec4<f32> = u_xlat16;
        let x_2288 : vec2<f32> = vec2<f32>(x_2287.z, x_2287.w);
        let x_2290 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2288.x, x_2288.y, x_2290);
        let x_2297 : vec3<f32> = txVec22;
        let x_2299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2297.xy, x_2297.z);
        u_xlat84 = x_2299;
        let x_2301 : f32 = u_xlat19.y;
        let x_2302 : f32 = u_xlat84;
        let x_2305 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2301 * x_2302) + x_2305);
        let x_2309 : vec2<f32> = u_xlat34;
        let x_2311 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2309.x, x_2309.y, x_2311);
        let x_2318 : vec3<f32> = txVec23;
        let x_2320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2318.xy, x_2318.z);
        u_xlat84 = x_2320;
        let x_2322 : f32 = u_xlat19.z;
        let x_2323 : f32 = u_xlat84;
        let x_2326 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2322 * x_2323) + x_2326);
        let x_2330 : vec2<f32> = u_xlat66;
        let x_2332 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2330.x, x_2330.y, x_2332);
        let x_2339 : vec3<f32> = txVec24;
        let x_2341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2339.xy, x_2339.z);
        u_xlat84 = x_2341;
        let x_2343 : f32 = u_xlat19.w;
        let x_2344 : f32 = u_xlat84;
        let x_2347 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2343 * x_2344) + x_2347);
        let x_2351 : vec4<f32> = u_xlat11;
        let x_2352 : vec2<f32> = vec2<f32>(x_2351.x, x_2351.y);
        let x_2354 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2352.x, x_2352.y, x_2354);
        let x_2361 : vec3<f32> = txVec25;
        let x_2363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2361.xy, x_2361.z);
        u_xlat84 = x_2363;
        let x_2365 : f32 = u_xlat7.x;
        let x_2366 : f32 = u_xlat84;
        let x_2369 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2365 * x_2366) + x_2369);
        let x_2373 : vec4<f32> = u_xlat11;
        let x_2374 : vec2<f32> = vec2<f32>(x_2373.z, x_2373.w);
        let x_2376 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2374.x, x_2374.y, x_2376);
        let x_2383 : vec3<f32> = txVec26;
        let x_2385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
        u_xlat84 = x_2385;
        let x_2387 : f32 = u_xlat7.y;
        let x_2388 : f32 = u_xlat84;
        let x_2391 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2387 * x_2388) + x_2391);
        let x_2395 : vec2<f32> = u_xlat61;
        let x_2397 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2395.x, x_2395.y, x_2397);
        let x_2404 : vec3<f32> = txVec27;
        let x_2406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2404.xy, x_2404.z);
        u_xlat84 = x_2406;
        let x_2408 : f32 = u_xlat7.z;
        let x_2409 : f32 = u_xlat84;
        let x_2412 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_2408 * x_2409) + x_2412);
        let x_2416 : vec4<f32> = u_xlat6;
        let x_2417 : vec2<f32> = vec2<f32>(x_2416.x, x_2416.y);
        let x_2419 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2417.x, x_2417.y, x_2419);
        let x_2426 : vec3<f32> = txVec28;
        let x_2428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2426.xy, x_2426.z);
        u_xlat6.x = x_2428;
        let x_2431 : f32 = u_xlat7.w;
        let x_2433 : f32 = u_xlat6.x;
        let x_2436 : f32 = u_xlat58.x;
        u_xlat83 = ((x_2431 * x_2433) + x_2436);
      }
    }
  } else {
    let x_2440 : vec4<f32> = u_xlat2;
    let x_2441 : vec2<f32> = vec2<f32>(x_2440.x, x_2440.y);
    let x_2443 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2441.x, x_2441.y, x_2443);
    let x_2450 : vec3<f32> = txVec29;
    let x_2452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2450.xy, x_2450.z);
    u_xlat83 = x_2452;
  }
  let x_2454 : f32 = x_868.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2454) + 1.0f);
  let x_2458 : f32 = u_xlat83;
  let x_2460 : f32 = x_868.x_MainLightShadowParams.x;
  let x_2463 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2458 * x_2460) + x_2463);
  let x_2468 : f32 = u_xlat2.z;
  u_xlatb28 = (0.0f >= x_2468);
  let x_2472 : f32 = u_xlat2.z;
  u_xlatb54 = (x_2472 >= 1.0f);
  let x_2474 : bool = u_xlatb54;
  let x_2475 : bool = u_xlatb28;
  u_xlatb28 = (x_2474 | x_2475);
  let x_2477 : bool = u_xlatb28;
  if (x_2477) {
    x_2479 = 1.0f;
  } else {
    let x_2484 : f32 = u_xlat2.x;
    x_2479 = x_2484;
  }
  let x_2485 : f32 = x_2479;
  u_xlat2.x = x_2485;
  let x_2487 : vec3<f32> = vs_TEXCOORD7;
  let x_2490 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2492 : vec3<f32> = (x_2487 + -(x_2490));
  let x_2493 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2492.x, x_2492.y, x_2492.z, x_2493.w);
  let x_2496 : vec4<f32> = u_xlat6;
  let x_2498 : vec4<f32> = u_xlat6;
  u_xlat28 = dot(vec3<f32>(x_2496.x, x_2496.y, x_2496.z), vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
  let x_2502 : f32 = u_xlat28;
  let x_2504 : f32 = x_868.x_MainLightShadowParams.z;
  let x_2507 : f32 = x_868.x_MainLightShadowParams.w;
  u_xlat54 = ((x_2502 * x_2504) + x_2507);
  let x_2509 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2509, 0.0f, 1.0f);
  let x_2512 : f32 = u_xlat2.x;
  u_xlat83 = (-(x_2512) + 1.0f);
  let x_2515 : f32 = u_xlat54;
  let x_2516 : f32 = u_xlat83;
  let x_2519 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2515 * x_2516) + x_2519);
  let x_2523 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2523;
  let x_2526 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2526;
  let x_2529 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2529;
  let x_2531 : vec4<f32> = u_xlat6;
  let x_2534 : vec4<f32> = u_xlat1;
  u_xlat54 = dot(-(vec3<f32>(x_2531.x, x_2531.y, x_2531.z)), vec3<f32>(x_2534.x, x_2534.y, x_2534.z));
  let x_2537 : f32 = u_xlat54;
  let x_2538 : f32 = u_xlat54;
  u_xlat54 = (x_2537 + x_2538);
  let x_2540 : vec4<f32> = u_xlat1;
  let x_2542 : f32 = u_xlat54;
  let x_2546 : vec4<f32> = u_xlat6;
  let x_2549 : vec3<f32> = ((vec3<f32>(x_2540.x, x_2540.y, x_2540.z) * -(vec3<f32>(x_2542, x_2542, x_2542))) + -(vec3<f32>(x_2546.x, x_2546.y, x_2546.z)));
  let x_2550 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2549.x, x_2549.y, x_2549.z, x_2550.w);
  let x_2552 : vec4<f32> = u_xlat1;
  let x_2554 : vec4<f32> = u_xlat6;
  u_xlat54 = dot(vec3<f32>(x_2552.x, x_2552.y, x_2552.z), vec3<f32>(x_2554.x, x_2554.y, x_2554.z));
  let x_2557 : f32 = u_xlat54;
  u_xlat54 = clamp(x_2557, 0.0f, 1.0f);
  let x_2559 : f32 = u_xlat54;
  u_xlat54 = (-(x_2559) + 1.0f);
  let x_2562 : f32 = u_xlat54;
  let x_2563 : f32 = u_xlat54;
  u_xlat54 = (x_2562 * x_2563);
  let x_2565 : f32 = u_xlat54;
  let x_2566 : f32 = u_xlat54;
  u_xlat54 = (x_2565 * x_2566);
  let x_2569 : f32 = u_xlat0.x;
  u_xlat83 = ((-(x_2569) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2576 : f32 = u_xlat0.x;
  let x_2577 : f32 = u_xlat83;
  u_xlat0.x = (x_2576 * x_2577);
  let x_2581 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2581 * 6.0f);
  let x_2593 : vec4<f32> = u_xlat7;
  let x_2596 : f32 = u_xlat0.x;
  let x_2597 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2593.x, x_2593.y, x_2593.z), x_2596);
  u_xlat7 = x_2597;
  let x_2599 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2599 + -1.0f);
  let x_2607 : f32 = x_2605.unity_SpecCube0_HDR.w;
  let x_2609 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2607 * x_2609) + 1.0f);
  let x_2614 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2614, 0.0f);
  let x_2618 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2618);
  let x_2622 : f32 = u_xlat0.x;
  let x_2624 : f32 = x_2605.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2622 * x_2624);
  let x_2628 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2628);
  let x_2632 : f32 = u_xlat0.x;
  let x_2634 : f32 = x_2605.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2632 * x_2634);
  let x_2637 : vec4<f32> = u_xlat7;
  let x_2639 : vec3<f32> = u_xlat0;
  let x_2641 : vec3<f32> = (vec3<f32>(x_2637.x, x_2637.y, x_2637.z) * vec3<f32>(x_2639.x, x_2639.x, x_2639.x));
  let x_2642 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2641.x, x_2641.y, x_2641.z, x_2642.w);
  let x_2644 : f32 = u_xlat52;
  let x_2646 : f32 = u_xlat52;
  let x_2650 : vec2<f32> = ((vec2<f32>(x_2644, x_2644) * vec2<f32>(x_2646, x_2646)) + vec2<f32>(-1.0f, 1.0f));
  let x_2651 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2650.x, x_2651.y, x_2650.y);
  let x_2654 : f32 = u_xlat0.z;
  u_xlat52 = (1.0f / x_2654);
  let x_2656 : vec4<f32> = u_xlat5;
  let x_2659 : f32 = u_xlat81;
  let x_2661 : vec3<f32> = (-(vec3<f32>(x_2656.x, x_2656.y, x_2656.z)) + vec3<f32>(x_2659, x_2659, x_2659));
  let x_2662 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
  let x_2664 : f32 = u_xlat54;
  let x_2666 : vec4<f32> = u_xlat8;
  let x_2669 : vec4<f32> = u_xlat5;
  let x_2671 : vec3<f32> = ((vec3<f32>(x_2664, x_2664, x_2664) * vec3<f32>(x_2666.x, x_2666.y, x_2666.z)) + vec3<f32>(x_2669.x, x_2669.y, x_2669.z));
  let x_2672 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2671.x, x_2671.y, x_2671.z, x_2672.w);
  let x_2674 : f32 = u_xlat52;
  let x_2676 : vec4<f32> = u_xlat8;
  let x_2678 : vec3<f32> = (vec3<f32>(x_2674, x_2674, x_2674) * vec3<f32>(x_2676.x, x_2676.y, x_2676.z));
  let x_2679 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2678.x, x_2678.y, x_2678.z, x_2679.w);
  let x_2681 : vec4<f32> = u_xlat7;
  let x_2683 : vec4<f32> = u_xlat8;
  let x_2685 : vec3<f32> = (vec3<f32>(x_2681.x, x_2681.y, x_2681.z) * vec3<f32>(x_2683.x, x_2683.y, x_2683.z));
  let x_2686 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
  let x_2688 : vec4<f32> = u_xlat3;
  let x_2690 : vec4<f32> = u_xlat4;
  let x_2693 : vec4<f32> = u_xlat7;
  let x_2695 : vec3<f32> = ((vec3<f32>(x_2688.x, x_2688.y, x_2688.z) * vec3<f32>(x_2690.x, x_2690.y, x_2690.z)) + vec3<f32>(x_2693.x, x_2693.y, x_2693.z));
  let x_2696 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2696.w);
  let x_2699 : f32 = u_xlat2.x;
  let x_2701 : f32 = x_2605.unity_LightData.z;
  u_xlat52 = (x_2699 * x_2701);
  let x_2703 : vec4<f32> = u_xlat1;
  let x_2706 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2703.x, x_2703.y, x_2703.z), vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
  let x_2711 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2711, 0.0f, 1.0f);
  let x_2714 : f32 = u_xlat52;
  let x_2716 : f32 = u_xlat2.x;
  u_xlat52 = (x_2714 * x_2716);
  let x_2718 : f32 = u_xlat52;
  let x_2721 : vec4<f32> = x_29.x_MainLightColor;
  let x_2723 : vec3<f32> = (vec3<f32>(x_2718, x_2718, x_2718) * vec3<f32>(x_2721.x, x_2721.y, x_2721.z));
  let x_2724 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2724.w);
  let x_2726 : vec4<f32> = u_xlat6;
  let x_2729 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2731 : vec3<f32> = (vec3<f32>(x_2726.x, x_2726.y, x_2726.z) + vec3<f32>(x_2729.x, x_2729.y, x_2729.z));
  let x_2732 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2731.x, x_2731.y, x_2731.z, x_2732.w);
  let x_2734 : vec4<f32> = u_xlat8;
  let x_2736 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2734.x, x_2734.y, x_2734.z), vec3<f32>(x_2736.x, x_2736.y, x_2736.z));
  let x_2739 : f32 = u_xlat52;
  u_xlat52 = max(x_2739, 1.17549435e-38f);
  let x_2742 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_2742);
  let x_2744 : f32 = u_xlat52;
  let x_2746 : vec4<f32> = u_xlat8;
  let x_2748 : vec3<f32> = (vec3<f32>(x_2744, x_2744, x_2744) * vec3<f32>(x_2746.x, x_2746.y, x_2746.z));
  let x_2749 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
  let x_2751 : vec4<f32> = u_xlat1;
  let x_2753 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(vec3<f32>(x_2751.x, x_2751.y, x_2751.z), vec3<f32>(x_2753.x, x_2753.y, x_2753.z));
  let x_2756 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2756, 0.0f, 1.0f);
  let x_2759 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2761 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_2759.x, x_2759.y, x_2759.z), vec3<f32>(x_2761.x, x_2761.y, x_2761.z));
  let x_2766 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2766, 0.0f, 1.0f);
  let x_2769 : f32 = u_xlat52;
  let x_2770 : f32 = u_xlat52;
  u_xlat52 = (x_2769 * x_2770);
  let x_2772 : f32 = u_xlat52;
  let x_2774 : f32 = u_xlat0.x;
  u_xlat52 = ((x_2772 * x_2774) + 1.00001001358032226562f);
  let x_2779 : f32 = u_xlat2.x;
  let x_2781 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2779 * x_2781);
  let x_2784 : f32 = u_xlat52;
  let x_2785 : f32 = u_xlat52;
  u_xlat52 = (x_2784 * x_2785);
  let x_2788 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2788, 0.10000000149011611938f);
  let x_2792 : f32 = u_xlat52;
  let x_2794 : f32 = u_xlat2.x;
  u_xlat52 = (x_2792 * x_2794);
  let x_2796 : f32 = u_xlat82;
  let x_2797 : f32 = u_xlat52;
  u_xlat52 = (x_2796 * x_2797);
  let x_2799 : f32 = u_xlat80;
  let x_2800 : f32 = u_xlat52;
  u_xlat52 = (x_2799 / x_2800);
  let x_2802 : vec4<f32> = u_xlat5;
  let x_2804 : f32 = u_xlat52;
  let x_2807 : vec4<f32> = u_xlat4;
  let x_2809 : vec3<f32> = ((vec3<f32>(x_2802.x, x_2802.y, x_2802.z) * vec3<f32>(x_2804, x_2804, x_2804)) + vec3<f32>(x_2807.x, x_2807.y, x_2807.z));
  let x_2810 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2810.w);
  let x_2812 : vec4<f32> = u_xlat7;
  let x_2814 : vec4<f32> = u_xlat8;
  let x_2816 : vec3<f32> = (vec3<f32>(x_2812.x, x_2812.y, x_2812.z) * vec3<f32>(x_2814.x, x_2814.y, x_2814.z));
  let x_2817 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2816.x, x_2816.y, x_2816.z, x_2817.w);
  let x_2820 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2822 : f32 = x_2605.unity_LightData.y;
  u_xlat52 = min(x_2820, x_2822);
  let x_2825 : f32 = u_xlat52;
  u_xlatu52 = bitcast<u32>(i32(x_2825));
  let x_2828 : f32 = u_xlat28;
  let x_2830 : f32 = x_868.x_AdditionalShadowFadeParams.x;
  let x_2833 : f32 = x_868.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2828 * x_2830) + x_2833);
  let x_2837 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2837, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2850 : u32 = u_xlatu_loop_1;
    let x_2851 : u32 = u_xlatu52;
    if ((x_2850 < x_2851)) {
    } else {
      break;
    }
    let x_2854 : u32 = u_xlatu_loop_1;
    u_xlatu54 = (x_2854 >> 2u);
    let x_2857 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2857 & 3u));
    let x_2860 : u32 = u_xlatu54;
    let x_2863 : vec4<f32> = x_2605.unity_LightIndices[bitcast<i32>(x_2860)];
    let x_2873 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2878 : vec4<u32> = indexable[x_2873];
    u_xlat54 = dot(x_2863, bitcast<vec4<f32>>(x_2878));
    let x_2882 : f32 = u_xlat54;
    u_xlati54 = i32(x_2882);
    let x_2884 : vec3<f32> = vs_TEXCOORD7;
    let x_2895 : i32 = u_xlati54;
    let x_2897 : vec4<f32> = x_2894.x_AdditionalLightsPosition[x_2895];
    let x_2900 : i32 = u_xlati54;
    let x_2902 : vec4<f32> = x_2894.x_AdditionalLightsPosition[x_2900];
    let x_2904 : vec3<f32> = ((-(x_2884) * vec3<f32>(x_2897.w, x_2897.w, x_2897.w)) + vec3<f32>(x_2902.x, x_2902.y, x_2902.z));
    let x_2905 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2904.x, x_2904.y, x_2904.z, x_2905.w);
    let x_2907 : vec4<f32> = u_xlat9;
    let x_2909 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_2907.x, x_2907.y, x_2907.z), vec3<f32>(x_2909.x, x_2909.y, x_2909.z));
    let x_2912 : f32 = u_xlat81;
    u_xlat81 = max(x_2912, 0.00006103515625f);
    let x_2914 : f32 = u_xlat81;
    u_xlat83 = inverseSqrt(x_2914);
    let x_2916 : f32 = u_xlat83;
    let x_2918 : vec4<f32> = u_xlat9;
    let x_2920 : vec3<f32> = (vec3<f32>(x_2916, x_2916, x_2916) * vec3<f32>(x_2918.x, x_2918.y, x_2918.z));
    let x_2921 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2920.x, x_2920.y, x_2920.z, x_2921.w);
    let x_2923 : f32 = u_xlat81;
    u_xlat84 = (1.0f / x_2923);
    let x_2925 : f32 = u_xlat81;
    let x_2926 : i32 = u_xlati54;
    let x_2928 : f32 = x_2894.x_AdditionalLightsAttenuation[x_2926].x;
    u_xlat81 = (x_2925 * x_2928);
    let x_2930 : f32 = u_xlat81;
    let x_2932 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2930) * x_2932) + 1.0f);
    let x_2935 : f32 = u_xlat81;
    u_xlat81 = max(x_2935, 0.0f);
    let x_2937 : f32 = u_xlat81;
    let x_2938 : f32 = u_xlat81;
    u_xlat81 = (x_2937 * x_2938);
    let x_2940 : f32 = u_xlat81;
    let x_2941 : f32 = u_xlat84;
    u_xlat81 = (x_2940 * x_2941);
    let x_2943 : i32 = u_xlati54;
    let x_2945 : vec4<f32> = x_2894.x_AdditionalLightsSpotDir[x_2943];
    let x_2947 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2945.x, x_2945.y, x_2945.z), vec3<f32>(x_2947.x, x_2947.y, x_2947.z));
    let x_2950 : f32 = u_xlat84;
    let x_2951 : i32 = u_xlati54;
    let x_2953 : f32 = x_2894.x_AdditionalLightsAttenuation[x_2951].z;
    let x_2955 : i32 = u_xlati54;
    let x_2957 : f32 = x_2894.x_AdditionalLightsAttenuation[x_2955].w;
    u_xlat84 = ((x_2950 * x_2953) + x_2957);
    let x_2959 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2959, 0.0f, 1.0f);
    let x_2961 : f32 = u_xlat84;
    let x_2962 : f32 = u_xlat84;
    u_xlat84 = (x_2961 * x_2962);
    let x_2964 : f32 = u_xlat81;
    let x_2965 : f32 = u_xlat84;
    u_xlat81 = (x_2964 * x_2965);
    let x_2968 : i32 = u_xlati54;
    let x_2970 : f32 = x_868.x_AdditionalShadowParams[x_2968].w;
    u_xlati84 = i32(x_2970);
    let x_2973 : i32 = u_xlati84;
    u_xlatb85 = (x_2973 >= 0i);
    let x_2975 : bool = u_xlatb85;
    if (x_2975) {
      let x_2979 : i32 = u_xlati54;
      let x_2981 : f32 = x_868.x_AdditionalShadowParams[x_2979].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2981, x_2981, x_2981, x_2981))));
      let x_2985 : bool = u_xlatb85;
      if (x_2985) {
        let x_2989 : vec4<f32> = u_xlat10;
        let x_2992 : vec4<f32> = u_xlat10;
        let x_2995 : vec4<bool> = (abs(vec4<f32>(x_2989.z, x_2989.z, x_2989.y, x_2989.z)) >= abs(vec4<f32>(x_2992.x, x_2992.y, x_2992.x, x_2992.x)));
        let x_2997 : vec3<bool> = vec3<bool>(x_2995.x, x_2995.y, x_2995.z);
        let x_2998 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2997.x, x_2997.y, x_2997.z, x_2998.w);
        let x_3001 : bool = u_xlatb11.y;
        let x_3003 : bool = u_xlatb11.x;
        u_xlatb85 = (x_3001 & x_3003);
        let x_3005 : vec4<f32> = u_xlat10;
        let x_3008 : vec4<bool> = (-(vec4<f32>(x_3005.z, x_3005.y, x_3005.z, x_3005.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3009 : vec3<bool> = vec3<bool>(x_3008.x, x_3008.y, x_3008.w);
        let x_3010 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3009.x, x_3009.y, x_3010.z, x_3009.z);
        let x_3013 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3013);
        let x_3018 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3018);
        let x_3022 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_3022);
        let x_3025 : bool = u_xlatb11.z;
        if (x_3025) {
          let x_3030 : f32 = u_xlat11.y;
          x_3026 = x_3030;
        } else {
          let x_3032 : f32 = u_xlat86;
          x_3026 = x_3032;
        }
        let x_3033 : f32 = x_3026;
        u_xlat86 = x_3033;
        let x_3035 : bool = u_xlatb85;
        if (x_3035) {
          let x_3040 : f32 = u_xlat11.x;
          x_3036 = x_3040;
        } else {
          let x_3042 : f32 = u_xlat86;
          x_3036 = x_3042;
        }
        let x_3043 : f32 = x_3036;
        u_xlat85 = x_3043;
        let x_3044 : i32 = u_xlati54;
        let x_3046 : f32 = x_868.x_AdditionalShadowParams[x_3044].w;
        u_xlat86 = trunc(x_3046);
        let x_3048 : f32 = u_xlat85;
        let x_3049 : f32 = u_xlat86;
        u_xlat85 = (x_3048 + x_3049);
        let x_3051 : f32 = u_xlat85;
        u_xlati84 = i32(x_3051);
      }
      let x_3053 : i32 = u_xlati84;
      u_xlati84 = (x_3053 << bitcast<u32>(2i));
      let x_3055 : vec3<f32> = vs_TEXCOORD7;
      let x_3057 : i32 = u_xlati84;
      let x_3060 : i32 = u_xlati84;
      let x_3064 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3057 + 1i) / 4i)][((x_3060 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3055.y, x_3055.y, x_3055.y, x_3055.y) * x_3064);
      let x_3066 : i32 = u_xlati84;
      let x_3068 : i32 = u_xlati84;
      let x_3071 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[(x_3066 / 4i)][(x_3068 % 4i)];
      let x_3072 : vec3<f32> = vs_TEXCOORD7;
      let x_3075 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3071 * vec4<f32>(x_3072.x, x_3072.x, x_3072.x, x_3072.x)) + x_3075);
      let x_3077 : i32 = u_xlati84;
      let x_3080 : i32 = u_xlati84;
      let x_3084 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3077 + 2i) / 4i)][((x_3080 + 2i) % 4i)];
      let x_3085 : vec3<f32> = vs_TEXCOORD7;
      let x_3088 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3084 * vec4<f32>(x_3085.z, x_3085.z, x_3085.z, x_3085.z)) + x_3088);
      let x_3090 : vec4<f32> = u_xlat11;
      let x_3091 : i32 = u_xlati84;
      let x_3094 : i32 = u_xlati84;
      let x_3098 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3091 + 3i) / 4i)][((x_3094 + 3i) % 4i)];
      u_xlat11 = (x_3090 + x_3098);
      let x_3100 : vec4<f32> = u_xlat11;
      let x_3102 : vec4<f32> = u_xlat11;
      let x_3104 : vec3<f32> = (vec3<f32>(x_3100.x, x_3100.y, x_3100.z) / vec3<f32>(x_3102.w, x_3102.w, x_3102.w));
      let x_3105 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3105.w);
      let x_3108 : i32 = u_xlati54;
      let x_3110 : f32 = x_868.x_AdditionalShadowParams[x_3108].y;
      u_xlatb84 = (0.0f < x_3110);
      let x_3112 : bool = u_xlatb84;
      if (x_3112) {
        let x_3115 : i32 = u_xlati54;
        let x_3117 : f32 = x_868.x_AdditionalShadowParams[x_3115].y;
        u_xlatb84 = (1.0f == x_3117);
        let x_3119 : bool = u_xlatb84;
        if (x_3119) {
          let x_3122 : vec4<f32> = u_xlat11;
          let x_3125 : vec4<f32> = x_868.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3122.x, x_3122.y, x_3122.x, x_3122.y) + x_3125);
          let x_3128 : vec4<f32> = u_xlat12;
          let x_3129 : vec2<f32> = vec2<f32>(x_3128.x, x_3128.y);
          let x_3131 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_3129.x, x_3129.y, x_3131);
          let x_3139 : vec3<f32> = txVec30;
          let x_3141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3139.xy, x_3139.z);
          u_xlat13.x = x_3141;
          let x_3144 : vec4<f32> = u_xlat12;
          let x_3145 : vec2<f32> = vec2<f32>(x_3144.z, x_3144.w);
          let x_3147 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_3145.x, x_3145.y, x_3147);
          let x_3154 : vec3<f32> = txVec31;
          let x_3156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3154.xy, x_3154.z);
          u_xlat13.y = x_3156;
          let x_3158 : vec4<f32> = u_xlat11;
          let x_3161 : vec4<f32> = x_868.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3158.x, x_3158.y, x_3158.x, x_3158.y) + x_3161);
          let x_3164 : vec4<f32> = u_xlat12;
          let x_3165 : vec2<f32> = vec2<f32>(x_3164.x, x_3164.y);
          let x_3167 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_3165.x, x_3165.y, x_3167);
          let x_3174 : vec3<f32> = txVec32;
          let x_3176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3174.xy, x_3174.z);
          u_xlat13.z = x_3176;
          let x_3179 : vec4<f32> = u_xlat12;
          let x_3180 : vec2<f32> = vec2<f32>(x_3179.z, x_3179.w);
          let x_3182 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_3180.x, x_3180.y, x_3182);
          let x_3189 : vec3<f32> = txVec33;
          let x_3191 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3189.xy, x_3189.z);
          u_xlat13.w = x_3191;
          let x_3193 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_3193, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3196 : i32 = u_xlati54;
          let x_3198 : f32 = x_868.x_AdditionalShadowParams[x_3196].y;
          u_xlatb85 = (2.0f == x_3198);
          let x_3200 : bool = u_xlatb85;
          if (x_3200) {
            let x_3203 : vec4<f32> = u_xlat11;
            let x_3206 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3209 : vec2<f32> = ((vec2<f32>(x_3203.x, x_3203.y) * vec2<f32>(x_3206.z, x_3206.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3210 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3209.x, x_3209.y, x_3210.z, x_3210.w);
            let x_3212 : vec4<f32> = u_xlat12;
            let x_3214 : vec2<f32> = floor(vec2<f32>(x_3212.x, x_3212.y));
            let x_3215 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3214.x, x_3214.y, x_3215.z, x_3215.w);
            let x_3218 : vec4<f32> = u_xlat11;
            let x_3221 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3224 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3218.x, x_3218.y) * vec2<f32>(x_3221.z, x_3221.w)) + -(vec2<f32>(x_3224.x, x_3224.y)));
            let x_3228 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3228.x, x_3228.x, x_3228.y, x_3228.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3231 : vec4<f32> = u_xlat13;
            let x_3233 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3231.x, x_3231.x, x_3231.z, x_3231.z) * vec4<f32>(x_3233.x, x_3233.x, x_3233.z, x_3233.z));
            let x_3236 : vec4<f32> = u_xlat14;
            let x_3238 : vec2<f32> = (vec2<f32>(x_3236.y, x_3236.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3239 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3238.x, x_3239.y, x_3238.y, x_3239.w);
            let x_3241 : vec4<f32> = u_xlat14;
            let x_3244 : vec2<f32> = u_xlat64;
            let x_3246 : vec2<f32> = ((vec2<f32>(x_3241.x, x_3241.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3244));
            let x_3247 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3246.x, x_3246.y, x_3247.z, x_3247.w);
            let x_3249 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3249) + vec2<f32>(1.0f, 1.0f));
            let x_3252 : vec2<f32> = u_xlat64;
            let x_3253 : vec2<f32> = min(x_3252, vec2<f32>(0.0f, 0.0f));
            let x_3254 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3253.x, x_3253.y, x_3254.z, x_3254.w);
            let x_3256 : vec4<f32> = u_xlat15;
            let x_3259 : vec4<f32> = u_xlat15;
            let x_3262 : vec2<f32> = u_xlat66;
            let x_3263 : vec2<f32> = ((-(vec2<f32>(x_3256.x, x_3256.y)) * vec2<f32>(x_3259.x, x_3259.y)) + x_3262);
            let x_3264 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3263.x, x_3263.y, x_3264.z, x_3264.w);
            let x_3266 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3266, vec2<f32>(0.0f, 0.0f));
            let x_3268 : vec2<f32> = u_xlat64;
            let x_3270 : vec2<f32> = u_xlat64;
            let x_3272 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3268) * x_3270) + vec2<f32>(x_3272.y, x_3272.w));
            let x_3275 : vec4<f32> = u_xlat15;
            let x_3277 : vec2<f32> = (vec2<f32>(x_3275.x, x_3275.y) + vec2<f32>(1.0f, 1.0f));
            let x_3278 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3277.x, x_3277.y, x_3278.z, x_3278.w);
            let x_3280 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3280 + vec2<f32>(1.0f, 1.0f));
            let x_3282 : vec4<f32> = u_xlat14;
            let x_3284 : vec2<f32> = (vec2<f32>(x_3282.x, x_3282.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3285 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3284.x, x_3284.y, x_3285.z, x_3285.w);
            let x_3287 : vec2<f32> = u_xlat66;
            let x_3288 : vec2<f32> = (x_3287 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3289 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3288.x, x_3288.y, x_3289.z, x_3289.w);
            let x_3291 : vec4<f32> = u_xlat15;
            let x_3293 : vec2<f32> = (vec2<f32>(x_3291.x, x_3291.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3294 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3293.x, x_3293.y, x_3294.z, x_3294.w);
            let x_3296 : vec2<f32> = u_xlat64;
            let x_3297 : vec2<f32> = (x_3296 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3298 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3297.x, x_3297.y, x_3298.z, x_3298.w);
            let x_3300 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3300.y, x_3300.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3304 : f32 = u_xlat15.x;
            u_xlat16.z = x_3304;
            let x_3307 : f32 = u_xlat64.x;
            u_xlat16.w = x_3307;
            let x_3310 : f32 = u_xlat17.x;
            u_xlat14.z = x_3310;
            let x_3313 : f32 = u_xlat13.x;
            u_xlat14.w = x_3313;
            let x_3315 : vec4<f32> = u_xlat14;
            let x_3317 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3315.z, x_3315.w, x_3315.x, x_3315.z) + vec4<f32>(x_3317.z, x_3317.w, x_3317.x, x_3317.z));
            let x_3321 : f32 = u_xlat16.y;
            u_xlat15.z = x_3321;
            let x_3324 : f32 = u_xlat64.y;
            u_xlat15.w = x_3324;
            let x_3327 : f32 = u_xlat14.y;
            u_xlat17.z = x_3327;
            let x_3330 : f32 = u_xlat13.z;
            u_xlat17.w = x_3330;
            let x_3332 : vec4<f32> = u_xlat15;
            let x_3334 : vec4<f32> = u_xlat17;
            let x_3336 : vec3<f32> = (vec3<f32>(x_3332.z, x_3332.y, x_3332.w) + vec3<f32>(x_3334.z, x_3334.y, x_3334.w));
            let x_3337 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3336.x, x_3336.y, x_3336.z, x_3337.w);
            let x_3339 : vec4<f32> = u_xlat14;
            let x_3341 : vec4<f32> = u_xlat18;
            let x_3343 : vec3<f32> = (vec3<f32>(x_3339.x, x_3339.z, x_3339.w) / vec3<f32>(x_3341.z, x_3341.w, x_3341.y));
            let x_3344 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3343.x, x_3343.y, x_3343.z, x_3344.w);
            let x_3346 : vec4<f32> = u_xlat14;
            let x_3348 : vec3<f32> = (vec3<f32>(x_3346.x, x_3346.y, x_3346.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3349 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3348.x, x_3348.y, x_3348.z, x_3349.w);
            let x_3351 : vec4<f32> = u_xlat17;
            let x_3353 : vec4<f32> = u_xlat13;
            let x_3355 : vec3<f32> = (vec3<f32>(x_3351.z, x_3351.y, x_3351.w) / vec3<f32>(x_3353.x, x_3353.y, x_3353.z));
            let x_3356 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3355.x, x_3355.y, x_3355.z, x_3356.w);
            let x_3358 : vec4<f32> = u_xlat15;
            let x_3360 : vec3<f32> = (vec3<f32>(x_3358.x, x_3358.y, x_3358.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3361 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3360.x, x_3360.y, x_3360.z, x_3361.w);
            let x_3363 : vec4<f32> = u_xlat14;
            let x_3366 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3368 : vec3<f32> = (vec3<f32>(x_3363.y, x_3363.x, x_3363.z) * vec3<f32>(x_3366.x, x_3366.x, x_3366.x));
            let x_3369 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3368.x, x_3368.y, x_3368.z, x_3369.w);
            let x_3371 : vec4<f32> = u_xlat15;
            let x_3374 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3376 : vec3<f32> = (vec3<f32>(x_3371.x, x_3371.y, x_3371.z) * vec3<f32>(x_3374.y, x_3374.y, x_3374.y));
            let x_3377 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3376.x, x_3376.y, x_3376.z, x_3377.w);
            let x_3380 : f32 = u_xlat15.x;
            u_xlat14.w = x_3380;
            let x_3382 : vec4<f32> = u_xlat12;
            let x_3385 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3388 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3382.x, x_3382.y, x_3382.x, x_3382.y) * vec4<f32>(x_3385.x, x_3385.y, x_3385.x, x_3385.y)) + vec4<f32>(x_3388.y, x_3388.w, x_3388.x, x_3388.w));
            let x_3391 : vec4<f32> = u_xlat12;
            let x_3394 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3397 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3391.x, x_3391.y) * vec2<f32>(x_3394.x, x_3394.y)) + vec2<f32>(x_3397.z, x_3397.w));
            let x_3401 : f32 = u_xlat14.y;
            u_xlat15.w = x_3401;
            let x_3403 : vec4<f32> = u_xlat15;
            let x_3404 : vec2<f32> = vec2<f32>(x_3403.y, x_3403.z);
            let x_3405 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3405.x, x_3404.x, x_3405.z, x_3404.y);
            let x_3407 : vec4<f32> = u_xlat12;
            let x_3410 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3413 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3407.x, x_3407.y, x_3407.x, x_3407.y) * vec4<f32>(x_3410.x, x_3410.y, x_3410.x, x_3410.y)) + vec4<f32>(x_3413.x, x_3413.y, x_3413.z, x_3413.y));
            let x_3416 : vec4<f32> = u_xlat12;
            let x_3419 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3422 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3416.x, x_3416.y, x_3416.x, x_3416.y) * vec4<f32>(x_3419.x, x_3419.y, x_3419.x, x_3419.y)) + vec4<f32>(x_3422.w, x_3422.y, x_3422.w, x_3422.z));
            let x_3425 : vec4<f32> = u_xlat12;
            let x_3428 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3431 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3425.x, x_3425.y, x_3425.x, x_3425.y) * vec4<f32>(x_3428.x, x_3428.y, x_3428.x, x_3428.y)) + vec4<f32>(x_3431.x, x_3431.w, x_3431.z, x_3431.w));
            let x_3434 : vec4<f32> = u_xlat13;
            let x_3436 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3434.x, x_3434.x, x_3434.x, x_3434.y) * vec4<f32>(x_3436.z, x_3436.w, x_3436.y, x_3436.z));
            let x_3440 : vec4<f32> = u_xlat13;
            let x_3442 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3440.y, x_3440.y, x_3440.z, x_3440.z) * x_3442);
            let x_3445 : f32 = u_xlat13.z;
            let x_3447 : f32 = u_xlat18.y;
            u_xlat85 = (x_3445 * x_3447);
            let x_3450 : vec4<f32> = u_xlat16;
            let x_3451 : vec2<f32> = vec2<f32>(x_3450.x, x_3450.y);
            let x_3453 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3451.x, x_3451.y, x_3453);
            let x_3460 : vec3<f32> = txVec34;
            let x_3462 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3460.xy, x_3460.z);
            u_xlat86 = x_3462;
            let x_3464 : vec4<f32> = u_xlat16;
            let x_3465 : vec2<f32> = vec2<f32>(x_3464.z, x_3464.w);
            let x_3467 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3465.x, x_3465.y, x_3467);
            let x_3475 : vec3<f32> = txVec35;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat87 = x_3477;
            let x_3478 : f32 = u_xlat87;
            let x_3480 : f32 = u_xlat19.y;
            u_xlat87 = (x_3478 * x_3480);
            let x_3483 : f32 = u_xlat19.x;
            let x_3484 : f32 = u_xlat86;
            let x_3486 : f32 = u_xlat87;
            u_xlat86 = ((x_3483 * x_3484) + x_3486);
            let x_3489 : vec2<f32> = u_xlat64;
            let x_3491 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3489.x, x_3489.y, x_3491);
            let x_3498 : vec3<f32> = txVec36;
            let x_3500 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3498.xy, x_3498.z);
            u_xlat87 = x_3500;
            let x_3502 : f32 = u_xlat19.z;
            let x_3503 : f32 = u_xlat87;
            let x_3505 : f32 = u_xlat86;
            u_xlat86 = ((x_3502 * x_3503) + x_3505);
            let x_3508 : vec4<f32> = u_xlat15;
            let x_3509 : vec2<f32> = vec2<f32>(x_3508.x, x_3508.y);
            let x_3511 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3509.x, x_3509.y, x_3511);
            let x_3518 : vec3<f32> = txVec37;
            let x_3520 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3518.xy, x_3518.z);
            u_xlat87 = x_3520;
            let x_3522 : f32 = u_xlat19.w;
            let x_3523 : f32 = u_xlat87;
            let x_3525 : f32 = u_xlat86;
            u_xlat86 = ((x_3522 * x_3523) + x_3525);
            let x_3528 : vec4<f32> = u_xlat17;
            let x_3529 : vec2<f32> = vec2<f32>(x_3528.x, x_3528.y);
            let x_3531 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3529.x, x_3529.y, x_3531);
            let x_3538 : vec3<f32> = txVec38;
            let x_3540 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3538.xy, x_3538.z);
            u_xlat87 = x_3540;
            let x_3542 : f32 = u_xlat20.x;
            let x_3543 : f32 = u_xlat87;
            let x_3545 : f32 = u_xlat86;
            u_xlat86 = ((x_3542 * x_3543) + x_3545);
            let x_3548 : vec4<f32> = u_xlat17;
            let x_3549 : vec2<f32> = vec2<f32>(x_3548.z, x_3548.w);
            let x_3551 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3549.x, x_3549.y, x_3551);
            let x_3558 : vec3<f32> = txVec39;
            let x_3560 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3558.xy, x_3558.z);
            u_xlat87 = x_3560;
            let x_3562 : f32 = u_xlat20.y;
            let x_3563 : f32 = u_xlat87;
            let x_3565 : f32 = u_xlat86;
            u_xlat86 = ((x_3562 * x_3563) + x_3565);
            let x_3568 : vec4<f32> = u_xlat15;
            let x_3569 : vec2<f32> = vec2<f32>(x_3568.z, x_3568.w);
            let x_3571 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3569.x, x_3569.y, x_3571);
            let x_3578 : vec3<f32> = txVec40;
            let x_3580 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3578.xy, x_3578.z);
            u_xlat87 = x_3580;
            let x_3582 : f32 = u_xlat20.z;
            let x_3583 : f32 = u_xlat87;
            let x_3585 : f32 = u_xlat86;
            u_xlat86 = ((x_3582 * x_3583) + x_3585);
            let x_3588 : vec4<f32> = u_xlat14;
            let x_3589 : vec2<f32> = vec2<f32>(x_3588.x, x_3588.y);
            let x_3591 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3589.x, x_3589.y, x_3591);
            let x_3598 : vec3<f32> = txVec41;
            let x_3600 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3598.xy, x_3598.z);
            u_xlat87 = x_3600;
            let x_3602 : f32 = u_xlat20.w;
            let x_3603 : f32 = u_xlat87;
            let x_3605 : f32 = u_xlat86;
            u_xlat86 = ((x_3602 * x_3603) + x_3605);
            let x_3608 : vec4<f32> = u_xlat14;
            let x_3609 : vec2<f32> = vec2<f32>(x_3608.z, x_3608.w);
            let x_3611 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3609.x, x_3609.y, x_3611);
            let x_3618 : vec3<f32> = txVec42;
            let x_3620 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3618.xy, x_3618.z);
            u_xlat87 = x_3620;
            let x_3621 : f32 = u_xlat85;
            let x_3622 : f32 = u_xlat87;
            let x_3624 : f32 = u_xlat86;
            u_xlat84 = ((x_3621 * x_3622) + x_3624);
          } else {
            let x_3627 : vec4<f32> = u_xlat11;
            let x_3630 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3633 : vec2<f32> = ((vec2<f32>(x_3627.x, x_3627.y) * vec2<f32>(x_3630.z, x_3630.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3634 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3633.x, x_3633.y, x_3634.z, x_3634.w);
            let x_3636 : vec4<f32> = u_xlat12;
            let x_3638 : vec2<f32> = floor(vec2<f32>(x_3636.x, x_3636.y));
            let x_3639 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3638.x, x_3638.y, x_3639.z, x_3639.w);
            let x_3641 : vec4<f32> = u_xlat11;
            let x_3644 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3647 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3641.x, x_3641.y) * vec2<f32>(x_3644.z, x_3644.w)) + -(vec2<f32>(x_3647.x, x_3647.y)));
            let x_3651 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3651.x, x_3651.x, x_3651.y, x_3651.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3654 : vec4<f32> = u_xlat13;
            let x_3656 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3654.x, x_3654.x, x_3654.z, x_3654.z) * vec4<f32>(x_3656.x, x_3656.x, x_3656.z, x_3656.z));
            let x_3659 : vec4<f32> = u_xlat14;
            let x_3661 : vec2<f32> = (vec2<f32>(x_3659.y, x_3659.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3662 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3662.x, x_3661.x, x_3662.z, x_3661.y);
            let x_3664 : vec4<f32> = u_xlat14;
            let x_3667 : vec2<f32> = u_xlat64;
            let x_3669 : vec2<f32> = ((vec2<f32>(x_3664.x, x_3664.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3667));
            let x_3670 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3669.x, x_3670.y, x_3669.y, x_3670.w);
            let x_3672 : vec2<f32> = u_xlat64;
            let x_3674 : vec2<f32> = (-(x_3672) + vec2<f32>(1.0f, 1.0f));
            let x_3675 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3674.x, x_3674.y, x_3675.z, x_3675.w);
            let x_3677 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3677, vec2<f32>(0.0f, 0.0f));
            let x_3679 : vec2<f32> = u_xlat66;
            let x_3681 : vec2<f32> = u_xlat66;
            let x_3683 : vec4<f32> = u_xlat14;
            let x_3685 : vec2<f32> = ((-(x_3679) * x_3681) + vec2<f32>(x_3683.x, x_3683.y));
            let x_3686 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3685.x, x_3685.y, x_3686.z, x_3686.w);
            let x_3688 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3688, vec2<f32>(0.0f, 0.0f));
            let x_3691 : vec2<f32> = u_xlat66;
            let x_3693 : vec2<f32> = u_xlat66;
            let x_3695 : vec4<f32> = u_xlat13;
            let x_3697 : vec2<f32> = ((-(x_3691) * x_3693) + vec2<f32>(x_3695.y, x_3695.w));
            let x_3698 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3697.x, x_3698.y, x_3697.y);
            let x_3700 : vec4<f32> = u_xlat14;
            let x_3702 : vec2<f32> = (vec2<f32>(x_3700.x, x_3700.y) + vec2<f32>(2.0f, 2.0f));
            let x_3703 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3702.x, x_3702.y, x_3703.z, x_3703.w);
            let x_3705 : vec3<f32> = u_xlat39;
            let x_3707 : vec2<f32> = (vec2<f32>(x_3705.x, x_3705.z) + vec2<f32>(2.0f, 2.0f));
            let x_3708 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3708.x, x_3707.x, x_3708.z, x_3707.y);
            let x_3711 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3711 * 0.08163200318813323975f);
            let x_3714 : vec4<f32> = u_xlat13;
            let x_3716 : vec3<f32> = (vec3<f32>(x_3714.z, x_3714.x, x_3714.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3717 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3716.x, x_3716.y, x_3716.z, x_3717.w);
            let x_3719 : vec4<f32> = u_xlat14;
            let x_3721 : vec2<f32> = (vec2<f32>(x_3719.x, x_3719.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3722 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3721.x, x_3721.y, x_3722.z, x_3722.w);
            let x_3725 : f32 = u_xlat17.y;
            u_xlat16.x = x_3725;
            let x_3727 : vec2<f32> = u_xlat64;
            let x_3730 : vec2<f32> = ((vec2<f32>(x_3727.x, x_3727.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3731 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3731.x, x_3730.x, x_3731.z, x_3730.y);
            let x_3733 : vec2<f32> = u_xlat64;
            let x_3736 : vec2<f32> = ((vec2<f32>(x_3733.x, x_3733.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3737 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3736.x, x_3737.y, x_3736.y, x_3737.w);
            let x_3740 : f32 = u_xlat13.x;
            u_xlat14.y = x_3740;
            let x_3743 : f32 = u_xlat15.y;
            u_xlat14.w = x_3743;
            let x_3745 : vec4<f32> = u_xlat14;
            let x_3746 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3745 + x_3746);
            let x_3748 : vec2<f32> = u_xlat64;
            let x_3751 : vec2<f32> = ((vec2<f32>(x_3748.y, x_3748.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3752 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3752.x, x_3751.x, x_3752.z, x_3751.y);
            let x_3754 : vec2<f32> = u_xlat64;
            let x_3757 : vec2<f32> = ((vec2<f32>(x_3754.y, x_3754.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3758 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3757.x, x_3758.y, x_3757.y, x_3758.w);
            let x_3761 : f32 = u_xlat13.y;
            u_xlat15.y = x_3761;
            let x_3763 : vec4<f32> = u_xlat15;
            let x_3764 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3763 + x_3764);
            let x_3766 : vec4<f32> = u_xlat14;
            let x_3767 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3766 / x_3767);
            let x_3769 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3769 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3771 : vec4<f32> = u_xlat15;
            let x_3772 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3771 / x_3772);
            let x_3774 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3774 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3776 : vec4<f32> = u_xlat14;
            let x_3779 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3776.w, x_3776.x, x_3776.y, x_3776.z) * vec4<f32>(x_3779.x, x_3779.x, x_3779.x, x_3779.x));
            let x_3782 : vec4<f32> = u_xlat15;
            let x_3785 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3782.x, x_3782.w, x_3782.y, x_3782.z) * vec4<f32>(x_3785.y, x_3785.y, x_3785.y, x_3785.y));
            let x_3788 : vec4<f32> = u_xlat14;
            let x_3789 : vec3<f32> = vec3<f32>(x_3788.y, x_3788.z, x_3788.w);
            let x_3790 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3789.x, x_3790.y, x_3789.y, x_3789.z);
            let x_3793 : f32 = u_xlat15.x;
            u_xlat17.y = x_3793;
            let x_3795 : vec4<f32> = u_xlat12;
            let x_3798 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3801 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3795.x, x_3795.y, x_3795.x, x_3795.y) * vec4<f32>(x_3798.x, x_3798.y, x_3798.x, x_3798.y)) + vec4<f32>(x_3801.x, x_3801.y, x_3801.z, x_3801.y));
            let x_3804 : vec4<f32> = u_xlat12;
            let x_3807 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3810 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3804.x, x_3804.y) * vec2<f32>(x_3807.x, x_3807.y)) + vec2<f32>(x_3810.w, x_3810.y));
            let x_3814 : f32 = u_xlat17.y;
            u_xlat14.y = x_3814;
            let x_3817 : f32 = u_xlat15.z;
            u_xlat17.y = x_3817;
            let x_3819 : vec4<f32> = u_xlat12;
            let x_3822 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3825 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3819.x, x_3819.y, x_3819.x, x_3819.y) * vec4<f32>(x_3822.x, x_3822.y, x_3822.x, x_3822.y)) + vec4<f32>(x_3825.x, x_3825.y, x_3825.z, x_3825.y));
            let x_3828 : vec4<f32> = u_xlat12;
            let x_3831 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3834 : vec4<f32> = u_xlat17;
            let x_3836 : vec2<f32> = ((vec2<f32>(x_3828.x, x_3828.y) * vec2<f32>(x_3831.x, x_3831.y)) + vec2<f32>(x_3834.w, x_3834.y));
            let x_3837 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3836.x, x_3836.y, x_3837.z, x_3837.w);
            let x_3840 : f32 = u_xlat17.y;
            u_xlat14.z = x_3840;
            let x_3843 : vec4<f32> = u_xlat12;
            let x_3846 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3849 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3843.x, x_3843.y, x_3843.x, x_3843.y) * vec4<f32>(x_3846.x, x_3846.y, x_3846.x, x_3846.y)) + vec4<f32>(x_3849.x, x_3849.y, x_3849.x, x_3849.z));
            let x_3853 : f32 = u_xlat15.w;
            u_xlat17.y = x_3853;
            let x_3856 : vec4<f32> = u_xlat12;
            let x_3859 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3862 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3856.x, x_3856.y, x_3856.x, x_3856.y) * vec4<f32>(x_3859.x, x_3859.y, x_3859.x, x_3859.y)) + vec4<f32>(x_3862.x, x_3862.y, x_3862.z, x_3862.y));
            let x_3866 : vec4<f32> = u_xlat12;
            let x_3869 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3872 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3866.x, x_3866.y) * vec2<f32>(x_3869.x, x_3869.y)) + vec2<f32>(x_3872.w, x_3872.y));
            let x_3876 : f32 = u_xlat17.y;
            u_xlat14.w = x_3876;
            let x_3879 : vec4<f32> = u_xlat12;
            let x_3882 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3885 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3879.x, x_3879.y) * vec2<f32>(x_3882.x, x_3882.y)) + vec2<f32>(x_3885.x, x_3885.w));
            let x_3888 : vec4<f32> = u_xlat17;
            let x_3889 : vec3<f32> = vec3<f32>(x_3888.x, x_3888.z, x_3888.w);
            let x_3890 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3889.x, x_3890.y, x_3889.y, x_3889.z);
            let x_3892 : vec4<f32> = u_xlat12;
            let x_3895 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3898 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3892.x, x_3892.y, x_3892.x, x_3892.y) * vec4<f32>(x_3895.x, x_3895.y, x_3895.x, x_3895.y)) + vec4<f32>(x_3898.x, x_3898.y, x_3898.z, x_3898.y));
            let x_3902 : vec4<f32> = u_xlat12;
            let x_3905 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3908 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3902.x, x_3902.y) * vec2<f32>(x_3905.x, x_3905.y)) + vec2<f32>(x_3908.w, x_3908.y));
            let x_3912 : f32 = u_xlat14.x;
            u_xlat15.x = x_3912;
            let x_3914 : vec4<f32> = u_xlat12;
            let x_3917 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3920 : vec4<f32> = u_xlat15;
            let x_3922 : vec2<f32> = ((vec2<f32>(x_3914.x, x_3914.y) * vec2<f32>(x_3917.x, x_3917.y)) + vec2<f32>(x_3920.x, x_3920.y));
            let x_3923 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3922.x, x_3922.y, x_3923.z, x_3923.w);
            let x_3926 : vec4<f32> = u_xlat13;
            let x_3928 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3926.x, x_3926.x, x_3926.x, x_3926.x) * x_3928);
            let x_3931 : vec4<f32> = u_xlat13;
            let x_3933 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3931.y, x_3931.y, x_3931.y, x_3931.y) * x_3933);
            let x_3936 : vec4<f32> = u_xlat13;
            let x_3938 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3936.z, x_3936.z, x_3936.z, x_3936.z) * x_3938);
            let x_3940 : vec4<f32> = u_xlat13;
            let x_3942 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3940.w, x_3940.w, x_3940.w, x_3940.w) * x_3942);
            let x_3945 : vec4<f32> = u_xlat18;
            let x_3946 : vec2<f32> = vec2<f32>(x_3945.x, x_3945.y);
            let x_3948 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3946.x, x_3946.y, x_3948);
            let x_3955 : vec3<f32> = txVec43;
            let x_3957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3955.xy, x_3955.z);
            u_xlat85 = x_3957;
            let x_3959 : vec4<f32> = u_xlat18;
            let x_3960 : vec2<f32> = vec2<f32>(x_3959.z, x_3959.w);
            let x_3962 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3960.x, x_3960.y, x_3962);
            let x_3969 : vec3<f32> = txVec44;
            let x_3971 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3969.xy, x_3969.z);
            u_xlat86 = x_3971;
            let x_3972 : f32 = u_xlat86;
            let x_3974 : f32 = u_xlat23.y;
            u_xlat86 = (x_3972 * x_3974);
            let x_3977 : f32 = u_xlat23.x;
            let x_3978 : f32 = u_xlat85;
            let x_3980 : f32 = u_xlat86;
            u_xlat85 = ((x_3977 * x_3978) + x_3980);
            let x_3983 : vec2<f32> = u_xlat64;
            let x_3985 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3983.x, x_3983.y, x_3985);
            let x_3992 : vec3<f32> = txVec45;
            let x_3994 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3992.xy, x_3992.z);
            u_xlat86 = x_3994;
            let x_3996 : f32 = u_xlat23.z;
            let x_3997 : f32 = u_xlat86;
            let x_3999 : f32 = u_xlat85;
            u_xlat85 = ((x_3996 * x_3997) + x_3999);
            let x_4002 : vec4<f32> = u_xlat21;
            let x_4003 : vec2<f32> = vec2<f32>(x_4002.x, x_4002.y);
            let x_4005 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_4003.x, x_4003.y, x_4005);
            let x_4012 : vec3<f32> = txVec46;
            let x_4014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4012.xy, x_4012.z);
            u_xlat86 = x_4014;
            let x_4016 : f32 = u_xlat23.w;
            let x_4017 : f32 = u_xlat86;
            let x_4019 : f32 = u_xlat85;
            u_xlat85 = ((x_4016 * x_4017) + x_4019);
            let x_4022 : vec4<f32> = u_xlat19;
            let x_4023 : vec2<f32> = vec2<f32>(x_4022.x, x_4022.y);
            let x_4025 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_4023.x, x_4023.y, x_4025);
            let x_4032 : vec3<f32> = txVec47;
            let x_4034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4032.xy, x_4032.z);
            u_xlat86 = x_4034;
            let x_4036 : f32 = u_xlat24.x;
            let x_4037 : f32 = u_xlat86;
            let x_4039 : f32 = u_xlat85;
            u_xlat85 = ((x_4036 * x_4037) + x_4039);
            let x_4042 : vec4<f32> = u_xlat19;
            let x_4043 : vec2<f32> = vec2<f32>(x_4042.z, x_4042.w);
            let x_4045 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_4043.x, x_4043.y, x_4045);
            let x_4052 : vec3<f32> = txVec48;
            let x_4054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4052.xy, x_4052.z);
            u_xlat86 = x_4054;
            let x_4056 : f32 = u_xlat24.y;
            let x_4057 : f32 = u_xlat86;
            let x_4059 : f32 = u_xlat85;
            u_xlat85 = ((x_4056 * x_4057) + x_4059);
            let x_4062 : vec4<f32> = u_xlat20;
            let x_4063 : vec2<f32> = vec2<f32>(x_4062.x, x_4062.y);
            let x_4065 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_4063.x, x_4063.y, x_4065);
            let x_4072 : vec3<f32> = txVec49;
            let x_4074 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4072.xy, x_4072.z);
            u_xlat86 = x_4074;
            let x_4076 : f32 = u_xlat24.z;
            let x_4077 : f32 = u_xlat86;
            let x_4079 : f32 = u_xlat85;
            u_xlat85 = ((x_4076 * x_4077) + x_4079);
            let x_4082 : vec4<f32> = u_xlat21;
            let x_4083 : vec2<f32> = vec2<f32>(x_4082.z, x_4082.w);
            let x_4085 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_4083.x, x_4083.y, x_4085);
            let x_4092 : vec3<f32> = txVec50;
            let x_4094 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4092.xy, x_4092.z);
            u_xlat86 = x_4094;
            let x_4096 : f32 = u_xlat24.w;
            let x_4097 : f32 = u_xlat86;
            let x_4099 : f32 = u_xlat85;
            u_xlat85 = ((x_4096 * x_4097) + x_4099);
            let x_4102 : vec4<f32> = u_xlat22;
            let x_4103 : vec2<f32> = vec2<f32>(x_4102.x, x_4102.y);
            let x_4105 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_4103.x, x_4103.y, x_4105);
            let x_4112 : vec3<f32> = txVec51;
            let x_4114 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4112.xy, x_4112.z);
            u_xlat86 = x_4114;
            let x_4116 : f32 = u_xlat25.x;
            let x_4117 : f32 = u_xlat86;
            let x_4119 : f32 = u_xlat85;
            u_xlat85 = ((x_4116 * x_4117) + x_4119);
            let x_4122 : vec4<f32> = u_xlat22;
            let x_4123 : vec2<f32> = vec2<f32>(x_4122.z, x_4122.w);
            let x_4125 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_4123.x, x_4123.y, x_4125);
            let x_4132 : vec3<f32> = txVec52;
            let x_4134 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4132.xy, x_4132.z);
            u_xlat86 = x_4134;
            let x_4136 : f32 = u_xlat25.y;
            let x_4137 : f32 = u_xlat86;
            let x_4139 : f32 = u_xlat85;
            u_xlat85 = ((x_4136 * x_4137) + x_4139);
            let x_4142 : vec2<f32> = u_xlat40;
            let x_4144 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_4142.x, x_4142.y, x_4144);
            let x_4151 : vec3<f32> = txVec53;
            let x_4153 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4151.xy, x_4151.z);
            u_xlat86 = x_4153;
            let x_4155 : f32 = u_xlat25.z;
            let x_4156 : f32 = u_xlat86;
            let x_4158 : f32 = u_xlat85;
            u_xlat85 = ((x_4155 * x_4156) + x_4158);
            let x_4161 : vec2<f32> = u_xlat72;
            let x_4163 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_4161.x, x_4161.y, x_4163);
            let x_4170 : vec3<f32> = txVec54;
            let x_4172 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4170.xy, x_4170.z);
            u_xlat86 = x_4172;
            let x_4174 : f32 = u_xlat25.w;
            let x_4175 : f32 = u_xlat86;
            let x_4177 : f32 = u_xlat85;
            u_xlat85 = ((x_4174 * x_4175) + x_4177);
            let x_4180 : vec4<f32> = u_xlat17;
            let x_4181 : vec2<f32> = vec2<f32>(x_4180.x, x_4180.y);
            let x_4183 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_4181.x, x_4181.y, x_4183);
            let x_4190 : vec3<f32> = txVec55;
            let x_4192 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4190.xy, x_4190.z);
            u_xlat86 = x_4192;
            let x_4194 : f32 = u_xlat13.x;
            let x_4195 : f32 = u_xlat86;
            let x_4197 : f32 = u_xlat85;
            u_xlat85 = ((x_4194 * x_4195) + x_4197);
            let x_4200 : vec4<f32> = u_xlat17;
            let x_4201 : vec2<f32> = vec2<f32>(x_4200.z, x_4200.w);
            let x_4203 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_4201.x, x_4201.y, x_4203);
            let x_4210 : vec3<f32> = txVec56;
            let x_4212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4210.xy, x_4210.z);
            u_xlat86 = x_4212;
            let x_4214 : f32 = u_xlat13.y;
            let x_4215 : f32 = u_xlat86;
            let x_4217 : f32 = u_xlat85;
            u_xlat85 = ((x_4214 * x_4215) + x_4217);
            let x_4220 : vec2<f32> = u_xlat67;
            let x_4222 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_4220.x, x_4220.y, x_4222);
            let x_4229 : vec3<f32> = txVec57;
            let x_4231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4229.xy, x_4229.z);
            u_xlat86 = x_4231;
            let x_4233 : f32 = u_xlat13.z;
            let x_4234 : f32 = u_xlat86;
            let x_4236 : f32 = u_xlat85;
            u_xlat85 = ((x_4233 * x_4234) + x_4236);
            let x_4239 : vec4<f32> = u_xlat12;
            let x_4240 : vec2<f32> = vec2<f32>(x_4239.x, x_4239.y);
            let x_4242 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4240.x, x_4240.y, x_4242);
            let x_4249 : vec3<f32> = txVec58;
            let x_4251 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4249.xy, x_4249.z);
            u_xlat86 = x_4251;
            let x_4253 : f32 = u_xlat13.w;
            let x_4254 : f32 = u_xlat86;
            let x_4256 : f32 = u_xlat85;
            u_xlat84 = ((x_4253 * x_4254) + x_4256);
          }
        }
      } else {
        let x_4260 : vec4<f32> = u_xlat11;
        let x_4261 : vec2<f32> = vec2<f32>(x_4260.x, x_4260.y);
        let x_4263 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4261.x, x_4261.y, x_4263);
        let x_4270 : vec3<f32> = txVec59;
        let x_4272 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4270.xy, x_4270.z);
        u_xlat84 = x_4272;
      }
      let x_4273 : i32 = u_xlati54;
      let x_4275 : f32 = x_868.x_AdditionalShadowParams[x_4273].x;
      u_xlat85 = (1.0f + -(x_4275));
      let x_4278 : f32 = u_xlat84;
      let x_4279 : i32 = u_xlati54;
      let x_4281 : f32 = x_868.x_AdditionalShadowParams[x_4279].x;
      let x_4283 : f32 = u_xlat85;
      u_xlat84 = ((x_4278 * x_4281) + x_4283);
      let x_4286 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4286);
      let x_4290 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4290 >= 1.0f);
      let x_4292 : bool = u_xlatb85;
      let x_4293 : bool = u_xlatb86;
      u_xlatb85 = (x_4292 | x_4293);
      let x_4295 : bool = u_xlatb85;
      let x_4296 : f32 = u_xlat84;
      u_xlat84 = select(x_4296, 1.0f, x_4295);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4299 : f32 = u_xlat84;
    u_xlat85 = (-(x_4299) + 1.0f);
    let x_4303 : f32 = u_xlat2.x;
    let x_4304 : f32 = u_xlat85;
    let x_4306 : f32 = u_xlat84;
    u_xlat84 = ((x_4303 * x_4304) + x_4306);
    let x_4308 : f32 = u_xlat81;
    let x_4309 : f32 = u_xlat84;
    u_xlat81 = (x_4308 * x_4309);
    let x_4311 : vec4<f32> = u_xlat1;
    let x_4313 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_4311.x, x_4311.y, x_4311.z), vec3<f32>(x_4313.x, x_4313.y, x_4313.z));
    let x_4316 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4316, 0.0f, 1.0f);
    let x_4318 : f32 = u_xlat81;
    let x_4319 : f32 = u_xlat84;
    u_xlat81 = (x_4318 * x_4319);
    let x_4321 : f32 = u_xlat81;
    let x_4323 : i32 = u_xlati54;
    let x_4325 : vec4<f32> = x_2894.x_AdditionalLightsColor[x_4323];
    let x_4327 : vec3<f32> = (vec3<f32>(x_4321, x_4321, x_4321) * vec3<f32>(x_4325.x, x_4325.y, x_4325.z));
    let x_4328 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4327.x, x_4327.y, x_4327.z, x_4328.w);
    let x_4330 : vec4<f32> = u_xlat9;
    let x_4332 : f32 = u_xlat83;
    let x_4335 : vec4<f32> = u_xlat6;
    let x_4337 : vec3<f32> = ((vec3<f32>(x_4330.x, x_4330.y, x_4330.z) * vec3<f32>(x_4332, x_4332, x_4332)) + vec3<f32>(x_4335.x, x_4335.y, x_4335.z));
    let x_4338 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4337.x, x_4337.y, x_4337.z, x_4338.w);
    let x_4340 : vec4<f32> = u_xlat9;
    let x_4342 : vec4<f32> = u_xlat9;
    u_xlat54 = dot(vec3<f32>(x_4340.x, x_4340.y, x_4340.z), vec3<f32>(x_4342.x, x_4342.y, x_4342.z));
    let x_4345 : f32 = u_xlat54;
    u_xlat54 = max(x_4345, 1.17549435e-38f);
    let x_4347 : f32 = u_xlat54;
    u_xlat54 = inverseSqrt(x_4347);
    let x_4349 : f32 = u_xlat54;
    let x_4351 : vec4<f32> = u_xlat9;
    let x_4353 : vec3<f32> = (vec3<f32>(x_4349, x_4349, x_4349) * vec3<f32>(x_4351.x, x_4351.y, x_4351.z));
    let x_4354 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4353.x, x_4353.y, x_4353.z, x_4354.w);
    let x_4356 : vec4<f32> = u_xlat1;
    let x_4358 : vec4<f32> = u_xlat9;
    u_xlat54 = dot(vec3<f32>(x_4356.x, x_4356.y, x_4356.z), vec3<f32>(x_4358.x, x_4358.y, x_4358.z));
    let x_4361 : f32 = u_xlat54;
    u_xlat54 = clamp(x_4361, 0.0f, 1.0f);
    let x_4363 : vec4<f32> = u_xlat10;
    let x_4365 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4363.x, x_4363.y, x_4363.z), vec3<f32>(x_4365.x, x_4365.y, x_4365.z));
    let x_4368 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4368, 0.0f, 1.0f);
    let x_4370 : f32 = u_xlat54;
    let x_4371 : f32 = u_xlat54;
    u_xlat54 = (x_4370 * x_4371);
    let x_4373 : f32 = u_xlat54;
    let x_4375 : f32 = u_xlat0.x;
    u_xlat54 = ((x_4373 * x_4375) + 1.00001001358032226562f);
    let x_4378 : f32 = u_xlat81;
    let x_4379 : f32 = u_xlat81;
    u_xlat81 = (x_4378 * x_4379);
    let x_4381 : f32 = u_xlat54;
    let x_4382 : f32 = u_xlat54;
    u_xlat54 = (x_4381 * x_4382);
    let x_4384 : f32 = u_xlat81;
    u_xlat81 = max(x_4384, 0.10000000149011611938f);
    let x_4386 : f32 = u_xlat54;
    let x_4387 : f32 = u_xlat81;
    u_xlat54 = (x_4386 * x_4387);
    let x_4389 : f32 = u_xlat82;
    let x_4390 : f32 = u_xlat54;
    u_xlat54 = (x_4389 * x_4390);
    let x_4392 : f32 = u_xlat80;
    let x_4393 : f32 = u_xlat54;
    u_xlat54 = (x_4392 / x_4393);
    let x_4395 : vec4<f32> = u_xlat5;
    let x_4397 : f32 = u_xlat54;
    let x_4400 : vec4<f32> = u_xlat4;
    let x_4402 : vec3<f32> = ((vec3<f32>(x_4395.x, x_4395.y, x_4395.z) * vec3<f32>(x_4397, x_4397, x_4397)) + vec3<f32>(x_4400.x, x_4400.y, x_4400.z));
    let x_4403 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4402.x, x_4402.y, x_4402.z, x_4403.w);
    let x_4405 : vec4<f32> = u_xlat9;
    let x_4407 : vec4<f32> = u_xlat11;
    let x_4410 : vec4<f32> = u_xlat8;
    let x_4412 : vec3<f32> = ((vec3<f32>(x_4405.x, x_4405.y, x_4405.z) * vec3<f32>(x_4407.x, x_4407.y, x_4407.z)) + vec3<f32>(x_4410.x, x_4410.y, x_4410.z));
    let x_4413 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4412.x, x_4412.y, x_4412.z, x_4413.w);

    continuing {
      let x_4415 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4415 + bitcast<u32>(1i));
    }
  }
  let x_4417 : vec4<f32> = u_xlat3;
  let x_4419 : f32 = u_xlat26;
  let x_4422 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4417.x, x_4417.y, x_4417.z) * vec3<f32>(x_4419, x_4419, x_4419)) + vec3<f32>(x_4422.x, x_4422.y, x_4422.z));
  let x_4425 : vec4<f32> = u_xlat8;
  let x_4427 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4425.x, x_4425.y, x_4425.z) + x_4427);
  let x_4429 : f32 = u_xlat78;
  let x_4431 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4429, x_4429, x_4429) * x_4431);
  let x_4433 : f32 = u_xlat79;
  let x_4434 : f32 = u_xlat79;
  u_xlat78 = (x_4433 * -(x_4434));
  let x_4437 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4437);
  let x_4441 : vec3<f32> = u_xlat0;
  let x_4442 : f32 = u_xlat78;
  let x_4444 : vec3<f32> = (x_4441 * vec3<f32>(x_4442, x_4442, x_4442));
  let x_4445 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4444.x, x_4444.y, x_4444.z, x_4445.w);
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


