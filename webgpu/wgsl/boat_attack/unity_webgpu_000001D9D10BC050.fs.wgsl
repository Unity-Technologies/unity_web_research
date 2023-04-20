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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
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
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(6) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(10) var sampler_Control : sampler;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_Splat0 : sampler;

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

var<private> u_xlatb76 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlatb77 : bool;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_648 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

@group(1) @binding(4) var<uniform> x_792 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlatb31 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu50 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2473 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_585 : vec3<f32>;
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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2614 : f32;
  var x_2625 : f32;
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
  u_xlat75 = dot(x_151, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb76 = (4.0f >= x_234);
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
  let x_295 : bool = u_xlatb76;
  let x_296 : vec4<f32> = u_xlat11;
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_297, x_296, vec4<bool>(x_295, x_295, x_295, x_295));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_302, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_306 : f32 = u_xlat76;
  u_xlatb77 = (0.00499999988824129105f >= x_306);
  let x_308 : bool = u_xlatb77;
  if (((select(0i, 1i, x_308) * -1i) != 0i)) {
    discard;
  }
  let x_315 : f32 = u_xlat76;
  u_xlat76 = (x_315 + 0.00006103515625f);
  let x_318 : vec4<f32> = u_xlat4;
  let x_319 : f32 = u_xlat76;
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
  let x_392 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_392;
  let x_395 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_395;
  let x_398 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_398;
  let x_401 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_401;
  let x_404 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_404;
  let x_407 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_407;
  let x_410 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_410;
  let x_413 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_413;
  let x_415 : vec4<f32> = u_xlat6;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_415 + x_416);
  let x_419 : f32 = u_xlat0.z;
  u_xlat7.x = x_419;
  let x_422 : f32 = u_xlat1.z;
  u_xlat7.y = x_422;
  let x_425 : f32 = u_xlat2.z;
  u_xlat7.z = x_425;
  let x_428 : f32 = u_xlat3.y;
  u_xlat7.w = x_428;
  let x_430 : vec4<f32> = u_xlat9;
  let x_433 : f32 = x_59.x_Smoothness0;
  let x_435 : f32 = x_59.x_Smoothness1;
  let x_437 : f32 = x_59.x_Smoothness2;
  let x_439 : f32 = x_59.x_Smoothness3;
  let x_442 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_430) * vec4<f32>(x_433, x_435, x_437, x_439)) + x_442);
  let x_446 : f32 = x_59.x_LayerHasMask0;
  let x_449 : f32 = x_59.x_LayerHasMask1;
  let x_452 : f32 = x_59.x_LayerHasMask2;
  let x_455 : f32 = x_59.x_LayerHasMask3;
  let x_457 : vec4<f32> = u_xlat7;
  let x_459 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_446, x_449, x_452, x_455) * x_457) + x_459);
  let x_462 : vec4<f32> = u_xlat4;
  let x_463 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_462, x_463);
  let x_466 : f32 = u_xlat0.x;
  u_xlat7.x = x_466;
  let x_469 : f32 = u_xlat1.x;
  u_xlat7.y = x_469;
  let x_472 : f32 = u_xlat2.x;
  u_xlat7.z = x_472;
  let x_475 : f32 = u_xlat3.x;
  u_xlat7.w = x_475;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : f32 = x_59.x_Metallic0;
  let x_483 : f32 = x_59.x_Metallic1;
  let x_486 : f32 = x_59.x_Metallic2;
  let x_489 : f32 = x_59.x_Metallic3;
  u_xlat7 = (x_477 + -(vec4<f32>(x_480, x_483, x_486, x_489)));
  let x_494 : f32 = x_59.x_LayerHasMask0;
  let x_496 : f32 = x_59.x_LayerHasMask1;
  let x_498 : f32 = x_59.x_LayerHasMask2;
  let x_500 : f32 = x_59.x_LayerHasMask3;
  let x_502 : vec4<f32> = u_xlat7;
  let x_505 : f32 = x_59.x_Metallic0;
  let x_507 : f32 = x_59.x_Metallic1;
  let x_509 : f32 = x_59.x_Metallic2;
  let x_511 : f32 = x_59.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_494, x_496, x_498, x_500) * x_502) + vec4<f32>(x_505, x_507, x_509, x_511));
  let x_514 : vec4<f32> = u_xlat4;
  let x_515 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_514, x_515);
  let x_519 : f32 = u_xlat0.y;
  u_xlat3.x = x_519;
  let x_522 : f32 = u_xlat1.y;
  u_xlat3.y = x_522;
  let x_525 : f32 = u_xlat2.y;
  u_xlat3.z = x_525;
  let x_527 : vec4<f32> = u_xlat6;
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_527) + x_529);
  let x_532 : f32 = x_59.x_LayerHasMask0;
  let x_534 : f32 = x_59.x_LayerHasMask1;
  let x_536 : f32 = x_59.x_LayerHasMask2;
  let x_538 : f32 = x_59.x_LayerHasMask3;
  let x_540 : vec4<f32> = u_xlat1;
  let x_542 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_532, x_534, x_536, x_538) * x_540) + x_542);
  let x_545 : vec4<f32> = u_xlat4;
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_545, x_546);
  let x_550 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb1 = (x_550 == 0.0f);
  let x_555 : vec3<f32> = vs_TEXCOORD7;
  let x_559 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat26 = (-(x_555) + x_559);
  let x_561 : vec3<f32> = u_xlat26;
  let x_562 : vec3<f32> = u_xlat26;
  u_xlat2.x = dot(x_561, x_562);
  let x_566 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_566);
  let x_569 : vec3<f32> = u_xlat26;
  let x_570 : vec4<f32> = u_xlat2;
  u_xlat26 = (x_569 * vec3<f32>(x_570.x, x_570.x, x_570.x));
  let x_574 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat2.x = x_574;
  let x_577 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.y = x_577;
  let x_581 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat2.z = x_581;
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_588 : vec3<f32> = u_xlat26;
    x_585 = x_588;
  } else {
    let x_590 : vec4<f32> = u_xlat2;
    x_585 = vec3<f32>(x_590.x, x_590.y, x_590.z);
  }
  let x_592 : vec3<f32> = x_585;
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : vec3<f32> = vs_TEXCOORD3;
  let x_597 : vec3<f32> = vs_TEXCOORD3;
  u_xlat76 = dot(x_596, x_597);
  let x_599 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_599);
  let x_601 : f32 = u_xlat76;
  let x_603 : vec3<f32> = vs_TEXCOORD3;
  let x_604 : vec3<f32> = (vec3<f32>(x_601, x_601, x_601) * x_603);
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_609 : f32 = vs_TEXCOORD7.y;
  let x_611 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat76 = (x_609 * x_611);
  let x_614 : f32 = x_29.unity_MatrixV[0i].z;
  let x_616 : f32 = vs_TEXCOORD7.x;
  let x_618 : f32 = u_xlat76;
  u_xlat76 = ((x_614 * x_616) + x_618);
  let x_621 : f32 = x_29.unity_MatrixV[2i].z;
  let x_623 : f32 = vs_TEXCOORD7.z;
  let x_625 : f32 = u_xlat76;
  u_xlat76 = ((x_621 * x_623) + x_625);
  let x_627 : f32 = u_xlat76;
  let x_630 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat76 = (x_627 + x_630);
  let x_632 : f32 = u_xlat76;
  let x_635 : f32 = x_29.x_ProjectionParams.y;
  u_xlat76 = (-(x_632) + -(x_635));
  let x_638 : f32 = u_xlat76;
  u_xlat76 = max(x_638, 0.0f);
  let x_640 : f32 = u_xlat76;
  let x_642 : f32 = x_29.unity_FogParams.x;
  u_xlat76 = (x_640 * x_642);
  u_xlat2.w = 1.0f;
  let x_650 : vec4<f32> = x_648.unity_SHAr;
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_650, x_651);
  let x_655 : vec4<f32> = x_648.unity_SHAg;
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_655, x_656);
  let x_660 : vec4<f32> = x_648.unity_SHAb;
  let x_661 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_660, x_661);
  let x_664 : vec4<f32> = u_xlat2;
  let x_666 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_664.y, x_664.z, x_664.z, x_664.x) * vec4<f32>(x_666.x, x_666.y, x_666.z, x_666.z));
  let x_670 : vec4<f32> = x_648.unity_SHBr;
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_670, x_671);
  let x_675 : vec4<f32> = x_648.unity_SHBg;
  let x_676 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_675, x_676);
  let x_680 : vec4<f32> = x_648.unity_SHBb;
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_680, x_681);
  let x_686 : f32 = u_xlat2.y;
  let x_688 : f32 = u_xlat2.y;
  u_xlat77 = (x_686 * x_688);
  let x_691 : f32 = u_xlat2.x;
  let x_693 : f32 = u_xlat2.x;
  let x_695 : f32 = u_xlat77;
  u_xlat77 = ((x_691 * x_693) + -(x_695));
  let x_700 : vec4<f32> = x_648.unity_SHC;
  let x_702 : f32 = u_xlat77;
  let x_705 : vec4<f32> = u_xlat6;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.y, x_700.z) * vec3<f32>(x_702, x_702, x_702)) + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat3;
  let x_712 : vec4<f32> = u_xlat4;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat3;
  let x_720 : vec3<f32> = max(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_724 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_724) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_730 : f32 = u_xlat50;
  let x_731 : f32 = u_xlat77;
  u_xlat78 = (x_730 + -(x_731));
  let x_734 : f32 = u_xlat77;
  let x_736 : vec4<f32> = u_xlat5;
  let x_738 : vec3<f32> = (vec3<f32>(x_734, x_734, x_734) * vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat5;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_746 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec3<f32> = u_xlat0;
  let x_750 : vec4<f32> = u_xlat5;
  let x_755 : vec3<f32> = ((vec3<f32>(x_748.x, x_748.x, x_748.x) * vec3<f32>(x_750.x, x_750.y, x_750.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_756 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : f32 = u_xlat50;
  u_xlat0.x = (-(x_758) + 1.0f);
  let x_763 : f32 = u_xlat0.x;
  let x_765 : f32 = u_xlat0.x;
  u_xlat50 = (x_763 * x_765);
  let x_767 : f32 = u_xlat50;
  u_xlat50 = max(x_767, 0.0078125f);
  let x_770 : f32 = u_xlat50;
  let x_771 : f32 = u_xlat50;
  u_xlat77 = (x_770 * x_771);
  let x_773 : f32 = u_xlat78;
  u_xlat78 = (x_773 + 1.0f);
  let x_775 : f32 = u_xlat78;
  u_xlat78 = clamp(x_775, 0.0f, 1.0f);
  let x_778 : f32 = u_xlat50;
  u_xlat79 = ((x_778 * 4.0f) + 2.0f);
  let x_782 : f32 = u_xlat25;
  u_xlat25 = min(x_782, 1.0f);
  let x_794 : f32 = x_792.x_MainLightShadowParams.y;
  u_xlatb80 = (0.0f < x_794);
  let x_796 : bool = u_xlatb80;
  if (x_796) {
    let x_800 : f32 = x_792.x_MainLightShadowParams.y;
    u_xlatb80 = (x_800 == 1.0f);
    let x_802 : bool = u_xlatb80;
    if (x_802) {
      let x_806 : vec4<f32> = vs_TEXCOORD8;
      let x_809 : vec4<f32> = x_792.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_806.x, x_806.y, x_806.x, x_806.y) + x_809);
      let x_812 : vec4<f32> = u_xlat6;
      let x_813 : vec2<f32> = vec2<f32>(x_812.x, x_812.y);
      let x_815 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_813.x, x_813.y, x_815);
      let x_827 : vec3<f32> = txVec0;
      let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_827.xy, x_827.z);
      u_xlat7.x = x_829;
      let x_832 : vec4<f32> = u_xlat6;
      let x_833 : vec2<f32> = vec2<f32>(x_832.z, x_832.w);
      let x_835 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_833.x, x_833.y, x_835);
      let x_842 : vec3<f32> = txVec1;
      let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_842.xy, x_842.z);
      u_xlat7.y = x_844;
      let x_846 : vec4<f32> = vs_TEXCOORD8;
      let x_849 : vec4<f32> = x_792.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_846.x, x_846.y, x_846.x, x_846.y) + x_849);
      let x_852 : vec4<f32> = u_xlat6;
      let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
      let x_855 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_853.x, x_853.y, x_855);
      let x_862 : vec3<f32> = txVec2;
      let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_862.xy, x_862.z);
      u_xlat7.z = x_864;
      let x_867 : vec4<f32> = u_xlat6;
      let x_868 : vec2<f32> = vec2<f32>(x_867.z, x_867.w);
      let x_870 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_868.x, x_868.y, x_870);
      let x_877 : vec3<f32> = txVec3;
      let x_879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_877.xy, x_877.z);
      u_xlat7.w = x_879;
      let x_882 : vec4<f32> = u_xlat7;
      u_xlat80 = dot(x_882, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_889 : f32 = x_792.x_MainLightShadowParams.y;
      u_xlatb6 = (x_889 == 2.0f);
      let x_891 : bool = u_xlatb6;
      if (x_891) {
        let x_894 : vec4<f32> = vs_TEXCOORD8;
        let x_897 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_900 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + vec2<f32>(0.5f, 0.5f));
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_903 : vec4<f32> = u_xlat6;
        let x_905 : vec2<f32> = floor(vec2<f32>(x_903.x, x_903.y));
        let x_906 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
        let x_910 : vec4<f32> = vs_TEXCOORD8;
        let x_913 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_916 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_910.x, x_910.y) * vec2<f32>(x_913.z, x_913.w)) + -(vec2<f32>(x_916.x, x_916.y)));
        let x_920 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_920.x, x_920.x, x_920.y, x_920.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_924 : vec4<f32> = u_xlat7;
        let x_926 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_924.x, x_924.x, x_924.z, x_924.z) * vec4<f32>(x_926.x, x_926.x, x_926.z, x_926.z));
        let x_929 : vec4<f32> = u_xlat8;
        let x_933 : vec2<f32> = (vec2<f32>(x_929.y, x_929.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_934 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_933.x, x_934.y, x_933.y, x_934.w);
        let x_936 : vec4<f32> = u_xlat8;
        let x_939 : vec2<f32> = u_xlat56;
        let x_941 : vec2<f32> = ((vec2<f32>(x_936.x, x_936.z) * vec2<f32>(0.5f, 0.5f)) + -(x_939));
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_945 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_945) + vec2<f32>(1.0f, 1.0f));
        let x_949 : vec2<f32> = u_xlat56;
        let x_951 : vec2<f32> = min(x_949, vec2<f32>(0.0f, 0.0f));
        let x_952 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat9;
        let x_957 : vec4<f32> = u_xlat9;
        let x_960 : vec2<f32> = u_xlat58;
        let x_961 : vec2<f32> = ((-(vec2<f32>(x_954.x, x_954.y)) * vec2<f32>(x_957.x, x_957.y)) + x_960);
        let x_962 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_964, vec2<f32>(0.0f, 0.0f));
        let x_966 : vec2<f32> = u_xlat56;
        let x_968 : vec2<f32> = u_xlat56;
        let x_970 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_966) * x_968) + vec2<f32>(x_970.y, x_970.w));
        let x_973 : vec4<f32> = u_xlat9;
        let x_975 : vec2<f32> = (vec2<f32>(x_973.x, x_973.y) + vec2<f32>(1.0f, 1.0f));
        let x_976 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_978 + vec2<f32>(1.0f, 1.0f));
        let x_980 : vec4<f32> = u_xlat8;
        let x_984 : vec2<f32> = (vec2<f32>(x_980.x, x_980.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_985 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec2<f32> = u_xlat58;
        let x_988 : vec2<f32> = (x_987 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_989 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat9;
        let x_993 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_996 : vec2<f32> = u_xlat56;
        let x_997 : vec2<f32> = (x_996 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_998 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_997.x, x_997.y, x_998.z, x_998.w);
        let x_1000 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1000.y, x_1000.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1004 : f32 = u_xlat9.x;
        u_xlat10.z = x_1004;
        let x_1007 : f32 = u_xlat56.x;
        u_xlat10.w = x_1007;
        let x_1010 : f32 = u_xlat11.x;
        u_xlat8.z = x_1010;
        let x_1013 : f32 = u_xlat7.x;
        u_xlat8.w = x_1013;
        let x_1015 : vec4<f32> = u_xlat8;
        let x_1017 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1015.z, x_1015.w, x_1015.x, x_1015.z) + vec4<f32>(x_1017.z, x_1017.w, x_1017.x, x_1017.z));
        let x_1021 : f32 = u_xlat10.y;
        u_xlat9.z = x_1021;
        let x_1024 : f32 = u_xlat56.y;
        u_xlat9.w = x_1024;
        let x_1027 : f32 = u_xlat8.y;
        u_xlat11.z = x_1027;
        let x_1030 : f32 = u_xlat7.z;
        u_xlat11.w = x_1030;
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1034 : vec4<f32> = u_xlat11;
        let x_1036 : vec3<f32> = (vec3<f32>(x_1032.z, x_1032.y, x_1032.w) + vec3<f32>(x_1034.z, x_1034.y, x_1034.w));
        let x_1037 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1041 : vec4<f32> = u_xlat12;
        let x_1043 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.z, x_1039.w) / vec3<f32>(x_1041.z, x_1041.w, x_1041.y));
        let x_1044 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat8;
        let x_1052 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1053 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
        let x_1055 : vec4<f32> = u_xlat11;
        let x_1057 : vec4<f32> = u_xlat7;
        let x_1059 : vec3<f32> = (vec3<f32>(x_1055.z, x_1055.y, x_1055.w) / vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1064 : vec3<f32> = (vec3<f32>(x_1062.x, x_1062.y, x_1062.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat8;
        let x_1070 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1072 : vec3<f32> = (vec3<f32>(x_1067.y, x_1067.x, x_1067.z) * vec3<f32>(x_1070.x, x_1070.x, x_1070.x));
        let x_1073 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat9;
        let x_1078 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1080 : vec3<f32> = (vec3<f32>(x_1075.x, x_1075.y, x_1075.z) * vec3<f32>(x_1078.y, x_1078.y, x_1078.y));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
        let x_1084 : f32 = u_xlat9.x;
        u_xlat8.w = x_1084;
        let x_1086 : vec4<f32> = u_xlat6;
        let x_1089 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y) * vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y)) + vec4<f32>(x_1092.y, x_1092.w, x_1092.x, x_1092.w));
        let x_1095 : vec4<f32> = u_xlat6;
        let x_1098 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1095.x, x_1095.y) * vec2<f32>(x_1098.x, x_1098.y)) + vec2<f32>(x_1101.z, x_1101.w));
        let x_1105 : f32 = u_xlat8.y;
        u_xlat9.w = x_1105;
        let x_1107 : vec4<f32> = u_xlat9;
        let x_1108 : vec2<f32> = vec2<f32>(x_1107.y, x_1107.z);
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1109.x, x_1108.x, x_1109.z, x_1108.y);
        let x_1111 : vec4<f32> = u_xlat6;
        let x_1114 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y) * vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y)) + vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat6;
        let x_1123 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y) * vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y)) + vec4<f32>(x_1126.w, x_1126.y, x_1126.w, x_1126.z));
        let x_1129 : vec4<f32> = u_xlat6;
        let x_1132 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y) * vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y)) + vec4<f32>(x_1135.x, x_1135.w, x_1135.z, x_1135.w));
        let x_1138 : vec4<f32> = u_xlat7;
        let x_1140 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1138.x, x_1138.x, x_1138.x, x_1138.y) * vec4<f32>(x_1140.z, x_1140.w, x_1140.y, x_1140.z));
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1146 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1144.y, x_1144.y, x_1144.z, x_1144.z) * x_1146);
        let x_1149 : f32 = u_xlat7.z;
        let x_1151 : f32 = u_xlat12.y;
        u_xlat6.x = (x_1149 * x_1151);
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1156 : vec2<f32> = vec2<f32>(x_1155.x, x_1155.y);
        let x_1158 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1156.x, x_1156.y, x_1158);
        let x_1166 : vec3<f32> = txVec4;
        let x_1168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1166.xy, x_1166.z);
        u_xlat31.x = x_1168;
        let x_1171 : vec4<f32> = u_xlat10;
        let x_1172 : vec2<f32> = vec2<f32>(x_1171.z, x_1171.w);
        let x_1174 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1172.x, x_1172.y, x_1174);
        let x_1181 : vec3<f32> = txVec5;
        let x_1183 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1181.xy, x_1181.z);
        u_xlat7.x = x_1183;
        let x_1186 : f32 = u_xlat7.x;
        let x_1188 : f32 = u_xlat13.y;
        u_xlat7.x = (x_1186 * x_1188);
        let x_1192 : f32 = u_xlat13.x;
        let x_1194 : f32 = u_xlat31.x;
        let x_1197 : f32 = u_xlat7.x;
        u_xlat31.x = ((x_1192 * x_1194) + x_1197);
        let x_1201 : vec2<f32> = u_xlat56;
        let x_1203 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec6;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1210.xy, x_1210.z);
        u_xlat56.x = x_1212;
        let x_1215 : f32 = u_xlat13.z;
        let x_1217 : f32 = u_xlat56.x;
        let x_1220 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1215 * x_1217) + x_1220);
        let x_1224 : vec4<f32> = u_xlat9;
        let x_1225 : vec2<f32> = vec2<f32>(x_1224.x, x_1224.y);
        let x_1227 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
        let x_1234 : vec3<f32> = txVec7;
        let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1234.xy, x_1234.z);
        u_xlat56.x = x_1236;
        let x_1239 : f32 = u_xlat13.w;
        let x_1241 : f32 = u_xlat56.x;
        let x_1244 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1239 * x_1241) + x_1244);
        let x_1248 : vec4<f32> = u_xlat11;
        let x_1249 : vec2<f32> = vec2<f32>(x_1248.x, x_1248.y);
        let x_1251 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec8;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1258.xy, x_1258.z);
        u_xlat56.x = x_1260;
        let x_1263 : f32 = u_xlat14.x;
        let x_1265 : f32 = u_xlat56.x;
        let x_1268 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1263 * x_1265) + x_1268);
        let x_1272 : vec4<f32> = u_xlat11;
        let x_1273 : vec2<f32> = vec2<f32>(x_1272.z, x_1272.w);
        let x_1275 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1273.x, x_1273.y, x_1275);
        let x_1282 : vec3<f32> = txVec9;
        let x_1284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1282.xy, x_1282.z);
        u_xlat56.x = x_1284;
        let x_1287 : f32 = u_xlat14.y;
        let x_1289 : f32 = u_xlat56.x;
        let x_1292 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1287 * x_1289) + x_1292);
        let x_1296 : vec4<f32> = u_xlat9;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.z, x_1296.w);
        let x_1299 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1306 : vec3<f32> = txVec10;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1306.xy, x_1306.z);
        u_xlat56.x = x_1308;
        let x_1311 : f32 = u_xlat14.z;
        let x_1313 : f32 = u_xlat56.x;
        let x_1316 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1311 * x_1313) + x_1316);
        let x_1320 : vec4<f32> = u_xlat8;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.x, x_1320.y);
        let x_1323 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec11;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat56.x = x_1332;
        let x_1335 : f32 = u_xlat14.w;
        let x_1337 : f32 = u_xlat56.x;
        let x_1340 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1335 * x_1337) + x_1340);
        let x_1344 : vec4<f32> = u_xlat8;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.z, x_1344.w);
        let x_1347 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec12;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat56.x = x_1356;
        let x_1359 : f32 = u_xlat6.x;
        let x_1361 : f32 = u_xlat56.x;
        let x_1364 : f32 = u_xlat31.x;
        u_xlat80 = ((x_1359 * x_1361) + x_1364);
      } else {
        let x_1367 : vec4<f32> = vs_TEXCOORD8;
        let x_1370 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1373 : vec2<f32> = ((vec2<f32>(x_1367.x, x_1367.y) * vec2<f32>(x_1370.z, x_1370.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1374 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1373.x, x_1373.y, x_1374.z, x_1374.w);
        let x_1376 : vec4<f32> = u_xlat6;
        let x_1378 : vec2<f32> = floor(vec2<f32>(x_1376.x, x_1376.y));
        let x_1379 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1378.x, x_1378.y, x_1379.z, x_1379.w);
        let x_1381 : vec4<f32> = vs_TEXCOORD8;
        let x_1384 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1381.x, x_1381.y) * vec2<f32>(x_1384.z, x_1384.w)) + -(vec2<f32>(x_1387.x, x_1387.y)));
        let x_1391 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1391.x, x_1391.x, x_1391.y, x_1391.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1394 : vec4<f32> = u_xlat7;
        let x_1396 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1394.x, x_1394.x, x_1394.z, x_1394.z) * vec4<f32>(x_1396.x, x_1396.x, x_1396.z, x_1396.z));
        let x_1399 : vec4<f32> = u_xlat8;
        let x_1403 : vec2<f32> = (vec2<f32>(x_1399.y, x_1399.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1404 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1404.x, x_1403.x, x_1404.z, x_1403.y);
        let x_1406 : vec4<f32> = u_xlat8;
        let x_1409 : vec2<f32> = u_xlat56;
        let x_1411 : vec2<f32> = ((vec2<f32>(x_1406.x, x_1406.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1409));
        let x_1412 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1411.x, x_1412.y, x_1411.y, x_1412.w);
        let x_1414 : vec2<f32> = u_xlat56;
        let x_1416 : vec2<f32> = (-(x_1414) + vec2<f32>(1.0f, 1.0f));
        let x_1417 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1416.x, x_1416.y, x_1417.z, x_1417.w);
        let x_1419 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1419, vec2<f32>(0.0f, 0.0f));
        let x_1421 : vec2<f32> = u_xlat58;
        let x_1423 : vec2<f32> = u_xlat58;
        let x_1425 : vec4<f32> = u_xlat8;
        let x_1427 : vec2<f32> = ((-(x_1421) * x_1423) + vec2<f32>(x_1425.x, x_1425.y));
        let x_1428 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1427.x, x_1427.y, x_1428.z, x_1428.w);
        let x_1430 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1430, vec2<f32>(0.0f, 0.0f));
        let x_1433 : vec2<f32> = u_xlat58;
        let x_1435 : vec2<f32> = u_xlat58;
        let x_1437 : vec4<f32> = u_xlat7;
        let x_1439 : vec2<f32> = ((-(x_1433) * x_1435) + vec2<f32>(x_1437.y, x_1437.w));
        let x_1440 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1439.x, x_1440.y, x_1439.y);
        let x_1442 : vec4<f32> = u_xlat8;
        let x_1445 : vec2<f32> = (vec2<f32>(x_1442.x, x_1442.y) + vec2<f32>(2.0f, 2.0f));
        let x_1446 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
        let x_1448 : vec3<f32> = u_xlat32;
        let x_1450 : vec2<f32> = (vec2<f32>(x_1448.x, x_1448.z) + vec2<f32>(2.0f, 2.0f));
        let x_1451 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1451.x, x_1450.x, x_1451.z, x_1450.y);
        let x_1454 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1454 * 0.08163200318813323975f);
        let x_1458 : vec4<f32> = u_xlat7;
        let x_1461 : vec3<f32> = (vec3<f32>(x_1458.z, x_1458.x, x_1458.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1462 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
        let x_1464 : vec4<f32> = u_xlat8;
        let x_1467 : vec2<f32> = (vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1468 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1467.x, x_1467.y, x_1468.z, x_1468.w);
        let x_1471 : f32 = u_xlat11.y;
        u_xlat10.x = x_1471;
        let x_1473 : vec2<f32> = u_xlat56;
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1473.x, x_1473.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1481 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1481.x, x_1480.x, x_1481.z, x_1480.y);
        let x_1483 : vec2<f32> = u_xlat56;
        let x_1487 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1488 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1487.x, x_1488.y, x_1487.y, x_1488.w);
        let x_1491 : f32 = u_xlat7.x;
        u_xlat8.y = x_1491;
        let x_1494 : f32 = u_xlat9.y;
        u_xlat8.w = x_1494;
        let x_1496 : vec4<f32> = u_xlat8;
        let x_1497 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1496 + x_1497);
        let x_1499 : vec2<f32> = u_xlat56;
        let x_1502 : vec2<f32> = ((vec2<f32>(x_1499.y, x_1499.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1503 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1503.x, x_1502.x, x_1503.z, x_1502.y);
        let x_1505 : vec2<f32> = u_xlat56;
        let x_1508 : vec2<f32> = ((vec2<f32>(x_1505.y, x_1505.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1509 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1508.x, x_1509.y, x_1508.y, x_1509.w);
        let x_1512 : f32 = u_xlat7.y;
        u_xlat9.y = x_1512;
        let x_1514 : vec4<f32> = u_xlat9;
        let x_1515 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1514 + x_1515);
        let x_1517 : vec4<f32> = u_xlat8;
        let x_1518 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1517 / x_1518);
        let x_1520 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1520 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1526 : vec4<f32> = u_xlat9;
        let x_1527 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1526 / x_1527);
        let x_1529 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1529 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1531 : vec4<f32> = u_xlat8;
        let x_1534 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1531.w, x_1531.x, x_1531.y, x_1531.z) * vec4<f32>(x_1534.x, x_1534.x, x_1534.x, x_1534.x));
        let x_1537 : vec4<f32> = u_xlat9;
        let x_1540 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1537.x, x_1537.w, x_1537.y, x_1537.z) * vec4<f32>(x_1540.y, x_1540.y, x_1540.y, x_1540.y));
        let x_1543 : vec4<f32> = u_xlat8;
        let x_1544 : vec3<f32> = vec3<f32>(x_1543.y, x_1543.z, x_1543.w);
        let x_1545 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1544.x, x_1545.y, x_1544.y, x_1544.z);
        let x_1548 : f32 = u_xlat9.x;
        u_xlat11.y = x_1548;
        let x_1550 : vec4<f32> = u_xlat6;
        let x_1553 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1556 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y) * vec4<f32>(x_1553.x, x_1553.y, x_1553.x, x_1553.y)) + vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1556.y));
        let x_1559 : vec4<f32> = u_xlat6;
        let x_1562 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1565 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(x_1562.x, x_1562.y)) + vec2<f32>(x_1565.w, x_1565.y));
        let x_1569 : f32 = u_xlat11.y;
        u_xlat8.y = x_1569;
        let x_1572 : f32 = u_xlat9.z;
        u_xlat11.y = x_1572;
        let x_1574 : vec4<f32> = u_xlat6;
        let x_1577 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1580 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1574.x, x_1574.y, x_1574.x, x_1574.y) * vec4<f32>(x_1577.x, x_1577.y, x_1577.x, x_1577.y)) + vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1580.y));
        let x_1583 : vec4<f32> = u_xlat6;
        let x_1586 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat11;
        let x_1591 : vec2<f32> = ((vec2<f32>(x_1583.x, x_1583.y) * vec2<f32>(x_1586.x, x_1586.y)) + vec2<f32>(x_1589.w, x_1589.y));
        let x_1592 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1591.x, x_1591.y, x_1592.z, x_1592.w);
        let x_1595 : f32 = u_xlat11.y;
        u_xlat8.z = x_1595;
        let x_1598 : vec4<f32> = u_xlat6;
        let x_1601 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1604 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1598.x, x_1598.y, x_1598.x, x_1598.y) * vec4<f32>(x_1601.x, x_1601.y, x_1601.x, x_1601.y)) + vec4<f32>(x_1604.x, x_1604.y, x_1604.x, x_1604.z));
        let x_1608 : f32 = u_xlat9.w;
        u_xlat11.y = x_1608;
        let x_1611 : vec4<f32> = u_xlat6;
        let x_1614 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1617 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1611.x, x_1611.y, x_1611.x, x_1611.y) * vec4<f32>(x_1614.x, x_1614.y, x_1614.x, x_1614.y)) + vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1617.y));
        let x_1621 : vec4<f32> = u_xlat6;
        let x_1624 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1627 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1621.x, x_1621.y) * vec2<f32>(x_1624.x, x_1624.y)) + vec2<f32>(x_1627.w, x_1627.y));
        let x_1631 : f32 = u_xlat11.y;
        u_xlat8.w = x_1631;
        let x_1634 : vec4<f32> = u_xlat6;
        let x_1637 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1640 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.x, x_1640.w));
        let x_1643 : vec4<f32> = u_xlat11;
        let x_1644 : vec3<f32> = vec3<f32>(x_1643.x, x_1643.z, x_1643.w);
        let x_1645 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1644.x, x_1645.y, x_1644.y, x_1644.z);
        let x_1647 : vec4<f32> = u_xlat6;
        let x_1650 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1653 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1647.x, x_1647.y, x_1647.x, x_1647.y) * vec4<f32>(x_1650.x, x_1650.y, x_1650.x, x_1650.y)) + vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1653.y));
        let x_1657 : vec4<f32> = u_xlat6;
        let x_1660 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1663 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1657.x, x_1657.y) * vec2<f32>(x_1660.x, x_1660.y)) + vec2<f32>(x_1663.w, x_1663.y));
        let x_1667 : f32 = u_xlat8.x;
        u_xlat9.x = x_1667;
        let x_1669 : vec4<f32> = u_xlat6;
        let x_1672 : vec4<f32> = x_792.x_MainLightShadowmapSize;
        let x_1675 : vec4<f32> = u_xlat9;
        let x_1677 : vec2<f32> = ((vec2<f32>(x_1669.x, x_1669.y) * vec2<f32>(x_1672.x, x_1672.y)) + vec2<f32>(x_1675.x, x_1675.y));
        let x_1678 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1677.x, x_1677.y, x_1678.z, x_1678.w);
        let x_1681 : vec4<f32> = u_xlat7;
        let x_1683 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1681.x, x_1681.x, x_1681.x, x_1681.x) * x_1683);
        let x_1686 : vec4<f32> = u_xlat7;
        let x_1688 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1686.y, x_1686.y, x_1686.y, x_1686.y) * x_1688);
        let x_1691 : vec4<f32> = u_xlat7;
        let x_1693 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1691.z, x_1691.z, x_1691.z, x_1691.z) * x_1693);
        let x_1695 : vec4<f32> = u_xlat7;
        let x_1697 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1695.w, x_1695.w, x_1695.w, x_1695.w) * x_1697);
        let x_1700 : vec4<f32> = u_xlat12;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.x, x_1700.y);
        let x_1703 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec13;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat8.x = x_1712;
        let x_1715 : vec4<f32> = u_xlat12;
        let x_1716 : vec2<f32> = vec2<f32>(x_1715.z, x_1715.w);
        let x_1718 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1716.x, x_1716.y, x_1718);
        let x_1726 : vec3<f32> = txVec14;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1726.xy, x_1726.z);
        u_xlat83 = x_1728;
        let x_1729 : f32 = u_xlat83;
        let x_1731 : f32 = u_xlat17.y;
        u_xlat83 = (x_1729 * x_1731);
        let x_1734 : f32 = u_xlat17.x;
        let x_1736 : f32 = u_xlat8.x;
        let x_1738 : f32 = u_xlat83;
        u_xlat8.x = ((x_1734 * x_1736) + x_1738);
        let x_1742 : vec2<f32> = u_xlat56;
        let x_1744 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1742.x, x_1742.y, x_1744);
        let x_1751 : vec3<f32> = txVec15;
        let x_1753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1751.xy, x_1751.z);
        u_xlat56.x = x_1753;
        let x_1756 : f32 = u_xlat17.z;
        let x_1758 : f32 = u_xlat56.x;
        let x_1761 : f32 = u_xlat8.x;
        u_xlat56.x = ((x_1756 * x_1758) + x_1761);
        let x_1765 : vec4<f32> = u_xlat15;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.x, x_1765.y);
        let x_1768 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1776 : vec3<f32> = txVec16;
        let x_1778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1776.xy, x_1776.z);
        u_xlat81 = x_1778;
        let x_1780 : f32 = u_xlat17.w;
        let x_1781 : f32 = u_xlat81;
        let x_1784 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1780 * x_1781) + x_1784);
        let x_1788 : vec4<f32> = u_xlat13;
        let x_1789 : vec2<f32> = vec2<f32>(x_1788.x, x_1788.y);
        let x_1791 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1798 : vec3<f32> = txVec17;
        let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1798.xy, x_1798.z);
        u_xlat81 = x_1800;
        let x_1802 : f32 = u_xlat18.x;
        let x_1803 : f32 = u_xlat81;
        let x_1806 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1802 * x_1803) + x_1806);
        let x_1810 : vec4<f32> = u_xlat13;
        let x_1811 : vec2<f32> = vec2<f32>(x_1810.z, x_1810.w);
        let x_1813 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1811.x, x_1811.y, x_1813);
        let x_1820 : vec3<f32> = txVec18;
        let x_1822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1820.xy, x_1820.z);
        u_xlat81 = x_1822;
        let x_1824 : f32 = u_xlat18.y;
        let x_1825 : f32 = u_xlat81;
        let x_1828 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1824 * x_1825) + x_1828);
        let x_1832 : vec4<f32> = u_xlat14;
        let x_1833 : vec2<f32> = vec2<f32>(x_1832.x, x_1832.y);
        let x_1835 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1833.x, x_1833.y, x_1835);
        let x_1842 : vec3<f32> = txVec19;
        let x_1844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1842.xy, x_1842.z);
        u_xlat81 = x_1844;
        let x_1846 : f32 = u_xlat18.z;
        let x_1847 : f32 = u_xlat81;
        let x_1850 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1846 * x_1847) + x_1850);
        let x_1854 : vec4<f32> = u_xlat15;
        let x_1855 : vec2<f32> = vec2<f32>(x_1854.z, x_1854.w);
        let x_1857 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
        let x_1864 : vec3<f32> = txVec20;
        let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1864.xy, x_1864.z);
        u_xlat81 = x_1866;
        let x_1868 : f32 = u_xlat18.w;
        let x_1869 : f32 = u_xlat81;
        let x_1872 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1868 * x_1869) + x_1872);
        let x_1876 : vec4<f32> = u_xlat16;
        let x_1877 : vec2<f32> = vec2<f32>(x_1876.x, x_1876.y);
        let x_1879 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
        let x_1886 : vec3<f32> = txVec21;
        let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1886.xy, x_1886.z);
        u_xlat81 = x_1888;
        let x_1890 : f32 = u_xlat19.x;
        let x_1891 : f32 = u_xlat81;
        let x_1894 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1890 * x_1891) + x_1894);
        let x_1898 : vec4<f32> = u_xlat16;
        let x_1899 : vec2<f32> = vec2<f32>(x_1898.z, x_1898.w);
        let x_1901 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1899.x, x_1899.y, x_1901);
        let x_1908 : vec3<f32> = txVec22;
        let x_1910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1908.xy, x_1908.z);
        u_xlat81 = x_1910;
        let x_1912 : f32 = u_xlat19.y;
        let x_1913 : f32 = u_xlat81;
        let x_1916 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1912 * x_1913) + x_1916);
        let x_1920 : vec2<f32> = u_xlat33;
        let x_1922 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1920.x, x_1920.y, x_1922);
        let x_1929 : vec3<f32> = txVec23;
        let x_1931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1929.xy, x_1929.z);
        u_xlat81 = x_1931;
        let x_1933 : f32 = u_xlat19.z;
        let x_1934 : f32 = u_xlat81;
        let x_1937 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1933 * x_1934) + x_1937);
        let x_1941 : vec2<f32> = u_xlat64;
        let x_1943 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec24;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1950.xy, x_1950.z);
        u_xlat81 = x_1952;
        let x_1954 : f32 = u_xlat19.w;
        let x_1955 : f32 = u_xlat81;
        let x_1958 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1954 * x_1955) + x_1958);
        let x_1962 : vec4<f32> = u_xlat11;
        let x_1963 : vec2<f32> = vec2<f32>(x_1962.x, x_1962.y);
        let x_1965 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1963.x, x_1963.y, x_1965);
        let x_1972 : vec3<f32> = txVec25;
        let x_1974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1972.xy, x_1972.z);
        u_xlat81 = x_1974;
        let x_1976 : f32 = u_xlat7.x;
        let x_1977 : f32 = u_xlat81;
        let x_1980 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1976 * x_1977) + x_1980);
        let x_1984 : vec4<f32> = u_xlat11;
        let x_1985 : vec2<f32> = vec2<f32>(x_1984.z, x_1984.w);
        let x_1987 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1985.x, x_1985.y, x_1987);
        let x_1994 : vec3<f32> = txVec26;
        let x_1996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1994.xy, x_1994.z);
        u_xlat81 = x_1996;
        let x_1998 : f32 = u_xlat7.y;
        let x_1999 : f32 = u_xlat81;
        let x_2002 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_1998 * x_1999) + x_2002);
        let x_2006 : vec2<f32> = u_xlat59;
        let x_2008 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2006.x, x_2006.y, x_2008);
        let x_2015 : vec3<f32> = txVec27;
        let x_2017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2015.xy, x_2015.z);
        u_xlat81 = x_2017;
        let x_2019 : f32 = u_xlat7.z;
        let x_2020 : f32 = u_xlat81;
        let x_2023 : f32 = u_xlat56.x;
        u_xlat56.x = ((x_2019 * x_2020) + x_2023);
        let x_2027 : vec4<f32> = u_xlat6;
        let x_2028 : vec2<f32> = vec2<f32>(x_2027.x, x_2027.y);
        let x_2030 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2028.x, x_2028.y, x_2030);
        let x_2037 : vec3<f32> = txVec28;
        let x_2039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2037.xy, x_2037.z);
        u_xlat6.x = x_2039;
        let x_2042 : f32 = u_xlat7.w;
        let x_2044 : f32 = u_xlat6.x;
        let x_2047 : f32 = u_xlat56.x;
        u_xlat80 = ((x_2042 * x_2044) + x_2047);
      }
    }
  } else {
    let x_2051 : vec4<f32> = vs_TEXCOORD8;
    let x_2052 : vec2<f32> = vec2<f32>(x_2051.x, x_2051.y);
    let x_2054 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2052.x, x_2052.y, x_2054);
    let x_2061 : vec3<f32> = txVec29;
    let x_2063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2061.xy, x_2061.z);
    u_xlat80 = x_2063;
  }
  let x_2065 : f32 = x_792.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_2065) + 1.0f);
  let x_2069 : f32 = u_xlat80;
  let x_2071 : f32 = x_792.x_MainLightShadowParams.x;
  let x_2074 : f32 = u_xlat6.x;
  u_xlat80 = ((x_2069 * x_2071) + x_2074);
  let x_2077 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_2077);
  let x_2081 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (x_2081 >= 1.0f);
  let x_2083 : bool = u_xlatb31;
  let x_2084 : bool = u_xlatb6;
  u_xlatb6 = (x_2083 | x_2084);
  let x_2086 : bool = u_xlatb6;
  let x_2087 : f32 = u_xlat80;
  u_xlat80 = select(x_2087, 1.0f, x_2086);
  let x_2089 : vec3<f32> = vs_TEXCOORD7;
  let x_2091 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_2093 : vec3<f32> = (x_2089 + -(x_2091));
  let x_2094 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2093.x, x_2093.y, x_2093.z, x_2094.w);
  let x_2096 : vec4<f32> = u_xlat6;
  let x_2098 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_2096.x, x_2096.y, x_2096.z), vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
  let x_2103 : f32 = u_xlat6.x;
  let x_2105 : f32 = x_792.x_MainLightShadowParams.z;
  let x_2108 : f32 = x_792.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_2103 * x_2105) + x_2108);
  let x_2112 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_2112, 0.0f, 1.0f);
  let x_2115 : f32 = u_xlat80;
  u_xlat56.x = (-(x_2115) + 1.0f);
  let x_2120 : f32 = u_xlat31.x;
  let x_2122 : f32 = u_xlat56.x;
  let x_2124 : f32 = u_xlat80;
  u_xlat80 = ((x_2120 * x_2122) + x_2124);
  let x_2126 : vec4<f32> = u_xlat1;
  let x_2129 : vec4<f32> = u_xlat2;
  u_xlat31.x = dot(-(vec3<f32>(x_2126.x, x_2126.y, x_2126.z)), vec3<f32>(x_2129.x, x_2129.y, x_2129.z));
  let x_2134 : f32 = u_xlat31.x;
  let x_2136 : f32 = u_xlat31.x;
  u_xlat31.x = (x_2134 + x_2136);
  let x_2139 : vec4<f32> = u_xlat2;
  let x_2141 : vec3<f32> = u_xlat31;
  let x_2145 : vec4<f32> = u_xlat1;
  u_xlat31 = ((vec3<f32>(x_2139.x, x_2139.y, x_2139.z) * -(vec3<f32>(x_2141.x, x_2141.x, x_2141.x))) + -(vec3<f32>(x_2145.x, x_2145.y, x_2145.z)));
  let x_2149 : vec4<f32> = u_xlat2;
  let x_2151 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(vec3<f32>(x_2149.x, x_2149.y, x_2149.z), vec3<f32>(x_2151.x, x_2151.y, x_2151.z));
  let x_2156 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_2156, 0.0f, 1.0f);
  let x_2160 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_2160) + 1.0f);
  let x_2165 : f32 = u_xlat7.x;
  let x_2167 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2165 * x_2167);
  let x_2171 : f32 = u_xlat7.x;
  let x_2173 : f32 = u_xlat7.x;
  u_xlat7.x = (x_2171 * x_2173);
  let x_2177 : f32 = u_xlat0.x;
  u_xlat32.x = ((-(x_2177) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2185 : f32 = u_xlat0.x;
  let x_2187 : f32 = u_xlat32.x;
  u_xlat0.x = (x_2185 * x_2187);
  let x_2191 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2191 * 6.0f);
  let x_2203 : vec3<f32> = u_xlat31;
  let x_2205 : f32 = u_xlat0.x;
  let x_2206 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_2203, x_2205);
  u_xlat8 = x_2206;
  let x_2208 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2208 + -1.0f);
  let x_2212 : f32 = x_648.unity_SpecCube0_HDR.w;
  let x_2214 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2212 * x_2214) + 1.0f);
  let x_2219 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2219, 0.0f);
  let x_2223 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2223);
  let x_2227 : f32 = u_xlat0.x;
  let x_2229 : f32 = x_648.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2227 * x_2229);
  let x_2233 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2233);
  let x_2237 : f32 = u_xlat0.x;
  let x_2239 : f32 = x_648.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2237 * x_2239);
  let x_2242 : vec4<f32> = u_xlat8;
  let x_2244 : vec3<f32> = u_xlat0;
  u_xlat31 = (vec3<f32>(x_2242.x, x_2242.y, x_2242.z) * vec3<f32>(x_2244.x, x_2244.x, x_2244.x));
  let x_2247 : f32 = u_xlat50;
  let x_2249 : f32 = u_xlat50;
  let x_2253 : vec2<f32> = ((vec2<f32>(x_2247, x_2247) * vec2<f32>(x_2249, x_2249)) + vec2<f32>(-1.0f, 1.0f));
  let x_2254 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2253.x, x_2254.y, x_2253.y);
  let x_2257 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2257);
  let x_2259 : vec4<f32> = u_xlat5;
  let x_2262 : f32 = u_xlat78;
  u_xlat32 = (-(vec3<f32>(x_2259.x, x_2259.y, x_2259.z)) + vec3<f32>(x_2262, x_2262, x_2262));
  let x_2265 : vec4<f32> = u_xlat7;
  let x_2267 : vec3<f32> = u_xlat32;
  let x_2269 : vec4<f32> = u_xlat5;
  let x_2271 : vec3<f32> = ((vec3<f32>(x_2265.x, x_2265.x, x_2265.x) * x_2267) + vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
  let x_2272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
  let x_2274 : f32 = u_xlat50;
  let x_2276 : vec4<f32> = u_xlat7;
  let x_2278 : vec3<f32> = (vec3<f32>(x_2274, x_2274, x_2274) * vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2279 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2278.x, x_2278.y, x_2278.z, x_2279.w);
  let x_2281 : vec3<f32> = u_xlat31;
  let x_2282 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2281 * vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
  let x_2285 : vec4<f32> = u_xlat3;
  let x_2287 : vec4<f32> = u_xlat4;
  let x_2290 : vec3<f32> = u_xlat31;
  let x_2291 : vec3<f32> = ((vec3<f32>(x_2285.x, x_2285.y, x_2285.z) * vec3<f32>(x_2287.x, x_2287.y, x_2287.z)) + x_2290);
  let x_2292 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
  let x_2294 : f32 = u_xlat80;
  let x_2296 : f32 = x_648.unity_LightData.z;
  u_xlat50 = (x_2294 * x_2296);
  let x_2298 : vec4<f32> = u_xlat2;
  let x_2301 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat78 = dot(vec3<f32>(x_2298.x, x_2298.y, x_2298.z), vec3<f32>(x_2301.x, x_2301.y, x_2301.z));
  let x_2304 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2304, 0.0f, 1.0f);
  let x_2306 : f32 = u_xlat50;
  let x_2307 : f32 = u_xlat78;
  u_xlat50 = (x_2306 * x_2307);
  let x_2309 : f32 = u_xlat50;
  let x_2312 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_2309, x_2309, x_2309) * vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
  let x_2315 : vec4<f32> = u_xlat1;
  let x_2318 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2320 : vec3<f32> = (vec3<f32>(x_2315.x, x_2315.y, x_2315.z) + vec3<f32>(x_2318.x, x_2318.y, x_2318.z));
  let x_2321 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2320.x, x_2320.y, x_2320.z, x_2321.w);
  let x_2323 : vec4<f32> = u_xlat7;
  let x_2325 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2323.x, x_2323.y, x_2323.z), vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
  let x_2328 : f32 = u_xlat50;
  u_xlat50 = max(x_2328, 1.17549435e-38f);
  let x_2331 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2331);
  let x_2333 : f32 = u_xlat50;
  let x_2335 : vec4<f32> = u_xlat7;
  let x_2337 : vec3<f32> = (vec3<f32>(x_2333, x_2333, x_2333) * vec3<f32>(x_2335.x, x_2335.y, x_2335.z));
  let x_2338 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2338.w);
  let x_2340 : vec4<f32> = u_xlat2;
  let x_2342 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2340.x, x_2340.y, x_2340.z), vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
  let x_2345 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2345, 0.0f, 1.0f);
  let x_2348 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2350 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2348.x, x_2348.y, x_2348.z), vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
  let x_2353 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2353, 0.0f, 1.0f);
  let x_2355 : f32 = u_xlat50;
  let x_2356 : f32 = u_xlat50;
  u_xlat50 = (x_2355 * x_2356);
  let x_2358 : f32 = u_xlat50;
  let x_2360 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2358 * x_2360) + 1.00001001358032226562f);
  let x_2364 : f32 = u_xlat78;
  let x_2365 : f32 = u_xlat78;
  u_xlat78 = (x_2364 * x_2365);
  let x_2367 : f32 = u_xlat50;
  let x_2368 : f32 = u_xlat50;
  u_xlat50 = (x_2367 * x_2368);
  let x_2370 : f32 = u_xlat78;
  u_xlat78 = max(x_2370, 0.10000000149011611938f);
  let x_2373 : f32 = u_xlat50;
  let x_2374 : f32 = u_xlat78;
  u_xlat50 = (x_2373 * x_2374);
  let x_2376 : f32 = u_xlat79;
  let x_2377 : f32 = u_xlat50;
  u_xlat50 = (x_2376 * x_2377);
  let x_2379 : f32 = u_xlat77;
  let x_2380 : f32 = u_xlat50;
  u_xlat50 = (x_2379 / x_2380);
  let x_2382 : vec4<f32> = u_xlat5;
  let x_2384 : f32 = u_xlat50;
  let x_2387 : vec4<f32> = u_xlat4;
  let x_2389 : vec3<f32> = ((vec3<f32>(x_2382.x, x_2382.y, x_2382.z) * vec3<f32>(x_2384, x_2384, x_2384)) + vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
  let x_2390 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2389.x, x_2389.y, x_2389.z, x_2390.w);
  let x_2392 : vec3<f32> = u_xlat31;
  let x_2393 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2392 * vec3<f32>(x_2393.x, x_2393.y, x_2393.z));
  let x_2397 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2399 : f32 = x_648.unity_LightData.y;
  u_xlat50 = min(x_2397, x_2399);
  let x_2403 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2403));
  let x_2407 : f32 = u_xlat6.x;
  let x_2409 : f32 = x_792.x_AdditionalShadowFadeParams.x;
  let x_2412 : f32 = x_792.x_AdditionalShadowFadeParams.y;
  u_xlat78 = ((x_2407 * x_2409) + x_2412);
  let x_2414 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2414, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2426 : u32 = u_xlatu_loop_1;
    let x_2427 : u32 = u_xlatu50;
    if ((x_2426 < x_2427)) {
    } else {
      break;
    }
    let x_2430 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2430 >> 2u);
    let x_2434 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2434 & 3u));
    let x_2437 : u32 = u_xlatu6;
    let x_2440 : vec4<f32> = x_648.unity_LightIndices[bitcast<i32>(x_2437)];
    let x_2450 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2455 : vec4<u32> = indexable[x_2450];
    u_xlat6.x = dot(x_2440, bitcast<vec4<f32>>(x_2455));
    let x_2461 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2461);
    let x_2463 : vec3<f32> = vs_TEXCOORD7;
    let x_2474 : i32 = u_xlati6;
    let x_2476 : vec4<f32> = x_2473.x_AdditionalLightsPosition[x_2474];
    let x_2479 : i32 = u_xlati6;
    let x_2481 : vec4<f32> = x_2473.x_AdditionalLightsPosition[x_2479];
    let x_2483 : vec3<f32> = ((-(x_2463) * vec3<f32>(x_2476.w, x_2476.w, x_2476.w)) + vec3<f32>(x_2481.x, x_2481.y, x_2481.z));
    let x_2484 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2483.x, x_2483.y, x_2483.z, x_2484.w);
    let x_2487 : vec4<f32> = u_xlat8;
    let x_2489 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2487.x, x_2487.y, x_2487.z), vec3<f32>(x_2489.x, x_2489.y, x_2489.z));
    let x_2492 : f32 = u_xlat82;
    u_xlat82 = max(x_2492, 0.00006103515625f);
    let x_2494 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2494);
    let x_2496 : f32 = u_xlat83;
    let x_2498 : vec4<f32> = u_xlat8;
    let x_2500 : vec3<f32> = (vec3<f32>(x_2496, x_2496, x_2496) * vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
    let x_2501 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
    let x_2504 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2504);
    let x_2506 : f32 = u_xlat82;
    let x_2507 : i32 = u_xlati6;
    let x_2509 : f32 = x_2473.x_AdditionalLightsAttenuation[x_2507].x;
    u_xlat82 = (x_2506 * x_2509);
    let x_2511 : f32 = u_xlat82;
    let x_2513 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2511) * x_2513) + 1.0f);
    let x_2516 : f32 = u_xlat82;
    u_xlat82 = max(x_2516, 0.0f);
    let x_2518 : f32 = u_xlat82;
    let x_2519 : f32 = u_xlat82;
    u_xlat82 = (x_2518 * x_2519);
    let x_2521 : f32 = u_xlat82;
    let x_2522 : f32 = u_xlat84;
    u_xlat82 = (x_2521 * x_2522);
    let x_2524 : i32 = u_xlati6;
    let x_2526 : vec4<f32> = x_2473.x_AdditionalLightsSpotDir[x_2524];
    let x_2528 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2526.x, x_2526.y, x_2526.z), vec3<f32>(x_2528.x, x_2528.y, x_2528.z));
    let x_2531 : f32 = u_xlat84;
    let x_2532 : i32 = u_xlati6;
    let x_2534 : f32 = x_2473.x_AdditionalLightsAttenuation[x_2532].z;
    let x_2536 : i32 = u_xlati6;
    let x_2538 : f32 = x_2473.x_AdditionalLightsAttenuation[x_2536].w;
    u_xlat84 = ((x_2531 * x_2534) + x_2538);
    let x_2540 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2540, 0.0f, 1.0f);
    let x_2542 : f32 = u_xlat84;
    let x_2543 : f32 = u_xlat84;
    u_xlat84 = (x_2542 * x_2543);
    let x_2545 : f32 = u_xlat82;
    let x_2546 : f32 = u_xlat84;
    u_xlat82 = (x_2545 * x_2546);
    let x_2549 : i32 = u_xlati6;
    let x_2551 : f32 = x_792.x_AdditionalShadowParams[x_2549].w;
    u_xlati84 = i32(x_2551);
    let x_2556 : i32 = u_xlati84;
    u_xlatb10.x = (x_2556 >= 0i);
    let x_2560 : bool = u_xlatb10.x;
    if (x_2560) {
      let x_2564 : i32 = u_xlati6;
      let x_2566 : f32 = x_792.x_AdditionalShadowParams[x_2564].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2566, x_2566, x_2566, x_2566))));
      let x_2572 : bool = u_xlatb10.x;
      if (x_2572) {
        let x_2575 : vec4<f32> = u_xlat9;
        let x_2578 : vec4<f32> = u_xlat9;
        let x_2581 : vec4<bool> = (abs(vec4<f32>(x_2575.z, x_2575.z, x_2575.y, x_2575.z)) >= abs(vec4<f32>(x_2578.x, x_2578.y, x_2578.x, x_2578.x)));
        u_xlatb10 = vec3<bool>(x_2581.x, x_2581.y, x_2581.z);
        let x_2584 : bool = u_xlatb10.y;
        let x_2586 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2584 & x_2586);
        let x_2590 : vec4<f32> = u_xlat9;
        let x_2593 : vec4<bool> = (-(vec4<f32>(x_2590.z, x_2590.y, x_2590.x, x_2590.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2593.x, x_2593.y, x_2593.z);
        let x_2597 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2597);
        let x_2602 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2602);
        let x_2607 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2607);
        let x_2612 : bool = u_xlatb10.z;
        if (x_2612) {
          let x_2618 : f32 = u_xlat35.z;
          x_2614 = x_2618;
        } else {
          let x_2621 : f32 = u_xlat11.x;
          x_2614 = x_2621;
        }
        let x_2622 : f32 = x_2614;
        u_xlat60 = x_2622;
        let x_2624 : bool = u_xlatb10.x;
        if (x_2624) {
          let x_2629 : f32 = u_xlat35.x;
          x_2625 = x_2629;
        } else {
          let x_2631 : f32 = u_xlat60;
          x_2625 = x_2631;
        }
        let x_2632 : f32 = x_2625;
        u_xlat10.x = x_2632;
        let x_2634 : i32 = u_xlati6;
        let x_2636 : f32 = x_792.x_AdditionalShadowParams[x_2634].w;
        u_xlat35.x = trunc(x_2636);
        let x_2640 : f32 = u_xlat10.x;
        let x_2642 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2640 + x_2642);
        let x_2646 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2646);
      }
      let x_2648 : i32 = u_xlati84;
      u_xlati84 = (x_2648 << bitcast<u32>(2i));
      let x_2650 : vec3<f32> = vs_TEXCOORD7;
      let x_2652 : i32 = u_xlati84;
      let x_2655 : i32 = u_xlati84;
      let x_2659 : vec4<f32> = x_792.x_AdditionalLightsWorldToShadow[((x_2652 + 1i) / 4i)][((x_2655 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2650.y, x_2650.y, x_2650.y, x_2650.y) * x_2659);
      let x_2661 : i32 = u_xlati84;
      let x_2663 : i32 = u_xlati84;
      let x_2666 : vec4<f32> = x_792.x_AdditionalLightsWorldToShadow[(x_2661 / 4i)][(x_2663 % 4i)];
      let x_2667 : vec3<f32> = vs_TEXCOORD7;
      let x_2670 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2666 * vec4<f32>(x_2667.x, x_2667.x, x_2667.x, x_2667.x)) + x_2670);
      let x_2672 : i32 = u_xlati84;
      let x_2675 : i32 = u_xlati84;
      let x_2679 : vec4<f32> = x_792.x_AdditionalLightsWorldToShadow[((x_2672 + 2i) / 4i)][((x_2675 + 2i) % 4i)];
      let x_2680 : vec3<f32> = vs_TEXCOORD7;
      let x_2683 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2679 * vec4<f32>(x_2680.z, x_2680.z, x_2680.z, x_2680.z)) + x_2683);
      let x_2685 : vec4<f32> = u_xlat10;
      let x_2686 : i32 = u_xlati84;
      let x_2689 : i32 = u_xlati84;
      let x_2693 : vec4<f32> = x_792.x_AdditionalLightsWorldToShadow[((x_2686 + 3i) / 4i)][((x_2689 + 3i) % 4i)];
      u_xlat10 = (x_2685 + x_2693);
      let x_2695 : vec4<f32> = u_xlat10;
      let x_2697 : vec4<f32> = u_xlat10;
      let x_2699 : vec3<f32> = (vec3<f32>(x_2695.x, x_2695.y, x_2695.z) / vec3<f32>(x_2697.w, x_2697.w, x_2697.w));
      let x_2700 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
      let x_2703 : i32 = u_xlati6;
      let x_2705 : f32 = x_792.x_AdditionalShadowParams[x_2703].y;
      u_xlatb84 = (0.0f < x_2705);
      let x_2707 : bool = u_xlatb84;
      if (x_2707) {
        let x_2710 : i32 = u_xlati6;
        let x_2712 : f32 = x_792.x_AdditionalShadowParams[x_2710].y;
        u_xlatb84 = (1.0f == x_2712);
        let x_2714 : bool = u_xlatb84;
        if (x_2714) {
          let x_2717 : vec4<f32> = u_xlat10;
          let x_2720 : vec4<f32> = x_792.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2717.x, x_2717.y, x_2717.x, x_2717.y) + x_2720);
          let x_2723 : vec4<f32> = u_xlat11;
          let x_2724 : vec2<f32> = vec2<f32>(x_2723.x, x_2723.y);
          let x_2726 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2724.x, x_2724.y, x_2726);
          let x_2734 : vec3<f32> = txVec30;
          let x_2736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2734.xy, x_2734.z);
          u_xlat12.x = x_2736;
          let x_2739 : vec4<f32> = u_xlat11;
          let x_2740 : vec2<f32> = vec2<f32>(x_2739.z, x_2739.w);
          let x_2742 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2740.x, x_2740.y, x_2742);
          let x_2749 : vec3<f32> = txVec31;
          let x_2751 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2749.xy, x_2749.z);
          u_xlat12.y = x_2751;
          let x_2753 : vec4<f32> = u_xlat10;
          let x_2756 : vec4<f32> = x_792.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2753.x, x_2753.y, x_2753.x, x_2753.y) + x_2756);
          let x_2759 : vec4<f32> = u_xlat11;
          let x_2760 : vec2<f32> = vec2<f32>(x_2759.x, x_2759.y);
          let x_2762 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2760.x, x_2760.y, x_2762);
          let x_2769 : vec3<f32> = txVec32;
          let x_2771 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2769.xy, x_2769.z);
          u_xlat12.z = x_2771;
          let x_2774 : vec4<f32> = u_xlat11;
          let x_2775 : vec2<f32> = vec2<f32>(x_2774.z, x_2774.w);
          let x_2777 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2775.x, x_2775.y, x_2777);
          let x_2784 : vec3<f32> = txVec33;
          let x_2786 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2784.xy, x_2784.z);
          u_xlat12.w = x_2786;
          let x_2788 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_2788, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2792 : i32 = u_xlati6;
          let x_2794 : f32 = x_792.x_AdditionalShadowParams[x_2792].y;
          u_xlatb85 = (2.0f == x_2794);
          let x_2796 : bool = u_xlatb85;
          if (x_2796) {
            let x_2799 : vec4<f32> = u_xlat10;
            let x_2802 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_2805 : vec2<f32> = ((vec2<f32>(x_2799.x, x_2799.y) * vec2<f32>(x_2802.z, x_2802.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2806 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2805.x, x_2805.y, x_2806.z, x_2806.w);
            let x_2808 : vec4<f32> = u_xlat11;
            let x_2810 : vec2<f32> = floor(vec2<f32>(x_2808.x, x_2808.y));
            let x_2811 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2810.x, x_2810.y, x_2811.z, x_2811.w);
            let x_2814 : vec4<f32> = u_xlat10;
            let x_2817 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_2820 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2814.x, x_2814.y) * vec2<f32>(x_2817.z, x_2817.w)) + -(vec2<f32>(x_2820.x, x_2820.y)));
            let x_2824 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2824.x, x_2824.x, x_2824.y, x_2824.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2827 : vec4<f32> = u_xlat12;
            let x_2829 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2827.x, x_2827.x, x_2827.z, x_2827.z) * vec4<f32>(x_2829.x, x_2829.x, x_2829.z, x_2829.z));
            let x_2832 : vec4<f32> = u_xlat13;
            let x_2834 : vec2<f32> = (vec2<f32>(x_2832.y, x_2832.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2835 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2834.x, x_2835.y, x_2834.y, x_2835.w);
            let x_2837 : vec4<f32> = u_xlat13;
            let x_2840 : vec2<f32> = u_xlat61;
            let x_2842 : vec2<f32> = ((vec2<f32>(x_2837.x, x_2837.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2840));
            let x_2843 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2842.x, x_2842.y, x_2843.z, x_2843.w);
            let x_2846 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2846) + vec2<f32>(1.0f, 1.0f));
            let x_2849 : vec2<f32> = u_xlat61;
            let x_2850 : vec2<f32> = min(x_2849, vec2<f32>(0.0f, 0.0f));
            let x_2851 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2850.x, x_2850.y, x_2851.z, x_2851.w);
            let x_2853 : vec4<f32> = u_xlat14;
            let x_2856 : vec4<f32> = u_xlat14;
            let x_2859 : vec2<f32> = u_xlat63;
            let x_2860 : vec2<f32> = ((-(vec2<f32>(x_2853.x, x_2853.y)) * vec2<f32>(x_2856.x, x_2856.y)) + x_2859);
            let x_2861 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2860.x, x_2860.y, x_2861.z, x_2861.w);
            let x_2863 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2863, vec2<f32>(0.0f, 0.0f));
            let x_2865 : vec2<f32> = u_xlat61;
            let x_2867 : vec2<f32> = u_xlat61;
            let x_2869 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2865) * x_2867) + vec2<f32>(x_2869.y, x_2869.w));
            let x_2872 : vec4<f32> = u_xlat14;
            let x_2874 : vec2<f32> = (vec2<f32>(x_2872.x, x_2872.y) + vec2<f32>(1.0f, 1.0f));
            let x_2875 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2874.x, x_2874.y, x_2875.z, x_2875.w);
            let x_2877 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2877 + vec2<f32>(1.0f, 1.0f));
            let x_2879 : vec4<f32> = u_xlat13;
            let x_2881 : vec2<f32> = (vec2<f32>(x_2879.x, x_2879.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2882 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2881.x, x_2881.y, x_2882.z, x_2882.w);
            let x_2884 : vec2<f32> = u_xlat63;
            let x_2885 : vec2<f32> = (x_2884 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2886 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2885.x, x_2885.y, x_2886.z, x_2886.w);
            let x_2888 : vec4<f32> = u_xlat14;
            let x_2890 : vec2<f32> = (vec2<f32>(x_2888.x, x_2888.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2891 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2890.x, x_2890.y, x_2891.z, x_2891.w);
            let x_2893 : vec2<f32> = u_xlat61;
            let x_2894 : vec2<f32> = (x_2893 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2895 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2894.x, x_2894.y, x_2895.z, x_2895.w);
            let x_2897 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2897.y, x_2897.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2901 : f32 = u_xlat14.x;
            u_xlat15.z = x_2901;
            let x_2904 : f32 = u_xlat61.x;
            u_xlat15.w = x_2904;
            let x_2907 : f32 = u_xlat16.x;
            u_xlat13.z = x_2907;
            let x_2910 : f32 = u_xlat12.x;
            u_xlat13.w = x_2910;
            let x_2912 : vec4<f32> = u_xlat13;
            let x_2914 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2912.z, x_2912.w, x_2912.x, x_2912.z) + vec4<f32>(x_2914.z, x_2914.w, x_2914.x, x_2914.z));
            let x_2918 : f32 = u_xlat15.y;
            u_xlat14.z = x_2918;
            let x_2921 : f32 = u_xlat61.y;
            u_xlat14.w = x_2921;
            let x_2924 : f32 = u_xlat13.y;
            u_xlat16.z = x_2924;
            let x_2927 : f32 = u_xlat12.z;
            u_xlat16.w = x_2927;
            let x_2929 : vec4<f32> = u_xlat14;
            let x_2931 : vec4<f32> = u_xlat16;
            let x_2933 : vec3<f32> = (vec3<f32>(x_2929.z, x_2929.y, x_2929.w) + vec3<f32>(x_2931.z, x_2931.y, x_2931.w));
            let x_2934 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2933.x, x_2933.y, x_2933.z, x_2934.w);
            let x_2936 : vec4<f32> = u_xlat13;
            let x_2938 : vec4<f32> = u_xlat17;
            let x_2940 : vec3<f32> = (vec3<f32>(x_2936.x, x_2936.z, x_2936.w) / vec3<f32>(x_2938.z, x_2938.w, x_2938.y));
            let x_2941 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2940.x, x_2940.y, x_2940.z, x_2941.w);
            let x_2943 : vec4<f32> = u_xlat13;
            let x_2945 : vec3<f32> = (vec3<f32>(x_2943.x, x_2943.y, x_2943.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2946 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2945.x, x_2945.y, x_2945.z, x_2946.w);
            let x_2948 : vec4<f32> = u_xlat16;
            let x_2950 : vec4<f32> = u_xlat12;
            let x_2952 : vec3<f32> = (vec3<f32>(x_2948.z, x_2948.y, x_2948.w) / vec3<f32>(x_2950.x, x_2950.y, x_2950.z));
            let x_2953 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2953.w);
            let x_2955 : vec4<f32> = u_xlat14;
            let x_2957 : vec3<f32> = (vec3<f32>(x_2955.x, x_2955.y, x_2955.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2958 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2957.x, x_2957.y, x_2957.z, x_2958.w);
            let x_2960 : vec4<f32> = u_xlat13;
            let x_2963 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_2965 : vec3<f32> = (vec3<f32>(x_2960.y, x_2960.x, x_2960.z) * vec3<f32>(x_2963.x, x_2963.x, x_2963.x));
            let x_2966 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2965.x, x_2965.y, x_2965.z, x_2966.w);
            let x_2968 : vec4<f32> = u_xlat14;
            let x_2971 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_2973 : vec3<f32> = (vec3<f32>(x_2968.x, x_2968.y, x_2968.z) * vec3<f32>(x_2971.y, x_2971.y, x_2971.y));
            let x_2974 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2973.x, x_2973.y, x_2973.z, x_2974.w);
            let x_2977 : f32 = u_xlat14.x;
            u_xlat13.w = x_2977;
            let x_2979 : vec4<f32> = u_xlat11;
            let x_2982 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_2985 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2979.x, x_2979.y, x_2979.x, x_2979.y) * vec4<f32>(x_2982.x, x_2982.y, x_2982.x, x_2982.y)) + vec4<f32>(x_2985.y, x_2985.w, x_2985.x, x_2985.w));
            let x_2988 : vec4<f32> = u_xlat11;
            let x_2991 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_2994 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2988.x, x_2988.y) * vec2<f32>(x_2991.x, x_2991.y)) + vec2<f32>(x_2994.z, x_2994.w));
            let x_2998 : f32 = u_xlat13.y;
            u_xlat14.w = x_2998;
            let x_3000 : vec4<f32> = u_xlat14;
            let x_3001 : vec2<f32> = vec2<f32>(x_3000.y, x_3000.z);
            let x_3002 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3002.x, x_3001.x, x_3002.z, x_3001.y);
            let x_3004 : vec4<f32> = u_xlat11;
            let x_3007 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3010 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3004.x, x_3004.y, x_3004.x, x_3004.y) * vec4<f32>(x_3007.x, x_3007.y, x_3007.x, x_3007.y)) + vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3010.y));
            let x_3013 : vec4<f32> = u_xlat11;
            let x_3016 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3019 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3013.x, x_3013.y, x_3013.x, x_3013.y) * vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y)) + vec4<f32>(x_3019.w, x_3019.y, x_3019.w, x_3019.z));
            let x_3022 : vec4<f32> = u_xlat11;
            let x_3025 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3028 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3022.x, x_3022.y, x_3022.x, x_3022.y) * vec4<f32>(x_3025.x, x_3025.y, x_3025.x, x_3025.y)) + vec4<f32>(x_3028.x, x_3028.w, x_3028.z, x_3028.w));
            let x_3031 : vec4<f32> = u_xlat12;
            let x_3033 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3031.x, x_3031.x, x_3031.x, x_3031.y) * vec4<f32>(x_3033.z, x_3033.w, x_3033.y, x_3033.z));
            let x_3036 : vec4<f32> = u_xlat12;
            let x_3038 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3036.y, x_3036.y, x_3036.z, x_3036.z) * x_3038);
            let x_3042 : f32 = u_xlat12.z;
            let x_3044 : f32 = u_xlat17.y;
            u_xlat85 = (x_3042 * x_3044);
            let x_3047 : vec4<f32> = u_xlat15;
            let x_3048 : vec2<f32> = vec2<f32>(x_3047.x, x_3047.y);
            let x_3050 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3048.x, x_3048.y, x_3050);
            let x_3057 : vec3<f32> = txVec34;
            let x_3059 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3057.xy, x_3057.z);
            u_xlat11.x = x_3059;
            let x_3062 : vec4<f32> = u_xlat15;
            let x_3063 : vec2<f32> = vec2<f32>(x_3062.z, x_3062.w);
            let x_3065 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3063.x, x_3063.y, x_3065);
            let x_3073 : vec3<f32> = txVec35;
            let x_3075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3073.xy, x_3073.z);
            u_xlat36 = x_3075;
            let x_3076 : f32 = u_xlat36;
            let x_3078 : f32 = u_xlat18.y;
            u_xlat36 = (x_3076 * x_3078);
            let x_3081 : f32 = u_xlat18.x;
            let x_3083 : f32 = u_xlat11.x;
            let x_3085 : f32 = u_xlat36;
            u_xlat11.x = ((x_3081 * x_3083) + x_3085);
            let x_3089 : vec2<f32> = u_xlat61;
            let x_3091 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3089.x, x_3089.y, x_3091);
            let x_3098 : vec3<f32> = txVec36;
            let x_3100 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3098.xy, x_3098.z);
            u_xlat36 = x_3100;
            let x_3102 : f32 = u_xlat18.z;
            let x_3103 : f32 = u_xlat36;
            let x_3106 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3102 * x_3103) + x_3106);
            let x_3110 : vec4<f32> = u_xlat14;
            let x_3111 : vec2<f32> = vec2<f32>(x_3110.x, x_3110.y);
            let x_3113 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3111.x, x_3111.y, x_3113);
            let x_3120 : vec3<f32> = txVec37;
            let x_3122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3120.xy, x_3120.z);
            u_xlat36 = x_3122;
            let x_3124 : f32 = u_xlat18.w;
            let x_3125 : f32 = u_xlat36;
            let x_3128 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3124 * x_3125) + x_3128);
            let x_3132 : vec4<f32> = u_xlat16;
            let x_3133 : vec2<f32> = vec2<f32>(x_3132.x, x_3132.y);
            let x_3135 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3133.x, x_3133.y, x_3135);
            let x_3142 : vec3<f32> = txVec38;
            let x_3144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3142.xy, x_3142.z);
            u_xlat36 = x_3144;
            let x_3146 : f32 = u_xlat19.x;
            let x_3147 : f32 = u_xlat36;
            let x_3150 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3146 * x_3147) + x_3150);
            let x_3154 : vec4<f32> = u_xlat16;
            let x_3155 : vec2<f32> = vec2<f32>(x_3154.z, x_3154.w);
            let x_3157 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
            let x_3164 : vec3<f32> = txVec39;
            let x_3166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
            u_xlat36 = x_3166;
            let x_3168 : f32 = u_xlat19.y;
            let x_3169 : f32 = u_xlat36;
            let x_3172 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3168 * x_3169) + x_3172);
            let x_3176 : vec4<f32> = u_xlat14;
            let x_3177 : vec2<f32> = vec2<f32>(x_3176.z, x_3176.w);
            let x_3179 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3177.x, x_3177.y, x_3179);
            let x_3186 : vec3<f32> = txVec40;
            let x_3188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3186.xy, x_3186.z);
            u_xlat36 = x_3188;
            let x_3190 : f32 = u_xlat19.z;
            let x_3191 : f32 = u_xlat36;
            let x_3194 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3190 * x_3191) + x_3194);
            let x_3198 : vec4<f32> = u_xlat13;
            let x_3199 : vec2<f32> = vec2<f32>(x_3198.x, x_3198.y);
            let x_3201 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3199.x, x_3199.y, x_3201);
            let x_3208 : vec3<f32> = txVec41;
            let x_3210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3208.xy, x_3208.z);
            u_xlat36 = x_3210;
            let x_3212 : f32 = u_xlat19.w;
            let x_3213 : f32 = u_xlat36;
            let x_3216 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3212 * x_3213) + x_3216);
            let x_3220 : vec4<f32> = u_xlat13;
            let x_3221 : vec2<f32> = vec2<f32>(x_3220.z, x_3220.w);
            let x_3223 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec42;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat36 = x_3232;
            let x_3233 : f32 = u_xlat85;
            let x_3234 : f32 = u_xlat36;
            let x_3237 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3233 * x_3234) + x_3237);
          } else {
            let x_3240 : vec4<f32> = u_xlat10;
            let x_3243 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3246 : vec2<f32> = ((vec2<f32>(x_3240.x, x_3240.y) * vec2<f32>(x_3243.z, x_3243.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3247 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3246.x, x_3246.y, x_3247.z, x_3247.w);
            let x_3249 : vec4<f32> = u_xlat11;
            let x_3251 : vec2<f32> = floor(vec2<f32>(x_3249.x, x_3249.y));
            let x_3252 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3251.x, x_3251.y, x_3252.z, x_3252.w);
            let x_3254 : vec4<f32> = u_xlat10;
            let x_3257 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3260 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3254.x, x_3254.y) * vec2<f32>(x_3257.z, x_3257.w)) + -(vec2<f32>(x_3260.x, x_3260.y)));
            let x_3264 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3264.x, x_3264.x, x_3264.y, x_3264.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3267 : vec4<f32> = u_xlat12;
            let x_3269 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3267.x, x_3267.x, x_3267.z, x_3267.z) * vec4<f32>(x_3269.x, x_3269.x, x_3269.z, x_3269.z));
            let x_3272 : vec4<f32> = u_xlat13;
            let x_3274 : vec2<f32> = (vec2<f32>(x_3272.y, x_3272.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3275 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3275.x, x_3274.x, x_3275.z, x_3274.y);
            let x_3277 : vec4<f32> = u_xlat13;
            let x_3280 : vec2<f32> = u_xlat61;
            let x_3282 : vec2<f32> = ((vec2<f32>(x_3277.x, x_3277.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3280));
            let x_3283 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3282.x, x_3283.y, x_3282.y, x_3283.w);
            let x_3285 : vec2<f32> = u_xlat61;
            let x_3287 : vec2<f32> = (-(x_3285) + vec2<f32>(1.0f, 1.0f));
            let x_3288 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3287.x, x_3287.y, x_3288.z, x_3288.w);
            let x_3290 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3290, vec2<f32>(0.0f, 0.0f));
            let x_3292 : vec2<f32> = u_xlat63;
            let x_3294 : vec2<f32> = u_xlat63;
            let x_3296 : vec4<f32> = u_xlat13;
            let x_3298 : vec2<f32> = ((-(x_3292) * x_3294) + vec2<f32>(x_3296.x, x_3296.y));
            let x_3299 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3298.x, x_3298.y, x_3299.z, x_3299.w);
            let x_3301 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3301, vec2<f32>(0.0f, 0.0f));
            let x_3304 : vec2<f32> = u_xlat63;
            let x_3306 : vec2<f32> = u_xlat63;
            let x_3308 : vec4<f32> = u_xlat12;
            let x_3310 : vec2<f32> = ((-(x_3304) * x_3306) + vec2<f32>(x_3308.y, x_3308.w));
            let x_3311 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3310.x, x_3311.y, x_3310.y);
            let x_3313 : vec4<f32> = u_xlat13;
            let x_3315 : vec2<f32> = (vec2<f32>(x_3313.x, x_3313.y) + vec2<f32>(2.0f, 2.0f));
            let x_3316 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3315.x, x_3315.y, x_3316.z, x_3316.w);
            let x_3318 : vec3<f32> = u_xlat37;
            let x_3320 : vec2<f32> = (vec2<f32>(x_3318.x, x_3318.z) + vec2<f32>(2.0f, 2.0f));
            let x_3321 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3321.x, x_3320.x, x_3321.z, x_3320.y);
            let x_3324 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3324 * 0.08163200318813323975f);
            let x_3327 : vec4<f32> = u_xlat12;
            let x_3329 : vec3<f32> = (vec3<f32>(x_3327.z, x_3327.x, x_3327.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3330 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3329.x, x_3329.y, x_3329.z, x_3330.w);
            let x_3332 : vec4<f32> = u_xlat13;
            let x_3334 : vec2<f32> = (vec2<f32>(x_3332.x, x_3332.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3335 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3334.x, x_3334.y, x_3335.z, x_3335.w);
            let x_3338 : f32 = u_xlat16.y;
            u_xlat15.x = x_3338;
            let x_3340 : vec2<f32> = u_xlat61;
            let x_3343 : vec2<f32> = ((vec2<f32>(x_3340.x, x_3340.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3344 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3344.x, x_3343.x, x_3344.z, x_3343.y);
            let x_3346 : vec2<f32> = u_xlat61;
            let x_3349 : vec2<f32> = ((vec2<f32>(x_3346.x, x_3346.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3350 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3349.x, x_3350.y, x_3349.y, x_3350.w);
            let x_3353 : f32 = u_xlat12.x;
            u_xlat13.y = x_3353;
            let x_3356 : f32 = u_xlat14.y;
            u_xlat13.w = x_3356;
            let x_3358 : vec4<f32> = u_xlat13;
            let x_3359 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3358 + x_3359);
            let x_3361 : vec2<f32> = u_xlat61;
            let x_3364 : vec2<f32> = ((vec2<f32>(x_3361.y, x_3361.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3365 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3365.x, x_3364.x, x_3365.z, x_3364.y);
            let x_3367 : vec2<f32> = u_xlat61;
            let x_3370 : vec2<f32> = ((vec2<f32>(x_3367.y, x_3367.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3371 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3370.x, x_3371.y, x_3370.y, x_3371.w);
            let x_3374 : f32 = u_xlat12.y;
            u_xlat14.y = x_3374;
            let x_3376 : vec4<f32> = u_xlat14;
            let x_3377 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3376 + x_3377);
            let x_3379 : vec4<f32> = u_xlat13;
            let x_3380 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3379 / x_3380);
            let x_3382 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3382 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3384 : vec4<f32> = u_xlat14;
            let x_3385 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3384 / x_3385);
            let x_3387 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3387 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3389 : vec4<f32> = u_xlat13;
            let x_3392 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3389.w, x_3389.x, x_3389.y, x_3389.z) * vec4<f32>(x_3392.x, x_3392.x, x_3392.x, x_3392.x));
            let x_3395 : vec4<f32> = u_xlat14;
            let x_3398 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3395.x, x_3395.w, x_3395.y, x_3395.z) * vec4<f32>(x_3398.y, x_3398.y, x_3398.y, x_3398.y));
            let x_3401 : vec4<f32> = u_xlat13;
            let x_3402 : vec3<f32> = vec3<f32>(x_3401.y, x_3401.z, x_3401.w);
            let x_3403 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3402.x, x_3403.y, x_3402.y, x_3402.z);
            let x_3406 : f32 = u_xlat14.x;
            u_xlat16.y = x_3406;
            let x_3408 : vec4<f32> = u_xlat11;
            let x_3411 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3414 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3408.x, x_3408.y, x_3408.x, x_3408.y) * vec4<f32>(x_3411.x, x_3411.y, x_3411.x, x_3411.y)) + vec4<f32>(x_3414.x, x_3414.y, x_3414.z, x_3414.y));
            let x_3417 : vec4<f32> = u_xlat11;
            let x_3420 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3423 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3417.x, x_3417.y) * vec2<f32>(x_3420.x, x_3420.y)) + vec2<f32>(x_3423.w, x_3423.y));
            let x_3427 : f32 = u_xlat16.y;
            u_xlat13.y = x_3427;
            let x_3430 : f32 = u_xlat14.z;
            u_xlat16.y = x_3430;
            let x_3432 : vec4<f32> = u_xlat11;
            let x_3435 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3438 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3432.x, x_3432.y, x_3432.x, x_3432.y) * vec4<f32>(x_3435.x, x_3435.y, x_3435.x, x_3435.y)) + vec4<f32>(x_3438.x, x_3438.y, x_3438.z, x_3438.y));
            let x_3441 : vec4<f32> = u_xlat11;
            let x_3444 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3447 : vec4<f32> = u_xlat16;
            let x_3449 : vec2<f32> = ((vec2<f32>(x_3441.x, x_3441.y) * vec2<f32>(x_3444.x, x_3444.y)) + vec2<f32>(x_3447.w, x_3447.y));
            let x_3450 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3449.x, x_3449.y, x_3450.z, x_3450.w);
            let x_3453 : f32 = u_xlat16.y;
            u_xlat13.z = x_3453;
            let x_3456 : vec4<f32> = u_xlat11;
            let x_3459 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3462 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3456.x, x_3456.y, x_3456.x, x_3456.y) * vec4<f32>(x_3459.x, x_3459.y, x_3459.x, x_3459.y)) + vec4<f32>(x_3462.x, x_3462.y, x_3462.x, x_3462.z));
            let x_3466 : f32 = u_xlat14.w;
            u_xlat16.y = x_3466;
            let x_3469 : vec4<f32> = u_xlat11;
            let x_3472 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3475 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3469.x, x_3469.y, x_3469.x, x_3469.y) * vec4<f32>(x_3472.x, x_3472.y, x_3472.x, x_3472.y)) + vec4<f32>(x_3475.x, x_3475.y, x_3475.z, x_3475.y));
            let x_3479 : vec4<f32> = u_xlat11;
            let x_3482 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3485 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3479.x, x_3479.y) * vec2<f32>(x_3482.x, x_3482.y)) + vec2<f32>(x_3485.w, x_3485.y));
            let x_3489 : f32 = u_xlat16.y;
            u_xlat13.w = x_3489;
            let x_3492 : vec4<f32> = u_xlat11;
            let x_3495 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3498 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3492.x, x_3492.y) * vec2<f32>(x_3495.x, x_3495.y)) + vec2<f32>(x_3498.x, x_3498.w));
            let x_3501 : vec4<f32> = u_xlat16;
            let x_3502 : vec3<f32> = vec3<f32>(x_3501.x, x_3501.z, x_3501.w);
            let x_3503 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3502.x, x_3503.y, x_3502.y, x_3502.z);
            let x_3505 : vec4<f32> = u_xlat11;
            let x_3508 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3511 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3505.x, x_3505.y, x_3505.x, x_3505.y) * vec4<f32>(x_3508.x, x_3508.y, x_3508.x, x_3508.y)) + vec4<f32>(x_3511.x, x_3511.y, x_3511.z, x_3511.y));
            let x_3514 : vec4<f32> = u_xlat11;
            let x_3517 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3520 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3514.x, x_3514.y) * vec2<f32>(x_3517.x, x_3517.y)) + vec2<f32>(x_3520.w, x_3520.y));
            let x_3524 : f32 = u_xlat13.x;
            u_xlat14.x = x_3524;
            let x_3526 : vec4<f32> = u_xlat11;
            let x_3529 : vec4<f32> = x_792.x_AdditionalShadowmapSize;
            let x_3532 : vec4<f32> = u_xlat14;
            let x_3534 : vec2<f32> = ((vec2<f32>(x_3526.x, x_3526.y) * vec2<f32>(x_3529.x, x_3529.y)) + vec2<f32>(x_3532.x, x_3532.y));
            let x_3535 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3534.x, x_3534.y, x_3535.z, x_3535.w);
            let x_3538 : vec4<f32> = u_xlat12;
            let x_3540 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3538.x, x_3538.x, x_3538.x, x_3538.x) * x_3540);
            let x_3543 : vec4<f32> = u_xlat12;
            let x_3545 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3543.y, x_3543.y, x_3543.y, x_3543.y) * x_3545);
            let x_3548 : vec4<f32> = u_xlat12;
            let x_3550 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3548.z, x_3548.z, x_3548.z, x_3548.z) * x_3550);
            let x_3552 : vec4<f32> = u_xlat12;
            let x_3554 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3552.w, x_3552.w, x_3552.w, x_3552.w) * x_3554);
            let x_3557 : vec4<f32> = u_xlat17;
            let x_3558 : vec2<f32> = vec2<f32>(x_3557.x, x_3557.y);
            let x_3560 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3558.x, x_3558.y, x_3560);
            let x_3567 : vec3<f32> = txVec43;
            let x_3569 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3567.xy, x_3567.z);
            u_xlat85 = x_3569;
            let x_3571 : vec4<f32> = u_xlat17;
            let x_3572 : vec2<f32> = vec2<f32>(x_3571.z, x_3571.w);
            let x_3574 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3572.x, x_3572.y, x_3574);
            let x_3581 : vec3<f32> = txVec44;
            let x_3583 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3581.xy, x_3581.z);
            u_xlat13.x = x_3583;
            let x_3586 : f32 = u_xlat13.x;
            let x_3588 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3586 * x_3588);
            let x_3592 : f32 = u_xlat22.x;
            let x_3593 : f32 = u_xlat85;
            let x_3596 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3592 * x_3593) + x_3596);
            let x_3599 : vec2<f32> = u_xlat61;
            let x_3601 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3599.x, x_3599.y, x_3601);
            let x_3608 : vec3<f32> = txVec45;
            let x_3610 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3608.xy, x_3608.z);
            u_xlat61.x = x_3610;
            let x_3613 : f32 = u_xlat22.z;
            let x_3615 : f32 = u_xlat61.x;
            let x_3617 : f32 = u_xlat85;
            u_xlat85 = ((x_3613 * x_3615) + x_3617);
            let x_3620 : vec4<f32> = u_xlat20;
            let x_3621 : vec2<f32> = vec2<f32>(x_3620.x, x_3620.y);
            let x_3623 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3621.x, x_3621.y, x_3623);
            let x_3630 : vec3<f32> = txVec46;
            let x_3632 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3630.xy, x_3630.z);
            u_xlat61.x = x_3632;
            let x_3635 : f32 = u_xlat22.w;
            let x_3637 : f32 = u_xlat61.x;
            let x_3639 : f32 = u_xlat85;
            u_xlat85 = ((x_3635 * x_3637) + x_3639);
            let x_3642 : vec4<f32> = u_xlat18;
            let x_3643 : vec2<f32> = vec2<f32>(x_3642.x, x_3642.y);
            let x_3645 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3643.x, x_3643.y, x_3645);
            let x_3652 : vec3<f32> = txVec47;
            let x_3654 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3652.xy, x_3652.z);
            u_xlat61.x = x_3654;
            let x_3657 : f32 = u_xlat23.x;
            let x_3659 : f32 = u_xlat61.x;
            let x_3661 : f32 = u_xlat85;
            u_xlat85 = ((x_3657 * x_3659) + x_3661);
            let x_3664 : vec4<f32> = u_xlat18;
            let x_3665 : vec2<f32> = vec2<f32>(x_3664.z, x_3664.w);
            let x_3667 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3665.x, x_3665.y, x_3667);
            let x_3674 : vec3<f32> = txVec48;
            let x_3676 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3674.xy, x_3674.z);
            u_xlat61.x = x_3676;
            let x_3679 : f32 = u_xlat23.y;
            let x_3681 : f32 = u_xlat61.x;
            let x_3683 : f32 = u_xlat85;
            u_xlat85 = ((x_3679 * x_3681) + x_3683);
            let x_3686 : vec4<f32> = u_xlat19;
            let x_3687 : vec2<f32> = vec2<f32>(x_3686.x, x_3686.y);
            let x_3689 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3687.x, x_3687.y, x_3689);
            let x_3696 : vec3<f32> = txVec49;
            let x_3698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3696.xy, x_3696.z);
            u_xlat61.x = x_3698;
            let x_3701 : f32 = u_xlat23.z;
            let x_3703 : f32 = u_xlat61.x;
            let x_3705 : f32 = u_xlat85;
            u_xlat85 = ((x_3701 * x_3703) + x_3705);
            let x_3708 : vec4<f32> = u_xlat20;
            let x_3709 : vec2<f32> = vec2<f32>(x_3708.z, x_3708.w);
            let x_3711 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3709.x, x_3709.y, x_3711);
            let x_3718 : vec3<f32> = txVec50;
            let x_3720 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3718.xy, x_3718.z);
            u_xlat61.x = x_3720;
            let x_3723 : f32 = u_xlat23.w;
            let x_3725 : f32 = u_xlat61.x;
            let x_3727 : f32 = u_xlat85;
            u_xlat85 = ((x_3723 * x_3725) + x_3727);
            let x_3730 : vec4<f32> = u_xlat21;
            let x_3731 : vec2<f32> = vec2<f32>(x_3730.x, x_3730.y);
            let x_3733 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3731.x, x_3731.y, x_3733);
            let x_3740 : vec3<f32> = txVec51;
            let x_3742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3740.xy, x_3740.z);
            u_xlat61.x = x_3742;
            let x_3745 : f32 = u_xlat24.x;
            let x_3747 : f32 = u_xlat61.x;
            let x_3749 : f32 = u_xlat85;
            u_xlat85 = ((x_3745 * x_3747) + x_3749);
            let x_3752 : vec4<f32> = u_xlat21;
            let x_3753 : vec2<f32> = vec2<f32>(x_3752.z, x_3752.w);
            let x_3755 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3753.x, x_3753.y, x_3755);
            let x_3762 : vec3<f32> = txVec52;
            let x_3764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3762.xy, x_3762.z);
            u_xlat61.x = x_3764;
            let x_3767 : f32 = u_xlat24.y;
            let x_3769 : f32 = u_xlat61.x;
            let x_3771 : f32 = u_xlat85;
            u_xlat85 = ((x_3767 * x_3769) + x_3771);
            let x_3774 : vec2<f32> = u_xlat38;
            let x_3776 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3774.x, x_3774.y, x_3776);
            let x_3783 : vec3<f32> = txVec53;
            let x_3785 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3783.xy, x_3783.z);
            u_xlat61.x = x_3785;
            let x_3788 : f32 = u_xlat24.z;
            let x_3790 : f32 = u_xlat61.x;
            let x_3792 : f32 = u_xlat85;
            u_xlat85 = ((x_3788 * x_3790) + x_3792);
            let x_3795 : vec2<f32> = u_xlat69;
            let x_3797 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3795.x, x_3795.y, x_3797);
            let x_3804 : vec3<f32> = txVec54;
            let x_3806 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3804.xy, x_3804.z);
            u_xlat61.x = x_3806;
            let x_3809 : f32 = u_xlat24.w;
            let x_3811 : f32 = u_xlat61.x;
            let x_3813 : f32 = u_xlat85;
            u_xlat85 = ((x_3809 * x_3811) + x_3813);
            let x_3816 : vec4<f32> = u_xlat16;
            let x_3817 : vec2<f32> = vec2<f32>(x_3816.x, x_3816.y);
            let x_3819 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3817.x, x_3817.y, x_3819);
            let x_3826 : vec3<f32> = txVec55;
            let x_3828 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3826.xy, x_3826.z);
            u_xlat61.x = x_3828;
            let x_3831 : f32 = u_xlat12.x;
            let x_3833 : f32 = u_xlat61.x;
            let x_3835 : f32 = u_xlat85;
            u_xlat85 = ((x_3831 * x_3833) + x_3835);
            let x_3838 : vec4<f32> = u_xlat16;
            let x_3839 : vec2<f32> = vec2<f32>(x_3838.z, x_3838.w);
            let x_3841 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3839.x, x_3839.y, x_3841);
            let x_3848 : vec3<f32> = txVec56;
            let x_3850 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3848.xy, x_3848.z);
            u_xlat61.x = x_3850;
            let x_3853 : f32 = u_xlat12.y;
            let x_3855 : f32 = u_xlat61.x;
            let x_3857 : f32 = u_xlat85;
            u_xlat85 = ((x_3853 * x_3855) + x_3857);
            let x_3860 : vec2<f32> = u_xlat64;
            let x_3862 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3860.x, x_3860.y, x_3862);
            let x_3869 : vec3<f32> = txVec57;
            let x_3871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3869.xy, x_3869.z);
            u_xlat61.x = x_3871;
            let x_3874 : f32 = u_xlat12.z;
            let x_3876 : f32 = u_xlat61.x;
            let x_3878 : f32 = u_xlat85;
            u_xlat85 = ((x_3874 * x_3876) + x_3878);
            let x_3881 : vec4<f32> = u_xlat11;
            let x_3882 : vec2<f32> = vec2<f32>(x_3881.x, x_3881.y);
            let x_3884 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3882.x, x_3882.y, x_3884);
            let x_3891 : vec3<f32> = txVec58;
            let x_3893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3891.xy, x_3891.z);
            u_xlat11.x = x_3893;
            let x_3896 : f32 = u_xlat12.w;
            let x_3898 : f32 = u_xlat11.x;
            let x_3900 : f32 = u_xlat85;
            u_xlat84 = ((x_3896 * x_3898) + x_3900);
          }
        }
      } else {
        let x_3904 : vec4<f32> = u_xlat10;
        let x_3905 : vec2<f32> = vec2<f32>(x_3904.x, x_3904.y);
        let x_3907 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3905.x, x_3905.y, x_3907);
        let x_3914 : vec3<f32> = txVec59;
        let x_3916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3914.xy, x_3914.z);
        u_xlat84 = x_3916;
      }
      let x_3917 : i32 = u_xlati6;
      let x_3919 : f32 = x_792.x_AdditionalShadowParams[x_3917].x;
      u_xlat10.x = (1.0f + -(x_3919));
      let x_3923 : f32 = u_xlat84;
      let x_3924 : i32 = u_xlati6;
      let x_3926 : f32 = x_792.x_AdditionalShadowParams[x_3924].x;
      let x_3929 : f32 = u_xlat10.x;
      u_xlat84 = ((x_3923 * x_3926) + x_3929);
      let x_3932 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_3932);
      let x_3937 : f32 = u_xlat10.z;
      u_xlatb35 = (x_3937 >= 1.0f);
      let x_3939 : bool = u_xlatb35;
      let x_3941 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_3939 | x_3941);
      let x_3945 : bool = u_xlatb10.x;
      let x_3946 : f32 = u_xlat84;
      u_xlat84 = select(x_3946, 1.0f, x_3945);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3949 : f32 = u_xlat84;
    u_xlat10.x = (-(x_3949) + 1.0f);
    let x_3953 : f32 = u_xlat78;
    let x_3955 : f32 = u_xlat10.x;
    let x_3957 : f32 = u_xlat84;
    u_xlat84 = ((x_3953 * x_3955) + x_3957);
    let x_3959 : f32 = u_xlat82;
    let x_3960 : f32 = u_xlat84;
    u_xlat82 = (x_3959 * x_3960);
    let x_3962 : vec4<f32> = u_xlat2;
    let x_3964 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3962.x, x_3962.y, x_3962.z), vec3<f32>(x_3964.x, x_3964.y, x_3964.z));
    let x_3967 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3967, 0.0f, 1.0f);
    let x_3969 : f32 = u_xlat82;
    let x_3970 : f32 = u_xlat84;
    u_xlat82 = (x_3969 * x_3970);
    let x_3972 : f32 = u_xlat82;
    let x_3974 : i32 = u_xlati6;
    let x_3976 : vec4<f32> = x_2473.x_AdditionalLightsColor[x_3974];
    let x_3978 : vec3<f32> = (vec3<f32>(x_3972, x_3972, x_3972) * vec3<f32>(x_3976.x, x_3976.y, x_3976.z));
    let x_3979 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3978.x, x_3978.y, x_3978.z, x_3979.w);
    let x_3981 : vec4<f32> = u_xlat8;
    let x_3983 : f32 = u_xlat83;
    let x_3986 : vec4<f32> = u_xlat1;
    let x_3988 : vec3<f32> = ((vec3<f32>(x_3981.x, x_3981.y, x_3981.z) * vec3<f32>(x_3983, x_3983, x_3983)) + vec3<f32>(x_3986.x, x_3986.y, x_3986.z));
    let x_3989 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3988.x, x_3988.y, x_3988.z, x_3989.w);
    let x_3991 : vec4<f32> = u_xlat8;
    let x_3993 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_3991.x, x_3991.y, x_3991.z), vec3<f32>(x_3993.x, x_3993.y, x_3993.z));
    let x_3998 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_3998, 1.17549435e-38f);
    let x_4002 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_4002);
    let x_4005 : vec4<f32> = u_xlat6;
    let x_4007 : vec4<f32> = u_xlat8;
    let x_4009 : vec3<f32> = (vec3<f32>(x_4005.x, x_4005.x, x_4005.x) * vec3<f32>(x_4007.x, x_4007.y, x_4007.z));
    let x_4010 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4009.x, x_4009.y, x_4009.z, x_4010.w);
    let x_4012 : vec4<f32> = u_xlat2;
    let x_4014 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_4012.x, x_4012.y, x_4012.z), vec3<f32>(x_4014.x, x_4014.y, x_4014.z));
    let x_4019 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_4019, 0.0f, 1.0f);
    let x_4022 : vec4<f32> = u_xlat9;
    let x_4024 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_4022.x, x_4022.y, x_4022.z), vec3<f32>(x_4024.x, x_4024.y, x_4024.z));
    let x_4027 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4027, 0.0f, 1.0f);
    let x_4030 : f32 = u_xlat6.x;
    let x_4032 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4030 * x_4032);
    let x_4036 : f32 = u_xlat6.x;
    let x_4038 : f32 = u_xlat0.x;
    u_xlat6.x = ((x_4036 * x_4038) + 1.00001001358032226562f);
    let x_4042 : f32 = u_xlat82;
    let x_4043 : f32 = u_xlat82;
    u_xlat82 = (x_4042 * x_4043);
    let x_4046 : f32 = u_xlat6.x;
    let x_4048 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4046 * x_4048);
    let x_4051 : f32 = u_xlat82;
    u_xlat82 = max(x_4051, 0.10000000149011611938f);
    let x_4054 : f32 = u_xlat6.x;
    let x_4055 : f32 = u_xlat82;
    u_xlat6.x = (x_4054 * x_4055);
    let x_4058 : f32 = u_xlat79;
    let x_4060 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4058 * x_4060);
    let x_4063 : f32 = u_xlat77;
    let x_4065 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4063 / x_4065);
    let x_4068 : vec4<f32> = u_xlat5;
    let x_4070 : vec4<f32> = u_xlat6;
    let x_4073 : vec4<f32> = u_xlat4;
    let x_4075 : vec3<f32> = ((vec3<f32>(x_4068.x, x_4068.y, x_4068.z) * vec3<f32>(x_4070.x, x_4070.x, x_4070.x)) + vec3<f32>(x_4073.x, x_4073.y, x_4073.z));
    let x_4076 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4075.x, x_4075.y, x_4075.z, x_4076.w);
    let x_4078 : vec4<f32> = u_xlat8;
    let x_4080 : vec4<f32> = u_xlat10;
    let x_4083 : vec4<f32> = u_xlat7;
    let x_4085 : vec3<f32> = ((vec3<f32>(x_4078.x, x_4078.y, x_4078.z) * vec3<f32>(x_4080.x, x_4080.y, x_4080.z)) + vec3<f32>(x_4083.x, x_4083.y, x_4083.z));
    let x_4086 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4085.x, x_4085.y, x_4085.z, x_4086.w);

    continuing {
      let x_4088 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4088 + bitcast<u32>(1i));
    }
  }
  let x_4090 : vec4<f32> = u_xlat3;
  let x_4092 : f32 = u_xlat25;
  let x_4095 : vec3<f32> = u_xlat31;
  u_xlat0 = ((vec3<f32>(x_4090.x, x_4090.y, x_4090.z) * vec3<f32>(x_4092, x_4092, x_4092)) + x_4095);
  let x_4097 : vec4<f32> = u_xlat7;
  let x_4099 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4097.x, x_4097.y, x_4097.z) + x_4099);
  let x_4101 : f32 = u_xlat75;
  let x_4103 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4101, x_4101, x_4101) * x_4103);
  let x_4105 : f32 = u_xlat76;
  let x_4106 : f32 = u_xlat76;
  u_xlat75 = (x_4105 * -(x_4106));
  let x_4109 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4109);
  let x_4113 : vec3<f32> = u_xlat0;
  let x_4114 : f32 = u_xlat75;
  let x_4116 : vec3<f32> = (x_4113 * vec3<f32>(x_4114, x_4114, x_4114));
  let x_4117 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4116.x, x_4116.y, x_4116.z, x_4117.w);
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


