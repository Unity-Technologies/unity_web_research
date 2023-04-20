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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_58 : x_Terrain;

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

@group(1) @binding(4) var<uniform> x_868 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu76 : u32;

var<private> u_xlati76 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb27 : bool;

var<private> u_xlatb52 : bool;

var<private> u_xlat27 : f32;

var<private> u_xlat52 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2562 : UnityPerDraw;

var<private> u_xlatu50 : u32;

var<private> u_xlatu80 : u32;

var<private> u_xlati81 : i32;

var<private> u_xlati80 : i32;

@group(1) @binding(1) var<uniform> x_2839 : AdditionalLights;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(14) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu79 : u32;

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
  var x_2435 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2976 : f32;
  var x_2986 : f32;
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
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = x_58.x_MaskMapRemapScale0;
  let x_69 : vec4<f32> = x_58.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_62.x, x_62.y, x_62.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_69.x, x_69.y, x_69.w));
  let x_76 : vec4<f32> = x_58.x_MaskMapRemapScale1;
  let x_81 : vec4<f32> = x_58.x_MaskMapRemapOffset1;
  let x_83 : vec3<f32> = ((vec3<f32>(x_76.x, x_76.y, x_76.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_81.x, x_81.y, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_89 : vec4<f32> = x_58.x_MaskMapRemapScale2;
  let x_94 : vec4<f32> = x_58.x_MaskMapRemapOffset2;
  let x_96 : vec3<f32> = ((vec3<f32>(x_89.x, x_89.y, x_89.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_94.x, x_94.y, x_94.w));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_102 : vec4<f32> = x_58.x_MaskMapRemapScale3;
  let x_107 : vec4<f32> = x_58.x_MaskMapRemapOffset3;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.w, x_102.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_107.x, x_107.w, x_107.y));
  let x_110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_109.z);
  let x_115 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_119 : vec2<f32> = (vec2<f32>(x_115.z, x_115.w) + vec2<f32>(-1.0f, -1.0f));
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_122 : vec4<f32> = vs_TEXCOORD0;
  let x_124 : vec4<f32> = u_xlat4;
  let x_128 : vec2<f32> = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(0.5f, 0.5f));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat4;
  let x_134 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_136 : vec2<f32> = (vec2<f32>(x_131.x, x_131.y) * vec2<f32>(x_134.x, x_134.y));
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_136.x, x_136.y, x_137.z, x_137.w);
  let x_144 : vec4<f32> = u_xlat4;
  let x_147 : f32 = x_28.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat4 = x_148;
  let x_150 : vec4<f32> = u_xlat4;
  u_xlat75 = dot(x_150, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_161 : vec4<f32> = vs_TEXCOORD1;
  let x_164 : f32 = x_28.x_GlobalMipBias.x;
  let x_165 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_161.x, x_161.y), x_164);
  u_xlat5 = x_165;
  let x_171 : vec4<f32> = vs_TEXCOORD1;
  let x_174 : f32 = x_28.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_171.z, x_171.w), x_174);
  u_xlat6 = x_175;
  let x_182 : vec4<f32> = vs_TEXCOORD2;
  let x_185 : f32 = x_28.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_182.x, x_182.y), x_185);
  u_xlat7 = x_186;
  let x_192 : vec4<f32> = vs_TEXCOORD2;
  let x_195 : f32 = x_28.x_GlobalMipBias.x;
  let x_196 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_192.z, x_192.w), x_195);
  u_xlat8 = x_196;
  let x_200 : f32 = u_xlat5.w;
  u_xlat9.x = x_200;
  let x_203 : f32 = u_xlat6.w;
  u_xlat9.y = x_203;
  let x_207 : f32 = u_xlat7.w;
  u_xlat9.z = x_207;
  let x_211 : f32 = u_xlat8.w;
  u_xlat9.w = x_211;
  let x_214 : vec4<f32> = u_xlat9;
  let x_217 : f32 = x_58.x_Smoothness0;
  let x_220 : f32 = x_58.x_Smoothness1;
  let x_223 : f32 = x_58.x_Smoothness2;
  let x_226 : f32 = x_58.x_Smoothness3;
  u_xlat10 = (x_214 * vec4<f32>(x_217, x_220, x_223, x_226));
  let x_233 : f32 = x_58.x_NumLayersCount;
  u_xlatb76 = (4.0f >= x_233);
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_236) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_239 : vec4<f32> = u_xlat9;
  let x_240 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_239 + -(x_240));
  let x_243 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_243 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_247 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_247, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_251 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_251 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_255);
  let x_258 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_258 + -(x_259));
  let x_264 : f32 = u_xlat12.x;
  let x_267 : f32 = x_58.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.y;
  let x_274 : f32 = x_58.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_271 * x_274);
  let x_278 : f32 = u_xlat12.z;
  let x_281 : f32 = x_58.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_278 * x_281);
  let x_285 : f32 = u_xlat12.w;
  let x_288 : f32 = x_58.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_285 * x_288);
  let x_291 : vec4<f32> = u_xlat11;
  let x_292 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_291 + x_292);
  let x_294 : bool = u_xlatb76;
  let x_295 : vec4<f32> = u_xlat11;
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_296, x_295, vec4<bool>(x_294, x_294, x_294, x_294));
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat76 = dot(x_301, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_305 : f32 = u_xlat76;
  u_xlatb77 = (0.00499999988824129105f >= x_305);
  let x_307 : bool = u_xlatb77;
  if (((select(0i, 1i, x_307) * -1i) != 0i)) {
    discard;
  }
  let x_314 : f32 = u_xlat76;
  u_xlat76 = (x_314 + 0.00006103515625f);
  let x_317 : vec4<f32> = u_xlat4;
  let x_318 : f32 = u_xlat76;
  u_xlat4 = (x_317 / vec4<f32>(x_318, x_318, x_318, x_318));
  let x_321 : vec4<f32> = u_xlat4;
  let x_324 : vec4<f32> = x_58.x_DiffuseRemapScale0;
  let x_326 : vec3<f32> = (vec3<f32>(x_321.x, x_321.x, x_321.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_58.x_DiffuseRemapScale1;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec4<f32> = u_xlat12;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec4<f32> = u_xlat11;
  let x_349 : vec4<f32> = u_xlat6;
  let x_351 : vec3<f32> = ((vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_346.x, x_346.y, x_346.z)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat4;
  let x_357 : vec4<f32> = x_58.x_DiffuseRemapScale2;
  let x_359 : vec3<f32> = (vec3<f32>(x_354.z, x_354.z, x_354.z) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec4<f32> = u_xlat6;
  let x_367 : vec4<f32> = u_xlat5;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec4<f32> = u_xlat4;
  let x_375 : vec4<f32> = x_58.x_DiffuseRemapScale3;
  let x_377 : vec3<f32> = (vec3<f32>(x_372.w, x_372.w, x_372.w) * vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat8;
  let x_382 : vec4<f32> = u_xlat6;
  let x_385 : vec4<f32> = u_xlat5;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382.x, x_382.y, x_382.z)) + vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_395 : vec4<f32> = vs_TEXCOORD1;
  let x_398 : f32 = x_28.x_GlobalMipBias.x;
  let x_399 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_395.x, x_395.y), x_398);
  let x_400 : vec3<f32> = vec3<f32>(x_399.x, x_399.y, x_399.w);
  let x_401 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : f32 = u_xlat6.x;
  let x_406 : f32 = u_xlat6.z;
  u_xlat6.x = (x_404 * x_406);
  let x_409 : vec4<f32> = u_xlat6;
  let x_414 : vec2<f32> = ((vec2<f32>(x_409.x, x_409.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_417.x, x_417.y), vec2<f32>(x_419.x, x_419.y));
  let x_422 : f32 = u_xlat76;
  u_xlat76 = min(x_422, 1.0f);
  let x_424 : f32 = u_xlat76;
  u_xlat76 = (-(x_424) + 1.0f);
  let x_427 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_427);
  let x_429 : f32 = u_xlat76;
  u_xlat7.z = max(x_429, 0.0000000000000001f);
  let x_433 : vec4<f32> = u_xlat6;
  let x_436 : f32 = x_58.x_NormalScale0;
  let x_438 : vec2<f32> = (vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_436, x_436));
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_445 : vec4<f32> = vs_TEXCOORD1;
  let x_448 : f32 = x_28.x_GlobalMipBias.x;
  let x_449 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_445.z, x_445.w), x_448);
  let x_450 : vec3<f32> = vec3<f32>(x_449.x, x_449.y, x_449.w);
  let x_451 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : f32 = u_xlat6.x;
  let x_456 : f32 = u_xlat6.z;
  u_xlat6.x = (x_454 * x_456);
  let x_459 : vec4<f32> = u_xlat6;
  let x_462 : vec2<f32> = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_463 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat6;
  let x_467 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec2<f32>(x_465.x, x_465.y), vec2<f32>(x_467.x, x_467.y));
  let x_470 : f32 = u_xlat76;
  u_xlat76 = min(x_470, 1.0f);
  let x_472 : f32 = u_xlat76;
  u_xlat76 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_475);
  let x_477 : f32 = u_xlat76;
  u_xlat8.z = max(x_477, 0.0000000000000001f);
  let x_480 : vec4<f32> = u_xlat6;
  let x_483 : f32 = x_58.x_NormalScale1;
  let x_485 : f32 = x_58.x_NormalScale1;
  let x_486 : vec2<f32> = vec2<f32>(x_483, x_485);
  let x_490 : vec2<f32> = (vec2<f32>(x_480.x, x_480.y) * vec2<f32>(x_486.x, x_486.y));
  let x_491 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat4;
  let x_495 : vec4<f32> = u_xlat8;
  let x_497 : vec3<f32> = (vec3<f32>(x_493.y, x_493.y, x_493.y) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  let x_505 : vec4<f32> = u_xlat6;
  let x_507 : vec3<f32> = ((vec3<f32>(x_500.x, x_500.x, x_500.x) * vec3<f32>(x_502.x, x_502.y, x_502.z)) + vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_514 : vec4<f32> = vs_TEXCOORD2;
  let x_517 : f32 = x_28.x_GlobalMipBias.x;
  let x_518 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_514.x, x_514.y), x_517);
  let x_519 : vec3<f32> = vec3<f32>(x_518.x, x_518.y, x_518.w);
  let x_520 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = u_xlat7.x;
  let x_525 : f32 = u_xlat7.z;
  u_xlat7.x = (x_523 * x_525);
  let x_528 : vec4<f32> = u_xlat7;
  let x_531 : vec2<f32> = ((vec2<f32>(x_528.x, x_528.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_532 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat7;
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_534.x, x_534.y), vec2<f32>(x_536.x, x_536.y));
  let x_539 : f32 = u_xlat76;
  u_xlat76 = min(x_539, 1.0f);
  let x_541 : f32 = u_xlat76;
  u_xlat76 = (-(x_541) + 1.0f);
  let x_544 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_544);
  let x_546 : f32 = u_xlat76;
  u_xlat8.z = max(x_546, 0.0000000000000001f);
  let x_549 : vec4<f32> = u_xlat7;
  let x_553 : f32 = x_58.x_NormalScale2;
  let x_555 : f32 = x_58.x_NormalScale2;
  let x_556 : vec2<f32> = vec2<f32>(x_553, x_555);
  let x_560 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) * vec2<f32>(x_556.x, x_556.y));
  let x_561 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec4<f32> = u_xlat8;
  let x_568 : vec4<f32> = u_xlat6;
  let x_570 : vec3<f32> = ((vec3<f32>(x_563.z, x_563.z, x_563.z) * vec3<f32>(x_565.x, x_565.y, x_565.z)) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_577 : vec4<f32> = vs_TEXCOORD2;
  let x_580 : f32 = x_28.x_GlobalMipBias.x;
  let x_581 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_577.z, x_577.w), x_580);
  let x_582 : vec3<f32> = vec3<f32>(x_581.x, x_581.y, x_581.w);
  let x_583 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_586 : f32 = u_xlat7.x;
  let x_588 : f32 = u_xlat7.z;
  u_xlat7.x = (x_586 * x_588);
  let x_591 : vec4<f32> = u_xlat7;
  let x_594 : vec2<f32> = ((vec2<f32>(x_591.x, x_591.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_595 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat7;
  let x_599 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec2<f32>(x_597.x, x_597.y), vec2<f32>(x_599.x, x_599.y));
  let x_602 : f32 = u_xlat76;
  u_xlat76 = min(x_602, 1.0f);
  let x_604 : f32 = u_xlat76;
  u_xlat76 = (-(x_604) + 1.0f);
  let x_607 : f32 = u_xlat76;
  u_xlat76 = sqrt(x_607);
  let x_609 : f32 = u_xlat76;
  u_xlat8.z = max(x_609, 0.0000000000000001f);
  let x_612 : vec4<f32> = u_xlat7;
  let x_616 : f32 = x_58.x_NormalScale3;
  let x_618 : f32 = x_58.x_NormalScale3;
  let x_619 : vec2<f32> = vec2<f32>(x_616, x_618);
  let x_623 : vec2<f32> = (vec2<f32>(x_612.x, x_612.y) * vec2<f32>(x_619.x, x_619.y));
  let x_624 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat4;
  let x_628 : vec4<f32> = u_xlat8;
  let x_631 : vec4<f32> = u_xlat6;
  let x_633 : vec3<f32> = ((vec3<f32>(x_626.w, x_626.w, x_626.w) * vec3<f32>(x_628.x, x_628.y, x_628.z)) + vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : f32 = u_xlat6.z;
  u_xlat6.w = (x_637 + 0.00000999999974737875f);
  let x_641 : vec4<f32> = u_xlat6;
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat76 = dot(vec3<f32>(x_641.x, x_641.y, x_641.w), vec3<f32>(x_643.x, x_643.y, x_643.w));
  let x_646 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_646);
  let x_648 : f32 = u_xlat76;
  let x_650 : vec4<f32> = u_xlat6;
  let x_652 : vec3<f32> = (vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.y, x_650.w));
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_656 : f32 = x_58.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_656;
  let x_659 : f32 = x_58.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_659;
  let x_662 : f32 = x_58.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_662;
  let x_665 : f32 = x_58.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_665;
  let x_668 : f32 = x_58.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_668;
  let x_671 : f32 = x_58.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_671;
  let x_674 : f32 = x_58.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_674;
  let x_677 : f32 = x_58.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_677;
  let x_679 : vec4<f32> = u_xlat7;
  let x_680 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_679 + x_680);
  let x_683 : f32 = u_xlat0.z;
  u_xlat8.x = x_683;
  let x_686 : f32 = u_xlat1.z;
  u_xlat8.y = x_686;
  let x_689 : f32 = u_xlat2.z;
  u_xlat8.z = x_689;
  let x_692 : f32 = u_xlat3.y;
  u_xlat8.w = x_692;
  let x_694 : vec4<f32> = u_xlat9;
  let x_697 : f32 = x_58.x_Smoothness0;
  let x_699 : f32 = x_58.x_Smoothness1;
  let x_701 : f32 = x_58.x_Smoothness2;
  let x_703 : f32 = x_58.x_Smoothness3;
  let x_706 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_694) * vec4<f32>(x_697, x_699, x_701, x_703)) + x_706);
  let x_710 : f32 = x_58.x_LayerHasMask0;
  let x_713 : f32 = x_58.x_LayerHasMask1;
  let x_716 : f32 = x_58.x_LayerHasMask2;
  let x_719 : f32 = x_58.x_LayerHasMask3;
  let x_721 : vec4<f32> = u_xlat8;
  let x_723 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_710, x_713, x_716, x_719) * x_721) + x_723);
  let x_726 : vec4<f32> = u_xlat4;
  let x_727 : vec4<f32> = u_xlat8;
  u_xlat50 = dot(x_726, x_727);
  let x_730 : f32 = u_xlat0.x;
  u_xlat8.x = x_730;
  let x_733 : f32 = u_xlat1.x;
  u_xlat8.y = x_733;
  let x_736 : f32 = u_xlat2.x;
  u_xlat8.z = x_736;
  let x_739 : f32 = u_xlat3.x;
  u_xlat8.w = x_739;
  let x_741 : vec4<f32> = u_xlat8;
  let x_744 : f32 = x_58.x_Metallic0;
  let x_747 : f32 = x_58.x_Metallic1;
  let x_750 : f32 = x_58.x_Metallic2;
  let x_753 : f32 = x_58.x_Metallic3;
  u_xlat8 = (x_741 + -(vec4<f32>(x_744, x_747, x_750, x_753)));
  let x_758 : f32 = x_58.x_LayerHasMask0;
  let x_760 : f32 = x_58.x_LayerHasMask1;
  let x_762 : f32 = x_58.x_LayerHasMask2;
  let x_764 : f32 = x_58.x_LayerHasMask3;
  let x_766 : vec4<f32> = u_xlat8;
  let x_769 : f32 = x_58.x_Metallic0;
  let x_771 : f32 = x_58.x_Metallic1;
  let x_773 : f32 = x_58.x_Metallic2;
  let x_775 : f32 = x_58.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_758, x_760, x_762, x_764) * x_766) + vec4<f32>(x_769, x_771, x_773, x_775));
  let x_778 : vec4<f32> = u_xlat4;
  let x_779 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_778, x_779);
  let x_783 : f32 = u_xlat0.y;
  u_xlat3.x = x_783;
  let x_786 : f32 = u_xlat1.y;
  u_xlat3.y = x_786;
  let x_789 : f32 = u_xlat2.y;
  u_xlat3.z = x_789;
  let x_791 : vec4<f32> = u_xlat7;
  let x_793 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_791) + x_793);
  let x_796 : f32 = x_58.x_LayerHasMask0;
  let x_798 : f32 = x_58.x_LayerHasMask1;
  let x_800 : f32 = x_58.x_LayerHasMask2;
  let x_802 : f32 = x_58.x_LayerHasMask3;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_796, x_798, x_800, x_802) * x_804) + x_806);
  let x_809 : vec4<f32> = u_xlat4;
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(x_809, x_810);
  let x_812 : vec4<f32> = u_xlat6;
  let x_815 : vec4<f32> = vs_TEXCOORD5;
  let x_817 : vec3<f32> = (vec3<f32>(x_812.y, x_812.y, x_812.y) * vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : vec4<f32> = vs_TEXCOORD4;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.x, x_820.x) * -(vec3<f32>(x_823.x, x_823.y, x_823.z))) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat6;
  let x_835 : vec4<f32> = vs_TEXCOORD3;
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec3<f32> = ((vec3<f32>(x_832.z, x_832.z, x_832.z) * vec3<f32>(x_835.x, x_835.y, x_835.z)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat1;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat76 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_848);
  let x_850 : f32 = u_xlat76;
  let x_852 : vec4<f32> = u_xlat1;
  let x_854 : vec3<f32> = (vec3<f32>(x_850, x_850, x_850) * vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_859 : vec3<f32> = vs_TEXCOORD7;
  let x_870 : vec4<f32> = x_868.x_CascadeShadowSplitSpheres0;
  let x_873 : vec3<f32> = (x_859 + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
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
  u_xlat76 = dot(x_972, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_976 : f32 = u_xlat76;
  u_xlat76 = (-(x_976) + 4.0f);
  let x_981 : f32 = u_xlat76;
  u_xlatu76 = u32(x_981);
  let x_985 : u32 = u_xlatu76;
  u_xlati76 = (bitcast<i32>(x_985) << bitcast<u32>(2i));
  let x_988 : vec3<f32> = vs_TEXCOORD7;
  let x_990 : i32 = u_xlati76;
  let x_993 : i32 = u_xlati76;
  let x_997 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_990 + 1i) / 4i)][((x_993 + 1i) % 4i)];
  let x_999 : vec3<f32> = (vec3<f32>(x_988.y, x_988.y, x_988.y) * vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : i32 = u_xlati76;
  let x_1004 : i32 = u_xlati76;
  let x_1007 : vec4<f32> = x_868.x_MainLightWorldToShadow[(x_1002 / 4i)][(x_1004 % 4i)];
  let x_1009 : vec3<f32> = vs_TEXCOORD7;
  let x_1012 : vec4<f32> = u_xlat2;
  let x_1014 : vec3<f32> = ((vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * vec3<f32>(x_1009.x, x_1009.x, x_1009.x)) + vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : i32 = u_xlati76;
  let x_1020 : i32 = u_xlati76;
  let x_1024 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
  let x_1026 : vec3<f32> = vs_TEXCOORD7;
  let x_1029 : vec4<f32> = u_xlat2;
  let x_1031 : vec3<f32> = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.z, x_1026.z, x_1026.z)) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1034 : vec4<f32> = u_xlat2;
  let x_1036 : i32 = u_xlati76;
  let x_1039 : i32 = u_xlati76;
  let x_1043 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1036 + 3i) / 4i)][((x_1039 + 3i) % 4i)];
  let x_1045 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) + vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1046 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1053 : vec4<f32> = vs_TEXCOORD0;
  let x_1056 : f32 = x_28.x_GlobalMipBias.x;
  let x_1057 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1053.z, x_1053.w), x_1056);
  u_xlat3 = x_1057;
  let x_1062 : vec4<f32> = vs_TEXCOORD0;
  let x_1065 : f32 = x_28.x_GlobalMipBias.x;
  let x_1066 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1062.z, x_1062.w), x_1065);
  let x_1067 : vec3<f32> = vec3<f32>(x_1066.x, x_1066.y, x_1066.z);
  let x_1068 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1070 : vec4<f32> = u_xlat3;
  let x_1074 : vec3<f32> = (vec3<f32>(x_1070.x, x_1070.y, x_1070.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1075 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1077 : vec4<f32> = u_xlat1;
  let x_1079 : vec4<f32> = u_xlat3;
  u_xlat76 = dot(vec3<f32>(x_1077.x, x_1077.y, x_1077.z), vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : f32 = u_xlat76;
  u_xlat76 = (x_1082 + 0.5f);
  let x_1084 : f32 = u_xlat76;
  let x_1086 : vec4<f32> = u_xlat4;
  let x_1088 : vec3<f32> = (vec3<f32>(x_1084, x_1084, x_1084) * vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1092 : f32 = u_xlat3.w;
  u_xlat76 = max(x_1092, 0.00009999999747378752f);
  let x_1095 : vec4<f32> = u_xlat3;
  let x_1097 : f32 = u_xlat76;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1095.x, x_1095.y, x_1095.z) / vec3<f32>(x_1097, x_1097, x_1097));
  let x_1100 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1103 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_1103) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1109 : f32 = u_xlat50;
  let x_1110 : f32 = u_xlat76;
  u_xlat77 = (x_1109 + -(x_1110));
  let x_1113 : f32 = u_xlat76;
  let x_1115 : vec4<f32> = u_xlat5;
  let x_1117 : vec3<f32> = (vec3<f32>(x_1113, x_1113, x_1113) * vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : vec4<f32> = u_xlat5;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1125 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1127 : vec3<f32> = u_xlat0;
  let x_1129 : vec4<f32> = u_xlat5;
  let x_1134 : vec3<f32> = ((vec3<f32>(x_1127.x, x_1127.x, x_1127.x) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1135 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : f32 = u_xlat50;
  u_xlat0.x = (-(x_1137) + 1.0f);
  let x_1142 : f32 = u_xlat0.x;
  let x_1144 : f32 = u_xlat0.x;
  u_xlat50 = (x_1142 * x_1144);
  let x_1146 : f32 = u_xlat50;
  u_xlat50 = max(x_1146, 0.0078125f);
  let x_1149 : f32 = u_xlat50;
  let x_1150 : f32 = u_xlat50;
  u_xlat76 = (x_1149 * x_1150);
  let x_1152 : f32 = u_xlat77;
  u_xlat77 = (x_1152 + 1.0f);
  let x_1154 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1154, 0.0f, 1.0f);
  let x_1157 : f32 = u_xlat50;
  u_xlat78 = ((x_1157 * 4.0f) + 2.0f);
  let x_1160 : f32 = u_xlat25;
  u_xlat25 = min(x_1160, 1.0f);
  let x_1164 : f32 = x_868.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_1164);
  let x_1166 : bool = u_xlatb79;
  if (x_1166) {
    let x_1170 : f32 = x_868.x_MainLightShadowParams.y;
    u_xlatb79 = (x_1170 == 1.0f);
    let x_1172 : bool = u_xlatb79;
    if (x_1172) {
      let x_1175 : vec4<f32> = u_xlat2;
      let x_1178 : vec4<f32> = x_868.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y) + x_1178);
      let x_1182 : vec4<f32> = u_xlat6;
      let x_1183 : vec2<f32> = vec2<f32>(x_1182.x, x_1182.y);
      let x_1185 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1183.x, x_1183.y, x_1185);
      let x_1197 : vec3<f32> = txVec0;
      let x_1199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1197.xy, x_1197.z);
      u_xlat7.x = x_1199;
      let x_1202 : vec4<f32> = u_xlat6;
      let x_1203 : vec2<f32> = vec2<f32>(x_1202.z, x_1202.w);
      let x_1205 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
      let x_1212 : vec3<f32> = txVec1;
      let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
      u_xlat7.y = x_1214;
      let x_1216 : vec4<f32> = u_xlat2;
      let x_1219 : vec4<f32> = x_868.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1216.x, x_1216.y, x_1216.x, x_1216.y) + x_1219);
      let x_1222 : vec4<f32> = u_xlat6;
      let x_1223 : vec2<f32> = vec2<f32>(x_1222.x, x_1222.y);
      let x_1225 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
      let x_1232 : vec3<f32> = txVec2;
      let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1232.xy, x_1232.z);
      u_xlat7.z = x_1234;
      let x_1237 : vec4<f32> = u_xlat6;
      let x_1238 : vec2<f32> = vec2<f32>(x_1237.z, x_1237.w);
      let x_1240 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
      let x_1247 : vec3<f32> = txVec3;
      let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1247.xy, x_1247.z);
      u_xlat7.w = x_1249;
      let x_1252 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_1252, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1259 : f32 = x_868.x_MainLightShadowParams.y;
      u_xlatb80 = (x_1259 == 2.0f);
      let x_1261 : bool = u_xlatb80;
      if (x_1261) {
        let x_1264 : vec4<f32> = u_xlat2;
        let x_1267 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1270 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1267.z, x_1267.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1271 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
        let x_1273 : vec4<f32> = u_xlat6;
        let x_1275 : vec2<f32> = floor(vec2<f32>(x_1273.x, x_1273.y));
        let x_1276 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
        let x_1280 : vec4<f32> = u_xlat2;
        let x_1283 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1283.z, x_1283.w)) + -(vec2<f32>(x_1286.x, x_1286.y)));
        let x_1290 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1290.x, x_1290.x, x_1290.y, x_1290.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1294 : vec4<f32> = u_xlat7;
        let x_1296 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1294.x, x_1294.x, x_1294.z, x_1294.z) * vec4<f32>(x_1296.x, x_1296.x, x_1296.z, x_1296.z));
        let x_1299 : vec4<f32> = u_xlat8;
        let x_1303 : vec2<f32> = (vec2<f32>(x_1299.y, x_1299.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1304 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1303.x, x_1304.y, x_1303.y, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat8;
        let x_1309 : vec2<f32> = u_xlat56;
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1306.x, x_1306.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1309));
        let x_1312 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1315 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_1315) + vec2<f32>(1.0f, 1.0f));
        let x_1319 : vec2<f32> = u_xlat56;
        let x_1321 : vec2<f32> = min(x_1319, vec2<f32>(0.0f, 0.0f));
        let x_1322 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1327 : vec4<f32> = u_xlat9;
        let x_1330 : vec2<f32> = u_xlat58;
        let x_1331 : vec2<f32> = ((-(vec2<f32>(x_1324.x, x_1324.y)) * vec2<f32>(x_1327.x, x_1327.y)) + x_1330);
        let x_1332 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1331.x, x_1331.y, x_1332.z, x_1332.w);
        let x_1334 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_1334, vec2<f32>(0.0f, 0.0f));
        let x_1336 : vec2<f32> = u_xlat56;
        let x_1338 : vec2<f32> = u_xlat56;
        let x_1340 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_1336) * x_1338) + vec2<f32>(x_1340.y, x_1340.w));
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1345 : vec2<f32> = (vec2<f32>(x_1343.x, x_1343.y) + vec2<f32>(1.0f, 1.0f));
        let x_1346 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
        let x_1348 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_1348 + vec2<f32>(1.0f, 1.0f));
        let x_1350 : vec4<f32> = u_xlat8;
        let x_1354 : vec2<f32> = (vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1355 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1357 : vec2<f32> = u_xlat58;
        let x_1358 : vec2<f32> = (x_1357 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1359 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1358.x, x_1358.y, x_1359.z, x_1359.w);
        let x_1361 : vec4<f32> = u_xlat9;
        let x_1363 : vec2<f32> = (vec2<f32>(x_1361.x, x_1361.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1364 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        let x_1366 : vec2<f32> = u_xlat56;
        let x_1367 : vec2<f32> = (x_1366 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1368 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
        let x_1370 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1370.y, x_1370.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1374 : f32 = u_xlat9.x;
        u_xlat10.z = x_1374;
        let x_1377 : f32 = u_xlat56.x;
        u_xlat10.w = x_1377;
        let x_1380 : f32 = u_xlat11.x;
        u_xlat8.z = x_1380;
        let x_1383 : f32 = u_xlat7.x;
        u_xlat8.w = x_1383;
        let x_1385 : vec4<f32> = u_xlat8;
        let x_1387 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1385.z, x_1385.w, x_1385.x, x_1385.z) + vec4<f32>(x_1387.z, x_1387.w, x_1387.x, x_1387.z));
        let x_1391 : f32 = u_xlat10.y;
        u_xlat9.z = x_1391;
        let x_1394 : f32 = u_xlat56.y;
        u_xlat9.w = x_1394;
        let x_1397 : f32 = u_xlat8.y;
        u_xlat11.z = x_1397;
        let x_1400 : f32 = u_xlat7.z;
        u_xlat11.w = x_1400;
        let x_1402 : vec4<f32> = u_xlat9;
        let x_1404 : vec4<f32> = u_xlat11;
        let x_1406 : vec3<f32> = (vec3<f32>(x_1402.z, x_1402.y, x_1402.w) + vec3<f32>(x_1404.z, x_1404.y, x_1404.w));
        let x_1407 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
        let x_1409 : vec4<f32> = u_xlat8;
        let x_1411 : vec4<f32> = u_xlat12;
        let x_1413 : vec3<f32> = (vec3<f32>(x_1409.x, x_1409.z, x_1409.w) / vec3<f32>(x_1411.z, x_1411.w, x_1411.y));
        let x_1414 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
        let x_1416 : vec4<f32> = u_xlat8;
        let x_1421 : vec3<f32> = (vec3<f32>(x_1416.x, x_1416.y, x_1416.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1422 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1422.w);
        let x_1424 : vec4<f32> = u_xlat11;
        let x_1426 : vec4<f32> = u_xlat7;
        let x_1428 : vec3<f32> = (vec3<f32>(x_1424.z, x_1424.y, x_1424.w) / vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
        let x_1429 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
        let x_1431 : vec4<f32> = u_xlat9;
        let x_1433 : vec3<f32> = (vec3<f32>(x_1431.x, x_1431.y, x_1431.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1434 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
        let x_1436 : vec4<f32> = u_xlat8;
        let x_1439 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1441 : vec3<f32> = (vec3<f32>(x_1436.y, x_1436.x, x_1436.z) * vec3<f32>(x_1439.x, x_1439.x, x_1439.x));
        let x_1442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat9;
        let x_1447 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1449 : vec3<f32> = (vec3<f32>(x_1444.x, x_1444.y, x_1444.z) * vec3<f32>(x_1447.y, x_1447.y, x_1447.y));
        let x_1450 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
        let x_1453 : f32 = u_xlat9.x;
        u_xlat8.w = x_1453;
        let x_1455 : vec4<f32> = u_xlat6;
        let x_1458 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1455.x, x_1455.y, x_1455.x, x_1455.y) * vec4<f32>(x_1458.x, x_1458.y, x_1458.x, x_1458.y)) + vec4<f32>(x_1461.y, x_1461.w, x_1461.x, x_1461.w));
        let x_1464 : vec4<f32> = u_xlat6;
        let x_1467 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1470 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(x_1467.x, x_1467.y)) + vec2<f32>(x_1470.z, x_1470.w));
        let x_1474 : f32 = u_xlat8.y;
        u_xlat9.w = x_1474;
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.y, x_1476.z);
        let x_1478 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1478.x, x_1477.x, x_1478.z, x_1477.y);
        let x_1480 : vec4<f32> = u_xlat6;
        let x_1483 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1486 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1480.x, x_1480.y, x_1480.x, x_1480.y) * vec4<f32>(x_1483.x, x_1483.y, x_1483.x, x_1483.y)) + vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1486.y));
        let x_1489 : vec4<f32> = u_xlat6;
        let x_1492 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1495 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y) * vec4<f32>(x_1492.x, x_1492.y, x_1492.x, x_1492.y)) + vec4<f32>(x_1495.w, x_1495.y, x_1495.w, x_1495.z));
        let x_1498 : vec4<f32> = u_xlat6;
        let x_1501 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1504 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.y) * vec4<f32>(x_1501.x, x_1501.y, x_1501.x, x_1501.y)) + vec4<f32>(x_1504.x, x_1504.w, x_1504.z, x_1504.w));
        let x_1507 : vec4<f32> = u_xlat7;
        let x_1509 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1507.x, x_1507.x, x_1507.x, x_1507.y) * vec4<f32>(x_1509.z, x_1509.w, x_1509.y, x_1509.z));
        let x_1513 : vec4<f32> = u_xlat7;
        let x_1515 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1513.y, x_1513.y, x_1513.z, x_1513.z) * x_1515);
        let x_1519 : f32 = u_xlat7.z;
        let x_1521 : f32 = u_xlat12.y;
        u_xlat80 = (x_1519 * x_1521);
        let x_1524 : vec4<f32> = u_xlat10;
        let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
        let x_1527 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
        let x_1534 : vec3<f32> = txVec4;
        let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1534.xy, x_1534.z);
        u_xlat6.x = x_1536;
        let x_1539 : vec4<f32> = u_xlat10;
        let x_1540 : vec2<f32> = vec2<f32>(x_1539.z, x_1539.w);
        let x_1542 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1540.x, x_1540.y, x_1542);
        let x_1550 : vec3<f32> = txVec5;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1550.xy, x_1550.z);
        u_xlat31 = x_1552;
        let x_1553 : f32 = u_xlat31;
        let x_1555 : f32 = u_xlat13.y;
        u_xlat31 = (x_1553 * x_1555);
        let x_1558 : f32 = u_xlat13.x;
        let x_1560 : f32 = u_xlat6.x;
        let x_1562 : f32 = u_xlat31;
        u_xlat6.x = ((x_1558 * x_1560) + x_1562);
        let x_1566 : vec2<f32> = u_xlat56;
        let x_1568 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec6;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1575.xy, x_1575.z);
        u_xlat31 = x_1577;
        let x_1579 : f32 = u_xlat13.z;
        let x_1580 : f32 = u_xlat31;
        let x_1583 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1579 * x_1580) + x_1583);
        let x_1587 : vec4<f32> = u_xlat9;
        let x_1588 : vec2<f32> = vec2<f32>(x_1587.x, x_1587.y);
        let x_1590 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1588.x, x_1588.y, x_1590);
        let x_1597 : vec3<f32> = txVec7;
        let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1597.xy, x_1597.z);
        u_xlat31 = x_1599;
        let x_1601 : f32 = u_xlat13.w;
        let x_1602 : f32 = u_xlat31;
        let x_1605 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1601 * x_1602) + x_1605);
        let x_1609 : vec4<f32> = u_xlat11;
        let x_1610 : vec2<f32> = vec2<f32>(x_1609.x, x_1609.y);
        let x_1612 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1610.x, x_1610.y, x_1612);
        let x_1619 : vec3<f32> = txVec8;
        let x_1621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1619.xy, x_1619.z);
        u_xlat31 = x_1621;
        let x_1623 : f32 = u_xlat14.x;
        let x_1624 : f32 = u_xlat31;
        let x_1627 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1623 * x_1624) + x_1627);
        let x_1631 : vec4<f32> = u_xlat11;
        let x_1632 : vec2<f32> = vec2<f32>(x_1631.z, x_1631.w);
        let x_1634 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1641 : vec3<f32> = txVec9;
        let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1641.xy, x_1641.z);
        u_xlat31 = x_1643;
        let x_1645 : f32 = u_xlat14.y;
        let x_1646 : f32 = u_xlat31;
        let x_1649 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1645 * x_1646) + x_1649);
        let x_1653 : vec4<f32> = u_xlat9;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.z, x_1653.w);
        let x_1656 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec10;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1663.xy, x_1663.z);
        u_xlat31 = x_1665;
        let x_1667 : f32 = u_xlat14.z;
        let x_1668 : f32 = u_xlat31;
        let x_1671 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1667 * x_1668) + x_1671);
        let x_1675 : vec4<f32> = u_xlat8;
        let x_1676 : vec2<f32> = vec2<f32>(x_1675.x, x_1675.y);
        let x_1678 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec11;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1685.xy, x_1685.z);
        u_xlat31 = x_1687;
        let x_1689 : f32 = u_xlat14.w;
        let x_1690 : f32 = u_xlat31;
        let x_1693 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1689 * x_1690) + x_1693);
        let x_1697 : vec4<f32> = u_xlat8;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.z, x_1697.w);
        let x_1700 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec12;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1707.xy, x_1707.z);
        u_xlat31 = x_1709;
        let x_1710 : f32 = u_xlat80;
        let x_1711 : f32 = u_xlat31;
        let x_1714 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1710 * x_1711) + x_1714);
      } else {
        let x_1717 : vec4<f32> = u_xlat2;
        let x_1720 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1723 : vec2<f32> = ((vec2<f32>(x_1717.x, x_1717.y) * vec2<f32>(x_1720.z, x_1720.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1724 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1723.x, x_1723.y, x_1724.z, x_1724.w);
        let x_1726 : vec4<f32> = u_xlat6;
        let x_1728 : vec2<f32> = floor(vec2<f32>(x_1726.x, x_1726.y));
        let x_1729 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
        let x_1731 : vec4<f32> = u_xlat2;
        let x_1734 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1737 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1731.x, x_1731.y) * vec2<f32>(x_1734.z, x_1734.w)) + -(vec2<f32>(x_1737.x, x_1737.y)));
        let x_1741 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1741.x, x_1741.x, x_1741.y, x_1741.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1744 : vec4<f32> = u_xlat7;
        let x_1746 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1744.x, x_1744.x, x_1744.z, x_1744.z) * vec4<f32>(x_1746.x, x_1746.x, x_1746.z, x_1746.z));
        let x_1749 : vec4<f32> = u_xlat8;
        let x_1753 : vec2<f32> = (vec2<f32>(x_1749.y, x_1749.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1754 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1754.x, x_1753.x, x_1754.z, x_1753.y);
        let x_1756 : vec4<f32> = u_xlat8;
        let x_1759 : vec2<f32> = u_xlat56;
        let x_1761 : vec2<f32> = ((vec2<f32>(x_1756.x, x_1756.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1759));
        let x_1762 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1761.x, x_1762.y, x_1761.y, x_1762.w);
        let x_1764 : vec2<f32> = u_xlat56;
        let x_1766 : vec2<f32> = (-(x_1764) + vec2<f32>(1.0f, 1.0f));
        let x_1767 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1766.x, x_1766.y, x_1767.z, x_1767.w);
        let x_1769 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1769, vec2<f32>(0.0f, 0.0f));
        let x_1771 : vec2<f32> = u_xlat58;
        let x_1773 : vec2<f32> = u_xlat58;
        let x_1775 : vec4<f32> = u_xlat8;
        let x_1777 : vec2<f32> = ((-(x_1771) * x_1773) + vec2<f32>(x_1775.x, x_1775.y));
        let x_1778 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1777.x, x_1777.y, x_1778.z, x_1778.w);
        let x_1780 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1780, vec2<f32>(0.0f, 0.0f));
        let x_1783 : vec2<f32> = u_xlat58;
        let x_1785 : vec2<f32> = u_xlat58;
        let x_1787 : vec4<f32> = u_xlat7;
        let x_1789 : vec2<f32> = ((-(x_1783) * x_1785) + vec2<f32>(x_1787.y, x_1787.w));
        let x_1790 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1789.x, x_1790.y, x_1789.y);
        let x_1792 : vec4<f32> = u_xlat8;
        let x_1794 : vec2<f32> = (vec2<f32>(x_1792.x, x_1792.y) + vec2<f32>(2.0f, 2.0f));
        let x_1795 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1794.x, x_1794.y, x_1795.z, x_1795.w);
        let x_1797 : vec3<f32> = u_xlat32;
        let x_1799 : vec2<f32> = (vec2<f32>(x_1797.x, x_1797.z) + vec2<f32>(2.0f, 2.0f));
        let x_1800 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1800.x, x_1799.x, x_1800.z, x_1799.y);
        let x_1803 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1803 * 0.08163200318813323975f);
        let x_1807 : vec4<f32> = u_xlat7;
        let x_1810 : vec3<f32> = (vec3<f32>(x_1807.z, x_1807.x, x_1807.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1811 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
        let x_1813 : vec4<f32> = u_xlat8;
        let x_1816 : vec2<f32> = (vec2<f32>(x_1813.x, x_1813.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1817 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1816.x, x_1816.y, x_1817.z, x_1817.w);
        let x_1820 : f32 = u_xlat11.y;
        u_xlat10.x = x_1820;
        let x_1822 : vec2<f32> = u_xlat56;
        let x_1829 : vec2<f32> = ((vec2<f32>(x_1822.x, x_1822.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1830 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1830.x, x_1829.x, x_1830.z, x_1829.y);
        let x_1832 : vec2<f32> = u_xlat56;
        let x_1836 : vec2<f32> = ((vec2<f32>(x_1832.x, x_1832.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1837 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1836.x, x_1837.y, x_1836.y, x_1837.w);
        let x_1840 : f32 = u_xlat7.x;
        u_xlat8.y = x_1840;
        let x_1843 : f32 = u_xlat9.y;
        u_xlat8.w = x_1843;
        let x_1845 : vec4<f32> = u_xlat8;
        let x_1846 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1845 + x_1846);
        let x_1848 : vec2<f32> = u_xlat56;
        let x_1851 : vec2<f32> = ((vec2<f32>(x_1848.y, x_1848.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1852 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1852.x, x_1851.x, x_1852.z, x_1851.y);
        let x_1854 : vec2<f32> = u_xlat56;
        let x_1857 : vec2<f32> = ((vec2<f32>(x_1854.y, x_1854.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1858 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1857.x, x_1858.y, x_1857.y, x_1858.w);
        let x_1861 : f32 = u_xlat7.y;
        u_xlat9.y = x_1861;
        let x_1863 : vec4<f32> = u_xlat9;
        let x_1864 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1863 + x_1864);
        let x_1866 : vec4<f32> = u_xlat8;
        let x_1867 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1866 / x_1867);
        let x_1869 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1869 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1875 : vec4<f32> = u_xlat9;
        let x_1876 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1875 / x_1876);
        let x_1878 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1878 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1880 : vec4<f32> = u_xlat8;
        let x_1883 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1880.w, x_1880.x, x_1880.y, x_1880.z) * vec4<f32>(x_1883.x, x_1883.x, x_1883.x, x_1883.x));
        let x_1886 : vec4<f32> = u_xlat9;
        let x_1889 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1886.x, x_1886.w, x_1886.y, x_1886.z) * vec4<f32>(x_1889.y, x_1889.y, x_1889.y, x_1889.y));
        let x_1892 : vec4<f32> = u_xlat8;
        let x_1893 : vec3<f32> = vec3<f32>(x_1892.y, x_1892.z, x_1892.w);
        let x_1894 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1893.x, x_1894.y, x_1893.y, x_1893.z);
        let x_1897 : f32 = u_xlat9.x;
        u_xlat11.y = x_1897;
        let x_1899 : vec4<f32> = u_xlat6;
        let x_1902 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1905 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1899.x, x_1899.y, x_1899.x, x_1899.y) * vec4<f32>(x_1902.x, x_1902.y, x_1902.x, x_1902.y)) + vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1905.y));
        let x_1908 : vec4<f32> = u_xlat6;
        let x_1911 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1914 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1908.x, x_1908.y) * vec2<f32>(x_1911.x, x_1911.y)) + vec2<f32>(x_1914.w, x_1914.y));
        let x_1918 : f32 = u_xlat11.y;
        u_xlat8.y = x_1918;
        let x_1921 : f32 = u_xlat9.z;
        u_xlat11.y = x_1921;
        let x_1923 : vec4<f32> = u_xlat6;
        let x_1926 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1929 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1923.x, x_1923.y, x_1923.x, x_1923.y) * vec4<f32>(x_1926.x, x_1926.y, x_1926.x, x_1926.y)) + vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1929.y));
        let x_1932 : vec4<f32> = u_xlat6;
        let x_1935 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1938 : vec4<f32> = u_xlat11;
        let x_1940 : vec2<f32> = ((vec2<f32>(x_1932.x, x_1932.y) * vec2<f32>(x_1935.x, x_1935.y)) + vec2<f32>(x_1938.w, x_1938.y));
        let x_1941 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1940.x, x_1940.y, x_1941.z, x_1941.w);
        let x_1944 : f32 = u_xlat11.y;
        u_xlat8.z = x_1944;
        let x_1947 : vec4<f32> = u_xlat6;
        let x_1950 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1953 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1947.x, x_1947.y, x_1947.x, x_1947.y) * vec4<f32>(x_1950.x, x_1950.y, x_1950.x, x_1950.y)) + vec4<f32>(x_1953.x, x_1953.y, x_1953.x, x_1953.z));
        let x_1957 : f32 = u_xlat9.w;
        u_xlat11.y = x_1957;
        let x_1960 : vec4<f32> = u_xlat6;
        let x_1963 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1966 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1960.x, x_1960.y, x_1960.x, x_1960.y) * vec4<f32>(x_1963.x, x_1963.y, x_1963.x, x_1963.y)) + vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1966.y));
        let x_1970 : vec4<f32> = u_xlat6;
        let x_1973 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1976 : vec4<f32> = u_xlat11;
        u_xlat33 = ((vec2<f32>(x_1970.x, x_1970.y) * vec2<f32>(x_1973.x, x_1973.y)) + vec2<f32>(x_1976.w, x_1976.y));
        let x_1980 : f32 = u_xlat11.y;
        u_xlat8.w = x_1980;
        let x_1983 : vec4<f32> = u_xlat6;
        let x_1986 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1989 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1983.x, x_1983.y) * vec2<f32>(x_1986.x, x_1986.y)) + vec2<f32>(x_1989.x, x_1989.w));
        let x_1992 : vec4<f32> = u_xlat11;
        let x_1993 : vec3<f32> = vec3<f32>(x_1992.x, x_1992.z, x_1992.w);
        let x_1994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1993.x, x_1994.y, x_1993.y, x_1993.z);
        let x_1996 : vec4<f32> = u_xlat6;
        let x_1999 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2002 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1996.x, x_1996.y, x_1996.x, x_1996.y) * vec4<f32>(x_1999.x, x_1999.y, x_1999.x, x_1999.y)) + vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2002.y));
        let x_2006 : vec4<f32> = u_xlat6;
        let x_2009 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2012 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_2006.x, x_2006.y) * vec2<f32>(x_2009.x, x_2009.y)) + vec2<f32>(x_2012.w, x_2012.y));
        let x_2016 : f32 = u_xlat8.x;
        u_xlat9.x = x_2016;
        let x_2018 : vec4<f32> = u_xlat6;
        let x_2021 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2024 : vec4<f32> = u_xlat9;
        let x_2026 : vec2<f32> = ((vec2<f32>(x_2018.x, x_2018.y) * vec2<f32>(x_2021.x, x_2021.y)) + vec2<f32>(x_2024.x, x_2024.y));
        let x_2027 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2026.x, x_2026.y, x_2027.z, x_2027.w);
        let x_2030 : vec4<f32> = u_xlat7;
        let x_2032 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2030.x, x_2030.x, x_2030.x, x_2030.x) * x_2032);
        let x_2035 : vec4<f32> = u_xlat7;
        let x_2037 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2035.y, x_2035.y, x_2035.y, x_2035.y) * x_2037);
        let x_2040 : vec4<f32> = u_xlat7;
        let x_2042 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2040.z, x_2040.z, x_2040.z, x_2040.z) * x_2042);
        let x_2044 : vec4<f32> = u_xlat7;
        let x_2046 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2044.w, x_2044.w, x_2044.w, x_2044.w) * x_2046);
        let x_2049 : vec4<f32> = u_xlat12;
        let x_2050 : vec2<f32> = vec2<f32>(x_2049.x, x_2049.y);
        let x_2052 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2050.x, x_2050.y, x_2052);
        let x_2059 : vec3<f32> = txVec13;
        let x_2061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2059.xy, x_2059.z);
        u_xlat80 = x_2061;
        let x_2063 : vec4<f32> = u_xlat12;
        let x_2064 : vec2<f32> = vec2<f32>(x_2063.z, x_2063.w);
        let x_2066 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2064.x, x_2064.y, x_2066);
        let x_2073 : vec3<f32> = txVec14;
        let x_2075 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2073.xy, x_2073.z);
        u_xlat8.x = x_2075;
        let x_2078 : f32 = u_xlat8.x;
        let x_2080 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2078 * x_2080);
        let x_2084 : f32 = u_xlat17.x;
        let x_2085 : f32 = u_xlat80;
        let x_2088 : f32 = u_xlat8.x;
        u_xlat80 = ((x_2084 * x_2085) + x_2088);
        let x_2091 : vec2<f32> = u_xlat56;
        let x_2093 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
        let x_2100 : vec3<f32> = txVec15;
        let x_2102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2100.xy, x_2100.z);
        u_xlat56.x = x_2102;
        let x_2105 : f32 = u_xlat17.z;
        let x_2107 : f32 = u_xlat56.x;
        let x_2109 : f32 = u_xlat80;
        u_xlat80 = ((x_2105 * x_2107) + x_2109);
        let x_2112 : vec4<f32> = u_xlat15;
        let x_2113 : vec2<f32> = vec2<f32>(x_2112.x, x_2112.y);
        let x_2115 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2113.x, x_2113.y, x_2115);
        let x_2122 : vec3<f32> = txVec16;
        let x_2124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2122.xy, x_2122.z);
        u_xlat56.x = x_2124;
        let x_2127 : f32 = u_xlat17.w;
        let x_2129 : f32 = u_xlat56.x;
        let x_2131 : f32 = u_xlat80;
        u_xlat80 = ((x_2127 * x_2129) + x_2131);
        let x_2134 : vec4<f32> = u_xlat13;
        let x_2135 : vec2<f32> = vec2<f32>(x_2134.x, x_2134.y);
        let x_2137 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2135.x, x_2135.y, x_2137);
        let x_2144 : vec3<f32> = txVec17;
        let x_2146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2144.xy, x_2144.z);
        u_xlat56.x = x_2146;
        let x_2149 : f32 = u_xlat18.x;
        let x_2151 : f32 = u_xlat56.x;
        let x_2153 : f32 = u_xlat80;
        u_xlat80 = ((x_2149 * x_2151) + x_2153);
        let x_2156 : vec4<f32> = u_xlat13;
        let x_2157 : vec2<f32> = vec2<f32>(x_2156.z, x_2156.w);
        let x_2159 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2157.x, x_2157.y, x_2159);
        let x_2166 : vec3<f32> = txVec18;
        let x_2168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2166.xy, x_2166.z);
        u_xlat56.x = x_2168;
        let x_2171 : f32 = u_xlat18.y;
        let x_2173 : f32 = u_xlat56.x;
        let x_2175 : f32 = u_xlat80;
        u_xlat80 = ((x_2171 * x_2173) + x_2175);
        let x_2178 : vec4<f32> = u_xlat14;
        let x_2179 : vec2<f32> = vec2<f32>(x_2178.x, x_2178.y);
        let x_2181 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2179.x, x_2179.y, x_2181);
        let x_2188 : vec3<f32> = txVec19;
        let x_2190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2188.xy, x_2188.z);
        u_xlat56.x = x_2190;
        let x_2193 : f32 = u_xlat18.z;
        let x_2195 : f32 = u_xlat56.x;
        let x_2197 : f32 = u_xlat80;
        u_xlat80 = ((x_2193 * x_2195) + x_2197);
        let x_2200 : vec4<f32> = u_xlat15;
        let x_2201 : vec2<f32> = vec2<f32>(x_2200.z, x_2200.w);
        let x_2203 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2201.x, x_2201.y, x_2203);
        let x_2210 : vec3<f32> = txVec20;
        let x_2212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2210.xy, x_2210.z);
        u_xlat56.x = x_2212;
        let x_2215 : f32 = u_xlat18.w;
        let x_2217 : f32 = u_xlat56.x;
        let x_2219 : f32 = u_xlat80;
        u_xlat80 = ((x_2215 * x_2217) + x_2219);
        let x_2222 : vec4<f32> = u_xlat16;
        let x_2223 : vec2<f32> = vec2<f32>(x_2222.x, x_2222.y);
        let x_2225 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2223.x, x_2223.y, x_2225);
        let x_2232 : vec3<f32> = txVec21;
        let x_2234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2232.xy, x_2232.z);
        u_xlat56.x = x_2234;
        let x_2237 : f32 = u_xlat19.x;
        let x_2239 : f32 = u_xlat56.x;
        let x_2241 : f32 = u_xlat80;
        u_xlat80 = ((x_2237 * x_2239) + x_2241);
        let x_2244 : vec4<f32> = u_xlat16;
        let x_2245 : vec2<f32> = vec2<f32>(x_2244.z, x_2244.w);
        let x_2247 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2245.x, x_2245.y, x_2247);
        let x_2254 : vec3<f32> = txVec22;
        let x_2256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2254.xy, x_2254.z);
        u_xlat56.x = x_2256;
        let x_2259 : f32 = u_xlat19.y;
        let x_2261 : f32 = u_xlat56.x;
        let x_2263 : f32 = u_xlat80;
        u_xlat80 = ((x_2259 * x_2261) + x_2263);
        let x_2266 : vec2<f32> = u_xlat33;
        let x_2268 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2266.x, x_2266.y, x_2268);
        let x_2275 : vec3<f32> = txVec23;
        let x_2277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2275.xy, x_2275.z);
        u_xlat56.x = x_2277;
        let x_2280 : f32 = u_xlat19.z;
        let x_2282 : f32 = u_xlat56.x;
        let x_2284 : f32 = u_xlat80;
        u_xlat80 = ((x_2280 * x_2282) + x_2284);
        let x_2287 : vec2<f32> = u_xlat64;
        let x_2289 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2287.x, x_2287.y, x_2289);
        let x_2296 : vec3<f32> = txVec24;
        let x_2298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2296.xy, x_2296.z);
        u_xlat56.x = x_2298;
        let x_2301 : f32 = u_xlat19.w;
        let x_2303 : f32 = u_xlat56.x;
        let x_2305 : f32 = u_xlat80;
        u_xlat80 = ((x_2301 * x_2303) + x_2305);
        let x_2308 : vec4<f32> = u_xlat11;
        let x_2309 : vec2<f32> = vec2<f32>(x_2308.x, x_2308.y);
        let x_2311 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2309.x, x_2309.y, x_2311);
        let x_2318 : vec3<f32> = txVec25;
        let x_2320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2318.xy, x_2318.z);
        u_xlat56.x = x_2320;
        let x_2323 : f32 = u_xlat7.x;
        let x_2325 : f32 = u_xlat56.x;
        let x_2327 : f32 = u_xlat80;
        u_xlat80 = ((x_2323 * x_2325) + x_2327);
        let x_2330 : vec4<f32> = u_xlat11;
        let x_2331 : vec2<f32> = vec2<f32>(x_2330.z, x_2330.w);
        let x_2333 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2331.x, x_2331.y, x_2333);
        let x_2340 : vec3<f32> = txVec26;
        let x_2342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2340.xy, x_2340.z);
        u_xlat56.x = x_2342;
        let x_2345 : f32 = u_xlat7.y;
        let x_2347 : f32 = u_xlat56.x;
        let x_2349 : f32 = u_xlat80;
        u_xlat80 = ((x_2345 * x_2347) + x_2349);
        let x_2352 : vec2<f32> = u_xlat59;
        let x_2354 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2352.x, x_2352.y, x_2354);
        let x_2361 : vec3<f32> = txVec27;
        let x_2363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2361.xy, x_2361.z);
        u_xlat56.x = x_2363;
        let x_2366 : f32 = u_xlat7.z;
        let x_2368 : f32 = u_xlat56.x;
        let x_2370 : f32 = u_xlat80;
        u_xlat80 = ((x_2366 * x_2368) + x_2370);
        let x_2373 : vec4<f32> = u_xlat6;
        let x_2374 : vec2<f32> = vec2<f32>(x_2373.x, x_2373.y);
        let x_2376 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2374.x, x_2374.y, x_2376);
        let x_2383 : vec3<f32> = txVec28;
        let x_2385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
        u_xlat6.x = x_2385;
        let x_2388 : f32 = u_xlat7.w;
        let x_2390 : f32 = u_xlat6.x;
        let x_2392 : f32 = u_xlat80;
        u_xlat79 = ((x_2388 * x_2390) + x_2392);
      }
    }
  } else {
    let x_2396 : vec4<f32> = u_xlat2;
    let x_2397 : vec2<f32> = vec2<f32>(x_2396.x, x_2396.y);
    let x_2399 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2397.x, x_2397.y, x_2399);
    let x_2406 : vec3<f32> = txVec29;
    let x_2408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2406.xy, x_2406.z);
    u_xlat79 = x_2408;
  }
  let x_2410 : f32 = x_868.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2410) + 1.0f);
  let x_2414 : f32 = u_xlat79;
  let x_2416 : f32 = x_868.x_MainLightShadowParams.x;
  let x_2419 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2414 * x_2416) + x_2419);
  let x_2424 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_2424);
  let x_2428 : f32 = u_xlat2.z;
  u_xlatb52 = (x_2428 >= 1.0f);
  let x_2430 : bool = u_xlatb52;
  let x_2431 : bool = u_xlatb27;
  u_xlatb27 = (x_2430 | x_2431);
  let x_2433 : bool = u_xlatb27;
  if (x_2433) {
    x_2435 = 1.0f;
  } else {
    let x_2440 : f32 = u_xlat2.x;
    x_2435 = x_2440;
  }
  let x_2441 : f32 = x_2435;
  u_xlat2.x = x_2441;
  let x_2443 : vec3<f32> = vs_TEXCOORD7;
  let x_2446 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_2448 : vec3<f32> = (x_2443 + -(x_2446));
  let x_2449 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
  let x_2452 : vec4<f32> = u_xlat6;
  let x_2454 : vec4<f32> = u_xlat6;
  u_xlat27 = dot(vec3<f32>(x_2452.x, x_2452.y, x_2452.z), vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
  let x_2458 : f32 = u_xlat27;
  let x_2460 : f32 = x_868.x_MainLightShadowParams.z;
  let x_2463 : f32 = x_868.x_MainLightShadowParams.w;
  u_xlat52 = ((x_2458 * x_2460) + x_2463);
  let x_2465 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2465, 0.0f, 1.0f);
  let x_2468 : f32 = u_xlat2.x;
  u_xlat79 = (-(x_2468) + 1.0f);
  let x_2471 : f32 = u_xlat52;
  let x_2472 : f32 = u_xlat79;
  let x_2475 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2471 * x_2472) + x_2475);
  let x_2480 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2480;
  let x_2483 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2483;
  let x_2486 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2486;
  let x_2488 : vec4<f32> = u_xlat6;
  let x_2491 : vec4<f32> = u_xlat1;
  u_xlat52 = dot(-(vec3<f32>(x_2488.x, x_2488.y, x_2488.z)), vec3<f32>(x_2491.x, x_2491.y, x_2491.z));
  let x_2494 : f32 = u_xlat52;
  let x_2495 : f32 = u_xlat52;
  u_xlat52 = (x_2494 + x_2495);
  let x_2497 : vec4<f32> = u_xlat1;
  let x_2499 : f32 = u_xlat52;
  let x_2503 : vec4<f32> = u_xlat6;
  let x_2506 : vec3<f32> = ((vec3<f32>(x_2497.x, x_2497.y, x_2497.z) * -(vec3<f32>(x_2499, x_2499, x_2499))) + -(vec3<f32>(x_2503.x, x_2503.y, x_2503.z)));
  let x_2507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
  let x_2509 : vec4<f32> = u_xlat1;
  let x_2511 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2509.x, x_2509.y, x_2509.z), vec3<f32>(x_2511.x, x_2511.y, x_2511.z));
  let x_2514 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2514, 0.0f, 1.0f);
  let x_2516 : f32 = u_xlat52;
  u_xlat52 = (-(x_2516) + 1.0f);
  let x_2519 : f32 = u_xlat52;
  let x_2520 : f32 = u_xlat52;
  u_xlat52 = (x_2519 * x_2520);
  let x_2522 : f32 = u_xlat52;
  let x_2523 : f32 = u_xlat52;
  u_xlat52 = (x_2522 * x_2523);
  let x_2526 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_2526) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2533 : f32 = u_xlat0.x;
  let x_2534 : f32 = u_xlat79;
  u_xlat0.x = (x_2533 * x_2534);
  let x_2538 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2538 * 6.0f);
  let x_2550 : vec4<f32> = u_xlat7;
  let x_2553 : f32 = u_xlat0.x;
  let x_2554 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2550.x, x_2550.y, x_2550.z), x_2553);
  u_xlat7 = x_2554;
  let x_2556 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2556 + -1.0f);
  let x_2564 : f32 = x_2562.unity_SpecCube0_HDR.w;
  let x_2566 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2564 * x_2566) + 1.0f);
  let x_2571 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2571, 0.0f);
  let x_2575 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2575);
  let x_2579 : f32 = u_xlat0.x;
  let x_2581 : f32 = x_2562.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2579 * x_2581);
  let x_2585 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2585);
  let x_2589 : f32 = u_xlat0.x;
  let x_2591 : f32 = x_2562.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2589 * x_2591);
  let x_2594 : vec4<f32> = u_xlat7;
  let x_2596 : vec3<f32> = u_xlat0;
  let x_2598 : vec3<f32> = (vec3<f32>(x_2594.x, x_2594.y, x_2594.z) * vec3<f32>(x_2596.x, x_2596.x, x_2596.x));
  let x_2599 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
  let x_2601 : f32 = u_xlat50;
  let x_2603 : f32 = u_xlat50;
  let x_2607 : vec2<f32> = ((vec2<f32>(x_2601, x_2601) * vec2<f32>(x_2603, x_2603)) + vec2<f32>(-1.0f, 1.0f));
  let x_2608 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2607.x, x_2608.y, x_2607.y);
  let x_2611 : f32 = u_xlat0.z;
  u_xlat50 = (1.0f / x_2611);
  let x_2613 : vec4<f32> = u_xlat5;
  let x_2616 : f32 = u_xlat77;
  let x_2618 : vec3<f32> = (-(vec3<f32>(x_2613.x, x_2613.y, x_2613.z)) + vec3<f32>(x_2616, x_2616, x_2616));
  let x_2619 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
  let x_2621 : f32 = u_xlat52;
  let x_2623 : vec4<f32> = u_xlat8;
  let x_2626 : vec4<f32> = u_xlat5;
  let x_2628 : vec3<f32> = ((vec3<f32>(x_2621, x_2621, x_2621) * vec3<f32>(x_2623.x, x_2623.y, x_2623.z)) + vec3<f32>(x_2626.x, x_2626.y, x_2626.z));
  let x_2629 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2628.x, x_2628.y, x_2628.z, x_2629.w);
  let x_2631 : f32 = u_xlat50;
  let x_2633 : vec4<f32> = u_xlat8;
  let x_2635 : vec3<f32> = (vec3<f32>(x_2631, x_2631, x_2631) * vec3<f32>(x_2633.x, x_2633.y, x_2633.z));
  let x_2636 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2635.x, x_2635.y, x_2635.z, x_2636.w);
  let x_2638 : vec4<f32> = u_xlat7;
  let x_2640 : vec4<f32> = u_xlat8;
  let x_2642 : vec3<f32> = (vec3<f32>(x_2638.x, x_2638.y, x_2638.z) * vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
  let x_2643 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
  let x_2645 : vec4<f32> = u_xlat3;
  let x_2647 : vec4<f32> = u_xlat4;
  let x_2650 : vec4<f32> = u_xlat7;
  let x_2652 : vec3<f32> = ((vec3<f32>(x_2645.x, x_2645.y, x_2645.z) * vec3<f32>(x_2647.x, x_2647.y, x_2647.z)) + vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
  let x_2653 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2652.x, x_2652.y, x_2652.z, x_2653.w);
  let x_2656 : f32 = u_xlat2.x;
  let x_2658 : f32 = x_2562.unity_LightData.z;
  u_xlat50 = (x_2656 * x_2658);
  let x_2660 : vec4<f32> = u_xlat1;
  let x_2663 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2660.x, x_2660.y, x_2660.z), vec3<f32>(x_2663.x, x_2663.y, x_2663.z));
  let x_2668 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2668, 0.0f, 1.0f);
  let x_2671 : f32 = u_xlat50;
  let x_2673 : f32 = u_xlat2.x;
  u_xlat50 = (x_2671 * x_2673);
  let x_2675 : f32 = u_xlat50;
  let x_2678 : vec4<f32> = x_28.x_MainLightColor;
  let x_2680 : vec3<f32> = (vec3<f32>(x_2675, x_2675, x_2675) * vec3<f32>(x_2678.x, x_2678.y, x_2678.z));
  let x_2681 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2680.x, x_2681.y, x_2680.y, x_2680.z);
  let x_2683 : vec4<f32> = u_xlat6;
  let x_2686 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2688 : vec3<f32> = (vec3<f32>(x_2683.x, x_2683.y, x_2683.z) + vec3<f32>(x_2686.x, x_2686.y, x_2686.z));
  let x_2689 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
  let x_2691 : vec4<f32> = u_xlat7;
  let x_2693 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2691.x, x_2691.y, x_2691.z), vec3<f32>(x_2693.x, x_2693.y, x_2693.z));
  let x_2696 : f32 = u_xlat50;
  u_xlat50 = max(x_2696, 1.17549435e-38f);
  let x_2699 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_2699);
  let x_2701 : f32 = u_xlat50;
  let x_2703 : vec4<f32> = u_xlat7;
  let x_2705 : vec3<f32> = (vec3<f32>(x_2701, x_2701, x_2701) * vec3<f32>(x_2703.x, x_2703.y, x_2703.z));
  let x_2706 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2705.x, x_2705.y, x_2705.z, x_2706.w);
  let x_2708 : vec4<f32> = u_xlat1;
  let x_2710 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_2708.x, x_2708.y, x_2708.z), vec3<f32>(x_2710.x, x_2710.y, x_2710.z));
  let x_2713 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2713, 0.0f, 1.0f);
  let x_2716 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2718 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2716.x, x_2716.y, x_2716.z), vec3<f32>(x_2718.x, x_2718.y, x_2718.z));
  let x_2721 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2721, 0.0f, 1.0f);
  let x_2723 : f32 = u_xlat50;
  let x_2724 : f32 = u_xlat50;
  u_xlat50 = (x_2723 * x_2724);
  let x_2726 : f32 = u_xlat50;
  let x_2728 : f32 = u_xlat0.x;
  u_xlat50 = ((x_2726 * x_2728) + 1.00001001358032226562f);
  let x_2732 : f32 = u_xlat79;
  let x_2733 : f32 = u_xlat79;
  u_xlat79 = (x_2732 * x_2733);
  let x_2735 : f32 = u_xlat50;
  let x_2736 : f32 = u_xlat50;
  u_xlat50 = (x_2735 * x_2736);
  let x_2738 : f32 = u_xlat79;
  u_xlat79 = max(x_2738, 0.10000000149011611938f);
  let x_2741 : f32 = u_xlat50;
  let x_2742 : f32 = u_xlat79;
  u_xlat50 = (x_2741 * x_2742);
  let x_2744 : f32 = u_xlat78;
  let x_2745 : f32 = u_xlat50;
  u_xlat50 = (x_2744 * x_2745);
  let x_2747 : f32 = u_xlat76;
  let x_2748 : f32 = u_xlat50;
  u_xlat50 = (x_2747 / x_2748);
  let x_2750 : vec4<f32> = u_xlat5;
  let x_2752 : f32 = u_xlat50;
  let x_2755 : vec4<f32> = u_xlat4;
  let x_2757 : vec3<f32> = ((vec3<f32>(x_2750.x, x_2750.y, x_2750.z) * vec3<f32>(x_2752, x_2752, x_2752)) + vec3<f32>(x_2755.x, x_2755.y, x_2755.z));
  let x_2758 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2757.x, x_2757.y, x_2757.z, x_2758.w);
  let x_2760 : vec4<f32> = u_xlat2;
  let x_2762 : vec4<f32> = u_xlat7;
  let x_2764 : vec3<f32> = (vec3<f32>(x_2760.x, x_2760.z, x_2760.w) * vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
  let x_2765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2764.x, x_2765.y, x_2764.y, x_2764.z);
  let x_2768 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2770 : f32 = x_2562.unity_LightData.y;
  u_xlat50 = min(x_2768, x_2770);
  let x_2773 : f32 = u_xlat50;
  u_xlatu50 = bitcast<u32>(i32(x_2773));
  let x_2776 : f32 = u_xlat27;
  let x_2778 : f32 = x_868.x_AdditionalShadowFadeParams.x;
  let x_2781 : f32 = x_868.x_AdditionalShadowFadeParams.y;
  u_xlat27 = ((x_2776 * x_2778) + x_2781);
  let x_2783 : f32 = u_xlat27;
  u_xlat27 = clamp(x_2783, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2795 : u32 = u_xlatu_loop_1;
    let x_2796 : u32 = u_xlatu50;
    if ((x_2795 < x_2796)) {
    } else {
      break;
    }
    let x_2799 : u32 = u_xlatu_loop_1;
    u_xlatu80 = (x_2799 >> 2u);
    let x_2802 : u32 = u_xlatu_loop_1;
    u_xlati81 = bitcast<i32>((x_2802 & 3u));
    let x_2805 : u32 = u_xlatu80;
    let x_2808 : vec4<f32> = x_2562.unity_LightIndices[bitcast<i32>(x_2805)];
    let x_2818 : i32 = u_xlati81;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2823 : vec4<u32> = indexable[x_2818];
    u_xlat80 = dot(x_2808, bitcast<vec4<f32>>(x_2823));
    let x_2827 : f32 = u_xlat80;
    u_xlati80 = i32(x_2827);
    let x_2829 : vec3<f32> = vs_TEXCOORD7;
    let x_2840 : i32 = u_xlati80;
    let x_2842 : vec4<f32> = x_2839.x_AdditionalLightsPosition[x_2840];
    let x_2845 : i32 = u_xlati80;
    let x_2847 : vec4<f32> = x_2839.x_AdditionalLightsPosition[x_2845];
    let x_2849 : vec3<f32> = ((-(x_2829) * vec3<f32>(x_2842.w, x_2842.w, x_2842.w)) + vec3<f32>(x_2847.x, x_2847.y, x_2847.z));
    let x_2850 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2849.x, x_2849.y, x_2849.z, x_2850.w);
    let x_2853 : vec4<f32> = u_xlat8;
    let x_2855 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_2853.x, x_2853.y, x_2853.z), vec3<f32>(x_2855.x, x_2855.y, x_2855.z));
    let x_2858 : f32 = u_xlat81;
    u_xlat81 = max(x_2858, 0.00006103515625f);
    let x_2861 : f32 = u_xlat81;
    u_xlat82 = inverseSqrt(x_2861);
    let x_2863 : f32 = u_xlat82;
    let x_2865 : vec4<f32> = u_xlat8;
    let x_2867 : vec3<f32> = (vec3<f32>(x_2863, x_2863, x_2863) * vec3<f32>(x_2865.x, x_2865.y, x_2865.z));
    let x_2868 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2867.x, x_2867.y, x_2867.z, x_2868.w);
    let x_2871 : f32 = u_xlat81;
    u_xlat83 = (1.0f / x_2871);
    let x_2873 : f32 = u_xlat81;
    let x_2874 : i32 = u_xlati80;
    let x_2876 : f32 = x_2839.x_AdditionalLightsAttenuation[x_2874].x;
    u_xlat81 = (x_2873 * x_2876);
    let x_2878 : f32 = u_xlat81;
    let x_2880 : f32 = u_xlat81;
    u_xlat81 = ((-(x_2878) * x_2880) + 1.0f);
    let x_2883 : f32 = u_xlat81;
    u_xlat81 = max(x_2883, 0.0f);
    let x_2885 : f32 = u_xlat81;
    let x_2886 : f32 = u_xlat81;
    u_xlat81 = (x_2885 * x_2886);
    let x_2888 : f32 = u_xlat81;
    let x_2889 : f32 = u_xlat83;
    u_xlat81 = (x_2888 * x_2889);
    let x_2891 : i32 = u_xlati80;
    let x_2893 : vec4<f32> = x_2839.x_AdditionalLightsSpotDir[x_2891];
    let x_2895 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2893.x, x_2893.y, x_2893.z), vec3<f32>(x_2895.x, x_2895.y, x_2895.z));
    let x_2898 : f32 = u_xlat83;
    let x_2899 : i32 = u_xlati80;
    let x_2901 : f32 = x_2839.x_AdditionalLightsAttenuation[x_2899].z;
    let x_2903 : i32 = u_xlati80;
    let x_2905 : f32 = x_2839.x_AdditionalLightsAttenuation[x_2903].w;
    u_xlat83 = ((x_2898 * x_2901) + x_2905);
    let x_2907 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2907, 0.0f, 1.0f);
    let x_2909 : f32 = u_xlat83;
    let x_2910 : f32 = u_xlat83;
    u_xlat83 = (x_2909 * x_2910);
    let x_2912 : f32 = u_xlat81;
    let x_2913 : f32 = u_xlat83;
    u_xlat81 = (x_2912 * x_2913);
    let x_2916 : i32 = u_xlati80;
    let x_2918 : f32 = x_868.x_AdditionalShadowParams[x_2916].w;
    u_xlati83 = i32(x_2918);
    let x_2921 : i32 = u_xlati83;
    u_xlatb84 = (x_2921 >= 0i);
    let x_2923 : bool = u_xlatb84;
    if (x_2923) {
      let x_2927 : i32 = u_xlati80;
      let x_2929 : f32 = x_868.x_AdditionalShadowParams[x_2927].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2929, x_2929, x_2929, x_2929))));
      let x_2933 : bool = u_xlatb84;
      if (x_2933) {
        let x_2937 : vec4<f32> = u_xlat9;
        let x_2940 : vec4<f32> = u_xlat9;
        let x_2943 : vec4<bool> = (abs(vec4<f32>(x_2937.z, x_2937.z, x_2937.y, x_2937.z)) >= abs(vec4<f32>(x_2940.x, x_2940.y, x_2940.x, x_2940.x)));
        let x_2945 : vec3<bool> = vec3<bool>(x_2943.x, x_2943.y, x_2943.z);
        let x_2946 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2945.x, x_2945.y, x_2945.z, x_2946.w);
        let x_2949 : bool = u_xlatb10.y;
        let x_2951 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2949 & x_2951);
        let x_2953 : vec4<f32> = u_xlat9;
        let x_2956 : vec4<bool> = (-(vec4<f32>(x_2953.z, x_2953.y, x_2953.z, x_2953.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2957 : vec3<bool> = vec3<bool>(x_2956.x, x_2956.y, x_2956.w);
        let x_2958 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2957.x, x_2957.y, x_2958.z, x_2957.z);
        let x_2961 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2961);
        let x_2966 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2966);
        let x_2971 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2971);
        let x_2975 : bool = u_xlatb10.z;
        if (x_2975) {
          let x_2980 : f32 = u_xlat10.y;
          x_2976 = x_2980;
        } else {
          let x_2982 : f32 = u_xlat85;
          x_2976 = x_2982;
        }
        let x_2983 : f32 = x_2976;
        u_xlat35 = x_2983;
        let x_2985 : bool = u_xlatb84;
        if (x_2985) {
          let x_2990 : f32 = u_xlat10.x;
          x_2986 = x_2990;
        } else {
          let x_2992 : f32 = u_xlat35;
          x_2986 = x_2992;
        }
        let x_2993 : f32 = x_2986;
        u_xlat84 = x_2993;
        let x_2994 : i32 = u_xlati80;
        let x_2996 : f32 = x_868.x_AdditionalShadowParams[x_2994].w;
        u_xlat10.x = trunc(x_2996);
        let x_2999 : f32 = u_xlat84;
        let x_3001 : f32 = u_xlat10.x;
        u_xlat84 = (x_2999 + x_3001);
        let x_3003 : f32 = u_xlat84;
        u_xlati83 = i32(x_3003);
      }
      let x_3005 : i32 = u_xlati83;
      u_xlati83 = (x_3005 << bitcast<u32>(2i));
      let x_3007 : vec3<f32> = vs_TEXCOORD7;
      let x_3009 : i32 = u_xlati83;
      let x_3012 : i32 = u_xlati83;
      let x_3016 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3009 + 1i) / 4i)][((x_3012 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3007.y, x_3007.y, x_3007.y, x_3007.y) * x_3016);
      let x_3018 : i32 = u_xlati83;
      let x_3020 : i32 = u_xlati83;
      let x_3023 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[(x_3018 / 4i)][(x_3020 % 4i)];
      let x_3024 : vec3<f32> = vs_TEXCOORD7;
      let x_3027 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3023 * vec4<f32>(x_3024.x, x_3024.x, x_3024.x, x_3024.x)) + x_3027);
      let x_3029 : i32 = u_xlati83;
      let x_3032 : i32 = u_xlati83;
      let x_3036 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3029 + 2i) / 4i)][((x_3032 + 2i) % 4i)];
      let x_3037 : vec3<f32> = vs_TEXCOORD7;
      let x_3040 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3036 * vec4<f32>(x_3037.z, x_3037.z, x_3037.z, x_3037.z)) + x_3040);
      let x_3042 : vec4<f32> = u_xlat10;
      let x_3043 : i32 = u_xlati83;
      let x_3046 : i32 = u_xlati83;
      let x_3050 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3043 + 3i) / 4i)][((x_3046 + 3i) % 4i)];
      u_xlat10 = (x_3042 + x_3050);
      let x_3052 : vec4<f32> = u_xlat10;
      let x_3054 : vec4<f32> = u_xlat10;
      let x_3056 : vec3<f32> = (vec3<f32>(x_3052.x, x_3052.y, x_3052.z) / vec3<f32>(x_3054.w, x_3054.w, x_3054.w));
      let x_3057 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3056.x, x_3056.y, x_3056.z, x_3057.w);
      let x_3060 : i32 = u_xlati80;
      let x_3062 : f32 = x_868.x_AdditionalShadowParams[x_3060].y;
      u_xlatb83 = (0.0f < x_3062);
      let x_3064 : bool = u_xlatb83;
      if (x_3064) {
        let x_3067 : i32 = u_xlati80;
        let x_3069 : f32 = x_868.x_AdditionalShadowParams[x_3067].y;
        u_xlatb83 = (1.0f == x_3069);
        let x_3071 : bool = u_xlatb83;
        if (x_3071) {
          let x_3074 : vec4<f32> = u_xlat10;
          let x_3077 : vec4<f32> = x_868.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3074.x, x_3074.y, x_3074.x, x_3074.y) + x_3077);
          let x_3080 : vec4<f32> = u_xlat11;
          let x_3081 : vec2<f32> = vec2<f32>(x_3080.x, x_3080.y);
          let x_3083 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
          let x_3091 : vec3<f32> = txVec30;
          let x_3093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
          u_xlat12.x = x_3093;
          let x_3096 : vec4<f32> = u_xlat11;
          let x_3097 : vec2<f32> = vec2<f32>(x_3096.z, x_3096.w);
          let x_3099 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3097.x, x_3097.y, x_3099);
          let x_3106 : vec3<f32> = txVec31;
          let x_3108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3106.xy, x_3106.z);
          u_xlat12.y = x_3108;
          let x_3110 : vec4<f32> = u_xlat10;
          let x_3113 : vec4<f32> = x_868.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3110.x, x_3110.y, x_3110.x, x_3110.y) + x_3113);
          let x_3116 : vec4<f32> = u_xlat11;
          let x_3117 : vec2<f32> = vec2<f32>(x_3116.x, x_3116.y);
          let x_3119 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
          let x_3126 : vec3<f32> = txVec32;
          let x_3128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
          u_xlat12.z = x_3128;
          let x_3131 : vec4<f32> = u_xlat11;
          let x_3132 : vec2<f32> = vec2<f32>(x_3131.z, x_3131.w);
          let x_3134 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3132.x, x_3132.y, x_3134);
          let x_3141 : vec3<f32> = txVec33;
          let x_3143 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3141.xy, x_3141.z);
          u_xlat12.w = x_3143;
          let x_3145 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_3145, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3148 : i32 = u_xlati80;
          let x_3150 : f32 = x_868.x_AdditionalShadowParams[x_3148].y;
          u_xlatb84 = (2.0f == x_3150);
          let x_3152 : bool = u_xlatb84;
          if (x_3152) {
            let x_3155 : vec4<f32> = u_xlat10;
            let x_3158 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3161 : vec2<f32> = ((vec2<f32>(x_3155.x, x_3155.y) * vec2<f32>(x_3158.z, x_3158.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3162 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3161.x, x_3161.y, x_3162.z, x_3162.w);
            let x_3164 : vec4<f32> = u_xlat11;
            let x_3166 : vec2<f32> = floor(vec2<f32>(x_3164.x, x_3164.y));
            let x_3167 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3166.x, x_3166.y, x_3167.z, x_3167.w);
            let x_3170 : vec4<f32> = u_xlat10;
            let x_3173 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3176 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3170.x, x_3170.y) * vec2<f32>(x_3173.z, x_3173.w)) + -(vec2<f32>(x_3176.x, x_3176.y)));
            let x_3180 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3180.x, x_3180.x, x_3180.y, x_3180.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3183 : vec4<f32> = u_xlat12;
            let x_3185 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3183.x, x_3183.x, x_3183.z, x_3183.z) * vec4<f32>(x_3185.x, x_3185.x, x_3185.z, x_3185.z));
            let x_3188 : vec4<f32> = u_xlat13;
            let x_3190 : vec2<f32> = (vec2<f32>(x_3188.y, x_3188.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3191 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3190.x, x_3191.y, x_3190.y, x_3191.w);
            let x_3193 : vec4<f32> = u_xlat13;
            let x_3196 : vec2<f32> = u_xlat61;
            let x_3198 : vec2<f32> = ((vec2<f32>(x_3193.x, x_3193.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3196));
            let x_3199 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3198.x, x_3198.y, x_3199.z, x_3199.w);
            let x_3202 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3202) + vec2<f32>(1.0f, 1.0f));
            let x_3205 : vec2<f32> = u_xlat61;
            let x_3206 : vec2<f32> = min(x_3205, vec2<f32>(0.0f, 0.0f));
            let x_3207 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3206.x, x_3206.y, x_3207.z, x_3207.w);
            let x_3209 : vec4<f32> = u_xlat14;
            let x_3212 : vec4<f32> = u_xlat14;
            let x_3215 : vec2<f32> = u_xlat63;
            let x_3216 : vec2<f32> = ((-(vec2<f32>(x_3209.x, x_3209.y)) * vec2<f32>(x_3212.x, x_3212.y)) + x_3215);
            let x_3217 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3216.x, x_3216.y, x_3217.z, x_3217.w);
            let x_3219 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3219, vec2<f32>(0.0f, 0.0f));
            let x_3221 : vec2<f32> = u_xlat61;
            let x_3223 : vec2<f32> = u_xlat61;
            let x_3225 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3221) * x_3223) + vec2<f32>(x_3225.y, x_3225.w));
            let x_3228 : vec4<f32> = u_xlat14;
            let x_3230 : vec2<f32> = (vec2<f32>(x_3228.x, x_3228.y) + vec2<f32>(1.0f, 1.0f));
            let x_3231 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3230.x, x_3230.y, x_3231.z, x_3231.w);
            let x_3233 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3233 + vec2<f32>(1.0f, 1.0f));
            let x_3235 : vec4<f32> = u_xlat13;
            let x_3237 : vec2<f32> = (vec2<f32>(x_3235.x, x_3235.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3238 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3237.x, x_3237.y, x_3238.z, x_3238.w);
            let x_3240 : vec2<f32> = u_xlat63;
            let x_3241 : vec2<f32> = (x_3240 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3242 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3241.x, x_3241.y, x_3242.z, x_3242.w);
            let x_3244 : vec4<f32> = u_xlat14;
            let x_3246 : vec2<f32> = (vec2<f32>(x_3244.x, x_3244.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3247 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3246.x, x_3246.y, x_3247.z, x_3247.w);
            let x_3249 : vec2<f32> = u_xlat61;
            let x_3250 : vec2<f32> = (x_3249 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3251 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3250.x, x_3250.y, x_3251.z, x_3251.w);
            let x_3253 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3253.y, x_3253.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3257 : f32 = u_xlat14.x;
            u_xlat15.z = x_3257;
            let x_3260 : f32 = u_xlat61.x;
            u_xlat15.w = x_3260;
            let x_3263 : f32 = u_xlat16.x;
            u_xlat13.z = x_3263;
            let x_3266 : f32 = u_xlat12.x;
            u_xlat13.w = x_3266;
            let x_3268 : vec4<f32> = u_xlat13;
            let x_3270 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3268.z, x_3268.w, x_3268.x, x_3268.z) + vec4<f32>(x_3270.z, x_3270.w, x_3270.x, x_3270.z));
            let x_3274 : f32 = u_xlat15.y;
            u_xlat14.z = x_3274;
            let x_3277 : f32 = u_xlat61.y;
            u_xlat14.w = x_3277;
            let x_3280 : f32 = u_xlat13.y;
            u_xlat16.z = x_3280;
            let x_3283 : f32 = u_xlat12.z;
            u_xlat16.w = x_3283;
            let x_3285 : vec4<f32> = u_xlat14;
            let x_3287 : vec4<f32> = u_xlat16;
            let x_3289 : vec3<f32> = (vec3<f32>(x_3285.z, x_3285.y, x_3285.w) + vec3<f32>(x_3287.z, x_3287.y, x_3287.w));
            let x_3290 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3290.w);
            let x_3292 : vec4<f32> = u_xlat13;
            let x_3294 : vec4<f32> = u_xlat17;
            let x_3296 : vec3<f32> = (vec3<f32>(x_3292.x, x_3292.z, x_3292.w) / vec3<f32>(x_3294.z, x_3294.w, x_3294.y));
            let x_3297 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3296.x, x_3296.y, x_3296.z, x_3297.w);
            let x_3299 : vec4<f32> = u_xlat13;
            let x_3301 : vec3<f32> = (vec3<f32>(x_3299.x, x_3299.y, x_3299.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3302 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3301.x, x_3301.y, x_3301.z, x_3302.w);
            let x_3304 : vec4<f32> = u_xlat16;
            let x_3306 : vec4<f32> = u_xlat12;
            let x_3308 : vec3<f32> = (vec3<f32>(x_3304.z, x_3304.y, x_3304.w) / vec3<f32>(x_3306.x, x_3306.y, x_3306.z));
            let x_3309 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3308.x, x_3308.y, x_3308.z, x_3309.w);
            let x_3311 : vec4<f32> = u_xlat14;
            let x_3313 : vec3<f32> = (vec3<f32>(x_3311.x, x_3311.y, x_3311.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3314 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3313.x, x_3313.y, x_3313.z, x_3314.w);
            let x_3316 : vec4<f32> = u_xlat13;
            let x_3319 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3321 : vec3<f32> = (vec3<f32>(x_3316.y, x_3316.x, x_3316.z) * vec3<f32>(x_3319.x, x_3319.x, x_3319.x));
            let x_3322 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3321.x, x_3321.y, x_3321.z, x_3322.w);
            let x_3324 : vec4<f32> = u_xlat14;
            let x_3327 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3329 : vec3<f32> = (vec3<f32>(x_3324.x, x_3324.y, x_3324.z) * vec3<f32>(x_3327.y, x_3327.y, x_3327.y));
            let x_3330 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3329.x, x_3329.y, x_3329.z, x_3330.w);
            let x_3333 : f32 = u_xlat14.x;
            u_xlat13.w = x_3333;
            let x_3335 : vec4<f32> = u_xlat11;
            let x_3338 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3341 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3335.x, x_3335.y, x_3335.x, x_3335.y) * vec4<f32>(x_3338.x, x_3338.y, x_3338.x, x_3338.y)) + vec4<f32>(x_3341.y, x_3341.w, x_3341.x, x_3341.w));
            let x_3344 : vec4<f32> = u_xlat11;
            let x_3347 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3350 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3344.x, x_3344.y) * vec2<f32>(x_3347.x, x_3347.y)) + vec2<f32>(x_3350.z, x_3350.w));
            let x_3354 : f32 = u_xlat13.y;
            u_xlat14.w = x_3354;
            let x_3356 : vec4<f32> = u_xlat14;
            let x_3357 : vec2<f32> = vec2<f32>(x_3356.y, x_3356.z);
            let x_3358 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3358.x, x_3357.x, x_3358.z, x_3357.y);
            let x_3360 : vec4<f32> = u_xlat11;
            let x_3363 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3366 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3360.x, x_3360.y, x_3360.x, x_3360.y) * vec4<f32>(x_3363.x, x_3363.y, x_3363.x, x_3363.y)) + vec4<f32>(x_3366.x, x_3366.y, x_3366.z, x_3366.y));
            let x_3369 : vec4<f32> = u_xlat11;
            let x_3372 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3375 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3369.x, x_3369.y, x_3369.x, x_3369.y) * vec4<f32>(x_3372.x, x_3372.y, x_3372.x, x_3372.y)) + vec4<f32>(x_3375.w, x_3375.y, x_3375.w, x_3375.z));
            let x_3378 : vec4<f32> = u_xlat11;
            let x_3381 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3384 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3378.x, x_3378.y, x_3378.x, x_3378.y) * vec4<f32>(x_3381.x, x_3381.y, x_3381.x, x_3381.y)) + vec4<f32>(x_3384.x, x_3384.w, x_3384.z, x_3384.w));
            let x_3387 : vec4<f32> = u_xlat12;
            let x_3389 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3387.x, x_3387.x, x_3387.x, x_3387.y) * vec4<f32>(x_3389.z, x_3389.w, x_3389.y, x_3389.z));
            let x_3392 : vec4<f32> = u_xlat12;
            let x_3394 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3392.y, x_3392.y, x_3392.z, x_3392.z) * x_3394);
            let x_3397 : f32 = u_xlat12.z;
            let x_3399 : f32 = u_xlat17.y;
            u_xlat84 = (x_3397 * x_3399);
            let x_3402 : vec4<f32> = u_xlat15;
            let x_3403 : vec2<f32> = vec2<f32>(x_3402.x, x_3402.y);
            let x_3405 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3403.x, x_3403.y, x_3405);
            let x_3412 : vec3<f32> = txVec34;
            let x_3414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3412.xy, x_3412.z);
            u_xlat85 = x_3414;
            let x_3416 : vec4<f32> = u_xlat15;
            let x_3417 : vec2<f32> = vec2<f32>(x_3416.z, x_3416.w);
            let x_3419 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3417.x, x_3417.y, x_3419);
            let x_3426 : vec3<f32> = txVec35;
            let x_3428 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3426.xy, x_3426.z);
            u_xlat11.x = x_3428;
            let x_3431 : f32 = u_xlat11.x;
            let x_3433 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3431 * x_3433);
            let x_3437 : f32 = u_xlat18.x;
            let x_3438 : f32 = u_xlat85;
            let x_3441 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3437 * x_3438) + x_3441);
            let x_3444 : vec2<f32> = u_xlat61;
            let x_3446 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3444.x, x_3444.y, x_3446);
            let x_3453 : vec3<f32> = txVec36;
            let x_3455 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3453.xy, x_3453.z);
            u_xlat11.x = x_3455;
            let x_3458 : f32 = u_xlat18.z;
            let x_3460 : f32 = u_xlat11.x;
            let x_3462 : f32 = u_xlat85;
            u_xlat85 = ((x_3458 * x_3460) + x_3462);
            let x_3465 : vec4<f32> = u_xlat14;
            let x_3466 : vec2<f32> = vec2<f32>(x_3465.x, x_3465.y);
            let x_3468 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec37;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat11.x = x_3477;
            let x_3480 : f32 = u_xlat18.w;
            let x_3482 : f32 = u_xlat11.x;
            let x_3484 : f32 = u_xlat85;
            u_xlat85 = ((x_3480 * x_3482) + x_3484);
            let x_3487 : vec4<f32> = u_xlat16;
            let x_3488 : vec2<f32> = vec2<f32>(x_3487.x, x_3487.y);
            let x_3490 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3488.x, x_3488.y, x_3490);
            let x_3497 : vec3<f32> = txVec38;
            let x_3499 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3497.xy, x_3497.z);
            u_xlat11.x = x_3499;
            let x_3502 : f32 = u_xlat19.x;
            let x_3504 : f32 = u_xlat11.x;
            let x_3506 : f32 = u_xlat85;
            u_xlat85 = ((x_3502 * x_3504) + x_3506);
            let x_3509 : vec4<f32> = u_xlat16;
            let x_3510 : vec2<f32> = vec2<f32>(x_3509.z, x_3509.w);
            let x_3512 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3510.x, x_3510.y, x_3512);
            let x_3519 : vec3<f32> = txVec39;
            let x_3521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3519.xy, x_3519.z);
            u_xlat11.x = x_3521;
            let x_3524 : f32 = u_xlat19.y;
            let x_3526 : f32 = u_xlat11.x;
            let x_3528 : f32 = u_xlat85;
            u_xlat85 = ((x_3524 * x_3526) + x_3528);
            let x_3531 : vec4<f32> = u_xlat14;
            let x_3532 : vec2<f32> = vec2<f32>(x_3531.z, x_3531.w);
            let x_3534 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3532.x, x_3532.y, x_3534);
            let x_3541 : vec3<f32> = txVec40;
            let x_3543 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3541.xy, x_3541.z);
            u_xlat11.x = x_3543;
            let x_3546 : f32 = u_xlat19.z;
            let x_3548 : f32 = u_xlat11.x;
            let x_3550 : f32 = u_xlat85;
            u_xlat85 = ((x_3546 * x_3548) + x_3550);
            let x_3553 : vec4<f32> = u_xlat13;
            let x_3554 : vec2<f32> = vec2<f32>(x_3553.x, x_3553.y);
            let x_3556 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3554.x, x_3554.y, x_3556);
            let x_3563 : vec3<f32> = txVec41;
            let x_3565 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3563.xy, x_3563.z);
            u_xlat11.x = x_3565;
            let x_3568 : f32 = u_xlat19.w;
            let x_3570 : f32 = u_xlat11.x;
            let x_3572 : f32 = u_xlat85;
            u_xlat85 = ((x_3568 * x_3570) + x_3572);
            let x_3575 : vec4<f32> = u_xlat13;
            let x_3576 : vec2<f32> = vec2<f32>(x_3575.z, x_3575.w);
            let x_3578 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3576.x, x_3576.y, x_3578);
            let x_3585 : vec3<f32> = txVec42;
            let x_3587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3585.xy, x_3585.z);
            u_xlat11.x = x_3587;
            let x_3589 : f32 = u_xlat84;
            let x_3591 : f32 = u_xlat11.x;
            let x_3593 : f32 = u_xlat85;
            u_xlat83 = ((x_3589 * x_3591) + x_3593);
          } else {
            let x_3596 : vec4<f32> = u_xlat10;
            let x_3599 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3602 : vec2<f32> = ((vec2<f32>(x_3596.x, x_3596.y) * vec2<f32>(x_3599.z, x_3599.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3603 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3602.x, x_3602.y, x_3603.z, x_3603.w);
            let x_3605 : vec4<f32> = u_xlat11;
            let x_3607 : vec2<f32> = floor(vec2<f32>(x_3605.x, x_3605.y));
            let x_3608 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3607.x, x_3607.y, x_3608.z, x_3608.w);
            let x_3610 : vec4<f32> = u_xlat10;
            let x_3613 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3616 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3610.x, x_3610.y) * vec2<f32>(x_3613.z, x_3613.w)) + -(vec2<f32>(x_3616.x, x_3616.y)));
            let x_3620 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3620.x, x_3620.x, x_3620.y, x_3620.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3623 : vec4<f32> = u_xlat12;
            let x_3625 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3623.x, x_3623.x, x_3623.z, x_3623.z) * vec4<f32>(x_3625.x, x_3625.x, x_3625.z, x_3625.z));
            let x_3628 : vec4<f32> = u_xlat13;
            let x_3630 : vec2<f32> = (vec2<f32>(x_3628.y, x_3628.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3631 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3631.x, x_3630.x, x_3631.z, x_3630.y);
            let x_3633 : vec4<f32> = u_xlat13;
            let x_3636 : vec2<f32> = u_xlat61;
            let x_3638 : vec2<f32> = ((vec2<f32>(x_3633.x, x_3633.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3636));
            let x_3639 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3638.x, x_3639.y, x_3638.y, x_3639.w);
            let x_3641 : vec2<f32> = u_xlat61;
            let x_3643 : vec2<f32> = (-(x_3641) + vec2<f32>(1.0f, 1.0f));
            let x_3644 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3643.x, x_3643.y, x_3644.z, x_3644.w);
            let x_3646 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3646, vec2<f32>(0.0f, 0.0f));
            let x_3648 : vec2<f32> = u_xlat63;
            let x_3650 : vec2<f32> = u_xlat63;
            let x_3652 : vec4<f32> = u_xlat13;
            let x_3654 : vec2<f32> = ((-(x_3648) * x_3650) + vec2<f32>(x_3652.x, x_3652.y));
            let x_3655 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3654.x, x_3654.y, x_3655.z, x_3655.w);
            let x_3657 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3657, vec2<f32>(0.0f, 0.0f));
            let x_3660 : vec2<f32> = u_xlat63;
            let x_3662 : vec2<f32> = u_xlat63;
            let x_3664 : vec4<f32> = u_xlat12;
            let x_3666 : vec2<f32> = ((-(x_3660) * x_3662) + vec2<f32>(x_3664.y, x_3664.w));
            let x_3667 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3666.x, x_3667.y, x_3666.y);
            let x_3669 : vec4<f32> = u_xlat13;
            let x_3671 : vec2<f32> = (vec2<f32>(x_3669.x, x_3669.y) + vec2<f32>(2.0f, 2.0f));
            let x_3672 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3671.x, x_3671.y, x_3672.z, x_3672.w);
            let x_3674 : vec3<f32> = u_xlat37;
            let x_3676 : vec2<f32> = (vec2<f32>(x_3674.x, x_3674.z) + vec2<f32>(2.0f, 2.0f));
            let x_3677 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3677.x, x_3676.x, x_3677.z, x_3676.y);
            let x_3680 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3680 * 0.08163200318813323975f);
            let x_3683 : vec4<f32> = u_xlat12;
            let x_3685 : vec3<f32> = (vec3<f32>(x_3683.z, x_3683.x, x_3683.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3686 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3685.x, x_3685.y, x_3685.z, x_3686.w);
            let x_3688 : vec4<f32> = u_xlat13;
            let x_3690 : vec2<f32> = (vec2<f32>(x_3688.x, x_3688.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3691 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3690.x, x_3690.y, x_3691.z, x_3691.w);
            let x_3694 : f32 = u_xlat16.y;
            u_xlat15.x = x_3694;
            let x_3696 : vec2<f32> = u_xlat61;
            let x_3699 : vec2<f32> = ((vec2<f32>(x_3696.x, x_3696.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3700 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3700.x, x_3699.x, x_3700.z, x_3699.y);
            let x_3702 : vec2<f32> = u_xlat61;
            let x_3705 : vec2<f32> = ((vec2<f32>(x_3702.x, x_3702.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3706 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3705.x, x_3706.y, x_3705.y, x_3706.w);
            let x_3709 : f32 = u_xlat12.x;
            u_xlat13.y = x_3709;
            let x_3712 : f32 = u_xlat14.y;
            u_xlat13.w = x_3712;
            let x_3714 : vec4<f32> = u_xlat13;
            let x_3715 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3714 + x_3715);
            let x_3717 : vec2<f32> = u_xlat61;
            let x_3720 : vec2<f32> = ((vec2<f32>(x_3717.y, x_3717.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3721 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3721.x, x_3720.x, x_3721.z, x_3720.y);
            let x_3723 : vec2<f32> = u_xlat61;
            let x_3726 : vec2<f32> = ((vec2<f32>(x_3723.y, x_3723.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3727 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3726.x, x_3727.y, x_3726.y, x_3727.w);
            let x_3730 : f32 = u_xlat12.y;
            u_xlat14.y = x_3730;
            let x_3732 : vec4<f32> = u_xlat14;
            let x_3733 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3732 + x_3733);
            let x_3735 : vec4<f32> = u_xlat13;
            let x_3736 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3735 / x_3736);
            let x_3738 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3738 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3740 : vec4<f32> = u_xlat14;
            let x_3741 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3740 / x_3741);
            let x_3743 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3743 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3745 : vec4<f32> = u_xlat13;
            let x_3748 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3745.w, x_3745.x, x_3745.y, x_3745.z) * vec4<f32>(x_3748.x, x_3748.x, x_3748.x, x_3748.x));
            let x_3751 : vec4<f32> = u_xlat14;
            let x_3754 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3751.x, x_3751.w, x_3751.y, x_3751.z) * vec4<f32>(x_3754.y, x_3754.y, x_3754.y, x_3754.y));
            let x_3757 : vec4<f32> = u_xlat13;
            let x_3758 : vec3<f32> = vec3<f32>(x_3757.y, x_3757.z, x_3757.w);
            let x_3759 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3758.x, x_3759.y, x_3758.y, x_3758.z);
            let x_3762 : f32 = u_xlat14.x;
            u_xlat16.y = x_3762;
            let x_3764 : vec4<f32> = u_xlat11;
            let x_3767 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3770 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3764.x, x_3764.y, x_3764.x, x_3764.y) * vec4<f32>(x_3767.x, x_3767.y, x_3767.x, x_3767.y)) + vec4<f32>(x_3770.x, x_3770.y, x_3770.z, x_3770.y));
            let x_3773 : vec4<f32> = u_xlat11;
            let x_3776 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3779 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3773.x, x_3773.y) * vec2<f32>(x_3776.x, x_3776.y)) + vec2<f32>(x_3779.w, x_3779.y));
            let x_3783 : f32 = u_xlat16.y;
            u_xlat13.y = x_3783;
            let x_3786 : f32 = u_xlat14.z;
            u_xlat16.y = x_3786;
            let x_3788 : vec4<f32> = u_xlat11;
            let x_3791 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3794 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3788.x, x_3788.y, x_3788.x, x_3788.y) * vec4<f32>(x_3791.x, x_3791.y, x_3791.x, x_3791.y)) + vec4<f32>(x_3794.x, x_3794.y, x_3794.z, x_3794.y));
            let x_3797 : vec4<f32> = u_xlat11;
            let x_3800 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3803 : vec4<f32> = u_xlat16;
            let x_3805 : vec2<f32> = ((vec2<f32>(x_3797.x, x_3797.y) * vec2<f32>(x_3800.x, x_3800.y)) + vec2<f32>(x_3803.w, x_3803.y));
            let x_3806 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3805.x, x_3805.y, x_3806.z, x_3806.w);
            let x_3809 : f32 = u_xlat16.y;
            u_xlat13.z = x_3809;
            let x_3812 : vec4<f32> = u_xlat11;
            let x_3815 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3818 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3812.x, x_3812.y, x_3812.x, x_3812.y) * vec4<f32>(x_3815.x, x_3815.y, x_3815.x, x_3815.y)) + vec4<f32>(x_3818.x, x_3818.y, x_3818.x, x_3818.z));
            let x_3822 : f32 = u_xlat14.w;
            u_xlat16.y = x_3822;
            let x_3825 : vec4<f32> = u_xlat11;
            let x_3828 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3831 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3825.x, x_3825.y, x_3825.x, x_3825.y) * vec4<f32>(x_3828.x, x_3828.y, x_3828.x, x_3828.y)) + vec4<f32>(x_3831.x, x_3831.y, x_3831.z, x_3831.y));
            let x_3835 : vec4<f32> = u_xlat11;
            let x_3838 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3841 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3835.x, x_3835.y) * vec2<f32>(x_3838.x, x_3838.y)) + vec2<f32>(x_3841.w, x_3841.y));
            let x_3845 : f32 = u_xlat16.y;
            u_xlat13.w = x_3845;
            let x_3848 : vec4<f32> = u_xlat11;
            let x_3851 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3854 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3848.x, x_3848.y) * vec2<f32>(x_3851.x, x_3851.y)) + vec2<f32>(x_3854.x, x_3854.w));
            let x_3857 : vec4<f32> = u_xlat16;
            let x_3858 : vec3<f32> = vec3<f32>(x_3857.x, x_3857.z, x_3857.w);
            let x_3859 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3858.x, x_3859.y, x_3858.y, x_3858.z);
            let x_3861 : vec4<f32> = u_xlat11;
            let x_3864 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3867 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3861.x, x_3861.y, x_3861.x, x_3861.y) * vec4<f32>(x_3864.x, x_3864.y, x_3864.x, x_3864.y)) + vec4<f32>(x_3867.x, x_3867.y, x_3867.z, x_3867.y));
            let x_3870 : vec4<f32> = u_xlat11;
            let x_3873 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3876 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3870.x, x_3870.y) * vec2<f32>(x_3873.x, x_3873.y)) + vec2<f32>(x_3876.w, x_3876.y));
            let x_3880 : f32 = u_xlat13.x;
            u_xlat14.x = x_3880;
            let x_3882 : vec4<f32> = u_xlat11;
            let x_3885 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3888 : vec4<f32> = u_xlat14;
            let x_3890 : vec2<f32> = ((vec2<f32>(x_3882.x, x_3882.y) * vec2<f32>(x_3885.x, x_3885.y)) + vec2<f32>(x_3888.x, x_3888.y));
            let x_3891 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3890.x, x_3890.y, x_3891.z, x_3891.w);
            let x_3894 : vec4<f32> = u_xlat12;
            let x_3896 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3894.x, x_3894.x, x_3894.x, x_3894.x) * x_3896);
            let x_3899 : vec4<f32> = u_xlat12;
            let x_3901 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3899.y, x_3899.y, x_3899.y, x_3899.y) * x_3901);
            let x_3904 : vec4<f32> = u_xlat12;
            let x_3906 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3904.z, x_3904.z, x_3904.z, x_3904.z) * x_3906);
            let x_3908 : vec4<f32> = u_xlat12;
            let x_3910 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3908.w, x_3908.w, x_3908.w, x_3908.w) * x_3910);
            let x_3913 : vec4<f32> = u_xlat17;
            let x_3914 : vec2<f32> = vec2<f32>(x_3913.x, x_3913.y);
            let x_3916 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3914.x, x_3914.y, x_3916);
            let x_3923 : vec3<f32> = txVec43;
            let x_3925 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3923.xy, x_3923.z);
            u_xlat84 = x_3925;
            let x_3927 : vec4<f32> = u_xlat17;
            let x_3928 : vec2<f32> = vec2<f32>(x_3927.z, x_3927.w);
            let x_3930 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3928.x, x_3928.y, x_3930);
            let x_3937 : vec3<f32> = txVec44;
            let x_3939 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3937.xy, x_3937.z);
            u_xlat85 = x_3939;
            let x_3940 : f32 = u_xlat85;
            let x_3942 : f32 = u_xlat22.y;
            u_xlat85 = (x_3940 * x_3942);
            let x_3945 : f32 = u_xlat22.x;
            let x_3946 : f32 = u_xlat84;
            let x_3948 : f32 = u_xlat85;
            u_xlat84 = ((x_3945 * x_3946) + x_3948);
            let x_3951 : vec2<f32> = u_xlat61;
            let x_3953 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3951.x, x_3951.y, x_3953);
            let x_3960 : vec3<f32> = txVec45;
            let x_3962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3960.xy, x_3960.z);
            u_xlat85 = x_3962;
            let x_3964 : f32 = u_xlat22.z;
            let x_3965 : f32 = u_xlat85;
            let x_3967 : f32 = u_xlat84;
            u_xlat84 = ((x_3964 * x_3965) + x_3967);
            let x_3970 : vec4<f32> = u_xlat20;
            let x_3971 : vec2<f32> = vec2<f32>(x_3970.x, x_3970.y);
            let x_3973 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3971.x, x_3971.y, x_3973);
            let x_3980 : vec3<f32> = txVec46;
            let x_3982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3980.xy, x_3980.z);
            u_xlat85 = x_3982;
            let x_3984 : f32 = u_xlat22.w;
            let x_3985 : f32 = u_xlat85;
            let x_3987 : f32 = u_xlat84;
            u_xlat84 = ((x_3984 * x_3985) + x_3987);
            let x_3990 : vec4<f32> = u_xlat18;
            let x_3991 : vec2<f32> = vec2<f32>(x_3990.x, x_3990.y);
            let x_3993 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3991.x, x_3991.y, x_3993);
            let x_4000 : vec3<f32> = txVec47;
            let x_4002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4000.xy, x_4000.z);
            u_xlat85 = x_4002;
            let x_4004 : f32 = u_xlat23.x;
            let x_4005 : f32 = u_xlat85;
            let x_4007 : f32 = u_xlat84;
            u_xlat84 = ((x_4004 * x_4005) + x_4007);
            let x_4010 : vec4<f32> = u_xlat18;
            let x_4011 : vec2<f32> = vec2<f32>(x_4010.z, x_4010.w);
            let x_4013 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_4011.x, x_4011.y, x_4013);
            let x_4020 : vec3<f32> = txVec48;
            let x_4022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4020.xy, x_4020.z);
            u_xlat85 = x_4022;
            let x_4024 : f32 = u_xlat23.y;
            let x_4025 : f32 = u_xlat85;
            let x_4027 : f32 = u_xlat84;
            u_xlat84 = ((x_4024 * x_4025) + x_4027);
            let x_4030 : vec4<f32> = u_xlat19;
            let x_4031 : vec2<f32> = vec2<f32>(x_4030.x, x_4030.y);
            let x_4033 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_4031.x, x_4031.y, x_4033);
            let x_4040 : vec3<f32> = txVec49;
            let x_4042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4040.xy, x_4040.z);
            u_xlat85 = x_4042;
            let x_4044 : f32 = u_xlat23.z;
            let x_4045 : f32 = u_xlat85;
            let x_4047 : f32 = u_xlat84;
            u_xlat84 = ((x_4044 * x_4045) + x_4047);
            let x_4050 : vec4<f32> = u_xlat20;
            let x_4051 : vec2<f32> = vec2<f32>(x_4050.z, x_4050.w);
            let x_4053 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_4051.x, x_4051.y, x_4053);
            let x_4060 : vec3<f32> = txVec50;
            let x_4062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4060.xy, x_4060.z);
            u_xlat85 = x_4062;
            let x_4064 : f32 = u_xlat23.w;
            let x_4065 : f32 = u_xlat85;
            let x_4067 : f32 = u_xlat84;
            u_xlat84 = ((x_4064 * x_4065) + x_4067);
            let x_4070 : vec4<f32> = u_xlat21;
            let x_4071 : vec2<f32> = vec2<f32>(x_4070.x, x_4070.y);
            let x_4073 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4071.x, x_4071.y, x_4073);
            let x_4080 : vec3<f32> = txVec51;
            let x_4082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4080.xy, x_4080.z);
            u_xlat85 = x_4082;
            let x_4084 : f32 = u_xlat24.x;
            let x_4085 : f32 = u_xlat85;
            let x_4087 : f32 = u_xlat84;
            u_xlat84 = ((x_4084 * x_4085) + x_4087);
            let x_4090 : vec4<f32> = u_xlat21;
            let x_4091 : vec2<f32> = vec2<f32>(x_4090.z, x_4090.w);
            let x_4093 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4091.x, x_4091.y, x_4093);
            let x_4100 : vec3<f32> = txVec52;
            let x_4102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4100.xy, x_4100.z);
            u_xlat85 = x_4102;
            let x_4104 : f32 = u_xlat24.y;
            let x_4105 : f32 = u_xlat85;
            let x_4107 : f32 = u_xlat84;
            u_xlat84 = ((x_4104 * x_4105) + x_4107);
            let x_4110 : vec2<f32> = u_xlat38;
            let x_4112 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4110.x, x_4110.y, x_4112);
            let x_4119 : vec3<f32> = txVec53;
            let x_4121 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4119.xy, x_4119.z);
            u_xlat85 = x_4121;
            let x_4123 : f32 = u_xlat24.z;
            let x_4124 : f32 = u_xlat85;
            let x_4126 : f32 = u_xlat84;
            u_xlat84 = ((x_4123 * x_4124) + x_4126);
            let x_4129 : vec2<f32> = u_xlat69;
            let x_4131 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4129.x, x_4129.y, x_4131);
            let x_4138 : vec3<f32> = txVec54;
            let x_4140 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4138.xy, x_4138.z);
            u_xlat85 = x_4140;
            let x_4142 : f32 = u_xlat24.w;
            let x_4143 : f32 = u_xlat85;
            let x_4145 : f32 = u_xlat84;
            u_xlat84 = ((x_4142 * x_4143) + x_4145);
            let x_4148 : vec4<f32> = u_xlat16;
            let x_4149 : vec2<f32> = vec2<f32>(x_4148.x, x_4148.y);
            let x_4151 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4149.x, x_4149.y, x_4151);
            let x_4158 : vec3<f32> = txVec55;
            let x_4160 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4158.xy, x_4158.z);
            u_xlat85 = x_4160;
            let x_4162 : f32 = u_xlat12.x;
            let x_4163 : f32 = u_xlat85;
            let x_4165 : f32 = u_xlat84;
            u_xlat84 = ((x_4162 * x_4163) + x_4165);
            let x_4168 : vec4<f32> = u_xlat16;
            let x_4169 : vec2<f32> = vec2<f32>(x_4168.z, x_4168.w);
            let x_4171 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4169.x, x_4169.y, x_4171);
            let x_4178 : vec3<f32> = txVec56;
            let x_4180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4178.xy, x_4178.z);
            u_xlat85 = x_4180;
            let x_4182 : f32 = u_xlat12.y;
            let x_4183 : f32 = u_xlat85;
            let x_4185 : f32 = u_xlat84;
            u_xlat84 = ((x_4182 * x_4183) + x_4185);
            let x_4188 : vec2<f32> = u_xlat64;
            let x_4190 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4188.x, x_4188.y, x_4190);
            let x_4197 : vec3<f32> = txVec57;
            let x_4199 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4197.xy, x_4197.z);
            u_xlat85 = x_4199;
            let x_4201 : f32 = u_xlat12.z;
            let x_4202 : f32 = u_xlat85;
            let x_4204 : f32 = u_xlat84;
            u_xlat84 = ((x_4201 * x_4202) + x_4204);
            let x_4207 : vec4<f32> = u_xlat11;
            let x_4208 : vec2<f32> = vec2<f32>(x_4207.x, x_4207.y);
            let x_4210 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4208.x, x_4208.y, x_4210);
            let x_4217 : vec3<f32> = txVec58;
            let x_4219 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4217.xy, x_4217.z);
            u_xlat85 = x_4219;
            let x_4221 : f32 = u_xlat12.w;
            let x_4222 : f32 = u_xlat85;
            let x_4224 : f32 = u_xlat84;
            u_xlat83 = ((x_4221 * x_4222) + x_4224);
          }
        }
      } else {
        let x_4228 : vec4<f32> = u_xlat10;
        let x_4229 : vec2<f32> = vec2<f32>(x_4228.x, x_4228.y);
        let x_4231 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4229.x, x_4229.y, x_4231);
        let x_4238 : vec3<f32> = txVec59;
        let x_4240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4238.xy, x_4238.z);
        u_xlat83 = x_4240;
      }
      let x_4241 : i32 = u_xlati80;
      let x_4243 : f32 = x_868.x_AdditionalShadowParams[x_4241].x;
      u_xlat84 = (1.0f + -(x_4243));
      let x_4246 : f32 = u_xlat83;
      let x_4247 : i32 = u_xlati80;
      let x_4249 : f32 = x_868.x_AdditionalShadowParams[x_4247].x;
      let x_4251 : f32 = u_xlat84;
      u_xlat83 = ((x_4246 * x_4249) + x_4251);
      let x_4254 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_4254);
      let x_4257 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_4257 >= 1.0f);
      let x_4260 : bool = u_xlatb84;
      let x_4262 : bool = u_xlatb10.x;
      u_xlatb84 = (x_4260 | x_4262);
      let x_4264 : bool = u_xlatb84;
      let x_4265 : f32 = u_xlat83;
      u_xlat83 = select(x_4265, 1.0f, x_4264);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_4268 : f32 = u_xlat83;
    u_xlat84 = (-(x_4268) + 1.0f);
    let x_4271 : f32 = u_xlat27;
    let x_4272 : f32 = u_xlat84;
    let x_4274 : f32 = u_xlat83;
    u_xlat83 = ((x_4271 * x_4272) + x_4274);
    let x_4276 : f32 = u_xlat81;
    let x_4277 : f32 = u_xlat83;
    u_xlat81 = (x_4276 * x_4277);
    let x_4279 : vec4<f32> = u_xlat1;
    let x_4281 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4279.x, x_4279.y, x_4279.z), vec3<f32>(x_4281.x, x_4281.y, x_4281.z));
    let x_4284 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4284, 0.0f, 1.0f);
    let x_4286 : f32 = u_xlat81;
    let x_4287 : f32 = u_xlat83;
    u_xlat81 = (x_4286 * x_4287);
    let x_4289 : f32 = u_xlat81;
    let x_4291 : i32 = u_xlati80;
    let x_4293 : vec4<f32> = x_2839.x_AdditionalLightsColor[x_4291];
    let x_4295 : vec3<f32> = (vec3<f32>(x_4289, x_4289, x_4289) * vec3<f32>(x_4293.x, x_4293.y, x_4293.z));
    let x_4296 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4295.x, x_4295.y, x_4295.z, x_4296.w);
    let x_4298 : vec4<f32> = u_xlat8;
    let x_4300 : f32 = u_xlat82;
    let x_4303 : vec4<f32> = u_xlat6;
    let x_4305 : vec3<f32> = ((vec3<f32>(x_4298.x, x_4298.y, x_4298.z) * vec3<f32>(x_4300, x_4300, x_4300)) + vec3<f32>(x_4303.x, x_4303.y, x_4303.z));
    let x_4306 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4305.x, x_4305.y, x_4305.z, x_4306.w);
    let x_4308 : vec4<f32> = u_xlat8;
    let x_4310 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_4308.x, x_4308.y, x_4308.z), vec3<f32>(x_4310.x, x_4310.y, x_4310.z));
    let x_4313 : f32 = u_xlat80;
    u_xlat80 = max(x_4313, 1.17549435e-38f);
    let x_4315 : f32 = u_xlat80;
    u_xlat80 = inverseSqrt(x_4315);
    let x_4317 : f32 = u_xlat80;
    let x_4319 : vec4<f32> = u_xlat8;
    let x_4321 : vec3<f32> = (vec3<f32>(x_4317, x_4317, x_4317) * vec3<f32>(x_4319.x, x_4319.y, x_4319.z));
    let x_4322 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4321.x, x_4321.y, x_4321.z, x_4322.w);
    let x_4324 : vec4<f32> = u_xlat1;
    let x_4326 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_4324.x, x_4324.y, x_4324.z), vec3<f32>(x_4326.x, x_4326.y, x_4326.z));
    let x_4329 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4329, 0.0f, 1.0f);
    let x_4331 : vec4<f32> = u_xlat9;
    let x_4333 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_4331.x, x_4331.y, x_4331.z), vec3<f32>(x_4333.x, x_4333.y, x_4333.z));
    let x_4336 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4336, 0.0f, 1.0f);
    let x_4338 : f32 = u_xlat80;
    let x_4339 : f32 = u_xlat80;
    u_xlat80 = (x_4338 * x_4339);
    let x_4341 : f32 = u_xlat80;
    let x_4343 : f32 = u_xlat0.x;
    u_xlat80 = ((x_4341 * x_4343) + 1.00001001358032226562f);
    let x_4346 : f32 = u_xlat81;
    let x_4347 : f32 = u_xlat81;
    u_xlat81 = (x_4346 * x_4347);
    let x_4349 : f32 = u_xlat80;
    let x_4350 : f32 = u_xlat80;
    u_xlat80 = (x_4349 * x_4350);
    let x_4352 : f32 = u_xlat81;
    u_xlat81 = max(x_4352, 0.10000000149011611938f);
    let x_4354 : f32 = u_xlat80;
    let x_4355 : f32 = u_xlat81;
    u_xlat80 = (x_4354 * x_4355);
    let x_4357 : f32 = u_xlat78;
    let x_4358 : f32 = u_xlat80;
    u_xlat80 = (x_4357 * x_4358);
    let x_4360 : f32 = u_xlat76;
    let x_4361 : f32 = u_xlat80;
    u_xlat80 = (x_4360 / x_4361);
    let x_4363 : vec4<f32> = u_xlat5;
    let x_4365 : f32 = u_xlat80;
    let x_4368 : vec4<f32> = u_xlat4;
    let x_4370 : vec3<f32> = ((vec3<f32>(x_4363.x, x_4363.y, x_4363.z) * vec3<f32>(x_4365, x_4365, x_4365)) + vec3<f32>(x_4368.x, x_4368.y, x_4368.z));
    let x_4371 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4370.x, x_4370.y, x_4370.z, x_4371.w);
    let x_4373 : vec4<f32> = u_xlat8;
    let x_4375 : vec4<f32> = u_xlat10;
    let x_4378 : vec4<f32> = u_xlat7;
    let x_4380 : vec3<f32> = ((vec3<f32>(x_4373.x, x_4373.y, x_4373.z) * vec3<f32>(x_4375.x, x_4375.y, x_4375.z)) + vec3<f32>(x_4378.x, x_4378.y, x_4378.z));
    let x_4381 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_4380.x, x_4380.y, x_4380.z, x_4381.w);

    continuing {
      let x_4383 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4383 + bitcast<u32>(1i));
    }
  }
  let x_4385 : vec4<f32> = u_xlat3;
  let x_4387 : f32 = u_xlat25;
  let x_4390 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_4385.x, x_4385.y, x_4385.z) * vec3<f32>(x_4387, x_4387, x_4387)) + vec3<f32>(x_4390.x, x_4390.z, x_4390.w));
  let x_4393 : vec4<f32> = u_xlat7;
  let x_4395 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4393.x, x_4393.y, x_4393.z) + x_4395);
  let x_4399 : f32 = u_xlat75;
  let x_4401 : vec3<f32> = u_xlat0;
  let x_4402 : vec3<f32> = (vec3<f32>(x_4399, x_4399, x_4399) * x_4401);
  let x_4403 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4402.x, x_4402.y, x_4402.z, x_4403.w);
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


