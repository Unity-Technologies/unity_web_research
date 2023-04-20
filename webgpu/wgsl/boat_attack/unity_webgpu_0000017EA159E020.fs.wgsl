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

@group(0) @binding(10) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_58 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

var<private> u_xlat75 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

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

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_868 : LightShadows;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat27 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1048 : UnityPerDraw;

var<private> u_xlat77 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb79 : bool;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb27 : bool;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu0 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2865 : AdditionalLights;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlati82 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(12) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

var<private> u_xlatu76 : u32;

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
  var x_2458 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2996 : f32;
  var x_3006 : f32;
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
  u_xlat2.x = dot(x_972, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_978 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_978) + 4.0f);
  let x_985 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_985);
  let x_989 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_989) << bitcast<u32>(2i));
  let x_993 : vec3<f32> = vs_TEXCOORD7;
  let x_995 : i32 = u_xlati2;
  let x_998 : i32 = u_xlati2;
  let x_1002 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_995 + 1i) / 4i)][((x_998 + 1i) % 4i)];
  u_xlat27 = (vec3<f32>(x_993.y, x_993.y, x_993.y) * vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : i32 = u_xlati2;
  let x_1007 : i32 = u_xlati2;
  let x_1010 : vec4<f32> = x_868.x_MainLightWorldToShadow[(x_1005 / 4i)][(x_1007 % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.x, x_1012.x, x_1012.x)) + x_1015);
  let x_1017 : i32 = u_xlati2;
  let x_1020 : i32 = u_xlati2;
  let x_1024 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1017 + 2i) / 4i)][((x_1020 + 2i) % 4i)];
  let x_1026 : vec3<f32> = vs_TEXCOORD7;
  let x_1029 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.z, x_1026.z, x_1026.z)) + x_1029);
  let x_1031 : vec3<f32> = u_xlat27;
  let x_1032 : i32 = u_xlati2;
  let x_1035 : i32 = u_xlati2;
  let x_1039 : vec4<f32> = x_868.x_MainLightWorldToShadow[((x_1032 + 3i) / 4i)][((x_1035 + 3i) % 4i)];
  let x_1041 : vec3<f32> = (x_1031 + vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  u_xlat1.w = 1.0f;
  let x_1050 : vec4<f32> = x_1048.unity_SHAr;
  let x_1051 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1050, x_1051);
  let x_1055 : vec4<f32> = x_1048.unity_SHAg;
  let x_1056 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1055, x_1056);
  let x_1060 : vec4<f32> = x_1048.unity_SHAb;
  let x_1061 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1060, x_1061);
  let x_1064 : vec4<f32> = u_xlat1;
  let x_1066 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1064.y, x_1064.z, x_1064.z, x_1064.x) * vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1066.z));
  let x_1070 : vec4<f32> = x_1048.unity_SHBr;
  let x_1071 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1070, x_1071);
  let x_1075 : vec4<f32> = x_1048.unity_SHBg;
  let x_1076 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1075, x_1076);
  let x_1080 : vec4<f32> = x_1048.unity_SHBb;
  let x_1081 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1080, x_1081);
  let x_1085 : f32 = u_xlat1.y;
  let x_1087 : f32 = u_xlat1.y;
  u_xlat76 = (x_1085 * x_1087);
  let x_1090 : f32 = u_xlat1.x;
  let x_1092 : f32 = u_xlat1.x;
  let x_1094 : f32 = u_xlat76;
  u_xlat76 = ((x_1090 * x_1092) + -(x_1094));
  let x_1099 : vec4<f32> = x_1048.unity_SHC;
  let x_1101 : f32 = u_xlat76;
  let x_1104 : vec4<f32> = u_xlat6;
  let x_1106 : vec3<f32> = ((vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(x_1101, x_1101, x_1101)) + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1109 : vec4<f32> = u_xlat3;
  let x_1111 : vec4<f32> = u_xlat4;
  let x_1113 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) + vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
  let x_1114 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1116 : vec4<f32> = u_xlat3;
  let x_1118 : vec3<f32> = max(vec3<f32>(x_1116.x, x_1116.y, x_1116.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1122 : f32 = u_xlat0.x;
  u_xlat76 = ((-(x_1122) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_1128 : f32 = u_xlat76;
  u_xlat77 = (-(x_1128) + 1.0f);
  let x_1131 : f32 = u_xlat76;
  let x_1133 : vec4<f32> = u_xlat5;
  let x_1135 : vec3<f32> = (vec3<f32>(x_1131, x_1131, x_1131) * vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat5;
  let x_1142 : vec3<f32> = (vec3<f32>(x_1138.x, x_1138.y, x_1138.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_1143 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : vec3<f32> = u_xlat0;
  let x_1147 : vec4<f32> = u_xlat5;
  let x_1152 : vec3<f32> = ((vec3<f32>(x_1145.x, x_1145.x, x_1145.x) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_1153 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : f32 = u_xlat50;
  u_xlat0.x = (-(x_1155) + 1.0f);
  let x_1160 : f32 = u_xlat0.x;
  let x_1162 : f32 = u_xlat0.x;
  u_xlat76 = (x_1160 * x_1162);
  let x_1164 : f32 = u_xlat76;
  u_xlat76 = max(x_1164, 0.0078125f);
  let x_1168 : f32 = u_xlat76;
  let x_1169 : f32 = u_xlat76;
  u_xlat78 = (x_1168 * x_1169);
  let x_1171 : f32 = u_xlat50;
  let x_1172 : f32 = u_xlat77;
  u_xlat50 = (x_1171 + x_1172);
  let x_1174 : f32 = u_xlat50;
  u_xlat50 = clamp(x_1174, 0.0f, 1.0f);
  let x_1176 : f32 = u_xlat76;
  u_xlat77 = ((x_1176 * 4.0f) + 2.0f);
  let x_1179 : f32 = u_xlat25;
  u_xlat25 = min(x_1179, 1.0f);
  let x_1183 : f32 = x_868.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_1183);
  let x_1185 : bool = u_xlatb79;
  if (x_1185) {
    let x_1189 : f32 = x_868.x_MainLightShadowParams.y;
    u_xlatb79 = (x_1189 == 1.0f);
    let x_1191 : bool = u_xlatb79;
    if (x_1191) {
      let x_1194 : vec4<f32> = u_xlat2;
      let x_1197 : vec4<f32> = x_868.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y) + x_1197);
      let x_1201 : vec4<f32> = u_xlat6;
      let x_1202 : vec2<f32> = vec2<f32>(x_1201.x, x_1201.y);
      let x_1204 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
      let x_1216 : vec3<f32> = txVec0;
      let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1216.xy, x_1216.z);
      u_xlat7.x = x_1218;
      let x_1221 : vec4<f32> = u_xlat6;
      let x_1222 : vec2<f32> = vec2<f32>(x_1221.z, x_1221.w);
      let x_1224 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_1222.x, x_1222.y, x_1224);
      let x_1231 : vec3<f32> = txVec1;
      let x_1233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1231.xy, x_1231.z);
      u_xlat7.y = x_1233;
      let x_1235 : vec4<f32> = u_xlat2;
      let x_1238 : vec4<f32> = x_868.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y) + x_1238);
      let x_1241 : vec4<f32> = u_xlat6;
      let x_1242 : vec2<f32> = vec2<f32>(x_1241.x, x_1241.y);
      let x_1244 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
      let x_1251 : vec3<f32> = txVec2;
      let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
      u_xlat7.z = x_1253;
      let x_1256 : vec4<f32> = u_xlat6;
      let x_1257 : vec2<f32> = vec2<f32>(x_1256.z, x_1256.w);
      let x_1259 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_1257.x, x_1257.y, x_1259);
      let x_1266 : vec3<f32> = txVec3;
      let x_1268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1266.xy, x_1266.z);
      u_xlat7.w = x_1268;
      let x_1271 : vec4<f32> = u_xlat7;
      u_xlat79 = dot(x_1271, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1278 : f32 = x_868.x_MainLightShadowParams.y;
      u_xlatb80 = (x_1278 == 2.0f);
      let x_1280 : bool = u_xlatb80;
      if (x_1280) {
        let x_1283 : vec4<f32> = u_xlat2;
        let x_1286 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1289 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.y) * vec2<f32>(x_1286.z, x_1286.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1290 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1294 : vec2<f32> = floor(vec2<f32>(x_1292.x, x_1292.y));
        let x_1295 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        let x_1299 : vec4<f32> = u_xlat2;
        let x_1302 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.z, x_1302.w)) + -(vec2<f32>(x_1305.x, x_1305.y)));
        let x_1309 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1309.x, x_1309.x, x_1309.y, x_1309.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1313 : vec4<f32> = u_xlat7;
        let x_1315 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1313.x, x_1313.x, x_1313.z, x_1313.z) * vec4<f32>(x_1315.x, x_1315.x, x_1315.z, x_1315.z));
        let x_1318 : vec4<f32> = u_xlat8;
        let x_1322 : vec2<f32> = (vec2<f32>(x_1318.y, x_1318.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1323 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1322.x, x_1323.y, x_1322.y, x_1323.w);
        let x_1325 : vec4<f32> = u_xlat8;
        let x_1328 : vec2<f32> = u_xlat56;
        let x_1330 : vec2<f32> = ((vec2<f32>(x_1325.x, x_1325.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1328));
        let x_1331 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1331.w);
        let x_1334 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_1334) + vec2<f32>(1.0f, 1.0f));
        let x_1338 : vec2<f32> = u_xlat56;
        let x_1340 : vec2<f32> = min(x_1338, vec2<f32>(0.0f, 0.0f));
        let x_1341 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1340.x, x_1340.y, x_1341.z, x_1341.w);
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1349 : vec2<f32> = u_xlat58;
        let x_1350 : vec2<f32> = ((-(vec2<f32>(x_1343.x, x_1343.y)) * vec2<f32>(x_1346.x, x_1346.y)) + x_1349);
        let x_1351 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_1353, vec2<f32>(0.0f, 0.0f));
        let x_1355 : vec2<f32> = u_xlat56;
        let x_1357 : vec2<f32> = u_xlat56;
        let x_1359 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_1355) * x_1357) + vec2<f32>(x_1359.y, x_1359.w));
        let x_1362 : vec4<f32> = u_xlat9;
        let x_1364 : vec2<f32> = (vec2<f32>(x_1362.x, x_1362.y) + vec2<f32>(1.0f, 1.0f));
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
        let x_1367 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_1367 + vec2<f32>(1.0f, 1.0f));
        let x_1369 : vec4<f32> = u_xlat8;
        let x_1373 : vec2<f32> = (vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1374 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1373.x, x_1373.y, x_1374.z, x_1374.w);
        let x_1376 : vec2<f32> = u_xlat58;
        let x_1377 : vec2<f32> = (x_1376 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1378 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1377.x, x_1377.y, x_1378.z, x_1378.w);
        let x_1380 : vec4<f32> = u_xlat9;
        let x_1382 : vec2<f32> = (vec2<f32>(x_1380.x, x_1380.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1383 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1382.x, x_1382.y, x_1383.z, x_1383.w);
        let x_1385 : vec2<f32> = u_xlat56;
        let x_1386 : vec2<f32> = (x_1385 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1387 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1386.x, x_1386.y, x_1387.z, x_1387.w);
        let x_1389 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_1389.y, x_1389.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1393 : f32 = u_xlat9.x;
        u_xlat10.z = x_1393;
        let x_1396 : f32 = u_xlat56.x;
        u_xlat10.w = x_1396;
        let x_1399 : f32 = u_xlat11.x;
        u_xlat8.z = x_1399;
        let x_1402 : f32 = u_xlat7.x;
        u_xlat8.w = x_1402;
        let x_1404 : vec4<f32> = u_xlat8;
        let x_1406 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1404.z, x_1404.w, x_1404.x, x_1404.z) + vec4<f32>(x_1406.z, x_1406.w, x_1406.x, x_1406.z));
        let x_1410 : f32 = u_xlat10.y;
        u_xlat9.z = x_1410;
        let x_1413 : f32 = u_xlat56.y;
        u_xlat9.w = x_1413;
        let x_1416 : f32 = u_xlat8.y;
        u_xlat11.z = x_1416;
        let x_1419 : f32 = u_xlat7.z;
        u_xlat11.w = x_1419;
        let x_1421 : vec4<f32> = u_xlat9;
        let x_1423 : vec4<f32> = u_xlat11;
        let x_1425 : vec3<f32> = (vec3<f32>(x_1421.z, x_1421.y, x_1421.w) + vec3<f32>(x_1423.z, x_1423.y, x_1423.w));
        let x_1426 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
        let x_1428 : vec4<f32> = u_xlat8;
        let x_1430 : vec4<f32> = u_xlat12;
        let x_1432 : vec3<f32> = (vec3<f32>(x_1428.x, x_1428.z, x_1428.w) / vec3<f32>(x_1430.z, x_1430.w, x_1430.y));
        let x_1433 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
        let x_1435 : vec4<f32> = u_xlat8;
        let x_1441 : vec3<f32> = (vec3<f32>(x_1435.x, x_1435.y, x_1435.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1442.w);
        let x_1444 : vec4<f32> = u_xlat11;
        let x_1446 : vec4<f32> = u_xlat7;
        let x_1448 : vec3<f32> = (vec3<f32>(x_1444.z, x_1444.y, x_1444.w) / vec3<f32>(x_1446.x, x_1446.y, x_1446.z));
        let x_1449 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1449.w);
        let x_1451 : vec4<f32> = u_xlat9;
        let x_1453 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1454 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
        let x_1456 : vec4<f32> = u_xlat8;
        let x_1459 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1461 : vec3<f32> = (vec3<f32>(x_1456.y, x_1456.x, x_1456.z) * vec3<f32>(x_1459.x, x_1459.x, x_1459.x));
        let x_1462 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
        let x_1464 : vec4<f32> = u_xlat9;
        let x_1467 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1469 : vec3<f32> = (vec3<f32>(x_1464.x, x_1464.y, x_1464.z) * vec3<f32>(x_1467.y, x_1467.y, x_1467.y));
        let x_1470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
        let x_1473 : f32 = u_xlat9.x;
        u_xlat8.w = x_1473;
        let x_1475 : vec4<f32> = u_xlat6;
        let x_1478 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1481 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1475.x, x_1475.y, x_1475.x, x_1475.y) * vec4<f32>(x_1478.x, x_1478.y, x_1478.x, x_1478.y)) + vec4<f32>(x_1481.y, x_1481.w, x_1481.x, x_1481.w));
        let x_1484 : vec4<f32> = u_xlat6;
        let x_1487 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1490 : vec4<f32> = u_xlat8;
        u_xlat56 = ((vec2<f32>(x_1484.x, x_1484.y) * vec2<f32>(x_1487.x, x_1487.y)) + vec2<f32>(x_1490.z, x_1490.w));
        let x_1494 : f32 = u_xlat8.y;
        u_xlat9.w = x_1494;
        let x_1496 : vec4<f32> = u_xlat9;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.y, x_1496.z);
        let x_1498 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1498.x, x_1497.x, x_1498.z, x_1497.y);
        let x_1500 : vec4<f32> = u_xlat6;
        let x_1503 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1506 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1500.x, x_1500.y, x_1500.x, x_1500.y) * vec4<f32>(x_1503.x, x_1503.y, x_1503.x, x_1503.y)) + vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1506.y));
        let x_1509 : vec4<f32> = u_xlat6;
        let x_1512 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1515 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1509.x, x_1509.y, x_1509.x, x_1509.y) * vec4<f32>(x_1512.x, x_1512.y, x_1512.x, x_1512.y)) + vec4<f32>(x_1515.w, x_1515.y, x_1515.w, x_1515.z));
        let x_1518 : vec4<f32> = u_xlat6;
        let x_1521 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1524 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1518.x, x_1518.y, x_1518.x, x_1518.y) * vec4<f32>(x_1521.x, x_1521.y, x_1521.x, x_1521.y)) + vec4<f32>(x_1524.x, x_1524.w, x_1524.z, x_1524.w));
        let x_1527 : vec4<f32> = u_xlat7;
        let x_1529 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1527.x, x_1527.x, x_1527.x, x_1527.y) * vec4<f32>(x_1529.z, x_1529.w, x_1529.y, x_1529.z));
        let x_1533 : vec4<f32> = u_xlat7;
        let x_1535 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1533.y, x_1533.y, x_1533.z, x_1533.z) * x_1535);
        let x_1539 : f32 = u_xlat7.z;
        let x_1541 : f32 = u_xlat12.y;
        u_xlat80 = (x_1539 * x_1541);
        let x_1544 : vec4<f32> = u_xlat10;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.x, x_1544.y);
        let x_1547 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec4;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1554.xy, x_1554.z);
        u_xlat6.x = x_1556;
        let x_1559 : vec4<f32> = u_xlat10;
        let x_1560 : vec2<f32> = vec2<f32>(x_1559.z, x_1559.w);
        let x_1562 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_1560.x, x_1560.y, x_1562);
        let x_1570 : vec3<f32> = txVec5;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1570.xy, x_1570.z);
        u_xlat31 = x_1572;
        let x_1573 : f32 = u_xlat31;
        let x_1575 : f32 = u_xlat13.y;
        u_xlat31 = (x_1573 * x_1575);
        let x_1578 : f32 = u_xlat13.x;
        let x_1580 : f32 = u_xlat6.x;
        let x_1582 : f32 = u_xlat31;
        u_xlat6.x = ((x_1578 * x_1580) + x_1582);
        let x_1586 : vec2<f32> = u_xlat56;
        let x_1588 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec6;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1595.xy, x_1595.z);
        u_xlat31 = x_1597;
        let x_1599 : f32 = u_xlat13.z;
        let x_1600 : f32 = u_xlat31;
        let x_1603 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1599 * x_1600) + x_1603);
        let x_1607 : vec4<f32> = u_xlat9;
        let x_1608 : vec2<f32> = vec2<f32>(x_1607.x, x_1607.y);
        let x_1610 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec7;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1617.xy, x_1617.z);
        u_xlat31 = x_1619;
        let x_1621 : f32 = u_xlat13.w;
        let x_1622 : f32 = u_xlat31;
        let x_1625 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1621 * x_1622) + x_1625);
        let x_1629 : vec4<f32> = u_xlat11;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec8;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1639.xy, x_1639.z);
        u_xlat31 = x_1641;
        let x_1643 : f32 = u_xlat14.x;
        let x_1644 : f32 = u_xlat31;
        let x_1647 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1643 * x_1644) + x_1647);
        let x_1651 : vec4<f32> = u_xlat11;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.z, x_1651.w);
        let x_1654 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec9;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1661.xy, x_1661.z);
        u_xlat31 = x_1663;
        let x_1665 : f32 = u_xlat14.y;
        let x_1666 : f32 = u_xlat31;
        let x_1669 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1665 * x_1666) + x_1669);
        let x_1673 : vec4<f32> = u_xlat9;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.z, x_1673.w);
        let x_1676 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec10;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1683.xy, x_1683.z);
        u_xlat31 = x_1685;
        let x_1687 : f32 = u_xlat14.z;
        let x_1688 : f32 = u_xlat31;
        let x_1691 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1687 * x_1688) + x_1691);
        let x_1695 : vec4<f32> = u_xlat8;
        let x_1696 : vec2<f32> = vec2<f32>(x_1695.x, x_1695.y);
        let x_1698 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec11;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1705.xy, x_1705.z);
        u_xlat31 = x_1707;
        let x_1709 : f32 = u_xlat14.w;
        let x_1710 : f32 = u_xlat31;
        let x_1713 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1709 * x_1710) + x_1713);
        let x_1717 : vec4<f32> = u_xlat8;
        let x_1718 : vec2<f32> = vec2<f32>(x_1717.z, x_1717.w);
        let x_1720 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1718.x, x_1718.y, x_1720);
        let x_1727 : vec3<f32> = txVec12;
        let x_1729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1727.xy, x_1727.z);
        u_xlat31 = x_1729;
        let x_1730 : f32 = u_xlat80;
        let x_1731 : f32 = u_xlat31;
        let x_1734 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1730 * x_1731) + x_1734);
      } else {
        let x_1737 : vec4<f32> = u_xlat2;
        let x_1740 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1743 : vec2<f32> = ((vec2<f32>(x_1737.x, x_1737.y) * vec2<f32>(x_1740.z, x_1740.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1744 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
        let x_1746 : vec4<f32> = u_xlat6;
        let x_1748 : vec2<f32> = floor(vec2<f32>(x_1746.x, x_1746.y));
        let x_1749 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1748.x, x_1748.y, x_1749.z, x_1749.w);
        let x_1751 : vec4<f32> = u_xlat2;
        let x_1754 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1757 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1751.x, x_1751.y) * vec2<f32>(x_1754.z, x_1754.w)) + -(vec2<f32>(x_1757.x, x_1757.y)));
        let x_1761 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1761.x, x_1761.x, x_1761.y, x_1761.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1764 : vec4<f32> = u_xlat7;
        let x_1766 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1764.x, x_1764.x, x_1764.z, x_1764.z) * vec4<f32>(x_1766.x, x_1766.x, x_1766.z, x_1766.z));
        let x_1769 : vec4<f32> = u_xlat8;
        let x_1773 : vec2<f32> = (vec2<f32>(x_1769.y, x_1769.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1774 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1774.x, x_1773.x, x_1774.z, x_1773.y);
        let x_1776 : vec4<f32> = u_xlat8;
        let x_1779 : vec2<f32> = u_xlat56;
        let x_1781 : vec2<f32> = ((vec2<f32>(x_1776.x, x_1776.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1779));
        let x_1782 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1781.x, x_1782.y, x_1781.y, x_1782.w);
        let x_1784 : vec2<f32> = u_xlat56;
        let x_1786 : vec2<f32> = (-(x_1784) + vec2<f32>(1.0f, 1.0f));
        let x_1787 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1786.x, x_1786.y, x_1787.z, x_1787.w);
        let x_1789 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1789, vec2<f32>(0.0f, 0.0f));
        let x_1791 : vec2<f32> = u_xlat58;
        let x_1793 : vec2<f32> = u_xlat58;
        let x_1795 : vec4<f32> = u_xlat8;
        let x_1797 : vec2<f32> = ((-(x_1791) * x_1793) + vec2<f32>(x_1795.x, x_1795.y));
        let x_1798 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1797.x, x_1797.y, x_1798.z, x_1798.w);
        let x_1800 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1800, vec2<f32>(0.0f, 0.0f));
        let x_1803 : vec2<f32> = u_xlat58;
        let x_1805 : vec2<f32> = u_xlat58;
        let x_1807 : vec4<f32> = u_xlat7;
        let x_1809 : vec2<f32> = ((-(x_1803) * x_1805) + vec2<f32>(x_1807.y, x_1807.w));
        let x_1810 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1809.x, x_1810.y, x_1809.y);
        let x_1812 : vec4<f32> = u_xlat8;
        let x_1814 : vec2<f32> = (vec2<f32>(x_1812.x, x_1812.y) + vec2<f32>(2.0f, 2.0f));
        let x_1815 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1814.x, x_1814.y, x_1815.z, x_1815.w);
        let x_1817 : vec3<f32> = u_xlat32;
        let x_1819 : vec2<f32> = (vec2<f32>(x_1817.x, x_1817.z) + vec2<f32>(2.0f, 2.0f));
        let x_1820 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1820.x, x_1819.x, x_1820.z, x_1819.y);
        let x_1823 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1823 * 0.08163200318813323975f);
        let x_1827 : vec4<f32> = u_xlat7;
        let x_1830 : vec3<f32> = (vec3<f32>(x_1827.z, x_1827.x, x_1827.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1831 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1830.x, x_1830.y, x_1830.z, x_1831.w);
        let x_1833 : vec4<f32> = u_xlat8;
        let x_1836 : vec2<f32> = (vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1837 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1836.x, x_1836.y, x_1837.z, x_1837.w);
        let x_1840 : f32 = u_xlat11.y;
        u_xlat10.x = x_1840;
        let x_1842 : vec2<f32> = u_xlat56;
        let x_1849 : vec2<f32> = ((vec2<f32>(x_1842.x, x_1842.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1850 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1850.x, x_1849.x, x_1850.z, x_1849.y);
        let x_1852 : vec2<f32> = u_xlat56;
        let x_1856 : vec2<f32> = ((vec2<f32>(x_1852.x, x_1852.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1857 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1856.x, x_1857.y, x_1856.y, x_1857.w);
        let x_1860 : f32 = u_xlat7.x;
        u_xlat8.y = x_1860;
        let x_1863 : f32 = u_xlat9.y;
        u_xlat8.w = x_1863;
        let x_1865 : vec4<f32> = u_xlat8;
        let x_1866 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1865 + x_1866);
        let x_1868 : vec2<f32> = u_xlat56;
        let x_1871 : vec2<f32> = ((vec2<f32>(x_1868.y, x_1868.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1872 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1872.x, x_1871.x, x_1872.z, x_1871.y);
        let x_1874 : vec2<f32> = u_xlat56;
        let x_1877 : vec2<f32> = ((vec2<f32>(x_1874.y, x_1874.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1878 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1877.x, x_1878.y, x_1877.y, x_1878.w);
        let x_1881 : f32 = u_xlat7.y;
        u_xlat9.y = x_1881;
        let x_1883 : vec4<f32> = u_xlat9;
        let x_1884 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1883 + x_1884);
        let x_1886 : vec4<f32> = u_xlat8;
        let x_1887 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1886 / x_1887);
        let x_1889 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1889 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1895 : vec4<f32> = u_xlat9;
        let x_1896 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1895 / x_1896);
        let x_1898 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1898 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1900 : vec4<f32> = u_xlat8;
        let x_1903 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1900.w, x_1900.x, x_1900.y, x_1900.z) * vec4<f32>(x_1903.x, x_1903.x, x_1903.x, x_1903.x));
        let x_1906 : vec4<f32> = u_xlat9;
        let x_1909 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1906.x, x_1906.w, x_1906.y, x_1906.z) * vec4<f32>(x_1909.y, x_1909.y, x_1909.y, x_1909.y));
        let x_1912 : vec4<f32> = u_xlat8;
        let x_1913 : vec3<f32> = vec3<f32>(x_1912.y, x_1912.z, x_1912.w);
        let x_1914 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1913.x, x_1914.y, x_1913.y, x_1913.z);
        let x_1917 : f32 = u_xlat9.x;
        u_xlat11.y = x_1917;
        let x_1919 : vec4<f32> = u_xlat6;
        let x_1922 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1925 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1919.x, x_1919.y, x_1919.x, x_1919.y) * vec4<f32>(x_1922.x, x_1922.y, x_1922.x, x_1922.y)) + vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1925.y));
        let x_1928 : vec4<f32> = u_xlat6;
        let x_1931 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1934 : vec4<f32> = u_xlat11;
        u_xlat56 = ((vec2<f32>(x_1928.x, x_1928.y) * vec2<f32>(x_1931.x, x_1931.y)) + vec2<f32>(x_1934.w, x_1934.y));
        let x_1938 : f32 = u_xlat11.y;
        u_xlat8.y = x_1938;
        let x_1941 : f32 = u_xlat9.z;
        u_xlat11.y = x_1941;
        let x_1943 : vec4<f32> = u_xlat6;
        let x_1946 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1949 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1943.x, x_1943.y, x_1943.x, x_1943.y) * vec4<f32>(x_1946.x, x_1946.y, x_1946.x, x_1946.y)) + vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1949.y));
        let x_1952 : vec4<f32> = u_xlat6;
        let x_1955 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1958 : vec4<f32> = u_xlat11;
        let x_1960 : vec2<f32> = ((vec2<f32>(x_1952.x, x_1952.y) * vec2<f32>(x_1955.x, x_1955.y)) + vec2<f32>(x_1958.w, x_1958.y));
        let x_1961 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1960.x, x_1960.y, x_1961.z, x_1961.w);
        let x_1964 : f32 = u_xlat11.y;
        u_xlat8.z = x_1964;
        let x_1967 : vec4<f32> = u_xlat6;
        let x_1970 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1973 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1967.x, x_1967.y, x_1967.x, x_1967.y) * vec4<f32>(x_1970.x, x_1970.y, x_1970.x, x_1970.y)) + vec4<f32>(x_1973.x, x_1973.y, x_1973.x, x_1973.z));
        let x_1977 : f32 = u_xlat9.w;
        u_xlat11.y = x_1977;
        let x_1980 : vec4<f32> = u_xlat6;
        let x_1983 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1986 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1980.x, x_1980.y, x_1980.x, x_1980.y) * vec4<f32>(x_1983.x, x_1983.y, x_1983.x, x_1983.y)) + vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1986.y));
        let x_1990 : vec4<f32> = u_xlat6;
        let x_1993 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_1996 : vec4<f32> = u_xlat11;
        let x_1998 : vec2<f32> = ((vec2<f32>(x_1990.x, x_1990.y) * vec2<f32>(x_1993.x, x_1993.y)) + vec2<f32>(x_1996.w, x_1996.y));
        let x_1999 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1998.x, x_1998.y, x_1999.z);
        let x_2002 : f32 = u_xlat11.y;
        u_xlat8.w = x_2002;
        let x_2005 : vec4<f32> = u_xlat6;
        let x_2008 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2011 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_2005.x, x_2005.y) * vec2<f32>(x_2008.x, x_2008.y)) + vec2<f32>(x_2011.x, x_2011.w));
        let x_2014 : vec4<f32> = u_xlat11;
        let x_2015 : vec3<f32> = vec3<f32>(x_2014.x, x_2014.z, x_2014.w);
        let x_2016 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2015.x, x_2016.y, x_2015.y, x_2015.z);
        let x_2018 : vec4<f32> = u_xlat6;
        let x_2021 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2024 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2018.x, x_2018.y, x_2018.x, x_2018.y) * vec4<f32>(x_2021.x, x_2021.y, x_2021.x, x_2021.y)) + vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2024.y));
        let x_2028 : vec4<f32> = u_xlat6;
        let x_2031 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2034 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_2028.x, x_2028.y) * vec2<f32>(x_2031.x, x_2031.y)) + vec2<f32>(x_2034.w, x_2034.y));
        let x_2038 : f32 = u_xlat8.x;
        u_xlat9.x = x_2038;
        let x_2040 : vec4<f32> = u_xlat6;
        let x_2043 : vec4<f32> = x_868.x_MainLightShadowmapSize;
        let x_2046 : vec4<f32> = u_xlat9;
        let x_2048 : vec2<f32> = ((vec2<f32>(x_2040.x, x_2040.y) * vec2<f32>(x_2043.x, x_2043.y)) + vec2<f32>(x_2046.x, x_2046.y));
        let x_2049 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_2048.x, x_2048.y, x_2049.z, x_2049.w);
        let x_2052 : vec4<f32> = u_xlat7;
        let x_2054 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_2052.x, x_2052.x, x_2052.x, x_2052.x) * x_2054);
        let x_2057 : vec4<f32> = u_xlat7;
        let x_2059 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_2057.y, x_2057.y, x_2057.y, x_2057.y) * x_2059);
        let x_2062 : vec4<f32> = u_xlat7;
        let x_2064 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2062.z, x_2062.z, x_2062.z, x_2062.z) * x_2064);
        let x_2066 : vec4<f32> = u_xlat7;
        let x_2068 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_2066.w, x_2066.w, x_2066.w, x_2066.w) * x_2068);
        let x_2071 : vec4<f32> = u_xlat12;
        let x_2072 : vec2<f32> = vec2<f32>(x_2071.x, x_2071.y);
        let x_2074 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_2072.x, x_2072.y, x_2074);
        let x_2081 : vec3<f32> = txVec13;
        let x_2083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2081.xy, x_2081.z);
        u_xlat80 = x_2083;
        let x_2085 : vec4<f32> = u_xlat12;
        let x_2086 : vec2<f32> = vec2<f32>(x_2085.z, x_2085.w);
        let x_2088 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_2086.x, x_2086.y, x_2088);
        let x_2095 : vec3<f32> = txVec14;
        let x_2097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2095.xy, x_2095.z);
        u_xlat8.x = x_2097;
        let x_2100 : f32 = u_xlat8.x;
        let x_2102 : f32 = u_xlat17.y;
        u_xlat8.x = (x_2100 * x_2102);
        let x_2106 : f32 = u_xlat17.x;
        let x_2107 : f32 = u_xlat80;
        let x_2110 : f32 = u_xlat8.x;
        u_xlat80 = ((x_2106 * x_2107) + x_2110);
        let x_2113 : vec2<f32> = u_xlat56;
        let x_2115 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_2113.x, x_2113.y, x_2115);
        let x_2122 : vec3<f32> = txVec15;
        let x_2124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2122.xy, x_2122.z);
        u_xlat56.x = x_2124;
        let x_2127 : f32 = u_xlat17.z;
        let x_2129 : f32 = u_xlat56.x;
        let x_2131 : f32 = u_xlat80;
        u_xlat80 = ((x_2127 * x_2129) + x_2131);
        let x_2134 : vec4<f32> = u_xlat15;
        let x_2135 : vec2<f32> = vec2<f32>(x_2134.x, x_2134.y);
        let x_2137 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_2135.x, x_2135.y, x_2137);
        let x_2144 : vec3<f32> = txVec16;
        let x_2146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2144.xy, x_2144.z);
        u_xlat56.x = x_2146;
        let x_2149 : f32 = u_xlat17.w;
        let x_2151 : f32 = u_xlat56.x;
        let x_2153 : f32 = u_xlat80;
        u_xlat80 = ((x_2149 * x_2151) + x_2153);
        let x_2156 : vec4<f32> = u_xlat13;
        let x_2157 : vec2<f32> = vec2<f32>(x_2156.x, x_2156.y);
        let x_2159 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_2157.x, x_2157.y, x_2159);
        let x_2166 : vec3<f32> = txVec17;
        let x_2168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2166.xy, x_2166.z);
        u_xlat56.x = x_2168;
        let x_2171 : f32 = u_xlat18.x;
        let x_2173 : f32 = u_xlat56.x;
        let x_2175 : f32 = u_xlat80;
        u_xlat80 = ((x_2171 * x_2173) + x_2175);
        let x_2178 : vec4<f32> = u_xlat13;
        let x_2179 : vec2<f32> = vec2<f32>(x_2178.z, x_2178.w);
        let x_2181 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_2179.x, x_2179.y, x_2181);
        let x_2188 : vec3<f32> = txVec18;
        let x_2190 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2188.xy, x_2188.z);
        u_xlat56.x = x_2190;
        let x_2193 : f32 = u_xlat18.y;
        let x_2195 : f32 = u_xlat56.x;
        let x_2197 : f32 = u_xlat80;
        u_xlat80 = ((x_2193 * x_2195) + x_2197);
        let x_2200 : vec4<f32> = u_xlat14;
        let x_2201 : vec2<f32> = vec2<f32>(x_2200.x, x_2200.y);
        let x_2203 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_2201.x, x_2201.y, x_2203);
        let x_2210 : vec3<f32> = txVec19;
        let x_2212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2210.xy, x_2210.z);
        u_xlat56.x = x_2212;
        let x_2215 : f32 = u_xlat18.z;
        let x_2217 : f32 = u_xlat56.x;
        let x_2219 : f32 = u_xlat80;
        u_xlat80 = ((x_2215 * x_2217) + x_2219);
        let x_2222 : vec4<f32> = u_xlat15;
        let x_2223 : vec2<f32> = vec2<f32>(x_2222.z, x_2222.w);
        let x_2225 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_2223.x, x_2223.y, x_2225);
        let x_2232 : vec3<f32> = txVec20;
        let x_2234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2232.xy, x_2232.z);
        u_xlat56.x = x_2234;
        let x_2237 : f32 = u_xlat18.w;
        let x_2239 : f32 = u_xlat56.x;
        let x_2241 : f32 = u_xlat80;
        u_xlat80 = ((x_2237 * x_2239) + x_2241);
        let x_2244 : vec4<f32> = u_xlat16;
        let x_2245 : vec2<f32> = vec2<f32>(x_2244.x, x_2244.y);
        let x_2247 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_2245.x, x_2245.y, x_2247);
        let x_2254 : vec3<f32> = txVec21;
        let x_2256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2254.xy, x_2254.z);
        u_xlat56.x = x_2256;
        let x_2259 : f32 = u_xlat19.x;
        let x_2261 : f32 = u_xlat56.x;
        let x_2263 : f32 = u_xlat80;
        u_xlat80 = ((x_2259 * x_2261) + x_2263);
        let x_2266 : vec4<f32> = u_xlat16;
        let x_2267 : vec2<f32> = vec2<f32>(x_2266.z, x_2266.w);
        let x_2269 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_2267.x, x_2267.y, x_2269);
        let x_2276 : vec3<f32> = txVec22;
        let x_2278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2276.xy, x_2276.z);
        u_xlat56.x = x_2278;
        let x_2281 : f32 = u_xlat19.y;
        let x_2283 : f32 = u_xlat56.x;
        let x_2285 : f32 = u_xlat80;
        u_xlat80 = ((x_2281 * x_2283) + x_2285);
        let x_2288 : vec3<f32> = u_xlat33;
        let x_2289 : vec2<f32> = vec2<f32>(x_2288.x, x_2288.y);
        let x_2291 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_2289.x, x_2289.y, x_2291);
        let x_2298 : vec3<f32> = txVec23;
        let x_2300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2298.xy, x_2298.z);
        u_xlat56.x = x_2300;
        let x_2303 : f32 = u_xlat19.z;
        let x_2305 : f32 = u_xlat56.x;
        let x_2307 : f32 = u_xlat80;
        u_xlat80 = ((x_2303 * x_2305) + x_2307);
        let x_2310 : vec2<f32> = u_xlat64;
        let x_2312 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_2310.x, x_2310.y, x_2312);
        let x_2319 : vec3<f32> = txVec24;
        let x_2321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2319.xy, x_2319.z);
        u_xlat56.x = x_2321;
        let x_2324 : f32 = u_xlat19.w;
        let x_2326 : f32 = u_xlat56.x;
        let x_2328 : f32 = u_xlat80;
        u_xlat80 = ((x_2324 * x_2326) + x_2328);
        let x_2331 : vec4<f32> = u_xlat11;
        let x_2332 : vec2<f32> = vec2<f32>(x_2331.x, x_2331.y);
        let x_2334 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_2332.x, x_2332.y, x_2334);
        let x_2341 : vec3<f32> = txVec25;
        let x_2343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2341.xy, x_2341.z);
        u_xlat56.x = x_2343;
        let x_2346 : f32 = u_xlat7.x;
        let x_2348 : f32 = u_xlat56.x;
        let x_2350 : f32 = u_xlat80;
        u_xlat80 = ((x_2346 * x_2348) + x_2350);
        let x_2353 : vec4<f32> = u_xlat11;
        let x_2354 : vec2<f32> = vec2<f32>(x_2353.z, x_2353.w);
        let x_2356 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_2354.x, x_2354.y, x_2356);
        let x_2363 : vec3<f32> = txVec26;
        let x_2365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2363.xy, x_2363.z);
        u_xlat56.x = x_2365;
        let x_2368 : f32 = u_xlat7.y;
        let x_2370 : f32 = u_xlat56.x;
        let x_2372 : f32 = u_xlat80;
        u_xlat80 = ((x_2368 * x_2370) + x_2372);
        let x_2375 : vec2<f32> = u_xlat59;
        let x_2377 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_2375.x, x_2375.y, x_2377);
        let x_2384 : vec3<f32> = txVec27;
        let x_2386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2384.xy, x_2384.z);
        u_xlat56.x = x_2386;
        let x_2389 : f32 = u_xlat7.z;
        let x_2391 : f32 = u_xlat56.x;
        let x_2393 : f32 = u_xlat80;
        u_xlat80 = ((x_2389 * x_2391) + x_2393);
        let x_2396 : vec4<f32> = u_xlat6;
        let x_2397 : vec2<f32> = vec2<f32>(x_2396.x, x_2396.y);
        let x_2399 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_2397.x, x_2397.y, x_2399);
        let x_2406 : vec3<f32> = txVec28;
        let x_2408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2406.xy, x_2406.z);
        u_xlat6.x = x_2408;
        let x_2411 : f32 = u_xlat7.w;
        let x_2413 : f32 = u_xlat6.x;
        let x_2415 : f32 = u_xlat80;
        u_xlat79 = ((x_2411 * x_2413) + x_2415);
      }
    }
  } else {
    let x_2419 : vec4<f32> = u_xlat2;
    let x_2420 : vec2<f32> = vec2<f32>(x_2419.x, x_2419.y);
    let x_2422 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_2420.x, x_2420.y, x_2422);
    let x_2429 : vec3<f32> = txVec29;
    let x_2431 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2429.xy, x_2429.z);
    u_xlat79 = x_2431;
  }
  let x_2433 : f32 = x_868.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_2433) + 1.0f);
  let x_2437 : f32 = u_xlat79;
  let x_2439 : f32 = x_868.x_MainLightShadowParams.x;
  let x_2442 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2437 * x_2439) + x_2442);
  let x_2447 : f32 = u_xlat2.z;
  u_xlatb27 = (0.0f >= x_2447);
  let x_2451 : f32 = u_xlat2.z;
  u_xlatb52 = (x_2451 >= 1.0f);
  let x_2453 : bool = u_xlatb52;
  let x_2454 : bool = u_xlatb27;
  u_xlatb27 = (x_2453 | x_2454);
  let x_2456 : bool = u_xlatb27;
  if (x_2456) {
    x_2458 = 1.0f;
  } else {
    let x_2463 : f32 = u_xlat2.x;
    x_2458 = x_2463;
  }
  let x_2464 : f32 = x_2458;
  u_xlat2.x = x_2464;
  let x_2466 : vec3<f32> = vs_TEXCOORD7;
  let x_2469 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_2471 : vec3<f32> = (x_2466 + -(x_2469));
  let x_2472 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
  let x_2474 : vec4<f32> = u_xlat6;
  let x_2476 : vec4<f32> = u_xlat6;
  u_xlat27.x = dot(vec3<f32>(x_2474.x, x_2474.y, x_2474.z), vec3<f32>(x_2476.x, x_2476.y, x_2476.z));
  let x_2482 : f32 = u_xlat27.x;
  let x_2484 : f32 = x_868.x_MainLightShadowParams.z;
  let x_2487 : f32 = x_868.x_MainLightShadowParams.w;
  u_xlat52 = ((x_2482 * x_2484) + x_2487);
  let x_2489 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2489, 0.0f, 1.0f);
  let x_2492 : f32 = u_xlat2.x;
  u_xlat79 = (-(x_2492) + 1.0f);
  let x_2495 : f32 = u_xlat52;
  let x_2496 : f32 = u_xlat79;
  let x_2499 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2495 * x_2496) + x_2499);
  let x_2504 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_2504;
  let x_2507 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_2507;
  let x_2510 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_2510;
  let x_2512 : vec4<f32> = u_xlat6;
  let x_2515 : vec4<f32> = u_xlat1;
  u_xlat52 = dot(-(vec3<f32>(x_2512.x, x_2512.y, x_2512.z)), vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2518 : f32 = u_xlat52;
  let x_2519 : f32 = u_xlat52;
  u_xlat52 = (x_2518 + x_2519);
  let x_2521 : vec4<f32> = u_xlat1;
  let x_2523 : f32 = u_xlat52;
  let x_2527 : vec4<f32> = u_xlat6;
  let x_2530 : vec3<f32> = ((vec3<f32>(x_2521.x, x_2521.y, x_2521.z) * -(vec3<f32>(x_2523, x_2523, x_2523))) + -(vec3<f32>(x_2527.x, x_2527.y, x_2527.z)));
  let x_2531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2531.w);
  let x_2533 : vec4<f32> = u_xlat1;
  let x_2535 : vec4<f32> = u_xlat6;
  u_xlat52 = dot(vec3<f32>(x_2533.x, x_2533.y, x_2533.z), vec3<f32>(x_2535.x, x_2535.y, x_2535.z));
  let x_2538 : f32 = u_xlat52;
  u_xlat52 = clamp(x_2538, 0.0f, 1.0f);
  let x_2540 : f32 = u_xlat52;
  u_xlat52 = (-(x_2540) + 1.0f);
  let x_2543 : f32 = u_xlat52;
  let x_2544 : f32 = u_xlat52;
  u_xlat52 = (x_2543 * x_2544);
  let x_2546 : f32 = u_xlat52;
  let x_2547 : f32 = u_xlat52;
  u_xlat52 = (x_2546 * x_2547);
  let x_2550 : f32 = u_xlat0.x;
  u_xlat79 = ((-(x_2550) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2557 : f32 = u_xlat0.x;
  let x_2558 : f32 = u_xlat79;
  u_xlat0.x = (x_2557 * x_2558);
  let x_2562 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2562 * 6.0f);
  let x_2574 : vec4<f32> = u_xlat7;
  let x_2577 : f32 = u_xlat0.x;
  let x_2578 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2574.x, x_2574.y, x_2574.z), x_2577);
  u_xlat7 = x_2578;
  let x_2580 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2580 + -1.0f);
  let x_2584 : f32 = x_1048.unity_SpecCube0_HDR.w;
  let x_2586 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2584 * x_2586) + 1.0f);
  let x_2591 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2591, 0.0f);
  let x_2595 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2595);
  let x_2599 : f32 = u_xlat0.x;
  let x_2601 : f32 = x_1048.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2599 * x_2601);
  let x_2605 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2605);
  let x_2609 : f32 = u_xlat0.x;
  let x_2611 : f32 = x_1048.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2609 * x_2611);
  let x_2614 : vec4<f32> = u_xlat7;
  let x_2616 : vec3<f32> = u_xlat0;
  let x_2618 : vec3<f32> = (vec3<f32>(x_2614.x, x_2614.y, x_2614.z) * vec3<f32>(x_2616.x, x_2616.x, x_2616.x));
  let x_2619 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
  let x_2621 : f32 = u_xlat76;
  let x_2623 : f32 = u_xlat76;
  let x_2627 : vec2<f32> = ((vec2<f32>(x_2621, x_2621) * vec2<f32>(x_2623, x_2623)) + vec2<f32>(-1.0f, 1.0f));
  let x_2628 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2627.x, x_2627.y, x_2628.z, x_2628.w);
  let x_2631 : f32 = u_xlat8.y;
  u_xlat0.x = (1.0f / x_2631);
  let x_2634 : vec4<f32> = u_xlat5;
  let x_2637 : f32 = u_xlat50;
  u_xlat33 = (-(vec3<f32>(x_2634.x, x_2634.y, x_2634.z)) + vec3<f32>(x_2637, x_2637, x_2637));
  let x_2640 : f32 = u_xlat52;
  let x_2642 : vec3<f32> = u_xlat33;
  let x_2644 : vec4<f32> = u_xlat5;
  u_xlat33 = ((vec3<f32>(x_2640, x_2640, x_2640) * x_2642) + vec3<f32>(x_2644.x, x_2644.y, x_2644.z));
  let x_2647 : vec3<f32> = u_xlat0;
  let x_2649 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2647.x, x_2647.x, x_2647.x) * x_2649);
  let x_2651 : vec4<f32> = u_xlat7;
  let x_2653 : vec3<f32> = u_xlat33;
  let x_2654 : vec3<f32> = (vec3<f32>(x_2651.x, x_2651.y, x_2651.z) * x_2653);
  let x_2655 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2654.x, x_2654.y, x_2654.z, x_2655.w);
  let x_2657 : vec4<f32> = u_xlat3;
  let x_2659 : vec4<f32> = u_xlat4;
  let x_2662 : vec4<f32> = u_xlat7;
  let x_2664 : vec3<f32> = ((vec3<f32>(x_2657.x, x_2657.y, x_2657.z) * vec3<f32>(x_2659.x, x_2659.y, x_2659.z)) + vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
  let x_2665 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2664.x, x_2664.y, x_2664.z, x_2665.w);
  let x_2668 : f32 = u_xlat2.x;
  let x_2670 : f32 = x_1048.unity_LightData.z;
  u_xlat0.x = (x_2668 * x_2670);
  let x_2673 : vec4<f32> = u_xlat1;
  let x_2676 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat50 = dot(vec3<f32>(x_2673.x, x_2673.y, x_2673.z), vec3<f32>(x_2676.x, x_2676.y, x_2676.z));
  let x_2679 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2679, 0.0f, 1.0f);
  let x_2681 : f32 = u_xlat50;
  let x_2683 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2681 * x_2683);
  let x_2686 : vec3<f32> = u_xlat0;
  let x_2689 : vec4<f32> = x_28.x_MainLightColor;
  let x_2691 : vec3<f32> = (vec3<f32>(x_2686.x, x_2686.x, x_2686.x) * vec3<f32>(x_2689.x, x_2689.y, x_2689.z));
  let x_2692 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2691.x, x_2691.y, x_2691.z, x_2692.w);
  let x_2694 : vec4<f32> = u_xlat6;
  let x_2697 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat33 = (vec3<f32>(x_2694.x, x_2694.y, x_2694.z) + vec3<f32>(x_2697.x, x_2697.y, x_2697.z));
  let x_2700 : vec3<f32> = u_xlat33;
  let x_2701 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(x_2700, x_2701);
  let x_2705 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2705, 1.17549435e-38f);
  let x_2710 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2710);
  let x_2713 : vec3<f32> = u_xlat0;
  let x_2715 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_2713.x, x_2713.x, x_2713.x) * x_2715);
  let x_2717 : vec4<f32> = u_xlat1;
  let x_2719 : vec3<f32> = u_xlat33;
  u_xlat0.x = dot(vec3<f32>(x_2717.x, x_2717.y, x_2717.z), x_2719);
  let x_2723 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2723, 0.0f, 1.0f);
  let x_2727 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2729 : vec3<f32> = u_xlat33;
  u_xlat0.z = dot(vec3<f32>(x_2727.x, x_2727.y, x_2727.z), x_2729);
  let x_2733 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2733, 0.0f, 1.0f);
  let x_2736 : vec3<f32> = u_xlat0;
  let x_2738 : vec3<f32> = u_xlat0;
  let x_2740 : vec2<f32> = (vec2<f32>(x_2736.x, x_2736.z) * vec2<f32>(x_2738.x, x_2738.z));
  let x_2741 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2740.x, x_2741.y, x_2740.y);
  let x_2744 : f32 = u_xlat0.x;
  let x_2746 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_2744 * x_2746) + 1.00001001358032226562f);
  let x_2752 : f32 = u_xlat0.x;
  let x_2754 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2752 * x_2754);
  let x_2758 : f32 = u_xlat0.z;
  u_xlat50 = max(x_2758, 0.10000000149011611938f);
  let x_2761 : f32 = u_xlat50;
  let x_2763 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2761 * x_2763);
  let x_2766 : f32 = u_xlat77;
  let x_2768 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2766 * x_2768);
  let x_2771 : f32 = u_xlat78;
  let x_2773 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2771 / x_2773);
  let x_2776 : vec4<f32> = u_xlat5;
  let x_2778 : vec3<f32> = u_xlat0;
  let x_2781 : vec4<f32> = u_xlat4;
  u_xlat33 = ((vec3<f32>(x_2776.x, x_2776.y, x_2776.z) * vec3<f32>(x_2778.x, x_2778.x, x_2778.x)) + vec3<f32>(x_2781.x, x_2781.y, x_2781.z));
  let x_2784 : vec4<f32> = u_xlat7;
  let x_2786 : vec3<f32> = u_xlat33;
  let x_2787 : vec3<f32> = (vec3<f32>(x_2784.x, x_2784.y, x_2784.z) * x_2786);
  let x_2788 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2787.x, x_2787.y, x_2787.z, x_2788.w);
  let x_2791 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2793 : f32 = x_1048.unity_LightData.y;
  u_xlat0.x = min(x_2791, x_2793);
  let x_2798 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2798));
  let x_2802 : f32 = u_xlat27.x;
  let x_2804 : f32 = x_868.x_AdditionalShadowFadeParams.x;
  let x_2807 : f32 = x_868.x_AdditionalShadowFadeParams.y;
  u_xlat50 = ((x_2802 * x_2804) + x_2807);
  let x_2809 : f32 = u_xlat50;
  u_xlat50 = clamp(x_2809, 0.0f, 1.0f);
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2821 : u32 = u_xlatu_loop_1;
    let x_2822 : u32 = u_xlatu0;
    if ((x_2821 < x_2822)) {
    } else {
      break;
    }
    let x_2825 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2825 >> 2u);
    let x_2828 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2828 & 3u));
    let x_2831 : u32 = u_xlatu79;
    let x_2834 : vec4<f32> = x_1048.unity_LightIndices[bitcast<i32>(x_2831)];
    let x_2844 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2849 : vec4<u32> = indexable[x_2844];
    u_xlat79 = dot(x_2834, bitcast<vec4<f32>>(x_2849));
    let x_2853 : f32 = u_xlat79;
    u_xlati79 = i32(x_2853);
    let x_2855 : vec3<f32> = vs_TEXCOORD7;
    let x_2866 : i32 = u_xlati79;
    let x_2868 : vec4<f32> = x_2865.x_AdditionalLightsPosition[x_2866];
    let x_2871 : i32 = u_xlati79;
    let x_2873 : vec4<f32> = x_2865.x_AdditionalLightsPosition[x_2871];
    u_xlat33 = ((-(x_2855) * vec3<f32>(x_2868.w, x_2868.w, x_2868.w)) + vec3<f32>(x_2873.x, x_2873.y, x_2873.z));
    let x_2876 : vec3<f32> = u_xlat33;
    let x_2877 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(x_2876, x_2877);
    let x_2879 : f32 = u_xlat80;
    u_xlat80 = max(x_2879, 0.00006103515625f);
    let x_2882 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2882);
    let x_2884 : f32 = u_xlat81;
    let x_2886 : vec3<f32> = u_xlat33;
    let x_2887 : vec3<f32> = (vec3<f32>(x_2884, x_2884, x_2884) * x_2886);
    let x_2888 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2887.x, x_2887.y, x_2887.z, x_2888.w);
    let x_2891 : f32 = u_xlat80;
    u_xlat82 = (1.0f / x_2891);
    let x_2893 : f32 = u_xlat80;
    let x_2894 : i32 = u_xlati79;
    let x_2896 : f32 = x_2865.x_AdditionalLightsAttenuation[x_2894].x;
    u_xlat80 = (x_2893 * x_2896);
    let x_2898 : f32 = u_xlat80;
    let x_2900 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2898) * x_2900) + 1.0f);
    let x_2903 : f32 = u_xlat80;
    u_xlat80 = max(x_2903, 0.0f);
    let x_2905 : f32 = u_xlat80;
    let x_2906 : f32 = u_xlat80;
    u_xlat80 = (x_2905 * x_2906);
    let x_2908 : f32 = u_xlat80;
    let x_2909 : f32 = u_xlat82;
    u_xlat80 = (x_2908 * x_2909);
    let x_2911 : i32 = u_xlati79;
    let x_2913 : vec4<f32> = x_2865.x_AdditionalLightsSpotDir[x_2911];
    let x_2915 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2913.x, x_2913.y, x_2913.z), vec3<f32>(x_2915.x, x_2915.y, x_2915.z));
    let x_2918 : f32 = u_xlat82;
    let x_2919 : i32 = u_xlati79;
    let x_2921 : f32 = x_2865.x_AdditionalLightsAttenuation[x_2919].z;
    let x_2923 : i32 = u_xlati79;
    let x_2925 : f32 = x_2865.x_AdditionalLightsAttenuation[x_2923].w;
    u_xlat82 = ((x_2918 * x_2921) + x_2925);
    let x_2927 : f32 = u_xlat82;
    u_xlat82 = clamp(x_2927, 0.0f, 1.0f);
    let x_2929 : f32 = u_xlat82;
    let x_2930 : f32 = u_xlat82;
    u_xlat82 = (x_2929 * x_2930);
    let x_2932 : f32 = u_xlat80;
    let x_2933 : f32 = u_xlat82;
    u_xlat80 = (x_2932 * x_2933);
    let x_2936 : i32 = u_xlati79;
    let x_2938 : f32 = x_868.x_AdditionalShadowParams[x_2936].w;
    u_xlati82 = i32(x_2938);
    let x_2941 : i32 = u_xlati82;
    u_xlatb84 = (x_2941 >= 0i);
    let x_2943 : bool = u_xlatb84;
    if (x_2943) {
      let x_2947 : i32 = u_xlati79;
      let x_2949 : f32 = x_868.x_AdditionalShadowParams[x_2947].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2949, x_2949, x_2949, x_2949))));
      let x_2953 : bool = u_xlatb84;
      if (x_2953) {
        let x_2957 : vec4<f32> = u_xlat9;
        let x_2960 : vec4<f32> = u_xlat9;
        let x_2963 : vec4<bool> = (abs(vec4<f32>(x_2957.z, x_2957.z, x_2957.y, x_2957.z)) >= abs(vec4<f32>(x_2960.x, x_2960.y, x_2960.x, x_2960.x)));
        let x_2965 : vec3<bool> = vec3<bool>(x_2963.x, x_2963.y, x_2963.z);
        let x_2966 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2965.x, x_2965.y, x_2965.z, x_2966.w);
        let x_2969 : bool = u_xlatb10.y;
        let x_2971 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2969 & x_2971);
        let x_2973 : vec4<f32> = u_xlat9;
        let x_2976 : vec4<bool> = (-(vec4<f32>(x_2973.z, x_2973.y, x_2973.z, x_2973.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2977 : vec3<bool> = vec3<bool>(x_2976.x, x_2976.y, x_2976.w);
        let x_2978 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2977.x, x_2977.y, x_2978.z, x_2977.z);
        let x_2981 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2981);
        let x_2986 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2986);
        let x_2991 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2991);
        let x_2995 : bool = u_xlatb10.z;
        if (x_2995) {
          let x_3000 : f32 = u_xlat10.y;
          x_2996 = x_3000;
        } else {
          let x_3002 : f32 = u_xlat85;
          x_2996 = x_3002;
        }
        let x_3003 : f32 = x_2996;
        u_xlat35 = x_3003;
        let x_3005 : bool = u_xlatb84;
        if (x_3005) {
          let x_3010 : f32 = u_xlat10.x;
          x_3006 = x_3010;
        } else {
          let x_3012 : f32 = u_xlat35;
          x_3006 = x_3012;
        }
        let x_3013 : f32 = x_3006;
        u_xlat84 = x_3013;
        let x_3014 : i32 = u_xlati79;
        let x_3016 : f32 = x_868.x_AdditionalShadowParams[x_3014].w;
        u_xlat10.x = trunc(x_3016);
        let x_3019 : f32 = u_xlat84;
        let x_3021 : f32 = u_xlat10.x;
        u_xlat84 = (x_3019 + x_3021);
        let x_3023 : f32 = u_xlat84;
        u_xlati82 = i32(x_3023);
      }
      let x_3025 : i32 = u_xlati82;
      u_xlati82 = (x_3025 << bitcast<u32>(2i));
      let x_3027 : vec3<f32> = vs_TEXCOORD7;
      let x_3029 : i32 = u_xlati82;
      let x_3032 : i32 = u_xlati82;
      let x_3036 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3029 + 1i) / 4i)][((x_3032 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3027.y, x_3027.y, x_3027.y, x_3027.y) * x_3036);
      let x_3038 : i32 = u_xlati82;
      let x_3040 : i32 = u_xlati82;
      let x_3043 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[(x_3038 / 4i)][(x_3040 % 4i)];
      let x_3044 : vec3<f32> = vs_TEXCOORD7;
      let x_3047 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3043 * vec4<f32>(x_3044.x, x_3044.x, x_3044.x, x_3044.x)) + x_3047);
      let x_3049 : i32 = u_xlati82;
      let x_3052 : i32 = u_xlati82;
      let x_3056 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3049 + 2i) / 4i)][((x_3052 + 2i) % 4i)];
      let x_3057 : vec3<f32> = vs_TEXCOORD7;
      let x_3060 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3056 * vec4<f32>(x_3057.z, x_3057.z, x_3057.z, x_3057.z)) + x_3060);
      let x_3062 : vec4<f32> = u_xlat10;
      let x_3063 : i32 = u_xlati82;
      let x_3066 : i32 = u_xlati82;
      let x_3070 : vec4<f32> = x_868.x_AdditionalLightsWorldToShadow[((x_3063 + 3i) / 4i)][((x_3066 + 3i) % 4i)];
      u_xlat10 = (x_3062 + x_3070);
      let x_3072 : vec4<f32> = u_xlat10;
      let x_3074 : vec4<f32> = u_xlat10;
      let x_3076 : vec3<f32> = (vec3<f32>(x_3072.x, x_3072.y, x_3072.z) / vec3<f32>(x_3074.w, x_3074.w, x_3074.w));
      let x_3077 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3076.x, x_3076.y, x_3076.z, x_3077.w);
      let x_3080 : i32 = u_xlati79;
      let x_3082 : f32 = x_868.x_AdditionalShadowParams[x_3080].y;
      u_xlatb82 = (0.0f < x_3082);
      let x_3084 : bool = u_xlatb82;
      if (x_3084) {
        let x_3087 : i32 = u_xlati79;
        let x_3089 : f32 = x_868.x_AdditionalShadowParams[x_3087].y;
        u_xlatb82 = (1.0f == x_3089);
        let x_3091 : bool = u_xlatb82;
        if (x_3091) {
          let x_3094 : vec4<f32> = u_xlat10;
          let x_3097 : vec4<f32> = x_868.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3094.x, x_3094.y, x_3094.x, x_3094.y) + x_3097);
          let x_3100 : vec4<f32> = u_xlat11;
          let x_3101 : vec2<f32> = vec2<f32>(x_3100.x, x_3100.y);
          let x_3103 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_3101.x, x_3101.y, x_3103);
          let x_3111 : vec3<f32> = txVec30;
          let x_3113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3111.xy, x_3111.z);
          u_xlat12.x = x_3113;
          let x_3116 : vec4<f32> = u_xlat11;
          let x_3117 : vec2<f32> = vec2<f32>(x_3116.z, x_3116.w);
          let x_3119 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
          let x_3126 : vec3<f32> = txVec31;
          let x_3128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
          u_xlat12.y = x_3128;
          let x_3130 : vec4<f32> = u_xlat10;
          let x_3133 : vec4<f32> = x_868.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3130.x, x_3130.y, x_3130.x, x_3130.y) + x_3133);
          let x_3136 : vec4<f32> = u_xlat11;
          let x_3137 : vec2<f32> = vec2<f32>(x_3136.x, x_3136.y);
          let x_3139 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_3137.x, x_3137.y, x_3139);
          let x_3146 : vec3<f32> = txVec32;
          let x_3148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3146.xy, x_3146.z);
          u_xlat12.z = x_3148;
          let x_3151 : vec4<f32> = u_xlat11;
          let x_3152 : vec2<f32> = vec2<f32>(x_3151.z, x_3151.w);
          let x_3154 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_3152.x, x_3152.y, x_3154);
          let x_3161 : vec3<f32> = txVec33;
          let x_3163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3161.xy, x_3161.z);
          u_xlat12.w = x_3163;
          let x_3165 : vec4<f32> = u_xlat12;
          u_xlat82 = dot(x_3165, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3168 : i32 = u_xlati79;
          let x_3170 : f32 = x_868.x_AdditionalShadowParams[x_3168].y;
          u_xlatb84 = (2.0f == x_3170);
          let x_3172 : bool = u_xlatb84;
          if (x_3172) {
            let x_3175 : vec4<f32> = u_xlat10;
            let x_3178 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3181 : vec2<f32> = ((vec2<f32>(x_3175.x, x_3175.y) * vec2<f32>(x_3178.z, x_3178.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3182 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3181.x, x_3181.y, x_3182.z, x_3182.w);
            let x_3184 : vec4<f32> = u_xlat11;
            let x_3186 : vec2<f32> = floor(vec2<f32>(x_3184.x, x_3184.y));
            let x_3187 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3186.x, x_3186.y, x_3187.z, x_3187.w);
            let x_3190 : vec4<f32> = u_xlat10;
            let x_3193 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3196 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3190.x, x_3190.y) * vec2<f32>(x_3193.z, x_3193.w)) + -(vec2<f32>(x_3196.x, x_3196.y)));
            let x_3200 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3200.x, x_3200.x, x_3200.y, x_3200.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3203 : vec4<f32> = u_xlat12;
            let x_3205 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3203.x, x_3203.x, x_3203.z, x_3203.z) * vec4<f32>(x_3205.x, x_3205.x, x_3205.z, x_3205.z));
            let x_3208 : vec4<f32> = u_xlat13;
            let x_3210 : vec2<f32> = (vec2<f32>(x_3208.y, x_3208.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3211 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3210.x, x_3211.y, x_3210.y, x_3211.w);
            let x_3213 : vec4<f32> = u_xlat13;
            let x_3216 : vec2<f32> = u_xlat61;
            let x_3218 : vec2<f32> = ((vec2<f32>(x_3213.x, x_3213.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3216));
            let x_3219 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3218.x, x_3218.y, x_3219.z, x_3219.w);
            let x_3222 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3222) + vec2<f32>(1.0f, 1.0f));
            let x_3225 : vec2<f32> = u_xlat61;
            let x_3226 : vec2<f32> = min(x_3225, vec2<f32>(0.0f, 0.0f));
            let x_3227 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3226.x, x_3226.y, x_3227.z, x_3227.w);
            let x_3229 : vec4<f32> = u_xlat14;
            let x_3232 : vec4<f32> = u_xlat14;
            let x_3235 : vec2<f32> = u_xlat63;
            let x_3236 : vec2<f32> = ((-(vec2<f32>(x_3229.x, x_3229.y)) * vec2<f32>(x_3232.x, x_3232.y)) + x_3235);
            let x_3237 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3236.x, x_3236.y, x_3237.z, x_3237.w);
            let x_3239 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3239, vec2<f32>(0.0f, 0.0f));
            let x_3241 : vec2<f32> = u_xlat61;
            let x_3243 : vec2<f32> = u_xlat61;
            let x_3245 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3241) * x_3243) + vec2<f32>(x_3245.y, x_3245.w));
            let x_3248 : vec4<f32> = u_xlat14;
            let x_3250 : vec2<f32> = (vec2<f32>(x_3248.x, x_3248.y) + vec2<f32>(1.0f, 1.0f));
            let x_3251 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3250.x, x_3250.y, x_3251.z, x_3251.w);
            let x_3253 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3253 + vec2<f32>(1.0f, 1.0f));
            let x_3255 : vec4<f32> = u_xlat13;
            let x_3257 : vec2<f32> = (vec2<f32>(x_3255.x, x_3255.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3258 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3257.x, x_3257.y, x_3258.z, x_3258.w);
            let x_3260 : vec2<f32> = u_xlat63;
            let x_3261 : vec2<f32> = (x_3260 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3262 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3261.x, x_3261.y, x_3262.z, x_3262.w);
            let x_3264 : vec4<f32> = u_xlat14;
            let x_3266 : vec2<f32> = (vec2<f32>(x_3264.x, x_3264.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3267 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3266.x, x_3266.y, x_3267.z, x_3267.w);
            let x_3269 : vec2<f32> = u_xlat61;
            let x_3270 : vec2<f32> = (x_3269 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3271 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3270.x, x_3270.y, x_3271.z, x_3271.w);
            let x_3273 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_3273.y, x_3273.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3277 : f32 = u_xlat14.x;
            u_xlat15.z = x_3277;
            let x_3280 : f32 = u_xlat61.x;
            u_xlat15.w = x_3280;
            let x_3283 : f32 = u_xlat16.x;
            u_xlat13.z = x_3283;
            let x_3286 : f32 = u_xlat12.x;
            u_xlat13.w = x_3286;
            let x_3288 : vec4<f32> = u_xlat13;
            let x_3290 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_3288.z, x_3288.w, x_3288.x, x_3288.z) + vec4<f32>(x_3290.z, x_3290.w, x_3290.x, x_3290.z));
            let x_3294 : f32 = u_xlat15.y;
            u_xlat14.z = x_3294;
            let x_3297 : f32 = u_xlat61.y;
            u_xlat14.w = x_3297;
            let x_3300 : f32 = u_xlat13.y;
            u_xlat16.z = x_3300;
            let x_3303 : f32 = u_xlat12.z;
            u_xlat16.w = x_3303;
            let x_3305 : vec4<f32> = u_xlat14;
            let x_3307 : vec4<f32> = u_xlat16;
            let x_3309 : vec3<f32> = (vec3<f32>(x_3305.z, x_3305.y, x_3305.w) + vec3<f32>(x_3307.z, x_3307.y, x_3307.w));
            let x_3310 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3309.x, x_3309.y, x_3309.z, x_3310.w);
            let x_3312 : vec4<f32> = u_xlat13;
            let x_3314 : vec4<f32> = u_xlat17;
            let x_3316 : vec3<f32> = (vec3<f32>(x_3312.x, x_3312.z, x_3312.w) / vec3<f32>(x_3314.z, x_3314.w, x_3314.y));
            let x_3317 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3316.x, x_3316.y, x_3316.z, x_3317.w);
            let x_3319 : vec4<f32> = u_xlat13;
            let x_3321 : vec3<f32> = (vec3<f32>(x_3319.x, x_3319.y, x_3319.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3322 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3321.x, x_3321.y, x_3321.z, x_3322.w);
            let x_3324 : vec4<f32> = u_xlat16;
            let x_3326 : vec4<f32> = u_xlat12;
            let x_3328 : vec3<f32> = (vec3<f32>(x_3324.z, x_3324.y, x_3324.w) / vec3<f32>(x_3326.x, x_3326.y, x_3326.z));
            let x_3329 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3328.x, x_3328.y, x_3328.z, x_3329.w);
            let x_3331 : vec4<f32> = u_xlat14;
            let x_3333 : vec3<f32> = (vec3<f32>(x_3331.x, x_3331.y, x_3331.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3334 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3333.x, x_3333.y, x_3333.z, x_3334.w);
            let x_3336 : vec4<f32> = u_xlat13;
            let x_3339 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3341 : vec3<f32> = (vec3<f32>(x_3336.y, x_3336.x, x_3336.z) * vec3<f32>(x_3339.x, x_3339.x, x_3339.x));
            let x_3342 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3341.x, x_3341.y, x_3341.z, x_3342.w);
            let x_3344 : vec4<f32> = u_xlat14;
            let x_3347 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3349 : vec3<f32> = (vec3<f32>(x_3344.x, x_3344.y, x_3344.z) * vec3<f32>(x_3347.y, x_3347.y, x_3347.y));
            let x_3350 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3349.x, x_3349.y, x_3349.z, x_3350.w);
            let x_3353 : f32 = u_xlat14.x;
            u_xlat13.w = x_3353;
            let x_3355 : vec4<f32> = u_xlat11;
            let x_3358 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3361 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_3355.x, x_3355.y, x_3355.x, x_3355.y) * vec4<f32>(x_3358.x, x_3358.y, x_3358.x, x_3358.y)) + vec4<f32>(x_3361.y, x_3361.w, x_3361.x, x_3361.w));
            let x_3364 : vec4<f32> = u_xlat11;
            let x_3367 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3370 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_3364.x, x_3364.y) * vec2<f32>(x_3367.x, x_3367.y)) + vec2<f32>(x_3370.z, x_3370.w));
            let x_3374 : f32 = u_xlat13.y;
            u_xlat14.w = x_3374;
            let x_3376 : vec4<f32> = u_xlat14;
            let x_3377 : vec2<f32> = vec2<f32>(x_3376.y, x_3376.z);
            let x_3378 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3378.x, x_3377.x, x_3378.z, x_3377.y);
            let x_3380 : vec4<f32> = u_xlat11;
            let x_3383 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3386 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_3380.x, x_3380.y, x_3380.x, x_3380.y) * vec4<f32>(x_3383.x, x_3383.y, x_3383.x, x_3383.y)) + vec4<f32>(x_3386.x, x_3386.y, x_3386.z, x_3386.y));
            let x_3389 : vec4<f32> = u_xlat11;
            let x_3392 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3395 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3389.x, x_3389.y, x_3389.x, x_3389.y) * vec4<f32>(x_3392.x, x_3392.y, x_3392.x, x_3392.y)) + vec4<f32>(x_3395.w, x_3395.y, x_3395.w, x_3395.z));
            let x_3398 : vec4<f32> = u_xlat11;
            let x_3401 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3404 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_3398.x, x_3398.y, x_3398.x, x_3398.y) * vec4<f32>(x_3401.x, x_3401.y, x_3401.x, x_3401.y)) + vec4<f32>(x_3404.x, x_3404.w, x_3404.z, x_3404.w));
            let x_3407 : vec4<f32> = u_xlat12;
            let x_3409 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_3407.x, x_3407.x, x_3407.x, x_3407.y) * vec4<f32>(x_3409.z, x_3409.w, x_3409.y, x_3409.z));
            let x_3412 : vec4<f32> = u_xlat12;
            let x_3414 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_3412.y, x_3412.y, x_3412.z, x_3412.z) * x_3414);
            let x_3417 : f32 = u_xlat12.z;
            let x_3419 : f32 = u_xlat17.y;
            u_xlat84 = (x_3417 * x_3419);
            let x_3422 : vec4<f32> = u_xlat15;
            let x_3423 : vec2<f32> = vec2<f32>(x_3422.x, x_3422.y);
            let x_3425 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_3423.x, x_3423.y, x_3425);
            let x_3432 : vec3<f32> = txVec34;
            let x_3434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3432.xy, x_3432.z);
            u_xlat85 = x_3434;
            let x_3436 : vec4<f32> = u_xlat15;
            let x_3437 : vec2<f32> = vec2<f32>(x_3436.z, x_3436.w);
            let x_3439 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_3437.x, x_3437.y, x_3439);
            let x_3446 : vec3<f32> = txVec35;
            let x_3448 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3446.xy, x_3446.z);
            u_xlat11.x = x_3448;
            let x_3451 : f32 = u_xlat11.x;
            let x_3453 : f32 = u_xlat18.y;
            u_xlat11.x = (x_3451 * x_3453);
            let x_3457 : f32 = u_xlat18.x;
            let x_3458 : f32 = u_xlat85;
            let x_3461 : f32 = u_xlat11.x;
            u_xlat85 = ((x_3457 * x_3458) + x_3461);
            let x_3464 : vec2<f32> = u_xlat61;
            let x_3466 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_3464.x, x_3464.y, x_3466);
            let x_3473 : vec3<f32> = txVec36;
            let x_3475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3473.xy, x_3473.z);
            u_xlat11.x = x_3475;
            let x_3478 : f32 = u_xlat18.z;
            let x_3480 : f32 = u_xlat11.x;
            let x_3482 : f32 = u_xlat85;
            u_xlat85 = ((x_3478 * x_3480) + x_3482);
            let x_3485 : vec4<f32> = u_xlat14;
            let x_3486 : vec2<f32> = vec2<f32>(x_3485.x, x_3485.y);
            let x_3488 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_3486.x, x_3486.y, x_3488);
            let x_3495 : vec3<f32> = txVec37;
            let x_3497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3495.xy, x_3495.z);
            u_xlat11.x = x_3497;
            let x_3500 : f32 = u_xlat18.w;
            let x_3502 : f32 = u_xlat11.x;
            let x_3504 : f32 = u_xlat85;
            u_xlat85 = ((x_3500 * x_3502) + x_3504);
            let x_3507 : vec4<f32> = u_xlat16;
            let x_3508 : vec2<f32> = vec2<f32>(x_3507.x, x_3507.y);
            let x_3510 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_3508.x, x_3508.y, x_3510);
            let x_3517 : vec3<f32> = txVec38;
            let x_3519 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3517.xy, x_3517.z);
            u_xlat11.x = x_3519;
            let x_3522 : f32 = u_xlat19.x;
            let x_3524 : f32 = u_xlat11.x;
            let x_3526 : f32 = u_xlat85;
            u_xlat85 = ((x_3522 * x_3524) + x_3526);
            let x_3529 : vec4<f32> = u_xlat16;
            let x_3530 : vec2<f32> = vec2<f32>(x_3529.z, x_3529.w);
            let x_3532 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3530.x, x_3530.y, x_3532);
            let x_3539 : vec3<f32> = txVec39;
            let x_3541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3539.xy, x_3539.z);
            u_xlat11.x = x_3541;
            let x_3544 : f32 = u_xlat19.y;
            let x_3546 : f32 = u_xlat11.x;
            let x_3548 : f32 = u_xlat85;
            u_xlat85 = ((x_3544 * x_3546) + x_3548);
            let x_3551 : vec4<f32> = u_xlat14;
            let x_3552 : vec2<f32> = vec2<f32>(x_3551.z, x_3551.w);
            let x_3554 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3552.x, x_3552.y, x_3554);
            let x_3561 : vec3<f32> = txVec40;
            let x_3563 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3561.xy, x_3561.z);
            u_xlat11.x = x_3563;
            let x_3566 : f32 = u_xlat19.z;
            let x_3568 : f32 = u_xlat11.x;
            let x_3570 : f32 = u_xlat85;
            u_xlat85 = ((x_3566 * x_3568) + x_3570);
            let x_3573 : vec4<f32> = u_xlat13;
            let x_3574 : vec2<f32> = vec2<f32>(x_3573.x, x_3573.y);
            let x_3576 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3574.x, x_3574.y, x_3576);
            let x_3583 : vec3<f32> = txVec41;
            let x_3585 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3583.xy, x_3583.z);
            u_xlat11.x = x_3585;
            let x_3588 : f32 = u_xlat19.w;
            let x_3590 : f32 = u_xlat11.x;
            let x_3592 : f32 = u_xlat85;
            u_xlat85 = ((x_3588 * x_3590) + x_3592);
            let x_3595 : vec4<f32> = u_xlat13;
            let x_3596 : vec2<f32> = vec2<f32>(x_3595.z, x_3595.w);
            let x_3598 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3596.x, x_3596.y, x_3598);
            let x_3605 : vec3<f32> = txVec42;
            let x_3607 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3605.xy, x_3605.z);
            u_xlat11.x = x_3607;
            let x_3609 : f32 = u_xlat84;
            let x_3611 : f32 = u_xlat11.x;
            let x_3613 : f32 = u_xlat85;
            u_xlat82 = ((x_3609 * x_3611) + x_3613);
          } else {
            let x_3616 : vec4<f32> = u_xlat10;
            let x_3619 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3622 : vec2<f32> = ((vec2<f32>(x_3616.x, x_3616.y) * vec2<f32>(x_3619.z, x_3619.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3623 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3622.x, x_3622.y, x_3623.z, x_3623.w);
            let x_3625 : vec4<f32> = u_xlat11;
            let x_3627 : vec2<f32> = floor(vec2<f32>(x_3625.x, x_3625.y));
            let x_3628 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3627.x, x_3627.y, x_3628.z, x_3628.w);
            let x_3630 : vec4<f32> = u_xlat10;
            let x_3633 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3636 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3630.x, x_3630.y) * vec2<f32>(x_3633.z, x_3633.w)) + -(vec2<f32>(x_3636.x, x_3636.y)));
            let x_3640 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3640.x, x_3640.x, x_3640.y, x_3640.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3643 : vec4<f32> = u_xlat12;
            let x_3645 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3643.x, x_3643.x, x_3643.z, x_3643.z) * vec4<f32>(x_3645.x, x_3645.x, x_3645.z, x_3645.z));
            let x_3648 : vec4<f32> = u_xlat13;
            let x_3650 : vec2<f32> = (vec2<f32>(x_3648.y, x_3648.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3651 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3651.x, x_3650.x, x_3651.z, x_3650.y);
            let x_3653 : vec4<f32> = u_xlat13;
            let x_3656 : vec2<f32> = u_xlat61;
            let x_3658 : vec2<f32> = ((vec2<f32>(x_3653.x, x_3653.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3656));
            let x_3659 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3658.x, x_3659.y, x_3658.y, x_3659.w);
            let x_3661 : vec2<f32> = u_xlat61;
            let x_3663 : vec2<f32> = (-(x_3661) + vec2<f32>(1.0f, 1.0f));
            let x_3664 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3663.x, x_3663.y, x_3664.z, x_3664.w);
            let x_3666 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3666, vec2<f32>(0.0f, 0.0f));
            let x_3668 : vec2<f32> = u_xlat63;
            let x_3670 : vec2<f32> = u_xlat63;
            let x_3672 : vec4<f32> = u_xlat13;
            let x_3674 : vec2<f32> = ((-(x_3668) * x_3670) + vec2<f32>(x_3672.x, x_3672.y));
            let x_3675 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3674.x, x_3674.y, x_3675.z, x_3675.w);
            let x_3677 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3677, vec2<f32>(0.0f, 0.0f));
            let x_3680 : vec2<f32> = u_xlat63;
            let x_3682 : vec2<f32> = u_xlat63;
            let x_3684 : vec4<f32> = u_xlat12;
            let x_3686 : vec2<f32> = ((-(x_3680) * x_3682) + vec2<f32>(x_3684.y, x_3684.w));
            let x_3687 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3686.x, x_3687.y, x_3686.y);
            let x_3689 : vec4<f32> = u_xlat13;
            let x_3691 : vec2<f32> = (vec2<f32>(x_3689.x, x_3689.y) + vec2<f32>(2.0f, 2.0f));
            let x_3692 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3691.x, x_3691.y, x_3692.z, x_3692.w);
            let x_3694 : vec3<f32> = u_xlat37;
            let x_3696 : vec2<f32> = (vec2<f32>(x_3694.x, x_3694.z) + vec2<f32>(2.0f, 2.0f));
            let x_3697 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3697.x, x_3696.x, x_3697.z, x_3696.y);
            let x_3700 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3700 * 0.08163200318813323975f);
            let x_3703 : vec4<f32> = u_xlat12;
            let x_3705 : vec3<f32> = (vec3<f32>(x_3703.z, x_3703.x, x_3703.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3706 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3705.x, x_3705.y, x_3705.z, x_3706.w);
            let x_3708 : vec4<f32> = u_xlat13;
            let x_3710 : vec2<f32> = (vec2<f32>(x_3708.x, x_3708.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3711 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3710.x, x_3710.y, x_3711.z, x_3711.w);
            let x_3714 : f32 = u_xlat16.y;
            u_xlat15.x = x_3714;
            let x_3716 : vec2<f32> = u_xlat61;
            let x_3719 : vec2<f32> = ((vec2<f32>(x_3716.x, x_3716.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3720 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3720.x, x_3719.x, x_3720.z, x_3719.y);
            let x_3722 : vec2<f32> = u_xlat61;
            let x_3725 : vec2<f32> = ((vec2<f32>(x_3722.x, x_3722.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3726 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3725.x, x_3726.y, x_3725.y, x_3726.w);
            let x_3729 : f32 = u_xlat12.x;
            u_xlat13.y = x_3729;
            let x_3732 : f32 = u_xlat14.y;
            u_xlat13.w = x_3732;
            let x_3734 : vec4<f32> = u_xlat13;
            let x_3735 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3734 + x_3735);
            let x_3737 : vec2<f32> = u_xlat61;
            let x_3740 : vec2<f32> = ((vec2<f32>(x_3737.y, x_3737.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3741 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3741.x, x_3740.x, x_3741.z, x_3740.y);
            let x_3743 : vec2<f32> = u_xlat61;
            let x_3746 : vec2<f32> = ((vec2<f32>(x_3743.y, x_3743.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3747 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3746.x, x_3747.y, x_3746.y, x_3747.w);
            let x_3750 : f32 = u_xlat12.y;
            u_xlat14.y = x_3750;
            let x_3752 : vec4<f32> = u_xlat14;
            let x_3753 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3752 + x_3753);
            let x_3755 : vec4<f32> = u_xlat13;
            let x_3756 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3755 / x_3756);
            let x_3758 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3758 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3760 : vec4<f32> = u_xlat14;
            let x_3761 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3760 / x_3761);
            let x_3763 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3763 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3765 : vec4<f32> = u_xlat13;
            let x_3768 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3765.w, x_3765.x, x_3765.y, x_3765.z) * vec4<f32>(x_3768.x, x_3768.x, x_3768.x, x_3768.x));
            let x_3771 : vec4<f32> = u_xlat14;
            let x_3774 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3771.x, x_3771.w, x_3771.y, x_3771.z) * vec4<f32>(x_3774.y, x_3774.y, x_3774.y, x_3774.y));
            let x_3777 : vec4<f32> = u_xlat13;
            let x_3778 : vec3<f32> = vec3<f32>(x_3777.y, x_3777.z, x_3777.w);
            let x_3779 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3778.x, x_3779.y, x_3778.y, x_3778.z);
            let x_3782 : f32 = u_xlat14.x;
            u_xlat16.y = x_3782;
            let x_3784 : vec4<f32> = u_xlat11;
            let x_3787 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3790 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3784.x, x_3784.y, x_3784.x, x_3784.y) * vec4<f32>(x_3787.x, x_3787.y, x_3787.x, x_3787.y)) + vec4<f32>(x_3790.x, x_3790.y, x_3790.z, x_3790.y));
            let x_3793 : vec4<f32> = u_xlat11;
            let x_3796 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3799 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3793.x, x_3793.y) * vec2<f32>(x_3796.x, x_3796.y)) + vec2<f32>(x_3799.w, x_3799.y));
            let x_3803 : f32 = u_xlat16.y;
            u_xlat13.y = x_3803;
            let x_3806 : f32 = u_xlat14.z;
            u_xlat16.y = x_3806;
            let x_3808 : vec4<f32> = u_xlat11;
            let x_3811 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3814 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3808.x, x_3808.y, x_3808.x, x_3808.y) * vec4<f32>(x_3811.x, x_3811.y, x_3811.x, x_3811.y)) + vec4<f32>(x_3814.x, x_3814.y, x_3814.z, x_3814.y));
            let x_3817 : vec4<f32> = u_xlat11;
            let x_3820 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3823 : vec4<f32> = u_xlat16;
            let x_3825 : vec2<f32> = ((vec2<f32>(x_3817.x, x_3817.y) * vec2<f32>(x_3820.x, x_3820.y)) + vec2<f32>(x_3823.w, x_3823.y));
            let x_3826 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3825.x, x_3825.y, x_3826.z, x_3826.w);
            let x_3829 : f32 = u_xlat16.y;
            u_xlat13.z = x_3829;
            let x_3832 : vec4<f32> = u_xlat11;
            let x_3835 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3838 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3832.x, x_3832.y, x_3832.x, x_3832.y) * vec4<f32>(x_3835.x, x_3835.y, x_3835.x, x_3835.y)) + vec4<f32>(x_3838.x, x_3838.y, x_3838.x, x_3838.z));
            let x_3842 : f32 = u_xlat14.w;
            u_xlat16.y = x_3842;
            let x_3845 : vec4<f32> = u_xlat11;
            let x_3848 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3851 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3845.x, x_3845.y, x_3845.x, x_3845.y) * vec4<f32>(x_3848.x, x_3848.y, x_3848.x, x_3848.y)) + vec4<f32>(x_3851.x, x_3851.y, x_3851.z, x_3851.y));
            let x_3855 : vec4<f32> = u_xlat11;
            let x_3858 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3861 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3855.x, x_3855.y) * vec2<f32>(x_3858.x, x_3858.y)) + vec2<f32>(x_3861.w, x_3861.y));
            let x_3865 : f32 = u_xlat16.y;
            u_xlat13.w = x_3865;
            let x_3868 : vec4<f32> = u_xlat11;
            let x_3871 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3874 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3868.x, x_3868.y) * vec2<f32>(x_3871.x, x_3871.y)) + vec2<f32>(x_3874.x, x_3874.w));
            let x_3877 : vec4<f32> = u_xlat16;
            let x_3878 : vec3<f32> = vec3<f32>(x_3877.x, x_3877.z, x_3877.w);
            let x_3879 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3878.x, x_3879.y, x_3878.y, x_3878.z);
            let x_3881 : vec4<f32> = u_xlat11;
            let x_3884 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3887 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3881.x, x_3881.y, x_3881.x, x_3881.y) * vec4<f32>(x_3884.x, x_3884.y, x_3884.x, x_3884.y)) + vec4<f32>(x_3887.x, x_3887.y, x_3887.z, x_3887.y));
            let x_3890 : vec4<f32> = u_xlat11;
            let x_3893 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3896 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3890.x, x_3890.y) * vec2<f32>(x_3893.x, x_3893.y)) + vec2<f32>(x_3896.w, x_3896.y));
            let x_3900 : f32 = u_xlat13.x;
            u_xlat14.x = x_3900;
            let x_3902 : vec4<f32> = u_xlat11;
            let x_3905 : vec4<f32> = x_868.x_AdditionalShadowmapSize;
            let x_3908 : vec4<f32> = u_xlat14;
            let x_3910 : vec2<f32> = ((vec2<f32>(x_3902.x, x_3902.y) * vec2<f32>(x_3905.x, x_3905.y)) + vec2<f32>(x_3908.x, x_3908.y));
            let x_3911 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3910.x, x_3910.y, x_3911.z, x_3911.w);
            let x_3914 : vec4<f32> = u_xlat12;
            let x_3916 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3914.x, x_3914.x, x_3914.x, x_3914.x) * x_3916);
            let x_3919 : vec4<f32> = u_xlat12;
            let x_3921 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3919.y, x_3919.y, x_3919.y, x_3919.y) * x_3921);
            let x_3924 : vec4<f32> = u_xlat12;
            let x_3926 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3924.z, x_3924.z, x_3924.z, x_3924.z) * x_3926);
            let x_3928 : vec4<f32> = u_xlat12;
            let x_3930 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3928.w, x_3928.w, x_3928.w, x_3928.w) * x_3930);
            let x_3933 : vec4<f32> = u_xlat17;
            let x_3934 : vec2<f32> = vec2<f32>(x_3933.x, x_3933.y);
            let x_3936 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3934.x, x_3934.y, x_3936);
            let x_3943 : vec3<f32> = txVec43;
            let x_3945 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3943.xy, x_3943.z);
            u_xlat84 = x_3945;
            let x_3947 : vec4<f32> = u_xlat17;
            let x_3948 : vec2<f32> = vec2<f32>(x_3947.z, x_3947.w);
            let x_3950 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3948.x, x_3948.y, x_3950);
            let x_3957 : vec3<f32> = txVec44;
            let x_3959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3957.xy, x_3957.z);
            u_xlat85 = x_3959;
            let x_3960 : f32 = u_xlat85;
            let x_3962 : f32 = u_xlat22.y;
            u_xlat85 = (x_3960 * x_3962);
            let x_3965 : f32 = u_xlat22.x;
            let x_3966 : f32 = u_xlat84;
            let x_3968 : f32 = u_xlat85;
            u_xlat84 = ((x_3965 * x_3966) + x_3968);
            let x_3971 : vec2<f32> = u_xlat61;
            let x_3973 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3971.x, x_3971.y, x_3973);
            let x_3980 : vec3<f32> = txVec45;
            let x_3982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3980.xy, x_3980.z);
            u_xlat85 = x_3982;
            let x_3984 : f32 = u_xlat22.z;
            let x_3985 : f32 = u_xlat85;
            let x_3987 : f32 = u_xlat84;
            u_xlat84 = ((x_3984 * x_3985) + x_3987);
            let x_3990 : vec4<f32> = u_xlat20;
            let x_3991 : vec2<f32> = vec2<f32>(x_3990.x, x_3990.y);
            let x_3993 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3991.x, x_3991.y, x_3993);
            let x_4000 : vec3<f32> = txVec46;
            let x_4002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4000.xy, x_4000.z);
            u_xlat85 = x_4002;
            let x_4004 : f32 = u_xlat22.w;
            let x_4005 : f32 = u_xlat85;
            let x_4007 : f32 = u_xlat84;
            u_xlat84 = ((x_4004 * x_4005) + x_4007);
            let x_4010 : vec4<f32> = u_xlat18;
            let x_4011 : vec2<f32> = vec2<f32>(x_4010.x, x_4010.y);
            let x_4013 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_4011.x, x_4011.y, x_4013);
            let x_4020 : vec3<f32> = txVec47;
            let x_4022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4020.xy, x_4020.z);
            u_xlat85 = x_4022;
            let x_4024 : f32 = u_xlat23.x;
            let x_4025 : f32 = u_xlat85;
            let x_4027 : f32 = u_xlat84;
            u_xlat84 = ((x_4024 * x_4025) + x_4027);
            let x_4030 : vec4<f32> = u_xlat18;
            let x_4031 : vec2<f32> = vec2<f32>(x_4030.z, x_4030.w);
            let x_4033 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_4031.x, x_4031.y, x_4033);
            let x_4040 : vec3<f32> = txVec48;
            let x_4042 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4040.xy, x_4040.z);
            u_xlat85 = x_4042;
            let x_4044 : f32 = u_xlat23.y;
            let x_4045 : f32 = u_xlat85;
            let x_4047 : f32 = u_xlat84;
            u_xlat84 = ((x_4044 * x_4045) + x_4047);
            let x_4050 : vec4<f32> = u_xlat19;
            let x_4051 : vec2<f32> = vec2<f32>(x_4050.x, x_4050.y);
            let x_4053 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_4051.x, x_4051.y, x_4053);
            let x_4060 : vec3<f32> = txVec49;
            let x_4062 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4060.xy, x_4060.z);
            u_xlat85 = x_4062;
            let x_4064 : f32 = u_xlat23.z;
            let x_4065 : f32 = u_xlat85;
            let x_4067 : f32 = u_xlat84;
            u_xlat84 = ((x_4064 * x_4065) + x_4067);
            let x_4070 : vec4<f32> = u_xlat20;
            let x_4071 : vec2<f32> = vec2<f32>(x_4070.z, x_4070.w);
            let x_4073 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_4071.x, x_4071.y, x_4073);
            let x_4080 : vec3<f32> = txVec50;
            let x_4082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4080.xy, x_4080.z);
            u_xlat85 = x_4082;
            let x_4084 : f32 = u_xlat23.w;
            let x_4085 : f32 = u_xlat85;
            let x_4087 : f32 = u_xlat84;
            u_xlat84 = ((x_4084 * x_4085) + x_4087);
            let x_4090 : vec4<f32> = u_xlat21;
            let x_4091 : vec2<f32> = vec2<f32>(x_4090.x, x_4090.y);
            let x_4093 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_4091.x, x_4091.y, x_4093);
            let x_4100 : vec3<f32> = txVec51;
            let x_4102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4100.xy, x_4100.z);
            u_xlat85 = x_4102;
            let x_4104 : f32 = u_xlat24.x;
            let x_4105 : f32 = u_xlat85;
            let x_4107 : f32 = u_xlat84;
            u_xlat84 = ((x_4104 * x_4105) + x_4107);
            let x_4110 : vec4<f32> = u_xlat21;
            let x_4111 : vec2<f32> = vec2<f32>(x_4110.z, x_4110.w);
            let x_4113 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_4111.x, x_4111.y, x_4113);
            let x_4120 : vec3<f32> = txVec52;
            let x_4122 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4120.xy, x_4120.z);
            u_xlat85 = x_4122;
            let x_4124 : f32 = u_xlat24.y;
            let x_4125 : f32 = u_xlat85;
            let x_4127 : f32 = u_xlat84;
            u_xlat84 = ((x_4124 * x_4125) + x_4127);
            let x_4130 : vec2<f32> = u_xlat38;
            let x_4132 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_4130.x, x_4130.y, x_4132);
            let x_4139 : vec3<f32> = txVec53;
            let x_4141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4139.xy, x_4139.z);
            u_xlat85 = x_4141;
            let x_4143 : f32 = u_xlat24.z;
            let x_4144 : f32 = u_xlat85;
            let x_4146 : f32 = u_xlat84;
            u_xlat84 = ((x_4143 * x_4144) + x_4146);
            let x_4149 : vec2<f32> = u_xlat69;
            let x_4151 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_4149.x, x_4149.y, x_4151);
            let x_4158 : vec3<f32> = txVec54;
            let x_4160 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4158.xy, x_4158.z);
            u_xlat85 = x_4160;
            let x_4162 : f32 = u_xlat24.w;
            let x_4163 : f32 = u_xlat85;
            let x_4165 : f32 = u_xlat84;
            u_xlat84 = ((x_4162 * x_4163) + x_4165);
            let x_4168 : vec4<f32> = u_xlat16;
            let x_4169 : vec2<f32> = vec2<f32>(x_4168.x, x_4168.y);
            let x_4171 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_4169.x, x_4169.y, x_4171);
            let x_4178 : vec3<f32> = txVec55;
            let x_4180 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4178.xy, x_4178.z);
            u_xlat85 = x_4180;
            let x_4182 : f32 = u_xlat12.x;
            let x_4183 : f32 = u_xlat85;
            let x_4185 : f32 = u_xlat84;
            u_xlat84 = ((x_4182 * x_4183) + x_4185);
            let x_4188 : vec4<f32> = u_xlat16;
            let x_4189 : vec2<f32> = vec2<f32>(x_4188.z, x_4188.w);
            let x_4191 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_4189.x, x_4189.y, x_4191);
            let x_4198 : vec3<f32> = txVec56;
            let x_4200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4198.xy, x_4198.z);
            u_xlat85 = x_4200;
            let x_4202 : f32 = u_xlat12.y;
            let x_4203 : f32 = u_xlat85;
            let x_4205 : f32 = u_xlat84;
            u_xlat84 = ((x_4202 * x_4203) + x_4205);
            let x_4208 : vec2<f32> = u_xlat64;
            let x_4210 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_4208.x, x_4208.y, x_4210);
            let x_4217 : vec3<f32> = txVec57;
            let x_4219 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4217.xy, x_4217.z);
            u_xlat85 = x_4219;
            let x_4221 : f32 = u_xlat12.z;
            let x_4222 : f32 = u_xlat85;
            let x_4224 : f32 = u_xlat84;
            u_xlat84 = ((x_4221 * x_4222) + x_4224);
            let x_4227 : vec4<f32> = u_xlat11;
            let x_4228 : vec2<f32> = vec2<f32>(x_4227.x, x_4227.y);
            let x_4230 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_4228.x, x_4228.y, x_4230);
            let x_4237 : vec3<f32> = txVec58;
            let x_4239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4237.xy, x_4237.z);
            u_xlat85 = x_4239;
            let x_4241 : f32 = u_xlat12.w;
            let x_4242 : f32 = u_xlat85;
            let x_4244 : f32 = u_xlat84;
            u_xlat82 = ((x_4241 * x_4242) + x_4244);
          }
        }
      } else {
        let x_4248 : vec4<f32> = u_xlat10;
        let x_4249 : vec2<f32> = vec2<f32>(x_4248.x, x_4248.y);
        let x_4251 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_4249.x, x_4249.y, x_4251);
        let x_4258 : vec3<f32> = txVec59;
        let x_4260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4258.xy, x_4258.z);
        u_xlat82 = x_4260;
      }
      let x_4261 : i32 = u_xlati79;
      let x_4263 : f32 = x_868.x_AdditionalShadowParams[x_4261].x;
      u_xlat84 = (1.0f + -(x_4263));
      let x_4266 : f32 = u_xlat82;
      let x_4267 : i32 = u_xlati79;
      let x_4269 : f32 = x_868.x_AdditionalShadowParams[x_4267].x;
      let x_4271 : f32 = u_xlat84;
      u_xlat82 = ((x_4266 * x_4269) + x_4271);
      let x_4274 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_4274);
      let x_4277 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_4277 >= 1.0f);
      let x_4280 : bool = u_xlatb84;
      let x_4282 : bool = u_xlatb10.x;
      u_xlatb84 = (x_4280 | x_4282);
      let x_4284 : bool = u_xlatb84;
      let x_4285 : f32 = u_xlat82;
      u_xlat82 = select(x_4285, 1.0f, x_4284);
    } else {
      u_xlat82 = 1.0f;
    }
    let x_4288 : f32 = u_xlat82;
    u_xlat84 = (-(x_4288) + 1.0f);
    let x_4291 : f32 = u_xlat50;
    let x_4292 : f32 = u_xlat84;
    let x_4294 : f32 = u_xlat82;
    u_xlat82 = ((x_4291 * x_4292) + x_4294);
    let x_4296 : f32 = u_xlat80;
    let x_4297 : f32 = u_xlat82;
    u_xlat80 = (x_4296 * x_4297);
    let x_4299 : vec4<f32> = u_xlat1;
    let x_4301 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4299.x, x_4299.y, x_4299.z), vec3<f32>(x_4301.x, x_4301.y, x_4301.z));
    let x_4304 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4304, 0.0f, 1.0f);
    let x_4306 : f32 = u_xlat80;
    let x_4307 : f32 = u_xlat82;
    u_xlat80 = (x_4306 * x_4307);
    let x_4309 : f32 = u_xlat80;
    let x_4311 : i32 = u_xlati79;
    let x_4313 : vec4<f32> = x_2865.x_AdditionalLightsColor[x_4311];
    let x_4315 : vec3<f32> = (vec3<f32>(x_4309, x_4309, x_4309) * vec3<f32>(x_4313.x, x_4313.y, x_4313.z));
    let x_4316 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_4315.x, x_4315.y, x_4315.z, x_4316.w);
    let x_4318 : vec3<f32> = u_xlat33;
    let x_4319 : f32 = u_xlat81;
    let x_4322 : vec4<f32> = u_xlat6;
    u_xlat33 = ((x_4318 * vec3<f32>(x_4319, x_4319, x_4319)) + vec3<f32>(x_4322.x, x_4322.y, x_4322.z));
    let x_4325 : vec3<f32> = u_xlat33;
    let x_4326 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(x_4325, x_4326);
    let x_4328 : f32 = u_xlat79;
    u_xlat79 = max(x_4328, 1.17549435e-38f);
    let x_4330 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_4330);
    let x_4332 : f32 = u_xlat79;
    let x_4334 : vec3<f32> = u_xlat33;
    u_xlat33 = (vec3<f32>(x_4332, x_4332, x_4332) * x_4334);
    let x_4336 : vec4<f32> = u_xlat1;
    let x_4338 : vec3<f32> = u_xlat33;
    u_xlat79 = dot(vec3<f32>(x_4336.x, x_4336.y, x_4336.z), x_4338);
    let x_4340 : f32 = u_xlat79;
    u_xlat79 = clamp(x_4340, 0.0f, 1.0f);
    let x_4342 : vec4<f32> = u_xlat9;
    let x_4344 : vec3<f32> = u_xlat33;
    u_xlat80 = dot(vec3<f32>(x_4342.x, x_4342.y, x_4342.z), x_4344);
    let x_4346 : f32 = u_xlat80;
    u_xlat80 = clamp(x_4346, 0.0f, 1.0f);
    let x_4348 : f32 = u_xlat79;
    let x_4349 : f32 = u_xlat79;
    u_xlat79 = (x_4348 * x_4349);
    let x_4351 : f32 = u_xlat79;
    let x_4353 : f32 = u_xlat8.x;
    u_xlat79 = ((x_4351 * x_4353) + 1.00001001358032226562f);
    let x_4356 : f32 = u_xlat80;
    let x_4357 : f32 = u_xlat80;
    u_xlat80 = (x_4356 * x_4357);
    let x_4359 : f32 = u_xlat79;
    let x_4360 : f32 = u_xlat79;
    u_xlat79 = (x_4359 * x_4360);
    let x_4362 : f32 = u_xlat80;
    u_xlat80 = max(x_4362, 0.10000000149011611938f);
    let x_4364 : f32 = u_xlat79;
    let x_4365 : f32 = u_xlat80;
    u_xlat79 = (x_4364 * x_4365);
    let x_4367 : f32 = u_xlat77;
    let x_4368 : f32 = u_xlat79;
    u_xlat79 = (x_4367 * x_4368);
    let x_4370 : f32 = u_xlat78;
    let x_4371 : f32 = u_xlat79;
    u_xlat79 = (x_4370 / x_4371);
    let x_4373 : vec4<f32> = u_xlat5;
    let x_4375 : f32 = u_xlat79;
    let x_4378 : vec4<f32> = u_xlat4;
    u_xlat33 = ((vec3<f32>(x_4373.x, x_4373.y, x_4373.z) * vec3<f32>(x_4375, x_4375, x_4375)) + vec3<f32>(x_4378.x, x_4378.y, x_4378.z));
    let x_4381 : vec3<f32> = u_xlat33;
    let x_4382 : vec4<f32> = u_xlat10;
    let x_4385 : vec4<f32> = u_xlat2;
    let x_4387 : vec3<f32> = ((x_4381 * vec3<f32>(x_4382.x, x_4382.y, x_4382.z)) + vec3<f32>(x_4385.x, x_4385.y, x_4385.z));
    let x_4388 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_4387.x, x_4387.y, x_4387.z, x_4388.w);

    continuing {
      let x_4390 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4390 + bitcast<u32>(1i));
    }
  }
  let x_4392 : vec4<f32> = u_xlat3;
  let x_4394 : f32 = u_xlat25;
  let x_4397 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_4392.x, x_4392.y, x_4392.z) * vec3<f32>(x_4394, x_4394, x_4394)) + vec3<f32>(x_4397.x, x_4397.y, x_4397.z));
  let x_4400 : vec4<f32> = u_xlat2;
  let x_4402 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_4400.x, x_4400.y, x_4400.z) + x_4402);
  let x_4406 : f32 = u_xlat75;
  let x_4408 : vec3<f32> = u_xlat0;
  let x_4409 : vec3<f32> = (vec3<f32>(x_4406, x_4406, x_4406) * x_4408);
  let x_4410 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4409.x, x_4409.y, x_4409.z, x_4410.w);
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


