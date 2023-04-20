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

var<private> u_xlat75 : f32;

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

var<private> u_xlatb76 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlatb77 : bool;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(4) var<uniform> x_1025 : LightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb30 : bool;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb55 : bool;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2432 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlat81 : f32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2723 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat60 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(14) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu30 : u32;

var<private> u_xlatb81 : bool;

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
  var x_2310 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2864 : f32;
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
  u_xlat76 = dot(vec2<f32>(x_418.x, x_418.y), vec2<f32>(x_420.x, x_420.y));
  let x_423 : f32 = u_xlat76;
  u_xlat76 = min(x_423, 1.0f);
  let x_425 : f32 = u_xlat76;
  u_xlat76 = (-(x_425) + 1.0f);
  let x_428 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_428);
  let x_430 : f32 = u_xlat76;
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
  u_xlat76 = dot(vec2<f32>(x_466.x, x_466.y), vec2<f32>(x_468.x, x_468.y));
  let x_471 : f32 = u_xlat76;
  u_xlat76 = min(x_471, 1.0f);
  let x_473 : f32 = u_xlat76;
  u_xlat76 = (-(x_473) + 1.0f);
  let x_476 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_476);
  let x_478 : f32 = u_xlat76;
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
  u_xlat76 = dot(vec2<f32>(x_535.x, x_535.y), vec2<f32>(x_537.x, x_537.y));
  let x_540 : f32 = u_xlat76;
  u_xlat76 = min(x_540, 1.0f);
  let x_542 : f32 = u_xlat76;
  u_xlat76 = (-(x_542) + 1.0f);
  let x_545 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_545);
  let x_547 : f32 = u_xlat76;
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
  u_xlat76 = dot(vec2<f32>(x_598.x, x_598.y), vec2<f32>(x_600.x, x_600.y));
  let x_603 : f32 = u_xlat76;
  u_xlat76 = min(x_603, 1.0f);
  let x_605 : f32 = u_xlat76;
  u_xlat76 = (-(x_605) + 1.0f);
  let x_608 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_608);
  let x_610 : f32 = u_xlat76;
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
  u_xlat76 = dot(vec3<f32>(x_642.x, x_642.y, x_642.w), vec3<f32>(x_644.x, x_644.y, x_644.w));
  let x_647 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_647);
  let x_649 : f32 = u_xlat76;
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
  u_xlat50 = dot(x_727, x_728);
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
  u_xlat25 = dot(x_810, x_811);
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
  u_xlat76 = dot(vec3<f32>(x_844.x, x_844.y, x_844.z), vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_849);
  let x_851 : f32 = u_xlat76;
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = (vec3<f32>(x_851, x_851, x_851) * vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_862 : f32 = vs_TEXCOORD7.y;
  let x_864 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat76 = (x_862 * x_864);
  let x_867 : f32 = x_29.unity_MatrixV[0i].z;
  let x_869 : f32 = vs_TEXCOORD7.x;
  let x_871 : f32 = u_xlat76;
  u_xlat76 = ((x_867 * x_869) + x_871);
  let x_874 : f32 = x_29.unity_MatrixV[2i].z;
  let x_876 : f32 = vs_TEXCOORD7.z;
  let x_878 : f32 = u_xlat76;
  u_xlat76 = ((x_874 * x_876) + x_878);
  let x_880 : f32 = u_xlat76;
  let x_882 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat76 = (x_880 + x_882);
  let x_884 : f32 = u_xlat76;
  let x_887 : f32 = x_29.x_ProjectionParams.y;
  u_xlat76 = (-(x_884) + -(x_887));
  let x_890 : f32 = u_xlat76;
  u_xlat76 = max(x_890, 0.0f);
  let x_892 : f32 = u_xlat76;
  let x_894 : f32 = x_29.unity_FogParams.x;
  u_xlat76 = (x_892 * x_894);
  let x_901 : vec4<f32> = vs_TEXCOORD0;
  let x_904 : f32 = x_29.x_GlobalMipBias.x;
  let x_905 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_901.z, x_901.w), x_904);
  u_xlat2 = x_905;
  let x_910 : vec4<f32> = vs_TEXCOORD0;
  let x_913 : f32 = x_29.x_GlobalMipBias.x;
  let x_914 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_910.z, x_910.w), x_913);
  let x_915 : vec3<f32> = vec3<f32>(x_914.x, x_914.y, x_914.z);
  let x_916 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat2;
  let x_922 : vec3<f32> = (vec3<f32>(x_918.x, x_918.y, x_918.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_923 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat1;
  let x_927 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_925.x, x_925.y, x_925.z), vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_932 : f32 = u_xlat2.x;
  u_xlat2.x = (x_932 + 0.5f);
  let x_935 : vec4<f32> = u_xlat2;
  let x_937 : vec4<f32> = u_xlat3;
  let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.x, x_935.x) * vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_944 : f32 = u_xlat2.w;
  u_xlat77 = max(x_944, 0.00009999999747378752f);
  let x_947 : vec4<f32> = u_xlat2;
  let x_949 : f32 = u_xlat77;
  let x_951 : vec3<f32> = (vec3<f32>(x_947.x, x_947.y, x_947.z) / vec3<f32>(x_949, x_949, x_949));
  let x_952 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_955 : f32 = u_xlat0.x;
  u_xlat77 = ((-(x_955) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_960 : f32 = u_xlat50;
  let x_961 : f32 = u_xlat77;
  u_xlat3.x = (x_960 + -(x_961));
  let x_966 : f32 = u_xlat77;
  let x_968 : vec4<f32> = u_xlat5;
  u_xlat28 = (vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat5;
  let x_975 : vec3<f32> = (vec3<f32>(x_971.x, x_971.y, x_971.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_976 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec3<f32> = u_xlat0;
  let x_980 : vec4<f32> = u_xlat4;
  let x_985 : vec3<f32> = ((vec3<f32>(x_978.x, x_978.x, x_978.x) * vec3<f32>(x_980.x, x_980.y, x_980.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_986 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : f32 = u_xlat50;
  u_xlat0.x = (-(x_988) + 1.0f);
  let x_993 : f32 = u_xlat0.x;
  let x_995 : f32 = u_xlat0.x;
  u_xlat50 = (x_993 * x_995);
  let x_997 : f32 = u_xlat50;
  u_xlat50 = max(x_997, 0.0078125f);
  let x_1000 : f32 = u_xlat50;
  let x_1001 : f32 = u_xlat50;
  u_xlat77 = (x_1000 * x_1001);
  let x_1004 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1004 + 1.0f);
  let x_1008 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1008, 0.0f, 1.0f);
  let x_1012 : f32 = u_xlat50;
  u_xlat79 = ((x_1012 * 4.0f) + 2.0f);
  let x_1015 : f32 = u_xlat25;
  u_xlat25 = min(x_1015, 1.0f);
  let x_1027 : f32 = x_1025.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_1027);
  let x_1029 : bool = u_xlatb5;
  if (x_1029) {
    let x_1033 : f32 = x_1025.x_MainLightShadowParams.y;
    u_xlatb5 = (x_1033 == 1.0f);
    let x_1035 : bool = u_xlatb5;
    if (x_1035) {
      let x_1039 : vec4<f32> = vs_TEXCOORD8;
      let x_1042 : vec4<f32> = x_1025.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y) + x_1042);
      let x_1046 : vec4<f32> = u_xlat5;
      let x_1047 : vec2<f32> = vec2<f32>(x_1046.x, x_1046.y);
      let x_1049 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
      let x_1061 : vec3<f32> = txVec0;
      let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1061.xy, x_1061.z);
      u_xlat6.x = x_1063;
      let x_1066 : vec4<f32> = u_xlat5;
      let x_1067 : vec2<f32> = vec2<f32>(x_1066.z, x_1066.w);
      let x_1069 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
      let x_1076 : vec3<f32> = txVec1;
      let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1076.xy, x_1076.z);
      u_xlat6.y = x_1078;
      let x_1080 : vec4<f32> = vs_TEXCOORD8;
      let x_1083 : vec4<f32> = x_1025.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y) + x_1083);
      let x_1086 : vec4<f32> = u_xlat5;
      let x_1087 : vec2<f32> = vec2<f32>(x_1086.x, x_1086.y);
      let x_1089 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
      let x_1096 : vec3<f32> = txVec2;
      let x_1098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1096.xy, x_1096.z);
      u_xlat6.z = x_1098;
      let x_1101 : vec4<f32> = u_xlat5;
      let x_1102 : vec2<f32> = vec2<f32>(x_1101.z, x_1101.w);
      let x_1104 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1102.x, x_1102.y, x_1104);
      let x_1111 : vec3<f32> = txVec3;
      let x_1113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1111.xy, x_1111.z);
      u_xlat6.w = x_1113;
      let x_1115 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_1115, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1123 : f32 = x_1025.x_MainLightShadowParams.y;
      u_xlatb30 = (x_1123 == 2.0f);
      let x_1125 : bool = u_xlatb30;
      if (x_1125) {
        let x_1129 : vec4<f32> = vs_TEXCOORD8;
        let x_1132 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.z, x_1132.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1136 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1135.x, x_1135.y, x_1136.z);
        let x_1138 : vec3<f32> = u_xlat30;
        let x_1140 : vec2<f32> = floor(vec2<f32>(x_1138.x, x_1138.y));
        let x_1141 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1140.x, x_1140.y, x_1141.z);
        let x_1143 : vec4<f32> = vs_TEXCOORD8;
        let x_1146 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1149 : vec3<f32> = u_xlat30;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1146.z, x_1146.w)) + -(vec2<f32>(x_1149.x, x_1149.y)));
        let x_1153 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1155.x, x_1155.x, x_1155.y, x_1155.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1159 : vec4<f32> = u_xlat7;
        let x_1161 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1159.x, x_1159.x, x_1159.z, x_1159.z) * vec4<f32>(x_1161.x, x_1161.x, x_1161.z, x_1161.z));
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat56 = (vec2<f32>(x_1166.y, x_1166.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1171 : vec4<f32> = u_xlat8;
        let x_1174 : vec4<f32> = u_xlat6;
        let x_1177 : vec2<f32> = ((vec2<f32>(x_1171.x, x_1171.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1174.x, x_1174.y)));
        let x_1178 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1177.x, x_1178.y, x_1177.y, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat6;
        let x_1184 : vec2<f32> = (-(vec2<f32>(x_1180.x, x_1180.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1188 : vec4<f32> = u_xlat6;
        u_xlat58 = min(vec2<f32>(x_1188.x, x_1188.y), vec2<f32>(0.0f, 0.0f));
        let x_1192 : vec2<f32> = u_xlat58;
        let x_1194 : vec2<f32> = u_xlat58;
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat58 = ((-(x_1192) * x_1194) + vec2<f32>(x_1196.x, x_1196.y));
        let x_1199 : vec4<f32> = u_xlat6;
        let x_1201 : vec2<f32> = max(vec2<f32>(x_1199.x, x_1199.y), vec2<f32>(0.0f, 0.0f));
        let x_1202 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat6;
        let x_1207 : vec4<f32> = u_xlat6;
        let x_1210 : vec4<f32> = u_xlat7;
        let x_1212 : vec2<f32> = ((-(vec2<f32>(x_1204.x, x_1204.y)) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.y, x_1210.w));
        let x_1213 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1215 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_1215 + vec2<f32>(1.0f, 1.0f));
        let x_1217 : vec4<f32> = u_xlat6;
        let x_1219 : vec2<f32> = (vec2<f32>(x_1217.x, x_1217.y) + vec2<f32>(1.0f, 1.0f));
        let x_1220 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1219.x, x_1219.y, x_1220.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat7;
        let x_1226 : vec2<f32> = (vec2<f32>(x_1222.x, x_1222.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1227.w);
        let x_1229 : vec4<f32> = u_xlat8;
        let x_1231 : vec2<f32> = (vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1232 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
        let x_1234 : vec2<f32> = u_xlat58;
        let x_1235 : vec2<f32> = (x_1234 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat6;
        let x_1240 : vec2<f32> = (vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1241 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1240.x, x_1240.y, x_1241.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat7;
        let x_1245 : vec2<f32> = (vec2<f32>(x_1243.y, x_1243.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1246 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1249 : f32 = u_xlat8.x;
        u_xlat9.z = x_1249;
        let x_1252 : f32 = u_xlat6.x;
        u_xlat9.w = x_1252;
        let x_1255 : f32 = u_xlat11.x;
        u_xlat10.z = x_1255;
        let x_1258 : f32 = u_xlat56.x;
        u_xlat10.w = x_1258;
        let x_1260 : vec4<f32> = u_xlat9;
        let x_1262 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1260.z, x_1260.w, x_1260.x, x_1260.z) + vec4<f32>(x_1262.z, x_1262.w, x_1262.x, x_1262.z));
        let x_1266 : f32 = u_xlat9.y;
        u_xlat8.z = x_1266;
        let x_1269 : f32 = u_xlat6.y;
        u_xlat8.w = x_1269;
        let x_1272 : f32 = u_xlat10.y;
        u_xlat11.z = x_1272;
        let x_1275 : f32 = u_xlat56.y;
        u_xlat11.w = x_1275;
        let x_1277 : vec4<f32> = u_xlat8;
        let x_1279 : vec4<f32> = u_xlat11;
        let x_1281 : vec3<f32> = (vec3<f32>(x_1277.z, x_1277.y, x_1277.w) + vec3<f32>(x_1279.z, x_1279.y, x_1279.w));
        let x_1282 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1286 : vec4<f32> = u_xlat7;
        let x_1288 : vec3<f32> = (vec3<f32>(x_1284.x, x_1284.z, x_1284.w) / vec3<f32>(x_1286.z, x_1286.w, x_1286.y));
        let x_1289 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat8;
        let x_1296 : vec3<f32> = (vec3<f32>(x_1291.x, x_1291.y, x_1291.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
        let x_1299 : vec4<f32> = u_xlat11;
        let x_1301 : vec4<f32> = u_xlat6;
        let x_1303 : vec3<f32> = (vec3<f32>(x_1299.z, x_1299.y, x_1299.w) / vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
        let x_1304 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat9;
        let x_1308 : vec3<f32> = (vec3<f32>(x_1306.x, x_1306.y, x_1306.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1309 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
        let x_1311 : vec4<f32> = u_xlat8;
        let x_1314 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1316 : vec3<f32> = (vec3<f32>(x_1311.y, x_1311.x, x_1311.z) * vec3<f32>(x_1314.x, x_1314.x, x_1314.x));
        let x_1317 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
        let x_1319 : vec4<f32> = u_xlat9;
        let x_1322 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1324 : vec3<f32> = (vec3<f32>(x_1319.x, x_1319.y, x_1319.z) * vec3<f32>(x_1322.y, x_1322.y, x_1322.y));
        let x_1325 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
        let x_1328 : f32 = u_xlat9.x;
        u_xlat8.w = x_1328;
        let x_1330 : vec3<f32> = u_xlat30;
        let x_1333 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.y) * vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y)) + vec4<f32>(x_1336.y, x_1336.w, x_1336.x, x_1336.w));
        let x_1339 : vec3<f32> = u_xlat30;
        let x_1342 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat8;
        let x_1347 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.y) * vec2<f32>(x_1342.x, x_1342.y)) + vec2<f32>(x_1345.z, x_1345.w));
        let x_1348 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1351 : f32 = u_xlat8.y;
        u_xlat9.w = x_1351;
        let x_1353 : vec4<f32> = u_xlat9;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.y, x_1353.z);
        let x_1355 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1355.x, x_1354.x, x_1355.z, x_1354.y);
        let x_1357 : vec3<f32> = u_xlat30;
        let x_1360 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1363 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_1357.x, x_1357.y, x_1357.x, x_1357.y) * vec4<f32>(x_1360.x, x_1360.y, x_1360.x, x_1360.y)) + vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1363.y));
        let x_1366 : vec3<f32> = u_xlat30;
        let x_1369 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1372 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1366.x, x_1366.y, x_1366.x, x_1366.y) * vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y)) + vec4<f32>(x_1372.w, x_1372.y, x_1372.w, x_1372.z));
        let x_1375 : vec3<f32> = u_xlat30;
        let x_1378 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1375.x, x_1375.y, x_1375.x, x_1375.y) * vec4<f32>(x_1378.x, x_1378.y, x_1378.x, x_1378.y)) + vec4<f32>(x_1381.x, x_1381.w, x_1381.z, x_1381.w));
        let x_1384 : vec4<f32> = u_xlat6;
        let x_1386 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_1384.x, x_1384.x, x_1384.x, x_1384.y) * vec4<f32>(x_1386.z, x_1386.w, x_1386.y, x_1386.z));
        let x_1390 : vec4<f32> = u_xlat6;
        let x_1392 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1390.y, x_1390.y, x_1390.z, x_1390.z) * x_1392);
        let x_1395 : f32 = u_xlat6.z;
        let x_1397 : f32 = u_xlat7.y;
        u_xlat30.x = (x_1395 * x_1397);
        let x_1401 : vec4<f32> = u_xlat10;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1412 : vec3<f32> = txVec4;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1412.xy, x_1412.z);
        u_xlat55 = x_1414;
        let x_1416 : vec4<f32> = u_xlat10;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.z, x_1416.w);
        let x_1419 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1427 : vec3<f32> = txVec5;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat80 = x_1429;
        let x_1430 : f32 = u_xlat80;
        let x_1432 : f32 = u_xlat13.y;
        u_xlat80 = (x_1430 * x_1432);
        let x_1435 : f32 = u_xlat13.x;
        let x_1436 : f32 = u_xlat55;
        let x_1438 : f32 = u_xlat80;
        u_xlat55 = ((x_1435 * x_1436) + x_1438);
        let x_1441 : vec4<f32> = u_xlat11;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.x, x_1441.y);
        let x_1444 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec6;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1451.xy, x_1451.z);
        u_xlat80 = x_1453;
        let x_1455 : f32 = u_xlat13.z;
        let x_1456 : f32 = u_xlat80;
        let x_1458 : f32 = u_xlat55;
        u_xlat55 = ((x_1455 * x_1456) + x_1458);
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec7;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat80 = x_1473;
        let x_1475 : f32 = u_xlat13.w;
        let x_1476 : f32 = u_xlat80;
        let x_1478 : f32 = u_xlat55;
        u_xlat55 = ((x_1475 * x_1476) + x_1478);
        let x_1481 : vec4<f32> = u_xlat12;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec8;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1491.xy, x_1491.z);
        u_xlat80 = x_1493;
        let x_1495 : f32 = u_xlat14.x;
        let x_1496 : f32 = u_xlat80;
        let x_1498 : f32 = u_xlat55;
        u_xlat55 = ((x_1495 * x_1496) + x_1498);
        let x_1501 : vec4<f32> = u_xlat12;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.z, x_1501.w);
        let x_1504 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec9;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat80 = x_1513;
        let x_1515 : f32 = u_xlat14.y;
        let x_1516 : f32 = u_xlat80;
        let x_1518 : f32 = u_xlat55;
        u_xlat55 = ((x_1515 * x_1516) + x_1518);
        let x_1521 : vec4<f32> = u_xlat9;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.z, x_1521.w);
        let x_1524 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec10;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat80 = x_1533;
        let x_1535 : f32 = u_xlat14.z;
        let x_1536 : f32 = u_xlat80;
        let x_1538 : f32 = u_xlat55;
        u_xlat55 = ((x_1535 * x_1536) + x_1538);
        let x_1541 : vec4<f32> = u_xlat8;
        let x_1542 : vec2<f32> = vec2<f32>(x_1541.x, x_1541.y);
        let x_1544 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec11;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1551.xy, x_1551.z);
        u_xlat80 = x_1553;
        let x_1555 : f32 = u_xlat14.w;
        let x_1556 : f32 = u_xlat80;
        let x_1558 : f32 = u_xlat55;
        u_xlat55 = ((x_1555 * x_1556) + x_1558);
        let x_1561 : vec4<f32> = u_xlat8;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.z, x_1561.w);
        let x_1564 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec12;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1571.xy, x_1571.z);
        u_xlat80 = x_1573;
        let x_1575 : f32 = u_xlat30.x;
        let x_1576 : f32 = u_xlat80;
        let x_1578 : f32 = u_xlat55;
        u_xlat5.x = ((x_1575 * x_1576) + x_1578);
      } else {
        let x_1582 : vec4<f32> = vs_TEXCOORD8;
        let x_1585 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1588 : vec2<f32> = ((vec2<f32>(x_1582.x, x_1582.y) * vec2<f32>(x_1585.z, x_1585.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1589 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1588.x, x_1588.y, x_1589.z);
        let x_1591 : vec3<f32> = u_xlat30;
        let x_1593 : vec2<f32> = floor(vec2<f32>(x_1591.x, x_1591.y));
        let x_1594 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1593.x, x_1593.y, x_1594.z);
        let x_1596 : vec4<f32> = vs_TEXCOORD8;
        let x_1599 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1602 : vec3<f32> = u_xlat30;
        let x_1605 : vec2<f32> = ((vec2<f32>(x_1596.x, x_1596.y) * vec2<f32>(x_1599.z, x_1599.w)) + -(vec2<f32>(x_1602.x, x_1602.y)));
        let x_1606 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1605.x, x_1605.y, x_1606.z, x_1606.w);
        let x_1608 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1608.x, x_1608.x, x_1608.y, x_1608.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1611 : vec4<f32> = u_xlat7;
        let x_1613 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1611.x, x_1611.x, x_1611.z, x_1611.z) * vec4<f32>(x_1613.x, x_1613.x, x_1613.z, x_1613.z));
        let x_1616 : vec4<f32> = u_xlat8;
        let x_1620 : vec2<f32> = (vec2<f32>(x_1616.y, x_1616.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1621 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1621.x, x_1620.x, x_1621.z, x_1620.y);
        let x_1623 : vec4<f32> = u_xlat8;
        let x_1626 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1623.x, x_1623.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1626.x, x_1626.y)));
        let x_1630 : vec4<f32> = u_xlat6;
        let x_1633 : vec2<f32> = (-(vec2<f32>(x_1630.x, x_1630.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1634 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1633.x, x_1634.y, x_1633.y, x_1634.w);
        let x_1636 : vec4<f32> = u_xlat6;
        let x_1638 : vec2<f32> = min(vec2<f32>(x_1636.x, x_1636.y), vec2<f32>(0.0f, 0.0f));
        let x_1639 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1638.x, x_1638.y, x_1639.z, x_1639.w);
        let x_1641 : vec4<f32> = u_xlat8;
        let x_1644 : vec4<f32> = u_xlat8;
        let x_1647 : vec4<f32> = u_xlat7;
        let x_1649 : vec2<f32> = ((-(vec2<f32>(x_1641.x, x_1641.y)) * vec2<f32>(x_1644.x, x_1644.y)) + vec2<f32>(x_1647.x, x_1647.z));
        let x_1650 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1649.x, x_1650.y, x_1649.y, x_1650.w);
        let x_1652 : vec4<f32> = u_xlat6;
        let x_1654 : vec2<f32> = max(vec2<f32>(x_1652.x, x_1652.y), vec2<f32>(0.0f, 0.0f));
        let x_1655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1654.x, x_1654.y, x_1655.z, x_1655.w);
        let x_1657 : vec4<f32> = u_xlat8;
        let x_1660 : vec4<f32> = u_xlat8;
        let x_1663 : vec4<f32> = u_xlat7;
        let x_1665 : vec2<f32> = ((-(vec2<f32>(x_1657.x, x_1657.y)) * vec2<f32>(x_1660.x, x_1660.y)) + vec2<f32>(x_1663.y, x_1663.w));
        let x_1666 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1666.x, x_1665.x, x_1666.z, x_1665.y);
        let x_1668 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1668 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1672 : f32 = u_xlat7.y;
        u_xlat8.z = (x_1672 * 0.08163200318813323975f);
        let x_1676 : vec2<f32> = u_xlat56;
        let x_1679 : vec2<f32> = (vec2<f32>(x_1676.y, x_1676.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1680 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1679.x, x_1679.y, x_1680.z, x_1680.w);
        let x_1682 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1682.x, x_1682.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1686 : f32 = u_xlat7.w;
        u_xlat10.z = (x_1686 * 0.08163200318813323975f);
        let x_1690 : f32 = u_xlat10.y;
        u_xlat8.x = x_1690;
        let x_1692 : vec4<f32> = u_xlat6;
        let x_1699 : vec2<f32> = ((vec2<f32>(x_1692.x, x_1692.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1700 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1700.x, x_1699.x, x_1700.z, x_1699.y);
        let x_1702 : vec4<f32> = u_xlat6;
        let x_1706 : vec2<f32> = ((vec2<f32>(x_1702.x, x_1702.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1707 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1706.x, x_1707.y, x_1706.y, x_1707.w);
        let x_1710 : f32 = u_xlat56.x;
        u_xlat7.y = x_1710;
        let x_1713 : f32 = u_xlat9.y;
        u_xlat7.w = x_1713;
        let x_1715 : vec4<f32> = u_xlat7;
        let x_1716 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1715 + x_1716);
        let x_1718 : vec4<f32> = u_xlat6;
        let x_1721 : vec2<f32> = ((vec2<f32>(x_1718.y, x_1718.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1722 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1722.x, x_1721.x, x_1722.z, x_1721.y);
        let x_1724 : vec4<f32> = u_xlat6;
        let x_1727 : vec2<f32> = ((vec2<f32>(x_1724.y, x_1724.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1728 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1727.x, x_1728.y, x_1727.y, x_1728.w);
        let x_1731 : f32 = u_xlat56.y;
        u_xlat9.y = x_1731;
        let x_1733 : vec4<f32> = u_xlat9;
        let x_1734 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1733 + x_1734);
        let x_1736 : vec4<f32> = u_xlat7;
        let x_1737 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1736 / x_1737);
        let x_1739 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1739 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1745 : vec4<f32> = u_xlat9;
        let x_1746 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1745 / x_1746);
        let x_1748 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1748 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1750 : vec4<f32> = u_xlat7;
        let x_1753 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1750.w, x_1750.x, x_1750.y, x_1750.z) * vec4<f32>(x_1753.x, x_1753.x, x_1753.x, x_1753.x));
        let x_1756 : vec4<f32> = u_xlat9;
        let x_1759 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1756.x, x_1756.w, x_1756.y, x_1756.z) * vec4<f32>(x_1759.y, x_1759.y, x_1759.y, x_1759.y));
        let x_1762 : vec4<f32> = u_xlat7;
        let x_1763 : vec3<f32> = vec3<f32>(x_1762.y, x_1762.z, x_1762.w);
        let x_1764 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1763.x, x_1764.y, x_1763.y, x_1763.z);
        let x_1767 : f32 = u_xlat9.x;
        u_xlat10.y = x_1767;
        let x_1769 : vec3<f32> = u_xlat30;
        let x_1772 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1775 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1769.x, x_1769.y, x_1769.x, x_1769.y) * vec4<f32>(x_1772.x, x_1772.y, x_1772.x, x_1772.y)) + vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1775.y));
        let x_1778 : vec3<f32> = u_xlat30;
        let x_1781 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1784 : vec4<f32> = u_xlat10;
        let x_1786 : vec2<f32> = ((vec2<f32>(x_1778.x, x_1778.y) * vec2<f32>(x_1781.x, x_1781.y)) + vec2<f32>(x_1784.w, x_1784.y));
        let x_1787 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1786.x, x_1786.y, x_1787.z, x_1787.w);
        let x_1790 : f32 = u_xlat10.y;
        u_xlat7.y = x_1790;
        let x_1793 : f32 = u_xlat9.z;
        u_xlat10.y = x_1793;
        let x_1795 : vec3<f32> = u_xlat30;
        let x_1798 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1801 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1795.x, x_1795.y, x_1795.x, x_1795.y) * vec4<f32>(x_1798.x, x_1798.y, x_1798.x, x_1798.y)) + vec4<f32>(x_1801.x, x_1801.y, x_1801.z, x_1801.y));
        let x_1805 : vec3<f32> = u_xlat30;
        let x_1808 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1811 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1805.x, x_1805.y) * vec2<f32>(x_1808.x, x_1808.y)) + vec2<f32>(x_1811.w, x_1811.y));
        let x_1815 : f32 = u_xlat10.y;
        u_xlat7.z = x_1815;
        let x_1817 : vec3<f32> = u_xlat30;
        let x_1820 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1823 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1817.x, x_1817.y, x_1817.x, x_1817.y) * vec4<f32>(x_1820.x, x_1820.y, x_1820.x, x_1820.y)) + vec4<f32>(x_1823.x, x_1823.y, x_1823.x, x_1823.z));
        let x_1827 : f32 = u_xlat9.w;
        u_xlat10.y = x_1827;
        let x_1830 : vec3<f32> = u_xlat30;
        let x_1833 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1836 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1830.x, x_1830.y, x_1830.x, x_1830.y) * vec4<f32>(x_1833.x, x_1833.y, x_1833.x, x_1833.y)) + vec4<f32>(x_1836.x, x_1836.y, x_1836.z, x_1836.y));
        let x_1840 : vec3<f32> = u_xlat30;
        let x_1843 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1846 : vec4<f32> = u_xlat10;
        u_xlat32 = ((vec2<f32>(x_1840.x, x_1840.y) * vec2<f32>(x_1843.x, x_1843.y)) + vec2<f32>(x_1846.w, x_1846.y));
        let x_1850 : f32 = u_xlat10.y;
        u_xlat7.w = x_1850;
        let x_1853 : vec3<f32> = u_xlat30;
        let x_1856 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1859 : vec4<f32> = u_xlat7;
        let x_1861 : vec2<f32> = ((vec2<f32>(x_1853.x, x_1853.y) * vec2<f32>(x_1856.x, x_1856.y)) + vec2<f32>(x_1859.x, x_1859.w));
        let x_1862 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1861.x, x_1861.y, x_1862.z, x_1862.w);
        let x_1864 : vec4<f32> = u_xlat10;
        let x_1865 : vec3<f32> = vec3<f32>(x_1864.x, x_1864.z, x_1864.w);
        let x_1866 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1865.x, x_1866.y, x_1865.y, x_1865.z);
        let x_1868 : vec3<f32> = u_xlat30;
        let x_1871 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1874 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1868.x, x_1868.y, x_1868.x, x_1868.y) * vec4<f32>(x_1871.x, x_1871.y, x_1871.x, x_1871.y)) + vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1874.y));
        let x_1878 : vec3<f32> = u_xlat30;
        let x_1881 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1884 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1878.x, x_1878.y) * vec2<f32>(x_1881.x, x_1881.y)) + vec2<f32>(x_1884.w, x_1884.y));
        let x_1888 : f32 = u_xlat7.x;
        u_xlat9.x = x_1888;
        let x_1890 : vec3<f32> = u_xlat30;
        let x_1893 : vec4<f32> = x_1025.x_MainLightShadowmapSize;
        let x_1896 : vec4<f32> = u_xlat9;
        let x_1898 : vec2<f32> = ((vec2<f32>(x_1890.x, x_1890.y) * vec2<f32>(x_1893.x, x_1893.y)) + vec2<f32>(x_1896.x, x_1896.y));
        let x_1899 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1898.x, x_1898.y, x_1899.z);
        let x_1902 : vec4<f32> = u_xlat6;
        let x_1904 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1902.x, x_1902.x, x_1902.x, x_1902.x) * x_1904);
        let x_1907 : vec4<f32> = u_xlat6;
        let x_1909 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1907.y, x_1907.y, x_1907.y, x_1907.y) * x_1909);
        let x_1912 : vec4<f32> = u_xlat6;
        let x_1914 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1912.z, x_1912.z, x_1912.z, x_1912.z) * x_1914);
        let x_1916 : vec4<f32> = u_xlat6;
        let x_1918 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1916.w, x_1916.w, x_1916.w, x_1916.w) * x_1918);
        let x_1921 : vec4<f32> = u_xlat11;
        let x_1922 : vec2<f32> = vec2<f32>(x_1921.x, x_1921.y);
        let x_1924 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1922.x, x_1922.y, x_1924);
        let x_1931 : vec3<f32> = txVec13;
        let x_1933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1931.xy, x_1931.z);
        u_xlat80 = x_1933;
        let x_1935 : vec4<f32> = u_xlat11;
        let x_1936 : vec2<f32> = vec2<f32>(x_1935.z, x_1935.w);
        let x_1938 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
        let x_1945 : vec3<f32> = txVec14;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1945.xy, x_1945.z);
        u_xlat7.x = x_1947;
        let x_1950 : f32 = u_xlat7.x;
        let x_1952 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1950 * x_1952);
        let x_1956 : f32 = u_xlat17.x;
        let x_1957 : f32 = u_xlat80;
        let x_1960 : f32 = u_xlat7.x;
        u_xlat80 = ((x_1956 * x_1957) + x_1960);
        let x_1963 : vec4<f32> = u_xlat12;
        let x_1964 : vec2<f32> = vec2<f32>(x_1963.x, x_1963.y);
        let x_1966 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1964.x, x_1964.y, x_1966);
        let x_1973 : vec3<f32> = txVec15;
        let x_1975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1973.xy, x_1973.z);
        u_xlat7.x = x_1975;
        let x_1978 : f32 = u_xlat17.z;
        let x_1980 : f32 = u_xlat7.x;
        let x_1982 : f32 = u_xlat80;
        u_xlat80 = ((x_1978 * x_1980) + x_1982);
        let x_1985 : vec4<f32> = u_xlat14;
        let x_1986 : vec2<f32> = vec2<f32>(x_1985.x, x_1985.y);
        let x_1988 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1986.x, x_1986.y, x_1988);
        let x_1995 : vec3<f32> = txVec16;
        let x_1997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1995.xy, x_1995.z);
        u_xlat7.x = x_1997;
        let x_2000 : f32 = u_xlat17.w;
        let x_2002 : f32 = u_xlat7.x;
        let x_2004 : f32 = u_xlat80;
        u_xlat80 = ((x_2000 * x_2002) + x_2004);
        let x_2007 : vec4<f32> = u_xlat13;
        let x_2008 : vec2<f32> = vec2<f32>(x_2007.x, x_2007.y);
        let x_2010 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2008.x, x_2008.y, x_2010);
        let x_2017 : vec3<f32> = txVec17;
        let x_2019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2017.xy, x_2017.z);
        u_xlat7.x = x_2019;
        let x_2022 : f32 = u_xlat18.x;
        let x_2024 : f32 = u_xlat7.x;
        let x_2026 : f32 = u_xlat80;
        u_xlat80 = ((x_2022 * x_2024) + x_2026);
        let x_2029 : vec4<f32> = u_xlat13;
        let x_2030 : vec2<f32> = vec2<f32>(x_2029.z, x_2029.w);
        let x_2032 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2030.x, x_2030.y, x_2032);
        let x_2039 : vec3<f32> = txVec18;
        let x_2041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2039.xy, x_2039.z);
        u_xlat7.x = x_2041;
        let x_2044 : f32 = u_xlat18.y;
        let x_2046 : f32 = u_xlat7.x;
        let x_2048 : f32 = u_xlat80;
        u_xlat80 = ((x_2044 * x_2046) + x_2048);
        let x_2051 : vec2<f32> = u_xlat62;
        let x_2053 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2051.x, x_2051.y, x_2053);
        let x_2060 : vec3<f32> = txVec19;
        let x_2062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2060.xy, x_2060.z);
        u_xlat7.x = x_2062;
        let x_2065 : f32 = u_xlat18.z;
        let x_2067 : f32 = u_xlat7.x;
        let x_2069 : f32 = u_xlat80;
        u_xlat80 = ((x_2065 * x_2067) + x_2069);
        let x_2072 : vec4<f32> = u_xlat14;
        let x_2073 : vec2<f32> = vec2<f32>(x_2072.z, x_2072.w);
        let x_2075 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2073.x, x_2073.y, x_2075);
        let x_2082 : vec3<f32> = txVec20;
        let x_2084 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2082.xy, x_2082.z);
        u_xlat7.x = x_2084;
        let x_2087 : f32 = u_xlat18.w;
        let x_2089 : f32 = u_xlat7.x;
        let x_2091 : f32 = u_xlat80;
        u_xlat80 = ((x_2087 * x_2089) + x_2091);
        let x_2094 : vec4<f32> = u_xlat15;
        let x_2095 : vec2<f32> = vec2<f32>(x_2094.x, x_2094.y);
        let x_2097 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2095.x, x_2095.y, x_2097);
        let x_2104 : vec3<f32> = txVec21;
        let x_2106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2104.xy, x_2104.z);
        u_xlat7.x = x_2106;
        let x_2109 : f32 = u_xlat19.x;
        let x_2111 : f32 = u_xlat7.x;
        let x_2113 : f32 = u_xlat80;
        u_xlat80 = ((x_2109 * x_2111) + x_2113);
        let x_2116 : vec4<f32> = u_xlat15;
        let x_2117 : vec2<f32> = vec2<f32>(x_2116.z, x_2116.w);
        let x_2119 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2117.x, x_2117.y, x_2119);
        let x_2126 : vec3<f32> = txVec22;
        let x_2128 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2126.xy, x_2126.z);
        u_xlat7.x = x_2128;
        let x_2131 : f32 = u_xlat19.y;
        let x_2133 : f32 = u_xlat7.x;
        let x_2135 : f32 = u_xlat80;
        u_xlat80 = ((x_2131 * x_2133) + x_2135);
        let x_2138 : vec2<f32> = u_xlat32;
        let x_2140 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2138.x, x_2138.y, x_2140);
        let x_2147 : vec3<f32> = txVec23;
        let x_2149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2147.xy, x_2147.z);
        u_xlat7.x = x_2149;
        let x_2152 : f32 = u_xlat19.z;
        let x_2154 : f32 = u_xlat7.x;
        let x_2156 : f32 = u_xlat80;
        u_xlat80 = ((x_2152 * x_2154) + x_2156);
        let x_2159 : vec4<f32> = u_xlat16;
        let x_2160 : vec2<f32> = vec2<f32>(x_2159.x, x_2159.y);
        let x_2162 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2160.x, x_2160.y, x_2162);
        let x_2169 : vec3<f32> = txVec24;
        let x_2171 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2169.xy, x_2169.z);
        u_xlat7.x = x_2171;
        let x_2174 : f32 = u_xlat19.w;
        let x_2176 : f32 = u_xlat7.x;
        let x_2178 : f32 = u_xlat80;
        u_xlat80 = ((x_2174 * x_2176) + x_2178);
        let x_2181 : vec4<f32> = u_xlat10;
        let x_2182 : vec2<f32> = vec2<f32>(x_2181.x, x_2181.y);
        let x_2184 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2182.x, x_2182.y, x_2184);
        let x_2191 : vec3<f32> = txVec25;
        let x_2193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2191.xy, x_2191.z);
        u_xlat7.x = x_2193;
        let x_2196 : f32 = u_xlat6.x;
        let x_2198 : f32 = u_xlat7.x;
        let x_2200 : f32 = u_xlat80;
        u_xlat80 = ((x_2196 * x_2198) + x_2200);
        let x_2203 : vec4<f32> = u_xlat10;
        let x_2204 : vec2<f32> = vec2<f32>(x_2203.z, x_2203.w);
        let x_2206 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2204.x, x_2204.y, x_2206);
        let x_2213 : vec3<f32> = txVec26;
        let x_2215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2213.xy, x_2213.z);
        u_xlat6.x = x_2215;
        let x_2218 : f32 = u_xlat6.y;
        let x_2220 : f32 = u_xlat6.x;
        let x_2222 : f32 = u_xlat80;
        u_xlat80 = ((x_2218 * x_2220) + x_2222);
        let x_2225 : vec2<f32> = u_xlat59;
        let x_2227 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2225.x, x_2225.y, x_2227);
        let x_2234 : vec3<f32> = txVec27;
        let x_2236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2234.xy, x_2234.z);
        u_xlat6.x = x_2236;
        let x_2239 : f32 = u_xlat6.z;
        let x_2241 : f32 = u_xlat6.x;
        let x_2243 : f32 = u_xlat80;
        u_xlat80 = ((x_2239 * x_2241) + x_2243);
        let x_2246 : vec3<f32> = u_xlat30;
        let x_2247 : vec2<f32> = vec2<f32>(x_2246.x, x_2246.y);
        let x_2249 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2247.x, x_2247.y, x_2249);
        let x_2256 : vec3<f32> = txVec28;
        let x_2258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2256.xy, x_2256.z);
        u_xlat30.x = x_2258;
        let x_2261 : f32 = u_xlat6.w;
        let x_2263 : f32 = u_xlat30.x;
        let x_2265 : f32 = u_xlat80;
        u_xlat5.x = ((x_2261 * x_2263) + x_2265);
      }
    }
  } else {
    let x_2270 : vec4<f32> = vs_TEXCOORD8;
    let x_2271 : vec2<f32> = vec2<f32>(x_2270.x, x_2270.y);
    let x_2273 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2271.x, x_2271.y, x_2273);
    let x_2280 : vec3<f32> = txVec29;
    let x_2282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2280.xy, x_2280.z);
    u_xlat5.x = x_2282;
  }
  let x_2285 : f32 = x_1025.x_MainLightShadowParams.x;
  u_xlat30.x = (-(x_2285) + 1.0f);
  let x_2290 : f32 = u_xlat5.x;
  let x_2292 : f32 = x_1025.x_MainLightShadowParams.x;
  let x_2295 : f32 = u_xlat30.x;
  u_xlat5.x = ((x_2290 * x_2292) + x_2295);
  let x_2299 : f32 = vs_TEXCOORD8.z;
  u_xlatb30 = (0.0f >= x_2299);
  let x_2303 : f32 = vs_TEXCOORD8.z;
  u_xlatb55 = (x_2303 >= 1.0f);
  let x_2305 : bool = u_xlatb55;
  let x_2306 : bool = u_xlatb30;
  u_xlatb30 = (x_2305 | x_2306);
  let x_2308 : bool = u_xlatb30;
  if (x_2308) {
    x_2310 = 1.0f;
  } else {
    let x_2315 : f32 = u_xlat5.x;
    x_2310 = x_2315;
  }
  let x_2316 : f32 = x_2310;
  u_xlat5.x = x_2316;
  let x_2318 : vec3<f32> = vs_TEXCOORD7;
  let x_2321 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat30 = (x_2318 + -(x_2321));
  let x_2324 : vec3<f32> = u_xlat30;
  let x_2325 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_2324, x_2325);
  let x_2329 : f32 = u_xlat30.x;
  let x_2331 : f32 = x_1025.x_MainLightShadowParams.z;
  let x_2334 : f32 = x_1025.x_MainLightShadowParams.w;
  u_xlat55 = ((x_2329 * x_2331) + x_2334);
  let x_2336 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2336, 0.0f, 1.0f);
  let x_2339 : f32 = u_xlat5.x;
  u_xlat80 = (-(x_2339) + 1.0f);
  let x_2342 : f32 = u_xlat55;
  let x_2343 : f32 = u_xlat80;
  let x_2346 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_2342 * x_2343) + x_2346);
  let x_2350 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2350;
  let x_2353 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2353;
  let x_2356 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2356;
  let x_2358 : vec4<f32> = u_xlat6;
  let x_2361 : vec4<f32> = u_xlat1;
  u_xlat55 = dot(-(vec3<f32>(x_2358.x, x_2358.y, x_2358.z)), vec3<f32>(x_2361.x, x_2361.y, x_2361.z));
  let x_2364 : f32 = u_xlat55;
  let x_2365 : f32 = u_xlat55;
  u_xlat55 = (x_2364 + x_2365);
  let x_2367 : vec4<f32> = u_xlat1;
  let x_2369 : f32 = u_xlat55;
  let x_2373 : vec4<f32> = u_xlat6;
  let x_2376 : vec3<f32> = ((vec3<f32>(x_2367.x, x_2367.y, x_2367.z) * -(vec3<f32>(x_2369, x_2369, x_2369))) + -(vec3<f32>(x_2373.x, x_2373.y, x_2373.z)));
  let x_2377 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
  let x_2379 : vec4<f32> = u_xlat1;
  let x_2381 : vec4<f32> = u_xlat6;
  u_xlat55 = dot(vec3<f32>(x_2379.x, x_2379.y, x_2379.z), vec3<f32>(x_2381.x, x_2381.y, x_2381.z));
  let x_2384 : f32 = u_xlat55;
  u_xlat55 = clamp(x_2384, 0.0f, 1.0f);
  let x_2386 : f32 = u_xlat55;
  u_xlat55 = (-(x_2386) + 1.0f);
  let x_2389 : f32 = u_xlat55;
  let x_2390 : f32 = u_xlat55;
  u_xlat55 = (x_2389 * x_2390);
  let x_2392 : f32 = u_xlat55;
  let x_2393 : f32 = u_xlat55;
  u_xlat55 = (x_2392 * x_2393);
  let x_2396 : f32 = u_xlat0.x;
  u_xlat80 = ((-(x_2396) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2403 : f32 = u_xlat0.x;
  let x_2404 : f32 = u_xlat80;
  u_xlat0.x = (x_2403 * x_2404);
  let x_2408 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2408 * 6.0f);
  let x_2420 : vec4<f32> = u_xlat7;
  let x_2423 : f32 = u_xlat0.x;
  let x_2424 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2420.x, x_2420.y, x_2420.z), x_2423);
  u_xlat7 = x_2424;
  let x_2426 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2426 + -1.0f);
  let x_2434 : f32 = x_2432.unity_SpecCube0_HDR.w;
  let x_2436 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2434 * x_2436) + 1.0f);
  let x_2441 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2441, 0.0f);
  let x_2445 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2445);
  let x_2449 : f32 = u_xlat0.x;
  let x_2451 : f32 = x_2432.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2449 * x_2451);
  let x_2455 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2455);
  let x_2459 : f32 = u_xlat0.x;
  let x_2461 : f32 = x_2432.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2459 * x_2461);
  let x_2464 : vec4<f32> = u_xlat7;
  let x_2466 : vec3<f32> = u_xlat0;
  let x_2468 : vec3<f32> = (vec3<f32>(x_2464.x, x_2464.y, x_2464.z) * vec3<f32>(x_2466.x, x_2466.x, x_2466.x));
  let x_2469 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
  let x_2471 : f32 = u_xlat50;
  let x_2473 : f32 = u_xlat50;
  let x_2477 : vec2<f32> = ((vec2<f32>(x_2471, x_2471) * vec2<f32>(x_2473, x_2473)) + vec2<f32>(-1.0f, 1.0f));
  let x_2478 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2477.x, x_2478.y, x_2477.y);
  let x_2481 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2481);
  let x_2483 : vec4<f32> = u_xlat4;
  let x_2486 : vec4<f32> = u_xlat3;
  let x_2488 : vec3<f32> = (-(vec3<f32>(x_2483.x, x_2483.y, x_2483.z)) + vec3<f32>(x_2486.x, x_2486.x, x_2486.x));
  let x_2489 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
  let x_2491 : f32 = u_xlat55;
  let x_2493 : vec4<f32> = u_xlat8;
  let x_2496 : vec4<f32> = u_xlat4;
  let x_2498 : vec3<f32> = ((vec3<f32>(x_2491, x_2491, x_2491) * vec3<f32>(x_2493.x, x_2493.y, x_2493.z)) + vec3<f32>(x_2496.x, x_2496.y, x_2496.z));
  let x_2499 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
  let x_2501 : f32 = u_xlat50;
  let x_2503 : vec4<f32> = u_xlat8;
  let x_2505 : vec3<f32> = (vec3<f32>(x_2501, x_2501, x_2501) * vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
  let x_2506 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2505.x, x_2505.y, x_2505.z, x_2506.w);
  let x_2508 : vec4<f32> = u_xlat7;
  let x_2510 : vec4<f32> = u_xlat8;
  let x_2512 : vec3<f32> = (vec3<f32>(x_2508.x, x_2508.y, x_2508.z) * vec3<f32>(x_2510.x, x_2510.y, x_2510.z));
  let x_2513 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2512.x, x_2512.y, x_2512.z, x_2513.w);
  let x_2515 : vec4<f32> = u_xlat2;
  let x_2517 : vec3<f32> = u_xlat28;
  let x_2519 : vec4<f32> = u_xlat7;
  let x_2521 : vec3<f32> = ((vec3<f32>(x_2515.x, x_2515.y, x_2515.z) * x_2517) + vec3<f32>(x_2519.x, x_2519.y, x_2519.z));
  let x_2522 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2521.x, x_2521.y, x_2521.z, x_2522.w);
  let x_2525 : f32 = u_xlat5.x;
  let x_2527 : f32 = x_2432.unity_LightData.z;
  u_xlat50 = (x_2525 * x_2527);
  let x_2529 : vec4<f32> = u_xlat1;
  let x_2532 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2529.x, x_2529.y, x_2529.z), vec3<f32>(x_2532.x, x_2532.y, x_2532.z));
  let x_2537 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2537, 0.0f, 1.0f);
  let x_2540 : f32 = u_xlat50;
  let x_2542 : f32 = u_xlat3.x;
  u_xlat50 = (x_2540 * x_2542);
  let x_2544 : f32 = u_xlat50;
  let x_2547 : vec4<f32> = x_29.x_MainLightColor;
  let x_2549 : vec3<f32> = (vec3<f32>(x_2544, x_2544, x_2544) * vec3<f32>(x_2547.x, x_2547.y, x_2547.z));
  let x_2550 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2549.x, x_2550.y, x_2549.y, x_2549.z);
  let x_2552 : vec4<f32> = u_xlat6;
  let x_2555 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2557 : vec3<f32> = (vec3<f32>(x_2552.x, x_2552.y, x_2552.z) + vec3<f32>(x_2555.x, x_2555.y, x_2555.z));
  let x_2558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2558.w);
  let x_2560 : vec4<f32> = u_xlat7;
  let x_2562 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2560.x, x_2560.y, x_2560.z), vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
  let x_2565 : f32 = u_xlat50;
  u_xlat50 = max(x_2565, 1.17549435e-38f);
  let x_2568 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2568);
  let x_2570 : f32 = u_xlat50;
  let x_2572 : vec4<f32> = u_xlat7;
  let x_2574 : vec3<f32> = (vec3<f32>(x_2570, x_2570, x_2570) * vec3<f32>(x_2572.x, x_2572.y, x_2572.z));
  let x_2575 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
  let x_2577 : vec4<f32> = u_xlat1;
  let x_2579 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2577.x, x_2577.y, x_2577.z), vec3<f32>(x_2579.x, x_2579.y, x_2579.z));
  let x_2582 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2582, 0.0f, 1.0f);
  let x_2585 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2587 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_2585.x, x_2585.y, x_2585.z), vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
  let x_2592 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2592, 0.0f, 1.0f);
  let x_2595 : f32 = u_xlat50;
  let x_2596 : f32 = u_xlat50;
  u_xlat50 = (x_2595 * x_2596);
  let x_2598 : f32 = u_xlat50;
  let x_2600 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2598 * x_2600) + 1.00001001358032226562f);
  let x_2605 : f32 = u_xlat3.x;
  let x_2607 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2605 * x_2607);
  let x_2610 : f32 = u_xlat50;
  let x_2611 : f32 = u_xlat50;
  u_xlat50 = (x_2610 * x_2611);
  let x_2614 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2614, 0.10000000149011611938f);
  let x_2618 : f32 = u_xlat50;
  let x_2620 : f32 = u_xlat3.x;
  u_xlat50 = (x_2618 * x_2620);
  let x_2622 : f32 = u_xlat79;
  let x_2623 : f32 = u_xlat50;
  u_xlat50 = (x_2622 * x_2623);
  let x_2625 : f32 = u_xlat77;
  let x_2626 : f32 = u_xlat50;
  u_xlat50 = (x_2625 / x_2626);
  let x_2628 : vec4<f32> = u_xlat4;
  let x_2630 : f32 = u_xlat50;
  let x_2633 : vec3<f32> = u_xlat28;
  let x_2634 : vec3<f32> = ((vec3<f32>(x_2628.x, x_2628.y, x_2628.z) * vec3<f32>(x_2630, x_2630, x_2630)) + x_2633);
  let x_2635 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2634.x, x_2634.y, x_2634.z, x_2635.w);
  let x_2637 : vec4<f32> = u_xlat5;
  let x_2639 : vec4<f32> = u_xlat7;
  let x_2641 : vec3<f32> = (vec3<f32>(x_2637.x, x_2637.z, x_2637.w) * vec3<f32>(x_2639.x, x_2639.y, x_2639.z));
  let x_2642 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2641.x, x_2642.y, x_2641.y, x_2641.z);
  let x_2645 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2647 : f32 = x_2432.unity_LightData.y;
  u_xlat50 = min(x_2645, x_2647);
  let x_2651 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2651));
  let x_2655 : f32 = u_xlat30.x;
  let x_2657 : f32 = x_1025.x_AdditionalShadowFadeParams.x;
  let x_2660 : f32 = x_1025.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2655 * x_2657) + x_2660);
  let x_2664 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2664, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2677 : u32 = u_xlatu_loop_1;
    let x_2678 : u32 = u_xlatu50;
    if ((x_2677 < x_2678)) {
    } else {
      break;
    }
    let x_2681 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2681 >> 2u);
    let x_2685 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2685 & 3u));
    let x_2689 : u32 = u_xlatu81;
    let x_2692 : vec4<f32> = x_2432.unity_LightIndices[bitcast<i32>(x_2689)];
    let x_2702 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2707 : vec4<u32> = indexable[x_2702];
    u_xlat81 = dot(x_2692, bitcast<vec4<f32>>(x_2707));
    let x_2711 : f32 = u_xlat81;
    u_xlati81 = i32(x_2711);
    let x_2713 : vec3<f32> = vs_TEXCOORD7;
    let x_2724 : i32 = u_xlati81;
    let x_2726 : vec4<f32> = x_2723.x_AdditionalLightsPosition[x_2724];
    let x_2729 : i32 = u_xlati81;
    let x_2731 : vec4<f32> = x_2723.x_AdditionalLightsPosition[x_2729];
    let x_2733 : vec3<f32> = ((-(x_2713) * vec3<f32>(x_2726.w, x_2726.w, x_2726.w)) + vec3<f32>(x_2731.x, x_2731.y, x_2731.z));
    let x_2734 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2733.x, x_2733.y, x_2733.z, x_2734.w);
    let x_2737 : vec4<f32> = u_xlat8;
    let x_2739 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_2737.x, x_2737.y, x_2737.z), vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
    let x_2742 : f32 = u_xlat82;
    u_xlat82 = max(x_2742, 0.00006103515625f);
    let x_2745 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2745);
    let x_2747 : f32 = u_xlat83;
    let x_2749 : vec4<f32> = u_xlat8;
    let x_2751 : vec3<f32> = (vec3<f32>(x_2747, x_2747, x_2747) * vec3<f32>(x_2749.x, x_2749.y, x_2749.z));
    let x_2752 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2752.w);
    let x_2755 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2755);
    let x_2757 : f32 = u_xlat82;
    let x_2758 : i32 = u_xlati81;
    let x_2760 : f32 = x_2723.x_AdditionalLightsAttenuation[x_2758].x;
    u_xlat82 = (x_2757 * x_2760);
    let x_2762 : f32 = u_xlat82;
    let x_2764 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2762) * x_2764) + 1.0f);
    let x_2767 : f32 = u_xlat82;
    u_xlat82 = max(x_2767, 0.0f);
    let x_2769 : f32 = u_xlat82;
    let x_2770 : f32 = u_xlat82;
    u_xlat82 = (x_2769 * x_2770);
    let x_2772 : f32 = u_xlat82;
    let x_2773 : f32 = u_xlat84;
    u_xlat82 = (x_2772 * x_2773);
    let x_2775 : i32 = u_xlati81;
    let x_2777 : vec4<f32> = x_2723.x_AdditionalLightsSpotDir[x_2775];
    let x_2779 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2777.x, x_2777.y, x_2777.z), vec3<f32>(x_2779.x, x_2779.y, x_2779.z));
    let x_2782 : f32 = u_xlat84;
    let x_2783 : i32 = u_xlati81;
    let x_2785 : f32 = x_2723.x_AdditionalLightsAttenuation[x_2783].z;
    let x_2787 : i32 = u_xlati81;
    let x_2789 : f32 = x_2723.x_AdditionalLightsAttenuation[x_2787].w;
    u_xlat84 = ((x_2782 * x_2785) + x_2789);
    let x_2791 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2791, 0.0f, 1.0f);
    let x_2793 : f32 = u_xlat84;
    let x_2794 : f32 = u_xlat84;
    u_xlat84 = (x_2793 * x_2794);
    let x_2796 : f32 = u_xlat82;
    let x_2797 : f32 = u_xlat84;
    u_xlat82 = (x_2796 * x_2797);
    let x_2800 : i32 = u_xlati81;
    let x_2802 : f32 = x_1025.x_AdditionalShadowParams[x_2800].w;
    u_xlati84 = i32(x_2802);
    let x_2807 : i32 = u_xlati84;
    u_xlatb10.x = (x_2807 >= 0i);
    let x_2811 : bool = u_xlatb10.x;
    if (x_2811) {
      let x_2815 : i32 = u_xlati81;
      let x_2817 : f32 = x_1025.x_AdditionalShadowParams[x_2815].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2817, x_2817, x_2817, x_2817))));
      let x_2823 : bool = u_xlatb10.x;
      if (x_2823) {
        let x_2826 : vec4<f32> = u_xlat9;
        let x_2829 : vec4<f32> = u_xlat9;
        let x_2832 : vec4<bool> = (abs(vec4<f32>(x_2826.z, x_2826.z, x_2826.y, x_2826.z)) >= abs(vec4<f32>(x_2829.x, x_2829.y, x_2829.x, x_2829.x)));
        u_xlatb10 = vec3<bool>(x_2832.x, x_2832.y, x_2832.z);
        let x_2835 : bool = u_xlatb10.y;
        let x_2837 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_2835 & x_2837);
        let x_2841 : vec4<f32> = u_xlat9;
        let x_2844 : vec4<bool> = (-(vec4<f32>(x_2841.z, x_2841.y, x_2841.x, x_2841.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2844.x, x_2844.y, x_2844.z);
        let x_2848 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_2848);
        let x_2853 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_2853);
        let x_2858 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_2858);
        let x_2863 : bool = u_xlatb10.z;
        if (x_2863) {
          let x_2868 : f32 = u_xlat35.z;
          x_2864 = x_2868;
        } else {
          let x_2871 : f32 = u_xlat11.x;
          x_2864 = x_2871;
        }
        let x_2872 : f32 = x_2864;
        u_xlat60 = x_2872;
        let x_2874 : bool = u_xlatb10.x;
        if (x_2874) {
          let x_2879 : f32 = u_xlat35.x;
          x_2875 = x_2879;
        } else {
          let x_2881 : f32 = u_xlat60;
          x_2875 = x_2881;
        }
        let x_2882 : f32 = x_2875;
        u_xlat10.x = x_2882;
        let x_2884 : i32 = u_xlati81;
        let x_2886 : f32 = x_1025.x_AdditionalShadowParams[x_2884].w;
        u_xlat35.x = trunc(x_2886);
        let x_2890 : f32 = u_xlat10.x;
        let x_2892 : f32 = u_xlat35.x;
        u_xlat10.x = (x_2890 + x_2892);
        let x_2896 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_2896);
      }
      let x_2898 : i32 = u_xlati84;
      u_xlati84 = (x_2898 << bitcast<u32>(2i));
      let x_2900 : vec3<f32> = vs_TEXCOORD7;
      let x_2902 : i32 = u_xlati84;
      let x_2905 : i32 = u_xlati84;
      let x_2909 : vec4<f32> = x_1025.x_AdditionalLightsWorldToShadow[((x_2902 + 1i) / 4i)][((x_2905 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2900.y, x_2900.y, x_2900.y, x_2900.y) * x_2909);
      let x_2911 : i32 = u_xlati84;
      let x_2913 : i32 = u_xlati84;
      let x_2916 : vec4<f32> = x_1025.x_AdditionalLightsWorldToShadow[(x_2911 / 4i)][(x_2913 % 4i)];
      let x_2917 : vec3<f32> = vs_TEXCOORD7;
      let x_2920 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2916 * vec4<f32>(x_2917.x, x_2917.x, x_2917.x, x_2917.x)) + x_2920);
      let x_2922 : i32 = u_xlati84;
      let x_2925 : i32 = u_xlati84;
      let x_2929 : vec4<f32> = x_1025.x_AdditionalLightsWorldToShadow[((x_2922 + 2i) / 4i)][((x_2925 + 2i) % 4i)];
      let x_2930 : vec3<f32> = vs_TEXCOORD7;
      let x_2933 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2929 * vec4<f32>(x_2930.z, x_2930.z, x_2930.z, x_2930.z)) + x_2933);
      let x_2935 : vec4<f32> = u_xlat10;
      let x_2936 : i32 = u_xlati84;
      let x_2939 : i32 = u_xlati84;
      let x_2943 : vec4<f32> = x_1025.x_AdditionalLightsWorldToShadow[((x_2936 + 3i) / 4i)][((x_2939 + 3i) % 4i)];
      u_xlat10 = (x_2935 + x_2943);
      let x_2945 : vec4<f32> = u_xlat10;
      let x_2947 : vec4<f32> = u_xlat10;
      let x_2949 : vec3<f32> = (vec3<f32>(x_2945.x, x_2945.y, x_2945.z) / vec3<f32>(x_2947.w, x_2947.w, x_2947.w));
      let x_2950 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2949.x, x_2949.y, x_2949.z, x_2950.w);
      let x_2953 : i32 = u_xlati81;
      let x_2955 : f32 = x_1025.x_AdditionalShadowParams[x_2953].y;
      u_xlatb84 = (0.0f < x_2955);
      let x_2957 : bool = u_xlatb84;
      if (x_2957) {
        let x_2960 : i32 = u_xlati81;
        let x_2962 : f32 = x_1025.x_AdditionalShadowParams[x_2960].y;
        u_xlatb84 = (1.0f == x_2962);
        let x_2964 : bool = u_xlatb84;
        if (x_2964) {
          let x_2967 : vec4<f32> = u_xlat10;
          let x_2970 : vec4<f32> = x_1025.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2967.x, x_2967.y, x_2967.x, x_2967.y) + x_2970);
          let x_2973 : vec4<f32> = u_xlat11;
          let x_2974 : vec2<f32> = vec2<f32>(x_2973.x, x_2973.y);
          let x_2976 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2974.x, x_2974.y, x_2976);
          let x_2984 : vec3<f32> = txVec30;
          let x_2986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2984.xy, x_2984.z);
          u_xlat12.x = x_2986;
          let x_2989 : vec4<f32> = u_xlat11;
          let x_2990 : vec2<f32> = vec2<f32>(x_2989.z, x_2989.w);
          let x_2992 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
          let x_2999 : vec3<f32> = txVec31;
          let x_3001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
          u_xlat12.y = x_3001;
          let x_3003 : vec4<f32> = u_xlat10;
          let x_3006 : vec4<f32> = x_1025.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3003.x, x_3003.y, x_3003.x, x_3003.y) + x_3006);
          let x_3009 : vec4<f32> = u_xlat11;
          let x_3010 : vec2<f32> = vec2<f32>(x_3009.x, x_3009.y);
          let x_3012 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
          let x_3019 : vec3<f32> = txVec32;
          let x_3021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3019.xy, x_3019.z);
          u_xlat12.z = x_3021;
          let x_3024 : vec4<f32> = u_xlat11;
          let x_3025 : vec2<f32> = vec2<f32>(x_3024.z, x_3024.w);
          let x_3027 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3025.x, x_3025.y, x_3027);
          let x_3034 : vec3<f32> = txVec33;
          let x_3036 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3034.xy, x_3034.z);
          u_xlat12.w = x_3036;
          let x_3038 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3038, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3042 : i32 = u_xlati81;
          let x_3044 : f32 = x_1025.x_AdditionalShadowParams[x_3042].y;
          u_xlatb85 = (2.0f == x_3044);
          let x_3046 : bool = u_xlatb85;
          if (x_3046) {
            let x_3049 : vec4<f32> = u_xlat10;
            let x_3052 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3055 : vec2<f32> = ((vec2<f32>(x_3049.x, x_3049.y) * vec2<f32>(x_3052.z, x_3052.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3056 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3055.x, x_3055.y, x_3056.z, x_3056.w);
            let x_3058 : vec4<f32> = u_xlat11;
            let x_3060 : vec2<f32> = floor(vec2<f32>(x_3058.x, x_3058.y));
            let x_3061 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3060.x, x_3060.y, x_3061.z, x_3061.w);
            let x_3064 : vec4<f32> = u_xlat10;
            let x_3067 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3070 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3064.x, x_3064.y) * vec2<f32>(x_3067.z, x_3067.w)) + -(vec2<f32>(x_3070.x, x_3070.y)));
            let x_3074 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3074.x, x_3074.x, x_3074.y, x_3074.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3077 : vec4<f32> = u_xlat12;
            let x_3079 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3077.x, x_3077.x, x_3077.z, x_3077.z) * vec4<f32>(x_3079.x, x_3079.x, x_3079.z, x_3079.z));
            let x_3082 : vec4<f32> = u_xlat13;
            let x_3084 : vec2<f32> = (vec2<f32>(x_3082.y, x_3082.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3085 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3084.x, x_3085.y, x_3084.y, x_3085.w);
            let x_3087 : vec4<f32> = u_xlat13;
            let x_3090 : vec2<f32> = u_xlat61;
            let x_3092 : vec2<f32> = ((vec2<f32>(x_3087.x, x_3087.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3090));
            let x_3093 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3092.x, x_3092.y, x_3093.z, x_3093.w);
            let x_3096 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3096) + vec2<f32>(1.0f, 1.0f));
            let x_3099 : vec2<f32> = u_xlat61;
            let x_3100 : vec2<f32> = min(x_3099, vec2<f32>(0.0f, 0.0f));
            let x_3101 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3100.x, x_3100.y, x_3101.z, x_3101.w);
            let x_3103 : vec4<f32> = u_xlat14;
            let x_3106 : vec4<f32> = u_xlat14;
            let x_3109 : vec2<f32> = u_xlat63;
            let x_3110 : vec2<f32> = ((-(vec2<f32>(x_3103.x, x_3103.y)) * vec2<f32>(x_3106.x, x_3106.y)) + x_3109);
            let x_3111 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3110.x, x_3110.y, x_3111.z, x_3111.w);
            let x_3113 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3113, vec2<f32>(0.0f, 0.0f));
            let x_3115 : vec2<f32> = u_xlat61;
            let x_3117 : vec2<f32> = u_xlat61;
            let x_3119 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3115) * x_3117) + vec2<f32>(x_3119.y, x_3119.w));
            let x_3122 : vec4<f32> = u_xlat14;
            let x_3124 : vec2<f32> = (vec2<f32>(x_3122.x, x_3122.y) + vec2<f32>(1.0f, 1.0f));
            let x_3125 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3124.x, x_3124.y, x_3125.z, x_3125.w);
            let x_3127 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3127 + vec2<f32>(1.0f, 1.0f));
            let x_3129 : vec4<f32> = u_xlat13;
            let x_3131 : vec2<f32> = (vec2<f32>(x_3129.x, x_3129.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3132 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3131.x, x_3131.y, x_3132.z, x_3132.w);
            let x_3134 : vec2<f32> = u_xlat63;
            let x_3135 : vec2<f32> = (x_3134 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3136 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3135.x, x_3135.y, x_3136.z, x_3136.w);
            let x_3138 : vec4<f32> = u_xlat14;
            let x_3140 : vec2<f32> = (vec2<f32>(x_3138.x, x_3138.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3141 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3140.x, x_3140.y, x_3141.z, x_3141.w);
            let x_3143 : vec2<f32> = u_xlat61;
            let x_3144 : vec2<f32> = (x_3143 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3145 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3144.x, x_3144.y, x_3145.z, x_3145.w);
            let x_3147 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3147.y, x_3147.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3151 : f32 = u_xlat14.x;
            u_xlat15.z = x_3151;
            let x_3154 : f32 = u_xlat61.x;
            u_xlat15.w = x_3154;
            let x_3157 : f32 = u_xlat16.x;
            u_xlat13.z = x_3157;
            let x_3160 : f32 = u_xlat12.x;
            u_xlat13.w = x_3160;
            let x_3162 : vec4<f32> = u_xlat13;
            let x_3164 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3162.z, x_3162.w, x_3162.x, x_3162.z) + vec4<f32>(x_3164.z, x_3164.w, x_3164.x, x_3164.z));
            let x_3168 : f32 = u_xlat15.y;
            u_xlat14.z = x_3168;
            let x_3171 : f32 = u_xlat61.y;
            u_xlat14.w = x_3171;
            let x_3174 : f32 = u_xlat13.y;
            u_xlat16.z = x_3174;
            let x_3177 : f32 = u_xlat12.z;
            u_xlat16.w = x_3177;
            let x_3179 : vec4<f32> = u_xlat14;
            let x_3181 : vec4<f32> = u_xlat16;
            let x_3183 : vec3<f32> = (vec3<f32>(x_3179.z, x_3179.y, x_3179.w) + vec3<f32>(x_3181.z, x_3181.y, x_3181.w));
            let x_3184 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3183.x, x_3183.y, x_3183.z, x_3184.w);
            let x_3186 : vec4<f32> = u_xlat13;
            let x_3188 : vec4<f32> = u_xlat17;
            let x_3190 : vec3<f32> = (vec3<f32>(x_3186.x, x_3186.z, x_3186.w) / vec3<f32>(x_3188.z, x_3188.w, x_3188.y));
            let x_3191 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3190.x, x_3190.y, x_3190.z, x_3191.w);
            let x_3193 : vec4<f32> = u_xlat13;
            let x_3195 : vec3<f32> = (vec3<f32>(x_3193.x, x_3193.y, x_3193.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3196 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3195.x, x_3195.y, x_3195.z, x_3196.w);
            let x_3198 : vec4<f32> = u_xlat16;
            let x_3200 : vec4<f32> = u_xlat12;
            let x_3202 : vec3<f32> = (vec3<f32>(x_3198.z, x_3198.y, x_3198.w) / vec3<f32>(x_3200.x, x_3200.y, x_3200.z));
            let x_3203 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3202.x, x_3202.y, x_3202.z, x_3203.w);
            let x_3205 : vec4<f32> = u_xlat14;
            let x_3207 : vec3<f32> = (vec3<f32>(x_3205.x, x_3205.y, x_3205.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3208 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3207.x, x_3207.y, x_3207.z, x_3208.w);
            let x_3210 : vec4<f32> = u_xlat13;
            let x_3213 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3215 : vec3<f32> = (vec3<f32>(x_3210.y, x_3210.x, x_3210.z) * vec3<f32>(x_3213.x, x_3213.x, x_3213.x));
            let x_3216 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3215.x, x_3215.y, x_3215.z, x_3216.w);
            let x_3218 : vec4<f32> = u_xlat14;
            let x_3221 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3223 : vec3<f32> = (vec3<f32>(x_3218.x, x_3218.y, x_3218.z) * vec3<f32>(x_3221.y, x_3221.y, x_3221.y));
            let x_3224 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3223.x, x_3223.y, x_3223.z, x_3224.w);
            let x_3227 : f32 = u_xlat14.x;
            u_xlat13.w = x_3227;
            let x_3229 : vec4<f32> = u_xlat11;
            let x_3232 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3235 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3229.x, x_3229.y, x_3229.x, x_3229.y) * vec4<f32>(x_3232.x, x_3232.y, x_3232.x, x_3232.y)) + vec4<f32>(x_3235.y, x_3235.w, x_3235.x, x_3235.w));
            let x_3238 : vec4<f32> = u_xlat11;
            let x_3241 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3244 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3238.x, x_3238.y) * vec2<f32>(x_3241.x, x_3241.y)) + vec2<f32>(x_3244.z, x_3244.w));
            let x_3248 : f32 = u_xlat13.y;
            u_xlat14.w = x_3248;
            let x_3250 : vec4<f32> = u_xlat14;
            let x_3251 : vec2<f32> = vec2<f32>(x_3250.y, x_3250.z);
            let x_3252 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3252.x, x_3251.x, x_3252.z, x_3251.y);
            let x_3254 : vec4<f32> = u_xlat11;
            let x_3257 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3260 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3254.x, x_3254.y, x_3254.x, x_3254.y) * vec4<f32>(x_3257.x, x_3257.y, x_3257.x, x_3257.y)) + vec4<f32>(x_3260.x, x_3260.y, x_3260.z, x_3260.y));
            let x_3263 : vec4<f32> = u_xlat11;
            let x_3266 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3269 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3263.x, x_3263.y, x_3263.x, x_3263.y) * vec4<f32>(x_3266.x, x_3266.y, x_3266.x, x_3266.y)) + vec4<f32>(x_3269.w, x_3269.y, x_3269.w, x_3269.z));
            let x_3272 : vec4<f32> = u_xlat11;
            let x_3275 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3278 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3272.x, x_3272.y, x_3272.x, x_3272.y) * vec4<f32>(x_3275.x, x_3275.y, x_3275.x, x_3275.y)) + vec4<f32>(x_3278.x, x_3278.w, x_3278.z, x_3278.w));
            let x_3281 : vec4<f32> = u_xlat12;
            let x_3283 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3281.x, x_3281.x, x_3281.x, x_3281.y) * vec4<f32>(x_3283.z, x_3283.w, x_3283.y, x_3283.z));
            let x_3286 : vec4<f32> = u_xlat12;
            let x_3288 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3286.y, x_3286.y, x_3286.z, x_3286.z) * x_3288);
            let x_3292 : f32 = u_xlat12.z;
            let x_3294 : f32 = u_xlat17.y;
            u_xlat85 = (x_3292 * x_3294);
            let x_3297 : vec4<f32> = u_xlat15;
            let x_3298 : vec2<f32> = vec2<f32>(x_3297.x, x_3297.y);
            let x_3300 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3298.x, x_3298.y, x_3300);
            let x_3307 : vec3<f32> = txVec34;
            let x_3309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3307.xy, x_3307.z);
            u_xlat11.x = x_3309;
            let x_3312 : vec4<f32> = u_xlat15;
            let x_3313 : vec2<f32> = vec2<f32>(x_3312.z, x_3312.w);
            let x_3315 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
            let x_3323 : vec3<f32> = txVec35;
            let x_3325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3323.xy, x_3323.z);
            u_xlat36 = x_3325;
            let x_3326 : f32 = u_xlat36;
            let x_3328 : f32 = u_xlat18.y;
            u_xlat36 = (x_3326 * x_3328);
            let x_3331 : f32 = u_xlat18.x;
            let x_3333 : f32 = u_xlat11.x;
            let x_3335 : f32 = u_xlat36;
            u_xlat11.x = ((x_3331 * x_3333) + x_3335);
            let x_3339 : vec2<f32> = u_xlat61;
            let x_3341 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3339.x, x_3339.y, x_3341);
            let x_3348 : vec3<f32> = txVec36;
            let x_3350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3348.xy, x_3348.z);
            u_xlat36 = x_3350;
            let x_3352 : f32 = u_xlat18.z;
            let x_3353 : f32 = u_xlat36;
            let x_3356 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3352 * x_3353) + x_3356);
            let x_3360 : vec4<f32> = u_xlat14;
            let x_3361 : vec2<f32> = vec2<f32>(x_3360.x, x_3360.y);
            let x_3363 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3361.x, x_3361.y, x_3363);
            let x_3370 : vec3<f32> = txVec37;
            let x_3372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3370.xy, x_3370.z);
            u_xlat36 = x_3372;
            let x_3374 : f32 = u_xlat18.w;
            let x_3375 : f32 = u_xlat36;
            let x_3378 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3374 * x_3375) + x_3378);
            let x_3382 : vec4<f32> = u_xlat16;
            let x_3383 : vec2<f32> = vec2<f32>(x_3382.x, x_3382.y);
            let x_3385 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3383.x, x_3383.y, x_3385);
            let x_3392 : vec3<f32> = txVec38;
            let x_3394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3392.xy, x_3392.z);
            u_xlat36 = x_3394;
            let x_3396 : f32 = u_xlat19.x;
            let x_3397 : f32 = u_xlat36;
            let x_3400 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3396 * x_3397) + x_3400);
            let x_3404 : vec4<f32> = u_xlat16;
            let x_3405 : vec2<f32> = vec2<f32>(x_3404.z, x_3404.w);
            let x_3407 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3405.x, x_3405.y, x_3407);
            let x_3414 : vec3<f32> = txVec39;
            let x_3416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3414.xy, x_3414.z);
            u_xlat36 = x_3416;
            let x_3418 : f32 = u_xlat19.y;
            let x_3419 : f32 = u_xlat36;
            let x_3422 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3418 * x_3419) + x_3422);
            let x_3426 : vec4<f32> = u_xlat14;
            let x_3427 : vec2<f32> = vec2<f32>(x_3426.z, x_3426.w);
            let x_3429 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3427.x, x_3427.y, x_3429);
            let x_3436 : vec3<f32> = txVec40;
            let x_3438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3436.xy, x_3436.z);
            u_xlat36 = x_3438;
            let x_3440 : f32 = u_xlat19.z;
            let x_3441 : f32 = u_xlat36;
            let x_3444 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3440 * x_3441) + x_3444);
            let x_3448 : vec4<f32> = u_xlat13;
            let x_3449 : vec2<f32> = vec2<f32>(x_3448.x, x_3448.y);
            let x_3451 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3449.x, x_3449.y, x_3451);
            let x_3458 : vec3<f32> = txVec41;
            let x_3460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3458.xy, x_3458.z);
            u_xlat36 = x_3460;
            let x_3462 : f32 = u_xlat19.w;
            let x_3463 : f32 = u_xlat36;
            let x_3466 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_3462 * x_3463) + x_3466);
            let x_3470 : vec4<f32> = u_xlat13;
            let x_3471 : vec2<f32> = vec2<f32>(x_3470.z, x_3470.w);
            let x_3473 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3471.x, x_3471.y, x_3473);
            let x_3480 : vec3<f32> = txVec42;
            let x_3482 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3480.xy, x_3480.z);
            u_xlat36 = x_3482;
            let x_3483 : f32 = u_xlat85;
            let x_3484 : f32 = u_xlat36;
            let x_3487 : f32 = u_xlat11.x;
            u_xlat84 = ((x_3483 * x_3484) + x_3487);
          } else {
            let x_3490 : vec4<f32> = u_xlat10;
            let x_3493 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3496 : vec2<f32> = ((vec2<f32>(x_3490.x, x_3490.y) * vec2<f32>(x_3493.z, x_3493.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3497 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3496.x, x_3496.y, x_3497.z, x_3497.w);
            let x_3499 : vec4<f32> = u_xlat11;
            let x_3501 : vec2<f32> = floor(vec2<f32>(x_3499.x, x_3499.y));
            let x_3502 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3501.x, x_3501.y, x_3502.z, x_3502.w);
            let x_3504 : vec4<f32> = u_xlat10;
            let x_3507 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3510 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3504.x, x_3504.y) * vec2<f32>(x_3507.z, x_3507.w)) + -(vec2<f32>(x_3510.x, x_3510.y)));
            let x_3514 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3514.x, x_3514.x, x_3514.y, x_3514.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3517 : vec4<f32> = u_xlat12;
            let x_3519 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3517.x, x_3517.x, x_3517.z, x_3517.z) * vec4<f32>(x_3519.x, x_3519.x, x_3519.z, x_3519.z));
            let x_3522 : vec4<f32> = u_xlat13;
            let x_3524 : vec2<f32> = (vec2<f32>(x_3522.y, x_3522.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3525 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3525.x, x_3524.x, x_3525.z, x_3524.y);
            let x_3527 : vec4<f32> = u_xlat13;
            let x_3530 : vec2<f32> = u_xlat61;
            let x_3532 : vec2<f32> = ((vec2<f32>(x_3527.x, x_3527.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3530));
            let x_3533 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3532.x, x_3533.y, x_3532.y, x_3533.w);
            let x_3535 : vec2<f32> = u_xlat61;
            let x_3537 : vec2<f32> = (-(x_3535) + vec2<f32>(1.0f, 1.0f));
            let x_3538 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3537.x, x_3537.y, x_3538.z, x_3538.w);
            let x_3540 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3540, vec2<f32>(0.0f, 0.0f));
            let x_3542 : vec2<f32> = u_xlat63;
            let x_3544 : vec2<f32> = u_xlat63;
            let x_3546 : vec4<f32> = u_xlat13;
            let x_3548 : vec2<f32> = ((-(x_3542) * x_3544) + vec2<f32>(x_3546.x, x_3546.y));
            let x_3549 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3548.x, x_3548.y, x_3549.z, x_3549.w);
            let x_3551 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3551, vec2<f32>(0.0f, 0.0f));
            let x_3554 : vec2<f32> = u_xlat63;
            let x_3556 : vec2<f32> = u_xlat63;
            let x_3558 : vec4<f32> = u_xlat12;
            let x_3560 : vec2<f32> = ((-(x_3554) * x_3556) + vec2<f32>(x_3558.y, x_3558.w));
            let x_3561 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3560.x, x_3561.y, x_3560.y);
            let x_3563 : vec4<f32> = u_xlat13;
            let x_3565 : vec2<f32> = (vec2<f32>(x_3563.x, x_3563.y) + vec2<f32>(2.0f, 2.0f));
            let x_3566 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3565.x, x_3565.y, x_3566.z, x_3566.w);
            let x_3568 : vec3<f32> = u_xlat37;
            let x_3570 : vec2<f32> = (vec2<f32>(x_3568.x, x_3568.z) + vec2<f32>(2.0f, 2.0f));
            let x_3571 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3571.x, x_3570.x, x_3571.z, x_3570.y);
            let x_3574 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3574 * 0.08163200318813323975f);
            let x_3577 : vec4<f32> = u_xlat12;
            let x_3580 : vec3<f32> = (vec3<f32>(x_3577.z, x_3577.x, x_3577.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3581 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3580.x, x_3580.y, x_3580.z, x_3581.w);
            let x_3583 : vec4<f32> = u_xlat13;
            let x_3585 : vec2<f32> = (vec2<f32>(x_3583.x, x_3583.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3586 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3585.x, x_3585.y, x_3586.z, x_3586.w);
            let x_3589 : f32 = u_xlat16.y;
            u_xlat15.x = x_3589;
            let x_3591 : vec2<f32> = u_xlat61;
            let x_3594 : vec2<f32> = ((vec2<f32>(x_3591.x, x_3591.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3595 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3595.x, x_3594.x, x_3595.z, x_3594.y);
            let x_3597 : vec2<f32> = u_xlat61;
            let x_3600 : vec2<f32> = ((vec2<f32>(x_3597.x, x_3597.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3601 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3600.x, x_3601.y, x_3600.y, x_3601.w);
            let x_3604 : f32 = u_xlat12.x;
            u_xlat13.y = x_3604;
            let x_3607 : f32 = u_xlat14.y;
            u_xlat13.w = x_3607;
            let x_3609 : vec4<f32> = u_xlat13;
            let x_3610 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3609 + x_3610);
            let x_3612 : vec2<f32> = u_xlat61;
            let x_3615 : vec2<f32> = ((vec2<f32>(x_3612.y, x_3612.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3616 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3616.x, x_3615.x, x_3616.z, x_3615.y);
            let x_3618 : vec2<f32> = u_xlat61;
            let x_3621 : vec2<f32> = ((vec2<f32>(x_3618.y, x_3618.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3622 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3621.x, x_3622.y, x_3621.y, x_3622.w);
            let x_3625 : f32 = u_xlat12.y;
            u_xlat14.y = x_3625;
            let x_3627 : vec4<f32> = u_xlat14;
            let x_3628 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3627 + x_3628);
            let x_3630 : vec4<f32> = u_xlat13;
            let x_3631 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3630 / x_3631);
            let x_3633 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3633 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3635 : vec4<f32> = u_xlat14;
            let x_3636 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3635 / x_3636);
            let x_3638 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3638 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3640 : vec4<f32> = u_xlat13;
            let x_3643 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3640.w, x_3640.x, x_3640.y, x_3640.z) * vec4<f32>(x_3643.x, x_3643.x, x_3643.x, x_3643.x));
            let x_3646 : vec4<f32> = u_xlat14;
            let x_3649 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3646.x, x_3646.w, x_3646.y, x_3646.z) * vec4<f32>(x_3649.y, x_3649.y, x_3649.y, x_3649.y));
            let x_3652 : vec4<f32> = u_xlat13;
            let x_3653 : vec3<f32> = vec3<f32>(x_3652.y, x_3652.z, x_3652.w);
            let x_3654 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3653.x, x_3654.y, x_3653.y, x_3653.z);
            let x_3657 : f32 = u_xlat14.x;
            u_xlat16.y = x_3657;
            let x_3659 : vec4<f32> = u_xlat11;
            let x_3662 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3665 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3659.x, x_3659.y, x_3659.x, x_3659.y) * vec4<f32>(x_3662.x, x_3662.y, x_3662.x, x_3662.y)) + vec4<f32>(x_3665.x, x_3665.y, x_3665.z, x_3665.y));
            let x_3668 : vec4<f32> = u_xlat11;
            let x_3671 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3674 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3668.x, x_3668.y) * vec2<f32>(x_3671.x, x_3671.y)) + vec2<f32>(x_3674.w, x_3674.y));
            let x_3678 : f32 = u_xlat16.y;
            u_xlat13.y = x_3678;
            let x_3681 : f32 = u_xlat14.z;
            u_xlat16.y = x_3681;
            let x_3683 : vec4<f32> = u_xlat11;
            let x_3686 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3689 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3683.x, x_3683.y, x_3683.x, x_3683.y) * vec4<f32>(x_3686.x, x_3686.y, x_3686.x, x_3686.y)) + vec4<f32>(x_3689.x, x_3689.y, x_3689.z, x_3689.y));
            let x_3692 : vec4<f32> = u_xlat11;
            let x_3695 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3698 : vec4<f32> = u_xlat16;
            let x_3700 : vec2<f32> = ((vec2<f32>(x_3692.x, x_3692.y) * vec2<f32>(x_3695.x, x_3695.y)) + vec2<f32>(x_3698.w, x_3698.y));
            let x_3701 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3700.x, x_3700.y, x_3701.z, x_3701.w);
            let x_3704 : f32 = u_xlat16.y;
            u_xlat13.z = x_3704;
            let x_3707 : vec4<f32> = u_xlat11;
            let x_3710 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3713 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3707.x, x_3707.y, x_3707.x, x_3707.y) * vec4<f32>(x_3710.x, x_3710.y, x_3710.x, x_3710.y)) + vec4<f32>(x_3713.x, x_3713.y, x_3713.x, x_3713.z));
            let x_3717 : f32 = u_xlat14.w;
            u_xlat16.y = x_3717;
            let x_3720 : vec4<f32> = u_xlat11;
            let x_3723 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3726 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3720.x, x_3720.y, x_3720.x, x_3720.y) * vec4<f32>(x_3723.x, x_3723.y, x_3723.x, x_3723.y)) + vec4<f32>(x_3726.x, x_3726.y, x_3726.z, x_3726.y));
            let x_3730 : vec4<f32> = u_xlat11;
            let x_3733 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3736 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3730.x, x_3730.y) * vec2<f32>(x_3733.x, x_3733.y)) + vec2<f32>(x_3736.w, x_3736.y));
            let x_3740 : f32 = u_xlat16.y;
            u_xlat13.w = x_3740;
            let x_3743 : vec4<f32> = u_xlat11;
            let x_3746 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3749 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3743.x, x_3743.y) * vec2<f32>(x_3746.x, x_3746.y)) + vec2<f32>(x_3749.x, x_3749.w));
            let x_3752 : vec4<f32> = u_xlat16;
            let x_3753 : vec3<f32> = vec3<f32>(x_3752.x, x_3752.z, x_3752.w);
            let x_3754 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3753.x, x_3754.y, x_3753.y, x_3753.z);
            let x_3756 : vec4<f32> = u_xlat11;
            let x_3759 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3762 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3756.x, x_3756.y, x_3756.x, x_3756.y) * vec4<f32>(x_3759.x, x_3759.y, x_3759.x, x_3759.y)) + vec4<f32>(x_3762.x, x_3762.y, x_3762.z, x_3762.y));
            let x_3766 : vec4<f32> = u_xlat11;
            let x_3769 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3772 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3766.x, x_3766.y) * vec2<f32>(x_3769.x, x_3769.y)) + vec2<f32>(x_3772.w, x_3772.y));
            let x_3776 : f32 = u_xlat13.x;
            u_xlat14.x = x_3776;
            let x_3778 : vec4<f32> = u_xlat11;
            let x_3781 : vec4<f32> = x_1025.x_AdditionalShadowmapSize;
            let x_3784 : vec4<f32> = u_xlat14;
            let x_3786 : vec2<f32> = ((vec2<f32>(x_3778.x, x_3778.y) * vec2<f32>(x_3781.x, x_3781.y)) + vec2<f32>(x_3784.x, x_3784.y));
            let x_3787 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3786.x, x_3786.y, x_3787.z, x_3787.w);
            let x_3790 : vec4<f32> = u_xlat12;
            let x_3792 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3790.x, x_3790.x, x_3790.x, x_3790.x) * x_3792);
            let x_3795 : vec4<f32> = u_xlat12;
            let x_3797 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3795.y, x_3795.y, x_3795.y, x_3795.y) * x_3797);
            let x_3800 : vec4<f32> = u_xlat12;
            let x_3802 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3800.z, x_3800.z, x_3800.z, x_3800.z) * x_3802);
            let x_3804 : vec4<f32> = u_xlat12;
            let x_3806 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3804.w, x_3804.w, x_3804.w, x_3804.w) * x_3806);
            let x_3809 : vec4<f32> = u_xlat17;
            let x_3810 : vec2<f32> = vec2<f32>(x_3809.x, x_3809.y);
            let x_3812 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3810.x, x_3810.y, x_3812);
            let x_3819 : vec3<f32> = txVec43;
            let x_3821 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3819.xy, x_3819.z);
            u_xlat85 = x_3821;
            let x_3823 : vec4<f32> = u_xlat17;
            let x_3824 : vec2<f32> = vec2<f32>(x_3823.z, x_3823.w);
            let x_3826 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3824.x, x_3824.y, x_3826);
            let x_3833 : vec3<f32> = txVec44;
            let x_3835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3833.xy, x_3833.z);
            u_xlat13.x = x_3835;
            let x_3838 : f32 = u_xlat13.x;
            let x_3840 : f32 = u_xlat22.y;
            u_xlat13.x = (x_3838 * x_3840);
            let x_3844 : f32 = u_xlat22.x;
            let x_3845 : f32 = u_xlat85;
            let x_3848 : f32 = u_xlat13.x;
            u_xlat85 = ((x_3844 * x_3845) + x_3848);
            let x_3851 : vec2<f32> = u_xlat61;
            let x_3853 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3851.x, x_3851.y, x_3853);
            let x_3860 : vec3<f32> = txVec45;
            let x_3862 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3860.xy, x_3860.z);
            u_xlat61.x = x_3862;
            let x_3865 : f32 = u_xlat22.z;
            let x_3867 : f32 = u_xlat61.x;
            let x_3869 : f32 = u_xlat85;
            u_xlat85 = ((x_3865 * x_3867) + x_3869);
            let x_3872 : vec4<f32> = u_xlat20;
            let x_3873 : vec2<f32> = vec2<f32>(x_3872.x, x_3872.y);
            let x_3875 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3873.x, x_3873.y, x_3875);
            let x_3882 : vec3<f32> = txVec46;
            let x_3884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3882.xy, x_3882.z);
            u_xlat61.x = x_3884;
            let x_3887 : f32 = u_xlat22.w;
            let x_3889 : f32 = u_xlat61.x;
            let x_3891 : f32 = u_xlat85;
            u_xlat85 = ((x_3887 * x_3889) + x_3891);
            let x_3894 : vec4<f32> = u_xlat18;
            let x_3895 : vec2<f32> = vec2<f32>(x_3894.x, x_3894.y);
            let x_3897 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3895.x, x_3895.y, x_3897);
            let x_3904 : vec3<f32> = txVec47;
            let x_3906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3904.xy, x_3904.z);
            u_xlat61.x = x_3906;
            let x_3909 : f32 = u_xlat23.x;
            let x_3911 : f32 = u_xlat61.x;
            let x_3913 : f32 = u_xlat85;
            u_xlat85 = ((x_3909 * x_3911) + x_3913);
            let x_3916 : vec4<f32> = u_xlat18;
            let x_3917 : vec2<f32> = vec2<f32>(x_3916.z, x_3916.w);
            let x_3919 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3917.x, x_3917.y, x_3919);
            let x_3926 : vec3<f32> = txVec48;
            let x_3928 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3926.xy, x_3926.z);
            u_xlat61.x = x_3928;
            let x_3931 : f32 = u_xlat23.y;
            let x_3933 : f32 = u_xlat61.x;
            let x_3935 : f32 = u_xlat85;
            u_xlat85 = ((x_3931 * x_3933) + x_3935);
            let x_3938 : vec4<f32> = u_xlat19;
            let x_3939 : vec2<f32> = vec2<f32>(x_3938.x, x_3938.y);
            let x_3941 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3939.x, x_3939.y, x_3941);
            let x_3948 : vec3<f32> = txVec49;
            let x_3950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3948.xy, x_3948.z);
            u_xlat61.x = x_3950;
            let x_3953 : f32 = u_xlat23.z;
            let x_3955 : f32 = u_xlat61.x;
            let x_3957 : f32 = u_xlat85;
            u_xlat85 = ((x_3953 * x_3955) + x_3957);
            let x_3960 : vec4<f32> = u_xlat20;
            let x_3961 : vec2<f32> = vec2<f32>(x_3960.z, x_3960.w);
            let x_3963 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3961.x, x_3961.y, x_3963);
            let x_3970 : vec3<f32> = txVec50;
            let x_3972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3970.xy, x_3970.z);
            u_xlat61.x = x_3972;
            let x_3975 : f32 = u_xlat23.w;
            let x_3977 : f32 = u_xlat61.x;
            let x_3979 : f32 = u_xlat85;
            u_xlat85 = ((x_3975 * x_3977) + x_3979);
            let x_3982 : vec4<f32> = u_xlat21;
            let x_3983 : vec2<f32> = vec2<f32>(x_3982.x, x_3982.y);
            let x_3985 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3983.x, x_3983.y, x_3985);
            let x_3992 : vec3<f32> = txVec51;
            let x_3994 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3992.xy, x_3992.z);
            u_xlat61.x = x_3994;
            let x_3997 : f32 = u_xlat24.x;
            let x_3999 : f32 = u_xlat61.x;
            let x_4001 : f32 = u_xlat85;
            u_xlat85 = ((x_3997 * x_3999) + x_4001);
            let x_4004 : vec4<f32> = u_xlat21;
            let x_4005 : vec2<f32> = vec2<f32>(x_4004.z, x_4004.w);
            let x_4007 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4005.x, x_4005.y, x_4007);
            let x_4014 : vec3<f32> = txVec52;
            let x_4016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4014.xy, x_4014.z);
            u_xlat61.x = x_4016;
            let x_4019 : f32 = u_xlat24.y;
            let x_4021 : f32 = u_xlat61.x;
            let x_4023 : f32 = u_xlat85;
            u_xlat85 = ((x_4019 * x_4021) + x_4023);
            let x_4026 : vec2<f32> = u_xlat38;
            let x_4028 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4026.x, x_4026.y, x_4028);
            let x_4035 : vec3<f32> = txVec53;
            let x_4037 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4035.xy, x_4035.z);
            u_xlat61.x = x_4037;
            let x_4040 : f32 = u_xlat24.z;
            let x_4042 : f32 = u_xlat61.x;
            let x_4044 : f32 = u_xlat85;
            u_xlat85 = ((x_4040 * x_4042) + x_4044);
            let x_4047 : vec2<f32> = u_xlat69;
            let x_4049 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4047.x, x_4047.y, x_4049);
            let x_4056 : vec3<f32> = txVec54;
            let x_4058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4056.xy, x_4056.z);
            u_xlat61.x = x_4058;
            let x_4061 : f32 = u_xlat24.w;
            let x_4063 : f32 = u_xlat61.x;
            let x_4065 : f32 = u_xlat85;
            u_xlat85 = ((x_4061 * x_4063) + x_4065);
            let x_4068 : vec4<f32> = u_xlat16;
            let x_4069 : vec2<f32> = vec2<f32>(x_4068.x, x_4068.y);
            let x_4071 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4069.x, x_4069.y, x_4071);
            let x_4078 : vec3<f32> = txVec55;
            let x_4080 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4078.xy, x_4078.z);
            u_xlat61.x = x_4080;
            let x_4083 : f32 = u_xlat12.x;
            let x_4085 : f32 = u_xlat61.x;
            let x_4087 : f32 = u_xlat85;
            u_xlat85 = ((x_4083 * x_4085) + x_4087);
            let x_4090 : vec4<f32> = u_xlat16;
            let x_4091 : vec2<f32> = vec2<f32>(x_4090.z, x_4090.w);
            let x_4093 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4091.x, x_4091.y, x_4093);
            let x_4100 : vec3<f32> = txVec56;
            let x_4102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4100.xy, x_4100.z);
            u_xlat61.x = x_4102;
            let x_4105 : f32 = u_xlat12.y;
            let x_4107 : f32 = u_xlat61.x;
            let x_4109 : f32 = u_xlat85;
            u_xlat85 = ((x_4105 * x_4107) + x_4109);
            let x_4112 : vec2<f32> = u_xlat64;
            let x_4114 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4112.x, x_4112.y, x_4114);
            let x_4121 : vec3<f32> = txVec57;
            let x_4123 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4121.xy, x_4121.z);
            u_xlat61.x = x_4123;
            let x_4126 : f32 = u_xlat12.z;
            let x_4128 : f32 = u_xlat61.x;
            let x_4130 : f32 = u_xlat85;
            u_xlat85 = ((x_4126 * x_4128) + x_4130);
            let x_4133 : vec4<f32> = u_xlat11;
            let x_4134 : vec2<f32> = vec2<f32>(x_4133.x, x_4133.y);
            let x_4136 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4134.x, x_4134.y, x_4136);
            let x_4143 : vec3<f32> = txVec58;
            let x_4145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4143.xy, x_4143.z);
            u_xlat11.x = x_4145;
            let x_4148 : f32 = u_xlat12.w;
            let x_4150 : f32 = u_xlat11.x;
            let x_4152 : f32 = u_xlat85;
            u_xlat84 = ((x_4148 * x_4150) + x_4152);
          }
        }
      } else {
        let x_4156 : vec4<f32> = u_xlat10;
        let x_4157 : vec2<f32> = vec2<f32>(x_4156.x, x_4156.y);
        let x_4159 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4157.x, x_4157.y, x_4159);
        let x_4166 : vec3<f32> = txVec59;
        let x_4168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4166.xy, x_4166.z);
        u_xlat84 = x_4168;
      }
      let x_4169 : i32 = u_xlati81;
      let x_4171 : f32 = x_1025.x_AdditionalShadowParams[x_4169].x;
      u_xlat10.x = (1.0f + -(x_4171));
      let x_4175 : f32 = u_xlat84;
      let x_4176 : i32 = u_xlati81;
      let x_4178 : f32 = x_1025.x_AdditionalShadowParams[x_4176].x;
      let x_4181 : f32 = u_xlat10.x;
      u_xlat84 = ((x_4175 * x_4178) + x_4181);
      let x_4184 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_4184);
      let x_4189 : f32 = u_xlat10.z;
      u_xlatb35 = (x_4189 >= 1.0f);
      let x_4191 : bool = u_xlatb35;
      let x_4193 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_4191 | x_4193);
      let x_4197 : bool = u_xlatb10.x;
      let x_4198 : f32 = u_xlat84;
      u_xlat84 = select(x_4198, 1.0f, x_4197);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4201 : f32 = u_xlat84;
    u_xlat10.x = (-(x_4201) + 1.0f);
    let x_4206 : f32 = u_xlat3.x;
    let x_4208 : f32 = u_xlat10.x;
    let x_4210 : f32 = u_xlat84;
    u_xlat84 = ((x_4206 * x_4208) + x_4210);
    let x_4212 : f32 = u_xlat82;
    let x_4213 : f32 = u_xlat84;
    u_xlat82 = (x_4212 * x_4213);
    let x_4215 : vec4<f32> = u_xlat1;
    let x_4217 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4215.x, x_4215.y, x_4215.z), vec3<f32>(x_4217.x, x_4217.y, x_4217.z));
    let x_4220 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4220, 0.0f, 1.0f);
    let x_4222 : f32 = u_xlat82;
    let x_4223 : f32 = u_xlat84;
    u_xlat82 = (x_4222 * x_4223);
    let x_4225 : f32 = u_xlat82;
    let x_4227 : i32 = u_xlati81;
    let x_4229 : vec4<f32> = x_2723.x_AdditionalLightsColor[x_4227];
    let x_4231 : vec3<f32> = (vec3<f32>(x_4225, x_4225, x_4225) * vec3<f32>(x_4229.x, x_4229.y, x_4229.z));
    let x_4232 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4231.x, x_4231.y, x_4231.z, x_4232.w);
    let x_4234 : vec4<f32> = u_xlat8;
    let x_4236 : f32 = u_xlat83;
    let x_4239 : vec4<f32> = u_xlat6;
    let x_4241 : vec3<f32> = ((vec3<f32>(x_4234.x, x_4234.y, x_4234.z) * vec3<f32>(x_4236, x_4236, x_4236)) + vec3<f32>(x_4239.x, x_4239.y, x_4239.z));
    let x_4242 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4241.x, x_4241.y, x_4241.z, x_4242.w);
    let x_4244 : vec4<f32> = u_xlat8;
    let x_4246 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4244.x, x_4244.y, x_4244.z), vec3<f32>(x_4246.x, x_4246.y, x_4246.z));
    let x_4249 : f32 = u_xlat81;
    u_xlat81 = max(x_4249, 1.17549435e-38f);
    let x_4251 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4251);
    let x_4253 : f32 = u_xlat81;
    let x_4255 : vec4<f32> = u_xlat8;
    let x_4257 : vec3<f32> = (vec3<f32>(x_4253, x_4253, x_4253) * vec3<f32>(x_4255.x, x_4255.y, x_4255.z));
    let x_4258 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4257.x, x_4257.y, x_4257.z, x_4258.w);
    let x_4260 : vec4<f32> = u_xlat1;
    let x_4262 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4260.x, x_4260.y, x_4260.z), vec3<f32>(x_4262.x, x_4262.y, x_4262.z));
    let x_4265 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4265, 0.0f, 1.0f);
    let x_4267 : vec4<f32> = u_xlat9;
    let x_4269 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_4267.x, x_4267.y, x_4267.z), vec3<f32>(x_4269.x, x_4269.y, x_4269.z));
    let x_4272 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4272, 0.0f, 1.0f);
    let x_4274 : f32 = u_xlat81;
    let x_4275 : f32 = u_xlat81;
    u_xlat81 = (x_4274 * x_4275);
    let x_4277 : f32 = u_xlat81;
    let x_4279 : f32 = u_xlat0.x;
    u_xlat81 = ((x_4277 * x_4279) + 1.00001001358032226562f);
    let x_4282 : f32 = u_xlat82;
    let x_4283 : f32 = u_xlat82;
    u_xlat82 = (x_4282 * x_4283);
    let x_4285 : f32 = u_xlat81;
    let x_4286 : f32 = u_xlat81;
    u_xlat81 = (x_4285 * x_4286);
    let x_4288 : f32 = u_xlat82;
    u_xlat82 = max(x_4288, 0.10000000149011611938f);
    let x_4290 : f32 = u_xlat81;
    let x_4291 : f32 = u_xlat82;
    u_xlat81 = (x_4290 * x_4291);
    let x_4293 : f32 = u_xlat79;
    let x_4294 : f32 = u_xlat81;
    u_xlat81 = (x_4293 * x_4294);
    let x_4296 : f32 = u_xlat77;
    let x_4297 : f32 = u_xlat81;
    u_xlat81 = (x_4296 / x_4297);
    let x_4299 : vec4<f32> = u_xlat4;
    let x_4301 : f32 = u_xlat81;
    let x_4304 : vec3<f32> = u_xlat28;
    let x_4305 : vec3<f32> = ((vec3<f32>(x_4299.x, x_4299.y, x_4299.z) * vec3<f32>(x_4301, x_4301, x_4301)) + x_4304);
    let x_4306 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4305.x, x_4305.y, x_4305.z, x_4306.w);
    let x_4308 : vec4<f32> = u_xlat8;
    let x_4310 : vec4<f32> = u_xlat10;
    let x_4313 : vec4<f32> = u_xlat7;
    let x_4315 : vec3<f32> = ((vec3<f32>(x_4308.x, x_4308.y, x_4308.z) * vec3<f32>(x_4310.x, x_4310.y, x_4310.z)) + vec3<f32>(x_4313.x, x_4313.y, x_4313.z));
    let x_4316 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4315.x, x_4315.y, x_4315.z, x_4316.w);

    continuing {
      let x_4318 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4318 + bitcast<u32>(1i));
    }
  }
  let x_4320 : vec4<f32> = u_xlat2;
  let x_4322 : f32 = u_xlat25;
  let x_4325 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_4320.x, x_4320.y, x_4320.z) * vec3<f32>(x_4322, x_4322, x_4322)) + vec3<f32>(x_4325.x, x_4325.z, x_4325.w));
  let x_4328 : vec4<f32> = u_xlat7;
  let x_4330 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4328.x, x_4328.y, x_4328.z) + x_4330);
  let x_4332 : f32 = u_xlat75;
  let x_4334 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4332, x_4332, x_4332) * x_4334);
  let x_4336 : f32 = u_xlat76;
  let x_4337 : f32 = u_xlat76;
  u_xlat75 = (x_4336 * -(x_4337));
  let x_4340 : f32 = u_xlat75;
  u_xlat75 = exp2(x_4340);
  let x_4344 : vec3<f32> = u_xlat0;
  let x_4345 : f32 = u_xlat75;
  let x_4347 : vec3<f32> = (x_4344 * vec3<f32>(x_4345, x_4345, x_4345));
  let x_4348 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4347.x, x_4347.y, x_4347.z, x_4348.w);
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


